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

<<<<<<< HEAD

/**
 * Auth Routes 
 */
Auth::routes();

/**
 * User Routes
 */
$userRoutes = function(){
    Route::get('/', 'UsersController@index');
};
Route::group(['middleware'=>'guest'], $userRoutes);

/**
 * Post Routes
 */
$postsRoutes = function(){

};
=======
//Route::get('/', function () {
//    return view('welcome');
//});

Route::group(['middleware' => 'guest'], function(){
    Route::get('/', function(){
        return view('layouts.guest');
    });
});

Auth::routes();
Auth::routes();
>>>>>>> 6f0a6cf2737f3f4bf1019a63a405ad64d7c6aa86

Route::get('/home', 'HomeController@index')->name('home');
