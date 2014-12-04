<?php

class AdminVideosController extends \BaseController {
    /* get functions */

    public function listVideo() {
        $videos = Video::orderBy('id', 'desc')->paginate(10);
        $this->layout->title = 'Video listings';
        $this->layout->main = View::make('dash')->nest('content', 'videos.list', compact('videos'));
    }

    public function showVideo(Video $video) {
        $comments = $video->comments()->where('approved', '=', 1)->get();
        $this->layout->title = 'Video Listings';
        $this->layout->main = View::make('home')->nest('content', 'videos.single', compact('video', 'comments'));
    }

    public function newVideo() {
        $this->layout->title = 'New Video';
        $this->layout->main = View::make('dash')->nest('content', 'videos.new');
    }

    public function editVideo(Video $video) {
        $this->layout->title = 'Edit Video';
        $this->layout->main = View::make('dash')->nest('content', 'videos.edit', compact('video'));
    }

    public function deletePost(Video $video) {
        $video->delete();
        return Redirect::route('video.list')->with('success', 'Video is deleted!');
    }

    /* post functions */

    public function saveVideo() {
        $video = [
            'videoName' => Input::get('videoName'),
            'videoAvatar' => Input::get('videoAvatar'),
            'videoAuthor' => Input::get('videoAuthor'),
            'videoDescription' => Input::get('videoDescription'),
            'videoCategoryId' => Input::get('videoCategoryId'),
            'videoView' => Input::get('videoView'),
            'videoShare' => Input::get('videoShare'),
            'videoLink' => Input::get('videoLink'),
        ];

        $valid = Validator::make($video, Video::$rules);
        if ($valid->passes()) {
            $video = new Video($video);
            $video->save();
            return Redirect::to('admin/dash-board')->with('success', 'Video is saved!');
        } else
            return Redirect::back()->withErrors($valid)->withInput();
    }

    public function updateVideo(Video $video) {
        $data = [
            'videoName' => Input::get('videoName'),
            'videoAvatar' => Input::get('videoAvatar'),
            'videoAuthor' => Input::get('videoAuthor'),
            'videoDescription' => Input::get('videoDescription'),
            'videoCategoryId' => Input::get('videoCategoryId'),
            'videoView' => Input::get('videoView'),
            'videoShare' => Input::get('videoShare'),
            'videoLink' => Input::get('videoLink'),
        ];

        $valid = Validator::make($data, Video::$rules);
        if ($valid->passes()) {
            $video->videoName = $data['videoName'];
            $video->videoAvatar = $data['videoAvatar'];
            $video->videoAuthor = $data['videoAuthor'];
            $video->videoDescription = $data['videoDescription'];
            $video->videoCategoryId = $data['videoCategoryId'];
            $video->videoView = $data['videoView'];
            $video->videoShare = $data['videoShare'];
            $video->videoLink = $data['videoLink'];

            if (count($video->getDirty()) > 0) /* avoiding resubmission of same content */ {
                $video->save();
                return Redirect::back()->with('success', 'Video is updated!');
            } else
                return Redirect::back()->with('success', 'Nothing to update!');
        } else
            return Redirect::back()->withErrors($valid)->withInput();
    }

}
