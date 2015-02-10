<?php

class VideosController extends \BaseController {

    public $video;

    public function __construct() {
        //updated: prevents re-login.
        $this->beforeFilter('guest', ['only' => ['getLogin']]);
        $this->beforeFilter('auth', ['only' => ['getLogout']]);
        $this->video = new Video();
    }

    public function getIndex() {
        $videos = Video::orderBy('videoId', 'desc')->get(); //->paginate(10);
        $arrTemp = array();
        $arrVideos = array();
        foreach ($videos as $key => &$video) {
            if ($video['approved'] === 'yes') {
                $arrTemp ['videoId'] = $video->videoId;
                $arrTemp ['videoLink'] = $video->videoLink;
                $arrTemp ['videoThumbnail'] = $video['videoThumbnail'];
//            $arrTemp ['vimeo'] = $this->video->getListVideoByVidmeoId($video->videoLink);
                $arrTemp ['videoCommentCount'] = $this->video->countCommentByVideoId($video->videoId);
                $arrTemp ['comments'] = $this->video->getListComments($video->videoId);
                $arrTemp ['videoName'] = $video->videoName;
                $arrTemp ['videoAuthor'] = $video->videoAuthor;
                $arrTemp ['videoAvatar'] = $video->videoAvatar;
                $arrTemp ['videoDescription'] = $video->videoDescription;
                $arrTemp ['videoViews'] = $video->videoViews;
                $arrTemp ['videoShares'] = $video->videoShares;
                $arrVideos [] = $arrTemp;
            }
        }

        $category = new Category();
//        $videos->getFactory()->setViewName('pagination::simple');
        $this->layout->title = 'Instavid';
        $this->layout->main = View::make('home')->nest('content', 'index', compact('arrVideos'));
        $this->layout->categories = $category->getListCatgories();
    }

    public function getListVideoByCategoryFrontend($category) {
        $videos = $this->video->getListVideoByCategoryIdFrontend($category);
        $arrTemp = array();
        $arrVideos = array();
        foreach ($videos as $key => &$video) {
            $arrTemp ['videoId'] = $video['videoId'];
            $arrTemp ['videoLink'] = $video['videoLink'];
//            $arrTemp ['vimeo'] = $this->video->getListVideoByVidmeoId($video['videoLink']);
            $arrTemp ['videoThumbnail'] = $video['videoThumbnail'];
            $arrTemp ['videoCommentCount'] = $this->video->countCommentByVideoId($video['videoId']);
            $arrTemp ['comments'] = $this->video->getListComments($video['videoId']);
            $arrTemp ['videoName'] = $video['videoName'];
            $arrTemp ['videoAuthor'] = $video['videoAuthor'];
            $arrTemp ['videoAvatar'] = $video['videoAvatar'];
            $arrTemp ['videoDescription'] = $video['videoDescription'];
            $arrTemp ['videoViews'] = $video['videoViews'];
            $arrTemp ['videoShares'] = $video['videoShares'];
            $arrVideos [] = $arrTemp;
        }
        $this->layout->title = 'Instavid';
        $this->layout->main = View::make('home')->nest('content', 'index', compact('arrVideos'));
        $this->layout->categories = $category->getListCatgories();
    }

    public function showVideo(Video $videos) {

        $arrTemp = array();
        $video = $videos->toArray();
        $arrTemp ['videoId'] = $video['videoId'];
        $arrTemp ['videoLink'] = $video['videoLink'];
//        $arrTemp ['vimeo'] = $this->video->getListVideoByVidmeoId($video['videoLink']);
        $arrTemp ['videoThumbnail'] = $video['videoThumbnail'];
        $arrTemp ['videoCommentCount'] = $this->video->countCommentByVideoId($video['videoId']);
        $arrTemp ['comments'] = $this->video->getListComments($video['videoId']);
        $arrTemp ['videoName'] = $video['videoName'];
        $arrTemp ['videoAuthor'] = $video['videoAuthor'];
        $arrTemp ['videoAvatar'] = $video['videoAvatar'];
        $arrTemp ['videoDescription'] = $video['videoDescription'];
        $arrTemp ['videoViews'] = $video['videoViews'];
        $arrTemp ['videoShares'] = $video['videoShares'];
        $arrVideo = $arrTemp;
        // update view
        $input = array('videoId' => $video['videoId'], 'type' => 1);
        $this->video->updateVideoViewShare($input);
        $category = new Category();
        $title = 'Instavid Video';
        $categories = $category->getListCatgories();
        return View::make('videos.single')->with(array('title' => $title,'categories'=>$categories,'arrVideo'=>$arrVideo));
        
    }

    public function getSearch() {

        $searchTerm = Input::get('s');
        $hashTagName = explode(',', $searchTerm);
        $videos = array();
        $arrVideos = array();
        $resultsVideo = array();
//        $videos = Video::whereRaw('match(videoName,videoAuthor) against(? in boolean mode)', [$searchTerm])
//                ->paginate(10);
//        $videos->getFactory()->setViewName('pagination::slider');
        $hashTag = new HashTag();
        $listHashTag = $hashTag->getListHashTagModel($hashTagName);

        if (count($listHashTag) > 0 && !empty($listHashTag)) {
            foreach ($listHashTag as $tagId) {
                $videos = $this->video->getListVideoSeach($tagId['hashTagId']);
                foreach ($videos as $video) {
                    if ($video['approved'] === 'yes') {
                        $resultsVideo ['videoId'] = $video['videoId'];
                        $resultsVideo ['videoLink'] = $video['videoLink'];
                        $resultsVideo ['videoThumbnail'] = $video['videoThumbnail'];
//                    $resultsVideo ['vimeo'] = $this->video->getListVideoByVidmeoId($video['videoLink']);
                        $resultsVideo ['videoCommentCount'] = $this->video->countCommentByVideoId($video['videoId']);
                        $resultsVideo ['comments'] = $this->video->getListComments($video['videoId']);
                        $resultsVideo ['videoName'] = $video['videoName'];
                        $resultsVideo ['videoAuthor'] = $video['videoAuthor'];
                        $resultsVideo ['videoAvatar'] = $video['videoAvatar'];
                        $resultsVideo ['videoDescription'] = $video['videoDescription'];
                        $resultsVideo ['videoViews'] = $video['videoViews'];
                        $resultsVideo ['videoShares'] = $video['videoShares'];

                        $arrVideos [] = $resultsVideo;
                    }
                }
            }
            $this->layout->with('title', 'Search: ' . $searchTerm);
            $this->layout->main = View::make('home')
                    ->nest('content', 'index', (empty($arrVideos)) ? ['notFound' => true] : compact('arrVideos'));
        } else {
            $this->layout->with('title', 'Search: ' . $searchTerm);
            $this->layout->main = View::make('home')
                    ->nest('content', 'index', ['notFound' => true]);
        }
        $category = new Category();

        $this->layout->categories = $category->getListCatgories();
    }

    public function getLogin() {
        $title = 'login';
        return View::make('login')->with('title');
    }

    public function postLogin() {
        $credentials = [
            'username' => Input::get('username'),
            'password' => Input::get('password')
        ];
        $rules = [
            'username' => 'required',
            'password' => 'required'
        ];
        $validator = Validator::make($credentials, $rules);
        if ($validator->passes()) {
            if (Auth::attempt($credentials))
//            if(Auth::loginUsingId(1))
                return Redirect::to('admin/dash-board');
            return Redirect::back()->withInput()->with('failure', 'Nom d\'utilisateur ou mot de passe incorrect');
        } else {
            return Redirect::back()->withErrors($validator)->withInput();
        }
    }

    public function getLogout() {
        Auth::logout();
        return Redirect::to('/login');
    }

    public function ajaxUpdateView($videoId) {
        $input = array('videoId' => $videoId, 'type' => 1);
        $countView = $this->video->updateVideoViewShare($input);
        return $countView->videoViews;
    }

    public function ajaxUpdateShare($videoId) {
        $input = array('videoId' => $videoId, 'type' => 0);
        $countView = $this->video->updateVideoViewShare($input);
        return $countView->videoShares;
    }

}
