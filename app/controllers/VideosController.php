<?php

class VideosController extends \BaseController {

    public function __construct() {
        //updated: prevents re-login.
        $this->beforeFilter('guest', ['only' => ['getLogin']]);
        $this->beforeFilter('auth', ['only' => ['getLogout']]);
    }

    public function getIndex() {
        $videos = Video::orderBy('videoId', 'desc')->paginate(10);
        $videos->getFactory()->setViewName('pagination::simple');
        $this->layout->title = 'Home Page';
        $this->layout->main = View::make('home')->nest('content', 'index', compact('videos'));
    }

    public function getSearch() {
        $searchTerm = Input::get('s');
        $videos = Video::whereRaw('match(title,content) against(? in boolean mode)', [$searchTerm])
                ->paginate(10);
        $videos->getFactory()->setViewName('pagination::slider');
        $videos->appends(['s' => $searchTerm]);
        $this->layout->with('title', 'Search: ' . $searchTerm);
        $this->layout->main = View::make('home')
                ->nest('content', 'index', ($videos->isEmpty()) ? ['notFound' => true] : compact('videos'));
    }

    public function getLogin() {
        $this->layout->title = 'login';
        $this->layout->main = View::make('login');
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
                return Redirect::to('admin/dash-board');
            return Redirect::back()->withInput()->with('failure', 'username or password is invalid!');
        } else {
            return Redirect::back()->withErrors($validator)->withInput();
        }
    }

    public function getLogout() {
        Auth::logout();
        return Redirect::to('/');
    }

}
