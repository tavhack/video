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
	 * Display a listing video by category of the resource.
	 *
	 * @return Response
	 */
	public function getListVideoByCategory($category = null) {

		return \Response::json($this->video->getListVideoByCategoryId($category));
	}
	/**
	 * Display a listing video by tag id of the resource.
	 *
	 * @return Response
	 */
	public function getListVideoByTag($tag) {
		// var_dump($this->video->getListVideoByTagId($tag));die();
		return \Response::json($this->video->getListVideoByTagId($tag));
	}
/**
 * Display a listing commnent by video id of the resource.
 *
 * @return Response
 */

	public function getAllCommentVideo($video) {
		return \Response::json($this->video->getListCommentByVideoId($video));
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
	public function updateVideoCounter(\Video $ObjVideo) {
		$input = \Request::only('videoViews');
		$input = array_map('intval', $input);
		if (!empty($input)) {
			$video = $this->video->find($ObjVideo['videoId']);
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
	public function updateVideoShare(\Video $ObjVideo) {
		$input = \Request::only('videoShares');
		$input = array_map('intval', $input);
		if (!empty($input)) {
			$video = $this->video->find($ObjVideo['videoId']);
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
	public function destroy(\Video $ObjVideo) {
		$this->video->find($ObjVideo['videoId'])->delete();
		return \Response::json(['response' => 'Deleted successfully'], 412);
	}

}
