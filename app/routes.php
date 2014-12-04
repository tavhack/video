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

/* User routes */
Route::get('/video/{video}/show', ['as' => 'video.show', 'uses' => 'AdminVideosController@showVideo']);
Route::post('/video/{video}/comment', ['as' => 'comment.new', 'uses' => 'CommentController@newComment']);

/* Admin routes */
Route::group(['prefix' => 'admin', 'before' => 'auth'], function () {
    /* get routes */
    Route::get('dash-board', function () {
        $layout = View::make('master');
        $layout->title = 'DashBoard';
        $username = Auth::user()->username;
        $layout->main = View::make('dash')->with('content', "Hi $username, Welcome to Dashboard!");
        return $layout;
    });
    Route::get('/category/list', ['as' => 'category.list', 'uses' => 'AdminCategoriesController@getListCategories']);
    Route::get('/video/list', ['as' => 'video.list', 'uses' => 'AdminVideosController@listVideo']);
    Route::get('/video/new', ['as' => 'video.new', 'uses' => 'AdminVideosController@newVideo']);
    Route::get('/video/{video}/edit', ['as' => 'video.edit', 'uses' => 'AdminVideosController@editVideo']);
    Route::get('/video/{video}/delete', ['as' => 'video.delete', 'uses' => 'AdminVideosController@deleteVideo']);
    Route::get('/comment/list', ['as' => 'comment.list', 'uses' => 'CommentController@listComment']);
    Route::get('/comment/{comment}/show', ['as' => 'comment.show', 'uses' => 'CommentController@showComment']);
    Route::get('/comment/{comment}/delete', ['as' => 'comment.delete', 'uses' => 'CommentController@deleteComment']);

    /* post routes */
    Route::post('/video/save', ['as' => 'post.save', 'uses' => 'AdminVideosController@saveVideo']);
    Route::post('/video/{video}/update', ['as' => 'post.update', 'uses' => 'PostController@updateVideo']);
    Route::post('/comment/{comment}/update', ['as' => 'comment.update', 'uses' => 'CommentController@updateComment']);
});

/* Home routes */
Route::controller('/', 'VideosController');
