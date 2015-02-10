<?php

namespace Api;

use Symfony\Component\HttpFoundation\JsonResponse;

class HashtagsController extends \BaseController {

    /**
     * Reponse resource add hashtag
     *
     */
    protected $hashtag;

    public function __construct(\HashTag $hashtag) {
        $this->hashtag = $hashtag;
    }

    public function getListHashTags() {

        $input = \Request::only('hashTagName', 'type');
        $hashTagName = $input['hashTagName'];
        $hashTagName = explode(',', $hashTagName);
        $hashTagName = str_replace('#', '', $hashTagName);
   
        if ($input['type'] == 0 || !empty($input['type'])) {
            return \Response::json($this->hashtag->getListHashTagModel($hashTagName));
           
        }
        #aa,#faf,#ada
//		$input = array_map('intval', $input);
        return \Response::json(['errors' => 'Invalid type'], 412);
    }

}
