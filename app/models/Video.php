<?php

/**
 * Model Video 
 * 
 */
class Video extends Eloquent {

    protected $table = "videos";
    protected $fillable = ['videoId', 'videoName', 'videoAuthor', 'videoAvatar', 'videoDescription', 'videoCategoryId', 'videoLink', 'videoViews', 'videoShares'];
    protected $primaryKey = 'videoId';

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
        return $this->hasMany('Comment');
    }
    
     public function tags() {
        return $this->hasMany('HashTag');
    }

    public function getListVideoByCategoryId($category = null) {

        $this->video = new Video();
        if (is_null($category))
            $list = $this->video->all();
        else
            $list = $this->video->where('videoCategoryId', '=', $category->attributes['categoryId'])->get();

        return $list;
    }
    public function getListVideoByTagId($tag){
        $this->video = new Video();
        if(!is_null($tag) && is_numeric($tag))
            $list = $this->video->tags()->all();
        return $list;
    }

}
