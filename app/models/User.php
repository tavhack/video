<?php

use Illuminate\Auth\Reminders\RemindableInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\UserTrait;

class User extends Eloquent implements UserInterface, RemindableInterface {

    use UserTrait,
        RemindableTrait;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'users';

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = array('password');
    protected $primaryKey = 'userId';
    /**
     * Get the unique identifier for the user.
     *
     * @return mixed
     */
    public function getAuthIdentifier() {
        return $this->getKey();
    }

    /**
     * Get the password for the user.
     *
     * @return string
     */
    public function getAuthPassword() {
        return $this->password;
    }

    /**
     * Get the token value for the "remember me" session.
     *
     * @return string
     */
    public function getRememberToken() {
        return $this->remember_token;
    }

    /**
     * Set the token value for the "remember me" session.
     *
     * @param  string  $value
     * @return void
     */
    public function setRememberToken($value) {
        $this->remember_token = $value;
    }

    /**
     * Get the column name for the "remember me" token.
     *
     * @return string
     */
    public function getRememberTokenName() {
        return 'remember_me';
    }

    /**
     * Get the e-mail address where password reminders are sent.
     *
     * @return string
     */
    public function getReminderEmail() {
        return $this->email;
    }

    public function getListUsersModel($name) {
        $arrUser = array();
        $list =  array();
        $users = User::join('videos', 'users.userId', '=', 'videos.videoUserId')->select('videos.approved','users.userId','users.fullname','users.avatar','users.deviceId')->where('fullname', 'LIKE', '%' . $name . '%')->distinct()->get();
        foreach ($users as $user) {
           if($user['approved'] == 1){
            $arrUser ['userId'] = $user['userId'];
            $arrUser ['fullname'] = $user['fullname'];
            $arrUser ['avatar'] = $user['avatar'];
            $arrUser ['deviceId'] = $user['deviceId'];
            $list [] = $arrUser;
           }
        }
        if(!empty($list))
        return $list;
        else
            return array();
    }

}
