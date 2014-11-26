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
			$table->text('videoDescription');
			$table->integer('videoCategoryId')->unsigned();
			$table->string('videoLink');
			$table->integer('videoViews');
			$table->integer('videoShares');
			$table->timestamps();
			$table->foreign('videoCategoryId')->references('categoryId')->on('categories')
			->onDelete('cascade');
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
