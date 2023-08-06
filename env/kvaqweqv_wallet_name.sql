-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 07, 2023 at 02:05 AM
-- Server version: 5.7.41
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kvaqweqv_wallet_name`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_accountmodel`
--

CREATE TABLE `account_accountmodel` (
  `id` int(11) NOT NULL,
  `account_name` varchar(30) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_accountmodel`
--

INSERT INTO `account_accountmodel` (`id`, `account_name`, `user_id`) VALUES
(1, 'Union', 1),
(2, 'Kotak', 1),
(3, 'Paytm', 1),
(4, 'Cash', 1),
(6, 'Uni', 2),
(7, 'kokak', 2),
(8, 'SBI', 3),
(9, 'kotal', 3);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add type model', 1, 'add_typemodel'),
(2, 'Can change type model', 1, 'change_typemodel'),
(3, 'Can delete type model', 1, 'delete_typemodel'),
(4, 'Can view type model', 1, 'view_typemodel'),
(5, 'Can add category model', 2, 'add_categorymodel'),
(6, 'Can change category model', 2, 'change_categorymodel'),
(7, 'Can delete category model', 2, 'delete_categorymodel'),
(8, 'Can view category model', 2, 'view_categorymodel'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add account model', 7, 'add_accountmodel'),
(26, 'Can change account model', 7, 'change_accountmodel'),
(27, 'Can delete account model', 7, 'delete_accountmodel'),
(28, 'Can view account model', 7, 'view_accountmodel'),
(29, 'Can add manage model', 8, 'add_managemodel'),
(30, 'Can change manage model', 8, 'change_managemodel'),
(31, 'Can delete manage model', 8, 'delete_managemodel'),
(32, 'Can view manage model', 8, 'view_managemodel'),
(33, 'Can add log entry', 9, 'add_logentry'),
(34, 'Can change log entry', 9, 'change_logentry'),
(35, 'Can delete log entry', 9, 'delete_logentry'),
(36, 'Can view log entry', 9, 'view_logentry'),
(37, 'Can add session', 10, 'add_session'),
(38, 'Can change session', 10, 'change_session'),
(39, 'Can delete session', 10, 'delete_session'),
(40, 'Can view session', 10, 'view_session'),
(41, 'Can add profile', 11, 'add_profile'),
(42, 'Can change profile', 11, 'change_profile'),
(43, 'Can delete profile', 11, 'delete_profile'),
(44, 'Can view profile', 11, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$90lTGmTbaGtv$KAKaPYKfq9saJjk8ioxJxbql8BIbhPjmOKE1PF4xaQI=', NULL, 1, 'admin', '', '', '', 1, 1, '2023-07-12 18:33:51.800749'),
(2, 'pbkdf2_sha256$216000$Z3SqStGCsQNl$kWOr+P+Vf5lTjqrift4hp/RBKguCGLKlk+5b9UAc3YY=', NULL, 1, 'demo', '', '', '', 1, 1, '2023-07-12 18:45:57.822609'),
(3, 'pbkdf2_sha256$216000$6rVplkxkAMWa$nDejiHViP153k8Q1sZNxEsY0XC2qjpIG43SpPR96ZMQ=', NULL, 1, 'manthan', '', '', 'manthanakbari999@gmail.com', 1, 1, '2023-07-26 13:13:12.626824'),
(4, 'pbkdf2_sha256$216000$RmGZe3dYYUUv$3o+ekaglAHUbp8Nk+rekJUMAXvcQE7EsVlTx5mpV8fA=', NULL, 1, 'soniprathmesh', '', '', 'prathmesh.soni51@gmail.com', 1, 1, '2023-07-26 16:37:04.674312'),
(5, 'pbkdf2_sha256$216000$TRfM1l1IH24l$sbuO6Jzk9EB5ySxBiavVIUgpYCDIFOD++Gpce12JZ/o=', NULL, 0, 'manthan18', '', '', 'mdbbusiness1803@gmail.com', 0, 1, '2023-07-27 13:44:20.649292'),
(6, 'pbkdf2_sha256$216000$V4Thtrzyhv5u$Ko/wJoFRihBWzsDril//PWOqlwQnLoxIzYqZStssOpU=', NULL, 0, 'mda', '', '', 'mdp24018@gmail.com', 0, 1, '2023-07-28 12:35:46.954076'),
(7, 'pbkdf2_sha256$216000$7wTjhXvmCgZu$0b/8DqGRJ9YJLoLRyvW82cdNyE8YxTTd5Ub7XEXeNjM=', NULL, 0, 'demo1', '', '', 'sonichhotu25@gmail.com', 0, 1, '2023-07-30 09:21:34.925594'),
(8, 'pbkdf2_sha256$216000$95n7qfvbCSwR$Kt3pNidfD0dKPDdytLF+GSAHne8DcxoNeBuPMta/mdY=', NULL, 0, 'demo11', '', '', 'mksoni18091@gmail.com', 0, 1, '2023-07-30 09:27:36.593314'),
(9, 'pbkdf2_sha256$216000$nMSoV7eJ5Ybn$f6Wzf8lPdnffXkFUXsKnEpySyvInaXyynU1i8qGGgKQ=', NULL, 0, 'demo3', '', '', 'mksoni1809@gmail.com', 0, 1, '2023-07-30 09:28:40.311934');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_categorymodel`
--

CREATE TABLE `category_categorymodel` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(30) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_categorymodel`
--

INSERT INTO `category_categorymodel` (`id`, `cat_name`, `user_id`) VALUES
(1, 'food', 1),
(2, 'default', 1),
(3, 'transport', 1),
(4, 'salary', 1),
(5, 'bouns', 1),
(6, 'other', 1),
(7, 'study', 1),
(8, 'clothes', 1),
(9, 'bike', 1),
(10, 'collage food', 1),
(11, 'chrg', 1),
(12, 'demo', 2),
(13, 'demosas', 2),
(14, 'asdas', 2),
(15, 'medicine', 1),
(16, 'food', 2),
(17, 'mgg', 3),
(18, 'zxcz', 3),
(20, 'hairstyles', 1),
(21, 'home food', 1),
(22, 'ji', 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'account', 'accountmodel'),
(9, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(2, 'category', 'categorymodel'),
(6, 'contenttypes', 'contenttype'),
(8, 'management', 'managemodel'),
(10, 'sessions', 'session'),
(1, 'Types', 'typemodel'),
(11, 'User', 'profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Types', '0001_initial', '2023-07-12 18:26:37.568037'),
(27, 'contenttypes', '0001_initial', '2023-07-12 18:30:36.236603'),
(28, 'auth', '0001_initial', '2023-07-12 18:30:59.946897'),
(29, 'category', '0001_initial', '2023-07-12 18:31:02.898271'),
(30, 'account', '0001_initial', '2023-07-12 18:31:28.164261'),
(31, 'contenttypes', '0002_remove_content_type_name', '2023-07-12 18:32:28.687699'),
(32, 'auth', '0002_alter_permission_name_max_length', '2023-07-12 18:32:28.694279'),
(33, 'auth', '0003_alter_user_email_max_length', '2023-07-12 18:32:28.700718'),
(34, 'auth', '0004_alter_user_username_opts', '2023-07-12 18:32:28.705646'),
(35, 'auth', '0005_alter_user_last_login_null', '2023-07-12 18:32:28.722426'),
(36, 'auth', '0006_require_contenttypes_0002', '2023-07-12 18:32:28.723428'),
(37, 'auth', '0007_alter_validators_add_error_messages', '2023-07-12 18:32:28.728461'),
(38, 'auth', '0008_alter_user_username_max_length', '2023-07-12 18:32:28.738600'),
(39, 'auth', '0009_alter_user_last_name_max_length', '2023-07-12 18:32:28.749257'),
(40, 'auth', '0010_alter_group_name_max_length', '2023-07-12 18:32:28.758527'),
(41, 'auth', '0011_update_proxy_permissions', '2023-07-12 18:32:28.763897'),
(42, 'auth', '0012_alter_user_first_name_max_length', '2023-07-12 18:32:28.772745'),
(43, 'admin', '0001_initial', '2023-07-12 18:33:00.019089'),
(44, 'admin', '0002_logentry_remove_auto_add', '2023-07-12 18:33:00.059981'),
(45, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-12 18:33:00.065526'),
(46, 'management', '0001_initial', '2023-07-12 18:33:09.546984'),
(47, 'sessions', '0001_initial', '2023-07-12 18:33:12.392313'),
(48, 'User', '0001_initial', '2023-07-25 22:55:12.505943');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1pev3iul9x16udhbdj21k1e1w00vtbfe', '.eJyrViooyixLLEmNT0zJzcxTslKC0Dpw8cwUJStDHaWc_PTMvPiSzNxUINfM0sDU1MLS0lTP3NzEvBYARGcWGg:1qPPcZ:L2_zBJ4nq6CrDGP2xZUHlmxbb8IQ3RLBkNbWi0wgvD8', '2023-08-11 15:43:15.782692'),
('2s71ud72jw9g1d4fwneisf420b2j2x02', 'e30:1qNYj4:MjuVYX984I6ZF-Pux5dQdbvhZm7E4T-Lwe9Q-NLRUig', '2023-08-06 13:02:18.270245'),
('324tvilt3ilevguuvjxtekq1mqqjx3kx', 'eyJwcml2YXRlX2FkbWluIjoiZGVtbyIsInByaXZhdGVfaWQiOjIsImxvZ2luX3RpbWUiOjE2ODk3NjU5NDEuNTkxMzkyfQ:1qM5JN:NIPENAfUpvbDH6F4SdLnNy5bv2yO9XxhJ4jd37ndrjc', '2023-08-02 11:25:41.598698'),
('3r3lxtu1vd6oyum2zcktxbffiuyqn0p0', 'eyJwcml2YXRlX2FkbWluIjoiZGVtbyIsInByaXZhdGVfaWQiOjIsImxvZ2luX3RpbWUiOjE2ODk3NjU5MTcuNTE1NTUxfQ:1qM5Iz:yEDwaJ5ccBJNdRqM6yk8ngKBYQuF9L0aTtw_BTINTW4', '2023-08-02 11:25:17.521467'),
('a6scavth5xnm7mfhox6kww2e0morqpil', 'eyJwcml2YXRlX2FkbWluIjoiZGVtbyIsInByaXZhdGVfaWQiOjIsImxvZ2luX3RpbWUiOjE2ODkxODgzMzguMjkxNzY4fQ:1qJf3C:6cqNrp4mQqHodYcKGx5E0SxC17JZUAuCMu8X2IAHpFk', '2023-07-26 18:58:58.293667'),
('a82pldfryqmpaujclptq0a6wsvoj5190', '.eJyrViooyixLLEmNT0zJzcxTslKC0Dpw8cwUJStDHaWc_PTMvPiSzNxUINfMwtLMzNLE0EDPyNTC0tCiFgBwexZ7:1qLgCQ:ZlRG1Rpe-cXAeUs--R7FiQaHDVKUhkSe6UPo76VXKbM', '2023-08-01 08:36:50.261092'),
('ev3xqohw4hnsx6cafznfdxhiklgv6ws8', 'e30:1qQ276:LnoL017VFF15Xu6E2k8E8pcjZD8NP3jbUi_SqIWWFZo', '2023-08-13 08:49:20.744563'),
('gebm6d36uuv0zdferu175xdqahxx2au0', 'eyJwcml2YXRlX2FkbWluIjoic29uaXByYXRobWVzaCIsInByaXZhdGVfaWQiOjQsImxvZ2luX3RpbWUiOjE2OTAzOTI1NjYuMTc5NDc1fQ:1qOiKE:IDxCRfSNU9yDA49D_3yDUg-WB3JESAlZrcMDsC1fOLs', '2023-08-09 17:29:26.181177'),
('hvfxrjtyjya6axycarhv1hpvrmdzg5qq', 'eyJwcml2YXRlX2FkbWluIjoiZGVtbyIsInByaXZhdGVfaWQiOjIsImxvZ2luX3RpbWUiOjE2OTAzMjU4NDIuNTIzNzYxfQ:1qOQy2:LvQJ2AqhzOlLCpxg1EF9ibb0XZ3j_ZQxHx4va4Cs_2g', '2023-08-08 22:57:22.525414'),
('kqafcxeq0fjx3sdupilifvtlxw8dfmz6', 'eyJwcml2YXRlX2FkbWluIjoiZGVtbyIsInByaXZhdGVfaWQiOjIsImxvZ2luX3RpbWUiOjE2ODkxOTA2MjguNzU4OTIyfQ:1qJfe8:_6KI7dHdIH5J_sOlES0P91Q3GQNPC5GNVpcyqORk4OY', '2023-07-26 19:37:08.764392'),
('qrg74i6p87dwp4yio0xggbl7tkim67eq', '.eJyrViooyixLLEmNT0zJzcxTslKC0Dpw8cwUJStDHaWc_PTMvPiSzNxUINfMwtLQwszC2ELP1NLA1NK8FgBwvhaF:1qJef0:obBxABr26HkV2WB-Ow1q4GCQ0vb-NWKQ_P-wt-o1dxo', '2023-07-26 18:33:58.596579'),
('tcphcwijs4h52871cavt8a6409sjoi0o', '.eJyrViooyixLLEmNT0zJzcxTslKC0Dpw8cwUJStDHaWc_PTMvPiSzNxUINfMwtLMzNLQxFjPwMjc0MSkFgBwTxZv:1qLg87:Ksrl958b7Qm5xpRUmTjWUEv7MOROexbWM7rRWkJJDxQ', '2023-08-01 08:32:23.033137'),
('u15tgtlatjywdza035eha5uhx27rfrgb', 'e30:1qPMg3:1SlV3qYTdOxxRSi1fHnlsytUAktwjDM0Hx6NKAzziTQ', '2023-08-11 12:34:39.457485'),
('uord5fyeg4yog4lq1ev5p3mc15r3adbe', '.eJyrViooyixLLEmNT0zJzcxTslJyBNM6cPHMFCUrQx2lnPz0zLz4kszcVCDXzNLAyNzEwMBcz9DQ0tTCqBYAaOUWRg:1qODTz:7Yw8jU0mnBcthbhPMcowiaySeptjAG6mwx5qrBGgUWE', '2023-08-08 08:33:27.125689'),
('wa3o4hegwehaejlzm72er3ujsxs3owqq', '.eJyrViooyixLLEmNT0zJzcxTslKC0Dpw8cwUJStDHaWc_PTMvPiSzNxUINfM0sDcyNDEzFjP2MzS3NCkFgBvzRZt:1qQ5t1:L9g2mCuLNGYY_hJ05KI5-FSKFL55BAGw9kW2RZH4R9Y', '2023-08-13 12:51:03.372306'),
('wy0mh4l8my8j1dd5r8pwxp6nj67csd8f', '.eJyrViooyixLLEmNT0zJzcxTslKC0Dpw8cwUJStDHaWc_PTMvPiSzNxUINfM0sDMxMTA1ETP3MzU2MSoFgBvzRZq:1qPlkU:ijfES6Y2Zt0WFbmjRLrffeM3B4XToIULidmCT0C1mrA', '2023-08-12 15:20:54.770918'),
('yg6649eqj1vzd5vdth2e2wemby1jdwar', '.eJyrViooyixLLEmNT0zJzcxTslJyBNM6cPHMFCUrQx2lnPz0zLz4kszcVCDXzMLSxNjI2MBQz9DcwtDEshYAaSgWSw:1qKgW5:XNRGP5YXsYvQNRW0icU3HxRPwLWKso7i1qPcXZGRnsk', '2023-07-29 14:45:01.178441');

-- --------------------------------------------------------

--
-- Table structure for table `management_managemodel`
--

CREATE TABLE `management_managemodel` (
  `id` int(11) NOT NULL,
  `date_name` datetime(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` longtext,
  `account_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `from_account_id` int(11) DEFAULT NULL,
  `to_account_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `management_managemodel`
--

INSERT INTO `management_managemodel` (`id`, `date_name`, `amount`, `note`, `account_id`, `category_id`, `from_account_id`, `to_account_id`, `type_id`, `user_id`) VALUES
(1, '2023-07-01 00:00:00.000000', 1110, 'default', 4, 2, NULL, NULL, 4, 1),
(2, '2023-07-01 00:00:00.000000', 144, 'default', 3, 2, NULL, NULL, 4, 1),
(3, '2023-07-01 00:00:00.000000', 8, 'default', 2, 2, NULL, NULL, 4, 1),
(4, '2023-07-01 00:00:00.000000', 26, 'default', 1, 2, NULL, NULL, 4, 1),
(6, '2023-07-03 10:25:00.000000', 310, 'Petrol 2.70L', 4, 3, NULL, NULL, 2, 1),
(7, '2023-07-03 10:20:00.000000', 75, 'Nastoh,\r\nPulpy Juice', 4, 1, NULL, NULL, 2, 1),
(8, '2023-07-03 11:00:00.000000', 412, 'Engine Oil: 39393', 4, 9, NULL, NULL, 2, 1),
(9, '2023-07-03 15:30:00.000000', 4800, 'Salary', 2, 4, NULL, NULL, 1, 1),
(10, '2023-07-03 16:50:00.000000', 25, 'pulpy orange juice', 2, 1, NULL, NULL, 2, 1),
(11, '2023-07-04 20:50:00.000000', 88, 'Paneer', 2, 1, NULL, NULL, 2, 1),
(12, '2023-07-04 20:51:00.000000', 20, 'Chocolate Syrup,\r\nChocolate Cone', 2, 1, NULL, NULL, 2, 1),
(13, '2023-07-04 12:20:00.000000', 500, 'baa', 4, 5, NULL, NULL, 1, 1),
(14, '2023-07-05 19:20:00.000000', 3000, 'BC Rixa Glass', 2, 6, NULL, NULL, 2, 1),
(15, '2023-07-06 11:14:00.000000', 1460, 'clothes. \r\n2 Pant, \r\n1 T-shirt.', 2, 8, NULL, NULL, 2, 1),
(16, '2023-07-06 11:20:00.000000', 120, 'sox', 2, 8, NULL, NULL, 2, 1),
(17, '2023-07-06 11:46:00.000000', 4, 'Xerox Hall Ticket.', 4, 7, NULL, NULL, 2, 1),
(18, '2023-07-08 17:00:00.000000', 40, 'Icecream, \r\nOreo, \r\nPadiku, \r\nChocalete.', 4, 1, NULL, NULL, 2, 1),
(19, '2023-07-10 20:39:00.000000', 60, 'Bike Clutch Lever', 2, 9, NULL, NULL, 2, 1),
(20, '2023-07-11 14:00:00.000000', 100, 'Tea,\r\nPoiha', 4, 10, NULL, NULL, 2, 1),
(21, '2023-07-11 14:30:00.000000', 220, 'Cake', 4, 1, NULL, NULL, 2, 1),
(26, '2023-07-08 12:00:00.000000', 30, 'Chrg: ATM DECL', 2, 11, NULL, NULL, 2, 1),
(29, '2023-07-14 00:10:00.000000', 50, 'Chinese Bhel.', 4, 1, NULL, NULL, 2, 1),
(30, '2023-07-13 21:00:00.000000', 500, 'Baa', 4, 5, NULL, NULL, 1, 1),
(32, '2023-07-14 15:10:00.000000', 3, 'Chivngam', 4, 1, NULL, NULL, 2, 1),
(33, '2023-07-14 00:20:00.000000', 70, 'Ice Cream.', 3, 1, NULL, NULL, 2, 1),
(34, '2023-07-15 09:15:00.000000', 30, 'Tomato Soup.', 4, 1, NULL, NULL, 2, 1),
(35, '2023-07-15 09:20:00.000000', 40, 'For soup', NULL, NULL, 4, 3, 3, 1),
(36, '2023-07-17 11:55:00.000000', 80, 'medicine', 4, 15, NULL, NULL, 2, 1),
(37, '2023-07-15 20:30:00.000000', 34, 'Cheese', 3, 1, NULL, NULL, 2, 1),
(38, '2023-07-18 21:00:00.000000', 200, 'Papa', 4, 5, NULL, NULL, 1, 1),
(39, '2023-07-19 19:50:00.000000', 211, 'Petrol  2.20 L', 4, 3, NULL, NULL, 2, 1),
(40, '2023-07-15 12:00:00.000000', 100, 'Mummy for petrol', 4, 5, NULL, NULL, 1, 1),
(41, '2023-07-15 12:30:00.000000', 100, 'Petrol', 4, 3, NULL, NULL, 2, 1),
(42, '2023-07-20 12:00:00.000000', 40, 'Samosa', 4, 1, NULL, NULL, 2, 1),
(43, '2023-07-20 20:30:00.000000', 43, 'Padika, 3 for Adjust', 4, 1, NULL, NULL, 2, 1),
(44, '2023-07-21 21:30:00.000000', 200, 'For medicine', 4, 5, NULL, NULL, 1, 1),
(45, '2023-07-24 20:20:00.000000', 70, 'burger.', 3, 1, NULL, NULL, 2, 1),
(46, '2023-07-25 14:00:00.000000', 80, 'Tea, \r\nmaskaban.', 4, 10, NULL, NULL, 2, 1),
(47, '2023-07-08 04:27:00.000000', 1000, 'demo', 6, 12, NULL, NULL, 1, 2),
(48, '2023-07-13 04:28:00.000000', 120, 'asd', 6, 13, NULL, NULL, 2, 2),
(50, '2023-07-22 05:10:00.000000', 100, 'zxc', 6, 12, NULL, NULL, 1, 2),
(51, '2023-07-16 05:11:00.000000', 12, 'zxc', 6, 12, NULL, NULL, 1, 2),
(52, '2023-07-26 05:16:00.000000', 12, 'asd', 6, 12, NULL, NULL, 1, 2),
(54, '2023-07-26 19:24:00.000000', 3222, 'GM', 6, 13, NULL, NULL, 1, 2),
(56, '2023-07-26 22:40:00.000000', 160, 'Haircut,\r\nSampu.', 4, 20, NULL, NULL, 2, 1),
(57, '2023-07-27 13:10:00.000000', 10, 'Gift', 4, 6, NULL, NULL, 2, 1),
(58, '2023-07-27 19:20:00.000000', 210, 'Petrol 1.3 L', 4, 3, NULL, NULL, 2, 1),
(59, '2023-07-28 14:40:00.000000', 1100, 'For food', 1, 21, NULL, NULL, 1, 1),
(60, '2023-07-28 19:55:00.000000', 750, 'Food', 1, 21, NULL, NULL, 2, 1),
(61, '2023-07-28 13:40:00.000000', 50, 'Chocolate.', 1, 21, NULL, NULL, 2, 1),
(62, '2023-07-27 08:49:00.000000', 300, 'Mummy for petrol', 1, 5, NULL, NULL, 1, 1),
(63, '2023-07-29 14:35:00.000000', 20, 'Padika', 4, 1, NULL, NULL, 2, 1),
(64, '2023-07-30 23:09:00.000000', 200, 'Car Gas.', 4, 3, NULL, NULL, 2, 1),
(65, '2023-07-31 00:39:00.000000', 300, 'Pasta, \r\nShake.', 1, 1, NULL, NULL, 2, 1),
(66, '2023-08-02 18:00:00.000000', 95, 'padika offifce', 1, 1, NULL, NULL, 2, 1),
(67, '2023-08-01 17:00:00.000000', 500, 'baa', 4, 5, NULL, NULL, 1, 1),
(68, '2023-07-31 10:00:00.000000', 50, 'bhabhi', 4, 5, NULL, NULL, 1, 1),
(69, '2023-08-02 21:33:00.000000', 50, 'for ice-cream', 4, 5, NULL, NULL, 1, 1),
(70, '2023-08-03 12:18:00.000000', 4800, 'Salary', 2, 4, NULL, NULL, 1, 1),
(71, '2023-07-30 23:10:00.000000', 100, 'waffle', 4, 1, NULL, NULL, 2, 1),
(72, '2023-08-04 20:40:00.000000', 88, 'Panner', 2, 1, NULL, NULL, 2, 1),
(73, '2023-08-05 09:30:00.000000', 40, 'Tomoto Soup', 2, 1, NULL, NULL, 2, 1),
(74, '2023-08-05 09:30:00.000000', 40, 'For Soup', NULL, NULL, 2, 3, 3, 1),
(75, '2023-08-03 19:59:00.000000', 50, 'Choclete Ketkat', 2, 1, NULL, NULL, 2, 1),
(76, '2023-08-05 06:40:00.000000', 310, 'Petrol', 2, 3, NULL, NULL, 2, 1),
(77, '2023-08-06 22:31:00.000000', 180, 'Panner Parotha', 2, 1, NULL, NULL, 2, 1),
(78, '2023-08-06 23:03:00.000000', 250, 'Dhosaa.', 2, 1, NULL, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Types_typemodel`
--

CREATE TABLE `Types_typemodel` (
  `id` int(11) NOT NULL,
  `type_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Types_typemodel`
--

INSERT INTO `Types_typemodel` (`id`, `type_name`) VALUES
(1, 'Income'),
(2, 'Expense'),
(3, 'Transfer'),
(4, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `User_profile`
--

CREATE TABLE `User_profile` (
  `id` int(11) NOT NULL,
  `auth_token` varchar(100) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User_profile`
--

INSERT INTO `User_profile` (`id`, `auth_token`, `is_verified`, `created_at`, `user_id`) VALUES
(1, '9bd26ef9-7b03-44ab-a482-17c6167df69d', 0, '2023-07-26 13:13:12.739297', 3),
(2, 'c2944a5e-7827-407d-820d-8703fc828477', 1, '2023-07-26 16:37:04.800931', 4),
(3, '768e05d4-567b-41eb-86d5-4a0192eb8062', 0, '2023-07-27 13:44:20.759538', 5),
(4, '3f74f633-5da6-45e2-83dc-1a28aa768383', 0, '2023-07-28 12:35:47.108187', 6),
(5, '8f02a8e5-6bc1-4cfd-92c9-31bf2f9c69e6', 0, '2023-07-30 09:21:35.042027', 7),
(6, '12a301bf-9cfa-4521-9008-bc67a19f6000', 0, '2023-07-30 09:27:36.708474', 8),
(7, '864698ad-ff69-475f-b4c9-88a9161b3328', 0, '2023-07-30 09:28:40.423372', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_accountmodel`
--
ALTER TABLE `account_accountmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_accountmodel_user_id_e93301f7_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `category_categorymodel`
--
ALTER TABLE `category_categorymodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_categorymodel_user_id_ab6d30f9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `management_managemodel`
--
ALTER TABLE `management_managemodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `management_managemod_account_id_4ef60b2c_fk_account_a` (`account_id`),
  ADD KEY `management_managemod_category_id_acd6aef3_fk_category_` (`category_id`),
  ADD KEY `management_managemod_from_account_id_7e403b97_fk_account_a` (`from_account_id`),
  ADD KEY `management_managemod_to_account_id_0206ca19_fk_account_a` (`to_account_id`),
  ADD KEY `management_managemodel_type_id_3029cf62_fk_Types_typemodel_id` (`type_id`),
  ADD KEY `management_managemodel_user_id_5825183f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `Types_typemodel`
--
ALTER TABLE `Types_typemodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User_profile`
--
ALTER TABLE `User_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_accountmodel`
--
ALTER TABLE `account_accountmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_categorymodel`
--
ALTER TABLE `category_categorymodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `management_managemodel`
--
ALTER TABLE `management_managemodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `Types_typemodel`
--
ALTER TABLE `Types_typemodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `User_profile`
--
ALTER TABLE `User_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_accountmodel`
--
ALTER TABLE `account_accountmodel`
  ADD CONSTRAINT `account_accountmodel_user_id_e93301f7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `category_categorymodel`
--
ALTER TABLE `category_categorymodel`
  ADD CONSTRAINT `category_categorymodel_user_id_ab6d30f9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `management_managemodel`
--
ALTER TABLE `management_managemodel`
  ADD CONSTRAINT `management_managemod_account_id_4ef60b2c_fk_account_a` FOREIGN KEY (`account_id`) REFERENCES `account_accountmodel` (`id`),
  ADD CONSTRAINT `management_managemod_category_id_acd6aef3_fk_category_` FOREIGN KEY (`category_id`) REFERENCES `category_categorymodel` (`id`),
  ADD CONSTRAINT `management_managemod_from_account_id_7e403b97_fk_account_a` FOREIGN KEY (`from_account_id`) REFERENCES `account_accountmodel` (`id`),
  ADD CONSTRAINT `management_managemod_to_account_id_0206ca19_fk_account_a` FOREIGN KEY (`to_account_id`) REFERENCES `account_accountmodel` (`id`),
  ADD CONSTRAINT `management_managemodel_type_id_3029cf62_fk_Types_typemodel_id` FOREIGN KEY (`type_id`) REFERENCES `Types_typemodel` (`id`),
  ADD CONSTRAINT `management_managemodel_user_id_5825183f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `User_profile`
--
ALTER TABLE `User_profile`
  ADD CONSTRAINT `User_profile_user_id_34d1f369_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
