<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCommentsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('comments', function (Blueprint $table) {
			$table->increments('commentId');
			$table->integer('commentVideoId')->unsigned();
			$table->string('commentAuthor');
			$table->string('commentAvatar');
			$table->text('commentText');
			$table->boolean('approved');
			$table->timestamps();
			$table->foreign('commentVideoId')
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
		Schema::drop('comments');
	}

}
