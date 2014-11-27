<?php

/**
 * Model HashTag
 *
 */
class HashTag extends Eloquent {

	protected $table = "hashTags";
	protected $fillable = ['hashTagId', 'hashTagName'];
	protected $primaryKey = 'hashTagId';

	public function video() {
		return $this->belongsToMany('Video', 'videos_tags', 'hashTagId', 'hashTagVideoId');
	}

}
