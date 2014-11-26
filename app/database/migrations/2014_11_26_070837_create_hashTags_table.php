<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateHashTagsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('hashTags', function (Blueprint $table) {
			$table->increments('hashTagId');
			$table->integer('hashTagVideoId')->unsigned();
			$table->string('hashTagName');
			$table->timestamps();
			$table->foreign('hashTagVideoId')
			->references('videoId')->on('videos')
			->onDelete('cascade');
		});

	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::drop('hashTags');
	}

}
