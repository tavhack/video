<?php

class AdminCategoriesController extends \BaseController {

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public $categories;

    public function __construct(Category $categories) {
        $this->categories = $categories;
    }

    public function getListCategories() {
        $listCategories = $this->categories->orderBy('categoryId', 'desc')->paginate(10);
        $listCategories->getFactory()->setViewName('pagination::simple');
//        $catetegoies = $listCategories->toArray();
        return View::make('category.list')->with('catetegoies',$listCategories);
    }

    public function saveCategory() {
        
    }

    public function showCategory() {
        
    }

    public function updateCategory() {
        
    }

    public function deleteCategory() {
        
    }

}
