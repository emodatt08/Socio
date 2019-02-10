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
 Route::get('user/posts', 'UserController@posts');
};

/**
 * Social Routes
 */
$socialRoutes = function(){
    //Facebook routes
    Route::get('auth/facebook', 'FacebookController@redirectToFacebook');
    Route::get('auth/facebook/callback', 'FacebookController@handleFacebookCallback');


};
/**
 * All Social Route Group
 */
Route::group(['prefix' => 'social'], 
        $socialRoutes
);


/**
 * Auth Routes 
 */
Auth::routes();


 Route::get('/home', 'HomeController@index')->name('home');