<?php

/**
 * Model Category 
 * 
 */
class Category extends Eloquent {

    protected $table = "categories";
    protected $primaryKey = 'categoryId';
    protected $fillable = ['categoryId', 'categoryName'];

    public function videos() {
        return $this->hasMany('Video', 'videoCategoryId', 'videoCategoryId');
    }

    public function getCategoryNameById($categoryId) {
        return Category::where('categoryId', '=', $categoryId)->pluck('categoryName');
    }

    public function getListCatgories() {
        return Category::all();
    }

}
