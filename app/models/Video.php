<?php

/**
 * Model Video
 *
 */
class Video extends Eloquent {

	protected $table = "videos";

	protected $fillable = ['videoName', 'videoAuthor', 'videoAvatar', 'videoDescription', 'videoCategoryId', 'videoLink', 'videoViews', 'videoShares'];

	protected $primaryKey = 'videoId';

	public static $rules = array(

		'videoName' => 'required',
		'videoAuthor' => 'required',
		'videoAvatar' => 'required',
		'videoDescription' => 'required',
		'videoCategoryId' => 'required|integer',
		'videoLink' => 'required|active_url',
		'videoViews' => 'required|integer',
		'videoShares' => 'required|integer',
	);

	public function category() {
		return $this->belongsTo('Category');
	}

	public function delete() {
		foreach ($this->video as $video) {
			$video->delete();
		}
		return parent::delete();
	}

	public function comments() {
		return $this->hasMany('Comment', 'commentVideoId');
	}

	public function tags() {
		return $this->belongsToMany('HashTag', 'videos_tags', 'hashTagId', 'hashTagVideoId');
	}

	public function getListVideoByCategoryId($category = null) {

		$this->video = new Video();
		if (is_null($category)) {
			$list = $this->video->all();
		} else {
			$list = $this->video->where('videoCategoryId', '=', $category->attributes['categoryId'])->get();
		}

		return $list;
	}
	public function getListVideoByTagId($tag) {
		$tagId = $tag['hashTagId'];
		$list = $tag->video()->get();
		// $queries = DB::getQueryLog();
		// $last_query = end($queries);
		// var_dump($last_query);die;
		return $list;
	}
	public function getListCommentByVideoId($video) {

		$comments = $video->comments()->where('approved', '=', 1)->get();
		return $comments;
	}

}
