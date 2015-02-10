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
        //get detail video by videoId
        Route::get('video/{video}',['as'=>'detail.video','uses'=>'Api\VideosController@showDetailVideo']);
        
	Route::get('/feed/{category}/list', ['as' => 'video.category.list', 'uses' => 'Api\VideosController@getListVideoByCategory']);
	Route::get('/feed/list', ['as' => 'video.noncategory.list', 'uses' => 'Api\VideosController@getListVideoByCategory']);
	//Search list hashtag
        
        Route::post('/feed/search/hashtag', ['as' => 'hashtag.search.list', 'uses' => 'Api\HashtagsController@getListHashTags']);
	Route::post('/feed/search/user', ['as' => 'user.search.list', 'uses' => 'Api\UsersController@getListUsers']);
        Route::post('/video/getlist', ['as' => 'video.search.list', 'uses' => 'Api\VideosController@getListVideoBySearch']);
        //list commnet by video
	Route::get('/video/{video}/allcomments', ['as' => 'video.comment.show', 'uses' => 'Api\VideosController@getAllCommentVideo']);
	// add comment
	Route::post('/video/{video}/addcomment', ['as' => 'comment.new', 'uses' => 'Api\CommentsController@newComment']);
	//update
	Route::post('/video/update', ['as' => 'video.update', 'uses' => 'Api\VideosController@updateVideoCounterViewShare']);
//	Route::post('/video/share', ['as' => 'video.update.share', 'uses' => 'Api\VideosController@updateVideoShare']);
	Route::post('/video/upload', ['as' => 'video.upload', 'uses' => 'Api\VideosController@store']);

});

/* User routes */
Route::get('/video/{video}/show', ['as' => 'video.show', 'uses' => 'VideosController@showVideo']);
Route::get('/video/ajaxupdate/{id}','VideosController@ajaxUpdateView');
Route::get('/video/ajaxUpdateShare/{id}','VideosController@ajaxUpdateShare');

//Route::post('/video/{video}/comment', ['as' => 'comment.new', 'uses' => 'CommentController@newComment']);
//getlist video by categoryId
Route::get('/video/{category}/list', ['as' => 'video.category.list', 'uses' => 'VideosController@getListVideoByCategoryFrontend']);
/* Admin routes */
Route::group(['prefix' => 'admin', 'before' => 'auth'], function () {
    /* get routes */
    Route::get('dash-board', function () {
      
        $username = Auth::user()->username;
        return View::make('dash')->with('content', "Hi $username, Welcome to Dashboard!");
        
    });
    //category
    Route::get('/category/list', ['as' => 'category.list', 'uses' => 'AdminCategoriesController@getListCategories']);
    Route::get('/category/{category}/show', ['as' => 'category.show', 'uses' => 'AdminCategoriesController@showCategory']);
    Route::post('/category/{category}/save', ['as' => 'category.save', 'uses' => 'AdminCategoriesController@saveCategory']);
    Route::post('/category/{category}/update', ['as' => 'category.update', 'uses' => 'AdminCategoriesController@updateCategory']);
    Route::post('/category/{category}/delete', ['as' => 'category.delete', 'uses' => 'AdminCategoriesController@deleteCategory']);
    
    
    Route::get('/hashtag/list', ['as' => 'hashtag.list', 'uses' => 'AdminHashtagsController@getListHashtags']);
    Route::get('/video/list', ['as' => 'video.list', 'uses' => 'AdminVideosController@listVideo']);
    Route::get('/video/new', ['as' => 'video.new', 'uses' => 'AdminVideosController@newVideo']);
    Route::get('/video/{video}/edit', ['as' => 'video.edit', 'uses' => 'AdminVideosController@editVideo']);
    Route::get('/video/{video}/delete', ['as' => 'video.delete', 'uses' => 'AdminVideosController@deleteVideo']);
    Route::get('/comment/list', ['as' => 'comment.list', 'uses' => 'AdminCommentsController@getListComments']);
    Route::get('/comment/{comment}/show', ['as' => 'comment.show', 'uses' => 'AdminCommentsController@showComment']);
    Route::get('/comment/{comment}/delete', ['as' => 'comment.delete', 'uses' => 'AdminCommentsController@deleteComment']);

    /* post routes */
    Route::post('/video/save', ['as' => 'video.save', 'uses' => 'AdminVideosController@saveVideo']);
    Route::post('/video/{video}/update', ['as' => 'video.update', 'uses' => 'AdminVideosController@updateVideo']);
    Route::post('/comment/{comment}/update', ['as' => 'comment.update', 'uses' => 'CommentController@updateComment']);
});

/* Home routes */
Route::controller('/', 'VideosController');

/* View Composer */
//View::composer('vimeo', function ($view) {
//    $video = new Video();
//    $view->video = $video->getListVideoByVidmeoId($video->videoId);
//});

