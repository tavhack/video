<?php

class VideoTableSeeder extends Seeder {

    public function run() {
        DB::table('videos')->delete();
        $desc = '"Snooze"
                Featuring John Vanbeber & Laurie Bing / Kim Dawson Agency
                Director: Larry Oliver
                Director of Photography: Molly Dickson / Sisterbrother Mgmt.
                Mens Styling / Art Direction: Troy Steakley
                Stylist: Tess Wilcox / Seaminx
                Hair & Make-up: Ro Vielma / Kim Dawson
                Special thanks: Kalan Briggs, Beau Bollinger, Elliott Snedden, Clay Hayner, Xu Family
                Clothes provided by: Forty Five Ten, Tootsies, Haggar
                Song by Disclosure';
        $descForCatVideo = 'Featuring John Vanbeber & Laurie Bing / Kim Dawson Agency
                Director: Larry Oliver
                Director of Photography: Molly Dickson / Sisterbrother Mgmt.';
        Video::create(array
            ('videoName' => 'video clip',
            'videoAuthor' => 'hop vu',
            'videoAvatar' => 'https://intranet.synova-solutions.com/redmine/vietnam/attachments/3438',
            'videoDescription' => 'test test',
            'videoCategoryId' => 2,
            'videoLink' => 'http://vimeo.com/26120369',
            'videoViews' => 122,
            'videoShares' => 2)
        );
        Video::create(array
            ('videoName' => 'video Film',
            'videoAuthor' => 'Zack McDowell',
            'videoAvatar' => 'http://i.vimeocdn.com/portrait/5188462_75x75.jpg',
            'videoDescription' => $desc,
            'videoCategoryId' => 3,
            'videoLink' => 'http://vimeo.com/stefanhunt/sammy',
            'videoViews' => 77,
            'videoShares' => 2)
        );
        Video::create(array
            ('videoName' => 'video general',
            'videoAuthor' => 'SNOOZE',
            'videoAvatar' => 'http://i.vimeocdn.com/portrait/7313095_30x30.jpg',
            'videoDescription' => $descForCatVideo,
            'videoCategoryId' => 1,
            'videoLink' => 'http://vimeo.com/savemolly/snooze',
            'videoViews' => 12,
            'videoShares' => 2)
        );
    }

}
