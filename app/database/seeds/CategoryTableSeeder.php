<?php

class CategoryTableSeeder extends Seeder {

    public function run() {
        DB::table('categories')->delete();
        Category::create(array('categoryName' => 'General'));
        Category::create(array('categoryName' => 'Film'));
        Category::create(array('categoryName' => 'Clip'));
    }

}
