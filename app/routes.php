<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
 */
/* Model Bindings */
Route::model('category', 'Category');
Route::model('video', 'Video');
Route::model('comment', 'Comment');
Route::model('hashtag', 'HashTag');
// Route::model('videotag', 'Videotag');

Route::get('/', function () {
	return View::make('hello');
});

Route::get('/flash', function () {
	Session::flash('message', 'Its a flash');
	return View::make('hello');
});

Route::group(array('before' => 'auth.basic'), function () {
	Route::resource('videos', 'VideosController');

});

// process for api resource
Route::group(['prefix' => 'api'], function () {

	Route::resource('category/list', 'Api\CategoriesController');

	Route::get('/feed/{category}/list', ['as' => 'video.category.list', 'uses' => 'Api\VideosController@getListVideoByCategory']);
	Route::get('/feed/list', ['as' => 'video.noncategory.list', 'uses' => 'Api\VideosController@getListVideoByCategory']);
	Route::get('/feed/{hashtag}/tags', ['as' => 'video.tag.list', 'uses' => 'Api\VideosController@getListVideoByTag']);
	//list commnet by video
	Route::get('/video/{video}/allcomments', ['as' => 'video.comment.show', 'uses' => 'Api\VideosController@getAllCommentVideo']);
	// add comment
	Route::post('/video/{video}/addcomment', ['as' => 'comment.new', 'uses' => 'Api\CommentsController@newComment']);
	//update
	Route::post('/video/{video}/view', ['as' => 'video.update.counter', 'uses' => 'Api\VideosController@updateVideoCounter']);
	Route::post('/video/{video}/share', ['as' => 'video.update.share', 'uses' => 'Api\VideosController@updateVideoShare']);
	Route::post('/video/upload', ['as' => 'video.upload.', 'uses' => 'Api\VideosController@store']);

});

Route::get('/back', function () {
	return Redirect::back();
});;
