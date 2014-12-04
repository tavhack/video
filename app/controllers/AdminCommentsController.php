<?php

class AdminCommentsController extends \BaseController {
    /**
     * Reponse resource add commnet
     *
     */

    /**
     * Video Repository
     *
     * @var Video
     */
    protected $comment;

    public function __construct(\Comment $comment) {
        $this->comment = $comment;
    }

    public function newComment($ObjVideo) {
        $input = \Request::only('commentAuthor', 'commentAvatar', 'commentText');
        $input['commentVideoId'] = $ObjVideo['videoId'];
        $validation = \Validator::make($input, \Comment::$rules);
        if ($validation->passes()) {
            $video = $this->comment->create($input);
            return $video;
        }
    }

    public function getListComments() {
        $comments = $this->comment->orderBy('commentId', 'desc')->paginate(10);
        $comments->getFactory()->setViewName('pagination::simple');
        $this->layout->title = 'Comment';
        $this->layout->main = View::make('dash')->nest('content', 'comments.list', compact('comments'));
    }

    public function showComment(Comment $comment)
    {
        if (Request::ajax())
                $queries = DB::getQueryLog();
         $last_query = end($queries);
         var_dump($last_query);die;
            return View::make('comments.show', compact('comment'));
        // handle non-ajax calls here
        //else{}
    }

    public function deleteComment(Comment $comment)
    {
        $comment->commentId;
        $comment->delete();
        return Redirect::back()->with('success', 'Comment deleted!');
    }

    /* post functions */

    public function updateComment(Comment $comment)
    {
        $comment->approved = Input::get('status');
         $comment->commentAuthor = Input::get('commentAuthor');
        $comment->commentAvatar = Input::get('commentAvatar');        
        $comment->commentText = Input::get('commentText');
        $comment->save();
        return Redirect::back()->with('success', 'Comment ' . (($comment->approved === 'yes') ? 'Approved' : 'Disapproved'));
    }

}

?>