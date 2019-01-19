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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

<<<<<<< HEAD
$countriesRoutes = function(){
 Route::post('/store', 'CountriesController@storeCountryData');
 Route::post('/codes', 'CountriesController@phoneCodes');
};

Route::group(['prefix' => 'country'], $countriesRoutes);
=======

>>>>>>> 6f0a6cf2737f3f4bf1019a63a405ad64d7c6aa86
