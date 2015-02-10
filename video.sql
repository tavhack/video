-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2015 at 09:19 AM
-- Server version: 5.5.29
-- PHP Version: 5.4.6-1ubuntu1.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `instavid`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categoryId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoryImageNormal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoryImageSelected` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryId`, `categoryName`, `categoryImageNormal`, `categoryImageSelected`, `created_at`, `updated_at`) VALUES
(1, 'Popular', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_1.png', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_1_selected.png', '2014-12-05 08:20:01', '2014-12-05 08:20:01'),
(2, 'Money', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_2.png', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_2_selected.png', '2014-12-05 08:20:02', '2014-12-05 08:20:02'),
(3, 'Travel', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_3.png', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_3_selected.png', '2014-12-05 08:20:02', '2014-12-05 08:20:02'),
(4, 'College', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_4.png', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_4_selected.png', '2014-12-05 08:20:02', '2014-12-05 08:20:02'),
(5, 'Weddings', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_5.png', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_5_selected.png', '2014-12-05 08:20:02', '2014-12-05 08:20:02'),
(6, 'Tinder', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_6.png', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_6_selected.png', '2014-12-05 08:20:02', '2014-12-05 08:20:02'),
(7, 'Support', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_7.png', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_7_selected.png', '2014-12-05 08:20:03', '2014-12-05 08:20:03'),
(8, 'Food', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_8.png', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_8_selected.png', '2014-12-05 08:20:03', '2014-12-05 08:20:03'),
(9, 'Funny', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_9.png', 'http://webdemo.synova.com.vn:5656/instavid/public/images/icons_categories/filter_icon_9_selected.png', '2014-12-05 08:20:03', '2014-12-05 08:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `commentVideoId` int(10) unsigned NOT NULL,
  `commentAuthor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commentAvatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commentText` text COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`commentId`),
  KEY `comments_commentvideoid_foreign` (`commentVideoId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1031 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `commentVideoId`, `commentAuthor`, `commentAvatar`, `commentText`, `approved`, `created_at`, `updated_at`) VALUES
(758, 421, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be39dd33b26.jpg', 'good support', 0, '2015-01-20 11:19:57', '2015-01-20 11:19:57'),
(759, 426, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3a09bc8b0.jpg', 'Nice video, Cool', 0, '2015-01-20 11:20:41', '2015-01-20 11:20:41'),
(760, 426, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3a1c186c1.jpg', 'Welcome to AutoMotoTube!!! On our channel we upload every day short, (2-5min) walkaround videos of Cars and Motorcycles. Our coverage is from Auto and Moto shows in North America and Europe - We visit different shows: Big, like Geneva, Frankfurt, New York, Detroit, Los Angeles or Paris Auto Show, to small regional, Classic Car, RV and Boat Shows.  ', 0, '2015-01-20 11:21:00', '2015-01-20 11:21:00'),
(762, 393, 'Solar system', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'Good video', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(763, 439, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be467d69e93.jpg', 'good video', 0, '2015-01-20 11:30:47', '2015-01-20 11:32:47'),
(764, 445, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'nice video', 0, '2015-01-20 12:23:12', '2015-01-20 12:23:12'),
(765, 387, 'Jonh Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'I have even seen pictures of other fruits and vegetables grown in interestingly shaped molds giving them faces.', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(766, 393, 'Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(767, 396, 'Susan', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(768, 399, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(769, 400, 'Jerry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(770, 401, 'One direction', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(771, 403, 'Jonh Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'I have even seen pictures of other fruits and vegetables grown in interestingly shaped molds giving them faces.', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(772, 404, 'Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 12:06:47', '2015-01-20 12:10:47'),
(773, 406, 'Susan', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(774, 407, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'I have even seen pictures of other fruits and vegetables grown in interestingly shaped molds giving them faces.', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(775, 441, 'Jerry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(776, 417, 'One direction', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(777, 397, 'Jonh Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'I have even seen pictures of other fruits and vegetables grown in interestingly shaped molds giving them faces.', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(778, 404, 'Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 12:12:47', '2015-01-20 12:30:47'),
(779, 394, 'Susan', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(780, 407, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(781, 443, 'Jerry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(782, 402, 'One direction', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(783, 407, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be4cfca4430.jpg', 'have fun', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(784, 403, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be4d26b07f0.jpg', 'ok', 0, '2015-01-20 12:42:14', '2015-01-20 12:42:14'),
(785, 403, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be4d98199c7.jpg', 'the CEO of Henge Docks, discusses their line of great looking MacBook docks.', 0, '2015-01-20 12:44:08', '2015-01-20 12:44:08'),
(786, 403, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be4d9c05e09.jpg', 'the CEO of Henge Docks, discusses their line of great looking MacBook docks.', 0, '2015-01-20 12:44:12', '2015-01-20 12:44:12'),
(787, 403, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be4da171fba.jpg', 'the CEO of Henge Docks, discusses their line of great looking MacBook docks.', 0, '2015-01-20 12:44:17', '2015-01-20 12:44:17'),
(788, 404, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be4dac97321.jpg', 'the CEO of Henge Docks, discusses their line of great looking MacBook docks.', 0, '2015-01-20 12:44:28', '2015-01-20 12:44:28'),
(789, 404, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be4db64e332.jpg', 'the CEO of Henge Docks, discusses their line of great looking MacBook docks.', 0, '2015-01-20 12:44:38', '2015-01-20 12:44:38'),
(790, 405, 'Jonh Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'I have even seen pictures of other fruits and vegetables grown in interestingly shaped molds giving them faces.', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(791, 408, 'Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(792, 409, 'Susan', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(793, 410, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(794, 411, 'Jerry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(795, 418, 'One direction', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(796, 429, 'Jonh Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'I have even seen pictures of other fruits and vegetables grown in interestingly shaped molds giving them faces.', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(797, 439, 'Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:30:47', '2015-01-20 11:32:47'),
(798, 419, 'Susan', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(799, 422, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(800, 411, 'Jerry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(801, 423, 'One direction', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(802, 426, 'Jonh Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'I have even seen pictures of other fruits and vegetables grown in interestingly shaped molds giving them faces.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 432, 'Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(804, 419, 'Susan', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(805, 434, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(806, 437, 'Jerry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(807, 440, 'One direction', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(808, 447, 'Jonh Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'I have even seen pictures of other fruits and vegetables grown in interestingly shaped molds giving them faces.', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(809, 421, 'Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(810, 435, 'Susan', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(811, 444, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(812, 445, 'Jerry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, 446, 'One direction', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(814, 386, 'Jonh Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'I have even seen pictures of other fruits and vegetables grown in interestingly shaped molds giving them faces.', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(815, 388, 'Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(816, 389, 'Susan', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(817, 392, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(818, 411, 'Jerry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(819, 398, 'One direction', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(820, 413, 'Jonh Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'I have even seen pictures of other fruits and vegetables grown in interestingly shaped molds giving them faces.', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(821, 414, 'Smith', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(822, 424, 'Susan', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(823, 428, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(824, 411, 'Jerry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be48b015084.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(825, 442, 'One direction', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be3bb340004.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(826, 402, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be4e9a1becd.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(827, 402, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be4f014041a.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(828, 402, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be4f0db7dbf.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(829, 402, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be4f19268e5.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 11:27:47', '2015-01-20 11:27:47'),
(830, 451, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be502179546.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 12:54:57', '2015-01-20 12:54:57'),
(831, 451, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be502652d0a.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 12:55:02', '2015-01-20 12:55:02'),
(832, 451, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5029acb9a.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 12:55:05', '2015-01-20 12:55:05'),
(833, 451, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be50476438c.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 12:55:35', '2015-01-20 12:55:35'),
(834, 451, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be504b85bf1.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 12:55:39', '2015-01-20 12:55:39'),
(835, 451, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be508aee8a4.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 12:56:42', '2015-01-20 12:56:42'),
(836, 450, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be50ccd293d.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 12:57:48', '2015-01-20 12:57:48'),
(837, 450, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be50d06255a.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 12:57:52', '2015-01-20 12:57:52'),
(838, 450, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be50d650bf2.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 12:57:58', '2015-01-20 12:57:58'),
(839, 450, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be50dd2352f.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 12:58:05', '2015-01-20 12:58:05'),
(840, 450, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be50e0999e7.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 12:58:08', '2015-01-20 12:58:08'),
(841, 407, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'have fun', 0, '2015-01-20 12:59:42', '2015-01-20 12:59:42'),
(842, 449, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be519330201.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 13:01:07', '2015-01-20 13:01:07'),
(843, 449, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5234b97a9.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 0, '2015-01-20 13:03:48', '2015-01-20 13:03:48'),
(844, 449, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5238ea2cb.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 0, '2015-01-20 13:03:52', '2015-01-20 13:03:52'),
(845, 449, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be524173ed8.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 0, '2015-01-20 13:04:01', '2015-01-20 13:04:01'),
(846, 448, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be52bf51e33.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 0, '2015-01-20 13:06:07', '2015-01-20 13:06:07'),
(847, 448, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be52c1006e7.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 0, '2015-01-20 13:06:09', '2015-01-20 13:06:09'),
(848, 448, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be52c65bd44.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 0, '2015-01-20 13:06:14', '2015-01-20 13:06:14'),
(849, 418, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be52c8e3eab.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 13:06:16', '2015-01-20 13:06:16'),
(850, 448, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be52d19eacd.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 0, '2015-01-20 13:06:25', '2015-01-20 13:06:25'),
(851, 414, 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be52d2db40e.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 13:06:26', '2015-01-20 13:06:26'),
(852, 402, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5492029af.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 13:13:54', '2015-01-20 13:13:54'),
(853, 409, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be54ab761bb.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 13:14:19', '2015-01-20 13:14:19'),
(854, 417, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be54d374c10.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 13:14:59', '2015-01-20 13:14:59'),
(855, 443, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be54f5304b5.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 13:15:33', '2015-01-20 13:15:33'),
(856, 443, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be54fa1ff44.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 13:15:38', '2015-01-20 13:15:38'),
(857, 443, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be54fd60758.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 13:15:41', '2015-01-20 13:15:41'),
(858, 443, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be550209b4b.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 13:15:46', '2015-01-20 13:15:46'),
(859, 444, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be572959cd7.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 13:24:57', '2015-01-20 13:24:57'),
(860, 429, 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be574b696c2.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 13:25:31', '2015-01-20 13:25:31'),
(861, 423, 'user number 108', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be57c707122.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 13:27:35', '2015-01-20 13:27:35'),
(862, 443, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be589b8d7ef.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 13:31:07', '2015-01-20 13:31:07'),
(863, 453, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be58a9ef60a.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 13:31:21', '2015-01-20 13:31:21'),
(864, 453, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be58b1750b5.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 13:31:29', '2015-01-20 13:31:29'),
(865, 454, 'Lady gaga lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'nice video', 0, '2015-01-20 13:34:24', '2015-01-20 13:34:24'),
(866, 454, 'Lady gaga lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 13:34:49', '2015-01-20 13:34:49'),
(867, 454, 'Lady gaga lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'The most anticipated video of 2015 is here early!', 0, '2015-01-20 13:35:17', '2015-01-20 13:35:17'),
(868, 454, 'Lady gaga lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'cool', 0, '2015-01-20 13:35:28', '2015-01-20 13:35:28'),
(869, 444, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5a07c2045.jpg', 'jello', 0, '2015-01-20 13:37:11', '2015-01-20 13:37:11'),
(870, 446, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5c4045131.jpg', 'This is v timely, I feel like my life has been inundated with square foods recently...seaweed strips, Japanese omelette, tiramisu, and more!', 0, '2015-01-20 13:46:40', '2015-01-20 13:46:40'),
(871, 444, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5c5de29de.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 13:47:09', '2015-01-20 13:47:09'),
(872, 444, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5c7ef3644.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 13:47:42', '2015-01-20 13:47:42'),
(873, 444, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5c824cfc9.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 13:47:46', '2015-01-20 13:47:46'),
(874, 432, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5c9d9435d.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 13:48:13', '2015-01-20 13:48:13'),
(875, 386, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5c9f7065e.jpg', 'good video', 0, '2015-01-20 13:48:15', '2015-01-20 13:48:15'),
(876, 429, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5ca5a06d3.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 13:48:21', '2015-01-20 13:48:21'),
(877, 429, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5caba2b5c.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 13:48:27', '2015-01-20 13:48:27'),
(878, 429, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5cb02b785.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 13:48:32', '2015-01-20 13:48:32'),
(879, 424, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5cbbb9d31.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 13:48:43', '2015-01-20 13:48:43'),
(880, 414, 'Lucky', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5ccb9a375.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 13:48:59', '2015-01-20 13:48:59'),
(881, 444, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5ced1139d.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 0, '2015-01-20 13:49:33', '2015-01-20 13:49:33'),
(882, 444, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5dec0a736.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 0, '2015-01-20 13:53:48', '2015-01-20 13:53:48'),
(883, 388, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5e51899fd.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 0, '2015-01-20 13:55:29', '2015-01-20 13:55:29'),
(884, 386, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be5ff9e12e0.jpg', 'good video', 0, '2015-01-20 14:02:33', '2015-01-20 14:02:33'),
(885, 389, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be6013ae69e.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 0, '2015-01-20 14:02:59', '2015-01-20 14:02:59'),
(886, 454, 'New user', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be637e31e9d.jpg', 'good video', 0, '2015-01-20 14:17:34', '2015-01-20 14:17:34'),
(887, 386, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be6ec9a3e12.jpg', 'I have even seen a new picture', 0, '2015-01-20 15:05:45', '2015-01-20 15:05:45'),
(888, 450, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be6f6f86131.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 15:08:31', '2015-01-20 15:08:31'),
(889, 447, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be6f8c108d8.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 15:09:00', '2015-01-20 15:09:00'),
(890, 452, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be70a88b5b1.jpg', 'I have even seen a new picture', 0, '2015-01-20 15:13:44', '2015-01-20 15:13:44'),
(891, 457, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be7cdadbf8b.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 16:05:46', '2015-01-20 16:05:46'),
(892, 457, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be7ce03d872.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 16:05:52', '2015-01-20 16:05:52'),
(893, 455, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be7cee27191.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 16:06:06', '2015-01-20 16:06:06'),
(894, 455, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be7cefa380e.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 16:06:07', '2015-01-20 16:06:07'),
(895, 455, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be7cf55c2cb.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 16:06:13', '2015-01-20 16:06:13'),
(896, 452, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be7d0077027.jpg', 'The most anticipated video of 2015 is here early! ', 0, '2015-01-20 16:06:24', '2015-01-20 16:06:24'),
(897, 457, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be89ac2b133.jpg', 'test', 0, '2015-01-20 17:00:28', '2015-01-20 17:00:28'),
(898, 457, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be89b49216a.jpg', 'test', 0, '2015-01-20 17:00:36', '2015-01-20 17:00:36'),
(899, 457, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be89b530304.jpg', 'test', 0, '2015-01-20 17:00:37', '2015-01-20 17:00:37'),
(900, 457, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54be89bf21588.jpg', 'test', 0, '2015-01-20 17:00:47', '2015-01-20 17:00:47'),
(901, 453, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54bf24114eab4.jpg', 'h', 0, '2015-01-21 03:59:13', '2015-01-21 03:59:13'),
(902, 446, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54bf2513021c2.jpg', '#laurent', 0, '2015-01-21 04:03:31', '2015-01-21 04:03:31'),
(903, 449, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'jshdhxj', 0, '2015-01-21 04:12:59', '2015-01-21 04:12:59'),
(904, 458, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54bf278c75827.jpg', 'Welcome to AutoMotoTube!!! On our channel we upload every day short, (2-5min) walkaround videos of Cars and Motorcycles. Our coverage is from Auto and Moto shows in North America ', 0, '2015-01-21 04:14:04', '2015-01-21 04:14:04'),
(905, 446, 'Dr Black', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54bf797ad917c.jpg', '#Tom Good', 0, '2015-01-21 10:03:38', '2015-01-21 10:03:38'),
(906, 463, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c13695157d7.jpg', 'test', 0, '2015-01-22 17:42:45', '2015-01-22 17:42:45'),
(907, 463, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c14c7c5bf6b.jpg', 'test', 0, '2015-01-22 19:16:12', '2015-01-22 19:16:12'),
(908, 463, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c14c8174ff2.jpg', 'klkj', 0, '2015-01-22 19:16:17', '2015-01-22 19:16:17'),
(909, 463, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c14c950173e.jpg', 'tt', 0, '2015-01-22 19:16:37', '2015-01-22 19:16:37'),
(910, 463, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c5bae118f13.jpg', 'I like this music', 0, '2015-01-26 03:56:17', '2015-01-26 03:56:17'),
(911, 463, 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c5cee4189d9.jpg', 'nice #boss good', 0, '2015-01-26 05:21:40', '2015-01-26 05:21:40'),
(912, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'chuong', 0, '2015-01-27 04:21:55', '2015-01-27 04:21:55'),
(913, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'Happy day\n', 0, '2015-01-27 04:22:21', '2015-01-27 04:22:21'),
(914, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'happy day', 0, '2015-01-27 04:22:24', '2015-01-27 04:22:24'),
(915, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'happy day', 0, '2015-01-27 04:22:30', '2015-01-27 04:22:30'),
(916, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'Happy day', 0, '2015-01-27 04:22:40', '2015-01-27 04:22:40'),
(917, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71909ac508.jpg', 'Good', 0, '2015-01-27 04:50:17', '2015-01-27 04:50:17'),
(918, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'chuong', 0, '2015-01-27 04:50:50', '2015-01-27 04:50:50'),
(919, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'chuong', 0, '2015-01-27 04:51:01', '2015-01-27 04:51:01'),
(920, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71b6be6053.jpg', 'You are the sunshine', 0, '2015-01-27 05:00:27', '2015-01-27 05:00:27'),
(921, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71b8323507.jpg', 'You are the sunshine', 0, '2015-01-27 05:00:51', '2015-01-27 05:00:51'),
(922, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71b89988c7.jpg', 'You are the sunshine', 0, '2015-01-27 05:00:57', '2015-01-27 05:00:57'),
(923, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71b8d29741.jpg', 'You are the sunshine', 0, '2015-01-27 05:01:01', '2015-01-27 05:01:01'),
(924, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71b9175bcc.jpg', 'You are the sunshine', 0, '2015-01-27 05:01:05', '2015-01-27 05:01:05'),
(925, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71b94aefcd.jpg', 'You are the sunshine', 0, '2015-01-27 05:01:08', '2015-01-27 05:01:08'),
(926, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71b9843fa2.jpg', 'You are the sunshine', 0, '2015-01-27 05:01:12', '2015-01-27 05:01:12'),
(927, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71b9b6bb5a.jpg', 'You are the sunshine', 0, '2015-01-27 05:01:15', '2015-01-27 05:01:15'),
(928, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71ba026ff4.jpg', 'You are the sunshine 2', 0, '2015-01-27 05:01:20', '2015-01-27 05:01:20'),
(929, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71bbd1552e.jpg', 'No matter what', 0, '2015-01-27 05:01:49', '2015-01-27 05:01:49'),
(930, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71bc1883f3.jpg', 'No matter what', 0, '2015-01-27 05:01:53', '2015-01-27 05:01:53'),
(931, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71bc4cc4eb.jpg', 'No matter what', 0, '2015-01-27 05:01:56', '2015-01-27 05:01:56'),
(932, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71bc8101f6.jpg', 'No matter what', 0, '2015-01-27 05:02:00', '2015-01-27 05:02:00'),
(933, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71bea2a35d.jpg', 'No matter what', 0, '2015-01-27 05:02:34', '2015-01-27 05:02:34'),
(934, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71bf38c572.jpg', 'No matter what', 0, '2015-01-27 05:02:43', '2015-01-27 05:02:43'),
(935, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c71c1115725.jpg', 'No matter whatp', 0, '2015-01-27 05:03:13', '2015-01-27 05:03:13'),
(936, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7210186c26.jpg', ' No matter what', 0, '2015-01-27 05:24:17', '2015-01-27 05:24:17'),
(937, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c72106ee356.jpg', 'No matter what', 0, '2015-01-27 05:24:22', '2015-01-27 05:24:22'),
(938, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7210c3a2f3.jpg', 'w', 0, '2015-01-27 05:24:28', '2015-01-27 05:24:28'),
(939, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c721133f4e7.jpg', 'No matter what', 0, '2015-01-27 05:24:35', '2015-01-27 05:24:35'),
(940, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c72118cb6e8.jpg', 'No matter what', 0, '2015-01-27 05:24:40', '2015-01-27 05:24:40'),
(941, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c721269fc9b.jpg', 'No matter whatp', 0, '2015-01-27 05:24:54', '2015-01-27 05:24:54'),
(942, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c72b6b006e3.jpg', 'No matter what', 0, '2015-01-27 06:08:43', '2015-01-27 06:08:43'),
(943, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c72b7752ee8.jpg', 'No matter what', 0, '2015-01-27 06:08:55', '2015-01-27 06:08:55'),
(944, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c72b7eb839f.jpg', 'No matter what', 0, '2015-01-27 06:09:02', '2015-01-27 06:09:02'),
(945, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c72b95a8407.jpg', 'No matter whatNo matter what', 0, '2015-01-27 06:09:26', '2015-01-27 06:09:26'),
(946, 478, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c72b9b8a7e1.jpg', 'No matter what', 0, '2015-01-27 06:09:31', '2015-01-27 06:09:31'),
(947, 474, 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c72e44e1330.jpg', '#mit', 0, '2015-01-27 06:20:52', '2015-01-27 06:20:52'),
(948, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'hello', 0, '2015-01-27 06:41:14', '2015-01-27 06:41:14'),
(949, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7444d05dff.jpg', 'Good', 0, '2015-01-27 07:54:53', '2015-01-27 07:54:53'),
(950, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c744635e2f3.jpg', 'Good', 0, '2015-01-27 07:55:15', '2015-01-27 07:55:15'),
(951, 474, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c74485ceada.jpg', 'Great!', 0, '2015-01-27 07:55:50', '2015-01-27 07:55:50'),
(952, 463, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c74512ece2f.jpg', 'Great', 0, '2015-01-27 07:58:10', '2015-01-27 07:58:10'),
(953, 478, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c74c825c848.jpg', 'wow', 0, '2015-01-27 08:29:54', '2015-01-27 08:29:54'),
(954, 478, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', '#commm', 0, '2015-01-27 08:30:57', '2015-01-27 08:30:57'),
(955, 478, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c74d03da3cd.jpg', 'Good', 0, '2015-01-27 08:32:03', '2015-01-27 08:32:03'),
(956, 463, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c74d5e2e4d2.jpg', 'Wow', 0, '2015-01-27 08:33:34', '2015-01-27 08:33:34'),
(957, 417, 'Hellen', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c74ef4ded90.jpg', 'The mosr anticipated video', 0, '2015-01-27 08:40:20', '2015-01-27 08:40:20'),
(958, 480, 'Hellen', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c74f147656d.jpg', 'Send new video', 0, '2015-01-27 08:40:52', '2015-01-27 08:40:52'),
(959, 479, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'nice video', 0, '2015-01-27 08:41:08', '2015-01-27 08:41:08'),
(960, 478, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c74ff7ec7af.jpg', 'Wow ', 0, '2015-01-27 08:44:39', '2015-01-27 08:44:39'),
(961, 478, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7500aced54.jpg', 'Good', 0, '2015-01-27 08:44:58', '2015-01-27 08:44:58'),
(962, 463, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c75101afcfd.jpg', 'Hey', 0, '2015-01-27 08:49:05', '2015-01-27 08:49:05'),
(963, 480, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7512f4f402.jpg', 'good look', 0, '2015-01-27 08:49:51', '2015-01-27 08:49:51'),
(964, 480, 'Hellen', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c75170d4445.jpg', 'what', 0, '2015-01-27 08:50:56', '2015-01-27 08:50:56'),
(965, 473, 'Hellen', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7518a5ba4d.jpg', 'hell', 0, '2015-01-27 08:51:22', '2015-01-27 08:51:22'),
(966, 473, 'Hellen', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c751dddb28b.jpg', 'hlllll', 0, '2015-01-27 08:52:45', '2015-01-27 08:52:45'),
(967, 484, 'Luxy', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c752d9daec4.jpg', 'Mobile-friendly - Happy New Year is a 2014 Indian action-heist comedy film directed by Farah Khan and produced by Gauri Khan under ...', 0, '2015-01-27 08:56:57', '2015-01-27 08:56:57'),
(968, 435, 'jack', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7534a7eab2.jpg', 'this is a good video', 0, '2015-01-27 08:58:50', '2015-01-27 08:58:50'),
(969, 429, 'jack', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c753891421e.jpg', 'this is a good video', 0, '2015-01-27 08:59:53', '2015-01-27 08:59:53'),
(970, 387, 'jack', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c754727ab7b.jpg', 'good video', 0, '2015-01-27 09:03:46', '2015-01-27 09:03:46'),
(971, 473, 'jack', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c754b1e89ee.jpg', 'good video', 0, '2015-01-27 09:04:49', '2015-01-27 09:04:49'),
(972, 387, 'jack', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c754d925959.jpg', 'good video', 0, '2015-01-27 09:05:29', '2015-01-27 09:05:29'),
(973, 484, 'Hellen', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7551c7b5ca.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.3', 0, '2015-01-27 09:06:36', '2015-01-27 09:06:36'),
(974, 484, 'Hellen', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7552fa6ffb.jpg', '43', 0, '2015-01-27 09:06:55', '2015-01-27 09:06:55');
INSERT INTO `comments` (`commentId`, `commentVideoId`, `commentAuthor`, `commentAvatar`, `commentText`, `approved`, `created_at`, `updated_at`) VALUES
(975, 484, 'Hellen', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c75563e18c4.jpg', '5', 0, '2015-01-27 09:07:47', '2015-01-27 09:07:47'),
(976, 484, 'Hellen', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7557f4ac8a.jpg', '6', 0, '2015-01-27 09:08:15', '2015-01-27 09:08:15'),
(977, 387, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c756cabaa81.jpg', 'good description', 0, '2015-01-27 09:13:46', '2015-01-27 09:13:46'),
(978, 387, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7570e3097c.jpg', 'good', 0, '2015-01-27 09:14:54', '2015-01-27 09:14:54'),
(979, 387, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c75766bde00.jpg', 'good2', 0, '2015-01-27 09:16:22', '2015-01-27 09:16:22'),
(980, 387, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c75830f3477.jpg', 'good3', 0, '2015-01-27 09:19:44', '2015-01-27 09:19:44'),
(981, 387, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7589ab59e4.jpg', 'good4', 0, '2015-01-27 09:21:30', '2015-01-27 09:21:30'),
(982, 387, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c758d10aae2.jpg', 'good5', 0, '2015-01-27 09:22:25', '2015-01-27 09:22:25'),
(983, 458, 'jack', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7642678824.jpg', 'good video', 0, '2015-01-27 10:10:46', '2015-01-27 10:10:46'),
(984, 488, 'Luxy', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c76640ac30f.jpg', 'Mobile-friendly - Happy New Year is a 2014 Indian action-heist comedy film directed by Farah Khan and produced by Gauri Khan under ...', 0, '2015-01-27 10:19:44', '2015-01-27 10:19:44'),
(985, 442, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c76f240b202.jpg', 'Mobile-friendly - Happy New Year is a 2014 Indian action-heist comedy film directed by Farah Khan and produced by Gauri Khan under ...', 0, '2015-01-27 10:57:40', '2015-01-27 10:57:40'),
(986, 484, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c77354e606e.jpg', 'bb', 0, '2015-01-27 11:15:32', '2015-01-27 11:15:32'),
(987, 484, 'Hellen', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7735ee3677.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 0, '2015-01-27 11:15:42', '2015-01-27 11:15:42'),
(988, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'test', 0, '2015-01-27 11:33:58', '2015-01-27 11:33:58'),
(989, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'test1', 0, '2015-01-27 11:34:15', '2015-01-27 11:34:15'),
(990, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'tesy2', 0, '2015-01-27 11:54:54', '2015-01-27 11:54:54'),
(991, 486, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c77ce061627.jpg', 'Mobile-friendly - Happy New Year is a 2014 Indian action-heist comedy film directed by Farah Khan and produced by Gauri Khan under ...', 0, '2015-01-27 11:56:16', '2015-01-27 11:56:16'),
(992, 486, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c77d6203702.jpg', 'Mobile-friendly - Happy New Year is a 2014 Indian action-heist comedy film directed by Farah Khan and produced by Gauri Khan under ...', 0, '2015-01-27 11:58:26', '2015-01-27 11:58:26'),
(993, 487, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c77dd2b900a.jpg', 'Mobile-friendly - Happy New Year is a 2014 Indian action-heist comedy film directed by Farah Khan and produced by Gauri Khan under ...', 0, '2015-01-27 12:00:18', '2015-01-27 12:00:18'),
(994, 487, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c77dff940d6.jpg', 'good1', 0, '2015-01-27 12:01:03', '2015-01-27 12:01:03'),
(995, 487, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c77e232a2de.jpg', 'good2', 0, '2015-01-27 12:01:39', '2015-01-27 12:01:39'),
(996, 487, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'good5', 0, '2015-01-27 12:02:12', '2015-01-27 12:02:12'),
(997, 487, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'goog6', 0, '2015-01-27 12:02:52', '2015-01-27 12:02:52'),
(998, 486, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c77e7a4adf2.jpg', 'good', 0, '2015-01-27 12:03:06', '2015-01-27 12:03:06'),
(999, 488, 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c77f2172ec3.jpg', 'good', 0, '2015-01-27 12:05:53', '2015-01-27 12:05:53'),
(1000, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c77fee0c24b.jpg', 'eeeerrrerrrr', 0, '2015-01-27 12:09:18', '2015-01-27 12:09:18'),
(1001, 488, 'Lux', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c78192f1cb8.jpg', 'tttttttttt', 0, '2015-01-27 12:16:18', '2015-01-27 12:16:18'),
(1002, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'good', 0, '2015-01-27 12:18:51', '2015-01-27 12:18:51'),
(1003, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', '666677777', 0, '2015-01-27 12:20:57', '2015-01-27 12:20:57'),
(1004, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'yuu888', 0, '2015-01-27 12:21:27', '2015-01-27 12:21:27'),
(1005, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'uuuuu', 0, '2015-01-27 12:21:47', '2015-01-27 12:21:47'),
(1006, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'yhdd', 0, '2015-01-27 12:22:33', '2015-01-27 12:22:33'),
(1007, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'hdhjd', 0, '2015-01-27 12:22:42', '2015-01-27 12:22:42'),
(1008, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'hxuxj', 0, '2015-01-27 12:22:49', '2015-01-27 12:22:49'),
(1009, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', '566666', 0, '2015-01-27 12:23:26', '2015-01-27 12:23:26'),
(1010, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'hdhhdhf', 0, '2015-01-27 12:23:41', '2015-01-27 12:23:41'),
(1011, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'hfjjf', 0, '2015-01-27 12:24:05', '2015-01-27 12:24:05'),
(1012, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'hhdj', 0, '2015-01-27 12:24:45', '2015-01-27 12:24:45'),
(1013, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'hdhhd.', 0, '2015-01-27 12:25:13', '2015-01-27 12:25:13'),
(1014, 487, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'gg', 0, '2015-01-27 12:27:38', '2015-01-27 12:27:38'),
(1015, 487, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'hhjjjj', 0, '2015-01-27 12:27:50', '2015-01-27 12:27:50'),
(1016, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'hhu', 0, '2015-01-27 12:28:40', '2015-01-27 12:28:40'),
(1017, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/noavatar.jpg', 'ujjj', 0, '2015-01-27 12:29:49', '2015-01-27 12:29:49'),
(1018, 488, 'Lux', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c785df8424e.jpg', 'hjsjjs', 0, '2015-01-27 12:34:39', '2015-01-27 12:34:39'),
(1019, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c796e6e9aa0.jpg', 'yyyuuuiii', 0, '2015-01-27 13:47:18', '2015-01-27 13:47:18'),
(1020, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c79700cbdaf.jpg', 'vhhhajaa', 0, '2015-01-27 13:47:44', '2015-01-27 13:47:44'),
(1021, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c79706f0d2e.jpg', 'vsbajjsjsbx', 0, '2015-01-27 13:47:50', '2015-01-27 13:47:50'),
(1022, 486, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7c82a28ad9.jpg', 'test', 0, '2015-01-27 17:17:30', '2015-01-27 17:17:30'),
(1023, 486, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c7c8329f8fa.jpg', 'test2', 0, '2015-01-27 17:17:38', '2015-01-27 17:17:38'),
(1024, 387, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c85f9385fcd.jpg', 'Good', 0, '2015-01-28 04:03:31', '2015-01-28 04:03:31'),
(1025, 486, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c860fa8a000.jpg', 'Mobile-friendly - Happy New Year is a 2014 Indian action-heist comedy film directed by Farah Khan and produced by Gauri Khan under ...', 0, '2015-01-28 04:09:30', '2015-01-28 04:09:30'),
(1026, 486, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c8619645ba4.jpg', 'Mobile-friendly - Happy New Year is a 2014 Indian action-heist comedy film directed by Farah Khan and produced by Gauri Khan under ...', 0, '2015-01-28 04:12:06', '2015-01-28 04:12:06'),
(1027, 486, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c8619b65e93.jpg', 'Mobile-friendly - Happy New Year is a 2014 Indian action-heist comedy film directed by Farah Khan and produced by Gauri Khan under ...', 0, '2015-01-28 04:12:11', '2015-01-28 04:12:11'),
(1028, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c87b24ba20e.jpg', 'good', 0, '2015-01-28 06:01:08', '2015-01-28 06:01:08'),
(1029, 488, 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c87b617e0b3.jpg', 'good2', 0, '2015-01-28 06:02:09', '2015-01-28 06:02:09'),
(1030, 488, 'BrianLe', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/comments/avatar_54c87b8806ecc.jpg', 'good3', 0, '2015-01-28 06:02:48', '2015-01-28 06:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `hashTags`
--

CREATE TABLE IF NOT EXISTS `hashTags` (
  `hashTagId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hashTagName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`hashTagId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=131 ;

--
-- Dumping data for table `hashTags`
--

INSERT INTO `hashTags` (`hashTagId`, `hashTagName`, `created_at`, `updated_at`) VALUES
(105, 'Car', '2015-01-21 04:10:22', '2015-01-21 04:10:22'),
(109, 'Tom', '2015-01-21 09:59:52', '2015-01-21 09:59:52'),
(110, 'Jane Zhongshan ', '2015-01-26 08:06:19', '2015-01-26 08:06:19'),
(111, 'coca', '2015-01-27 07:32:10', '2015-01-27 07:32:10'),
(112, 'newyear', '2015-01-27 07:32:10', '2015-01-27 07:32:10'),
(113, 'Happy', '2015-01-27 08:55:59', '2015-01-27 08:55:59'),
(114, 'Year145', '2015-01-27 09:25:40', '2015-01-27 09:25:40'),
(115, 'Indian', '2015-01-27 09:25:41', '2015-01-27 09:25:41'),
(116, 'Khan', '2015-01-27 09:25:41', '2015-01-27 09:25:41'),
(117, 'and', '2015-01-27 09:25:41', '2015-01-27 09:25:41'),
(118, 'produced', '2015-01-27 09:25:41', '2015-01-27 09:25:41'),
(119, 'Year', '2015-01-27 10:05:12', '2015-01-27 10:05:12'),
(120, 'is', '2015-01-27 10:05:12', '2015-01-27 10:05:12'),
(121, '2014', '2015-01-27 10:05:12', '2015-01-27 10:05:12'),
(122, 'action', '2015-01-27 10:05:12', '2015-01-27 10:05:12'),
(123, 'heist', '2015-01-27 10:05:12', '2015-01-27 10:05:12'),
(124, 'comedy', '2015-01-27 10:05:13', '2015-01-27 10:05:13'),
(125, 'film', '2015-01-27 10:05:13', '2015-01-27 10:05:13'),
(126, 'directed', '2015-01-27 10:05:13', '2015-01-27 10:05:13'),
(127, 'by', '2015-01-27 10:05:13', '2015-01-27 10:05:13'),
(128, 'Farah', '2015-01-27 10:05:13', '2015-01-27 10:05:13'),
(129, 'Farah66', '2015-01-27 10:15:08', '2015-01-27 10:15:08'),
(130, 'Gauri', '2015-01-27 10:15:08', '2015-01-27 10:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_11_26_070751_create_categories_table', 1),
('2014_11_26_070803_create_videos_table', 1),
('2014_11_26_070815_create_comments_table', 1),
('2014_11_26_070837_create_hashTags_table', 1),
('2014_11_26_070848_create_users_table', 1),
('2014_11_27_032446_create_video_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deviceId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=488 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `password`, `email`, `fullname`, `avatar`, `deviceId`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$tMMlWM.bc5ldHaxRoXAdbuSXBLQZEzQaNpiIfT6G3aCUiyTXuMy0u', 'hop.vu@synova.com.vn', 'test', 'http://i.vimeocdn.com/portrait/6822355_75x75.jpg', NULL, 'ayPYcljV9krlieVuDy9yGdEuqfjz7C2uuQUgx9m687fjQaD7Bfuj49Ftuqb9', '0000-00-00 00:00:00', '2014-12-15 13:14:27'),
(385, 'Herry Lu', '', '', 'Herry Lu', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be2daebd9a8.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 10:27:58', '2015-01-20 10:27:58'),
(386, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be2e0c9ba37.jpg', '294D8308-0CB9-48F6-98AA-C916C99855BC', NULL, '2015-01-20 10:29:32', '2015-01-20 10:29:32'),
(387, 'Herry Lu', '', '', 'Herry Lu', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be2e1e86c91.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 10:29:50', '2015-01-20 10:29:50'),
(388, 'Herry Lu', '', '', 'Herry Lu', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be2e6f8de01.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 10:31:11', '2015-01-20 10:31:11'),
(389, 'taxi', '', '', 'Ronaldo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be2f193900e.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 10:34:01', '2015-01-20 10:34:01'),
(390, 'taxi', '', '', 'Ronaldo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be2fcbdd1ad.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 10:36:59', '2015-01-20 10:36:59'),
(391, 'Yolo', '', '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be302cea1c9.jpg', '294D8308-0CB9-48F6-98AA-C916C99855BC', NULL, '2015-01-20 10:38:36', '2015-01-20 10:38:36'),
(392, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be302e87943.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-20 10:38:38', '2015-01-20 10:38:38'),
(393, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be30312d553.jpg', 'b657022d4301336d', NULL, '2015-01-20 10:38:41', '2015-01-20 10:38:41'),
(394, 'taxi', '', '', 'Ronaldo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be304428474.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 10:39:00', '2015-01-20 10:39:00'),
(395, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be307a08cb3.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-20 10:39:54', '2015-01-20 10:39:54'),
(396, 'gaga', '', '', 'gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3081ef835.jpg', '4f63abc8f07751ec', NULL, '2015-01-20 10:40:01', '2015-01-20 10:40:01'),
(397, 'Yolo', '', '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be315274725.jpg', '294D8308-0CB9-48F6-98AA-C916C99855BC', NULL, '2015-01-20 10:43:30', '2015-01-20 10:43:30'),
(398, 'Justin ', '', '', 'Justin ', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be319fb6801.jpg', '1529EC09-B857-48F2-B6E5-D1D94ADADE8A', NULL, '2015-01-20 10:44:47', '2015-01-20 10:44:47'),
(399, 'Yolo', '', '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be31eec1ded.jpg', '294D8308-0CB9-48F6-98AA-C916C99855BC', NULL, '2015-01-20 10:46:06', '2015-01-20 10:46:06'),
(400, 'Justin ', '', '', 'Justin ', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be31fe8e7ac.jpg', '1529EC09-B857-48F2-B6E5-D1D94ADADE8A', NULL, '2015-01-20 10:46:22', '2015-01-20 10:46:22'),
(401, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be321e7c884.jpg', 'b657022d4301336d', NULL, '2015-01-20 10:46:54', '2015-01-20 10:46:54'),
(402, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3285727fe.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-20 10:48:37', '2015-01-20 10:48:37'),
(403, 'Leader', '', '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be32d2263f2.jpg', '1529EC09-B857-48F2-B6E5-D1D94ADADE8A', NULL, '2015-01-20 10:49:54', '2015-01-20 10:49:54'),
(404, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be331c18056.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-20 10:51:08', '2015-01-20 10:51:08'),
(405, 'Yolo', '', '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3347c52b3.jpg', '294D8308-0CB9-48F6-98AA-C916C99855BC', NULL, '2015-01-20 10:51:51', '2015-01-20 10:51:51'),
(406, 'Leader', '', '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be33705a5b1.jpg', '1529EC09-B857-48F2-B6E5-D1D94ADADE8A', NULL, '2015-01-20 10:52:32', '2015-01-20 10:52:32'),
(407, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be33adeba8e.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-20 10:53:33', '2015-01-20 10:53:33'),
(408, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be33b86f129.jpg', 'b657022d4301336d', NULL, '2015-01-20 10:53:44', '2015-01-20 10:53:44'),
(409, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be34191a966.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-20 10:55:21', '2015-01-20 10:55:21'),
(410, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be34f9724bd.jpg', 'b657022d4301336d', NULL, '2015-01-20 10:59:05', '2015-01-20 10:59:05'),
(411, 'Yolo', '', '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be35057a64f.jpg', '294D8308-0CB9-48F6-98AA-C916C99855BC', NULL, '2015-01-20 10:59:17', '2015-01-20 10:59:17'),
(412, 'Leader', '', '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3531519cd.jpg', '1529EC09-B857-48F2-B6E5-D1D94ADADE8A', NULL, '2015-01-20 11:00:01', '2015-01-20 11:00:01'),
(413, 'Leader', '', '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be357ca8d0f.jpg', '1529EC09-B857-48F2-B6E5-D1D94ADADE8A', NULL, '2015-01-20 11:01:16', '2015-01-20 11:01:16'),
(414, 'taxi', '', '', 'Ronaldo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be35d3c68cf.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 11:02:43', '2015-01-20 11:02:43'),
(415, 'taxi', '', '', 'Ronaldo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3612855e3.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 11:03:46', '2015-01-20 11:03:46'),
(416, 'Leader', '', '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be36896d022.jpg', '1529EC09-B857-48F2-B6E5-D1D94ADADE8A', NULL, '2015-01-20 11:05:45', '2015-01-20 11:05:45'),
(417, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3699c1570.jpg', 'b657022d4301336d', NULL, '2015-01-20 11:06:01', '2015-01-20 11:06:01'),
(418, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be36a4009ec.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-20 11:06:12', '2015-01-20 11:06:12'),
(419, 'taxi', '', '', 'Ronaldo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be36bcdceaf.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 11:06:36', '2015-01-20 11:06:36'),
(420, 'Leader', '', '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be36d442024.jpg', '1529EC09-B857-48F2-B6E5-D1D94ADADE8A', NULL, '2015-01-20 11:07:00', '2015-01-20 11:07:00'),
(421, 'Yolo', '', '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be36ef1be78.jpg', '294D8308-0CB9-48F6-98AA-C916C99855BC', NULL, '2015-01-20 11:07:27', '2015-01-20 11:07:27'),
(422, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be37527edec.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-20 11:09:06', '2015-01-20 11:09:06'),
(423, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be37bdafeb0.jpg', 'b657022d4301336d', NULL, '2015-01-20 11:10:53', '2015-01-20 11:10:53'),
(424, 'taxi', '', '', 'Ronaldo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be37e691165.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 11:11:34', '2015-01-20 11:11:34'),
(425, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3805156fc.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-20 11:12:05', '2015-01-20 11:12:05'),
(426, 'taxi', '', '', 'Ronaldo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3893664c9.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 11:14:27', '2015-01-20 11:14:27'),
(427, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be393ddd9c9.jpg', 'b657022d4301336d', NULL, '2015-01-20 11:17:17', '2015-01-20 11:17:17'),
(428, 'Leader', '', '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be39b018e65.jpg', '1529EC09-B857-48F2-B6E5-D1D94ADADE8A', NULL, '2015-01-20 11:19:12', '2015-01-20 11:19:12'),
(429, 'Boss', '', '', 'Peter', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3a03558e4.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 11:20:35', '2015-01-20 11:20:35'),
(430, 'Boss', '', '', 'Peter', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3a3ee4d5d.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 11:21:34', '2015-01-20 11:21:34'),
(431, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3abe754f4.jpg', 'b657022d4301336d', NULL, '2015-01-20 11:23:42', '2015-01-20 11:23:42'),
(432, 'Boss', '', '', 'Peter', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3ae669b9e.jpg', 'F4DD102B-1628-4D8E-9E14-93A528678F1E', NULL, '2015-01-20 11:24:22', '2015-01-20 11:24:22'),
(433, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3bed5bcee.jpg', 'b657022d4301336d', NULL, '2015-01-20 11:28:45', '2015-01-20 11:28:45'),
(434, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3ee357731.jpg', 'b657022d4301336d', NULL, '2015-01-20 11:41:23', '2015-01-20 11:41:23'),
(435, 'Boss', '', '', 'Peter', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3fbc1b4c0.jpg', '4f63abc8f07751ec', NULL, '2015-01-20 11:45:00', '2015-01-20 11:45:00'),
(436, 'Nicos', '', '', 'Nicos', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be40d32dcba.jpg', '34A4FD71-BE91-4E5F-AB2D-36AB757FF04B', NULL, '2015-01-20 11:49:39', '2015-01-20 11:49:39'),
(437, 'Boss', '', '', 'Peter', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be410210023.jpg', '4f63abc8f07751ec', NULL, '2015-01-20 11:50:26', '2015-01-20 11:50:26'),
(438, 'Marry', '', '', 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be4175a25fa.jpg', '34A4FD71-BE91-4E5F-AB2D-36AB757FF04B', NULL, '2015-01-20 11:52:21', '2015-01-20 11:52:21'),
(439, 'Nicos', '', '', 'Nicos', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be421ca0e2a.jpg', '34A4FD71-BE91-4E5F-AB2D-36AB757FF04B', NULL, '2015-01-20 11:55:08', '2015-01-20 11:55:08'),
(440, 'Nicos', '', '', 'Nicos', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be42bcd0c6d.jpg', '34A4FD71-BE91-4E5F-AB2D-36AB757FF04B', NULL, '2015-01-20 11:57:48', '2015-01-20 11:57:48'),
(441, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be42eec0c88.jpg', 'b657022d4301336d', NULL, '2015-01-20 11:58:38', '2015-01-20 11:58:38'),
(442, 'Nicos', '', '', 'Nicos', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be437d84f90.jpg', '34A4FD71-BE91-4E5F-AB2D-36AB757FF04B', NULL, '2015-01-20 12:01:01', '2015-01-20 12:01:01'),
(443, 'Tom', '', '', 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be444dcd92f.jpg', '34A4FD71-BE91-4E5F-AB2D-36AB757FF04B', NULL, '2015-01-20 12:04:29', '2015-01-20 12:04:29'),
(444, 'Tom', '', '', 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be4484e8eee.jpg', '34A4FD71-BE91-4E5F-AB2D-36AB757FF04B', NULL, '2015-01-20 12:05:24', '2015-01-20 12:05:24'),
(445, 'Tom', '', '', 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be44d3dd2c5.jpg', '34A4FD71-BE91-4E5F-AB2D-36AB757FF04B', NULL, '2015-01-20 12:06:43', '2015-01-20 12:06:43'),
(446, 'Tom', '', '', 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be45b268338.jpg', '34A4FD71-BE91-4E5F-AB2D-36AB757FF04B', NULL, '2015-01-20 12:10:26', '2015-01-20 12:10:26'),
(447, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be476a87d4d.jpg', '448366C1-F2E7-47C4-8B2A-755FE0B0B665', NULL, '2015-01-20 12:17:46', '2015-01-20 12:17:46'),
(448, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be48228e8d9.jpg', '448366C1-F2E7-47C4-8B2A-755FE0B0B665', NULL, '2015-01-20 12:20:50', '2015-01-20 12:20:50'),
(449, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be497f7ccc6.jpg', '448366C1-F2E7-47C4-8B2A-755FE0B0B665', NULL, '2015-01-20 12:26:39', '2015-01-20 12:26:39'),
(450, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be4a1292d0d.jpg', '448366C1-F2E7-47C4-8B2A-755FE0B0B665', NULL, '2015-01-20 12:29:06', '2015-01-20 12:29:06'),
(451, 'Boss', '', '', 'Peter', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be4d51aaaea.jpg', '4f63abc8f07751ec', NULL, '2015-01-20 12:42:57', '2015-01-20 12:42:57'),
(452, 'Lady gaga', '', '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be4d93c2937.jpg', 'b657022d4301336d', NULL, '2015-01-20 12:44:03', '2015-01-20 12:44:03'),
(453, 'gaga lady gaga lady', '', '', 'gaga lady gaga lady', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be577583a80.jpg', 'b657022d4301336d', NULL, '2015-01-20 13:26:13', '2015-01-20 13:26:13'),
(454, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', 'b657022d4301336d', NULL, '2015-01-20 13:32:01', '2015-01-20 13:32:01'),
(455, 'New user', '', '', 'New user', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be6789712c8.jpg', '7DA91AC0-1FA0-42B1-BE71-C713570689D7', NULL, '2015-01-20 14:34:49', '2015-01-20 14:34:49'),
(456, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be678f72a2c.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-20 14:34:55', '2015-01-20 14:34:55'),
(457, 'Big Boss', '', '', 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54bf26ae470b7.jpg', '1529EC09-B857-48F2-B6E5-D1D94ADADE8A', NULL, '2015-01-21 04:10:22', '2015-01-21 04:10:22'),
(458, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54bf69c277a0e.jpg', '9E85512A-F80F-46E0-A3E3-7C71C1BB43F0', NULL, '2015-01-21 08:56:34', '2015-01-21 08:56:34'),
(459, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54bf6ba7e0cfa.jpg', '9E85512A-F80F-46E0-A3E3-7C71C1BB43F0', NULL, '2015-01-21 09:04:39', '2015-01-21 09:04:39'),
(460, 'Hanh ham', '', '', 'Hanh ham', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54bf6ef63d4d6.jpg', 'rhrhrhrhrhrehrhrhre', NULL, '2015-01-21 09:18:46', '2015-01-21 09:18:46'),
(461, 'Hanh ham', '', '', 'Hanh ham', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54bf70c231ff1.jpg', 'rhrhrhrhrhrehrhrhre', NULL, '2015-01-21 09:26:26', '2015-01-21 09:26:26'),
(462, 'Dr Black', '', '', 'Dr Black', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54bf78988a55b.jpg', '9E85512A-F80F-46E0-A3E3-7C71C1BB43F0', NULL, '2015-01-21 09:59:52', '2015-01-21 09:59:52'),
(463, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c09c9a8ee48.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-22 06:45:46', '2015-01-22 06:45:46'),
(464, 'Brian Le', '', '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c09d50cc236.jpg', '5043B287-6184-4CB8-ABDE-5FF05E395E90', NULL, '2015-01-22 06:48:48', '2015-01-22 06:48:48'),
(465, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', '4f63abc8f07751ec', NULL, '2015-01-22 08:36:26', '2015-01-22 08:36:26'),
(466, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', '4f63abc8f07751ec', NULL, '2015-01-22 08:40:54', '2015-01-22 08:40:54'),
(467, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', '4f63abc8f07751ec', NULL, '2015-01-22 08:46:25', '2015-01-22 08:46:25'),
(468, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', '4f63abc8f07751ec', NULL, '2015-01-22 08:52:36', '2015-01-22 08:52:36'),
(469, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', '4f63abc8f07751ec', NULL, '2015-01-22 08:57:34', '2015-01-22 08:57:34'),
(470, 'Big Boss', '', '', 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c0be2facc86.jpg', '1529EC09-B857-48F2-B6E5-D1D94ADADE8A', NULL, '2015-01-22 09:09:03', '2015-01-22 09:09:03'),
(471, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c0c8e16c2c7.jpg', '9E85512A-F80F-46E0-A3E3-7C71C1BB43F0', NULL, '2015-01-22 09:54:41', '2015-01-22 09:54:41'),
(472, 'Marry', '', '', 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c5d80d9f419.jpg', '8FBFE925-70F2-408F-9550-FF2B58183F5E', NULL, '2015-01-26 06:00:45', '2015-01-26 06:00:45'),
(473, 'Marry', '', '', 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c5f57baf8ee.jpg', '8FBFE925-70F2-408F-9550-FF2B58183F5E', NULL, '2015-01-26 08:06:19', '2015-01-26 08:06:19'),
(474, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c61ca626a60.jpg', '3603311B-8A75-46B4-8E33-004D60607E57', NULL, '2015-01-26 10:53:26', '2015-01-26 10:53:26'),
(475, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c704fa7d5e9.jpg', '3603311B-8A75-46B4-8E33-004D60607E57', NULL, '2015-01-27 03:24:42', '2015-01-27 03:24:42'),
(476, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c70533afa90.jpg', '3603311B-8A75-46B4-8E33-004D60607E57', NULL, '2015-01-27 03:25:39', '2015-01-27 03:25:39'),
(477, 'Marry', '', '', 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c71a7a4cc09.jpg', '8FBFE925-70F2-408F-9550-FF2B58183F5E', NULL, '2015-01-27 04:56:26', '2015-01-27 04:56:26'),
(478, 'Marry', '', '', 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c73efa4b160.jpg', '8FBFE925-70F2-408F-9550-FF2B58183F5E', NULL, '2015-01-27 07:32:10', '2015-01-27 07:32:10'),
(479, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c747486dc1d.jpg', '8FBFE925-70F2-408F-9550-FF2B58183F5E', NULL, '2015-01-27 08:07:36', '2015-01-27 08:07:36'),
(480, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c7488ab4721.jpg', '3603311B-8A75-46B4-8E33-004D60607E57', NULL, '2015-01-27 08:12:58', '2015-01-27 08:12:58'),
(481, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c74ae9a7c0c.jpg', '6B9C761F-79C8-4A94-A5D0-BF77BD633922', NULL, '2015-01-27 08:23:05', '2015-01-27 08:23:05'),
(482, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c74b93cb9e2.jpg', '6B9C761F-79C8-4A94-A5D0-BF77BD633922', NULL, '2015-01-27 08:25:55', '2015-01-27 08:25:55'),
(483, 'Anonymous', '', '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c7529fc60f4.jpg', '8FBFE925-70F2-408F-9550-FF2B58183F5E', NULL, '2015-01-27 08:55:59', '2015-01-27 08:55:59'),
(484, 'Luxy', '', '', 'Luxy', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c75879795a1.jpg', '8FBFE925-70F2-408F-9550-FF2B58183F5E', NULL, '2015-01-27 09:20:57', '2015-01-27 09:20:57'),
(485, 'Luxy', '', '', 'Luxy', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c759962ec2a.jpg', '8FBFE925-70F2-408F-9550-FF2B58183F5E', NULL, '2015-01-27 09:25:42', '2015-01-27 09:25:42'),
(486, 'Luxy', '', '', 'Luxy', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c762d9d3419.jpg', '8FBFE925-70F2-408F-9550-FF2B58183F5E', NULL, '2015-01-27 10:05:13', '2015-01-27 10:05:13'),
(487, 'Luxy', '', '', 'Luxy', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c7652cdd2b0.jpg', '8FBFE925-70F2-408F-9550-FF2B58183F5E', NULL, '2015-01-27 10:15:08', '2015-01-27 10:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `videoId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `videoName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `videoAuthor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `videoAvatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `videoThumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `videoDescription` text COLLATE utf8_unicode_ci NOT NULL,
  `videoCategoryId` int(10) unsigned NOT NULL,
  `videoLink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `videoViews` int(11) NOT NULL,
  `videoShares` int(11) NOT NULL,
  `videoUserId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `videoType` int(11) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  PRIMARY KEY (`videoId`),
  KEY `videos_videocategoryid_foreign` (`videoCategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=489 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`videoId`, `videoName`, `videoAuthor`, `videoAvatar`, `videoThumbnail`, `videoDescription`, `videoCategoryId`, `videoLink`, `videoViews`, `videoShares`, `videoUserId`, `created_at`, `updated_at`, `videoType`, `approved`) VALUES
(386, '', 'Herry Lu', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be2daebd9a8.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be2daec4d4c.jpg', ' 節元旦), which is Sino-Vietnamese for "Feast of the First Morning of the First Day". Tết celebrates the arrival of spring based on the Vietnamese variation of the Chinese lunisolar calendar, which usually has the date falling between the months of January or February.', 9, '117257644', 3, 0, 385, '2015-01-20 10:27:58', '2015-01-20 14:06:51', 1, 1),
(387, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be2e0c9ba37.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be2e0c9d61d.jpg', 'The script', 1, '117257757', 0, 1, 386, '2015-01-20 10:29:32', '2015-01-27 11:49:38', 0, 1),
(388, '', 'Herry Lu', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be2e1e86c91.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be2e1e8f7aa.jpg', ' 節元旦), which is Sino-Vietnamese for "Feast of the First Morning of the First Day". Tết celebrates the arrival of spring based on the Vietnamese variation of the Chinese lunisolar calendar, which usually has the date falling between the months of January or February.[', 9, '117257772', 0, 3, 387, '2015-01-20 10:29:50', '2015-01-20 15:06:22', 0, 1),
(389, '', 'Herry Lu', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be2e6f8de01.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be2e6f9483a.jpg', ' 節元旦), which is Sino-Vietnamese for "Feast of the First Morning of the First Day". Tết celebrates the arrival of spring based on the Vietnamese variation of the Chinese lunisolar calendar, which usually has the date falling between the months of January or February.[', 9, '117257845', 1, 0, 388, '2015-01-20 10:31:11', '2015-01-20 11:26:21', 1, 1),
(392, '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be302cea1c9.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be302cec854.jpg', 'Doraemon animate 1 hour Marathon 2014', 9, '117258273', 1, 0, 391, '2015-01-20 10:38:37', '2015-01-20 11:24:46', 1, 1),
(393, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be302e87943.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be302e89487.jpg', 'Song Ji Eun - Take Care Of Us', 1, '117258275', 0, 0, 392, '2015-01-20 10:38:38', '2015-01-20 10:44:57', 0, 1),
(394, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be30312d553.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be30312f463.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 3, '117258282', 1, 0, 393, '2015-01-20 10:38:41', '2015-01-20 10:49:02', 1, 1),
(396, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be307a08cb3.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be307a0ada3.jpg', 'Davichi and T-ara - We were in love', 1, '117258353', 0, 0, 395, '2015-01-20 10:39:54', '2015-01-20 10:44:46', 0, 1),
(397, '', 'gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3081ef835.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be3081f0587.jpg', 'Travel video, Visions of Venice', 3, '117258365', 0, 0, 396, '2015-01-20 10:40:02', '2015-01-20 10:44:43', 0, 1),
(398, '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be315274725.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be315276d96.jpg', 'Animal maroon 5', 9, '117258623', 1, 0, 397, '2015-01-20 10:43:30', '2015-01-20 10:46:36', 1, 1),
(399, '', 'Justin ', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be319fb6801.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be319fb98f0.jpg', 'At International CES in Las Vegas, Matthew Vroom, the CEO of Henge Docks, discusses their line of great looking MacBook docks.. Matthew outlines how they accomplish the balancing act of great looks with functionality and port accessibility, and some of the challenges associated with dock design.', 1, '117258733', 0, 0, 398, '2015-01-20 10:44:47', '2015-01-20 10:46:15', 0, 1),
(400, '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be31eec1ded.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be31eec4e17.jpg', 'Blank space Taylor Swift', 1, '117258825', 0, 0, 399, '2015-01-20 10:46:06', '2015-01-20 10:46:30', 0, 1),
(401, '', 'Justin', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be31fe8e7ac.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be31fe913f4.jpg', 'At International CES in Las Vegas, Matthew Vroom, the CEO of Henge Docks, discusses their line of great looking MacBook docks.. Matthew outlines how they accomplish the balancing act of great looks with functionality and port accessibility, and some of the challenges associated with dock design.', 1, '117258845', 1, 0, 400, '2015-01-20 10:46:22', '2015-01-20 11:02:42', 1, 1),
(402, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be321e7c884.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be321e7e946.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 3, '117258872', 6, 0, 401, '2015-01-20 10:46:54', '2015-01-27 10:24:09', 1, 1),
(403, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3285727fe.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be328574ba1.jpg', 'Kim Taeyeon - Bye', 1, '117258976', 1, 0, 402, '2015-01-20 10:48:37', '2015-01-20 11:02:28', 1, 1),
(404, '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be32d2263f2.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be32d229260.jpg', 'At International CES in Las Vegas, Matthew Vroom, the CEO of Henge Docks, discusses their line of great looking MacBook docks.. Matthew outlines how they accomplish the balancing act of great looks with functionality and port accessibility, and some of the challenges associated with dock design.', 1, '117259089', 1, 0, 403, '2015-01-20 10:49:54', '2015-01-20 12:08:42', 1, 1),
(405, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be331c18056.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be331c19beb.jpg', 'Ho Chi Minh City - Travel Video Guide', 3, '117259175', 1, 12, 404, '2015-01-20 10:51:08', '2015-01-21 04:15:30', 0, 1),
(406, '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3347c52b3.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be3347c80f3.jpg', 'Shake it off - Taylor Swift', 1, '117259229', 1, 0, 405, '2015-01-20 10:51:51', '2015-01-20 11:37:25', 1, 1),
(407, '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be33705a5b1.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be33705cb16.jpg', 'At International CES in Las Vegas, Matthew Vroom, the CEO of Henge Docks, discusses their line of great looking MacBook docks.. Matthew outlines how they accomplish the balancing act of great looks with functionality and port accessibility, and some of the challenges associated with dock design.', 1, '117259258', 1, 0, 406, '2015-01-20 10:52:32', '2015-01-20 12:11:32', 1, 1),
(408, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be33adeba8e.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be33adeca3a.jpg', 'Thing to do in Vietnam - Ha Long bay', 3, '117259333', 2, 0, 407, '2015-01-20 10:53:34', '2015-01-20 13:14:28', 1, 1),
(409, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be33b86f129.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be33b86ff83.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 3, '117259345', 2, 0, 408, '2015-01-20 10:53:44', '2015-01-20 11:38:19', 1, 1),
(410, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be34191a966.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be34191c7d9.jpg', 'Austria Travel Video Guide', 3, '117259455', 1, 0, 409, '2015-01-20 10:55:21', '2015-01-20 11:38:09', 1, 1),
(411, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be34f9724bd.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be34f973182.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 3, '117259723', 0, 0, 410, '2015-01-20 10:59:05', '2015-01-20 11:03:04', 0, 1),
(412, '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be35057a64f.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be35057c8bd.jpg', 'Flappy bird - Dong Nguyen', 9, '117259742', 0, 0, 411, '2015-01-20 10:59:17', '2015-01-20 11:01:07', 0, 0),
(413, '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3531519cd.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be353154236.jpg', ' Big, like Geneva, Frankfurt, New York, Detroit, Los Angeles or Paris Auto Show, to small regional, Classic Car, RV and Boat Shows.\n ', 9, '117259812', 0, 0, 412, '2015-01-20 11:00:01', '2015-01-20 11:00:22', 0, 1),
(414, '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be357ca8d0f.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be357cab836.jpg', 'Just for laughs gags 2014', 9, '117259935', 6, 0, 413, '2015-01-20 11:01:16', '2015-01-27 07:13:25', 1, 1),
(417, '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be36896d022.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be36896fe5a.jpg', ' Big, like Geneva, Frankfurt, New York, Detroit, Los Angeles or Paris Auto Show, to small regional, Classic Car, RV and Boat Shows.\n ', 2, '117260259', 2, 2, 416, '2015-01-20 11:05:45', '2015-01-27 08:39:54', 0, 1),
(418, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3699c1570.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be3699c21fb.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 4, '117260278', 4, 2, 417, '2015-01-20 11:06:01', '2015-01-23 10:47:12', 1, 1),
(419, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be36a4009ec.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be36a402779.jpg', 'John Legend - All of Me\nNew album Love In The Future', 5, '117260287', 0, 0, 418, '2015-01-20 11:06:12', '2015-01-20 11:06:32', 0, 1),
(421, '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be36d442024.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be36d4447d0.jpg', ' Big, like Geneva, Frankfurt, New York, Detroit, Los Angeles or Paris Auto Show, to small regional, Classic Car, RV and Boat Shows.\n ', 7, '117260343', 1, 0, 420, '2015-01-20 11:07:00', '2015-01-27 10:12:52', 1, 1),
(422, '', 'Yolo', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be36ef1be78.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be36ef1ed22.jpg', 'Andrea and Nick Wedding film', 5, '117260371', 1, 0, 421, '2015-01-20 11:07:27', '2015-01-20 11:08:28', 1, 1),
(423, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be37527edec.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be375280bf7.jpg', 'Jagged Edge - Let''s Get Married\nMusic video by Jagged Edge performing Let''s Get Married', 5, '117260500', 4, 0, 422, '2015-01-20 11:09:06', '2015-01-20 13:32:08', 1, 1),
(424, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be37bdafeb0.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be37bdb0cd6.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 9, '117260644', 11, 0, 423, '2015-01-20 11:10:53', '2015-01-27 07:13:17', 1, 1),
(426, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3805156fc.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be380516ef5.jpg', 'First Love - Pronovias Fashion Show 2014', 5, '117260734', 6, 0, 425, '2015-01-20 11:12:05', '2015-01-27 09:23:22', 1, 1),
(428, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be393ddd9c9.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be393dde5ad.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 9, '117261093', 4, 0, 427, '2015-01-20 11:17:18', '2015-01-27 09:15:23', 1, 1),
(429, '', 'Leader', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be39b018e65.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be39b01bc10.jpg', ' Big, like Geneva, Frankfurt, New York, Detroit, Los Angeles or Paris Auto Show, to small regional, Classic Car, RV and Boat Shows.\n ', 4, '117261217', 2, 0, 428, '2015-01-20 11:19:12', '2015-01-23 10:47:23', 1, 1),
(432, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3abe754f4.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be3abe76284.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 5, '117261490', 3, 0, 431, '2015-01-20 11:23:42', '2015-01-20 14:08:22', 1, 1),
(434, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3bed5bcee.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be3bed5ca46.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 5, '117261858', 2, 0, 433, '2015-01-20 11:28:45', '2015-01-20 11:39:46', 1, 1),
(435, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be3ee357731.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be3ee3586fc.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 7, '117262708', 0, 0, 434, '2015-01-20 11:41:23', '2015-01-20 11:42:16', 0, 1),
(437, '', 'Nicos', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be40d32dcba.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be40d32f1e2.jpg', 'Pinna Tornai 2013 Bridal Collection', 5, '117263278', 0, 0, 436, '2015-01-20 11:49:39', '2015-01-20 11:50:07', 0, 1),
(439, '', 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be4175a25fa.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be4175a3bee.jpg', 'English is a West Germanic language that was first spoken in early medieval England and is now a global lingua franca.[5][6] It is an official language of almost 60 sovereign states and the most commonly spoken language in sovereign states including the United Kingdom, the United States, Canada, Australia, Ireland, New Zealand.', 4, '117263440', 5, 0, 438, '2015-01-20 11:52:21', '2015-01-20 14:20:25', 1, 1),
(440, '', 'Nicos', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be421ca0e2a.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be421ca257d.jpg', 'English is a West Germanic language that was first spoken in early medieval England and is now a global lingua franca.[5][6] It is an official language of almost 60 sovereign states and the most commonly spoken language in sovereign states including the United Kingdom, the United States, Canada, Australia, Ireland, New Zealand.', 6, '117263627', 6, 0, 439, '2015-01-20 11:55:08', '2015-01-20 13:54:16', 1, 1),
(441, '', 'Nicos', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be42bcd0c6d.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be42bcd2308.jpg', 'English is a West Germanic language that was first spoken in early medieval England and is now a global lingua franca.[5][6] It is an official language of almost 60 sovereign states and the most commonly spoken language in sovereign states including the United Kingdom, the United States, Canada, Australia, Ireland, New Zealand.', 2, '117263796', 3, 0, 440, '2015-01-20 11:57:49', '2015-01-20 12:47:42', 1, 1),
(442, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be42eec0c88.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be42eec1b20.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 9, '117263844', 3, 0, 441, '2015-01-20 11:58:38', '2015-01-27 08:37:21', 1, 1),
(443, '', 'Nicos', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be437d84f90.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be437d86792.jpg', 'English is a West Germanic language that was first spoken in early medieval England and is now a global lingua franca.[5][6] It is an official language of almost 60 sovereign states and the most commonly spoken language in sovereign states including the United Kingdom, the United States, Canada, Australia, Ireland, New Zealand.', 2, '117264037', 2, 0, 442, '2015-01-20 12:01:01', '2015-01-27 07:01:24', 1, 1),
(444, '', 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be444dcd92f.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be444dcede5.jpg', 'English is a West Germanic language that was first spoken in early medieval England and is now a global lingua franca.[5][6] It is an official language of almost 60 sovereign states and the most commonly spoken language in sovereign states including the United Kingdom, the United States, Canada, Australia, Ireland, New Zealand.', 8, '117264303', 4, 0, 443, '2015-01-20 12:04:29', '2015-01-26 06:28:39', 1, 1),
(445, '', 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be4484e8eee.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be4484ea2ba.jpg', 'English is a West Germanic language that was first spoken in early medieval England and is now a global lingua franca.[5][6] It is an official language of almost 60 sovereign states and the most commonly spoken language in sovereign states including the United Kingdom, the United States, Canada, Australia, Ireland, New Zealand.', 8, '117264366', 2, 0, 444, '2015-01-20 12:05:25', '2015-01-27 09:00:04', 1, 1),
(446, '', 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be44d3dd2c5.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be44d3dec98.jpg', 'English is a West Germanic language that was first spoken in early medieval England and is now a global lingua franca.[5][6] It is an official language of almost 60 sovereign states and the most commonly spoken language in sovereign states including the United Kingdom, the United States, Canada, Australia, Ireland, New Zealand.', 8, '117264466', 2, 0, 445, '2015-01-20 12:06:44', '2015-01-23 10:55:06', 1, 1),
(447, '', 'Tom', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be45b268338.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be45b269a58.jpg', 'English is a West Germanic language that was first spoken in early medieval England and is now a global lingua franca.[5][6] It is an official language of almost 60 sovereign states and the most commonly spoken language in sovereign states including the United Kingdom, the United States, Canada, Australia, Ireland, New Zealand.', 6, '117264737', 2, 0, 446, '2015-01-20 12:10:26', '2015-01-27 06:32:28', 1, 1),
(448, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be476a87d4d.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be476a893b8.jpg', 'Speed tests conducted over Wi-Fi are limited by Wi-Fi network type and signal strength, and usually do not represent your full broadband connection speed.', 6, '117265262', 2, 0, 447, '2015-01-20 12:17:46', '2015-01-21 04:02:27', 1, 1),
(449, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be48228e8d9.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be48228ff18.jpg', 'Speed tests conducted over Wi-Fi are limited by Wi-Fi network type and signal strength, and usually do not represent your full broadband connection speed.', 7, '117265479', 2, 0, 448, '2015-01-20 12:20:50', '2015-01-21 14:22:12', 1, 1),
(450, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be497f7ccc6.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be497f7e435.jpg', 'Speed tests conducted over Wi-Fi are limited by Wi-Fi network type and signal strength, and usually do not represent your full broadband connection speed.', 7, '117265905', 16, 1, 449, '2015-01-20 12:26:39', '2015-01-27 08:26:15', 1, 1),
(451, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be4a1292d0d.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be4a1294866.jpg', 'Speed tests conducted over Wi-Fi are limited by Wi-Fi network type and signal strength, and usually do not represent your full broadband connection speed.', 6, '117266089', 23, 1, 450, '2015-01-20 12:29:06', '2015-01-27 09:09:41', 1, 1),
(452, '', 'Peter', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be4d51aaaea.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be4d51abb3d.jpg', 'venice', 3, '117267146', 4, 0, 451, '2015-01-20 12:42:57', '2015-01-26 09:13:55', 1, 1),
(453, '', 'Lady gaga', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be4d93c2937.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be4d93c3a7a.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 3, '117267229', 1, 0, 452, '2015-01-20 12:44:03', '2015-01-20 16:59:17', 1, 1),
(454, '', 'gaga lady gaga lady', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be577583a80.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be577584798.jpg', 'best video', 3, '117270222', 6, 5, 453, '2015-01-20 13:26:13', '2015-01-20 15:25:23', 1, 0),
(455, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be58d14a33c.jpg', 'Teamwork is a combination of communication, coordination, and a balance of contributions from each member. In our English text book, we have learnt about the collective farming of Mr. Rafiq and his neighbors. In a collective farm, many farmers work together.', 7, '117270689', 39, 0, 454, '2015-01-20 13:32:01', '2015-01-27 08:37:46', 1, 1),
(456, '', 'New user', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be6789712c8.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be678972dbb.jpg', 'Speed tests conducted over Wi-Fi are limited by Wi-Fi network type and signal strength, and usually do not represent your full broadband connection speed.', 6, '117275783', 0, 0, 455, '2015-01-20 14:34:49', '2015-01-20 14:34:49', 0, 0),
(457, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54be678f72a2c.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54be678f748c7.jpg', 'iMac has always been about having a huge, immersive place to see and create amazing things. So making the best possible iMac', 5, '117275791', 54, 0, 456, '2015-01-20 14:34:55', '2015-01-27 09:41:56', 1, 1),
(458, '', 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54bf26ae470b7.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54bf26ae49069.jpg', ' Welcome to AutoMotoTube!!! On our channel we upload every day short, (2-5min) walkaround videos of Cars and Motorcycles. Our coverage is from Auto and Moto shows in North America ', 3, '117353203', 10, 3, 457, '2015-01-21 04:10:22', '2015-01-28 03:31:35', 0, 1),
(463, '', 'Dr Black', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54bf78988a55b.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54bf78988cd32.jpg', ' Beautiful vocal.', 1, '117369016', 23, 0, 462, '2015-01-21 09:59:52', '2015-01-27 11:16:56', 1, 1),
(464, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c09c9a8ee48.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c09c9a90b47.jpg', 'Music Korean', 2, '117463454', 0, 0, 463, '2015-01-22 06:45:46', '2015-01-22 06:45:46', 0, 0),
(465, '', 'Brian Le', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c09d50cc236.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c09d50ce281.jpg', 'Sai Gon travel', 3, '117463568', 0, 0, 464, '2015-01-22 06:48:48', '2015-01-22 06:48:48', 0, 0),
(466, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c0b68aed6a6.jpg', 'frggg', 8, '117468139', 0, 0, 465, '2015-01-22 08:36:27', '2015-01-22 08:36:27', 0, 0),
(467, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c0b796720c4.jpg', 'vrrg', 8, '117468353', 0, 0, 466, '2015-01-22 08:40:54', '2015-01-22 08:40:54', 0, 0),
(468, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c0b8e19c2a3.jpg', 'gyhb', 7, '117468628', 0, 0, 467, '2015-01-22 08:46:25', '2015-01-22 08:46:25', 0, 0),
(469, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c0ba542e4a8.jpg', 'vhjn', 8, '117468928', 0, 0, 468, '2015-01-22 08:52:36', '2015-01-22 08:52:36', 0, 0),
(470, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/noavatar.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c0bb7e5bcdb.jpg', 'vfhb', 8, '117469165', 0, 0, 469, '2015-01-22 08:57:34', '2015-01-22 08:57:34', 0, 0),
(471, '', 'Big Boss', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c0be2facc86.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c0be2faebda.jpg', 'The most anticipated video of 2015 is here early!\n', 3, '117469742', 0, 0, 470, '2015-01-22 09:09:03', '2015-01-22 09:09:03', 0, 0),
(472, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c0c8e16c2c7.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c0c8e16dcb2.jpg', 'jjhh', 1, '117472265', 0, 0, 471, '2015-01-22 09:54:41', '2015-01-22 09:54:41', 0, 0),
(473, '', 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c5d80d9f419.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c5d80da1c3f.jpg', 'You are my sunshine\n', 9, '117771867', 6, 1, 472, '2015-01-26 06:00:45', '2015-01-27 07:19:08', 1, 1),
(474, '', 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c5f57baf8ee.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c5f57bb1af2.jpg', ' the description write by #BrianLe.And review by #Marry #boos\n', 5, '117777078', 7, 4, 473, '2015-01-26 08:06:19', '2015-01-27 08:05:21', 1, 0),
(475, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c61ca626a60.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c61ca627d4d.jpg', 'Good', 9, '117785998', 0, 0, 474, '2015-01-26 10:53:26', '2015-01-26 10:53:26', 0, 0),
(476, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c704fa7d5e9.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c704fa7effa.jpg', 'Good.', 2, '117874270', 0, 0, 475, '2015-01-27 03:24:42', '2015-01-27 03:24:42', 0, 0),
(477, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c70533afa90.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c70533b0d56.jpg', 'Good.', 3, '117874325', 0, 0, 476, '2015-01-27 03:25:39', '2015-01-27 03:25:39', 0, 0),
(478, '', 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c71a7a4cc09.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c71a7a4e525.jpg', 'Coca cola', 7, '117879066', 11, 2, 477, '2015-01-27 04:56:26', '2015-01-28 02:06:18', 1, 1),
(479, '', 'Marry', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c73efa4b160.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c73efa4d786.jpg', 'The real gift of tet - happy new year 2015 #coca #newyear', 4, '117886513', 11, 3, 478, '2015-01-27 07:32:10', '2015-01-27 14:05:24', 1, 1),
(480, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c747486dc1d.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c747486f18a.jpg', 'happy new year 2015 #coca', 2, '117888442', 24, 7, 479, '2015-01-27 08:07:36', '2015-01-27 15:18:06', 1, 1),
(481, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c7488ab4721.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c7488ab6462.jpg', 'Wow', 6, '117888701', 0, 0, 480, '2015-01-27 08:12:58', '2015-01-27 08:12:58', 0, 0),
(482, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c74ae9a7c0c.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c74ae9a91b0.jpg', 'Cat funny', 9, '117889164', 0, 0, 481, '2015-01-27 08:23:05', '2015-01-27 08:23:05', 0, 0),
(483, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c74b93cb9e2.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c74b93ccd9b.jpg', 'Video transfer number 1863', 3, '117889326', 0, 0, 482, '2015-01-27 08:25:56', '2015-01-27 08:25:56', 0, 0),
(484, '', 'Anonymous', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c7529fc60f4.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c7529fc77dc.jpg', 'Mobile-friendly - #Happy New Year is a 2015 Indian action-heist comedy film directed by Farah Khan and produced by Gauri Khan under ...', 2, '117890951', 23, 5, 483, '2015-01-27 08:56:00', '2015-01-28 03:32:12', 1, 0),
(485, '', 'Luxy', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c75879795a1.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c758797a48c.jpg', 'Mobile-friendly - Happy New Year is a 2015 Indian action-heist comedy film directed by Farah Khan and produced by Gauri Khan under ...', 3, '117892482', 0, 0, 484, '2015-01-27 09:20:57', '2015-01-27 09:26:05', 0, 0),
(486, '', 'Luxy', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c759962ec2a.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c7599630766.jpg', 'Mobile-friendly - #Happy? @New #Year145£€€ is a 2015 #Indian%£>~  action-heist comedy film directed by Farah #Khan#and#produced by Gauri Khan under ...', 7, '117892790', 9, 6, 485, '2015-01-27 09:25:42', '2015-01-28 06:10:25', 0, 1),
(487, '', 'Luxy', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c762d9d3419.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c762d9d46ee.jpg', 'Mobile-friendly - #Happy$ New #Year. #is! #2014{}#Indian&  #action- #heist'' #comedy,  #film..., \n#directed¥£€ #by* #Farah#Khan and produced by Gauri Khan under ...', 3, '117895374', 4, 18, 486, '2015-01-27 10:05:14', '2015-01-28 03:32:44', 1, 1),
(488, '', 'Luxy', 'http://webdemo.synova.com.vn:5656/instavid/public/images/avatars/videos/avatar_54c7652cdd2b0.jpg', 'http://webdemo.synova.com.vn:5656/instavid/public/images/videoThumbnails/avatar_54c7652cdea0c.jpg', 'Mobile-friendly - Happy New Year #is[ #2014\\ #Indian^ #action-#heist% #comedy= #film~ #directed,  #by• #Farah66- #Khan| #and< #€€> #produced'' #by$  #Gauri; #Khan: under ...', 2, '117896140', 117, 103, 487, '2015-01-27 10:15:09', '2015-01-28 06:10:32', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `videos_tags`
--

CREATE TABLE IF NOT EXISTS `videos_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hashTagId` int(10) unsigned NOT NULL,
  `hashTagVideoId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=148 ;

--
-- Dumping data for table `videos_tags`
--

INSERT INTO `videos_tags` (`id`, `hashTagId`, `hashTagVideoId`, `created_at`, `updated_at`) VALUES
(105, 105, 458, '2015-01-21 04:10:22', '2015-01-21 04:10:22'),
(109, 109, 463, '2015-01-21 09:59:52', '2015-01-21 09:59:52'),
(110, 110, 474, '2015-01-26 08:06:19', '2015-01-26 08:06:19'),
(111, 111, 479, '2015-01-27 07:32:10', '2015-01-27 07:32:10'),
(112, 112, 479, '2015-01-27 07:32:10', '2015-01-27 07:32:10'),
(113, 111, 480, '2015-01-27 08:07:36', '2015-01-27 08:07:36'),
(114, 113, 484, '2015-01-27 08:56:00', '2015-01-27 08:56:00'),
(115, 113, 486, '2015-01-27 09:25:42', '2015-01-27 09:25:42'),
(116, 114, 486, '2015-01-27 09:25:43', '2015-01-27 09:25:43'),
(117, 115, 486, '2015-01-27 09:25:43', '2015-01-27 09:25:43'),
(118, 116, 486, '2015-01-27 09:25:43', '2015-01-27 09:25:43'),
(119, 117, 486, '2015-01-27 09:25:43', '2015-01-27 09:25:43'),
(120, 118, 486, '2015-01-27 09:25:44', '2015-01-27 09:25:44'),
(121, 113, 487, '2015-01-27 10:05:14', '2015-01-27 10:05:14'),
(122, 119, 487, '2015-01-27 10:05:14', '2015-01-27 10:05:14'),
(123, 120, 487, '2015-01-27 10:05:14', '2015-01-27 10:05:14'),
(124, 121, 487, '2015-01-27 10:05:14', '2015-01-27 10:05:14'),
(125, 115, 487, '2015-01-27 10:05:14', '2015-01-27 10:05:14'),
(126, 122, 487, '2015-01-27 10:05:14', '2015-01-27 10:05:14'),
(127, 123, 487, '2015-01-27 10:05:14', '2015-01-27 10:05:14'),
(128, 124, 487, '2015-01-27 10:05:14', '2015-01-27 10:05:14'),
(129, 125, 487, '2015-01-27 10:05:14', '2015-01-27 10:05:14'),
(130, 126, 487, '2015-01-27 10:05:15', '2015-01-27 10:05:15'),
(131, 127, 487, '2015-01-27 10:05:15', '2015-01-27 10:05:15'),
(132, 128, 487, '2015-01-27 10:05:15', '2015-01-27 10:05:15'),
(133, 116, 487, '2015-01-27 10:05:15', '2015-01-27 10:05:15'),
(134, 120, 488, '2015-01-27 10:15:09', '2015-01-27 10:15:09'),
(135, 121, 488, '2015-01-27 10:15:09', '2015-01-27 10:15:09'),
(136, 115, 488, '2015-01-27 10:15:09', '2015-01-27 10:15:09'),
(137, 122, 488, '2015-01-27 10:15:09', '2015-01-27 10:15:09'),
(138, 123, 488, '2015-01-27 10:15:09', '2015-01-27 10:15:09'),
(139, 124, 488, '2015-01-27 10:15:09', '2015-01-27 10:15:09'),
(140, 125, 488, '2015-01-27 10:15:09', '2015-01-27 10:15:09'),
(141, 126, 488, '2015-01-27 10:15:09', '2015-01-27 10:15:09'),
(142, 127, 488, '2015-01-27 10:15:10', '2015-01-27 10:15:10'),
(143, 129, 488, '2015-01-27 10:15:10', '2015-01-27 10:15:10'),
(144, 116, 488, '2015-01-27 10:15:10', '2015-01-27 10:15:10'),
(145, 117, 488, '2015-01-27 10:15:10', '2015-01-27 10:15:10'),
(146, 118, 488, '2015-01-27 10:15:10', '2015-01-27 10:15:10'),
(147, 130, 488, '2015-01-27 10:15:11', '2015-01-27 10:15:11');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_commentvideoid_foreign` FOREIGN KEY (`commentVideoId`) REFERENCES `videos` (`videoId`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_videocategoryid_foreign` FOREIGN KEY (`videoCategoryId`) REFERENCES `categories` (`categoryId`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
