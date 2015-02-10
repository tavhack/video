<?php
namespace Api;

use Symfony\Component\HttpFoundation\JsonResponse;

class UsersController extends \BaseController {

	 /**
     * Reponse resource add user
     *
     */
    protected $user;

    public function __construct(\User $user) {
        $this->user = $user;
    }

    public function getListUsers() {

        $input = \Request::only('fullName', 'type');
        $fullName = $input['fullName'];
      
        if ($input['type'] == 1 || !empty($input['type'])) {
            return \Response::json($this->user->getListUsersModel($fullName));
        }
        #aa,#faf,#ada
//		$input = array_map('intval', $input);
        return \Response::json(['errors' => 'Invalid type'], 412);
    }


}
