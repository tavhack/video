<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateVideosTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('videos', function (Blueprint $table) {
			$table->increments('videoId')->unsigned();
			$table->string('videoName');
			$table->string('videoAuthor');
			$table->string('videoAvatar');
                        $table->string('videoThumbnail');
			$table->text('videoDescription');
			$table->integer('videoCategoryId')->unsigned();
			$table->integer('videoType');
                        $table->string('videoLink');
			$table->integer('videoViews');
			$table->integer('videoShares');
                        $table->boolean('approved');
                        $table->integer('videoUserId')->unsigned();
			$table->timestamps();
			$table->foreign('videoCategoryId')->references('categoryId')->on('categories')
			->onDelete('cascade');
//                        $table->foreign('videoUserId')->references('userId')->on('users')
//			->onDelete('cascade');
		});

	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::drop('videos');
	}

}
