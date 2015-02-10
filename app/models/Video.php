<?php

/**
 * Model Video
 *
 */
//use Common;
class Video extends Eloquent {

    protected $table = "videos";
    protected $fillable = ['videoName', 'videoAuthor', 'videoAvatar', 'videoDescription', 'videoCategoryId', 'videoLink', 'videoViews', 'videoShares'];
    protected $primaryKey = 'videoId';
    public static $rules = array(
//        'videoName' => 'required',
        'videoAuthor' => 'required',
//        'videoAvatar' => 'required',
        'videoThumbnail' => 'required',
        'videoDescription' => 'required',
        'videoCategoryId' => 'required|integer',
        'videoLink' => 'required',
//        'videoViews' => 'required|integer',
//        'videoShares' => 'required|integer',
        'deviceId' => 'required'
    );

    public function getDates() {
        return array();
    }

    public function category() {
        return $this->belongsTo('Category');
    }

    public function delete() {
        foreach ($this->video as $video) {
            $video->delete();
        }
        return parent::delete();
    }

//    public function getCreatedAtAttribute($date) {
//        return Common\Helpers::getHowLongAgo($date);
//    }
//
//    public function setCreatedAtAttribute($date) {
//        $this->attributes['created_at'] = Common\Helpers::getHowLongAgo($date);
//    }

    public function comments() {
        return $this->hasMany('Comment', 'commentVideoId');
    }

    public function tags() {
        return $this->belongsToMany('HashTag', 'videos_tags', 'hashTagId', 'hashTagVideoId');
    }

    public function countCommentByVideoId($videoId) {
        return $count = Comment::where('commentVideoId', '=', $videoId)->count();
    }

    public function updateVideoViewShare(array $input) {
        if (!is_array($input) || ($input['videoId'] == null && $input['type'] == null) || ($input['videoId'] == null && $input['type'] != null))
            return;
        $video = Video::where('videoId', '=', $input['videoId'])->first();
        if ($input['type'] == 1) {
            $video->videoViews +=1;
            $video->videoType = 1;
        } else {
            $video->videoShares +=1;
            $video->videoType = 0;
        }
        $video->save();
        return $video;
    }

    public function getListVideoByCategoryId($category = null) {

        $this->video = new Video();
        $this->category = new Category();
        $list = array();
        $datas = array();
        if (is_null($category) || empty($category)) {
            $listVideos = $this->video->orderBy('videoId', 'DESC')->where('approved', '=', 1)->paginate(10);

            foreach ($listVideos as $v) {

                $list['categoryName'] = $this->category->getCategoryNameById($v->videoCategoryId);
                $list['videoId'] = $v->videoId;
                $list['videoCategoryId'] = $v->videoCategoryId;
                $list['videoName'] = $v->videoName;
                $list['videoAuthor'] = $v->videoAuthor;
                $list['videoAvatar'] = $v->videoAvatar;
                $list['videoThumbnail'] = $v->videoThumbnail;
                $list['videoDescription'] = $v->videoDescription;
                $list['videoLink'] = $v->videoLink;
                $list['videoViews'] = $v->videoViews;
                $list['videoShares'] = $v->videoShares;
                $list['videoUrl'] = action('VideosController@showVideo', array($v['videoId']));
                $list['timeElapsed'] = Common\Helpers::getHowLongAgo($v->created_at);
                $list['created_at'] = $v->created_at;
                $list['updated_at'] = $v->updated_at;
                $list['videoCommentCount'] = $this->countCommentByVideoId($v->videoId);
                $list['comments'] = $this->getListComments($v->videoId, true);
                $list['totalItems'] = $listVideos->getTotal();
                $list['currentPage'] = $listVideos->getCurrentPage();
                $list['lastPage'] = $listVideos->getLastPage();
                $datas[] = $list;
            }
        } else {

            // bind data to array
            $objVideo = $this->video->orderBy('videoId', 'DESC')->where('approved', '=', 1)->where('videoCategoryId', '=', $category->attributes['categoryId'])->paginate(10);

            if (!is_null($objVideo)) {
                foreach ($objVideo as $v) {

                    $list['categoryName'] = $this->category->getCategoryNameById($v->videoCategoryId);
                    $list['videoId'] = $v->videoId;
                    $list['videoCategoryId'] = $v->videoCategoryId;
                    $list['videoName'] = $v->videoName;
                    $list['videoAuthor'] = $v->videoAuthor;
                    $list['videoAvatar'] = $v->videoAvatar;
                    $list['videoThumbnail'] = $v->videoThumbnail;
                    $list['videoDescription'] = $v->videoDescription;
                    $list['videoLink'] = $v->videoLink;
                    $list['videoViews'] = $v->videoViews;
                    $list['videoShares'] = $v->videoShares;
                    $list['videoUrl'] = action('VideosController@showVideo', array($v['videoId']));
                    $list['timeElapsed'] = Common\Helpers::getHowLongAgo($v->created_at);
                    $list['created_at'] = $v->created_at;
                    $list['updated_at'] = $v->updated_at;
                    $list['videoCommentCount'] = $this->countCommentByVideoId($v->videoId);
                    $list['comments'] = $this->getListComments($v->videoId, true);
                    $list['totalItems'] = $objVideo->getTotal();
                    $list['currentPage'] = $objVideo->getCurrentPage();
                    $list['lastPage'] = $objVideo->getLastPage();
                    $datas[] = $list;
                }
            }
        }
        return $datas;
    }

    //for frontend

    public function getListVideoByCategoryIdFrontend($category) {
        $list = array();
        $datas = array();
        $this->video = new Video();
        $this->category = new Category();

        if ($category) {
            $objVideo = $this->video->orderBy('videoId', 'DESC')->where('approved', '=', 1)->where('videoCategoryId', '=', $category->attributes['categoryId'])->get();

            if (!is_null($objVideo)) {
                foreach ($objVideo as $v) {

                    $list['categoryName'] = $this->category->getCategoryNameById($v->videoCategoryId);
                    $list['videoId'] = $v->videoId;
                    $list['videoCategoryId'] = $v->videoCategoryId;
                    $list['videoName'] = $v->videoName;
                    $list['videoAuthor'] = $v->videoAuthor;
                    $list['videoAvatar'] = $v->videoAvatar;
                    $list['videoThumbnail'] = $v->videoThumbnail;
                    $list['videoDescription'] = $v->videoDescription;
                    $list['videoLink'] = $v->videoLink;
                    $list['videoViews'] = $v->videoViews;
                    $list['videoShares'] = $v->videoShares;
                    $list['videoUrl'] = action('VideosController@showVideo', array($v['videoId']));
                    $list['timeElapsed'] = Common\Helpers::getHowLongAgo($v->created_at);
                    $list['created_at'] = $v->created_at;
                    $list['updated_at'] = $v->updated_at;
                    $list['videoCommentCount'] = $this->countCommentByVideoId($v->videoId);
                    $list['comments'] = $this->getListComments($v->videoId, true);

                    $datas[] = $list;
                }
            }
            return $datas;
        } else {
            return array();
        }
    }

    public function getListVideoByHashTag(array $input) {
        if (is_array($input) || count($input) > 0)
            return'';
        $tagId = $tag['hashTagId'];
        $list = $tag->video()->get();

        return $list;
    }

    public function getListComments($videoId, $limit = false) {
        // approved
//        $comments = Comment::where('approved', '=', 1)->where('commentVideoId', '=', $videoId)->get();
        //limit display 4 comments
        $arrData = array();
        $listComment = array();
        if ($limit) {
            $comments = Comment::orderBy('commentId', 'desc')->where('commentVideoId', '=', $videoId)->take(4)->get();
            foreach ($comments as $comment) {
                $arrData['commentId'] = $comment->commentId;
                $arrData['commentVideoId'] = $comment->commentVideoId;
                $arrData['commentAuthor'] = $comment->commentAuthor;
                $arrData['commentAvatar'] = $comment->commentAvatar;
                $arrData['commentText'] = $comment->commentText;
                $arrData['timeElapsed'] = Common\Helpers::getHowLongAgo($comment->created_at);
                $arrData['created_at'] = $comment->created_at;
                $arrData['updated_at'] = $comment->updated_at;
                $listComment[] = $arrData;
            }
        } else {
            // not need approve
            $comments = Comment::orderBy('commentId', 'desc')->where('commentVideoId', '=', $videoId)->get();
            foreach ($comments as $comment) {
                $arrData['commentId'] = $comment->commentId;
                $arrData['commentVideoId'] = $comment->commentVideoId;
                $arrData['commentAuthor'] = $comment->commentAuthor;
                $arrData['commentAvatar'] = $comment->commentAvatar;
                $arrData['commentText'] = $comment->commentText;
                $arrData['timeElapsed'] = Common\Helpers::getHowLongAgo($comment->created_at);
                $arrData['created_at'] = $comment->created_at;
                $arrData['updated_at'] = $comment->updated_at;
                $listComment[] = $arrData;
            }
        }
        if (count($listComment) > 0)
            return $listComment;
        else
            return array();
    }

    public function getListCommentByVideoId($video) {
        $arrData = array();
        $listComment = array();
        $comments = $video->comments()->orderBy('commentId', 'desc')->get();
        foreach ($comments as $comment) {
            $arrData['commentId'] = $comment->commentId;
            $arrData['commentVideoId'] = $comment->commentVideoId;
            $arrData['commentAuthor'] = $comment->commentAuthor;
            $arrData['commentAvatar'] = $comment->commentAvatar;
            $arrData['commentText'] = $comment->commentText;
            $arrData['timeElapsed'] = Common\Helpers::getHowLongAgo($comment->created_at);
            $arrData['created_at'] = $comment->created_at;
            $arrData['updated_at'] = $comment->updated_at;
            $listComment[] = $arrData;
        }
        return $listComment;
    }

    public function getVideoDetailByVideoId($video) {
        $this->video = new Video();
        $this->category = new Category();
        $list = array();
        $datas = array();
        // bind data to array
        $objVideo = $this->video->orderBy('videoId', 'DESC')->where('approved', '=', 1)->where('videoId', '=', $video->videoId)->get();

        if (!is_null($objVideo)) {
            foreach ($objVideo as $v) {

                $list['categoryName'] = $this->category->getCategoryNameById($v->videoCategoryId);
                $list['videoId'] = $v->videoId;
                $list['videoCategoryId'] = $v->videoCategoryId;
                $list['videoName'] = $v->videoName;
                $list['videoAuthor'] = $v->videoAuthor;
                $list['videoAvatar'] = $v->videoAvatar;
                $list['videoThumbnail'] = $v->videoThumbnail;
                $list['videoDescription'] = $v->videoDescription;
                $list['videoLink'] = $v->videoLink;
                $list['videoViews'] = $v->videoViews;
                $list['videoShares'] = $v->videoShares;
                $list['videoUrl'] = action('VideosController@showVideo', array($v['videoId']));
                $list['timeElapsed'] = Common\Helpers::getHowLongAgo($v->created_at);
                $list['created_at'] = $v->created_at;
                $list['updated_at'] = $v->updated_at;
                $list['videoCommentCount'] = $this->countCommentByVideoId($v->videoId);
                $list['comments'] = $this->getListComments($v->videoId);
                $datas[] = $list;
            }
        }
        return $datas;
    }

    //process save video save hashtag

    public function postVideo($input, $tagName, $desc) {


        $videoId = $this->saveVideo($input, $desc);
        if (!is_null($tagName)) {
//            $arrTagId = array();
//            $tag = explode(',', $tagName);

            $this->saveTagVideo($videoId, $tagName);
        }

        return $videoId;
    }

    public function saveVideo($input, $desc) {

        $video = new Video();
//        $video->videoName = $input['videoName'];
        $video->videoAuthor = $input['videoAuthor'];
        $video->videoAvatar = $input['videoAvatar'];
        $video->videoThumbnail = $input['videoThumbnail'];
        $video->videoDescription = $desc;
        $video->videoCategoryId = $input['videoCategoryId'];
        $video->videoLink = $input['videoLink'];
        $video->videoUserId = $this->saveUserId($input);
//        $video->videoViews = $input['videoViews'];
//        $video->videoShares = $input['videoShares'];
        $video->approved = false; // not approved
        $video->save();
        return $video->videoId;
    }

    public function saveTag($tagName) {

        $arrId = array();
        foreach ($tagName as $name) {
            $tag = new HashTag();
            $tag->hashTagName = $name;
            $tag->save();
            $arrId[] = $tag->hashTagId;
        }
        return $arrId;
    }

    public function saveTagname($tagName) {
        $tag = new HashTag();
        $tag->hashTagName = $tagName;
        $tag->save();
        return $tag->hashTagId;
        ;
    }

    public function saveTagVideo($videoId, $arrTagId) {

        foreach ($arrTagId as $tagId) {
            $videoTag = new VideoTag();
            $videoTag->hashTagId = $tagId;
            $videoTag->hashTagVideoId = $videoId;
            $videoTag->save();
        }
    }

    public function saveUserId($input = array()) {
        if (empty($input))
            return false;
        $user = new User();
//        $errors = array();
//        $userOld = $this->checkUserExist($input);
//        if (($userOld['fullname'] === $input['videoAuthor'] &&
//                $userOld['deviceId'] != $input['deviceId']) ||
//                ($userOld['fullname'] != $input['videoAuthor'] &&
//                $userOld['deviceId'] === $input['deviceId'])) {
        $user->username = $input['videoAuthor'];
        $user->fullname = $input['videoAuthor'];
        $user->avatar = $input['videoAvatar'];
        $user->deviceId = $input['deviceId'];
        $user->save();
//        }elseif ($userOld['fullname'] === $input['videoAuthor'] &&
//                $userOld['deviceId'] === $input['deviceId']) {
//            
//        }
        return $user->userId;
    }

    public function checkUserExist($input = array()) {
        $userOld = User::where('fullname', '=', $input['videoAuthor'])->where('deviceId', '=', $input['deviceId'])->get();
        $arrUser = array();
        foreach ($userOld as $user) {
            $arrUser ['fullname'] = $user['fullname'];
            $arrUser ['deviceId'] = $user['deviceId'];
        }
        return $arrUser;
    }

    public function getListVideoByVidmeoId($vimeoId) {

        $apiUrl = 'http://vimeo.com/api/v2/video/' . $vimeoId . '.json';
        $checkUrl = get_headers($apiUrl, true);
        $status = explode(' ', $checkUrl[0]);
        if ($status[1] == 200) {
            $listDataRespones = file_get_contents($apiUrl);
            $reponse = json_decode($listDataRespones);
            foreach ($reponse as $v) {
                $objData = new stdClass();
                $objData->videoName = $v->title;
                $objData->videoLink = $v->url;
                $objData->thumbnail_large = $v->thumbnail_large;
                break;
            }
        } else {
            $objData = new stdClass();
            $objData->videoName = null;
            $objData->videoLink = null;
            $objData->thumbnail_large = null;
        }

        return $objData;
    }

    public function listVideoFrontend($videos) {

        $arrVideo = array();
        $listVideo = array();
        if (!empty($videos)) {
            foreach ($videos as $v) {
                $arrVideo['videoId'] = $v->videoId;
                $arrVideo['videoLink'] = $v->videoLink;
                $listVideo [] = $arrVideo;
                foreach ($listVideo as $video) {
                    $objVideos = new stdClass();
                    $vimeoId = $video['videoLink'];
                    $objVideos->vimeo = $this->getListVideoByVidmeoId($vimeoId);
                    $objVideos->videoCommentCount = $this->countCommentByVideoId($video['videoId']);
                    $objVideos->comments = $this->getListComments($video['videoId']);
                    break;
                }
            }
        }

        return $objVideos;
    }

    public function getListVideoByHashTagId($hashTagVideoId) {
        if ($hashTagVideoId != null) {
            $video = Video::where('videoId', '=', $hashTagVideoId)->get();
            return $video->toArray();
        }
    }

    public function getListVideoByUserId($userId) {
        if ($userId != null) {
            $video = Video::where('videoUserId', '=', $userId)->get();
            return $video;
        }
    }

    public function getListVideoSeach($hashTagId = null, $userId = null) {

        $listVideo = array();
        $arrTemp = array();
        $this->category = new Category();
        if (!is_null($hashTagId)) {

            $listVideoIdHashtag = VideoTag::where('hashTagId', '=', $hashTagId)->get();
            if (!is_null($listVideoIdHashtag)) {
                foreach ($listVideoIdHashtag as $v) {

                    $listHashTagVideo = $this->getListVideoByHashTagId($v->hashTagVideoId);
                    if (!empty($listHashTagVideo)) {
                        foreach ($listHashTagVideo as $video) {
                            if ($video['approved'] === 'yes') {
                                $arrTemp['categoryName'] = $this->category->getCategoryNameById($video['videoCategoryId']);
                                $arrTemp['videoId'] = $video['videoId'];
                                $arrTemp['videoName'] = $video['videoName'];
                                $arrTemp['videoAuthor'] = $video['videoAuthor'];
                                $arrTemp['videoThumbnail'] = $video['videoThumbnail'];
                                $arrTemp['videoAvatar'] = $video['videoAvatar'];
                                $arrTemp['videoDescription'] = $video['videoDescription'];
                                $arrTemp['videoCategoryId'] = $video['videoCategoryId'];
                                $arrTemp['videoViews'] = $video['videoViews'];
                                $arrTemp['videoShares'] = $video['videoShares'];
                                $arrTemp['videoLink'] = $video['videoLink'];
                                $arrTemp['approved'] = $video['approved'];
                                $arrTemp['videoUrl'] = action('VideosController@showVideo', array($video['videoId']));
                                $arrTemp['timeElapsed'] = Common\Helpers::getHowLongAgo($video['created_at']);
                                $arrTemp['created_at'] = $video['created_at'];
                                $arrTemp['updated_at'] = $video['updated_at'];
                                $arrTemp['videoCommentCount'] = $this->countCommentByVideoId($video['videoId']);
                                $arrTemp['comments'] = $this->getListComments($video['videoId']);
                                $listVideo[] = $arrTemp;
                                break;
                            }
                        }
                    }
                }
            }
        }
        if (!is_null($userId)) {

            $listVideoIdUser = User::where('userId', '=', $userId)->get();
            foreach ($listVideoIdUser as $v) {
                $listVideoByUser = $this->getListVideoByUserId($userId);
                if (!empty($listVideoByUser)) {
                    foreach ($listVideoByUser as $video) {
                        if ($video['approved'] === 'yes') {
                            $arrTemp['categoryName'] = $this->category->getCategoryNameById($video['videoCategoryId']);
                            $arrTemp['videoId'] = $video['videoId'];
                            $arrTemp['videoName'] = $video['videoName'];
                            $arrTemp['videoAuthor'] = $video['videoAuthor'];
                            $arrTemp['videoThumbnail'] = $video['videoThumbnail'];
                            $arrTemp['videoAvatar'] = $video['videoAvatar'];
                            $arrTemp['videoDescription'] = $video['videoDescription'];
                            $arrTemp['videoCategoryId'] = $video['videoCategoryId'];
                            $arrTemp['videoViews'] = $video['videoViews'];
                            $arrTemp['videoShares'] = $video['videoShares'];
                            $arrTemp['videoLink'] = $video['videoLink'];
                            $arrTemp['videoUrl'] = action('VideosController@showVideo', array($video['videoId']));
                            $arrTemp['timeElapsed'] = Common\Helpers::getHowLongAgo($video['created_at']);
                            $arrTemp['created_at'] = $video['created_at'];
                            $arrTemp['updated_at'] = $video['updated_at'];
                            $arrTemp['videoCommentCount'] = $this->countCommentByVideoId($video['videoId']);
                            $arrTemp['comments'] = $this->getListComments($video['videoId']);
                            $listVideo[] = $arrTemp;
                            break;
                        }
                    }
                }
            }
        }
        return $listVideo;
    }

    public function getApprovedAttribute($approved) {
        return (intval($approved) == 1) ? 'yes' : 'no';
    }

    public function setApprovedAttribute($approved) {
        $this->attributes['approved'] = ($approved === 'yes') ? 1 : 0;
    }

}
