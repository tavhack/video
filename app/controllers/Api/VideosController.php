<?php

namespace Api;

use Symfony\Component\HttpFoundation\JsonResponse;
use Common;

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
    public function getListVideoByTag() {
        $input = \Request::only('tagName', 'type');
//		$input = array_map('intval', $input);
        return \Response::json($this->video->getListVideoByHashTag());
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
        $input = \Request::only('videoAuthor', 'videoAvatar', 'videoThumbnail', 'videoDescription', 'videoCategoryId', 'videoLink', 'deviceId');
        $validation = \Validator::make($input, \Video::$rules);

        $matches = array();
        $pattern = preg_match_all("/(#\w+)/", $input['videoDescription'], $matches);
        $temp = array();
        $arrTag = array();
        if ($pattern) {
            if (count($matches[0]) > 0) {
                $tag1 = str_replace('#', '', $matches[0]);
                $hasTagModel = new \HashTag();
                foreach ($tag1 as $item) {
                    if (in_array($item,$temp) == false) {
                        $temp[] = $item;
                        $checkTagName = $hasTagModel->checkHashTagNameExift($item);

                        if ($checkTagName > 0) {
                            $arrTag[] = $checkTagName;
                        }
                    }
                }
               $tag =  $arrTag;
            }
            $desc = $input['videoDescription'];
        } else {
            $tag = null;
            $desc = $input['videoDescription'];
        }
//        if (preg_match('/#/', $input['videoDescription'])) {
//
//            //regular expression
//            $chars = preg_split('/#*:/i', $input['videoDescription'], -1, PREG_SPLIT_NO_EMPTY | PREG_SPLIT_DELIM_CAPTURE);
//            $tag = str_replace('#', '', $chars[0]);
//            $desc = $chars[1];
//        } else {
//             $tag = null;
//             $desc = $input['videoDescription'];
//        }
        //process videoAvatar
        if (!empty($input['videoAvatar'])) {
            $dataImage = $input['videoAvatar'];
            $videoAvatar = \Common\Helpers::convertToImageJpeg($dataImage, public_path() . '/images/avatars/videos');
            $videoAvatarUrl = URL('/images/avatars/videos/' . $videoAvatar);
            $input['videoAvatar'] = $videoAvatarUrl;
        } else {
            $videoAvatar = 'noavatar.jpg';
            $videoAvatarUrl = URL('/images/avatars/videos/' . $videoAvatar);
            $input['videoAvatar'] = $videoAvatarUrl;
        }
        //process videoThumbnail
        if (!empty($input['videoThumbnail'])) {
            $dataVideoThumbnail = $input['videoThumbnail'];
            $videoThumbnail = \Common\Helpers::convertToImageJpeg($dataVideoThumbnail, public_path() . '/images/videoThumbnails');
            $videoThumbnailUrl = URL('/images/videoThumbnails', $videoThumbnail);
            $input['videoThumbnail'] = $videoThumbnailUrl;
        }

        if ($validation->passes()) {
            $video = $this->video->postVideo($input, $tag, $desc);
//            $response = ['response'=>'success','videoId'=>$video];
            return \Response::json(['videoId' => $video]);
        }
        return \Response::json(['errors' => $validation->errors()->toArray()], 412);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function showDetailVideo(\Video $id) {
        return \Response::json($this->video->getVideoDetailByVideoId($id));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function updateVideoCounterViewShare() {
        $input = \Request::only('type', 'videoId');
        $input = array_map('intval', $input);
        if (!empty($input)) {
            $video = $this->video->updateVideoViewShare($input);
            return \Response::json($video);
        }
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

    public function getListVideoBySearch() {
        $input = \Request::only('hashTagId', 'userId');
        return \Response::json($this->video->getListVideoSeach($input['hashTagId'], $input['userId']));
    }

}
