<?php

class UserTableSeeder extends Seeder
{

    public function run()
    {
      
        $user1 = array(
            'username' => 'admin',
            'password' => Hash::make('Instavid2014'),
            'fullname' => 'test',
            'email'    => 'hop.vu@synova.com.vn',
            'avatar'    =>'http://i.vimeocdn.com/portrait/6822355_75x75.jpg',
            
        );
         $user2 = array(
            'username' => 'test',
            'password' => Hash::make('admin'),
            'fullname' => 'hop',
            'email'    => 'hop.vu@synova.com.vn',
            'avatar'    =>'http://i.vimeocdn.com/portrait/6822355_75x75.jpg',
            
        );
          $user3 = array(
            'username' => 'chinh',
            'password' => Hash::make('admin'),
            'fullname' => 'chinh',
            'email'    => 'hop.vu@synova.com.vn',
            'avatar'    =>'http://i.vimeocdn.com/portrait/7313095_30x30.jpg',
            
        );
          
        DB::table('users')->insert($user1);
        DB::table('users')->insert($user2);
        DB::table('users')->insert($user3);
    }

}
