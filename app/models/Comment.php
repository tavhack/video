<?php

/**
 * Model Comment
 *
 */
class Comment extends Eloquent {

    protected $table = "comments";
    protected $fillable = ['commentId','commentVideoId', 'commentAuthor', 'commentAvatar', 'commentText', 'approved'];
    protected $primaryKey = 'commentId ';
    public static $rules = array(
        'commentAvatar' => 'required',
        'commentAuthor' => 'required',
        'commentText' => 'required',
    );

    public function getDates() {
        return array();
    }

    public function videos() {
        return $this->belongsTo('Video');
    }

//    public function categories()
    //    {
    //        return $this->belongsToMany("Category", "videos", "videoCategoryId", "categoryId");
    //    }

    public function getApprovedAttribute($approved) {
        return (intval($approved) == 1) ? 'yes' : 'no';
    }

    public function setApprovedAttribute($approved) {
        $this->attributes['approved'] = ($approved === 'yes') ? 1 : 0;
    }

    public function saveComment($input) {
        
        $comment = new Comment();
        
         if ($input > 0) {

            $arr = array();
           $comment->commentAuthor = $input['commentAuthor'];
            $comment->commentAvatar = $input['commentAvatar'];
            $comment->commentText = $input['commentText'];
            $comment->commentVideoId = $input['commentVideoId'];
            $comment->approved = false;
            $comment->save();
//            $arr['commentId'] = $comment->commentId;
            $arr['commentAuthor'] = $comment->commentAuthor;
            $arr['commentAvatar'] = $comment->commentAvatar;
            $arr['commentVideoId'] = $comment->commentVideoId;
            $arr['commentText'] = $comment->commentText;
            $arr['created_at'] = date("Y-m-d H:m:i ",strtotime($comment->created_at));
            $arr['updated_at'] = date("Y-m-d H:m:i",strtotime($comment->updated_at));
            $arr['timeElapsed'] = Common\Helpers::getHowLongAgo($comment->created_at);

            return $arr;
        }
    }

}
