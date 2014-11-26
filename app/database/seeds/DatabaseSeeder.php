<?php

class DatabaseSeeder extends Seeder {

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
        Eloquent::unguard();

        $this->call('CategoryTableSeeder');
        $this->call('UserTableSeeder');
        $this->call('VideoTableSeeder');
        $this->call('TagTableSeeder');
        $this->call('VideoCommentSeeder');
        $this->command->info('All tables to seeded!');
    }

}
