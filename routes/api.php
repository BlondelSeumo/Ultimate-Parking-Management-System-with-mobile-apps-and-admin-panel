<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */

Route::middleware('auth:api')->get('/user/data', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'owner'], function () {
    Route::group(['middleware' => ['auth:api']], function () {
        Route::resource('space', 'ParkingSpaceController');
        Route::resource('guard', 'ParkingGuardController');
        Route::get('profile', function (Request $request) {
            return $request->user();
        });
        Route::put('zone/{id}/update', 'SpaceZoneController@update');
        Route::post('zone', 'SpaceZoneController@store');
        Route::post('images', 'ParkingImageController@store');
        Route::get('images/{id}/space', 'ParkingImageController@index');
        Route::delete('images/{id}', 'ParkingImageController@destroy');
        Route::post('card/new', 'StripePlanControllers@addNewCard');
        Route::put('card/change', 'StripePlanControllers@changeDefaultStore');
        Route::delete('card/{id}', 'StripePlanControllers@deleteCard');
        Route::get('subscription/{id}/buy', 'StripePlanControllers@buySubscription');
        Route::get('plan', 'StripePlanControllers@indexApi');
        Route::delete('zone/{id}', 'SpaceZoneController@delete');
        Route::post('profile/update', 'ParkingOwnerController@profileUpdate');
        Route::post('profile/update/password', 'ParkingOwnerController@passwordUpdate');

        Route::post('profile/setting', 'ParkingOwnerController@settingUpdate');
        Route::get('available/guard', 'ParkingGuardController@availableGuard');
        Route::get('booking/{id}', 'ParkingBookingController@ownerShow');
        Route::get('review/{id}', 'ReviewController@spaceReview');
        Route::get('review', 'ReviewController@allReview');
        Route::get('zone/{id}/space', 'SpaceZoneController@zoneForSpace');
        Route::get('transaction/{id}/{type}', 'ParkingOwnerController@transactionAllInOne');
        Route::post('transaction/{id}/custom', 'ParkingOwnerController@transactionCustom');
        Route::get('space/{id}/live', 'ParkingSpaceController@liveSlotLocation');
        Route::put('slot/{id}/update', 'SpaceSlotController@update');
        Route::delete('slot/{id}', 'SpaceSlotController@delete');
        Route::put('booking/{id}/update', 'ParkingBookingController@update');
        Route::get('booking/scanner/{order}', 'ParkingBookingController@ownerShowScanner');
        Route::post('profile/picture/update', 'AppUsersController@profilePictureUpdate');
    });
    Route::post('store', 'ParkingOwnerController@store');
    Route::post('login', 'ParkingOwnerController@login');
    Route::post('forgot', 'ParkingOwnerController@forgotPassword');

    Route::get('facilities', 'FacilitiesController@indexApi');
    Route::get('vehicleType', 'VehicleTypeController@indexApi');
});

Route::group(['prefix' => 'guard'], function () {
    Route::post('login', 'ParkingOwnerController@login');

    Route::group(['middleware' => ['auth:guardApi']], function () {
        Route::get('space/{id}', 'ParkingSpaceController@show');
        Route::get('profile', function (Request $request) {
            return $request->user();
        });
        Route::post('profile/update', 'ParkingOwnerController@profileUpdate');
        Route::post('profile/update/password', 'ParkingOwnerController@passwordUpdate');

        Route::get('review/{id}', 'ReviewController@spaceReview');
        Route::get('transaction/{id}/{type}', 'ParkingOwnerController@transactionAllInOne');
        Route::post('transaction/{id}/custom', 'ParkingOwnerController@transactionCustom');
        Route::get('booking/{id}', 'ParkingBookingController@ownerShow');
        Route::get('booking/scanner/{order}', 'ParkingBookingController@ownerShowScanner');
        Route::put('booking/{id}/update', 'ParkingBookingController@update');
        Route::get('space/{id}/live', 'ParkingSpaceController@liveSlotLocation');
        Route::post('images', 'ParkingImageController@store');
        Route::get('images/{id}/space', 'ParkingImageController@index');
        Route::delete('images/{id}', 'ParkingImageController@destroy');
        Route::post('profile/picture/update', 'AppUsersController@profilePictureUpdate');
    });
});

Route::group(['prefix' => 'user'], function () {
    Route::group(['middleware' => ['auth:userApi']], function () {
        Route::resource('vehicle', 'UserVehicleController');
        Route::get('vehicleType', 'VehicleTypeController@indexApi');

        Route::post('booking', 'ParkingBookingController@store');
        Route::get('booking/cancel/{id}', 'ParkingBookingController@bookingCancel');
        Route::post('review', 'ReviewController@store');
        Route::get('booking/{id}', 'ParkingBookingController@show');
        Route::get('booking', 'ParkingBookingController@index');
        Route::get('profile', function (Request $request) {
            return $request->user();
        });
        Route::post('profile/update', 'AppUsersController@profileUpdate');
        Route::post('profile/picture/update', 'AppUsersController@profilePictureUpdate');
    });
    Route::get('setting/{id}/stripe', 'ParkingOwnerController@settingShow');
    Route::get('setting', 'AdminSettingController@allSetting');
    Route::post('forgot', 'AppUsersController@forgotPassword');

    Route::post('store', 'AppUsersController@store');
    Route::post('reqForOTP', 'AppUsersController@reqForOTP');
    Route::post('verifyMe', 'AppUsersController@verifyMe');
    Route::post('login', 'AppUsersController@login');
    Route::post('space', 'ParkingSpaceController@getNearByParking');
    Route::post('space/{id}', 'ParkingSpaceController@getNearByParkingSingle');
    Route::post('space/{id}/zone', 'ParkingSpaceController@getParkingZone');

    Route::get('facilities', 'FacilitiesController@indexApi');
    Route::get('vehicleType', 'VehicleTypeController@indexApi');
    Route::get('pp', 'AdminSettingController@ppApi');
});
