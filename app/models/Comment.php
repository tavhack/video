<?php

/**
 * Model Comment
 *
 */
class Comment extends Eloquent {

	protected $table = "comments";
	protected $fillable = ['commentVideoId', 'commentAuthor', 'commentAvatar', 'commentText', 'approved'];
	protected $primaryKey = 'commentId ';

	public static $rules = array(
		'commentAvatar' => 'required',
		'commentAuthor' => 'required',
		'commentText' => 'required',
	);
	public function videos() {
		return $this->belongsTo('Video');
	}

//    public function categories()
	//    {
	//        return $this->belongsToMany("Category", "videos", "videoCategoryId", "categoryId");
	//    }

	public function getApprovedAttribute($approved) {
		return (intval($approved) == 1) ? 'yes' : 'no';
	}

	public function setApprovedAttribute($approved) {
		$this->attributes['approved'] = ($approved === 'yes') ? 1 : 0;
	}

}
