<?php

/**
 * Model HashTag 
 * 
 */
class HashTag extends Eloquent {

    protected $table = "hashTags";
    protected $fillable = ['hashTagVideoId', 'hashTagName'];
    protected $primaryKey = 'hashTagVideoId';

    public function video() {
        return $this->belongsTo('Video');
    }

}
