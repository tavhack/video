<?php

class TagTableSeeder extends Seeder {

    public function run() {
        DB::table('hashTags')->delete();
        HashTag::create(array('hashTagVideoId' => 1, 'hashTagName' => 'film'));
        HashTag::create(array('hashTagVideoId' => 1, 'hashTagName' => 'action'));
        HashTag::create(array('hashTagVideoId' => 2, 'hashTagName' => 'clip'));
        HashTag::create(array('hashTagVideoId' => 2, 'hashTagName' => 'eclipse'));
        HashTag::create(array('hashTagVideoId' => 3, 'hashTagName' => 'tag'));
        HashTag::create(array('hashTagVideoId' => 3, 'hashTagName' => 'warm'));
        HashTag::create(array('hashTagVideoId' => 1, 'hashTagName' => 'test taf'));
    }

}
