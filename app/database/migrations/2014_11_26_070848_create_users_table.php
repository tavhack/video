<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUsersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		
                Schema::create('users', function (Blueprint $table) {
			$table->increments('userId')->unsigned();
			$table->string('username', 50);
			$table->string('password');
			$table->string('email');
                        $table->string('fullname');
                        $table->string('avatar');
                        $table->string('deviceId')->nullable();
			$table->string('remember_token', 100)->nullable();
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::table('users', function (Blueprint $table) {
			$table->drop();
		});
	}
}
