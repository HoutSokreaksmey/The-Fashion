<?php
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('frontend.app');
// });

// Route::get('/',function(){
//     return "Welcome To Admin";
// });

Auth::routes();
Route::get('/', 'AppController@index');
Route::get('/Men', 'AppController@men')->name('Men');
Route::get('/Women', 'AppController@women')->name('Women');
Route::get('/Couple', 'AppController@couple')->name('couple');
Route::get('/Accessories', 'AppController@accessories')->name('accessories');
Route::get('/Brands', 'AppController@brand')->name('brand');

//Search
Route::get('search', 'AppController@search')->name('search');

Route::get('/product_detail/{id}','AppController@show')->name('product_detail');

Route::group(['middleware' => 'auth'], function () {
    Route::resource('user', 'UserController');

    //Product Detail
    Route::get('/home', 'HomeController@index')->name('home');

    //Product
    Route::resource('product', 'ProductController');

    //Category
    Route::resource('category', 'CategoryController');

    //SubCategory
    Route::get('/subcategory', 'SubCategoryController@index')->name('subcategory');
    Route::get('/subcategory/create', 'SubCategoryController@create')->name('subcategory.create');
    Route::post('/subcategory-create-action', 'SubCategoryController@store')->name('subcategory.store');
    Route::get('/subcategory-edit/{id}', 'SubCategoryController@edit')->name('subcategory.edit');
    Route::put('/subcategory-update-action/{id}', 'SubCategoryController@update')->name('subcategory.update');
    Route::get('/subcategory-delete/{id}', 'SubCategoryController@destroy')->name('subcategory.destroy');

    // Ads
	Route::get('/ads', 'AdsController@index')->name('ads');
	Route::get('/ads-show/{id}', 'AdsController@show')->name('ads.show');
	Route::get('/ads-create', 'AdsController@create')->name('ads.create');
    Route::post('/ads-create-action', 'AdsController@store')->name('ads.store');
	Route::get('/ads-edit/{id}', 'AdsController@edit')->name('ads.edit');
	Route::put('/ads-update-action/{id}', 'AdsController@update')->name('ads.update');
	Route::get('/ads-delete/{id}', 'AdsController@destroy')->name('ads.destroy');
});