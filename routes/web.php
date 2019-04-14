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
Route::get('/news/category/{slug?}', 'NewsController@category')->name('category');
Route::get('/news/article/{slug?}', 'NewsController@article')->name('article');


Route::get('events/{slug}', 'EventController@show')->name('events.show');
Route::get('posts/{slug}', 'NewsController@show')->name('posts.show');
Route::get('laravel-search-in-multiple-model', 'SearchController@index')->name('search.index');
Route::get('search', 'SearchController@search')->name('search.result');


Route::group(['prefix'=>'admin', 'namespace'=>'Admin', 'middleware'=>['auth']], function(){
  Route::get('/', 'DashboardController@dashboard')->name('admin.index');
  Route::resource('/category', 'CategoryController', ['as'=>'admin']);
  Route::resource('/article', 'ArticleController', ['as'=>'admin']);
});

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
