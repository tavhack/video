<?php
class VideoTagSeeder extends Seeder {

	public function run() {
		DB::table('videos_tags')->delete();
		VideoTag::create(array('hashTagId' => 1, 'hashTagVideoId' => 1));
		VideoTag::create(array('hashTagId' => 2, 'hashTagVideoId' => 1));
		VideoTag::create(array('hashTagId' => 3, 'hashTagVideoId' => 2));
		VideoTag::create(array('hashTagId' => 3, 'hashTagVideoId' => 2));
		VideoTag::create(array('hashTagId' => 2, 'hashTagVideoId' => 3));
		VideoTag::create(array('hashTagId' => 1, 'hashTagVideoId' => 3));
		VideoTag::create(array('hashTagId' => 6, 'hashTagVideoId' => 1));
	}

}
?>