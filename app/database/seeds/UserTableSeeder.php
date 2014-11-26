<?php

class UserTableSeeder extends Seeder
{

    public function run()
    {
      
        $user = array(
            'username' => 'hop',
            'password' => Hash::make('admin'),
            'email'    => 'hop.vu@synova.co.vn',
        );
        DB::table('users')->insert($user);
    }

}
