/*
Navicat MySQL Data Transfer

Source Server         : Projects
Source Server Version : 100129
Source Host           : localhost:3306
Source Database       : socio

Target Server Type    : MYSQL
Target Server Version : 100129
File Encoding         : 65001

Date: 2018-12-09 09:01:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_country_id_foreign` (`country_id`),
  CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cities
-- ----------------------------

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_flag_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_description` varchar(175) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_cover_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for hobbies
-- ----------------------------
DROP TABLE IF EXISTS `hobbies`;
CREATE TABLE `hobbies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of hobbies
-- ----------------------------
INSERT INTO `hobbies` VALUES ('1', 'Reading', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('2', 'Watching TV', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('3', 'Family Time', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('4', 'Going to Movies', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('5', 'Fishing', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('6', 'Computer', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('7', 'Gardening', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('8', 'Renting Movies', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('9', 'Walking', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('10', 'Exercise', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('11', 'Listening to Music', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('12', 'Entertaining', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('13', 'Hunting', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('14', 'Team Sports', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('15', 'Shopping', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('16', 'Traveling', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('17', 'Sleeping', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('18', 'Socializing', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('19', 'Sewing', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('20', 'Golf', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('21', 'Church Activities', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('22', 'Relaxing', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('23', 'Playing Music', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('24', 'Housework', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('25', 'Crafts', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('26', 'Watching Sports', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('27', 'Bicycling', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('28', 'Playing Cards', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('29', 'Hiking', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('30', 'Cooking', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('31', 'Eating Out', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('32', 'Dating Online', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('33', 'Swimming', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('34', 'Camping', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('35', 'Skiing', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('36', 'Working on Cars', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('37', 'Writing', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('38', 'Boating', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('39', 'Motorcycling', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('40', 'Animal Care', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('41', 'Bowling', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('42', 'Painting', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('43', 'Running', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('44', 'Dancing', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('45', 'Horseback Riding', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('46', 'Tennis', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('47', 'Theater', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('48', 'Billiards', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('49', 'Beach', '2018-11-02 11:10:52', '2018-11-02 11:10:52');
INSERT INTO `hobbies` VALUES ('50', 'Volunteer Work', '2018-11-02 11:10:52', '2018-11-02 11:10:52');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_11_01_090947_create_user_direct_messages', '1');
INSERT INTO `migrations` VALUES ('4', '2018_11_01_091600_create_user_following_table', '1');
INSERT INTO `migrations` VALUES ('5', '2018_11_01_091601_create_countries_table', '2');
INSERT INTO `migrations` VALUES ('6', '2018_11_01_091802_create_cities_table', '3');
INSERT INTO `migrations` VALUES ('7', '2018_11_01_091803_create_posts_table', '4');
INSERT INTO `migrations` VALUES ('8', '2018_11_01_091815_create_hobbies_table', '4');
INSERT INTO `migrations` VALUES ('9', '2018_11_01_091842_create_groups_table', '4');
INSERT INTO `migrations` VALUES ('11', '2018_11_01_091951_create_user_locations_table', '5');
INSERT INTO `migrations` VALUES ('12', '2018_11_01_094604_create_user_relationships_table', '5');
INSERT INTO `migrations` VALUES ('13', '2018_11_01_091918_create_user_hobbies_table', '6');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `has_image` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------

-- ----------------------------
-- Table structure for post_comments
-- ----------------------------
DROP TABLE IF EXISTS `post_comments`;
CREATE TABLE `post_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `comment_id` int(10) unsigned NOT NULL,
  `seen` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of post_comments
-- ----------------------------

-- ----------------------------
-- Table structure for post_likes
-- ----------------------------
DROP TABLE IF EXISTS `post_likes`;
CREATE TABLE `post_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `seen` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_likes_post_id_foreign` (`post_id`),
  KEY `post_likes_user_id_foreign` (`user_id`),
  CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of post_likes
-- ----------------------------

-- ----------------------------
-- Table structure for post_media
-- ----------------------------
DROP TABLE IF EXISTS `post_media`;
CREATE TABLE `post_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `media_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_images_post_id_foreign` (`post_id`),
  CONSTRAINT `post_images_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of post_media
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for user_direct_messages
-- ----------------------------
DROP TABLE IF EXISTS `user_direct_messages`;
CREATE TABLE `user_direct_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_user_id` int(10) unsigned NOT NULL,
  `receiver_user_id` int(10) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `sender_delete` tinyint(1) NOT NULL DEFAULT '0',
  `receiver_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_direct_messages_sender_user_id_foreign` (`sender_user_id`),
  KEY `user_direct_messages_receiver_user_id_foreign` (`receiver_user_id`),
  CONSTRAINT `user_direct_messages_receiver_user_id_foreign` FOREIGN KEY (`receiver_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_direct_messages_sender_user_id_foreign` FOREIGN KEY (`sender_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_direct_messages
-- ----------------------------

-- ----------------------------
-- Table structure for user_following
-- ----------------------------
DROP TABLE IF EXISTS `user_following`;
CREATE TABLE `user_following` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `following_user_id` int(10) unsigned NOT NULL,
  `follower_user_id` int(10) unsigned NOT NULL,
  `allow` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_following_following_user_id_foreign` (`following_user_id`),
  KEY `user_following_follower_user_id_foreign` (`follower_user_id`),
  CONSTRAINT `user_following_follower_user_id_foreign` FOREIGN KEY (`follower_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_following_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_following
-- ----------------------------

-- ----------------------------
-- Table structure for user_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `user_groups_group_id_foreign` (`group_id`),
  CONSTRAINT `user_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_groups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_hobbies
-- ----------------------------
DROP TABLE IF EXISTS `user_hobbies`;
CREATE TABLE `user_hobbies` (
  `user_id` int(10) unsigned NOT NULL,
  `hobby_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`hobby_id`),
  KEY `user_hobbies_hobby_id_foreign` (`hobby_id`),
  CONSTRAINT `user_hobbies_hobby_id_foreign` FOREIGN KEY (`hobby_id`) REFERENCES `hobbies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_hobbies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_hobbies
-- ----------------------------

-- ----------------------------
-- Table structure for user_locations
-- ----------------------------
DROP TABLE IF EXISTS `user_locations`;
CREATE TABLE `user_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `latitude` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_locations_user_id_foreign` (`user_id`),
  KEY `user_locations_city_id_foreign` (`city_id`),
  CONSTRAINT `user_locations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `user_locations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_locations
-- ----------------------------

-- ----------------------------
-- Table structure for user_relationships
-- ----------------------------
DROP TABLE IF EXISTS `user_relationships`;
CREATE TABLE `user_relationships` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `related_user_id` int(10) unsigned NOT NULL,
  `main_user_id` int(10) unsigned NOT NULL,
  `relation_type` int(11) NOT NULL DEFAULT '0',
  `allow` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_relationships_related_user_id_foreign` (`related_user_id`),
  KEY `user_relationships_main_user_id_foreign` (`main_user_id`),
  CONSTRAINT `user_relationships_main_user_id_foreign` FOREIGN KEY (`main_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_relationships_related_user_id_foreign` FOREIGN KEY (`related_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_relationships
-- ----------------------------
