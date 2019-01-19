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

Route::get('/home', 'HomeController@index')->name('home');
