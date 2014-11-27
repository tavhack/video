<?php
class VideoTag extends Eloquent {

	protected $table = "videos_tags";
	protected $fillable = ['hashTagVideoId', 'hashTagId'];
	// protected $primaryKey = ['hashTagVideoId', 'hashTagId'];

	public function video() {
		return $this->belongsToMany('Video', 'videos_tags');
	}

}

?>