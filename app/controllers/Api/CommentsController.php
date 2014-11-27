<?php
namespace Api;

use Symfony\Component\HttpFoundation\JsonResponse;

class CommentsController extends \BaseController {
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
		return \Response::json(['errors' => $validation->errors()->toArray()], 412);
	}
}
?>