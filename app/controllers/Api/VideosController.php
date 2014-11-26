<?php

namespace Api;

use Symfony\Component\HttpFoundation\JsonResponse;

class VideosController extends \BaseController {

    /**
     * Video Repository
     *
     * @var Video
     */
    protected $video;

    public function __construct(\Video $video) {
        $this->video = $video;
       
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function getListVideoByCategory($category = null) {
      
        return \Response::json($this->video->getListVideoByCategoryId($category));
    }
    public function getListVideoByTag($tag){
        return \Response::json($this->video->getListVideoByTagId($tag));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store() {
        $input = \Request::only('videoName', 'videoAuthor', 'videoAvatar', 'videoDescription', 'videoCategoryId', 'videoLink', 'videoViews', 'videoShares');
        $validation = \Validator::make($input, \Video::$rules);

        if ($validation->passes()) {
            $video = $this->video->create($input);
            return $video;
        }
        return \Response::json(['errors' => $validation->errors()->toArray()], 412);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id) {
        return $this->video->findOrFail($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function updateVideoCounter(\Video $videoId) {
        $input = \Request::only('videoViews');
        if (!empty($input)) {
            $video = $this->video->find($videoId->attributes['videoId']);
            var_dump($videoId);die;
            $video->update($input);
            return $video;
        }
        return \Response::json(['response' => 'Updated successfully'], 412);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function updateVideoShare($id) {
        $input = \Request::only('videoShares');
        if (!empty($input)) {
            $video = $this->video->find($id);
            $video->update($input);
            return $video;
        }
        return \Response::json(['response' => 'Updated successfully'], 412);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id) {
        $this->video->find($id)->delete();
        return \Response::json(['response' => 'Deleted successfully'], 412);
    }

}
