<?php

/*
 * Helpers
 * use for commom function
 */

namespace Common;

class Helpers {

    public static function convertToImageJpeg($imageData, $savePath) {

        $data = base64_decode($imageData); // base64 decoded image data
        $source_img = imagecreatefromstring($data);
//        $rotated_img = imagerotate($source_img, 90, 90); // rotate with angle 90 here
        $file = 'avatar_' . uniqid() . '.jpg';
        $imageSave = imagejpeg($source_img, $savePath . '/' . $file, 100);
        imagedestroy($source_img);
        return $file;
    }
    // process time ago
    public static function timeElapsedString($datetime, $full = false) {
        $now = new \DateTime;
        $ago = new \DateTime($datetime);
        $diff = $now->diff($ago);

        $diff->w = floor($diff->d / 7);
        $diff->d -= $diff->w * 7;

        $string = array(
            'y' => 'y', //year
            'm' => 'm', //month
            'w' => 'w', //week
            'd' => 'd',//day
            'h' => 'h', //hour
            'i' => 'min', //minute
            's' => 's', //second
        );
        foreach ($string as $k => &$v) {
            if ($diff->$k) {
                $v = $diff->$k . '' . $v . ($diff->$k > 1 ? 's' : '');
            } else {
                unset($string[$k]);
            }
        }

        if (!$full)
            $string = array_slice($string, 0, 1);
        return $string ? implode(', ', $string) . ' ago' : 'just now';
    }
    public static function getHowLongAgo($date, $display = array('Year', 'Month', 'Day', 'Hour', 'Minute', 'Second'), $ago = '') {
       
       
        $current_time = time();
        $diff = $current_time - strtotime($date);

        //intervals in seconds
        $intervals = array(
            'year' => 31556926, 'month' => 2629744, 'week' => 604800, 'day' => 86400, 'hour' => 3600, 'minute' => 60
        );

        //now we just find the difference
        if ($diff == 0) {
            return ' Just now ';
        }

        if ($diff < 60) {
            return $diff == 1 ? $diff . ' second ago ' : $diff . ' seconds ago ';
        }

        if ($diff >= 60 && $diff < $intervals['hour']) {
            $diff = floor($diff / $intervals['minute']);
            return $diff == 1 ? $diff . ' minute ago ' : $diff . ' minutes ago ';
        }

        if ($diff >= $intervals['hour'] && $diff < $intervals['day']) {
            $diff = floor($diff / $intervals['hour']);
            return $diff == 1 ? $diff . ' hour ago ' : $diff . ' hours ago ';
        }

        if ($diff >= $intervals['day'] && $diff < $intervals['week']) {
            $diff = floor($diff / $intervals['day']);
            return $diff == 1 ? $diff . ' day ago ' : $diff . ' days ago ';
        }

        if ($diff >= $intervals['week'] && $diff < $intervals['month']) {
            $diff = floor($diff / $intervals['week']);
            return $diff == 1 ? $diff . ' week ago ' : $diff . ' weeks ago ';
        }

        if ($diff >= $intervals['month'] && $diff < $intervals['year']) {
            $diff = floor($diff / $intervals['month']);
            return $diff == 1 ? $diff . ' month ago ' : $diff . ' months ago ';
        }

        if ($diff >= $intervals['year']) {
            $diff = floor($diff / $intervals['year']);
            return $diff == 1 ? $diff . ' year ago ' : $diff . ' years ago ';
        }
    }


}

?>
