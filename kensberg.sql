-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2018 at 01:58 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kensberg`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogrcal20_categories`
--

CREATE TABLE `blogrcal20_categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogrcal20_comments`
--

CREATE TABLE `blogrcal20_comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogrcal20_options`
--

CREATE TABLE `blogrcal20_options` (
  `options_id` int(11) NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_page` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showsearch` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmleditor` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showshare` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_side` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_limit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_link` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `captcha` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `captcha_theme` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_zone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_file` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approval` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commentsoff` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments_order` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comm_req` text COLLATE utf8_unicode_ci,
  `ban_ips` text COLLATE utf8_unicode_ci,
  `ban_words` text COLLATE utf8_unicode_ci,
  `visual` text COLLATE utf8_unicode_ci,
  `visual_comm` text COLLATE utf8_unicode_ci,
  `language` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogrcal20_options`
--

INSERT INTO `blogrcal20_options` (`options_id`, `email`, `per_page`, `showsearch`, `htmleditor`, `showshare`, `share_side`, `post_limit`, `items_link`, `captcha`, `captcha_theme`, `time_zone`, `css_file`, `approval`, `commentsoff`, `comments_order`, `comm_req`, `ban_ips`, `ban_words`, `visual`, `visual_comm`, `language`) VALUES
(1, 'admin@email.com', '5', 'yes', 'ck', 'yes', 'right', '1000', 'http://www.yourwebsite.com/blogpage.php', 'recap', 'clean', NULL, 'no', 'true', NULL, 'AtBottom', 'a:1:{i:0;s:5:\"Email\";}', '', NULL, 'a:173:{s:15:\"gen_font_family\";s:51:\"Raleway-Regular,Helvetica Neue,Helvetica,sans-serif\";s:14:\"gen_font_color\";s:4:\"#333\";s:13:\"gen_font_size\";s:4:\"13px\";s:14:\"gen_text_align\";s:7:\"justify\";s:15:\"gen_line_height\";s:4:\"20px\";s:13:\"gen_bgr_color\";s:0:\"\";s:9:\"gen_width\";s:3:\"750\";s:13:\"gen_width_dim\";s:2:\"px\";s:10:\"sear_color\";s:7:\"#333333\";s:14:\"sear_bor_color\";s:7:\"#eeeeee\";s:12:\"sb_font_size\";s:4:\"16px\";s:12:\"cat_dd_color\";s:7:\"#000000\";s:16:\"cat_dd_bgr_color\";s:7:\"#f9f9f9\";s:22:\"cat_dd_bgr_color_hover\";s:7:\"#f1f1f1\";s:13:\"cat_dd_family\";s:41:\"Arial,Helvetica Neue,Helvetica,sans-serif\";s:16:\"cat_dd_font_size\";s:4:\"14px\";s:17:\"cat_dd_font_style\";s:6:\"normal\";s:18:\"cat_dd_font_weight\";s:6:\"normal\";s:12:\"cat_dd_align\";s:4:\"left\";s:14:\"cat_word_color\";s:7:\"#000000\";s:16:\"cat_word_bgcolor\";s:7:\"#FFFFFF\";s:15:\"cat_word_family\";s:31:\"Tahoma,Verdana,Segoe,sans-serif\";s:18:\"cat_word_font_size\";s:4:\"16px\";s:19:\"cat_word_font_style\";s:6:\"normal\";s:20:\"cat_word_font_weight\";s:6:\"normal\";s:12:\"Border_sides\";s:6:\"bottom\";s:12:\"Border_style\";s:5:\"solid\";s:12:\"Border_width\";s:3:\"2px\";s:12:\"Border_color\";s:7:\"#777777\";s:13:\"posts_padding\";s:3:\"3px\";s:14:\"post_bgr_color\";s:0:\"\";s:15:\"list_title_font\";s:50:\"Oswald-Regular,Helvetica Neue,Helvetica,sans-serif\";s:16:\"list_title_color\";s:7:\"#4B3C23\";s:22:\"list_title_color_hover\";s:7:\"#929292\";s:15:\"list_title_size\";s:4:\"28px\";s:22:\"list_title_font_weight\";s:6:\"normal\";s:21:\"list_title_font_style\";s:6:\"normal\";s:16:\"list_title_align\";s:6:\"center\";s:22:\"list_title_line_height\";s:4:\"28px\";s:21:\"list_title_line_color\";s:7:\"#eeeeee\";s:21:\"list_title_line_thick\";s:3:\"1px\";s:20:\"list_title_dist_line\";s:4:\"10px\";s:15:\"post_title_font\";s:50:\"Oswald-Regular,Helvetica Neue,Helvetica,sans-serif\";s:16:\"post_title_color\";s:7:\"#1a1a1a\";s:15:\"post_title_size\";s:4:\"25px\";s:21:\"post_title_font_style\";s:6:\"normal\";s:22:\"post_title_font_weight\";s:6:\"normal\";s:16:\"post_title_align\";s:6:\"center\";s:17:\"title_line_height\";s:4:\"28px\";s:16:\"title_line_color\";s:7:\"#eeeeee\";s:15:\"title_dist_line\";s:4:\"10px\";s:16:\"title_line_thick\";s:3:\"1px\";s:14:\"list_text_font\";s:41:\"Arial,Helvetica Neue,Helvetica,sans-serif\";s:15:\"list_text_color\";s:7:\"#444444\";s:19:\"list_text_bgr_color\";s:0:\"\";s:14:\"list_text_size\";s:4:\"15px\";s:21:\"list_text_font_weight\";s:6:\"normal\";s:20:\"list_text_font_style\";s:6:\"normal\";s:20:\"list_text_text_align\";s:4:\"left\";s:21:\"list_text_line_height\";s:4:\"20px\";s:17:\"list_text_padding\";s:3:\"2px\";s:9:\"text_font\";s:41:\"Arial,Helvetica Neue,Helvetica,sans-serif\";s:10:\"text_color\";s:7:\"#444444\";s:14:\"text_bgr_color\";s:0:\"\";s:9:\"text_size\";s:4:\"15px\";s:16:\"text_font_weight\";s:7:\"inherit\";s:15:\"text_font_style\";s:7:\"inherit\";s:15:\"text_text_align\";s:7:\"inherit\";s:16:\"text_line_height\";s:4:\"20px\";s:12:\"text_padding\";s:3:\"2px\";s:14:\"list_date_font\";s:44:\"Azbuka04,Helvetica Neue,Helvetica,sans-serif\";s:15:\"list_date_color\";s:7:\"#aaaaaa\";s:14:\"list_date_size\";s:4:\"13px\";s:20:\"list_date_font_style\";s:6:\"normal\";s:20:\"list_date_text_align\";s:6:\"center\";s:16:\"list_date_format\";s:7:\"F jS, Y\";s:14:\"list_show_date\";s:3:\"yes\";s:17:\"list_showing_time\";s:5:\"g:i a\";s:9:\"date_font\";s:41:\"Arial,Helvetica Neue,Helvetica,sans-serif\";s:10:\"date_color\";s:4:\"#777\";s:9:\"date_size\";s:4:\"11px\";s:15:\"date_font_style\";s:6:\"normal\";s:15:\"date_text_align\";s:4:\"left\";s:11:\"date_format\";s:7:\"F jS, Y\";s:9:\"show_date\";s:3:\"yes\";s:12:\"showing_time\";s:5:\"g:i a\";s:7:\"show_aa\";s:3:\"yes\";s:15:\"more_font_color\";s:7:\"#aaaaaa\";s:21:\"more_font_color_hover\";s:7:\"#444444\";s:9:\"more_font\";s:44:\"Azbuka04,Helvetica Neue,Helvetica,sans-serif\";s:14:\"more_font_size\";s:4:\"13px\";s:15:\"more_font_style\";s:6:\"normal\";s:16:\"more_font_weight\";s:6:\"normal\";s:20:\"more_text_decoration\";s:4:\"none\";s:26:\"more_text_decoration_hover\";s:4:\"none\";s:15:\"coml_font_color\";s:7:\"#aaaaaa\";s:21:\"coml_font_color_hover\";s:7:\"#444444\";s:9:\"coml_font\";s:44:\"Azbuka04,Helvetica Neue,Helvetica,sans-serif\";s:14:\"coml_font_size\";s:4:\"13px\";s:15:\"coml_font_style\";s:6:\"normal\";s:16:\"coml_font_weight\";s:6:\"normal\";s:20:\"coml_text_decoration\";s:4:\"none\";s:26:\"coml_text_decoration_hover\";s:4:\"none\";s:15:\"back_font_color\";s:7:\"#929292\";s:21:\"back_font_color_hover\";s:7:\"#333333\";s:14:\"back_font_size\";s:4:\"12px\";s:15:\"back_font_style\";s:6:\"normal\";s:16:\"back_font_weight\";s:4:\"bold\";s:20:\"back_text_decoration\";s:4:\"none\";s:26:\"back_text_decoration_hover\";s:4:\"none\";s:16:\"links_font_color\";s:7:\"#666666\";s:22:\"links_font_color_hover\";s:7:\"#666666\";s:21:\"links_text_decoration\";s:9:\"underline\";s:27:\"links_text_decoration_hover\";s:4:\"none\";s:15:\"links_font_size\";s:4:\"12px\";s:16:\"links_font_style\";s:6:\"italic\";s:17:\"links_font_weight\";s:6:\"normal\";s:12:\"pag_align_to\";s:6:\"center\";s:14:\"pag_font_color\";s:4:\"#000\";s:14:\"pag_bord_color\";s:4:\"#000\";s:14:\"pag_bor_radius\";s:3:\"0px\";s:13:\"pag_bgr_color\";s:7:\"#FFFFFF\";s:13:\"loadmore_padd\";s:4:\"11px\";s:20:\"pag_font_color_hover\";s:4:\"#333\";s:20:\"pag_bord_color_hover\";s:4:\"#333\";s:19:\"pag_bgr_color_hover\";s:7:\"#FFFFFF\";s:15:\"pag_font_family\";s:44:\"Azbuka04,Helvetica Neue,Helvetica,sans-serif\";s:13:\"pag_font_size\";s:4:\"15px\";s:14:\"pag_font_style\";s:6:\"normal\";s:15:\"pag_font_weight\";s:6:\"normal\";s:14:\"loadmore_width\";s:2:\"44\";s:12:\"loadmore_dim\";s:1:\"%\";s:14:\"show_scrolltop\";s:3:\"yes\";s:15:\"scrolltop_width\";s:4:\"40px\";s:16:\"scrolltop_height\";s:4:\"40px\";s:19:\"scrolltop_bgr_color\";s:7:\"#999999\";s:25:\"scrolltop_bgr_color_hover\";s:7:\"#808080\";s:17:\"scrolltop_opacity\";s:2:\"40\";s:23:\"scrolltop_opacity_hover\";s:2:\"60\";s:16:\"scrolltop_radius\";s:3:\"0px\";s:10:\"bott_color\";s:7:\"#000000\";s:16:\"bott_color_hover\";s:7:\"#333333\";s:16:\"bott_color_inact\";s:7:\"#CCCCCC\";s:9:\"bott_size\";s:4:\"14px\";s:10:\"bott_style\";s:6:\"normal\";s:11:\"bott_weight\";s:4:\"bold\";s:15:\"bott_decoration\";s:4:\"none\";s:21:\"bott_decoration_hover\";s:9:\"underline\";s:13:\"dist_from_top\";s:4:\"30px\";s:17:\"dist_search_title\";s:4:\"30px\";s:15:\"dist_title_date\";s:4:\"24px\";s:20:\"list_dist_title_date\";s:4:\"24px\";s:14:\"dist_date_text\";s:3:\"4px\";s:19:\"list_dist_date_text\";s:3:\"4px\";s:14:\"dist_btw_posts\";s:4:\"50px\";s:18:\"dist_btw_post_more\";s:4:\"12px\";s:18:\"dist_btw_more_line\";s:4:\"25px\";s:15:\"dist_link_title\";s:4:\"10px\";s:15:\"dist_comm_links\";s:4:\"36px\";s:16:\"dist_from_bottom\";s:4:\"30px\";s:12:\"w_lat_p_font\";s:51:\"Raleway-Regular,Helvetica Neue,Helvetica,sans-serif\";s:13:\"w_lat_p_color\";s:4:\"#333\";s:12:\"w_lat_p_size\";s:4:\"15px\";s:19:\"w_lat_p_font_weight\";s:4:\"bold\";s:18:\"w_lat_p_font_style\";s:6:\"normal\";s:19:\"lat_post_title_font\";s:50:\"Oswald-Regular,Helvetica Neue,Helvetica,sans-serif\";s:20:\"lat_post_title_color\";s:7:\"#4B3C23\";s:26:\"lat_post_title_color_hover\";s:7:\"#929292\";s:19:\"lat_post_title_size\";s:4:\"14px\";s:26:\"lat_post_title_font_weight\";s:6:\"normal\";s:25:\"lat_post_title_font_style\";s:6:\"normal\";s:20:\"lat_post_title_align\";s:4:\"left\";s:21:\"lat_title_line_height\";s:4:\"22px\";}', 'a:45:{s:15:\"comm_bord_sides\";s:3:\"top\";s:15:\"comm_bord_style\";s:5:\"solid\";s:15:\"comm_bord_width\";s:3:\"1px\";s:15:\"comm_bord_color\";s:7:\"#dddddd\";s:12:\"comm_padding\";s:1:\"1\";s:13:\"comm_padd_dim\";s:1:\"%\";s:14:\"comm_bgr_color\";s:0:\"\";s:18:\"w_comm_font_family\";s:41:\"Arial,Helvetica Neue,Helvetica,sans-serif\";s:17:\"w_comm_font_color\";s:7:\"#333333\";s:16:\"w_comm_font_size\";s:4:\"18px\";s:17:\"w_comm_font_style\";s:6:\"normal\";s:18:\"w_comm_font_weight\";s:6:\"normal\";s:15:\"name_font_color\";s:7:\"#E56804\";s:14:\"name_font_size\";s:4:\"14px\";s:15:\"name_font_style\";s:6:\"normal\";s:16:\"name_font_weight\";s:4:\"bold\";s:14:\"comm_date_font\";s:41:\"Arial,Helvetica Neue,Helvetica,sans-serif\";s:15:\"comm_date_color\";s:4:\"#999\";s:14:\"comm_date_size\";s:4:\"11px\";s:20:\"comm_date_font_style\";s:6:\"normal\";s:16:\"comm_date_format\";s:7:\"F jS, Y\";s:17:\"comm_showing_time\";s:5:\"g:i a\";s:15:\"comm_font_color\";s:7:\"#000000\";s:14:\"comm_font_size\";s:4:\"14px\";s:15:\"comm_font_style\";s:6:\"normal\";s:16:\"comm_font_weight\";s:6:\"normal\";s:16:\"leave_font_color\";s:7:\"#000000\";s:15:\"leave_font_size\";s:4:\"15px\";s:17:\"leave_font_weight\";s:4:\"bold\";s:16:\"leave_font_style\";s:6:\"normal\";s:16:\"field_font_color\";s:7:\"#000000\";s:15:\"field_font_size\";s:4:\"12px\";s:16:\"field_font_style\";s:6:\"normal\";s:17:\"field_font_weight\";s:6:\"normal\";s:14:\"req_font_color\";s:7:\"#b39999\";s:13:\"req_font_size\";s:4:\"11px\";s:10:\"subm_color\";s:7:\"#ffffff\";s:14:\"subm_bgr_color\";s:7:\"#1a1a1a\";s:15:\"subm_brdr_color\";s:7:\"#1a1a1a\";s:17:\"subm_bgr_color_on\";s:7:\"#ffffff\";s:15:\"subm_bor_radius\";s:3:\"0px\";s:16:\"subm_font_weight\";s:6:\"normal\";s:15:\"subm_font_style\";s:6:\"normal\";s:13:\"dist_btw_comm\";s:4:\"15px\";s:10:\"avat_width\";s:2:\"60\";}', 'a:98:{s:9:\"Back_home\";s:4:\"BACK\";s:13:\"Search_button\";s:9:\"Search...\";s:8:\"Category\";s:8:\"CATEGORY\";s:12:\"Category_all\";s:9:\"-- ALL --\";s:9:\"Read_more\";s:4:\"MORE\";s:13:\"Comments_link\";s:8:\"COMMENTS\";s:9:\"LOAD_MORE\";s:9:\"LOAD MORE\";s:7:\"LOADING\";s:10:\"LOADING...\";s:8:\"No_Posts\";s:21:\"No More Posts To List\";s:10:\"Older_Post\";s:10:\"Older Post\";s:11:\"Home_bottom\";s:4:\"Home\";s:10:\"Newer_Post\";s:10:\"Newer Post\";s:12:\"LATEST_POSTS\";s:14:\"LATEST POSTS: \";s:6:\"Monday\";s:6:\"Monday\";s:7:\"Tuesday\";s:7:\"Tuesday\";s:9:\"Wednesday\";s:9:\"Wednesday\";s:8:\"Thursday\";s:8:\"Thursday\";s:6:\"Friday\";s:6:\"Friday\";s:8:\"Saturday\";s:8:\"Saturday\";s:6:\"Sunday\";s:6:\"Sunday\";s:7:\"January\";s:7:\"January\";s:8:\"February\";s:8:\"February\";s:5:\"March\";s:5:\"March\";s:5:\"April\";s:5:\"April\";s:3:\"May\";s:3:\"May\";s:4:\"June\";s:4:\"June\";s:4:\"July\";s:4:\"July\";s:6:\"August\";s:6:\"August\";s:9:\"September\";s:9:\"September\";s:7:\"October\";s:7:\"October\";s:8:\"November\";s:8:\"November\";s:8:\"December\";s:8:\"December\";s:13:\"Word_Comments\";s:10:\"Comments: \";s:18:\"No_comments_posted\";s:21:\"No comments posted...\";s:13:\"Leave_Comment\";s:15:\"Leave a Comment\";s:12:\"Comment_Name\";s:6:\"* Name\";s:13:\"Comment_Email\";s:31:\"* Email (will not be published)\";s:12:\"Comment_here\";s:22:\"* Your comment here...\";s:23:\"Enter_verification_code\";s:25:\"* Enter verification code\";s:15:\"Required_fields\";s:15:\"Required fields\";s:14:\"Submit_Comment\";s:4:\"SEND\";s:16:\"Banned_word_used\";s:18:\"Banned word used! \";s:14:\"Banned_ip_used\";s:24:\"Banned IP address used! \";s:27:\"Incorrect_verification_code\";s:29:\"Incorrect verification code! \";s:17:\"Comment_Submitted\";s:33:\"Your comment has been submitted! \";s:20:\"After_Approval_Admin\";s:55:\"After approval of the administrator will be published! \";s:15:\"required_fields\";s:34:\"Please, fill all required fields! \";s:13:\"correct_email\";s:35:\"Please, fill correct email address!\";s:10:\"field_code\";s:32:\"Please, enter verification code!\";s:18:\"New_comment_posted\";s:19:\"New comment posted!\";s:9:\"metatitle\";s:28:\"Blog Preview Page meta Title\";s:15:\"metadescription\";s:35:\"Blog Preview Page meta description \";s:14:\"You_must_login\";s:38:\"You must login to write your comment. \";s:12:\"Login_button\";s:5:\"Login\";s:15:\"Forgot_password\";s:15:\"Forgot password\";s:23:\"For_registration_please\";s:72:\"For registration please enter your details and click on Register button.\";s:11:\"Login_Email\";s:12:\"Login Email*\";s:14:\"Login_Password\";s:15:\"Login Password*\";s:11:\"Screen_Name\";s:12:\"Screen Name*\";s:10:\"Reg_Avatar\";s:6:\"Avatar\";s:14:\"Sign_Up_button\";s:8:\"Register\";s:31:\"Please_enter_your_email_address\";s:66:\"Please enter your email address and click on Send Password button.\";s:16:\"Send_Pass_button\";s:13:\"Send Password\";s:13:\"Logout_button\";s:6:\"Logout\";s:19:\"Edit_Profile_button\";s:12:\"Edit Profile\";s:19:\"Submit_Comment_link\";s:14:\"Submit Comment\";s:18:\"Change_avatar_link\";s:13:\"Change avatar\";s:20:\"Change_Password_link\";s:15:\"Change Password\";s:28:\"For_changing_password_please\";s:108:\"For changing password please enter your old password and your new password and click Change Password button.\";s:12:\"Old_password\";s:13:\"Old password:\";s:12:\"New_password\";s:13:\"New password:\";s:20:\"New_password_confirm\";s:21:\"New password confirm:\";s:22:\"Change_Password_button\";s:15:\"Change Password\";s:26:\"For_changing_avatar_please\";s:75:\"For changing avatar please select new image and click Update Avatar button.\";s:13:\"delete_avatar\";s:6:\"delete\";s:24:\"If_you_upload_new_avatar\";s:52:\"If you upload new avatar the old one will be deleted\";s:20:\"Update_Avatar_button\";s:13:\"Update Avatar\";s:10:\"user_exist\";s:51:\"We have user with this login email in our database!\";s:15:\"pass_min_3_char\";s:50:\"Please enter your password (minimum 3 characters)!\";s:20:\"Avatar_must_be_image\";s:57:\"Uploaded Avatar must be an image. Avatar is not uploaded.\";s:19:\"Avatar_not_uploaded\";s:23:\"Avatar is not uploaded.\";s:26:\"Thank_you_for_registration\";s:75:\"Thank you for your registration. You can now login and leave your comments.\";s:36:\"Subject_user_successful_registration\";s:32:\"Thank you for the registration. \";s:37:\"Subject_admin_successful_registration\";s:33:\"New registration on blog comments\";s:23:\"Click_on_the_link_below\";s:82:\"Click on the link below to enter admin area and moderate registrations or comments\";s:13:\"email_subject\";s:33:\"Your comment has been submitted! \";s:10:\"email_body\";s:103:\"Thank you for leaving us a comment, It will be reviewed and posted shortly. Thank you for choosing us. \";s:28:\"Password_sent_provided_email\";s:38:\"Password sent to provided login email!\";s:17:\"We_dont_have_user\";s:46:\"We do not have user with provided login email!\";s:19:\"Your_login_password\";s:19:\"Your login password\";s:22:\"Password_sent_to_email\";s:24:\"Your Login Password is: \";s:14:\"Avatar_updated\";s:15:\"Avatar updated!\";s:14:\"Avatar_deleted\";s:16:\"Avatar deleted! \";s:18:\"Wrong_old_password\";s:20:\"Wrong old password! \";s:21:\"New_password_not_same\";s:59:\"New password is not the same in the confirm password field!\";s:16:\"Password_changed\";s:17:\"Password changed!\";s:24:\"Password_changed_subject\";s:31:\"Password changed for guestbook!\";s:22:\"Your_new_login_details\";s:27:\"Your new login details are:\";}');

-- --------------------------------------------------------

--
-- Table structure for table `blogrcal20_posts`
--

CREATE TABLE `blogrcal20_posts` (
  `id` int(11) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `post_title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_text` text COLLATE utf8_unicode_ci,
  `post_limit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_comments` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reviews` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogrcal20_users`
--

CREATE TABLE `blogrcal20_users` (
  `id` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useremail` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogrcal20_categories`
--
ALTER TABLE `blogrcal20_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogrcal20_comments`
--
ALTER TABLE `blogrcal20_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogrcal20_options`
--
ALTER TABLE `blogrcal20_options`
  ADD PRIMARY KEY (`options_id`);

--
-- Indexes for table `blogrcal20_posts`
--
ALTER TABLE `blogrcal20_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogrcal20_users`
--
ALTER TABLE `blogrcal20_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogrcal20_categories`
--
ALTER TABLE `blogrcal20_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blogrcal20_comments`
--
ALTER TABLE `blogrcal20_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blogrcal20_options`
--
ALTER TABLE `blogrcal20_options`
  MODIFY `options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blogrcal20_posts`
--
ALTER TABLE `blogrcal20_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blogrcal20_users`
--
ALTER TABLE `blogrcal20_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
