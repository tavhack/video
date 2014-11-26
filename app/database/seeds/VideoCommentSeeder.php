<?php

class VideoCommentSeeder extends Seeder {

    public function run() {
        $content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' .
                'Praesent vel ligula scelerisque, vehicula dui eu, fermentum velit.' .
                'Phasellus ac ornare eros, quis malesuada augue. Nunc ac nibh at mauris dapibus fermentum.' .
                'In in aliquet nisi, ut scelerisque arcu. Integer tempor, nunc ac lacinia cursus, ' .
                'mauris justo volutpat elit, ' .
                'eget accumsan nulla nisi ut nisi. Etiam non convallis ligula. Nulla urna augue, ' .
                'dignissim ac semper in, ornare ac mauris. Duis nec felis mauris.';

        for ($j = 1; $j <= 3; $j++) {
            $comment = array(
                'commnentVideoId' => 1,
                'commentText' => substr($content, 0, 60),
                'commentAuthor' => 'hop.vu@synova.co.vn',
                'commentAvatar' => 'http://linto.ava',
                'approved' => 'yes',
            );
            DB::table('comments')->insert($comment);
        }
        for ($j = 1; $j <= 3; $j++) {
            $comment = array(
                'commnentVideoId' => 2,
                'commentText' => substr($content, 0, 40),
                'commentAuthor' => 'hop.vu@synova.co.vn',
                'commentAvatar' => 'http://linto.ava',
                'approved' => 'yes',
            );
            DB::table('comments')->insert($comment);
        }
        for ($j = 1; $j <= 3; $j++) {
            $comment = array(
                'commnentVideoId' => 3,
                'commentText' => substr($content, 0, 140),
                'commentAuthor' => 'hop.vu@synova.co.vn',
                'commentAvatar' => 'http://linto.ava',
                'approved' => 'yes',
            );
            DB::table('comments')->insert($comment);
        }
    }

}
