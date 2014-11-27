<?php

class TagTableSeeder extends Seeder {

	public function run() {
		DB::table('hashTags')->delete();
		HashTag::create(array('hashTagName' => 'film'));
		HashTag::create(array('hashTagName' => 'action'));
		HashTag::create(array('hashTagName' => 'clip'));
		HashTag::create(array('hashTagName' => 'eclipse'));
		HashTag::create(array('hashTagName' => 'tag'));
		HashTag::create(array('hashTagName' => 'warm'));
		HashTag::create(array('hashTagName' => 'test taf'));
	}

}
