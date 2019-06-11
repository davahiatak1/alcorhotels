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

Route::get('/', 'HomeController@index');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/about', 'AboutController@index')->name('about.index');


Route::resource('/hotels', 'HotelController');

Route::resource('/contacts', 'ContactController');

Route::resource('/posts', 'PostController');

Route::resource('/appartements', 'ResidenceController');

Route::prefix('hotels')->group(function () {
    Route::resource('{hotel}/chambres', 'ChambreHotelController');
});



Route::get('/restaurant', 'RestaurantController@index')->name('restaurant.index');

Route::get('/restaurant/show/{id}', 'RestaurantController@show')->name('restaurant.show');

