<?php

Route::group(['middleware'=>['authuser']],
	function(){
Route::get('basket', 'BasketController@getIndex');
Route::get('ajax/parse/catalog', 'Admin\AjaxParseController@getCatalog');
	}
);
Route::get('/', 'BaseController@getIndex');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('/home', 'HomeController@postIndex');
Route::get('/Feedback', 'FeedbackController@getIndex');
Route::get('/catalog(id)', 'CatalogController@getIndex');
Route::get('Categories', 'ProductController@getAll');
Route::get('product', compact('obj'));
Route::get('product/{id}', 'ProductController@getOne');
Route::get('basket/add/{id}', 'BasketController@getAdd');
Route::get('basket', 'BasketController@getAll');
Route::get('basket/dell/{id}', 'BasketController@getDell');
Route::get('basket/clear', 'BasketController@getClear');
Route::post('order','OrderController@postOrder');
Route::get('admin/order/one/{id}', 'Admin\OrderController@getIndex');


 
//всегда последний
		Route::get('{url}', 'StaticController@getIndex');
