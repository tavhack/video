<?php

namespace Api;

use Symfony\Component\HttpFoundation\JsonResponse;

class CategoriesController extends \BaseController {

    /**
     * Categories Repository
     *
     * @var Category
     */
    protected $category;

    public function __construct(\Category $category) {
        $this->category = $category;
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        return \Response::json($this->category->orderBy('categoryId', 'ASC')->get());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id) {
        if (!is_null($id) && !empty($id))
            return \Response::json($this->category->findOrFail($id));
        else
            return \Response::json(['error' => 'Category invalid'], 412);
    }

}
