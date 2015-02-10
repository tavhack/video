<?php

namespace Api;

use Symfony\Component\HttpFoundation\JsonResponse;
use Common;

class CommentsController extends \BaseController {

    /**
     * Reponse resource add commnet
     *
     */
    protected $comment;

    public function __construct(\Comment $comment) {
        $this->comment = $comment;
    }

    public function newComment($ObjVideo) {
        $input = \Request::only('commentAuthor', 'commentAvatar', 'commentText');
        $input['commentVideoId'] = $ObjVideo['videoId'];
        if (!empty($input['commentAvatar'])) {
            $dataImage = $input['commentAvatar'];
            $commentAvatar = \Common\Helpers::convertToImageJpeg($dataImage, public_path() . '/images/avatars/comments');
            $commentAvatarUrl = URL('/images/avatars/comments/' . $commentAvatar);
            $input['commentAvatar'] = $commentAvatarUrl;
        } else {
            $commentAvatar = 'noavatar.jpg';
            $commentAvatarUrl = URL('/images/avatars/comments/' . $commentAvatar);
            $input['commentAvatar'] = $commentAvatarUrl;
        }

        $validation = \Validator::make($input, \Comment::$rules);
        if ($validation->passes()) {
             return \Response::json($this->comment->saveComment($input));
           
        }
        return \Response::json(['errors' => $validation->errors()->toArray()], 412);
    }

}

?>