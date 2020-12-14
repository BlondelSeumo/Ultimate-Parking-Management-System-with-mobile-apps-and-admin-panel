<?php

namespace App\Http\Controllers;

use App\AdminSetting;
use App\AppUsers;
use App\Notifications\SendPassword;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Twilio\Rest\Client;
use OneSignal;

class AppUsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }
    public function adminIndex()
    {
        //
        // $text =  'i ma text';
        // $header =  'i ma header';
        // $subtitle =  'i ma subtitle';
        // $userId =  'ad6a7910-000b-44b8-b871-88f0d4a22613';
        // OneSignal::sendNotificationToUser(
        //     $text,
        //     $userId,
        //     $url = null,
        //     $data = null,
        //     $buttons = null,
        //     $schedule = null,
        //     $headings = $header,
        //     $subtitle = $subtitle
        // );
        return view('parkingUser.index', ['parkingUser' => AppUsers::paginate(15)]);
    }
    public function login(Request $request)
    {
        //
        $request->validate([
            'email' => 'bail|required|email',
            'password' => 'bail|required|min:6',
        ]);
        $user = AppUsers::where('email', $request->email)->first();
        if ($user && Hash::check($request->password, $user->password)) {
            if ($user['verified'] != 1) {
                return response()->json(['msg' => 'Please Verify your email', 'data' => null, 'success' => false], 200);
            }
            $token = $user->createToken('PayParkOwner')->accessToken;
            $user['device_token'] = $request->device_token;
            $user->save();
            $user['token'] = $token;
            return response()->json(['msg' => 'lOGIN ', 'data' => $user, 'success' => true], 200);
        } else {
            return response()->json(['message' => 'Unauthenticated'], 401);
        }
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'email' => 'bail|required|email|unique:app_users,email',
            'name' => 'bail|required',
            'password' => 'bail|required|confirmed|min:6',
        ]);
        $reqData = $request->all();

        $app = AdminSetting::get(['id', 'verification'])->first();
        $flow =    $app->verification == 1 ? 'verification' : 'home';
        if ($app->verification != 1) {
            $reqData['verified'] = 1;
        }
        $data = AppUsers::create($reqData);
        $token = $data->createToken('ParingAppUser')->accessToken;
        $data['token'] = $token;
        return response()->json(['nextStep' => $flow, 'msg' => 'Welcome to PayPark', 'data' => $data, 'success' => true], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AppUsers  $appUsers
     * @return \Illuminate\Http\Response
     */
    public function show(AppUsers $appUsers)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AppUsers  $appUsers
     * @return \Illuminate\Http\Response
     */
    public function edit(AppUsers $appUsers)
    {
        //

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AppUsers  $appUsers
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, AppUsers $appUsers)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AppUsers  $appUsers
     * @return \Illuminate\Http\Response
     */
    public function destroy(AppUsers $appUsers)
    {
        //
    }
    public function profileUpdate(Request $request)
    {
        $request->validate([

            'name' => 'bail|required',
            'phone_no' => 'bail|required',
        ]);
        auth()->user()->update($request->all());
        return response()->json(['msg' => 'Profile Updated', 'data' => null, 'success' => true], 200);
    }
    public function profilePictureUpdate(Request $request)
    {
        $name = (new AppHelper)->saveBase64($request->image);

        auth()->user()->update([
            'image' => $name,
        ]);
        return response()->json(['msg' => 'Profile Updated', 'data' => null, 'success' => true], 200);
    }
    public function reqForOTP(Request $request)
    {
        $request->validate([

            'email' => 'bail|required',
            'phone_no' => 'bail|required',

        ]);
        $userData = AppUsers::Where([['email', $request->email]])->first();

        if ($userData && $userData['verified'] === 1) {
            return response()->json(['msg' => 'You already verify ', 'data' => null, 'success' => false, 'redirect' => 'login'], 200);
        } else if ($userData && $userData['verified'] !== 1) {
            $string = '0123456789';
            $string_shuffled = str_shuffle($string);
            $password = substr($string_shuffled, 1, 4);
            $userData->phone_no = $request->phone_no;
            $message = $password . ' your verification code for PAYPARK.';
            try {
                $account_sid = env("TWILIO_SID");
                $auth_token = env("TWILIO_AUTH_TOKEN");
                $twilio_number = env("TWILIO_NUMBER");
                $client = new Client($account_sid, $auth_token);
                $client->messages->create(
                    $request->phone_no,
                    ['from' => $twilio_number, 'body' => $message]
                );
            } catch (\Exception $e) {
                // dd($e)
                // error belong to mail
            }

            $userData->OTP = $password;
            $userData->verified = 0;
            $userData->save();
            return response()->json(['msg' => 'Verification code send you in Number', 'data' => null, 'success' => true], 200);
        } else {
            return response()->json(['msg' => 'We cant find you in our system', 'data' => null, 'success' => false, 'redirect' => 'login'], 200);
        }
    }
    public function verifyMe(Request $request)
    {
        $request->validate([

            'email' => 'bail|required',
            'phone_no' => 'bail|required',

        ]);
        $userData = AppUsers::Where([['email', $request->email], ['phone_no', $request->phone_no]])->first();
        if ($userData && $userData['verified'] === 1) {
            return response()->json(['msg' => 'You already verify ', 'data' => null, 'success' => false, 'redirect' => 'login'], 200);
        } else if ($userData && $userData['verified'] !== 1) {

            if ($userData['OTP'] === $request->OTP) {
                $userData->OTP = '';
                $userData->verified = 1;
                $userData->save();
                $token = $userData->createToken('ParingAppUser')->accessToken;
                $userData['token'] = $token;
                return response()->json(['msg' => 'Thanks For being With us', 'data' => $userData, 'success' => true], 200);
            }

            return response()->json(['msg' => 'OTP is Wrong', 'data' => null, 'success' => false], 200);
        } else {
            return response()->json(['msg' => 'Email and number are attached with different account', 'data' => null, 'success' => false, 'redirect' => 'login'], 200);
        }
    }
    public function forgotPassword(Request $request)
    {
        $password = rand(100000, 999999);

        $gard =  AppUsers::where('email', $request->email)->first();
        if ($gard) {

            $gard->password = $password;
            $gard->save();
            $gard->notify(new SendPassword($password));
            return response()->json(['msg' => 'Password send to your email address', 'data' => null, 'success' => false], 200);
        } 
        return response()->json(['msg' => 'No User Found ', 'data' => null, 'success' => false], 200);
    }
}
