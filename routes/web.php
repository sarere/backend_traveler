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

Route::get('testing', 'TestingController@helloWord');
Route::get('place', 'PlaceController@index');
Route::post('review', 'ReviewController@getReviews');
Route::post('specify', 'PlaceController@getPlace');
Route::post('register', 'AuthController@register');
Route::post('login', 'AuthController@login');
Route::post('submit-review', 'ReviewController@submitReview');
