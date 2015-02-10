<?php

/**
 * Model HashTag
 *
 */
class HashTag extends Eloquent {

    protected $table = "hashTags";
    protected $fillable = ['hashTagId', 'hashTagName'];
    protected $primaryKey = 'hashTagId';

    public function video() {
        return $this->belongsToMany('Video', 'videos_tags', 'hashTagId', 'hashTagVideoId');
    }

//    public function getListHashTagModel($hashTagName = array()) {
//        $arrTemp = array();
//        $list = array();
//        foreach ($hashTagName as $tagModel) {
//            $hashTagList = HashTag::where('hashTagName', 'LIKE', '%' . $tagModel . '%')->get();
//            foreach ($hashTagList as $hashtag) {
//                $arrTemp ['hashTagId'] = $hashtag['hashTagId'];
//                $arrTemp ['hashTagName'] = $hashtag['hashTagName'];
//                $list [] = $arrTemp;
//            }
//        }
//        if (!empty($list))
//            return $list;
//        else
//            return '';
//    }

    public function getListHashTagModel($hashTagName = array()) {

        $arrTemp = array();
        $list = array();

        /**
         * SQL Query
         * $sql = 'SELECT hashTags.hashTagId, videos_tags.hashTagVideoId
          FROM videos_tags
          INNER JOIN hashTags ON hashTags.hashTagId = videos_tags.hashTagId
          INNER JOIN videos ON videos.videoId = videos_tags.hashTagVideoId
          WHERE hashTags.hashTagName LIKE  '%mik%'
          GROUP BY hashTags.hashTagId, videos_tags.hashTagVideoId
          ORDER BY hashTags.hashTagId
          LIMIT 0 , 30
          ';
         */
        foreach ($hashTagName as $tagModel) {

            $hashTagList = DB::table('videos_tags')
                    ->join('hashTags', 'hashTags.hashTagId', '=', 'videos_tags.hashTagId')
                    ->join('videos', 'videos.videoId', '=', 'videos_tags.hashTagVideoId')
                    ->select('hashTags.hashTagId', 'hashTags.hashTagName', 'videos.approved')
                    ->where('hashTags.hashTagName', 'LIKE', '%' . $tagModel . '%')
                    ->orderBy('hashTags.hashTagId', 'desc')
                    ->groupBy('hashTags.hashTagId')
                    ->get();
            foreach ($hashTagList as $hashtag) {
//                if ($hashtag->approved) {
                    $arrTemp ['hashTagId'] = $hashtag->hashTagId;
                    $arrTemp ['hashTagName'] = $hashtag->hashTagName;
                    $list [] = $arrTemp;
//                }
            }
        }

        if (!empty($list))
            return $list;
        else
            return array();
    }

    public function checkHashTagName($hashTags) {
        $arrTemp = array();
        $list = array();
        foreach ($hashTags as $tagModel) {
            $hashTagName = DB::table('hashTags')->select('hashTagId')->where('hashTagName', '=', $tagModel)->get();
            foreach ($hashTagName as $hashtag) {
                $arrTemp ['hashTagId'] = $hashtag->hashTagId;
                $list [] = $arrTemp;
            }
        }
        if (count($list) > 0)
            return $list;
        else
            return array();
    }

    public function checkHashTagNameExift($hashTag) {


        $hashTagName = DB::table('hashTags')->select('hashTagId')->where('hashTagName', '=', $hashTag)->get();
        if (count($hashTagName) > 0) {
            foreach ($hashTagName as $hashtag) {
//                $arrTemp ['hashTagId'] = $hashtag->hashTagId;
                return $hashtag->hashTagId;
            }
            
        } else {
            $hashTagModel = new Video();
            return $hashTagModel->saveTagname($hashTag);
        }
    }

}
