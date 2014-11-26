<?php

/**
 * Model Category 
 * 
 */
class Category extends Eloquent {

    protected $table = "categories";
    protected $primaryKey = 'categoryId';
    protected $fillable = ['categoryId', 'categoryName'];

//    public function videos() {
//        return $this->belongsToMany("Video", "videos", "videoCategoryId", "categoryId");
//    }

    public function videos() {
        return $this->hasMany('Video','videoCategoryId','videoCategoryId');
        
    }

}
