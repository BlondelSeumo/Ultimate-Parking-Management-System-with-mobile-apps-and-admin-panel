<?php

namespace App\Http\Controllers;

use App\AdminSetting;
use App\AppUsers;
use App\Facilities;
use App\ParkingBooking;
use App\ParkingGuard;
use App\ParkingOwner;
use App\ParkingSpace;
use App\SubscriptionBuy;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Artisan;
use Illuminate\Support\Facades\Redirect;


class AdminSettingController extends Controller
{
    //
    public function pp()
    {
        # code...
        $pp = AdminSetting::get()->first();

        return view('pp.index', ['pp' => $pp]);
    }
    public function allSetting()
    {

        $data =   AdminSetting::get()->first();
        $envData =  $this->envRead();
        $emailData['country_code'] =  $data['country_code'];
        $emailData['verification'] =  $data['verification'];
        $emailData['APP_ID'] =  $envData['APP_ID'];
        $emailData['PROJECT_NUMBER'] =  $envData['PROJECT_NUMBER'];
        return response()->json(['msg' => null, 'data' => $emailData, 'success' => true], 200);
    }
    public function updatePP(Request $request)
    {
        # code...
        $pp = AdminSetting::get()->first();
        $pp->pp = $request->pp;
        $pp->update();
        return back();
    }
    public function setup(Request $request)
    {
        $data['DB_HOST'] = $request->db_host;
        $data['DB_DATABASE'] = $request->db_name;
        $data['DB_USERNAME'] = $request->db_user;
        $data['DB_PASSWORD'] = $request->db_pass;
        $this->updateENV($data);
        $d  = User::get()->first();
        $d->update(['email' => $request->email, 'password' => Hash::make($request->password)]);
        return response()->json(['data' => url('login'), 'success' => true], 200);
    }
   
    public function ppApi()
    {
        # code...
        $pp = AdminSetting::get()->first();

        return response()->json(['msg' => null, 'data' => $pp, 'success' => true], 200);
    }
    public function index()
    {
        $emailData = $this->envRead();
        $data =   AdminSetting::get()->first();
        $emailData['country_code'] =  $data['country_code'];
        $emailData['notification'] =  $data['notification'];
        $emailData['verification'] =  $data['verification'];
        return view('setting.setting', compact(['emailData']));
    }
    public function envRead()
    {

        $data = [
            'MAIL_HOST' => " ",
            'MAIL_PORT' => " ",
            'MAIL_USERNAME' => " ",
            'MAIL_PASSWORD' => " ",
            'MAIL_ENCRYPTION' => " ",
            'MAIL_DRIVER' => " ",
            'STRIPE_SECRET' => ' ',
            'STRIPE_KEY' => ' ',
            'APP_ID' => ' ',
            'REST_API_KEY' => ' ',
            'USER_AUTH_KEY' => ' ',
            'PROJECT_NUMBER' => ' ',
            'TWILIO_SID' => ' ',
            'TWILIO_AUTH_TOKEN' => ' ',
            'TWILIO_NUMBER' => ' ',
        ];
        if (count($data) > 0) {
            // Read .env-file
            if (is_writeable("../.env")) {

                $env = file_get_contents('../.env');

                // Split string on every " " and write into array
                $env = preg_split('/\s+/', $env);

                // Loop through given data
                foreach ((array) $data as $key => $vaue) {

                    // Loop through .env-data
                    foreach ($env as $env_key => $env_value) {
                        // Turn the value into an array and stop after the first split
                        // So it' s not possible to sp l i t e.g. t h e App-Key by accident
                        $entry = explode("=", $env_value, 2);

                        // Check, if new key fits the actual .env-key
                        if ($entry[0] == $key) {
                            $data[$key] = $entry[1];
                            // If yes, overwrite it with the new one
                            // $env[$env_key] = $key . "=" . $value;
                        }
                    }
                }
                return $data;
            } else {
                return $data;
            }
        }
    }
    public function dashboard()
    {
        
        $data['user'] = AppUsers::all()->count();
        $data['owner'] = ParkingOwner::all()->count();
        $data['guard'] = ParkingGuard::all()->count();
        $data['buy'] = SubscriptionBuy::all()->count();

        $data['space'] = ParkingSpace::all()->count();
        $data['verified_space'] = ParkingSpace::where('verified', '1')->get()->count();
        $data['booking'] = ParkingBooking::all()->count();
        $now = Carbon::now();
        $data['month_booking'] = ParkingBooking::whereMonth('created_at', $now->month)->count();

        $Pdata = ParkingOwner::inRandomOrder()->limit(5)->get(['name', 'id']);

        // return $Pdata;
        foreach ($Pdata as $value) {
            $value['total_space'] = ParkingSpace::where('owner_id', $value['id'])->get()->count();
            $value['total_guard'] = ParkingGuard::where('owner_id', $value['id'])->get()->count();
            $value['total_booking'] = ParkingBooking::where('owner_id', $value['id'])->get()->count();
        }
        $Udata = AppUsers::inRandomOrder()->limit(5)->get(['name', 'id']);

        // return $Pdata;
        foreach ($Udata as $value) {

            $value['total_booking'] = ParkingBooking::where('user_id', $value['id'])->get()->count();
            $value['booking'] = rand(0, 100);
        }

        $Vdata = ParkingSpace::where('verified', '1')->get()->each->setAppends(['avg_rating']);
        foreach ($Vdata as $value) {
            $tempData = ParkingBooking::where('space_id', $value['id'])->get();
            $value['total_booking'] = count($tempData);
            $value['total_earning'] = (string) $tempData->sum('total_amount');
            // $value['booking'] = rand(0, 100);
        }
        $VsortData = collect($Vdata)->sortByDesc('total_earning')->take(5);
        // return $Vdata;
        $facilities_data = Facilities::limit(5)->get();
        return view('dashboard', ['data' => $data, 'owner_data' => $Pdata, 'user_data' => $Udata, 'space_data' => $VsortData, 'facilities_data' => $facilities_data]);
    }

    public function updateEmail(Request $request)
    {

        $data = [
            'MAIL_HOST' => $request->MAIL_HOST,
            'MAIL_PORT' => $request->MAIL_PORT,
            'MAIL_USERNAME' => $request->MAIL_USERNAME,
            'MAIL_PASSWORD' => $request->MAIL_PASSWORD,
            'MAIL_ENCRYPTION' => $request->MAIL_ENCRYPTION,
            'MAIL_DRIVER' => $request->MAIL_DRIVER,
        ];

        $this->updateENV($data);
        // Read .env-file

        // return "true";
        return redirect('setting')->withStatus(__('Email Configuration updated successfully.'));
    }

    public function updateStripe(Request $request)
    {
        $data = [
            'STRIPE_SECRET' => $request->STRIPE_SECRET,
            'STRIPE_KEY' => $request->STRIPE_KEY,
        ];

        $this->updateENV($data);
        // Read .env-file

        // return "true";
        return redirect('setting')->withStatus(__('Stripe Configuration updated successfully.'));
    }
    public function updateNotification(Request $request)
    {
        $data = [

            'APP_ID' => $request->APP_ID,
            'REST_API_KEY' => $request->REST_API_KEY,
            'USER_AUTH_KEY' => $request->USER_AUTH_KEY,
            'PROJECT_NUMBER' => $request->PROJECT_NUMBER,
        ];

        $this->updateENV($data);
        // Read .env-file

        // return "true";
        return redirect('setting')->withStatus(__('OneSignal Configuration updated successfully.'));
    }
    public function updateTwilio(Request $request)
    {
        $data = [
            'TWILIO_SID' => $request->TWILIO_SID,
            'TWILIO_AUTH_TOKEN' => $request->TWILIO_AUTH_TOKEN,
            'TWILIO_NUMBER' => $request->TWILIO_NUMBER,
        ];
        //  country_code
        $this->updateENV($data);
        // Read .env-file
        $verification = 0;
        if ($request->verification == '1') {
            $verification = 1;
        } else {

            $verification = 0;
        }
        $pp = AdminSetting::get()->first();
        $pp->country_code = $request->country_code;
        $pp->verification = $verification;
        $pp->update();
        // return "true";
        return redirect('setting')->withStatus(__('Twilio Configuration updated successfully.'));
    }

    public function updateENV($data)
    {
        if (is_writeable("../.env")) {

            $env = file_get_contents('../.env');

            // Split string on every " " and write into array
            $env = preg_split('/\s+/', $env);

            // Loop through given data
            foreach ((array) $data as $key => $value) {

                // Loop through .env-data
                foreach ($env as $env_key => $env_value) {

                    // Turn the value into an array and stop after the first split
                    // So it's not possible to split e.g. the App-Key by accident
                    $entry = explode("=", $env_value, 2);

                    // Check, if new key fits the actual .env-key
                    if ($entry[0] == $key) {
                        // If yes, overwrite it with the new one
                        $env[$env_key] = $key . "=" . $value;
                    } else {
                        // If not, keep the old one
                        $env[$env_key] = $env_value;
                    }
                }
            }

            // Turn the array back to an String
            $env = implode("\n", $env);

            // And overwrite the .env with the new data
            file_put_contents('../.env', $env);

            return true;
        } else {

            return abort(500, 'Don`t have write permission');
        }
    }
}
