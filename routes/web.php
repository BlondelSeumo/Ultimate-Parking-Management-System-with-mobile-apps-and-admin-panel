<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

Route::get('/', function () {

    return view('welcome');
});
Route::get('/config', function () {
    Artisan::call('config:clear');
    Artisan::call('cache:clear');
    dd("Sakalaka Bomm bomm");
});

Route::get('/stipe', function () {
    dd('stripe');
});

Auth::routes();
Route::post('saveAdminData', 'AdminSettingController@setup');
Route::post('/active', 'AdminSettingController@active');

// Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => ['auth']], function () {
    Route::resource('user', 'UserController', ['except' => ['show']]);
    Route::get('profile', ['as' => 'profile.edit', 'uses' => 'ProfileController@edit']);
    Route::put('profile', ['as' => 'profile.update', 'uses' => 'ProfileController@update']);
    Route::put('profile/password', ['as' => 'profile.password', 'uses' => 'ProfileController@password']);
    Route::resource('vehicleType', 'VehicleTypeController');
    Route::resource('plan', 'StripePlanControllers');
    Route::get('buyer/plan', 'StripePlanControllers@viewBuyer');
    Route::resource('facilities', 'FacilitiesController');
    Route::get('parkingOwner', 'ParkingOwnerController@adminIndex');
    Route::get('parkingOwner/{id}/space', 'ParkingOwnerController@ownerSpaceDetail');
    Route::get('space/{id}/verify', 'ParkingSpaceController@adminChangeVerify');
    Route::get('space/{id}/view', 'ParkingSpaceController@adminSpaceView');
    Route::get('parkingUser', 'AppUsersController@adminIndex');
    Route::get('pp', 'AdminSettingController@pp');
    Route::get('setting', 'AdminSettingController@index');
    Route::put('pp/update', ['as' => 'pp.update', 'uses' => 'AdminSettingController@updatePP']);

    Route::get('/dashboard', 'AdminSettingController@dashboard');
    Route::get('/home', 'AdminSettingController@dashboard')->name('home');

    Route::put('setting/email', ['as' => 'setting.email', 'uses' => 'AdminSettingController@updateEmail']);
    Route::put('setting/stripe', ['as' => 'setting.stripe', 'uses' => 'AdminSettingController@updateStripe']);
    Route::put('setting/notification', ['as' => 'setting.notification', 'uses' => 'AdminSettingController@updateNotification']);
    Route::put('setting/twilio', ['as' => 'setting.twilio', 'uses' => 'AdminSettingController@updateTwilio']);
});
