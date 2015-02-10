<?php

class CategoryTableSeeder extends Seeder {

    public function run() {
        DB::table('categories')->delete();
        Category::create(array('categoryName' => 'Popular', 'categoryImageNormal' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_1.png', 'categoryImageSelected' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_1_selected.png'));
        Category::create(array('categoryName' => 'Money', 'categoryImageNormal' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_2.png', 'categoryImageSelected' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_2_selected.png'));
        Category::create(array('categoryName' => 'Travel', 'categoryImageNormal' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_3.png', 'categoryImageSelected' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_3_selected.png'));
        Category::create(array('categoryName' => 'College', 'categoryImageNormal' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_4.png', 'categoryImageSelected' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_4_selected.png'));
        Category::create(array('categoryName' => 'Tinder', 'categoryImageNormal' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_5.png', 'categoryImageSelected' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_5_selected.png'));
        Category::create(array('categoryName' => 'Weddings', 'categoryImageNormal' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_6.png', 'categoryImageSelected' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_6_selected.png'));
        Category::create(array('categoryName' => 'Support', 'categoryImageNormal' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_7.png', 'categoryImageSelected' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_7_selected.png'));
        Category::create(array('categoryName' => 'Food', 'categoryImageNormal' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_8.png', 'categoryImageSelected' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_8_selected.png'));
        Category::create(array('categoryName' => 'Funny', 'categoryImageNormal' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_9.png', 'categoryImageSelected' => 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_9_selected.png'));
    }

}
