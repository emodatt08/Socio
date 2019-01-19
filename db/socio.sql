/*
Navicat MySQL Data Transfer

Source Server         : Projects
Source Server Version : 100129
Source Host           : localhost:3306
Source Database       : socio

Target Server Type    : MYSQL
Target Server Version : 100129
File Encoding         : 65001

Date: 2019-01-19 22:21:13
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
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_official` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code3l` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code2l` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag32` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag128` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `dial_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom` tinyint(1) DEFAULT NULL COMMENT 'Optimal zoom when showing country on map',
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_countries` (`name`,`code3l`,`code2l`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('3', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', 'AF', 'AF-32.png', 'AF-128.png', '33.98299275', '66.39159363', '+93', '6', '1', '2019-01-19 18:54:21', '2019-01-19 20:31:40');
INSERT INTO `countries` VALUES ('4', 'Aland Islands', 'Aland Islands', 'ALA', 'AX', 'AX-32.png', 'AX-128.png', '60.25403213', '20.35918350', '+358', '9', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:40');
INSERT INTO `countries` VALUES ('5', 'Albania', 'Republic of Albania', 'ALB', 'AL', 'AL-32.png', 'AL-128.png', '41.00017358', '19.87170014', '+355', '7', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:40');
INSERT INTO `countries` VALUES ('6', 'Algeria', 'People’s Democratic Republic of Algeria', 'DZA', 'DZ', 'DZ-32.png', 'DZ-128.png', '27.89861690', '3.19771194', '+213', '5', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:40');
INSERT INTO `countries` VALUES ('7', 'American Samoa', 'The United States Territory of American Samoa', 'ASM', 'AS', 'AS-32.png', 'AS-128.png', '-14.30634641', '-170.69501750', '+1684', '11', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:40');
INSERT INTO `countries` VALUES ('8', 'Andorra', 'Principality of Andorra', 'AND', 'AD', 'AD-32.png', 'AD-128.png', '42.54057088', '1.55201340', '+376', '11', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:40');
INSERT INTO `countries` VALUES ('9', 'Angola', 'Republic of Angola', 'AGO', 'AO', 'AO-32.png', 'AO-128.png', '-12.16469683', '16.70933622', '+244', '6', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:40');
INSERT INTO `countries` VALUES ('10', 'Anguilla', 'Anguilla', 'AIA', 'AI', 'AI-32.png', 'AI-128.png', '18.22053521', '-63.06861300', '+1264', '12', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:40');
INSERT INTO `countries` VALUES ('11', 'Antarctica', 'Antarctica', 'ATA', 'AQ', 'AQ-32.png', 'AQ-128.png', '-45.13806295', '10.48095703', '+672', '2', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:40');
INSERT INTO `countries` VALUES ('12', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', 'AG', 'AG-32.png', 'AG-128.png', '17.48060423', '-61.42014426', '+1268', '9', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('13', 'Argentina', 'Argentine Republic', 'ARG', 'AR', 'AR-32.png', 'AR-128.png', '-38.01529308', '-64.97897469', '+54', '4', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('14', 'Armenia', 'Republic of Armenia', 'ARM', 'AM', 'AM-32.png', 'AM-128.png', '40.13475528', '45.01072318', '+374', '7', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('15', 'Aruba', 'Aruba of the Kingdom of the Netherlands', 'ABW', 'AW', 'AW-32.png', 'AW-128.png', '12.52109661', '-69.96833800', '+297', '12', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('16', 'Australia', 'Australia', 'AUS', 'AU', 'AU-32.png', 'AU-128.png', '-26.29594646', '133.55540944', '+61', '4', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('17', 'Austria', 'Republic of Austria', 'AUT', 'AT', 'AT-32.png', 'AT-128.png', '47.63125476', '13.18776731', '+43', '7', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('18', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', 'AZ', 'AZ-32.png', 'AZ-128.png', '40.35321757', '47.46706372', '+994', '7', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('19', 'Bahamas', 'Commonwealth of the Bahamas', 'BHS', 'BS', 'BS-32.png', 'BS-128.png', '24.45991732', '-77.68192453', '+1242', '7', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('20', 'Bahrain', 'Kingdom of Bahrain', 'BHR', 'BH', 'BH-32.png', 'BH-128.png', '25.90740996', '50.65932354', '+973', '9', '1', '2019-01-19 19:03:11', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('21', 'Bangladesh', 'People’s Republic of Bangladesh', 'BGD', 'BD', 'BD-32.png', 'BD-128.png', '24.08273251', '90.49915527', '+880', '7', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('22', 'Barbados', 'Barbados', 'BRB', 'BB', 'BB-32.png', 'BB-128.png', '13.19383077', '-59.54319600', '+1246', '11', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('23', 'Belarus', 'Republic of Belarus', 'BLR', 'BY', 'BY-32.png', 'BY-128.png', '53.58628747', '27.95338900', '+375', '6', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('24', 'Belgium', 'Kingdom of Belgium', 'BEL', 'BE', 'BE-32.png', 'BE-128.png', '50.49593874', '4.46993600', '+32', '8', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('25', 'Belize', 'Belize', 'BLZ', 'BZ', 'BZ-32.png', 'BZ-128.png', '17.21153631', '-88.01424956', '+501', '8', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('26', 'Benin', 'Republic of Benin', 'BEN', 'BJ', 'BJ-32.png', 'BJ-128.png', '9.37180859', '2.29386134', '+229', '7', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('27', 'Bermuda', 'the Bermudas', 'BMU', 'BM', 'BM-32.png', 'BM-128.png', '32.31995785', '-64.76182765', '+1441', '12', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('28', 'Bhutan', 'Kingdom of Bhutan', 'BTN', 'BT', 'BT-32.png', 'BT-128.png', '27.50752756', '90.43360300', '+975', '8', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('29', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', 'BO', 'BO-32.png', 'BO-128.png', '-16.74518128', '-65.19265691', '+591', '6', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('30', 'Bonaire, Saint Eustatius And Saba', 'Bonaire, Saint Eustatius and Saba', 'BES', 'BQ', 'BQ-32.png', 'BQ-128.png', '12.17229702', '-68.28831170', null, '11', '1', '2019-01-19 19:03:12', '2019-01-19 19:03:12');
INSERT INTO `countries` VALUES ('31', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', 'BA', 'BA-32.png', 'BA-128.png', '44.00040856', '17.81640910', '+387', '7', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('32', 'Botswana', 'Republic of Botswana', 'BWA', 'BW', 'BW-32.png', 'BW-128.png', '-22.18279485', '24.22344422', '+267', '6', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('33', 'Bouvet Island', 'Bouvet Island', 'BVT', 'BV', 'BV-32.png', 'BV-128.png', '-54.42316906', '3.41319600', null, '12', '1', '2019-01-19 19:03:12', '2019-01-19 19:03:12');
INSERT INTO `countries` VALUES ('34', 'Brazil', 'Federative Republic of Brazil', 'BRA', 'BR', 'BR-32.png', 'BR-128.png', '-11.80965046', '-53.33152600', '+55', '4', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('35', 'British Indian Ocean Territory', 'The British Indian Ocean Territory', 'IOT', 'IO', 'IO-32.png', 'IO-128.png', '-7.33461519', '72.42425280', '+246', '12', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('36', 'Brunei', 'Brunei Darussalam', 'BRN', 'BN', 'BN-32.png', 'BN-128.png', '4.54189364', '114.60132823', '+673', '9', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('37', 'Bulgaria', 'Republic of Bulgaria', 'BGR', 'BG', 'BG-32.png', 'BG-128.png', '42.70160678', '25.48583200', '+359', '7', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:41');
INSERT INTO `countries` VALUES ('38', 'Burkina Faso', 'Burkina Faso', 'BFA', 'BF', 'BF-32.png', 'BF-128.png', '12.22492458', '-1.56159100', '+226', '7', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('39', 'Burundi', 'Republic of Burundi', 'BDI', 'BI', 'BI-32.png', 'BI-128.png', '-3.40499707', '29.88592902', '+257', '8', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('40', 'Cabo Verde', 'Republic of Cabo Verde', 'CPV', 'CV', 'CV-32.png', 'CV-128.png', '15.11988711', '-23.60517010', '+238', '10', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('41', 'Cambodia', 'Kingdom of Cambodia', 'KHM', 'KH', 'KH-32.png', 'KH-128.png', '12.83288883', '104.84814273', '+855', '7', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('42', 'Cameroon', 'Republic of Cameroon', 'CMR', 'CM', 'CM-32.png', 'CM-128.png', '7.38622543', '12.72825915', '+237', '6', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('43', 'Canada', 'Canada', 'CAN', 'CA', 'CA-32.png', 'CA-128.png', '60.36196817', '-106.69833150', '+1', '4', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('44', 'Cayman Islands', 'The Cayman Islands', 'CYM', 'KY', 'KY-32.png', 'KY-128.png', '19.31322102', '-81.25459800', '+ 345', '11', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('45', 'Central African Republic', 'Central African Republic', 'CAF', 'CF', 'CF-32.png', 'CF-128.png', '6.82541830', '20.64281514', '+236', '6', '1', '2019-01-19 19:03:12', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('46', 'Chad', 'Republic of Chad', 'TCD', 'TD', 'TD-32.png', 'TD-128.png', '14.80342407', '18.78714064', '+235', '5', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('47', 'Chile', 'Republic of Chile', 'CHL', 'CL', 'CL-32.png', 'CL-128.png', '-38.01760790', '-71.40014474', '+56', '4', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('48', 'China', 'People\'s Republic of China', 'CHN', 'CN', 'CN-32.png', 'CN-128.png', '36.71457440', '103.55819197', '+86', '4', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('49', 'Christmas Island', 'Territory of Christmas Island', 'CXR', 'CX', 'CX-32.png', 'CX-128.png', '-10.49170619', '105.68083796', '+61', '11', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('50', 'Cocos (Keeling) Islands', 'Territory of Cocos (Keeling) Islands', 'CCK', 'CC', 'CC-32.png', 'CC-128.png', '-12.12890685', '96.84689104', '+61', '12', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('51', 'Colombia', 'Republic of Colombia', 'COL', 'CO', 'CO-32.png', 'CO-128.png', '3.68182320', '-73.53927436', '+57', '5', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('52', 'Comoros', 'Union of the Comoros', 'COM', 'KM', 'KM-32.png', 'KM-128.png', '-11.64529989', '43.33330200', '+269', '10', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('53', 'Congo', 'Republic of the Congo', 'COG', 'CG', 'CG-32.png', 'CG-128.png', '-0.68967806', '15.69033190', '+242', '6', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:42');
INSERT INTO `countries` VALUES ('54', 'Cook Islands', 'Cook Islands', 'COK', 'CK', 'CK-32.png', 'CK-128.png', '-21.23673066', '-159.77766900', '+682', '13', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('55', 'Costa Rica', 'Republic of Costa Rica', 'CRI', 'CR', 'CR-32.png', 'CR-128.png', '9.98427463', '-84.09949534', '+506', '8', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('56', 'Côte d\'Ivoire', 'Republic of Côte d\'Ivoire', 'CIV', 'CI', 'CI-32.png', 'CI-128.png', '7.59684148', '-5.49214636', '+225', '7', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('57', 'Croatia', 'Republic of Croatia', 'HRV', 'HR', 'HR-32.png', 'HR-128.png', '44.81372482', '16.29039507', '+385', '7', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('58', 'Cuba', 'Republic of Cuba', 'CUB', 'CU', 'CU-32.png', 'CU-128.png', '21.54513189', '-79.00064743', '+53', '6', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('59', 'Curaçao', 'Curaçao', 'CUW', 'CW', 'CW-32.png', 'CW-128.png', '12.20710309', '-69.02160369', null, '11', '1', '2019-01-19 19:03:13', '2019-01-19 19:03:13');
INSERT INTO `countries` VALUES ('60', 'Cyprus', 'Republic of Cyprus', 'CYP', 'CY', 'CY-32.png', 'CY-128.png', '35.12450768', '33.42986100', '+357', '9', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('61', 'Czechia', 'Czech Republic', 'CZE', 'CZ', 'CZ-32.png', 'CZ-128.png', '49.76026136', '15.53888197', '+420', '7', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('62', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'ZAR', 'CD', 'CD-32.png', 'CD-128.png', '-4.05373938', '23.01110741', '+243', '5', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('63', 'Denmark', 'Kingdom of Denmark', 'DNK', 'DK', 'DK-32.png', 'DK-128.png', '54.71794021', '9.41938953', '+45', '6', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('64', 'Djibouti', 'Republic of Djibouti', 'DJI', 'DJ', 'DJ-32.png', 'DJ-128.png', '11.75959257', '42.65344839', '+253', '8', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('65', 'Dominica', 'Commonwealth of Dominica', 'DMA', 'DM', 'DM-32.png', 'DM-128.png', '15.41473963', '-61.37097400', '+1767', '10', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('66', 'Dominican Republic', 'Dominican Republic', 'DOM', 'DO', 'DO-32.png', 'DO-128.png', '18.73076761', '-70.16264900', '+1849', '8', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('67', 'Ecuador', 'Republic of Ecuador', 'ECU', 'EC', 'EC-32.png', 'EC-128.png', '-1.22919037', '-78.55693916', '+593', '6', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('68', 'Egypt', 'Arab Republic of Egypt', 'EGY', 'EG', 'EG-32.png', 'EG-128.png', '26.71650873', '30.80250000', '+20', '6', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('69', 'El Salvador', 'Republic of El Salvador', 'SLV', 'SV', 'SV-32.png', 'SV-128.png', '13.79043561', '-88.89652800', '+503', '8', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:43');
INSERT INTO `countries` VALUES ('70', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', 'GQ', 'GQ-32.png', 'GQ-128.png', '1.65068442', '10.26789700', '+240', '9', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('71', 'Eritrea', 'State of Eritrea', 'ERI', 'ER', 'ER-32.png', 'ER-128.png', '15.21227764', '39.61204792', '+291', '7', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('72', 'Estonia', 'Republic of Estonia', 'EST', 'EE', 'EE-32.png', 'EE-128.png', '58.74041141', '25.38165099', '+372', '7', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('73', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', 'ET', 'ET-32.png', 'ET-128.png', '9.10727589', '39.84148164', '+251', '6', '1', '2019-01-19 19:03:13', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('74', 'European Union', 'European Union', 'EUR', 'EU', 'EU-32.png', 'EU-128.png', '48.76380654', '14.26843140', null, '3', '1', '2019-01-19 19:03:14', '2019-01-19 19:03:14');
INSERT INTO `countries` VALUES ('75', 'Falkland Islands (Malvinas)', 'Falkland Islands', 'FLK', 'FK', 'FK-32.png', 'FK-128.png', '-51.78838251', '-59.52361100', '+500', '8', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('76', 'Faroe Islands', 'Faroe Islands', 'FRO', 'FO', 'FO-32.png', 'FO-128.png', '61.88590482', '-6.91180400', '+298', '8', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('77', 'Fiji', 'Republic of Fiji', 'FJI', 'FJ', 'FJ-32.png', 'FJ-128.png', '-17.71219757', '178.06503600', '+679', '9', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('78', 'Finland', 'Republic of Finland', 'FIN', 'FI', 'FI-32.png', 'FI-128.png', '64.69610892', '26.36339137', '+358', '5', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('79', 'France', 'French Republic', 'FRA', 'FR', 'FR-32.png', 'FR-128.png', '46.48372145', '2.60926281', '+33', '6', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('80', 'French Guiana', 'French Guiana', 'GUF', 'GF', 'GF-32.png', 'GF-128.png', '4.01114381', '-52.97746057', '+594', '7', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('81', 'French Polynesia', 'Territory of French Polynesia', 'PYF', 'PF', 'PF-32.png', 'PF-128.png', '-17.66243898', '-149.40683900', '+689', '10', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('82', 'French Southern and Antarctic Lands', 'Territory of the French Southern and Antarctic Lands', 'ATF', 'TF', 'TF-32.png', 'TF-128.png', '-49.27235903', '69.34856300', null, '8', '1', '2019-01-19 19:03:14', '2019-01-19 19:03:14');
INSERT INTO `countries` VALUES ('83', 'Gabon', 'Gabonese Republic', 'GAB', 'GA', 'GA-32.png', 'GA-128.png', '-0.43426435', '11.43916591', '+241', '7', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('84', 'Georgia', 'Georgia', 'GEO', 'GE', 'GE-32.png', 'GE-128.png', '41.82754301', '44.17329916', '+995', '7', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('85', 'Germany', 'Federal Republic of Germany', 'DEU', 'DE', 'DE-32.png', 'DE-128.png', '50.82871201', '10.97887975', '+49', '6', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('86', 'Ghana', 'Republic of Ghana', 'GHA', 'GH', 'GH-32.png', 'GH-128.png', '7.69154199', '-1.29234904', '+233', '7', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('87', 'Gibraltar', 'Gibraltar', 'GIB', 'GI', 'GI-32.png', 'GI-128.png', '36.14864641', '-5.34404779', '+350', '12', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('88', 'Greece', 'Hellenic Republic', 'GRC', 'GR', 'GR-32.png', 'GR-128.png', '38.52254746', '24.53794505', '+30', '6', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('89', 'Greenland', 'Greenland', 'GRL', 'GL', 'GL-32.png', 'GL-128.png', '71.42932629', '-34.38651956', '+299', '3', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('90', 'Grenada', 'Grenada', 'GRD', 'GD', 'GD-32.png', 'GD-128.png', '12.11644807', '-61.67899400', '+1473', '11', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('91', 'Guadeloupe', 'Department of Guadeloupe', 'GLP', 'GP', 'GP-32.png', 'GP-128.png', '16.26472785', '-61.55099400', '+590', '10', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('92', 'Guam', 'Territory of Guam', 'GUM', 'GU', 'GU-32.png', 'GU-128.png', '13.44410137', '144.80747791', '+1671', '10', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('93', 'Guatemala', 'Republic of Guatemala', 'GTM', 'GT', 'GT-32.png', 'GT-128.png', '15.72598421', '-89.96707712', '+502', '7', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('94', 'Guernsey', 'Bailiwick of Guernsey', 'GGY', 'GG', 'GG-32.png', 'GG-128.png', '49.46565975', '-2.58527200', '+44', '12', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('95', 'Guinea', 'Republic of Guinea', 'GIN', 'GN', 'GN-32.png', 'GN-128.png', '9.94301472', '-11.31711839', '+224', '7', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('96', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', 'GW', 'GW-32.png', 'GW-128.png', '11.80050682', '-15.18040700', '+245', '8', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('97', 'Guyana', 'Republic of Guyana', 'GUY', 'GY', 'GY-32.png', 'GY-128.png', '4.47957059', '-58.72692293', '+595', '6', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('98', 'Haiti', 'Republic of Haiti', 'HTI', 'HT', 'HT-32.png', 'HT-128.png', '19.07430861', '-72.79607526', '+509', '8', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('99', 'Heard Island And McDonald Islands', 'Heard and McDonald Islands', 'HMD', 'HM', 'HM-32.png', 'HM-128.png', '-53.08168847', '73.50415800', null, '11', '1', '2019-01-19 19:03:14', '2019-01-19 19:03:14');
INSERT INTO `countries` VALUES ('100', 'Honduras', 'Republic of Honduras', 'HND', 'HN', 'HN-32.png', 'HN-128.png', '14.64994423', '-87.01643713', '+504', '7', '1', '2019-01-19 19:03:14', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('101', 'Hong Kong', 'Hong Kong Special Administrative Region of the People\'s Republic', 'HKG', 'HK', 'HK-32.png', 'HK-128.png', '22.33728531', '114.14657786', '+852', '11', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('102', 'Hungary', 'Republic of Hungary', 'HUN', 'HU', 'HU-32.png', 'HU-128.png', '46.97670384', '19.35499657', '+36', '7', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('103', 'Iceland', 'Republic of Iceland', 'ISL', 'IS', 'IS-32.png', 'IS-128.png', '64.99294495', '-18.57038755', '+354', '6', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('104', 'India', 'Republic of India', 'IND', 'IN', 'IN-32.png', 'IN-128.png', '20.46549519', '78.50146222', '+91', '4', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('105', 'Indonesia', 'Republic of Indonesia', 'IDN', 'ID', 'ID-32.png', 'ID-128.png', '-2.46229680', '121.18329789', '+62', '4', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('106', 'Iran', 'Islamic Republic of Iran', 'IRN', 'IR', 'IR-32.png', 'IR-128.png', '31.40240324', '51.28204814', '+98', '5', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('107', 'Iraq', 'Republic of Iraq', 'IRQ', 'IQ', 'IQ-32.png', 'IQ-128.png', '32.90170182', '43.19590056', '+964', '6', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('108', 'Ireland', 'Ireland', 'IRL', 'IE', 'IE-32.png', 'IE-128.png', '53.10101628', '-8.21092302', '+353', '6', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('109', 'Isle of Man', 'The Isle of Man', 'IMN', 'IM', 'IM-32.png', 'IM-128.png', '54.23562697', '-4.54805400', '+44', '10', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('110', 'Israel', 'State of Israel', 'ISR', 'IL', 'IL-32.png', 'IL-128.png', '30.85883075', '34.91753797', '+972', '7', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('111', 'Italy', 'Republic of Italy', 'ITA', 'IT', 'IT-32.png', 'IT-128.png', '41.77810840', '12.67725128', '+39', '5', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('112', 'Jamaica', 'Jamaica', 'JAM', 'JM', 'JM-32.png', 'JM-128.png', '18.10838487', '-77.29750600', '+1876', '9', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('113', 'Japan', 'Japan', 'JPN', 'JP', 'JP-32.png', 'JP-128.png', '37.51848822', '137.67066061', '+81', '5', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('114', 'Jersey', 'Bailiwick of Jersey', 'JEY', 'JE', 'JE-32.png', 'JE-128.png', '49.21440771', '-2.13124600', '+44', '12', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('115', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', 'JO', 'JO-32.png', 'JO-128.png', '31.31616588', '36.37575510', '+962', '7', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('116', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', 'KZ', 'KZ-32.png', 'KZ-128.png', '45.38592596', '68.81334444', '+77', '4', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('117', 'Kenya', 'Republic of Kenya', 'KEN', 'KE', 'KE-32.png', 'KE-128.png', '0.19582452', '37.97212297', '+254', '6', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('118', 'Kiribati', 'Republic of Kiribati', 'KIR', 'KI', 'KI-32.png', 'KI-128.png', '1.87085244', '-157.36259310', '+686', '10', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('119', 'Kuwait', 'State of Kuwait', 'KWT', 'KW', 'KW-32.png', 'KW-128.png', '29.43253341', '47.71798405', '+965', '8', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('120', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', 'KG', 'KG-32.png', 'KG-128.png', '41.11509878', '74.25524574', '+996', '6', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('121', 'Laos', 'Lao People’s Democratic Republic', 'LAO', 'LA', 'LA-32.png', 'LA-128.png', '17.76075593', '103.61611347', '+856', '6', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('122', 'Latvia', 'Republic of Latvia', 'LVA', 'LV', 'LV-32.png', 'LV-128.png', '56.86697515', '24.54826936', '+371', '7', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('123', 'Lebanon', 'Lebanese Republic', 'LBN', 'LB', 'LB-32.png', 'LB-128.png', '34.08249284', '35.66454309', '+961', '8', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('124', 'Lesotho', 'Kingdom of Lesotho', 'LSO', 'LS', 'LS-32.png', 'LS-128.png', '-29.60303205', '28.23361200', '+266', '8', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('125', 'Liberia', 'Republic of Liberia', 'LBR', 'LR', 'LR-32.png', 'LR-128.png', '6.44154681', '-9.39103485', '+231', '7', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('126', 'Libya', 'Socialist People’s Libyan Arab Jamahiriya', 'LBY', 'LY', 'LY-32.png', 'LY-128.png', '27.06902914', '18.19513987', '+218', '5', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('127', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', 'LI', 'LI-32.png', 'LI-128.png', '47.16587383', '9.55537700', '+423', '11', '1', '2019-01-19 19:03:15', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('128', 'Lithuania', 'Republic of Lithuania', 'LTU', 'LT', 'LT-32.png', 'LT-128.png', '55.25095948', '23.80987587', '+370', '7', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('129', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', 'LU', 'LU-32.png', 'LU-128.png', '49.81327712', '6.12958700', '+352', '9', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('130', 'Macao', 'Macau Special Administrative Region', 'MAC', 'MO', 'MO-32.png', 'MO-128.png', '22.19872287', '113.54387700', '+853', '12', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('131', 'Macedonia', 'The former Yugoslav Republic of Macedonia', 'MKD', 'MK', 'MK-32.png', 'MK-128.png', '41.60059479', '21.74527900', '+389', '8', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('132', 'Madagascar', 'Republic of Madagascar', 'MDG', 'MG', 'MG-32.png', 'MG-128.png', '-19.79858543', '46.97898228', '+261', '5', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('133', 'Malawi', 'Republic of Malawi', 'MWI', 'MW', 'MW-32.png', 'MW-128.png', '-12.48684092', '34.14223524', '+265', '6', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('134', 'Malaysia', 'Malaysia', 'MYS', 'MY', 'MY-32.png', 'MY-128.png', '4.97345793', '106.54609050', '+60', '5', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('135', 'Maldives', 'Republic of Maldives', 'MDV', 'MV', 'MV-32.png', 'MV-128.png', '-0.64224221', '73.13373313', '+960', '12', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('136', 'Mali', 'Republic of Mali', 'MLI', 'ML', 'ML-32.png', 'ML-128.png', '17.69385811', '-1.96368730', '+223', '5', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('137', 'Malta', 'Republic of Malta', 'MLT', 'MT', 'MT-32.png', 'MT-128.png', '35.89706403', '14.43687877', '+356', '11', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('138', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', 'MH', 'MH-32.png', 'MH-128.png', '7.30130732', '168.75512619', '+692', '10', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('139', 'Martinique', 'Department of Martinique', 'MTQ', 'MQ', 'MQ-32.png', 'MQ-128.png', '14.64128045', '-61.02417600', '+596', '10', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('140', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', 'MR', 'MR-32.png', 'MR-128.png', '20.28331239', '-10.21573334', '+222', '5', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('141', 'Mauritius', 'Republic of Mauritius', 'MUS', 'MU', 'MU-32.png', 'MU-128.png', '-20.28368188', '57.56588291', '+230', '10', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('142', 'Mayotte', 'Overseas Department of Mayotte', 'MYT', 'YT', 'YT-32.png', 'YT-128.png', '-12.82744522', '45.16624200', '+262', '11', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('143', 'Mexico', 'United Mexican States', 'MEX', 'MX', 'MX-32.png', 'MX-128.png', '22.92036676', '-102.33305344', '+52', '5', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('144', 'Micronesia', 'Federated States of Micronesia', 'FSM', 'FM', 'FM-32.png', 'FM-128.png', '6.88747377', '158.21507170', '+691', '12', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('145', 'Moldova', 'Republic of Moldova', 'MDA', 'MD', 'MD-32.png', 'MD-128.png', '47.10710437', '28.54018109', '+373', '7', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('146', 'Monaco', 'Principality of Monaco', 'MCO', 'MC', 'MC-32.png', 'MC-128.png', '43.70463620', '6.75444978', '+377', '9', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('147', 'Mongolia', 'Mongolia', 'MNG', 'MN', 'MN-32.png', 'MN-128.png', '46.80556270', '104.30808978', '+976', '5', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:46');
INSERT INTO `countries` VALUES ('148', 'Montenegro', 'Montenegro', 'MNE', 'ME', 'ME-32.png', 'ME-128.png', '42.71699590', '19.09699321', '+382', '8', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('149', 'Montserrat', 'Montserrat', 'MSR', 'MS', 'MS-32.png', 'MS-128.png', '16.74774077', '-62.18736600', '+1664', '12', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('150', 'Morocco', 'Kingdom of Morocco', 'MAR', 'MA', 'MA-32.png', 'MA-128.png', '31.95441758', '-7.26839325', '+212', '6', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('151', 'Mozambique', 'Republic of Mozambique', 'MOZ', 'MZ', 'MZ-32.png', 'MZ-128.png', '-19.07617816', '33.81570282', '+258', '5', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('152', 'Myanmar', 'Union of Myanmar', 'MMR', 'MM', 'MM-32.png', 'MM-128.png', '19.20985380', '96.54949272', '+95', '5', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('153', 'Namibia', 'Republic of Namibia', 'NAM', 'NA', 'NA-32.png', 'NA-128.png', '-22.70965620', '16.72161918', '+264', '6', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('154', 'Nauru', 'Republic of Nauru', 'NRU', 'NR', 'NR-32.png', 'NR-128.png', '-0.52586763', '166.93270463', '+674', '13', '1', '2019-01-19 19:03:16', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('155', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', 'NP', 'NP-32.png', 'NP-128.png', '28.28430770', '83.98119373', '+977', '7', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('156', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', 'NL', 'NL-32.png', 'NL-128.png', '52.33939951', '4.98914998', '+31', '7', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('157', 'New Caledonia', 'Territory of New Caledonia and Dependencies', 'NCL', 'NC', 'NC-32.png', 'NC-128.png', '-21.26104020', '165.58783760', '+687', '8', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('158', 'New Zealand', 'New Zealand', 'NZL', 'NZ', 'NZ-32.png', 'NZ-128.png', '-40.95025298', '171.76586181', '+64', '5', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('159', 'Nicaragua', 'Republic of Nicaragua', 'NIC', 'NI', 'NI-32.png', 'NI-128.png', '12.91806226', '-84.82270352', '+505', '7', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('160', 'Niger', 'Republic of the Niger', 'NER', 'NE', 'NE-32.png', 'NE-128.png', '17.23446679', '8.23547860', '+227', '6', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('161', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', 'NG', 'NG-32.png', 'NG-128.png', '9.02165273', '7.82933373', '+234', '6', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('162', 'Niue', 'Niue', 'NIU', 'NU', 'NU-32.png', 'NU-128.png', '-19.04976362', '-169.86585571', '+683', '11', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('163', 'Norfolk Island', 'Norfolk Islands', 'NFK', 'NF', 'NF-32.png', 'NF-128.png', '-29.02801043', '167.94303023', '+672', '13', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('164', 'North Korea', 'Democratic People\'s Republic of Korea', 'PRK', 'KP', 'KP-32.png', 'KP-128.png', '40.00785500', '127.48812834', '+850', '6', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('165', 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands', 'MNP', 'MP', 'MP-32.png', 'MP-128.png', '15.09783636', '145.67390000', '+1670', '11', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('166', 'Norway', 'Kingdom of Norway', 'NOR', 'NO', 'NO-32.png', 'NO-128.png', '65.04680297', '13.50069228', '+47', '4', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('167', 'Oman', 'Sultanate of Oman', 'OMN', 'OM', 'OM-32.png', 'OM-128.png', '20.69906846', '56.69230596', '+968', '6', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('168', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', 'PK', 'PK-32.png', 'PK-128.png', '29.90335974', '70.34487986', '+92', '5', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('169', 'Palau', 'Republic of Palau', 'PLW', 'PW', 'PW-32.png', 'PW-128.png', '7.49856307', '134.57291496', '+680', '10', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('170', 'Palestinian Territory, Occupied', 'the Occupied Palestinian Territory', 'PSE', 'PS', 'PS-32.png', 'PS-128.png', '32.26367103', '35.21936714', '+970', '8', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('171', 'Panama', 'Republic of Panama', 'PAN', 'PA', 'PA-32.png', 'PA-128.png', '8.52135102', '-80.04603702', '+507', '7', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('172', 'Papua New Guinea', 'Papua New Guinea', 'PNG', 'PG', 'PG-32.png', 'PG-128.png', '-6.62414046', '144.44993477', '+675', '7', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('173', 'Paraguay', 'Republic of Paraguay', 'PRY', 'PY', 'PY-32.png', 'PY-128.png', '-23.38564782', '-58.29551057', '+595', '6', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('174', 'Peru', 'Republic of Peru', 'PER', 'PE', 'PE-32.png', 'PE-128.png', '-8.50205247', '-76.15772412', '+51', '5', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('175', 'Philippines', 'Republic of the Philippines', 'PHL', 'PH', 'PH-32.png', 'PH-128.png', '12.82361200', '121.77401700', '+63', '6', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('176', 'Pitcairn Islands', 'Pitcairn Group of Islands', 'PCN', 'PN', 'PN-32.png', 'PN-128.png', '-24.37673925', '-128.32423730', '+872', '13', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('177', 'Poland', 'Republic of Poland', 'POL', 'PL', 'PL-32.png', 'PL-128.png', '52.10117636', '19.33190957', '+48', '6', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('178', 'Portugal', 'Portuguese Republic', 'PRT', 'PT', 'PT-32.png', 'PT-128.png', '39.44879136', '-8.03768042', '+351', '6', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:47');
INSERT INTO `countries` VALUES ('179', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', 'PR', 'PR-32.png', 'PR-128.png', '18.21963053', '-66.59015100', '+1939', '9', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('180', 'Qatar', 'State of Qatar', 'QAT', 'QA', 'QA-32.png', 'QA-128.png', '25.24551555', '51.24431480', '+974', '8', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('181', 'Réunion', 'Department of Reunion', 'REU', 'RE', 'RE-32.png', 'RE-128.png', '-21.11480084', '55.53638200', '+262', '10', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('182', 'Romania', 'Romania', 'ROU', 'RO', 'RO-32.png', 'RO-128.png', '45.56450023', '25.21945155', '+40', '6', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('183', 'Russia', 'Russian Federation', 'RUS', 'RU', 'RU-32.png', 'RU-128.png', '57.96812298', '102.41837137', '+7', '3', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('184', 'Rwanda', 'Republic of Rwanda', 'RWA', 'RW', 'RW-32.png', 'RW-128.png', '-1.98589079', '29.94255855', '+250', '8', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('185', 'Saint Barthélemy', 'Territorial collectivity of Saint Barthélemy', 'BLM', 'BL', 'BL-32.png', 'BL-128.png', '17.90042417', '-62.83376215', '+590', '13', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('186', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', 'SH', 'SH-32.png', 'SH-128.png', '-37.10521846', '-12.27768580', '+290', '12', '1', '2019-01-19 19:03:17', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('187', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'KNA', 'KN', 'KN-32.png', 'KN-128.png', '17.33453669', '-62.76411725', '+1869', '12', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('188', 'Saint Lucia', 'Saint Lucia', 'LCA', 'LC', 'LC-32.png', 'LC-128.png', '13.90938495', '-60.97889500', '+1758', '11', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('189', 'Saint Martin', 'Saint Martin', 'MAF', 'MF', 'MF-32.png', 'MF-128.png', '18.07637107', '-63.05019106', '+590', '12', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('190', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', 'PM', 'PM-32.png', 'PM-128.png', '46.88469499', '-56.31590200', '+508', '10', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('191', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', 'VC', 'VC-32.png', 'VC-128.png', '13.25276143', '-61.19709800', '+1784', '11', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('192', 'Samoa', 'Independent State of Samoa', 'WSM', 'WS', 'WS-32.png', 'WS-128.png', '-13.57998954', '-172.45207363', '+685', '10', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('193', 'San Marino', 'Republic of San Marino', 'SMR', 'SM', 'SM-32.png', 'SM-128.png', '43.94223356', '12.45777700', '+378', '11', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('194', 'Sao Tome and Principe', 'Democratic Republic of Sao Tome and  Principe', 'STP', 'ST', 'ST-32.png', 'ST-128.png', '0.23381910', '6.59935809', '+239', '10', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('195', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', 'SA', 'SA-32.png', 'SA-128.png', '24.16687314', '42.88190638', '+966', '5', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('196', 'Senegal', 'Republic of Senegal', 'SEN', 'SN', 'SN-32.png', 'SN-128.png', '14.43579003', '-14.68306489', '+221', '7', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('197', 'Serbia', 'Republic of Serbia', 'SRB', 'RS', 'RS-32.png', 'RS-128.png', '44.06736041', '20.29725084', '+381', '7', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('198', 'Seychelles', 'Republic of Seychelles', 'SYC', 'SC', 'SC-32.png', 'SC-128.png', '-4.68053204', '55.49061371', '+248', '11', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('199', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', 'SL', 'SL-32.png', 'SL-128.png', '8.45575589', '-11.93368759', '+232', '8', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('200', 'Singapore', 'Republic of Singapore', 'SGP', 'SG', 'SG-32.png', 'SG-128.png', '1.33873261', '103.83323559', '+65', '11', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('201', 'Sint Maarten', 'Sint Maarten', 'SXM', 'SX', 'SX-32.png', 'SX-128.png', '18.04433885', '-63.05616320', null, '12', '1', '2019-01-19 19:03:18', '2019-01-19 19:03:18');
INSERT INTO `countries` VALUES ('202', 'Slovakia', 'Slovak Republic', 'SVK', 'SK', 'SK-32.png', 'SK-128.png', '48.66923253', '19.75396564', '+421', '7', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('203', 'Slovenia', 'Republic of Slovenia', 'SVN', 'SI', 'SI-32.png', 'SI-128.png', '46.14315048', '14.99546300', '+386', '8', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('204', 'Solomon Islands', 'Solomon Islands', 'SLB', 'SB', 'SB-32.png', 'SB-128.png', '-9.64554280', '160.15619400', '+677', '10', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('205', 'Somalia', 'Somali Republic', 'SOM', 'SO', 'SO-32.png', 'SO-128.png', '2.87224619', '45.27676444', '+252', '7', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('206', 'South Africa', 'Republic of South Africa', 'ZAF', 'ZA', 'ZA-32.png', 'ZA-128.png', '-27.17706863', '24.50856092', '+27', '5', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('207', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', 'GS', 'GS-32.png', 'GS-128.png', '-54.38130284', '-36.67305304', '+500', '9', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('208', 'South Korea', 'Republic of Korea', 'KOR', 'KR', 'KR-32.png', 'KR-128.png', '36.56344139', '127.51424646', '+82', '7', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('209', 'South Sudan', 'Republic of South Sudan', 'SSD', 'SS', 'SS-32.png', 'SS-128.png', '7.91320803', '30.15342434', '+211', '6', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('210', 'Spain', 'Kingdom of Spain', 'ESP', 'ES', 'ES-32.png', 'ES-128.png', '39.87299401', '-3.67089492', '+34', '6', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('211', 'Sri Lanka', 'Democratic Socialist Republic of Sri  Lanka', 'LKA', 'LK', 'LK-32.png', 'LK-128.png', '7.61264985', '80.83772497', '+94', '7', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('212', 'Sudan', 'Republic of the Sudan', 'SDN', 'SD', 'SD-32.png', 'SD-128.png', '15.96646839', '30.37145459', '+249', '5', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('213', 'Suriname', 'Republic of Suriname', 'SUR', 'SR', 'SR-32.png', 'SR-128.png', '4.26470865', '-55.93988238', '+597', '7', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('214', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', 'SJ', 'SJ-32.png', 'SJ-128.png', '77.92215764', '18.99010622', '+47', '4', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:48');
INSERT INTO `countries` VALUES ('215', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', 'SZ', 'SZ-32.png', 'SZ-128.png', '-26.53892570', '31.47960891', '+268', '9', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('216', 'Sweden', 'Kingdom of Sweden', 'SWE', 'SE', 'SE-32.png', 'SE-128.png', '61.42370427', '16.73188991', '+46', '4', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('217', 'Switzerland', 'Swiss Confederation', 'CHE', 'CH', 'CH-32.png', 'CH-128.png', '46.81010721', '8.22751200', '+41', '8', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('218', 'Syria', 'Syrian Arab Republic', 'SYR', 'SY', 'SY-32.png', 'SY-128.png', '34.71097430', '38.66723516', '+963', '6', '1', '2019-01-19 19:03:18', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('219', 'Taiwan', 'Republic of China', 'TWN', 'TW', 'TW-32.png', 'TW-128.png', '23.71891402', '121.10884043', '+886', '7', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('220', 'Tajikistan', 'Republic of Tajikistan', 'TJK', 'TJ', 'TJ-32.png', 'TJ-128.png', '38.68075124', '71.23215769', '+992', '7', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('221', 'Tanzania', 'United Republic of Tanzania', 'TZA', 'TZ', 'TZ-32.png', 'TZ-128.png', '-6.37551085', '34.85587302', '+255', '6', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('222', 'Thailand', 'Kingdom of Thailand', 'THA', 'TH', 'TH-32.png', 'TH-128.png', '14.60009810', '101.38805881', '+66', '5', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('223', 'The Gambia', 'Republic of The Gambia', 'GMB', 'GM', 'GM-32.png', 'GM-128.png', '13.15921146', '-15.35956748', '+220', '8', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:44');
INSERT INTO `countries` VALUES ('224', 'Timor-Leste', 'Democratic Republic of Timor-Leste', 'TLS', 'TL', 'TL-32.png', 'TL-128.png', '-8.88926365', '125.99671404', '+670', '9', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('225', 'Togo', 'Togolese Republic', 'TGO', 'TG', 'TG-32.png', 'TG-128.png', '8.68089206', '0.86049757', '+228', '7', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('226', 'Tokelau', 'Tokelau', 'TKL', 'TK', 'TK-32.png', 'TK-128.png', '-9.16682644', '-171.83981693', '+690', '10', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('227', 'Tonga', 'Kingdom of Tonga', 'TON', 'TO', 'TO-32.png', 'TO-128.png', '-21.17890075', '-175.19824200', '+676', '11', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('228', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', 'TT', 'TT-32.png', 'TT-128.png', '10.43241863', '-61.22250300', '+1868', '10', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('229', 'Tunisia', 'Republic of Tunisia', 'TUN', 'TN', 'TN-32.png', 'TN-128.png', '33.88431940', '9.71878341', '+216', '6', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('230', 'Turkey', 'Republic of Turkey', 'TUR', 'TR', 'TR-32.png', 'TR-128.png', '38.27069555', '36.28703317', '+90', '5', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('231', 'Turkmenistan', 'Turkmenistan', 'TKM', 'TM', 'TM-32.png', 'TM-128.png', '38.94915421', '59.06190323', '+993', '6', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('232', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', 'TC', 'TC-32.png', 'TC-128.png', '21.72816866', '-71.79654471', '+1649', '9', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('233', 'Tuvalu', 'Tuvalu', 'TUV', 'TV', 'TV-32.png', 'TV-128.png', '-8.45968122', '179.13310944', '+688', '12', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('234', 'Uganda', 'Republic of Uganda', 'UGA', 'UG', 'UG-32.png', 'UG-128.png', '1.54760620', '32.44409759', '+256', '7', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('235', 'Ukraine', 'Ukraine', 'UKR', 'UA', 'UA-32.png', 'UA-128.png', '48.89358596', '31.10516920', '+380', '6', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:49');
INSERT INTO `countries` VALUES ('236', 'United Arab Emirates', 'United Arab Emirates', 'ARE', 'AE', 'AE-32.png', 'AE-128.png', '24.64324405', '53.62261227', '+971', '7', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('237', 'United Kingdom', 'United Kingdom of Great Britain and Northern Ireland', 'GBR', 'GB', 'GB-32.png', 'GB-128.png', '53.36540813', '-2.72184767', '+44', '6', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('238', 'United States', 'United States of America', 'USA', 'US', 'US-32.png', 'US-128.png', '37.66895362', '-102.39256450', '+1', '4', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('239', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', 'UM', 'UM-32.png', 'UM-128.png', '19.46305694', '177.98631092', null, '5', '1', '2019-01-19 19:03:19', '2019-01-19 19:03:19');
INSERT INTO `countries` VALUES ('240', 'United States Virgin Islands', 'Virgin Islands of the United States', 'VIR', 'VI', 'VI-32.png', 'VI-128.png', '18.01000938', '-64.77411410', '+1340', '9', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('241', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', 'UY', 'UY-32.png', 'UY-128.png', '-32.49342987', '-55.76583300', '+598', '7', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('242', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', 'UZ', 'UZ-32.png', 'UZ-128.png', '41.30829147', '62.62970960', '+998', '6', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('243', 'Vanuatu', 'Republic of Vanuatu', 'VUT', 'VU', 'VU-32.png', 'VU-128.png', '-15.37256614', '166.95916000', '+678', '8', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('244', 'Vatican City State', 'State of the Vatican City', 'VAT', 'VA', 'VA-32.png', 'VA-128.png', '41.90377810', '12.45340142', '+379', '16', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:45');
INSERT INTO `countries` VALUES ('245', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', 'VE', 'VE-32.png', 'VE-128.png', '5.98477766', '-65.94152264', '+58', '6', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('246', 'Viet Nam', 'Socialist Republic of Viet Nam', 'VNM', 'VN', 'VN-32.png', 'VN-128.png', '17.19931699', '107.14012804', '+84', '5', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('247', 'Virgin Islands', 'British Virgin Islands', 'VGB', 'VG', 'VG-32.png', 'VG-128.png', '17.67004187', '-64.77411010', '+1284', '10', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('248', 'Wallis and Futuna', 'Territory of the Wallis and Futuna Islands', 'WLF', 'WF', 'WF-32.png', 'WF-128.png', '-14.29378486', '-178.11649800', '+681', '12', '1', '2019-01-19 19:03:19', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('249', 'Western Sahara', 'Western Sahara', 'ESH', 'EH', 'EH-32.png', 'EH-128.png', '24.79324356', '-13.67683563', null, '6', '1', '2019-01-19 19:03:20', '2019-01-19 19:03:20');
INSERT INTO `countries` VALUES ('250', 'Yemen', 'Republic of Yemen', 'YEM', 'YE', 'YE-32.png', 'YE-128.png', '15.60865453', '47.60453676', '+967', '6', '1', '2019-01-19 19:03:20', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('251', 'Zambia', 'Republic of Zambia', 'ZMB', 'ZM', 'ZM-32.png', 'ZM-128.png', '-13.01812188', '28.33274444', '+260', '6', '1', '2019-01-19 19:03:20', '2019-01-19 20:31:50');
INSERT INTO `countries` VALUES ('252', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', 'ZW', 'ZW-32.png', 'ZW-128.png', '-19.00784952', '30.18758584', '+263', '6', '1', '2019-01-19 19:03:20', '2019-01-19 20:31:50');

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
