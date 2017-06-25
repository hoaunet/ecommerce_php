-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 25, 2017 lúc 09:54 AM
-- Phiên bản máy phục vụ: 10.1.22-MariaDB
-- Phiên bản PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `opencart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_address`
--

CREATE TABLE `hoaunet_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_api`
--

CREATE TABLE `hoaunet_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_api`
--

INSERT INTO `hoaunet_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'DHDA5CLwHIXetuffnZGXZGVxXOTFAiBzH0HJ7QRNHduuWOpuLREtaFHtXZ0MXjYLdWn6w6PPyrY3LEWuc21JBELm5rTCxokdvZOkazynhDlwvxFrNZ2gJEkMtCb1DGCttSpmPY7mEpJ9kN4y9S1qPBCiwpJEGJwGtJ5ur736GCGU8Em0Q2gP4idhcEfCVGG2TS0VQldKZbWnXozBClhk1NxffHUXNsCDWv0d42PzKogIHZsEMInzIuDxtKyItxgt', 1, '2017-06-21 18:34:56', '2017-06-21 18:34:56'),
(2, 'Default', 'U5uD21BJQA8XtHXMbYXbXl33HdUfkSH7kicVYCezTXUuHOpTAF4pcJNTW8Q48U91yHM4KIWA6vIlhNm3YX8nbi4m0mjiNMJRJNHNo51GHG4b9xIYAHqBiv00piU211g9I1jsphrS6Pyjokb4xjKC0DTLd4wYD05Hg6sGUABjog5rpe4E5utJyl0ZE4YvrGA2fO0XBpCyOXxwWcxdqEstmvSL5gj5MNPmOwxF3jKZ0VrFS188puhHGn2AHfdchCcx', 1, '2017-06-21 18:34:59', '2017-06-21 18:34:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_api_ip`
--

CREATE TABLE `hoaunet_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_api_ip`
--

INSERT INTO `hoaunet_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 2, '::1'),
(2, 2, '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_api_session`
--

CREATE TABLE `hoaunet_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_api_session`
--

INSERT INTO `hoaunet_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(9, 2, '69b7e22a18c6bdd8cb1eff2291', '::1', '2017-06-25 10:21:56', '2017-06-25 10:21:58'),
(8, 2, '830ab8471c46b27554153f3787', '::1', '2017-06-25 10:21:48', '2017-06-25 10:21:48'),
(10, 2, 'eeda45efded58f0d16d82c26b9', '::1', '2017-06-25 10:22:05', '2017-06-25 10:22:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_attribute`
--

CREATE TABLE `hoaunet_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_attribute`
--

INSERT INTO `hoaunet_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 7, 1),
(5, 7, 2),
(6, 7, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_attribute_description`
--

CREATE TABLE `hoaunet_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_attribute_description`
--

INSERT INTO `hoaunet_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(5, 2, 'Điều kiện và điều khoản'),
(6, 2, 'Đơn vị cung cấp'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 1, 'Tiện ích khách sạn'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed'),
(4, 2, 'Tiện ích khách sạn'),
(5, 1, 'Condition'),
(6, 1, 'Supplier');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_attribute_group`
--

CREATE TABLE `hoaunet_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_attribute_group`
--

INSERT INTO `hoaunet_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4),
(7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_attribute_group_description`
--

CREATE TABLE `hoaunet_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_attribute_group_description`
--

INSERT INTO `hoaunet_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor'),
(7, 1, 'Travel'),
(7, 2, 'Du lịch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_banner`
--

CREATE TABLE `hoaunet_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_banner`
--

INSERT INTO `hoaunet_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_banner_image`
--

CREATE TABLE `hoaunet_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_banner_image`
--

INSERT INTO `hoaunet_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(99, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(100, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(101, 8, 2, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(102, 8, 2, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(103, 8, 2, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(104, 8, 2, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(105, 8, 2, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(106, 8, 2, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(107, 8, 2, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(108, 8, 2, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(109, 8, 2, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(110, 7, 2, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(111, 8, 2, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(112, 8, 2, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_cart`
--

CREATE TABLE `hoaunet_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_category`
--

CREATE TABLE `hoaunet_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_category`
--

INSERT INTO `hoaunet_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 1, 1, '2009-01-31 01:04:25', '2017-06-23 20:34:31'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
(20, 'catalog/demo/compaq_presario.jpg', 25, 1, 1, 1, 1, '2009-01-05 21:49:43', '2017-06-22 13:52:19'),
(24, '', 25, 1, 1, 5, 1, '2009-01-20 02:36:26', '2017-06-22 13:56:48'),
(18, 'catalog/demo/hp_2.jpg', 25, 1, 0, 2, 1, '2009-01-05 21:49:15', '2017-06-22 13:53:35'),
(17, '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2017-06-22 13:56:17'),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2017-06-22 13:49:05'),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2017-06-22 13:50:50'),
(34, 'catalog/demo/ipod_touch_4.jpg', 25, 1, 4, 7, 1, '2009-02-03 14:18:11', '2017-06-22 13:54:02'),
(35, '', 59, 0, 0, 1, 1, '2010-09-17 10:06:48', '2017-06-23 20:40:29'),
(36, '', 59, 0, 0, 2, 1, '2010-09-17 10:07:13', '2017-06-23 20:42:20'),
(37, '', 59, 0, 0, 7, 1, '2010-09-18 14:03:39', '2017-06-23 20:51:05'),
(38, '', 59, 0, 0, 6, 1, '2010-09-18 14:03:51', '2017-06-23 20:49:49'),
(39, '', 17, 0, 0, 1, 1, '2010-09-18 14:04:17', '2017-06-23 20:52:56'),
(40, '', 60, 0, 0, 1, 1, '2010-09-18 14:05:36', '2017-06-23 20:55:48'),
(41, '', 60, 0, 0, 2, 1, '2010-09-18 14:05:49', '2017-06-23 20:56:49'),
(42, '', 62, 0, 0, 1, 1, '2010-09-18 14:06:34', '2017-06-23 21:01:47'),
(43, '', 33, 0, 0, 0, 1, '2010-09-18 14:06:49', '2017-06-22 14:17:21'),
(44, '', 33, 0, 0, 0, 1, '2010-09-21 15:39:21', '2017-06-22 14:18:27'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
(47, '', 52, 0, 0, 0, 1, '2010-11-07 11:13:16', '2017-06-22 14:36:19'),
(48, '', 52, 0, 0, 0, 1, '2010-11-07 11:13:33', '2017-06-22 14:41:37'),
(49, '', 52, 0, 0, 0, 1, '2010-11-07 11:14:04', '2017-06-22 14:42:53'),
(50, '', 52, 0, 0, 0, 1, '2010-11-07 11:14:23', '2017-06-22 14:44:17'),
(51, '', 52, 0, 0, 0, 1, '2010-11-07 11:14:38', '2017-06-22 14:47:08'),
(52, '', 0, 1, 0, 7, 1, '2010-11-07 11:16:09', '2017-06-23 21:03:46'),
(53, '', 59, 0, 0, 3, 1, '2010-11-07 11:28:53', '2017-06-23 20:44:10'),
(54, '', 59, 0, 0, 4, 1, '2010-11-07 11:29:16', '2017-06-23 20:45:38'),
(55, '', 59, 0, 0, 5, 1, '2010-11-08 10:31:32', '2017-06-23 20:46:55'),
(56, '', 59, 0, 0, 6, 1, '2010-11-08 10:31:50', '2017-06-23 20:48:27'),
(57, '', 25, 1, 1, 3, 1, '2011-04-26 08:53:16', '2017-06-22 13:59:47'),
(58, '', 52, 0, 0, 0, 1, '2011-05-08 13:44:16', '2017-06-22 14:34:56'),
(59, '', 0, 1, 1, 2, 1, '2017-06-23 20:40:02', '2017-06-23 20:40:02'),
(60, '', 0, 1, 1, 4, 1, '2017-06-23 20:54:27', '2017-06-23 20:54:27'),
(61, '', 0, 1, 1, 5, 1, '2017-06-23 20:58:11', '2017-06-23 20:58:11'),
(62, '', 0, 1, 1, 7, 1, '2017-06-23 21:00:19', '2017-06-23 21:00:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_category_description`
--

CREATE TABLE `hoaunet_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_category_description`
--

INSERT INTO `hoaunet_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'Monitors', '', 'Monitors', '', ''),
(32, 1, 'Web Cameras', '', 'Web Cameras', '', ''),
(31, 1, 'Scanners', '', 'Scanners', '', ''),
(30, 1, 'Printers', '', 'Printers', '', ''),
(29, 1, 'Điện thoại', '', 'Điện thoại', '', ''),
(27, 1, 'Mac', '', 'Mac', '', ''),
(26, 1, 'PC', '', 'PC', '', ''),
(24, 1, 'Phones &amp; PDAs', '', 'Phones &amp; PDAs', '', ''),
(20, 1, 'Desktops', '&lt;p&gt;\r\n	Desktops&lt;/p&gt;\r\n', 'Desktops', 'Desktops', 'Desktops'),
(20, 2, 'Máy tính', '&lt;p&gt;\r\n	Máy tính&lt;/p&gt;\r\n', 'Máy tính', 'Máy tính', 'Máy tính'),
(34, 1, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', ''),
(18, 2, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', ''),
(45, 1, 'Windows', '', 'Windows', '', ''),
(46, 1, 'Macs', '', 'Macs', '', ''),
(57, 2, 'Tablets', '', 'Tablets', '', ''),
(28, 2, 'Monitors', '', 'Monitors', '', ''),
(33, 2, 'Du lịch', '', 'Du lịch', '', ''),
(32, 2, 'Web Cameras', '', 'Web Cameras', '', ''),
(31, 2, 'Scanners', '', 'Scanners', '', ''),
(30, 2, 'Printers', '', 'Printers', '', ''),
(29, 2, 'Điện thoại', '', 'Điện thoại', '', ''),
(27, 2, 'Mac', '', 'Mac', '', ''),
(26, 2, 'PC', '', 'PC', '', ''),
(24, 2, 'Phones &amp; PDAs', '', 'Phones &amp; PDAs', '', ''),
(36, 1, 'Houseware', '', 'test 2', '', ''),
(38, 1, 'Home - Life', '&lt;p&gt;Home - Life&lt;/p&gt;', 'Home - Life', 'Home - Life', 'Home - Life'),
(39, 1, 'The living room\'s furniture', '&lt;p&gt;The living room\'s furniture&lt;br&gt;&lt;/p&gt;', 'The living room\'s furniture', 'The living room\'s furniture', 'The living room\'s furniture'),
(40, 1, 'Women\'s Fashion', '&lt;p&gt;Women\'s Fashion&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Women\'s Fashion', 'Women\'s Fashion\r\n', 'Women\'s Fashion\r\n'),
(41, 1, 'Middle-aged fashion', '&lt;p&gt;Middle-aged fashion&lt;br&gt;&lt;/p&gt;', 'Middle-aged fashion', 'Middle-aged fashion', 'Middle-aged fashion'),
(42, 1, 'Fashion for baby', '&lt;p&gt;Fashion for baby&lt;br&gt;&lt;/p&gt;', 'Fashion for baby', 'Fashion for baby', 'Fashion for baby'),
(43, 1, 'RESORT', '&lt;p&gt;RESORT&lt;br&gt;&lt;/p&gt;', 'RESORT', 'RESORT', 'RESORT'),
(34, 2, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', ''),
(18, 1, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', ''),
(45, 2, 'Windows', '', 'Windows', '', ''),
(46, 2, 'Macs', '', 'Macs', '', ''),
(47, 1, 'Personal care equipment', '&lt;p&gt;Personal care equipment&lt;br&gt;&lt;/p&gt;', 'Personal care equipment', 'Personal care equipment', 'Personal care equipment'),
(49, 1, 'Health care', '&lt;p&gt;Health care&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Health care', 'Health care\r\n', 'Health care\r\n'),
(50, 1, 'Nutritious food', '&lt;p&gt;Nutritious food&lt;br&gt;&lt;/p&gt;', 'Nutritious food', 'Nutritious food', 'Nutritious food'),
(53, 1, 'Kitchen equipment', '&lt;p&gt;Kitchen equipment&lt;br&gt;&lt;/p&gt;', 'Kitchen equipment', 'Kitchen equipment', 'Kitchen equipment'),
(54, 1, 'Home Appliances', '&lt;p&gt;Home Appliances&lt;br&gt;&lt;/p&gt;', 'Home Appliances', 'Home Appliances', 'Home Appliances'),
(55, 1, 'Stationery', '&lt;p&gt;Stationery&lt;br&gt;&lt;/p&gt;', 'Stationery', 'Stationery', 'Stationery'),
(56, 1, 'Household', '&lt;p&gt;Household&lt;br&gt;&lt;/p&gt;', 'Household', 'Household', 'Household'),
(57, 1, 'Tablets', '', 'Tablets', '', ''),
(25, 2, 'Điện tử &amp; Công nghệ', '&lt;p&gt;Điện tử &amp;amp; Công nghệ&lt;br&gt;&lt;/p&gt;', 'Điện tử &amp; Công nghệ', 'Điện tử &amp; Công nghệ', 'Điện tử &amp; Công nghệ'),
(25, 1, 'Điện tử &amp; Công nghệ', '&lt;p&gt;Điện tử &amp;amp; Công nghệ&lt;br&gt;&lt;/p&gt;', 'Điện tử &amp; Công nghệ', 'Điện tử &amp; Công nghệ', 'Điện tử,Công nghệ'),
(33, 1, 'Tour', '', 'Tour', '', ''),
(17, 2, 'Nội thất', '&lt;p&gt;Nội thất&lt;br&gt;&lt;/p&gt;', 'Nội thất', 'Nội thất', 'Nội thất'),
(17, 1, 'Furniture', '&lt;p&gt;Furniture&lt;br&gt;&lt;/p&gt;', 'Furniture', 'Furniture', 'Furniture'),
(35, 2, 'Thiết bị điện nóng lạnh', '&lt;p&gt;Gia dụng&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 'Gia dụng ', 'Gia dụng ', 'Gia dụng '),
(36, 2, 'Đồ gia dụng', '', 'test 2', '', ''),
(43, 2, 'KHÁCH SẠN - RESORT', '&lt;p&gt;KHÁCH SẠN - RESORT&lt;br&gt;&lt;/p&gt;', 'KHÁCH SẠN - RESORT', 'KHÁCH SẠN - RESORT', 'KHÁCH SẠN - RESORT'),
(44, 2, 'TOUR DU LỊCH', '&lt;p&gt;DU LỊCH&lt;br&gt;&lt;/p&gt;', 'DU LỊCH', 'DU LỊCH', 'DU LỊCH'),
(44, 1, 'TOUR DU LỊCH', '&lt;p&gt;TOUR&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 'TOUR ', 'TOUR ', 'TOUR '),
(52, 1, 'Makeup', '&lt;p&gt;Makeup&lt;br&gt;&lt;/p&gt;', 'Makeup', 'Makeup', 'Makeup'),
(52, 2, 'Sức khỏe &amp; Làm đẹp', '&lt;p&gt;Sức khỏe &amp;amp; Làm đẹp&lt;br&gt;&lt;/p&gt;', 'Sức khỏe &amp; Làm đẹp', 'Sức khỏe &amp; Làm đẹp', 'Sức khỏe &amp; Làm đẹp'),
(58, 1, 'Massage', '&lt;p&gt;Massage&lt;br&gt;&lt;/p&gt;', 'Massage', 'Massage', 'Massage'),
(58, 2, 'Thiết bị massage', '&lt;p&gt;Thiết bị massage&lt;br&gt;&lt;/p&gt;', 'Thiết bị massage', 'Thiết bị massage', 'Thiết bị massage'),
(47, 2, 'Thiết bị chăm sóc cá nhân', '', 'test 15', '', ''),
(48, 1, 'Functional foods', '&lt;p&gt;Functional foods&lt;br&gt;&lt;/p&gt;', 'Functional foods', 'Functional foods', 'Functional foods'),
(48, 2, 'Thực phẩm chức năng', '&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 14px;&quot;&gt;&lt;a href=&quot;https://shop.vnexpress.net/suc-khoe-lam-dep/thuc-pham-chuc-nang&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; font-size: 18px;&quot;&gt;Thực phẩm chức năng&lt;/a&gt;&lt;/h4&gt;', 'Thực phẩm chức năng', 'Thực phẩm chức năng', 'Thực phẩm chức năng'),
(49, 2, 'Chăm sóc sức khỏe', '&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 14px;&quot;&gt;&lt;a href=&quot;https://shop.vnexpress.net/suc-khoe-lam-dep/cham-soc-suc-khoe&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; font-size: 18px;&quot;&gt;Chăm sóc sức khỏe&lt;/a&gt;&lt;/h4&gt;', 'Chăm sóc sức khỏe', 'Chăm sóc sức khỏe', 'Chăm sóc sức khỏe'),
(50, 2, 'Thực phẩm bổ dưỡng', '&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 14px;&quot;&gt;&lt;a href=&quot;https://shop.vnexpress.net/suc-khoe-lam-dep/thuc-pham-bo-duong&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; font-size: 18px;&quot;&gt;Thực phẩm bổ dưỡng&lt;/a&gt;&lt;/h4&gt;', 'Thực phẩm bổ dưỡng', 'Thực phẩm bổ dưỡng', 'Thực phẩm bổ dưỡng'),
(51, 1, 'Voucher', '&lt;p&gt;Voucher&lt;br&gt;&lt;/p&gt;', 'Voucher', 'Voucher', 'Voucher'),
(51, 2, 'Phiếu quà tặng', '&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 14px;&quot;&gt;&lt;a href=&quot;https://shop.vnexpress.net/suc-khoe-lam-dep/phieu-qua-tang&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; font-size: 18px;&quot;&gt;Phiếu quà tặng&lt;/a&gt;&lt;/h4&gt;', 'Phiếu quà tặng', 'Phiếu quà tặng', 'Phiếu quà tặng'),
(35, 1, 'Thiết bị điện nóng lạnh', '&lt;p&gt;Houseware&lt;br&gt;&lt;/p&gt;', 'Houseware', 'Houseware', 'Houseware'),
(59, 1, 'Domestic', '&lt;p&gt;Domestic&lt;br&gt;&lt;/p&gt;', 'Domestic', 'Domestic', 'Domestic'),
(59, 2, 'Gia dụng', '&lt;p&gt;Gia dụng&lt;br&gt;&lt;/p&gt;', 'Gia dụng', 'Gia dụng', 'Gia dụng'),
(53, 2, 'Thiết bị nhà bếp', '&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 14px;&quot;&gt;&lt;a href=&quot;https://shop.vnexpress.net/gia-dung/thiet-bi-nha-bep&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; font-size: 18px;&quot;&gt;Thiết bị nhà bếp&lt;/a&gt;&lt;/h4&gt;', 'Thiết bị nhà bếp', 'Thiết bị nhà bếp', 'Thiết bị nhà bếp'),
(54, 2, 'Thiết bị gia dụng trong nhà', '&lt;p&gt;Thiết bị gia dụng trong nhà&lt;br&gt;&lt;/p&gt;', 'Thiết bị gia dụng trong nhà', 'Thiết bị gia dụng trong nhà', 'Thiết bị gia dụng trong nhà'),
(55, 2, 'Văn phòng phẩm', '&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 14px;&quot;&gt;&lt;a href=&quot;https://shop.vnexpress.net/gia-dung/van-phong-pham&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; font-size: 18px;&quot;&gt;Văn phòng phẩm&lt;/a&gt;&lt;/h4&gt;', 'Văn phòng phẩm', 'Văn phòng phẩm', 'Văn phòng phẩm'),
(56, 2, 'Đồ dùng gia đình', '&lt;p&gt;Đồ dùng gia đình&lt;br&gt;&lt;/p&gt;', 'Đồ dùng gia đình', 'Đồ dùng gia đình', 'Đồ dùng gia đình'),
(38, 2, 'Nhà cửa - Đời sống', '&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 14px;&quot;&gt;&lt;a href=&quot;https://shop.vnexpress.net/gia-dung/nha-cua-doi-song&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; font-size: 18px;&quot;&gt;Nhà cửa - Đời sống&lt;/a&gt;&lt;/h4&gt;', 'Nhà cửa - Đời sống', 'Nhà cửa - Đời sống', 'Nhà cửa - Đời sống'),
(37, 1, 'Protective goods', '&lt;p&gt;Protective goods&lt;br&gt;&lt;/p&gt;', 'Protective goods', 'Protective goods', 'Protective goods'),
(37, 2, 'Đồ bảo hộ gia đình', '&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 14px;&quot;&gt;&lt;a href=&quot;https://shop.vnexpress.net/gia-dung/do-bao-ho-gia-dinh&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; font-size: 18px;&quot;&gt;Đồ bảo hộ gia đình&lt;/a&gt;&lt;/h4&gt;', 'Đồ bảo hộ gia đình', 'Đồ bảo hộ gia đình', 'Đồ bảo hộ gia đình'),
(39, 2, 'Nội thất phòng khách', '&lt;p&gt;Nội thất phòng khách&lt;br&gt;&lt;/p&gt;', 'Nội thất phòng khách', 'Nội thất phòng khách', 'Nội thất phòng khách'),
(60, 1, 'Fashion', '&lt;p&gt;Fashion&lt;br&gt;&lt;/p&gt;', 'Fashion', 'Fashion', 'Fashion'),
(60, 2, ' Thời trang', '&lt;p&gt;&amp;nbsp;Thời trang&lt;br&gt;&lt;/p&gt;', ' Thời trang', ' Thời trang', ' Thời trang'),
(40, 2, 'Thời trang nữ', '&lt;h1 style=&quot;margin-bottom: 0px; padding: 0px; font-size: 18px; color: rgb(0, 0, 0); font-family: arial;&quot;&gt;&lt;a href=&quot;https://shop.vnexpress.net/thoi-trang/thoi-trang-nu&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px;&quot;&gt;Thời trang nữ&lt;/a&gt;&lt;/h1&gt;', 'Thời trang nữ', 'Thời trang nữ', 'Thời trang nữ'),
(41, 2, 'Thời trang trung niên', '&lt;h4 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial; font-size: 14px;&quot;&gt;&lt;a href=&quot;https://shop.vnexpress.net/thoi-trang/thoi-trang-trung-nien&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px; font-size: 18px;&quot;&gt;Thời trang trung niên&lt;/a&gt;&lt;/h4&gt;', 'Thời trang trung niên', 'Thời trang trung niên', 'Thời trang trung niên'),
(61, 1, 'Jewelry', '&lt;p&gt;Jewelry&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Jewelry', 'Jewelry\r\n', 'Jewelry\r\n'),
(61, 2, 'Trang sức', '&lt;p&gt;&lt;a href=&quot;https://shop.vnexpress.net/trang-suc&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(85, 85, 85); outline: 1px; font-size: 12px; font-family: arial; background-color: rgb(244, 244, 244);&quot;&gt;Trang sức&lt;/a&gt;&lt;br&gt;&lt;/p&gt;', 'Trang sức', 'Trang sức', 'Trang sức'),
(62, 1, 'Mother &amp; Baby', '&lt;p&gt;Mother &amp;amp; Baby&lt;br&gt;&lt;/p&gt;', 'Mother &amp; Baby', 'Mother &amp; Baby', 'Mother &amp; Baby'),
(62, 2, 'Mẹ &amp; Bé', '&lt;p&gt;&lt;a href=&quot;https://shop.vnexpress.net/me-be&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(85, 85, 85); outline: 1px; font-size: 12px; font-family: arial; background-color: rgb(244, 244, 244);&quot;&gt;Mẹ &amp;amp; Bé&lt;/a&gt;&lt;br&gt;&lt;/p&gt;', 'Mẹ &amp; Bé', 'Mẹ &amp; Bé', 'Mẹ &amp; Bé'),
(42, 2, 'Thời trang cho bé', '&lt;h1 style=&quot;margin-bottom: 0px; padding: 0px; font-size: 18px; color: rgb(0, 0, 0); font-family: arial;&quot;&gt;&lt;a href=&quot;https://shop.vnexpress.net/me-be/thoi-trang-cho-be&quot; style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: 1px;&quot;&gt;Thời trang cho bé&lt;/a&gt;&lt;/h1&gt;', 'Thời trang cho bé', 'Thời trang cho bé', 'Thời trang cho bé');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_category_filter`
--

CREATE TABLE `hoaunet_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_category_path`
--

CREATE TABLE `hoaunet_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_category_path`
--

INSERT INTO `hoaunet_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(35, 59, 0),
(35, 35, 1),
(36, 59, 0),
(36, 36, 1),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 1),
(27, 20, 1),
(27, 27, 2),
(26, 20, 1),
(26, 26, 2),
(24, 24, 1),
(18, 18, 1),
(45, 18, 1),
(45, 45, 2),
(46, 18, 1),
(46, 46, 2),
(17, 17, 0),
(33, 33, 0),
(34, 34, 1),
(37, 59, 0),
(37, 37, 1),
(38, 59, 0),
(38, 38, 1),
(39, 17, 0),
(39, 39, 1),
(40, 60, 0),
(40, 40, 1),
(41, 60, 0),
(41, 41, 1),
(42, 62, 0),
(42, 42, 1),
(43, 33, 0),
(43, 43, 1),
(44, 33, 0),
(44, 44, 1),
(47, 52, 0),
(47, 47, 1),
(48, 52, 0),
(48, 48, 1),
(49, 52, 0),
(49, 49, 1),
(50, 52, 0),
(50, 50, 1),
(51, 52, 0),
(51, 51, 1),
(52, 52, 0),
(58, 52, 0),
(58, 58, 1),
(53, 59, 0),
(53, 53, 1),
(54, 59, 0),
(54, 54, 1),
(55, 59, 0),
(55, 55, 1),
(56, 59, 0),
(56, 56, 1),
(57, 57, 1),
(20, 25, 0),
(27, 25, 0),
(26, 25, 0),
(18, 25, 0),
(45, 25, 0),
(46, 25, 0),
(34, 25, 0),
(59, 59, 0),
(60, 60, 0),
(62, 62, 0),
(61, 61, 0),
(24, 25, 0),
(57, 25, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_category_to_layout`
--

CREATE TABLE `hoaunet_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_category_to_layout`
--

INSERT INTO `hoaunet_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(25, 0, 0),
(29, 0, 0),
(33, 0, 0),
(20, 0, 0),
(18, 0, 0),
(34, 0, 0),
(17, 0, 0),
(24, 0, 0),
(35, 0, 0),
(57, 0, 0),
(36, 0, 0),
(43, 0, 0),
(44, 0, 0),
(52, 0, 0),
(58, 0, 3),
(47, 0, 0),
(48, 0, 0),
(49, 0, 0),
(50, 0, 0),
(51, 0, 0),
(59, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(38, 0, 0),
(37, 0, 0),
(39, 0, 0),
(60, 0, 0),
(40, 0, 0),
(41, 0, 0),
(61, 0, 0),
(62, 0, 0),
(42, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_category_to_store`
--

CREATE TABLE `hoaunet_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_category_to_store`
--

INSERT INTO `hoaunet_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_country`
--

CREATE TABLE `hoaunet_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_country`
--

INSERT INTO `hoaunet_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_coupon`
--

CREATE TABLE `hoaunet_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_coupon`
--

INSERT INTO `hoaunet_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_coupon_category`
--

CREATE TABLE `hoaunet_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_coupon_history`
--

CREATE TABLE `hoaunet_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_coupon_product`
--

CREATE TABLE `hoaunet_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_currency`
--

CREATE TABLE `hoaunet_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_currency`
--

INSERT INTO `hoaunet_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.00003464, 1, '2017-06-24 13:48:23'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2017-06-24 07:53:23'),
(3, 'Euro', 'EUR', '', '€', '2', 0.00003936, 1, '2017-06-24 13:48:23'),
(4, 'Đồng', 'vnd', '', 'VNĐ', '', 1.00000000, 1, '2017-06-25 03:21:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer`
--

CREATE TABLE `hoaunet_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_customer`
--

INSERT INTO `hoaunet_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 2, 'Le', 'Hoa', 'hoaunet@gmail.com', '0909683850', '', '1b41c29ea8929699b4e77e1c98956ecd3c91c908', '2SbsVFaSN', NULL, NULL, 1, 0, '', '::1', 1, 0, '', '', '2017-06-22 10:32:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_activity`
--

CREATE TABLE `hoaunet_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_affiliate`
--

CREATE TABLE `hoaunet_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_approval`
--

CREATE TABLE `hoaunet_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_group`
--

CREATE TABLE `hoaunet_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_customer_group`
--

INSERT INTO `hoaunet_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_group_description`
--

CREATE TABLE `hoaunet_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_customer_group_description`
--

INSERT INTO `hoaunet_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_history`
--

CREATE TABLE `hoaunet_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_ip`
--

CREATE TABLE `hoaunet_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_login`
--

CREATE TABLE `hoaunet_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_customer_login`
--

INSERT INTO `hoaunet_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '::1', 2, '2017-06-22 03:30:27', '2017-06-25 02:03:24'),
(2, 'admin@gmail.com', '::1', 1, '2017-06-25 02:03:35', '2017-06-25 02:03:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_online`
--

CREATE TABLE `hoaunet_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_reward`
--

CREATE TABLE `hoaunet_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_search`
--

CREATE TABLE `hoaunet_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_transaction`
--

CREATE TABLE `hoaunet_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_customer_wishlist`
--

CREATE TABLE `hoaunet_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_custom_field`
--

CREATE TABLE `hoaunet_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_custom_field_customer_group`
--

CREATE TABLE `hoaunet_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_custom_field_description`
--

CREATE TABLE `hoaunet_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_custom_field_value`
--

CREATE TABLE `hoaunet_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_custom_field_value_description`
--

CREATE TABLE `hoaunet_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_download`
--

CREATE TABLE `hoaunet_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_download_description`
--

CREATE TABLE `hoaunet_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_event`
--

CREATE TABLE `hoaunet_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_event`
--

INSERT INTO `hoaunet_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/after', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_extension`
--

CREATE TABLE `hoaunet_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_extension`
--

INSERT INTO `hoaunet_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'analytics', 'google');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_extension_install`
--

CREATE TABLE `hoaunet_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_extension_path`
--

CREATE TABLE `hoaunet_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_filter`
--

CREATE TABLE `hoaunet_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_filter_description`
--

CREATE TABLE `hoaunet_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_filter_group`
--

CREATE TABLE `hoaunet_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_filter_group_description`
--

CREATE TABLE `hoaunet_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_geo_zone`
--

CREATE TABLE `hoaunet_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_geo_zone`
--

INSERT INTO `hoaunet_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_information`
--

CREATE TABLE `hoaunet_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_information`
--

INSERT INTO `hoaunet_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_information_description`
--

CREATE TABLE `hoaunet_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_information_description`
--

INSERT INTO `hoaunet_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_information_to_layout`
--

CREATE TABLE `hoaunet_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_information_to_store`
--

CREATE TABLE `hoaunet_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_information_to_store`
--

INSERT INTO `hoaunet_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_language`
--

CREATE TABLE `hoaunet_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_language`
--

INSERT INTO `hoaunet_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Việt Nam', 'vi_vn', 'vi_VN.UTF-8,vi_VN,vi-vn,vietnamese', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_layout`
--

CREATE TABLE `hoaunet_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_layout`
--

INSERT INTO `hoaunet_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_layout_module`
--

CREATE TABLE `hoaunet_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_layout_module`
--

INSERT INTO `hoaunet_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(67, 1, 'carousel.29', 'content_top', 3),
(66, 1, 'slideshow.27', 'content_top', 1),
(65, 1, 'featured.28', 'content_top', 2),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_layout_route`
--

CREATE TABLE `hoaunet_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_layout_route`
--

INSERT INTO `hoaunet_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(42, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_length_class`
--

CREATE TABLE `hoaunet_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_length_class`
--

INSERT INTO `hoaunet_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_length_class_description`
--

CREATE TABLE `hoaunet_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_length_class_description`
--

INSERT INTO `hoaunet_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_location`
--

CREATE TABLE `hoaunet_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_manufacturer`
--

CREATE TABLE `hoaunet_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_manufacturer`
--

INSERT INTO `hoaunet_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_manufacturer_to_store`
--

CREATE TABLE `hoaunet_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_manufacturer_to_store`
--

INSERT INTO `hoaunet_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_marketing`
--

CREATE TABLE `hoaunet_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_modification`
--

CREATE TABLE `hoaunet_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_module`
--

CREATE TABLE `hoaunet_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_module`
--

INSERT INTO `hoaunet_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_option`
--

CREATE TABLE `hoaunet_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_option`
--

INSERT INTO `hoaunet_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_option_description`
--

CREATE TABLE `hoaunet_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_option_description`
--

INSERT INTO `hoaunet_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_option_value`
--

CREATE TABLE `hoaunet_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_option_value`
--

INSERT INTO `hoaunet_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_option_value_description`
--

CREATE TABLE `hoaunet_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_option_value_description`
--

INSERT INTO `hoaunet_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_order`
--

CREATE TABLE `hoaunet_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_order`
--

INSERT INTO `hoaunet_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2017-00', 0, 'Bán hàng online', 'http://localhost/ecommerce_php/opencart/upload/', 0, 1, 'dsad', 'sadsa', 'sadsadsa@yahoo.com', '0909683850', '', '[]', 'dsad', 'sadsa', 'S#', 'sadsad ', '', 'HCM', '080', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Cash On Delivery', 'cod', 'dsad', 'sadsa', 'S#', 'sadsad ', '', 'HCM', '080', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Flat Shipping Rate', 'flat.flat', 'sadsad\\\nsad\ndsa\ndsa\ndsad\nsad\nsa\ndsa', '105.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2017-06-22 10:47:18', '2017-06-22 10:47:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_order_history`
--

CREATE TABLE `hoaunet_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_order_history`
--

INSERT INTO `hoaunet_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2017-06-22 10:47:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_order_option`
--

CREATE TABLE `hoaunet_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_order_product`
--

CREATE TABLE `hoaunet_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_order_product`
--

INSERT INTO `hoaunet_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_order_recurring`
--

CREATE TABLE `hoaunet_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_order_recurring_transaction`
--

CREATE TABLE `hoaunet_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_order_shipment`
--

CREATE TABLE `hoaunet_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_order_status`
--

CREATE TABLE `hoaunet_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_order_status`
--

INSERT INTO `hoaunet_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_order_total`
--

CREATE TABLE `hoaunet_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_order_total`
--

INSERT INTO `hoaunet_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '100.0000', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'total', 'Total', '105.0000', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_order_voucher`
--

CREATE TABLE `hoaunet_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product`
--

CREATE TABLE `hoaunet_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product`
--

INSERT INTO `hoaunet_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-campuchia-ha-noi-siem-riep-phnompenh-4-ngay-bay-vietjet-air-7359_luatsutunhan.jpg', 0, 1, '7790000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(29, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-tay-bac-mua-nuoc-do-gia-tot-he-2017-khoi-hanh-tu-sai-gon-6930_luatsutunhan.jpg', 0, 1, '8399000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(30, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-trung-hue-dip-le-hoi-phao-hoa-quoc-te-da-nang-2017-6932_luatsutunhan.jpg', 0, 1, '4799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 11, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(31, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-trung-da-nang-hue-phong-nha-he-2017-bay-tu-sai-gon-6933_luatsutunhan.jpg', 0, 1, '5299000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 11, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(32, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-trung-hue-la-vang-dong-thien-duong-he-2017-tu-sai-gon-6935_luatsutunhan.jpg', 0, 1, '5599000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(33, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-trung-da-nang-hue-ho-truoi-he-2017-bay-tu-sai-gon-6936_luatsutunhan.jpg', 0, 1, '5199000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(34, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-trung-cu-lao-cham-4-ngay-bay-tu-sai-gon-gia-tot-he-2017-6937_luatsutunhan.jpg', 0, 1, '5399000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(35, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-trung-hue-hoi-an-dong-phong-nha-he-2017-tu-sai-gon-6938_luatsutunhan.jpg', 0, 1, '5899000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(36, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-trung-dong-thien-duong-5-ngay-he-2017-bay-tu-sai-gon-6939_luatsutunhan.jpg', 0, 1, '5999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(40, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-nha-trang-da-lat-5-ngay-khoi-hanh-tu-sai-gon-dip-he-2017-6911_luatsutunhan.png', 0, 1, '4099000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(41, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-tay-ha-tien-phu-quoc-4-ngay-3-dem-gia-tot-dip-he-2017-6912_luatsutunhan.jpg', 0, 1, '3599000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(42, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-phu-quoc-sieu-khuyen-mai-vietnam-airlines-khoi-hanh-tu-sai-gon-6913_luatsutunhan.jpg', 0, 1, '3799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 11, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(43, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-phu-quoc-nam-dao-vinpearl-khoi-hanh-tu-sai-gon-he-2017-6915_luatsutunhan.jpg', 0, 1, '3899000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 12, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(44, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-phu-yen-vung-ro-ganh-da-dia-he-2017-khoi-hanh-tu-sai-gon-6916_luatsutunhan.jpg', 0, 1, '3999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(45, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-quy-nhon-sieu-khuyen-mai-vietnam-airlines-khoi-hanh-tu-sai-gon-6917_luatsutunhan.jpg', 0, 1, '4099000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 12, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(46, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-quy-nhon-phu-yen-4-ngay-gia-tot-2017-khoi-hanh-tu-sai-gon-6918_luatsutunhan.jpg', 0, 1, '4899000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(47, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mai-chau-moc-chau-trang-an-bai-dinh-khoi-hanh-tu-sai-gon-6919_luatsutunhan.jpg', 0, 1, '5999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(48, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-bac-ha-noi-chua-bai-dinh-ha-long-he-2017-tu-sai-gon-6920_luatsutunhan.jpg', 0, 1, '7099000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 11, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(49, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-he-2017-mien-bac-ha-noi-ninh-binh-chua-bai-dinh-gia-tot-6921_luatsutunhan.jpg', 0, 1, '7099000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 11, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(1, 'RESORT01', '', '', '', '', '', '', '230', 5, 0, NULL, 0, 1, '29.9990', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 1, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(2, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-4n3d-khu-nghi-duong-club-med-kani-4-ve-may-bay-tp-hcm-maldives-7011_luatsutunhan.png', 0, 1, '29999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(3, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khach-san-the-reverie-sai-gon-5-ve-may-bay-khu-hoi-dua-don-san-bay-6779_luatsutunhan.png', 0, 1, '7999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(4, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-cocobay-boutique-hotels-da-nang-4-ve-may-bay-khu-hoi-dua-don-san-bay-an-toi-6735_luatsutunhan.png', 0, 1, '4199000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(5, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-nghi-duong-tai-khach-san-a-la-carte-da-nang-beach-4-phong-2-bedroom-tien-san-bay-an-toi-cho-4-khach-6716_luatsutunhan.png', 0, 1, '4299000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(6, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-nghi-duong-tai-khu-nghi-duong-furama-da-nang-5-dua-don-san-bay-xe-dua-don-di-tham-quan-pho-co-hoi-an-6701_luatsutunhan.png', 0, 1, '3800000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(7, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-nghi-duong-tai-the-ocean-villas-da-nang-5-shuttle-bus-dua-don-hoi-an-mien-phi-san-tennis-6708_luatsutunhan.png', 0, 1, '5099000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(8, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-victoria-phan-thiet-beach-resort-spa-4-1-bua-trua-toi-6236_luatsutunhan.png', 0, 1, '2195000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(9, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-edensee-lake-resort-spa-da-lat-5-ve-may-bay-khu-hoi-dua-don-san-bay-6242_luatsutunhan.png', 0, 1, '3599000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(10, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-2n1d-anantara-resort-spa-mui-ne-5-an-toi-6244_luatsutunhan.png', 0, 1, '2999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(11, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khach-san-muong-thanh-da-lat-4-ve-may-bay-khu-hoi-dua-don-san-bay-6245_luatsutunhan.png', 0, 1, '2499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(12, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-vinpearl-phu-quoc-ocean-resort-villas-5-ve-may-bay-an-3-bua-vinpearl-land-safari-6246_luatsutunhan.png', 0, 1, '5400000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(13, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-vinpearl-phu-quoc-5-ve-may-bay-an-3-bua-vinpearl-land-safari-6222_luatsutunhan.png', 0, 1, '5400000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(14, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-elwood-phu-quoc-4-dua-don-san-bay-ve-may-bay-khu-hoi-tu-tp-hcm-2608_luatsutunhan.png', 0, 1, '3199000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(15, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khach-san-equarius-singapore-5-tang-voucher-200-sgd-su-dung-dich-vu-an-uong-hoac-spa-2620_luatsutunhan.png', 0, 1, '7500000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(16, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-2n1d-khach-san-pullman-vung-tau-5-an-sang-buffet-bbq-hai-san-2597_luatsutunhan.png', 0, 1, '1888000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(17, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-2n1d-almanity-resort-and-spa-hoi-an-4-dua-don-san-bay-an-trua-toi-1957_luatsutunhan.png', 0, 1, '1350000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(18, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-duyen-ha-cam-ranh-5-dua-don-san-bay-an-toi-mien-phi-tre-em-duoi-12-tuoi-2225_luatsutunhan.png', 0, 1, '2299000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(19, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khach-san-grand-president-bangkok-4-ve-may-bay-khu-hoi-tu-tp-hcm-ha-noi-1916_luatsutunhan.jpg', 0, 1, '3999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(20, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tron-goi-an-sang-trua-toi-mien-phi-dua-don-san-bay-tai-khu-nghi-duong-six-senses-ninh-van-bay-nha-trang-5-1076_luatsutunhan.png', 0, 1, '3730000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(21, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khach-san-wyndham-legend-ha-long-5-ve-tham-quan-cong-vien-sun-world-xe-dua-don-tu-ha-noi-1882_luatsutunhan.png', 0, 1, '2799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(22, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-novotel-phu-quoc-5-dua-don-san-bay-ve-may-bay-khu-hoi-tu-ha-noi-1512_luatsutunhan.jpg', 0, 1, '5999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(23, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tron-goi-3n2d-khach-san-grand-mercure-da-nang-5-dua-don-san-bay-ve-may-bay-khu-hoi-tu-ha-noi-tp-hcm-1513_luatsutunhan.png', 0, 1, '4499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(24, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tron-goi-3n2d-khu-nghi-duong-novotel-phu-quoc-5-dua-don-san-bay-ve-may-bay-khu-hoi-tu-tp-hcm-1454_luatsutunhan.jpg', 0, 1, '3999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(25, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tron-goi-3n2d-khach-san-havana-nha-trang-tour-du-ngoan-dao-vinh-nha-trang-1438_luatsutunhan.png', 0, 1, '1999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(26, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khach-san-havana-nha-trang-5-tour-du-ngoan-dao-vinh-nha-trang-1436_luatsutunhan.png', 0, 1, '1999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(27, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-dubai-ha-noi-dubai-abu-dhabi-6-ngay-bay-emirate-airlines-5-sao-2344_luatsutunhan.jpg', 0, 1, '24990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(37, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-nang-lao-dong-bac-thai-khoi-hanh-tu-sai-gon-6940_luatsutunhan.jpg', 0, 1, '8599000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(38, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-nha-trang-vinpearl-nha-tho-da-4-ngay-di-sai-gon-he-2017-6910_luatsutunhan.jpg', 0, 1, '3299000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(39, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-tay-hon-son-nam-du-3-ngay-3-dem-khoi-hanh-tu-sai-gon-6909_luatsutunhan.jpg', 0, 1, '3199000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(50, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ha-noi-ha-long-ninh-binh-sapa-khuyen-mai-vietnam-airlines-6929_luatsutunhan.jpg', 0, 1, '8299000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(51, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-bac-ha-long-trang-an-ninh-binh-khuyen-mai-vietnam-airlines-6922_luatsutunhan.jpg', 0, 1, '7299000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(52, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-bac-ha-noi-sapa-ham-rong-4-ngay-dip-he-2017-6923_luatsutunhan.jpg', 0, 1, '6799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(53, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-ha-noi-lao-cai-sapa-fansipan-khuyen-mai-vietnam-airlines-6924_luatsutunhan.jpg', 0, 1, '6999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(54, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-bac-ha-long-ninh-binh-dam-van-long-bay-tu-sai-gon-6925_luatsutunhan.jpg', 0, 1, '6850000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(55, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-bac-5-ngay-bay-tu-sai-gon-khuyen-mai-vietnam-airlines-6926_luatsutunhan.jpg', 0, 1, '7499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(56, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-dong-bac-ha-giang-quang-ba-meo-vac-den-hung-he-2017-6927_luatsutunhan.jpg', 0, 1, '7199000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(57, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-dong-bac-bac-kan-gia-tot-khoi-hanh-tu-sai-gon-he-2017-6928_luatsutunhan.jpg', 0, 1, '7499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(58, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-nha-trang-binh-hung-vuon-nho-tu-sai-gon-gia-tot-he-2017-6908_luatsutunhan.jpg', 0, 1, '2999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(59, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-nha-trang-phu-yen-ganh-da-dia-4-ngay-gia-tot-dip-he-2017-6907_luatsutunhan.jpg', 0, 1, '3599000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(60, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-rach-gia-kham-pha-dao-nam-du-3-ngay-3-dem-gia-tot-he-2017-6899_luatsutunhan.jpg', 0, 1, '2799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(61, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-buon-ma-thuot-buon-don-3-ngay-gia-tot-tu-sai-gon-dip-he-2017-6900_luatsutunhan.jpg', 0, 1, '2699000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(62, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-ha-tien-phu-quoc-3-ngay-3-dem-he-2017-khoi-hanh-tu-sai-gon-6901_luatsutunhan.jpg', 0, 1, '2999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(63, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-chau-doc-ha-tien-4-ngay-gia-tot-he-2017-khoi-hanh-tu-sai-gon-6902_luatsutunhan.jpg', 0, 1, '3099000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(64, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-can-tho-ca-mau-soc-trang-bac-lieu-4-ngay-gia-tot-he-2017-6903_luatsutunhan.jpg', 0, 1, '2999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(65, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-thien-duong-dao-phu-quy-thuong-thuc-cua-huynh-de-2017-6904_luatsutunhan.jpg', 0, 1, '2999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(66, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-diep-son-chinh-phuc-con-duong-mon-tren-bien-gia-tot-he-2017-6905_luatsutunhan.jpg', 0, 1, '2799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(67, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-tay-trai-nghiem-lam-nguoi-dan-miet-vuon-chinh-hieu-he-2017-6906_luatsutunhan.jpg', 0, 1, '2499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(68, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-da-lat-doi-mong-mo-langbiang-4-ngay-gia-tot-dip-he-2017-6885_luatsutunhan.jpg', 0, 1, '2499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(69, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phu-yen-dai-lanh-5-sao-3n3d-hai-dang-travel-1472_luatsutunhan.jpg', 0, 1, '2150000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(70, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phu-yen-vinh-van-phong-3n3d-hai-dang-travel-1474_luatsutunhan.jpg', 0, 1, '1850000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(71, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phu-yen-vinh-van-phong-5-sao-3n3d-hai-dang-travel-1477_luatsutunhan.jpg', 0, 1, '2150000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(72, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-am-thuc-3n3d-hai-dang-travel-1479_luatsutunhan.jpg', 0, 1, '1190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(73, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-milk-3n3d-hai-dang-travel-1481_luatsutunhan.jpg', 0, 1, '1190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(74, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-ho-tuyen-lam-3n3d-hai-dang-travel-1482_luatsutunhan.jpg', 0, 1, '1290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(75, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-thanh-tinh-3n3d-hai-dang-travel-1484_luatsutunhan.jpg', 0, 1, '1150000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(76, 'TOUR76', '', '', '', '', '', '', '1', 5, 6, 'catalog/du_lich/tour-da-lat-thung-lung-vang-3n2d-hai-dang-travel-1485_luatsutunhan.jpg', 0, 1, '1590000.0000', 0, 0, '2017-06-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-25 14:51:49'),
(77, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-thung-lung-vang-4-sao-3n3d-hai-dang-travel-1487_luatsutunhan.jpg', 0, 1, '1490000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(78, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-thung-lung-vang-2-sao-3n3d-hai-dang-travel-1488_luatsutunhan.jpg', 0, 1, '1290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(79, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-tinh-yeu3n3d-hai-dang-travel-1489_luatsutunhan.jpg', 0, 1, '1490000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(80, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-thung-lung-tinh-yeu-3n2d-hai-dang-travel-1490_luatsutunhan.jpg', 0, 1, '1190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(81, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-phototrip-3n3d-hai-dang-travel-1491_luatsutunhan.jpg', 0, 1, '1250000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(82, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-vip-3n3d-hai-dang-travel-1493_luatsutunhan.jpg', 0, 1, '1379000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(83, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/festival-bien-nha-trang-hai-dang-travel-4597_luatsutunhan.jpg', 0, 1, '1669999.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(84, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-diep-son-phu-yen-5-sao-3n3d-hai-dang-travel-1471_luatsutunhan.jpg', 0, 1, '2190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(85, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-thuyen-5-sao-kham-pha-singapore-penang-langkawi-khoi-hanh-06-11-2017-6563_luatsutunhan.jpg', 0, 1, '21900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(86, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-thuyen-5-sao-kham-pha-singapore-penang-phuket-khoi-hanh-31-10-2017-6540_luatsutunhan.jpg', 0, 1, '20900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(87, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-ha-giang-lung-cu-dong-van-meo-vac-thu-6-hang-tuan-apt-travel-4250_luatsutunhan.jpg', 0, 1, '2452000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(88, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-thuyen-5-sao-singapore-penang-langkawi-khoi-hanh-23-10-2017-6525_luatsutunhan.jpg', 0, 1, '19900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(89, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/cung-du-thuyen-5-sao-kham-pha-singapore-penang-phuket-khoi-hanh-16-10-2017-6511_luatsutunhan.jpg', 0, 1, '23900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(90, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/kham-pha-thuong-hai-kumamoto-miyazak-cung-du-thuyen-5-sao-khoi-hanh-25-08-2017-6410_luatsutunhan.jpg', 0, 1, '38900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(91, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-thuyen-5-sao-thuong-hai-hiroshima-kochi-khoi-hanh-15-08-2017-6394_luatsutunhan.jpg', 0, 1, '37900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(92, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-thuyen-5-sao-thuong-hai-okinawa-khoi-hanh-09-08-2017-star-travel-6383_luatsutunhan.jpg', 0, 1, '33900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(93, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ghep-tay-thien-tam-dao-2-ngay-1-dem-5222_luatsutunhan.jpg', 0, 1, '1321000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(94, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-sapa-sapa-3-ngay-2-dem-khach-san-3-sao-4427_luatsutunhan.jpg', 0, 1, '2856000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(95, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-nga-9-ngay-8-dem-bay-vietnamairline-apt-travel-4303_luatsutunhan.jpg', 0, 1, '50290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(96, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-trung-quoc-6-ngay-5-dem-truong-gia-gioi-phuong-hoang-co-tran-6341_luatsutunhan.jpg', 0, 1, '15499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(97, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-trung-quoc-6-ngay-5-dem-khoi-hanh-tu-tp-hcm-dip-he-2017-6342_luatsutunhan.jpg', 0, 1, '13499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(98, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-trung-quoc-bac-kinh-van-ly-truong-thanh-gia-tot-dip-he-2017-6340_luatsutunhan.jpg', 0, 1, '8499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(99, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-trung-quoc-7-ngay-6-dem-gia-tot-he-2017-khoi-hanh-tu-tp-hcm-6343_luatsutunhan.jpg', 0, 1, '14999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(100, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-tay-trai-nghiem-thu-vui-tat-muong-bat-ca-dip-he-2017-6344_luatsutunhan.jpg', 0, 1, '699000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(101, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-phan-thiet-hanh-huong-duc-me-tapao-gia-tot-2017-6345_luatsutunhan.jpg', 0, 1, '999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(102, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-phan-thiet-mui-ne-2-ngay-gia-tot-dip-he-2017-tu-sai-gon-6346_luatsutunhan.jpg', 0, 1, '1399000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(103, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-tay-my-tho-can-tho-cho-noi-cai-rang-he-2017-6349_luatsutunhan.jpg', 0, 1, '1499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(104, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-dao-binh-hung-ninh-chu-2-ngay-2-dem-gia-tot-dip-he-2017-6347_luatsutunhan.png', 0, 1, '1699000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(105, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-thuyen-5-sao-kham-pha-thuong-hai-hiroshima-miyazaki-kobe-khoi-hanh-21-07-2017-6360_luatsutunhan.jpg', 0, 1, '40900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(106, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-tay-ca-mau-dat-mui-soc-trang-2-ngay-2-dem-he-2017-6348_luatsutunhan.jpg', 0, 1, '1799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(107, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-tay-ha-tien-2-ngay-gia-tot-khoi-hanh-tu-tp-hcm-6351_luatsutunhan.jpg', 0, 1, '1999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(108, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-chau-doc-rung-tra-su-chua-huynh-dao-2n2d-gia-tot-he-2017-6350_luatsutunhan.jpg', 0, 1, '1699000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(109, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-cam-ranh-dao-binh-ba-2-ngay-2-dem-gia-tot-he-2017-tu-sai-gon-6352_luatsutunhan.jpg', 0, 1, '1999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(110, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-tay-kham-pha-dao-nam-du-2-ngay-2-dem-he-2017-tu-sai-gon-6353_luatsutunhan.jpg', 0, 1, '2299000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(111, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-da-lat-trai-nghiem-voi-nong-trai-da-lat-gia-tot-dip-he-2017-6354_luatsutunhan.jpg', 0, 1, '1899000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(112, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-mien-tay-my-tho-chau-doc-rung-tra-su-3-ngay-dip-he-2017-6355_luatsutunhan.jpg', 0, 1, '2099000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(113, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-dao-binh-hung-ninh-chu-vuon-nho-3-ngay-gia-tot-dip-he-2017-6356_luatsutunhan.jpg', 0, 1, '1999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(114, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-trung-nhat-cung-du-thuyen-5-sao-khoi-hanh-08-07-2017-6358_luatsutunhan.jpg', 0, 1, '38900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(115, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-singapore-4-ngay-3-dem-dip-he-2017-khoi-hanh-tu-sai-gon-6320_luatsutunhan.jpg', 0, 1, '8949000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(116, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-singapore-3-ngay-2-dem-gia-tot-he-2017-tu-tp-hcm-6321_luatsutunhan.jpg', 0, 1, '7249000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(117, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-malaysia-4-ngay-3-dem-dip-he-2017-khoi-hanh-tu-sai-gon-6322_luatsutunhan.jpg', 0, 1, '5549000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(118, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-singapore-malaysia-5-ngay-4-dem-dip-he-2017-gia-tot-tu-tp-hcm-6323_luatsutunhan.jpg', 0, 1, '9999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(119, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-singapore-malaysia-6-ngay-5-dem-gia-tot-he-2017-6324_luatsutunhan.jpg', 0, 1, '10999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(120, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-singapore-malaysia-6-ngay-dip-he-2017-khoi-hanh-tu-sai-gon-6325_luatsutunhan.jpg', 0, 1, '10499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(121, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-sin-mal-indo-6-ngay-5-dem-gia-tot-dip-he-2017-tu-tp-hcm-6326_luatsutunhan.jpg', 0, 1, '11499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(122, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-indonesia-4-ngay-3-dem-thien-duong-dao-bali-gia-tot-2017-6327_luatsutunhan.jpg', 0, 1, '11299000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(123, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-campuchia-4-ngay-3-dem-siem-reap-phnom-penh-gia-tot-he-2017-6328_luatsutunhan.jpg', 0, 1, '3999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(124, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-shihanoukville-korong-saloem-4-ngay-3-dem-he-2017-gia-tot-6329_luatsutunhan.jpg', 0, 1, '4199000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(125, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-han-quoc-4-ngay-4-dem-gia-tot-2017-khoi-hanh-tu-tp-hcm-6330_luatsutunhan.jpg', 0, 1, '11499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(126, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-han-quoc-4-ngay-4-dem-bay-vietjet-air-gia-tot-dip-he-2017-6331_luatsutunhan.jpg', 0, 1, '11999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(127, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-han-quoc-5-ngay-5-dem-gia-tot-he-2017-bay-vietjet-air-6332_luatsutunhan.jpg', 0, 1, '16499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(128, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-nhat-ban-4-ngay-3-dem-dip-he-2017-ngam-hoa-lavender-6333_luatsutunhan.jpg', 0, 1, '23999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(129, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-nhat-ban-he-2017-gia-tot-ngam-hoa-cam-tu-cau-tu-tp-hcm-6334_luatsutunhan.jpg', 0, 1, '30499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(130, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-hong-kong-4-ngay-3-dem-gia-tot-2017-tu-sai-gon-6335_luatsutunhan.jpg', 0, 1, '11999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(131, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-dai-loan-5-ngay-5-dem-he-2017-khoi-hanh-tu-tp-hcm-6336_luatsutunhan.jpg', 0, 1, '10499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(132, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-dai-loan-5-ngay-4-dem-gia-tot-dip-he-2017-khoi-hanh-tu-tp-hcm-6337_luatsutunhan.jpg', 0, 1, '10499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(133, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-dai-loan-4-ngay-3-dem-khoi-hanh-tu-sai-gon-gia-tot-he-2017-6338_luatsutunhan.jpg', 0, 1, '9499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(134, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-trung-quoc-4-ngay-3-dem-khoi-hanh-tu-sai-gon-gia-tot-2017-6339_luatsutunhan.jpg', 0, 1, '7888000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(135, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-nhat-ban-5-ngay-5-dem-he-2017-ngam-hoa-lavender-gia-tot-6314_luatsutunhan.jpg', 0, 1, '29999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(136, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-thai-lan-5-ngay-4-dem-gia-tot-thang-7-khoi-hanh-tu-tp-hcm-6315_luatsutunhan.jpg', 0, 1, '6499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(137, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-thai-lan-5-ngay-4-dem-dip-he-2017-khoi-hanh-tu-sai-gon-6316_luatsutunhan.jpg', 0, 1, '6499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(138, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-thai-lan-cao-cap-dip-he-2017-gia-tot-khoi-hanh-tu-tp-hcm-6317_luatsutunhan.jpg', 0, 1, '6899000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(139, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-thai-lan-5-ngay-4-dem-safari-nong-nooch-gia-tot-he-2017-6318_luatsutunhan.jpg', 0, 1, '7499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(140, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-thai-lan-cao-cap-gia-tot-dip-he-2017-khoi-hanh-tu-sai-gon-6319_luatsutunhan.jpg', 0, 1, '6999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(141, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-thuyen-5-sao-kham-pha-trung-quoc-nhat-ban-khoi-hanh-31-07-2017-6224_luatsutunhan.jpg', 0, 1, '38900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(142, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-thai-lan-ha-noi-bangkok-pattaya-5-ngay-bay-thai-air-asia-hoang-viet-travel-5722_luatsutunhan.jpg', 0, 1, '5990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(143, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-thuyen-5-sao-khoi-hanh-15-07-kham-pha-thuong-hai-kumamoto-fukuoka-star-travel-5702_luatsutunhan.jpg', 0, 1, '41900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(144, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-thuyen-5-sao-kham-pha-trung-nhat-khoi-hanh-24-6-5675_luatsutunhan.jpg', 0, 1, '35900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(145, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-diep-son-doc-let-2n2d-1347_luatsutunhan.jpg', 0, 1, '1490000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(146, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-diep-son-nha-trang-3n3d-1389_luatsutunhan.jpg', 0, 1, '1490000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(147, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-quy-nhon-phu-yen-4n4d-1468_luatsutunhan.jpg', 0, 1, '2750000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(148, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-quy-nhon-phu-yen-4n4d-1468_luatsutunhan.jpg', 0, 1, '2750000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(149, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/phu-yen-tuy-hoa-4-ngay-3-dem-ghep-tron-goi-5209_luatsutunhan.jpg', 0, 1, '5874000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(150, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/phu-yen-tuy-hoa-4-ngay-3-dem-ghep-tron-goi-5209_luatsutunhan.jpg', 0, 1, '5874000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(151, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-han-quoc-seoul-everland-dao-nami-4n4d-5640_luatsutunhan.jpg', 0, 1, '11999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(152, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-han-quoc-seoul-everland-dao-nami-4n4d-5640_luatsutunhan.jpg', 0, 1, '11999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(153, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-nhat-ban-dip-he-2017-kham-pha-cung-duong-tuyet-tateyama-tuyen-rong-4n4d-5641_luatsutunhan.jpg', 0, 1, '22999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(154, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-nhat-ban-dip-he-2017-kham-pha-cung-duong-tuyet-tateyama-tuyen-rong-4n4d-5641_luatsutunhan.jpg', 0, 1, '22999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(155, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nhat-ban-osaka-kyoto-nagoya-fuji-hakone-tokyo-5n5d-5642_luatsutunhan.jpg', 0, 1, '29499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(156, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nhat-ban-osaka-kyoto-nagoya-fuji-hakone-tokyo-5n5d-5642_luatsutunhan.jpg', 0, 1, '29499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(157, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-dubai-4-ngay-4-dem-gia-tot-dip-he-2017-khoi-hanh-tu-tp-hcm-5218_luatsutunhan.jpg', 0, 1, '20799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00');
INSERT INTO `hoaunet_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(158, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-dubai-4-ngay-4-dem-gia-tot-dip-he-2017-khoi-hanh-tu-tp-hcm-5218_luatsutunhan.jpg', 0, 1, '20799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(159, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-da-nang-cao-nguyen-ba-na-hue-hoi-an-le-hoi-phao-hoa-quoc-te-5211_luatsutunhan.jpg', 0, 1, '5799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(160, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-da-nang-cao-nguyen-ba-na-hue-hoi-an-le-hoi-phao-hoa-quoc-te-5211_luatsutunhan.jpg', 0, 1, '5799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(161, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-ha-noi-ninh-binh-ha-long-sapa-6-ngay-5-dem-5203_luatsutunhan.png', 0, 1, '8199000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(162, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-ha-noi-ninh-binh-ha-long-sapa-6-ngay-5-dem-5203_luatsutunhan.png', 0, 1, '8199000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(163, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-he-dong-bac-ha-giang-quan-ba-cao-bang-ho-ba-be-gia-tot-5190_luatsutunhan.jpg', 0, 1, '8499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(164, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-he-dong-bac-ha-giang-quan-ba-cao-bang-ho-ba-be-gia-tot-5190_luatsutunhan.jpg', 0, 1, '8499000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(165, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-ha-noi-yen-tu-ha-long-lao-cai-sapa-5n4d-ks-4-sao-5194_luatsutunhan.jpg', 0, 1, '7199000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(166, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-ha-noi-yen-tu-ha-long-lao-cai-sapa-5n4d-ks-4-sao-5194_luatsutunhan.jpg', 0, 1, '7199000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(167, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-ninh-binh-hang-ngay-bai-dinh-trang-an-1-ngay-4426_luatsutunhan.jpg', 0, 1, '604000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(168, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-ninh-binh-hang-ngay-bai-dinh-trang-an-1-ngay-4426_luatsutunhan.jpg', 0, 1, '604000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(169, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-sapa-hang-ngay-sapa-2-ngay-1-dem-3-sao-apt-travel-4425_luatsutunhan.jpg', 0, 1, '1882000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(170, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-sapa-hang-ngay-sapa-2-ngay-1-dem-3-sao-apt-travel-4425_luatsutunhan.jpg', 0, 1, '1882000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(171, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-moc-chau-moc-chau-2-ngay-1-dem-thu-7-hang-tuan-4429_luatsutunhan.jpg', 0, 1, '1400000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(172, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-moc-chau-moc-chau-2-ngay-1-dem-thu-7-hang-tuan-4429_luatsutunhan.jpg', 0, 1, '1400000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(173, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-sapa-hang-ngay-2-ngay-1-dem-khach-san-2-sao-apt-travel-4423_luatsutunhan.jpg', 0, 1, '1662000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(174, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-sapa-hang-ngay-2-ngay-1-dem-khach-san-2-sao-apt-travel-4423_luatsutunhan.jpg', 0, 1, '1662000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(175, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-mot-thoang-mong-mo-2n2d-1450_luatsutunhan.jpg', 0, 1, '999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(176, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-mot-thoang-mong-mo-2n2d-1450_luatsutunhan.jpg', 0, 1, '999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(177, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-vip-buffet-3n3d-1417_luatsutunhan.jpg', 0, 1, '1379000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(178, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-vip-buffet-3n3d-1417_luatsutunhan.jpg', 0, 1, '1379000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(179, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-du-ngoan-dao-3n3d-1412_luatsutunhan.JPG', 0, 1, '1890000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(180, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-du-ngoan-dao-3n3d-1412_luatsutunhan.JPG', 0, 1, '1890000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(181, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-hon-tam-3n3d-1411_luatsutunhan.jpg', 0, 1, '2290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(182, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-hon-tam-3n3d-1411_luatsutunhan.jpg', 0, 1, '2290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(183, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phu-quoc-dao-ngoc-thien-duong-3n3d-1382_luatsutunhan.jpg', 0, 1, '2090000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(184, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phu-quoc-dao-ngoc-thien-duong-3n3d-1382_luatsutunhan.jpg', 0, 1, '2090000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(185, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/cat-ba-cao-toc-2-ngay-1-dem-2-sao-apt-travel-4305_luatsutunhan.jpg', 0, 1, '1780000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(186, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/cat-ba-cao-toc-2-ngay-1-dem-2-sao-apt-travel-4305_luatsutunhan.jpg', 0, 1, '1780000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(187, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/ha-noi-ho-ba-be-thac-ban-gioc-dong-nguom-ngao-ha-noi-4249_luatsutunhan.jpg', 0, 1, '2564000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(188, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/ha-noi-ho-ba-be-thac-ban-gioc-dong-nguom-ngao-ha-noi-4249_luatsutunhan.jpg', 0, 1, '2564000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(189, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-dai-loan-ha-noi-dai-bac-dai-trung-cao-hung-ha-noi-apt-travel-4247_luatsutunhan.jpg', 0, 1, '12990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(190, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-dai-loan-ha-noi-dai-bac-dai-trung-cao-hung-ha-noi-apt-travel-4247_luatsutunhan.jpg', 0, 1, '12990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(191, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/ha-long-2-ngay-1-dem-ngu-tau-halong-dragon-gold-3sao-apt-travel-4300_luatsutunhan.jpg', 0, 1, '2296000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(192, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/ha-long-2-ngay-1-dem-ngu-tau-halong-dragon-gold-3sao-apt-travel-4300_luatsutunhan.jpg', 0, 1, '2296000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(193, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/ha-long-2-ngay-1-dem-ngu-tau-vietbeauty-4-sao-apt-travel-4298_luatsutunhan.jpg', 0, 1, '2688000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(194, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/ha-long-2-ngay-1-dem-ngu-tau-vietbeauty-4-sao-apt-travel-4298_luatsutunhan.jpg', 0, 1, '2688000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(195, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-1-ngay-kham-pha-tokyo-nhat-banonetour-vie-t-nam-2420_luatsutunhan.jpg', 0, 1, '3290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(196, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-thai-lan-ha-noi-bangkok-safari-world-pattaya-dao-coral-5-ngay-bay-lion-air-3437_luatsutunhan.jpg', 0, 1, '5990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(197, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/vui-he-cung-du-thuyen-5-sao-kham-pha-singapore-penang-phuket-singapore-khoi-hanh-08-05-2017-star-travel-3312_luatsutunhan.jpg', 0, 1, '25900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(198, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/du-lich-thai-lan-ha-noi-bangkok-pattaya-dao-coral-4-ngay-bay-lion-air-3425_luatsutunhan.jpg', 0, 1, '6990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(199, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/vui-he-cung-du-thuyen-5-sao-kham-pha-singapore-malaysia-khoi-hanh-02-06-star-travel-2418_luatsutunhan.jpg', 0, 1, '18900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(200, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-nhat-ban-ha-noi-tokyo-nui-phu-sy-4-ngay-bay-vietnam-airlines-hoang-viet-travel-2498_luatsutunhan.jpg', 0, 1, '24900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(201, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-lang-lat3n3d-hai-dang-travel-1492_luatsutunhan.jpg', 0, 1, '1290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(202, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-thuyen-5-sao-freedom-of-the-seas-di-tay-ban-nha-phap-y-star-travel-2430_luatsutunhan.jpg', 0, 1, '69900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(203, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-thuyen-5-sao-voyager-of-the-seas-di-singapore-kuala-lumpur-star-travel-2431_luatsutunhan.jpg', 0, 1, '20900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(204, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/cung-du-thuyen-5-sao-trai-nghiem-mua-hoa-tim-nhat-ban-2419_luatsutunhan.jpg', 0, 1, '36900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(205, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/kham-pha-tokyo-nhat-ban-3-ngay-2-dem-onetour-viet-nam-2424_luatsutunhan.jpg', 0, 1, '11290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(206, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-2-ngay-kham-pha-outside-truot-tuyet-tai-tokyo-nhat-ban-onetour-viet-nam-2423_luatsutunhan.jpg', 0, 1, '6190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(207, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-2-ngay-kham-pha-tokyo-nhat-ban-onetour-viet-nam-2422_luatsutunhan.jpg', 0, 1, '6150000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(208, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-1-ngay-kham-pha-outside-truot-tuyet-tai-tokyo-nhat-ban-onetour-vie-t-nam-2421_luatsutunhan.JPG', 0, 1, '2800000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(209, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-diep-son-dai-lanh-2n2d-hai-dang-travel-1432_luatsutunhan.jpg', 0, 1, '1490000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(210, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-malaysia-ha-noi-kuala-lumpur-genting-4-ngay-khoi-hanh-29-4-hoang-viet-travel-2333_luatsutunhan.jpg', 0, 1, '8990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(211, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ha-noi-bangkok-pattaya-ha-noi-bay-nok-air-onetour-vie-t-nam-1873_luatsutunhan.jpg', 0, 1, '6900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(212, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khach-san-imperial-vung-tau-5-xe-dua-don-03-bua-an-trua-02-bua-an-sang-va-toi-491_luatsutunhan.png', 0, 1, '3630000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(213, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-tam-binh-02-2n2d-hai-dang-travel-1457_luatsutunhan.jpg', 0, 1, '999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(214, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phan-thiet-mui-ne-dong-gia-2n1d-hai-dang-travel-1456_luatsutunhan.jpg', 0, 1, '999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(215, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-du-ngoan-dao-2n2d-hai-dang-travel-1455_luatsutunhan.jpg', 0, 1, '990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(216, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ha-noi-bangkok-pattaya-ha-noi-bay-voi-jetstar-onetour-vie-t-nam-1931_luatsutunhan.jpg', 0, 1, '6900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(217, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ha-noi-singapore-ha-noi-onetour-vie-t-nam-1874_luatsutunhan.jpg', 0, 1, '15400000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(218, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-du-lich-han-quoc-tham-du-dai-le-phat-dan-2017-onetour-vie-t-nam-1877_luatsutunhan.jpg', 0, 1, '17500000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(219, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ha-noi-singapore-malaysia-ha-noi-onetour-vie-t-nam-1876_luatsutunhan.jpg', 0, 1, '11900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(220, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ha-noi-dubai-abu-dhabi-dubai-ha-noi-onetour-vie-t-nam-1871_luatsutunhan.jpg', 0, 1, '29900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(221, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ha-noi-seoul-nami-everland-thap-nam-san-ha-noi-tang-sauna-onetour-vie-t-nam-1870_luatsutunhan.jpg', 0, 1, '12900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(222, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phan-thiet-da-lat-4n4d-hai-dang-travel-1445_luatsutunhan.jpg', 0, 1, '1590000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(223, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-binh-ba-nha-trang-3n3d-hai-dang-travel-1384_luatsutunhan.jpg', 0, 1, '1590000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(224, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-binh-hung-nha-trang-3n3d-hai-dang-travel-1383_luatsutunhan.jpg', 0, 1, '1490000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(225, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-diep-son-phu-yen-4-sao-3n3d-hai-dang-travel-1469_luatsutunhan.jpg', 0, 1, '1890000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(226, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-hon-tre-2n2d-hai-dang-travel-1381_luatsutunhan.jpg', 0, 1, '1390000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(227, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ha-tien-dao-hai-tac-hai-dang-travel-1360_luatsutunhan.jpg', 0, 1, '1250000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(228, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/phu-yen-dai-lanh-4-sao-3n3d-hai-dang-travel-1470_luatsutunhan.png', 0, 1, '1850000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(229, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/ha-noi-osaka-kyoto-nagoya-fuji-tokyo-cung-duo-ng-va-ng-1524_luatsutunhan.jpg', 0, 1, '40900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(230, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-ba-lua-rung-tram-tra-su-2n2d-hai-dang-travel-1335_luatsutunhan.jpg', 0, 1, '1222000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(231, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-chau-doc-ha-tien-2n2d-hai-dang-travel-1449_luatsutunhan.jpg', 0, 1, '999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(232, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phan-thiet-la-gi-2n1d-hai-dang-travel-1446_luatsutunhan.jpg', 0, 1, '999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(233, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-binh-ba-tom-hum-2n2d-hai-dang-travel-1448_luatsutunhan.jpg', 0, 1, '999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(234, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phan-thiet-bluebay-resort-2n1d-hai-dang-travel-1434_luatsutunhan.jpg', 0, 1, '1190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(235, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ninh-chu-tanyoli-mui-dinh-2n2d-hai-dang-travel-1435_luatsutunhan.jpg', 0, 1, '1190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(236, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-binh-hung-bien-ninh-chu-da-lat-4n4d-hai-dang-travel-1441_luatsutunhan.jpg', 0, 1, '1790000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(237, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-da-lat-4n4d-hai-dang-travel-1442_luatsutunhan.jpg', 0, 1, '1699000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(238, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ninh-chu-da-lat-4n4d-hai-dang-travel-1443_luatsutunhan.jpg', 0, 1, '1690000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(239, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-binh-ba-da-lat-3n3d-hai-dang-travel-1440_luatsutunhan.jpg', 0, 1, '1490000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(240, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-quang-ngai-quy-nhon-3n4d-hai-dang-travel-1460_luatsutunhan.jpg', 0, 1, '3290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(241, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-quy-nhon-ky-co-eo-gio-3n3d-hai-dang-travel-1459_luatsutunhan.jpg', 0, 1, '2290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(242, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-eo-gio-dao-ky-co-3n3d-hai-dang-travel-1458_luatsutunhan.jpg', 0, 1, '2990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(243, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ghep-tron-goi-6n5d-ha-noi-singapore-malaysia-ha-noi-hoang-viet-travel-1475_luatsutunhan.jpg', 0, 1, '10990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(244, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-nang-ba-na-hill-pho-co-hoi-an-3n4d-hai-dang-travel-1463_luatsutunhan.JPG', 0, 1, '3290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(245, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-quy-nhon-phu-yen-3n4d-hai-dang-travel-1466_luatsutunhan.jpg', 0, 1, '2990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(246, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-binh-ba-nha-trang-da-lat-4n4d-hai-dang-travel-1439_luatsutunhan.jpg', 0, 1, '1899000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(247, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-binh-hung-2n2d-hai-dang-travel-1451_luatsutunhan.jpg', 0, 1, '999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(248, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ninh-chu-ve-mien-bien-nang-2n2d-hai-dang-travel-1453_luatsutunhan.jpg', 0, 1, '999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(249, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-diep-son-nha-trang-2n2d-hai-dang-travel-1433_luatsutunhan.jpg', 0, 1, '1250000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(250, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ca-mau-bac-lieu-soc-trang-2n2d-hai-dang-travel-1430_luatsutunhan.jpg', 0, 1, '1250000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(251, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-binh-ba-vinh-hy-2n2d-hai-dang-travel-1419_luatsutunhan.jpg', 0, 1, '1290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(252, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-buon-me-thuot-3n3d-hai-dang-travel-1421_luatsutunhan.jpg', 0, 1, '1390000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(253, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-buon-me-thuot-gia-lai-kon-tum-mang-den-3n3d-hai-dang-travel-1424_luatsutunhan.jpg', 0, 1, '1888000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(254, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-tu-binh-3n3d-hai-dang-travel-1426_luatsutunhan.jpg', 0, 1, '1890000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(255, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-tam-binh-3n3d-hai-dang-travel-1425_luatsutunhan.jpg', 0, 1, '1690000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(256, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-binh-ba-2n2d-hai-dang-travel-1418_luatsutunhan.jpg', 0, 1, '1190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(257, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-vinh-van-phong-3n3d-hai-dang-travel-1416_luatsutunhan.jpg', 0, 1, '1690000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(258, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-sieu-tiet-kiem-2n3d-hai-dang-travel-1415_luatsutunhan.jpg', 0, 1, '1739000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(259, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-con-se-tre-3n3d-hai-dang-travel-1409_luatsutunhan.jpg', 0, 1, '1190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(260, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-phu-quy-huyen-thoai-3n3d-hai-dang-travel-1368_luatsutunhan.jpg', 0, 1, '2290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(261, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-nam-du-2n2d-hai-dang-travel-1370_luatsutunhan.jpg', 0, 1, '1490000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(262, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-quang-ngai-ly-son-4n4d-hai-dang-travel-1374_luatsutunhan.jpg', 0, 1, '2990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(263, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-hon-son-2n2d-hai-dang-travel-1366_luatsutunhan.jpg', 0, 1, '1390000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(264, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ca-mau-dao-hon-da-bac-3n3d-hai-dang-travel-1364_luatsutunhan.jpg', 0, 1, '1790000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(265, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-kham-pha-dao-binh-ba-2n2d-hai-dang-travel-1337_luatsutunhan.jpg', 0, 1, '1490000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(266, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-binh-hung-ninh-chu-2n2d-hai-dang-travel-1338_luatsutunhan.jpg', 0, 1, '1250000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(267, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-kham-pha-con-son-3n2d-hai-dang-travel-1341_luatsutunhan.jpg', 0, 1, '2250000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(268, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-cu-lao-cau-2n2d-hai-dang-travel-1342_luatsutunhan.jpg', 0, 1, '1250000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(269, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dao-binh-hung-bien-binh-lap-2n2d-hai-dang-travel-1334_luatsutunhan.jpg', 0, 1, '1290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(270, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-myanmar-ha-noi-yangon-bago-golden-rock-chua-noi-thanlyn-5n-bay-emirates-5-sao-hoang-viet-travel-1281_luatsutunhan.jpg', 0, 1, '12990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(271, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-trung-quoc-ha-noi-nam-ninh-truong-gia-gioi-phuong-hoang-co-tran-6n5d-hoang-viet-travel-1275_luatsutunhan.jpg', 0, 1, '7900000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(272, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-singapore-malaysia-ha-noi-singapore-kula-lumpur-5n-bay-vietnam-airlines-hoang-viet-1278_luatsutunhan.jpg', 0, 1, '9990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(273, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ha-noi-singapore-malaysia-6n5d-gia-kich-cau-hoang-viet-travel-1279_luatsutunhan.jpg', 0, 1, '10990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(274, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-singapore-ha-noi-singapore-dao-sentosa-4n3d-hoang-viet-travel-1276_luatsutunhan.jpg', 0, 1, '9990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(275, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-trung-quoc-ha-noi-nam-ninh-quang-chau-tham-quyen-5n4d-hoang-viet-travel-1277_luatsutunhan.jpg', 0, 1, '6690000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(276, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-dai-loan-ha-noi-dai-trung-cao-hung-dai-bac-5n4d-bay-china-airlines-hoang-viet-travel-1268_luatsutunhan.jpg', 0, 1, '12990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(277, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-thai-lan-ha-noi-bangkok-pattaya-dao-coral-4n3d-hoang-viet-travel-1263_luatsutunhan.jpg', 0, 1, '5999000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(278, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-han-ha-noi-seoul-dao-nami-everland-5n4d-bay-hang-khong-vietjet-air-hoang-viet-travel-1265_luatsutunhan.jpg', 0, 1, '11990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(279, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-thai-lan-ha-noi-bangkok-pattaya-dao-coral-5n4d-bay-qatar-5-sao-hoang-viet-travel-1261_luatsutunhan.jpg', 0, 1, '5990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(280, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-thai-lan-ha-noi-bangkok-pattaya-dao-coral-5n4d-bay-hang-khong-nok-air-hoang-viet-travel-1255_luatsutunhan.jpg', 0, 1, '5990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 11, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(281, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-myanmar-ha-noi-yangon-bago-golden-rock-4n3d-bay-vietnam-airlines-1248_luatsutunhan.jpg', 0, 1, '11500000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(282, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-uc-ha-noi-sydney-canberra-4n3d-bay-thang-viet-nam-airlines-hoang-viet-travel-1249_luatsutunhan.jpg', 0, 1, '29990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(283, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-campuchia-phnom-penh-2n1d-hai-dang-travel-1081_luatsutunhan.jpg', 0, 1, '1490000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(284, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-risemount-da-nang-4-ve-may-bay-khu-hoi-tu-tp-hcm-ha-noi-dua-don-san-bay-an-toi-464_luatsutunhan.png', 0, 1, '0.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(285, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tron-goi-3n2d-l-alyana-ninh-van-bay-nha-trang-5-dua-don-san-bay-ve-may-bay-khu-hoi-tu-tp-hcm-505_luatsutunhan.png', 0, 1, '6699000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(286, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tron-goi-3n2d-l-alyana-ninh-van-bay-nha-trang-5-ve-may-bay-khu-hoi-tu-ha-noi-508_luatsutunhan.png', 0, 1, '7799000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(287, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-da-lat-4n4d-tet-nguyen-dan-hai-dang-travel-525_luatsutunhan.JPG', 0, 1, '2890000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(288, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ninh-chu-da-lat-4n4d-tet-nguyen-dan-hai-dang-travel-480_luatsutunhan.jpg', 0, 1, '2890000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(289, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phu-yen-diep-son-3n3d-4-sao-tet-nguyen-dan-hai-dang-travel-526_luatsutunhan.jpg', 0, 1, '2890000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(290, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-tu-binh-3n3d-tet-nguyen-dan-hai-dang-travel-506_luatsutunhan.jpg', 0, 1, '2690000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(291, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-campuchia-siemriep-4n3d-tet-nguyen-dan-hai-dang-travel-571_luatsutunhan.jpg', 0, 1, '4190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(292, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-ba-lua-tra-su-2n2d-tet-nguyen-dan-hai-dang-travel-521_luatsutunhan.jpg', 0, 1, '1680000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(293, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-binh-ba-2n2d-tet-nguyen-dan-hai-dang-travel-481_luatsutunhan.jpg', 0, 1, '1590000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(294, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-binh-ba-nha-trang-da-lat-4n4d-tet-nguyen-dan-hai-dang-travel-527_luatsutunhan.jpg', 0, 1, '3090000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(295, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-tam-binh-3n3d-tet-nguyen-dan-hai-dang-travel-509_luatsutunhan.jpg', 0, 1, '2290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(296, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phu-yen-diep-son-3n3d-5-sao-tet-nguyen-dan-hai-dang-travel-512_luatsutunhan.jpg', 0, 1, '3190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(297, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-buffet-3n3d-tet-nguyen-dan-hai-dang-travel-513_luatsutunhan.jpg', 0, 1, '2090000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(298, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-hoa-lavender-3n3d-tet-nguyen-dan-hai-dang-travel-524_luatsutunhan.jpg', 0, 1, '2190000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(299, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-da-lat-vip-3n3d-tet-nguyen-dan-hai-dang-travel-523_luatsutunhan.jpg', 0, 1, '2199000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(300, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-nha-trang-diep-son-3n3d-tet-nguyen-dan-hai-dang-travel-514_luatsutunhan.jpg', 0, 1, '2290000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(301, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phu-quoc-3n3d-tet-nguyen-dan-hai-dang-travel-515_luatsutunhan.jpg', 0, 1, '2990000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(302, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-phu-yen-dai-lanh-3n3d-5-sao-hai-dang-travel-511_luatsutunhan.jpg', 0, 1, '3150000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00'),
(303, '', '', '', '', '', '', '', '1', 5, 0, 'catalog/du_lich/tour-quy-nhon-ky-co-3n3d-tet-nguyen-dan-hai-dang-travel-510_luatsutunhan.jpg', 0, 1, '3090000.0000', 0, 0, '2017-06-24', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', 0, 1, 1, 0, 1, 10, '2017-06-24 00:00:00', '2017-06-24 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_attribute`
--

CREATE TABLE `hoaunet_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_attribute`
--

INSERT INTO `hoaunet_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 1, '1'),
(47, 4, 1, '16GB'),
(43, 4, 1, '8gb'),
(42, 3, 2, '100mhz'),
(47, 2, 1, '4'),
(43, 2, 2, '1'),
(47, 4, 2, '16GB'),
(43, 4, 2, '8gb'),
(42, 3, 1, '100mhz'),
(47, 2, 2, '4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_description`
--

CREATE TABLE `hoaunet_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_description`
--

INSERT INTO `hoaunet_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(35, 1, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', ''),
(47, 1, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(41, 1, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(43, 1, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', ''),
(30, 1, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'sdf', '', ''),
(35, 2, 'Tour Nha Trang - Điệp Sơn 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                TRẢI NGHIỆM TUYỆT VỜI TẠI ĐẢO ĐIỆP SƠN CON ĐƯỜNG DƯỚI BIỂN ĐỘC ĐÁO<br />\r\nKDL HÒN CHỒNG - KDL IRESORT<br />\r\nVINPEARLAND <br />\r\n            </p>\n        </div>', 'Tour Nha Trang - Điệp Sơn 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Nha Trang - Điệp Sơn 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Nha Trang - Điệp Sơn 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Nha Trang - Điệp Sơn 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(48, 2, 'Tour Đài Loan: Hà Nội - Đài Trung - Cao Hùng - Đài Bắc 5N4Đ - Bay China Airlines - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình tour du lịch Đài Loan trọn gói, bay hàng không China Airlines 5 sao, ở khách sạn tiện nghi 3 - 4 sao. Khám phá toàn cảnh Đài Loan, đất nước có một nền kinh tế phát triển với hệ thống cơ sở hạ tầng xã hội rất tốt, hệ thống giao thông hiện đại, tiện ích và là trung tâm mua sắm lớn trong khu vực với các hãng hàng hiệu nổi tiếng thể giới và giá cả hết sức hợp lý.             </p>\n        </div>', 'Tour Đài Loan: Hà Nội - Đài Trung - Cao Hùng - Đài Bắc 5N4Đ - Bay China Airlines - Hoàng Việt Travel', 'Tour Đài Loan: Hà Nội - Đài Trung - Cao Hùng - Đài Bắc 5N4Đ - Bay China Airlines - Hoàng Việt Travel', 'Tour Đài Loan: Hà Nội - Đài Trung - Cao Hùng - Đài Bắc 5N4Đ - Bay China Airlines - Hoàng Việt Travel', 'Tour Đài Loan: Hà Nội - Đài Trung - Cao Hùng - Đài Bắc 5N4Đ - Bay China Airlines - Hoàng Việt Travel'),
(96, 2, 'Phú Yên - Đại Lãnh 4 sao 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Phú Yên là một tỉnh ven biển thuộc duyên hải Nam Trung Bộ, phía bắc giáp Bình Định, phía nam giáp Khánh Hòa. Với 3 mặt giáp núi, 1 mặt giáp biển Đông. Nằm ở phía đông dãy Trường Sơn, Phú Yên được thiên nhiên ưu đãi nhiều danh lam thắng cảnh. Đây là Núi Nhạn sừng sững giữa thành phố Tuy Hòa, bên cạnh là dòng sông Ba hiền hòa ngày ngày bồi đắp phù sa cho vựa lúa Miền Trung; kia là Gành Đá Dĩa như một tạo hóa kỳ lạ của Thiên nhiên ban tặng cho con người, còn đó Vịnh Vũng Rô với Chiến tích của những con tàu không số. Mời các quý khách đến với Phú Yên với những danh lam thắng cảnh và lòng mến khách của người dân xứ nẫu.            </p>\n        </div>', 'Phú Yên - Đại Lãnh 4 sao 3n3đ - Hai Dang Travel', 'Phú Yên - Đại Lãnh 4 sao 3n3đ - Hai Dang Travel', 'Phú Yên - Đại Lãnh 4 sao 3n3đ - Hai Dang Travel', 'Phú Yên - Đại Lãnh 4 sao 3n3đ - Hai Dang Travel'),
(97, 2, 'HÀ NỘI – OSAKA – KYOTO – NAGOYA – FUJI - TOKYO CUNG ĐƯỜNG VÀNG', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: 02 & 05/04/2017 <br />\r\nThời gian: 6 ngày <br />\r\nĐiểm khởi hành: Hà Nội <br />\r\nĐiểm đến: Du lịch Tokyo, Du lịch Osaka, Du lịch Kyoto, Du lịch Nhật Bản<br />\r\nHàng không: Vietnamairlines            </p>\n        </div>', 'HÀ NỘI – OSAKA – KYOTO – NAGOYA – FUJI - TOKYO CUNG ĐƯỜNG VÀNG', 'HÀ NỘI – OSAKA – KYOTO – NAGOYA – FUJI - TOKYO CUNG ĐƯỜNG VÀNG', 'HÀ NỘI – OSAKA – KYOTO – NAGOYA – FUJI - TOKYO CUNG ĐƯỜNG VÀNG', 'HÀ NỘI – OSAKA – KYOTO – NAGOYA – FUJI - TOKYO CUNG ĐƯỜNG VÀNG'),
(98, 2, 'Tour đảo Bà Lụa - Rừng tràm Trà Sư 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                	VỀ VỚI HÀ TIÊN<br />\r\n	QUẦN ĐẢO BÀ LỤA<br />\r\n	HANG MOSO – RỪNG TRÀM TRÀ SƯ<br />\r\n	LƯU TRÚ TẠI HÀ TIÊN<br />\r\n            </p>\n        </div>', 'Tour đảo Bà Lụa - Rừng tràm Trà Sư 2n2đ - Hai Dang Travel', 'Tour đảo Bà Lụa - Rừng tràm Trà Sư 2n2đ - Hai Dang Travel', 'Tour đảo Bà Lụa - Rừng tràm Trà Sư 2n2đ - Hai Dang Travel', 'Tour đảo Bà Lụa - Rừng tràm Trà Sư 2n2đ - Hai Dang Travel'),
(99, 2, 'Tour Châu Đốc - Hà Tiên 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                CHƯƠNG TRÌNH ĐỒNG GIÁ 999.000 PHIÊN BẢN 2017<br />\r\nCó gì mới?<br />\r\n1.	Không phụ thu phòng đôi<br />\r\n2.	Mua tour trong chuỗi đồng giá được giảm 9.999đ nhân theo số lần đi (Lần 1: 9.999 đ*1, Lần 2: 9.999 đ*2, Lần 3: 9.999 đ*3, lần 4: 9.999 đ*4, lần 5: 9.999 đ *5, lần 6: 9.999 đ*6, lần 7: 9.999 đ *7, lần 8: 9.999 đ*8, lần 9: 9.999 đ*9).<br />\r\n3.	Tham dự rút thăm số ghế may mắn khi lên tour “MUA TOUR TRÚNG TOUR” (cơ hội đi 1 trong 9 tour Đồng giá miễn phí cho lần tiếp theo)<br />\r\n4.	Được hỗ trợ nâng tiêu chuẩn khách sạn và dịch vụ (nếu có nhu cầu) với giá gốc<br />\r\n            </p>\n        </div>', 'Tour Châu Đốc - Hà Tiên 2n2đ - Hai Dang Travel', 'Tour Châu Đốc - Hà Tiên 2n2đ - Hai Dang Travel', 'Tour Châu Đốc - Hà Tiên 2n2đ - Hai Dang Travel', 'Tour Châu Đốc - Hà Tiên 2n2đ - Hai Dang Travel'),
(100, 2, 'Tour Phan Thiết - La Gi 2n1đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Cách TPHCM chỉ 150km, cách Vũng tàu 120km, cách Phan Thiết 60km, Lagi như được thiên nhiên ưu đãi để phát triển du lịch, đặc biệt là du lịch cộng đồng như bãi biển hoang sơ, dài và đẹp với đá, rừng dương và các bãi cát dài.<br />\r\nCó thể nói, biển Lagi như 1 nàng công chúa đẹp bị lãng quên, đang dần thức dậy, hời gian gần đây bạn liên tục bận rộn với các kế hoạch, công việc, chương trình, sự kiện khiến thời gian nghỉ ngơi bị thu hẹp lại. Bạn đang muốn đi đến một nơi nào đó thật trong lành, tươi đẹp để xả stress. Đi đâu trong một ngày ngắn ngủi mà vẫn có thể thoải mái để nạp năng lượng cho những ngày làm việc tiếp theo bây giờ? Có đấy bạn. Đi du lịch Lagi, bạn có thể nằm ngủ sát bờ biển, nghe rõ tiếng sóng và gió cuộn vào và bạn chỉ cần vén lều lên là có thể ngắm mặt trời ngay trước mặt.<br />\r\n            </p>\n        </div>', 'Tour Phan Thiết - La Gi 2n1đ - Hai Dang Travel', 'Tour Phan Thiết - La Gi 2n1đ - Hai Dang Travel', 'Tour Phan Thiết - La Gi 2n1đ - Hai Dang Travel', 'Tour Phan Thiết - La Gi 2n1đ - Hai Dang Travel'),
(101, 2, 'Tour Đảo Bình Ba - tôm hùm 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                CHƯƠNG TRÌNH ĐỒNG GIÁ 999.000 PHIÊN BẢN 2017<br />\r\nCó gì mới?<br />\r\n1.	Không phụ thu phòng đôi<br />\r\n2.	Mua tour trong chuỗi đồng giá được giảm 9.999đ nhân theo số lần đi (Lần 1: 9.999 đ*1, Lần 2: 9.999 đ*2, Lần 3: 9.999 đ*3, lần 4: 9.999 đ*4, lần 5: 9.999 đ *5, lần 6: 9.999 đ*6, lần 7: 9.999 đ *7, lần 8: 9.999 đ*8, lần 9: 9.999 đ*9).<br />\r\n3.	Tham dự rút thăm số ghế may mắn khi lên tour “MUA TOUR TRÚNG TOUR” (cơ hội đi 1 trong 9 tour Đồng giá miễn phí cho lần tiếp theo)<br />\r\n4.	Được hỗ trợ nâng tiêu chuẩn khách sạn và dịch vụ (nếu có nhu cầu) với giá gốc.<br />\r\n            </p>\n        </div>', 'Tour Đảo Bình Ba - tôm hùm 2n2đ - Hai Dang Travel', 'Tour Đảo Bình Ba - tôm hùm 2n2đ - Hai Dang Travel', 'Tour Đảo Bình Ba - tôm hùm 2n2đ - Hai Dang Travel', 'Tour Đảo Bình Ba - tôm hùm 2n2đ - Hai Dang Travel'),
(102, 2, 'Tour Phan Thiết - Bluebay resort 2n1đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Thiê<br />\r\nn nhiên dường như quá ưu đãi cho bờ biển Phan Thiết, bởi nó chứa đựng những điều cuốn hút du khách, biển xanh, cát trắng, rặng dừa xanh,…đã tạo cho Phan Thiết sức hấp dẫn khó cưỡng cho những ai yêu biển, yêu cái nắng vàng trên cát. Ngỡ như khô cằn nhưng lại vô cùng lãng mạn. Đừng nghĩ Phan Thiết không có gì để khám phá, thật ra nó là một điểm nghĩ dưỡng sau những ngày làm mệt mỏi, căng thẳng nơi phố thị vô cùng hữu hiệu, là nơi để bạn và gia đình thư giãn vào những ngày hè oi bức , gắn kết tình thân hay là nơi trăng mật vô cùng lãng mạn.             </p>\n        </div>', 'Tour Phan Thiết - Bluebay resort 2n1đ - Hai Dang Travel', 'Tour Phan Thiết - Bluebay resort 2n1đ - Hai Dang Travel', 'Tour Phan Thiết - Bluebay resort 2n1đ - Hai Dang Travel', 'Tour Phan Thiết - Bluebay resort 2n1đ - Hai Dang Travel'),
(103, 2, 'Tour Ninh Chữ - Tanyoli - Mũi Dinh 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Chúng tôi nghĩ rằng:Đến một nơi nào đó không chỉ là “ Cởi Ngựa xem hoa” Quý khách nên đi, cảm nhận, chiêm nghiệm về nét đẹp của tùng vùng miền, bởi Cảnh đẹp Việt Nam vô cùng phong phú và ẩm thực Việt Nam quá nhiều màu sắc, ý vị…. Ngoài những điểm trên, còn vô vàng thong tin bổ ích khác, xin vui lòng lien hệ Hải Đăng để được nhân viên tư vấn kỉ hơn, nhằm tạo cho du khách 1 chuyến đi đầy thi vị và lý thú.            </p>\n        </div>', 'Tour Ninh Chữ - Tanyoli - Mũi Dinh 2n2đ - Hai Dang Travel', 'Tour Ninh Chữ - Tanyoli - Mũi Dinh 2n2đ - Hai Dang Travel', 'Tour Ninh Chữ - Tanyoli - Mũi Dinh 2n2đ - Hai Dang Travel', 'Tour Ninh Chữ - Tanyoli - Mũi Dinh 2n2đ - Hai Dang Travel'),
(104, 2, 'Tour Đảo Bình Hưng - Biển Ninh Chữ  - Đà Lạt 4n4đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt là một tour phổ biến, là điểm du lịch khá quen thuộc trong lòng du khách, Những KDL nổi tiếng ở Đà Lạt, du khách đã không thể bỏ qua nếu như một lần đặt chân lên xứ sở Sương Mù này.<br />\r\nĐảo Bình Hưng được ví như hòn ngọc giữa dải lụa xanh tuyệt đẹp, nơi thiên nhiên vẫn còn nguyên sơ như chưa bao giờ có dấu chân con người.Hãy đến với Đảo Bình Hưng với nhiều trãi nghiệm mới lạ,- Một Bình Hưng đẹp hoang sơ nhưng lại quyến rũ.Và điều thú vị hơn nữa là người dân xứ biển nơi đây nhanh nhẩu, hiếu khách và thân thiện vô cùng <br />\r\n            </p>\n        </div>', 'Tour Đảo Bình Hưng - Biển Ninh Chữ  - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Đảo Bình Hưng - Biển Ninh Chữ  - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Đảo Bình Hưng - Biển Ninh Chữ  - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Đảo Bình Hưng - Biển Ninh Chữ  - Đà Lạt 4n4đ - Hai Dang Travel'),
(105, 2, 'Tour Nha Trang - Đà Lạt 4n4đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nếu Nha Trang “Hòn ngọc của Biển Đông” lại mang một vẻ đẹp hiện đại, bên cạnh cảnh quan thiên nhiên sinh động là những công trình tầm vóc thì Đà Lạt kiêu sa như một thiếu nữ rực rỡ trong sắc xuân. Cơ hội khám phá những địa danh nổi tiếng của hai thành phố du lịch đẹp nhất phía Nam này đang chờ đón bạn trong tour liên tuyến Nha Trang - Đà Lạt 4N4Đ do Hải Đăng Travel tổ chức.            </p>\n        </div>', 'Tour Nha Trang - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Nha Trang - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Nha Trang - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Nha Trang - Đà Lạt 4n4đ - Hai Dang Travel'),
(106, 2, 'Tour Ninh Chữ  - Đà Lạt 4n4đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt là một tour phổ biến, là điểm du lịch khá quen thuộc trong lòng du khách, Những KDL nổi tiếng ở Đà Lạt, du khách đã không thể bỏ qua nếu như một lần đặt chân lên xứ sở Sương Mù này.<br />\r\nNếu như Nha Trang nổi tiếng với bãi biển xanh mướt trên nền cát trắng mịn màng, trải dài từ đất liền ra đến các đảo thì biển Bình Ba lại mang vẻ đẹp hoang sơ hiền hòa với nhiều bãi tắm đẹp mê hồn như cõi thiên đường chốn nhân gian. Nước biển trong vắt, mặt biển phẳng như gương, gió mát dịu nhẹ<br />\r\n            </p>\n        </div>', 'Tour Ninh Chữ  - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Ninh Chữ  - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Ninh Chữ  - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Ninh Chữ  - Đà Lạt 4n4đ - Hai Dang Travel'),
(107, 2, 'Tour Bình Ba - Đà Lạt 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt là một tour phổ biến, là điểm du lịch khá quen thuộc trong lòng du khách, Những KDL nổi tiếng ở Đà Lạt, du khách đã không thể bỏ qua nếu như một lần đặt chân lên xứ sở Sương Mù này.<br />\r\nNếu như Nha Trang nổi tiếng với bãi biển xanh mướt trên nền cát trắng mịn màng, trải dài từ đất liền ra đến các đảo thì biển Bình Ba lại mang vẻ đẹp hoang sơ hiền hòa với nhiều bãi tắm đẹp mê hồn như cõi thiên đường chốn nhân gian. Nước biển trong vắt, mặt biển phẳng như gương, gió mát dịu nhẹ<br />\r\n            </p>\n        </div>', 'Tour Bình Ba - Đà Lạt 3n3đ - Hai Dang Travel', 'Tour Bình Ba - Đà Lạt 3n3đ - Hai Dang Travel', 'Tour Bình Ba - Đà Lạt 3n3đ - Hai Dang Travel', 'Tour Bình Ba - Đà Lạt 3n3đ - Hai Dang Travel'),
(108, 2, 'Tour Quảng Ngãi - Quy Nhơn 3n4đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                	Lý Sơn \"Vương quốc tỏi” gợi lên trong mỗi du khách những cảm xúc về mảnh đất tiền tiêu gắn liền với truyền thống giữ gìn biển đảo. Khó có từ nào miêu tả được hết vẻ đẹp của Lý Sơn, chỉ có thể đến tận mắt chứng kiến bạn mới cảm nhận hết được nó.<br />\r\n	Quy Nhơn mảnh đất anh hùng nơi có Bảo Tàng Quang Trung, bãi biển Kỳ Co đẹp tuyệt trần, người dân thân thiện. <br />\r\n	Một chuyến đi hai điểm đến này chắc chắn sẽ là một sự kết hợp thật hoàn hảo.<br />\r\n            </p>\n        </div>', 'Tour Quảng Ngãi - Quy Nhơn 3n4đ - Hai Dang Travel', 'Tour Quảng Ngãi - Quy Nhơn 3n4đ - Hai Dang Travel', 'Tour Quảng Ngãi - Quy Nhơn 3n4đ - Hai Dang Travel', 'Tour Quảng Ngãi - Quy Nhơn 3n4đ - Hai Dang Travel'),
(109, 2, 'Tour Quy Nhơn - Kỳ Co  - Eo Gió 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                “ Vùng Đất võ Trời Văn “, Vùng Tây Sơn Hào Kiệt “ hay “ Miền Đất võ “  vô vàng những mỹ từ thể hiện sự hào hùng , sự oai vệ và dường như ai chưa một lần đến hay đã đặt chân đến đây sẽ phải thán phục vẽ đẹp tinh  hoa , nơi được coi là sản sinh ra nền võ thuật của Việt Nam , và cũng là quê hương của những anh hùng hào kệt trong thời kỳ chống giặc cứu nước .Tôi không thể nhớ rõ mình yêu Quy Nhơn từ lúc nào , vì chỉ với duy nhất một lần đến đây và có lẽ nó đã  trở thành ký ức thấm đẫm, để mỗi khi nhớ đến thành phố biển hiền hòa ấy, trong lòng tôi lại dâng lên những nỗi niềm da diết.            </p>\n        </div>', 'Tour Quy Nhơn - Kỳ Co  - Eo Gió 3n3đ - Hai Dang Travel', 'Tour Quy Nhơn - Kỳ Co  - Eo Gió 3n3đ - Hai Dang Travel', 'Tour Quy Nhơn - Kỳ Co  - Eo Gió 3n3đ - Hai Dang Travel', 'Tour Quy Nhơn - Kỳ Co  - Eo Gió 3n3đ - Hai Dang Travel'),
(110, 2, 'Tour Eo Gió - Đảo Kỳ Co 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Quy Nhơn đẹp lắm ai ơi, ai đi đến đó lòng không nỡ về. Quy Nhơn mang một vẻ đẹp hoang sơ, huyền bí làm say đắm lòng người, đang được biết đến như một hiện tượng. Quy Nhơn sở hữu bãi biển Kỳ Co nơi có vẻ đẹp hoang sơ quyến rũ với biển xanh, cát trắng, nắng vàng, Kỳ Co được ví như thiên đường “palawan” đang chờ bạn khám phá.            </p>\n        </div>', 'Tour Eo Gió - Đảo Kỳ Co 3n3đ - Hai Dang Travel', 'Tour Eo Gió - Đảo Kỳ Co 3n3đ - Hai Dang Travel', 'Tour Eo Gió - Đảo Kỳ Co 3n3đ - Hai Dang Travel', 'Tour Eo Gió - Đảo Kỳ Co 3n3đ - Hai Dang Travel'),
(111, 2, 'Tour 1 ngày khám phá Tokyo Nhật BảnOnetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: Hàng ngày <br />\r\nThời gian: 1 ngày Điểm <br />\r\nKhởi hành: Nhật Bản <br />\r\nĐiểm đến: Du lịch Tokyo,Du lịch Nhật Bản <br />\r\n            </p>\n        </div>', 'Tour 1 ngày khám phá Tokyo Nhật BảnOnetour Việt Nam)', 'Tour 1 ngày khám phá Tokyo Nhật BảnOnetour Việt Nam)', 'Tour 1 ngày khám phá Tokyo Nhật BảnOnetour Việt Nam)', 'Tour 1 ngày khám phá Tokyo Nhật BảnOnetour Việt Nam)'),
(112, 2, 'Du lịch Thái Lan: Hà Nội - Bangkok - Safari World - Pattaya - Đảo Coral 5 ngày bay Lion Air', '<div class=\"text_info_sp width_common\">\n            <p>\n                Cùng trải nghiệm, khám phá hành trình du lịch Thái Lan: Hà Nội - Bangkok - Pattaya 5 Ngày - chương trình mới lạ, độc quyền. Thái Lan -  đất nước mang vẻ đẹp toát ra từ những ngôi chùa, lòng hiếu khách, những món ngon… , chắc chắn sẽ mang lại cho du khách những giờ phút tuyệt vời nhất. Đặt tour Thái Lan ngay hôm nay để nhận được mức giá ưu đãi tốt nhất !             </p>\n        </div>', 'Du lịch Thái Lan: Hà Nội - Bangkok - Safari World - Pattaya - Đảo Coral 5 ngày bay Lion Air', 'Du lịch Thái Lan: Hà Nội - Bangkok - Safari World - Pattaya - Đảo Coral 5 ngày bay Lion Air', 'Du lịch Thái Lan: Hà Nội - Bangkok - Safari World - Pattaya - Đảo Coral 5 ngày bay Lion Air', 'Du lịch Thái Lan: Hà Nội - Bangkok - Safari World - Pattaya - Đảo Coral 5 ngày bay Lion Air'),
(113, 2, 'Vui hè cùng du thuyền 5 sao khám phá Singapore - Penang - Phuket - Singapore Khởi hành 08/05/2017 (Star Travel)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đây là một chuyến đi nghỉ ngơi lý tưởng để tách mình khỏi cuộc sống ồn ào chốn thị thành. Trải nghiệm qua những vùng đất mới, nghe tiếng gió biển thổi vi vu, hít thở không khí trong lành buổi sớm giữa đại dương bao la, ghi lại những khoảnh khắc đặc biệt của gia đình bạn.            </p>\n        </div>', 'Vui hè cùng du thuyền 5 sao khám phá Singapore - Penang - Phuket - Singapore Khởi hành 08/05/2017 (Star Travel)', 'Vui hè cùng du thuyền 5 sao khám phá Singapore - Penang - Phuket - Singapore Khởi hành 08/05/2017 (Star Travel)', 'Vui hè cùng du thuyền 5 sao khám phá Singapore - Penang - Phuket - Singapore Khởi hành 08/05/2017 (Star Travel)', 'Vui hè cùng du thuyền 5 sao khám phá Singapore - Penang - Phuket - Singapore Khởi hành 08/05/2017 (Star Travel)'),
(114, 2, 'Du lịch Thái Lan: Hà Nội - Bangkok - Pattaya - Đảo Coral 4 ngày bay Lion Air', '<div class=\"text_info_sp width_common\">\n            <p>\n                Cùng trải nghiệm và khám phá hành trình du lịch Thái Lan: Hà Nội - Bangkok - Pattaya 4 Ngày bay Thai Lion Air trọn gói, giá rẻ. Khám phá tour đi Thái Lan - đất nước mang vẻ đẹp toát ra từ những ngôi chùa, lòng hiếu khách, cùng hòa mình trong những màn trình diễn chỉ có ở Thái.            </p>\n        </div>', 'Du lịch Thái Lan: Hà Nội - Bangkok - Pattaya - Đảo Coral 4 ngày bay Lion Air', 'Du lịch Thái Lan: Hà Nội - Bangkok - Pattaya - Đảo Coral 4 ngày bay Lion Air', 'Du lịch Thái Lan: Hà Nội - Bangkok - Pattaya - Đảo Coral 4 ngày bay Lion Air', 'Du lịch Thái Lan: Hà Nội - Bangkok - Pattaya - Đảo Coral 4 ngày bay Lion Air'),
(115, 2, 'Vui hè cùng du thuyền 5 sao khám phá Singapore - Malaysia - Khởi hành 02/06 - Star Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hải trình 04 Ngày: Singapore - Kuala Lumpur - Singapore.<br />\r\nKhởi hành ngày: 02/06/2017            </p>\n        </div>', 'Vui hè cùng du thuyền 5 sao khám phá Singapore - Malaysia - Khởi hành 02/06 - Star Travel', 'Vui hè cùng du thuyền 5 sao khám phá Singapore - Malaysia - Khởi hành 02/06 - Star Travel', 'Vui hè cùng du thuyền 5 sao khám phá Singapore - Malaysia - Khởi hành 02/06 - Star Travel', 'Vui hè cùng du thuyền 5 sao khám phá Singapore - Malaysia - Khởi hành 02/06 - Star Travel'),
(116, 2, 'Tour du lịch Nhật Bản: Hà Nội - Tokyo - Núi Phú Sỹ 4 ngày bay Vietnam Airlines - Hoàng Việt travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Tour du lịch Nhật Bản 4 ngày khám phá xứ sở Phù Tang trong các mùa hoa rực sắc như hoa chi anh, hoa cẩm tú cầu hay mùa hoa oải hương tím trải dài. Tour trọn gói bay hàng không quốc gia Vietnam Airlines & ở khách sạn tiện nghi 3-4*, trải nghiệm tắm khoáng nóng Onsen,...            </p>\n        </div>', 'Tour du lịch Nhật Bản: Hà Nội - Tokyo - Núi Phú Sỹ 4 ngày bay Vietnam Airlines - Hoàng Việt travel', 'Tour du lịch Nhật Bản: Hà Nội - Tokyo - Núi Phú Sỹ 4 ngày bay Vietnam Airlines - Hoàng Việt travel', 'Tour du lịch Nhật Bản: Hà Nội - Tokyo - Núi Phú Sỹ 4 ngày bay Vietnam Airlines - Hoàng Việt travel', 'Tour du lịch Nhật Bản: Hà Nội - Tokyo - Núi Phú Sỹ 4 ngày bay Vietnam Airlines - Hoàng Việt travel'),
(117, 2, 'Tour Đà Lạt - Làng Lát3N3Đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt là một tour phổ biến, là điểm du lịch khá quen thuộc trong lòng du khách, Những KDL nổi tiếng ở Đà Lạt, du khách đã không thể bỏ qua nếu như một lần đặt chân lên xứ sở Sương Mù này.<br />\r\nNhưng đến với tour du lịch này, quý khách sẽ tiếp tục có cơ hội khám phá những điểm độc đáo, “quen mà như lạ” và  thật thích thú vô cùng khi càng tìm hiểu càng thấy hay.<br />\r\n            </p>\n        </div>', 'Tour Đà Lạt - Làng Lát3N3Đ - Hai Dang Travel', 'Tour Đà Lạt - Làng Lát3N3Đ - Hai Dang Travel', 'Tour Đà Lạt - Làng Lát3N3Đ - Hai Dang Travel', 'Tour Đà Lạt - Làng Lát3N3Đ - Hai Dang Travel'),
(118, 2, 'Tour du thuyền 5 sao Freedom of the Seas đi Tây Ban Nha - Pháp - Ý (Star Travel)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Châu Âu luôn lãng mạn với vẻ đẹp quyến rũ và cổ kính.  Những lâu đài cổ tích, cánh đồng hoa oải hương, ruộng nho trải dài tới đường chân trời, những bảo tàng tập trung kiệt tác nghệ thuật của thế giới….tất cả đã tạo nên một Châu Âu quyến rũ làm say đắm hàng triệu khách viễn du.  <br />\r\nVẻ quyến rũ ấy hòa quyện cùng phong cách du lịch sang trọng trên du thuyền 5 sao Freedom of the Seas sẽ đưa Quý du khách tìm đến giá trị đích thực của một chuyến du lịch.            </p>\n        </div>', 'Tour du thuyền 5 sao Freedom of the Seas đi Tây Ban Nha - Pháp - Ý (Star Travel)', 'Tour du thuyền 5 sao Freedom of the Seas đi Tây Ban Nha - Pháp - Ý (Star Travel)', 'Tour du thuyền 5 sao Freedom of the Seas đi Tây Ban Nha - Pháp - Ý (Star Travel)', 'Tour du thuyền 5 sao Freedom of the Seas đi Tây Ban Nha - Pháp - Ý (Star Travel)'),
(119, 2, 'Tour du thuyền 5 sao Voyager of the Seas đi Singapore - Kuala Lumpur (Star Travel)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Voyager of the Seas, du thuyền của tập đoàn tàu biển Royal Caribbean. Du thuyền cao 15 tầng, có sức chứa gần 4.000 hành khách, cùng hơn 1.000 nhân viên phục xuyên suốt trong hải trình với phong cách phục vụ chuyên nghiệp. Với độ ổn định cao và không rung lắc, Voyager of the Seas sẽ giúp du khách có cảm giác như đang ở trên đất liền.<br />\r\nVoyager of the Seas đã hiện thực hóa những ý tưởng thú vị đó, mang lại cho quý khách một thế giới mới lạ. Quý khách hoàn toàn có thể tận hưởng những đêm nhạc hội hoành tráng được dàn dựng công phu, vui chơi thỏa thích tại công viên nước và ăn tối cùng những nhân vật hoạt hình nổi tiếng, khám phá khu trượt băng nghệ thuật, khu tắm nắng ngoài trời.            </p>\n        </div>', 'Tour du thuyền 5 sao Voyager of the Seas đi Singapore - Kuala Lumpur (Star Travel)', 'Tour du thuyền 5 sao Voyager of the Seas đi Singapore - Kuala Lumpur (Star Travel)', 'Tour du thuyền 5 sao Voyager of the Seas đi Singapore - Kuala Lumpur (Star Travel)', 'Tour du thuyền 5 sao Voyager of the Seas đi Singapore - Kuala Lumpur (Star Travel)'),
(120, 2, 'Cùng Du thuyền 5 sao trải nghiệm Mùa Hoa Tím Nhật Bản', '<div class=\"text_info_sp width_common\">\n            <p>\n                - Khám phá hải trình 7 ngày: THƯỢNG HẢI – FUKUOKA – KUMAMOTO – THƯỢNG HẢI.<br />\r\n- Khởi hành: 30/04/2017.            </p>\n        </div>', 'Cùng Du thuyền 5 sao trải nghiệm Mùa Hoa Tím Nhật Bản', 'Cùng Du thuyền 5 sao trải nghiệm Mùa Hoa Tím Nhật Bản', 'Cùng Du thuyền 5 sao trải nghiệm Mùa Hoa Tím Nhật Bản', 'Cùng Du thuyền 5 sao trải nghiệm Mùa Hoa Tím Nhật Bản'),
(121, 2, 'KHÁM PHÁ TOKYO NHẬT BẢN 3 NGÀY 2 ĐÊM (Onetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: Hằng ngày <br />\r\nThời gian: 3 ngày <br />\r\nĐiểm khởi hành: Hà Nội <br />\r\nĐiểm đến: Du lịch Tokyo,Du lịch Nhật Bản            </p>\n        </div>', 'KHÁM PHÁ TOKYO NHẬT BẢN 3 NGÀY 2 ĐÊM (Onetour Việt Nam)', 'KHÁM PHÁ TOKYO NHẬT BẢN 3 NGÀY 2 ĐÊM (Onetour Việt Nam)', 'KHÁM PHÁ TOKYO NHẬT BẢN 3 NGÀY 2 ĐÊM (Onetour Việt Nam)', 'KHÁM PHÁ TOKYO NHẬT BẢN 3 NGÀY 2 ĐÊM (Onetour Việt Nam)'),
(122, 2, 'TOUR 2 NGÀY KHÁM PHÁ OUTSIDE TRƯỢT TUYẾT TẠI TOKYO NHẬT BẢN (Onetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: Hàng ngày (trước 30/4/2017) <br />\r\nThời gian: 2 ngày <br />\r\nĐiểm khởi hành: Nhật Bản <br />\r\nĐiểm đến: Du lịch Tokyo,Du lịch Nhật Bản            </p>\n        </div>', 'TOUR 2 NGÀY KHÁM PHÁ OUTSIDE TRƯỢT TUYẾT TẠI TOKYO NHẬT BẢN (Onetour Việt Nam)', 'TOUR 2 NGÀY KHÁM PHÁ OUTSIDE TRƯỢT TUYẾT TẠI TOKYO NHẬT BẢN (Onetour Việt Nam)', 'TOUR 2 NGÀY KHÁM PHÁ OUTSIDE TRƯỢT TUYẾT TẠI TOKYO NHẬT BẢN (Onetour Việt Nam)', 'TOUR 2 NGÀY KHÁM PHÁ OUTSIDE TRƯỢT TUYẾT TẠI TOKYO NHẬT BẢN (Onetour Việt Nam)'),
(123, 2, 'TOUR 2 NGÀY KHÁM PHÁ TOKYO NHẬT BẢN (Onetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: Hàng ngày <br />\r\nThời gian: 2 ngày<br />\r\nĐiểm khởi hành: Nhật Bản<br />\r\nĐiểm đến: Du lịch Tokyo,Du lịch Nhật Bản            </p>\n        </div>', 'TOUR 2 NGÀY KHÁM PHÁ TOKYO NHẬT BẢN (Onetour Việt Nam)', 'TOUR 2 NGÀY KHÁM PHÁ TOKYO NHẬT BẢN (Onetour Việt Nam)', 'TOUR 2 NGÀY KHÁM PHÁ TOKYO NHẬT BẢN (Onetour Việt Nam)', 'TOUR 2 NGÀY KHÁM PHÁ TOKYO NHẬT BẢN (Onetour Việt Nam)'),
(124, 2, 'TOUR 1 NGÀY KHÁM PHÁ OUTSIDE TRƯỢT TUYẾT TẠI TOKYO NHẬT BẢN (Onetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: Hàng ngày <br />\r\nThời gian: 1 ngày <br />\r\nĐiểm khởi hành: Nhật Bản <br />\r\nĐiểm đến: Du lịch Tokyo,Du lịch Nhật Bản            </p>\n        </div>', 'TOUR 1 NGÀY KHÁM PHÁ OUTSIDE TRƯỢT TUYẾT TẠI TOKYO NHẬT BẢN (Onetour Việt Nam)', 'TOUR 1 NGÀY KHÁM PHÁ OUTSIDE TRƯỢT TUYẾT TẠI TOKYO NHẬT BẢN (Onetour Việt Nam)', 'TOUR 1 NGÀY KHÁM PHÁ OUTSIDE TRƯỢT TUYẾT TẠI TOKYO NHẬT BẢN (Onetour Việt Nam)', 'TOUR 1 NGÀY KHÁM PHÁ OUTSIDE TRƯỢT TUYẾT TẠI TOKYO NHẬT BẢN (Onetour Việt Nam)'),
(125, 2, 'Tour  đảo Điệp Sơn Đại Lãnh 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Điệp Sơn (hay còn gọi là Hòn Bịp) là một dãy gồm 3 hòn đảo nhỏ, nằm chơi vơi trong vùng biển thuộc vịnh Vân Phong, tỉnh Khánh Hòa. Địa danh này nổi bật và gây dấu ấn với khách du lịch bằng một con đường mòn kéo dài gần 800m nối giữa hai hòn đảo trong dãy đảo Điệp Sơn, có thể được xem là độc nhất vô nhị tại Việt Nam. Giờ nước rút lộ ra Điệp Sơn thủy đạo là từ 6g sáng đến 10g trưa (thay đổi theo mùa). Đây là “địa điểm vàng” tiềm năng hứa hẹn sánh ngang với tứ bình nổi tiếng ở Khánh Hòa: Bình Ba – Bình Hưng – Bình Lập – Bình Tiên. Hãy cùng HaidangTravel khám phá Điệp Sơn nhé            </p>\n        </div>', 'Tour  đảo Điệp Sơn Đại Lãnh 2n2đ - Hai Dang Travel', 'Tour  đảo Điệp Sơn Đại Lãnh 2n2đ - Hai Dang Travel', 'Tour  đảo Điệp Sơn Đại Lãnh 2n2đ - Hai Dang Travel', 'Tour  đảo Điệp Sơn Đại Lãnh 2n2đ - Hai Dang Travel'),
(126, 2, 'Tour Du Lịch Malaysia: Hà Nội - Kuala Lumpur - Genting 4 Ngày - Khởi Hành 29/4 - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Malaysia, đến với thành phố trên mây Genting ngắm nhìn khung cảnh thiên nhiên tươi đẹp từ cáp treo, tham gia các trò chơi cảm giác mạnh đầy thú vị hay đến với thành phố Kuala Lumpur thỏa mái mua sắm hàng hiệu giá rẻ ở các trung tâm thương mại sầm uất nhất của Malaysia. Hãy đặt tour du lịch Malaysia ngay hôm nay và cảm nhận nhé !             </p>\n        </div>', 'Tour Du Lịch Malaysia: Hà Nội - Kuala Lumpur - Genting 4 Ngày - Khởi Hành 29/4 - Hoàng Việt Travel', 'Tour Du Lịch Malaysia: Hà Nội - Kuala Lumpur - Genting 4 Ngày - Khởi Hành 29/4 - Hoàng Việt Travel', 'Tour Du Lịch Malaysia: Hà Nội - Kuala Lumpur - Genting 4 Ngày - Khởi Hành 29/4 - Hoàng Việt Travel', 'Tour Du Lịch Malaysia: Hà Nội - Kuala Lumpur - Genting 4 Ngày - Khởi Hành 29/4 - Hoàng Việt Travel'),
(127, 2, 'Tour Hà Nội – Bangkok - Pattaya – Hà Nội Bay Nok Air( Onetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: Liên hệ <br />\r\nThời gian: 5 ngày 4 đêm<br />\r\nĐiểm khởi hành: Hà Nội <br />\r\nĐiểm đến: Du lịch Thái Lan,Du lịch Bangkok,Du lịch Pattaya<br />\r\nHàng không: Nok Air            </p>\n        </div>', 'Tour Hà Nội – Bangkok - Pattaya – Hà Nội Bay Nok Air( Onetour Việt Nam)', 'Tour Hà Nội – Bangkok - Pattaya – Hà Nội Bay Nok Air( Onetour Việt Nam)', 'Tour Hà Nội – Bangkok - Pattaya – Hà Nội Bay Nok Air( Onetour Việt Nam)', 'Tour Hà Nội – Bangkok - Pattaya – Hà Nội Bay Nok Air( Onetour Việt Nam)'),
(128, 2, 'Combo 3N2Đ - Khách sạn Imperial Vũng Tàu 5* + Xe đưa đón + 03 bữa ăn trưa &amp; 02 bữa ăn sáng và tối', '<div class=\"text_info_sp width_common\">\n            <p>\n                Khời hành từ HCM: 3,630,000 VND/khách.<br />\r\n(Thứ bảy phụ thu thêm 330.000/khách)<br />\r\n- 02 đêm nghỉ tại phòng Deluxe sang trọng.<br />\r\n- Xe đưa đón HCM  Khách sạn Imperial Vũng Tàu.<br />\r\n(Tập trung tại số 1 Lê Duẩn, Q1 - Cổng Thảo Cầm Viên - Khởi hành đi: 10.00AM - Khởi hành về: 14.00PM - Quý khách vui lòng đến trước 30 phút)<br />\r\n- 02 bữa ăn sáng buffet, 03 bữa ăn trưa và 02 bữa ăn tối set menu tốt cho sức khỏe hằng ngày.<br />\r\n- Phiếu massage chân (45\")<br />\r\n- Tham quan Vũng Tàu (Sơn Quan Tự, Bạch Dinh)<br />\r\n- Tặng áo thun lưu niệm<br />\r\nHạn lưu trú: Đến 29/12/2017<br />\r\n(Không áp dụng các giai đoạn Lễ:02-03/09/2017)            </p>\n        </div>', 'Combo 3N2Đ - Khách sạn Imperial Vũng Tàu 5* + Xe đưa đón + 03 bữa ăn trưa &amp; 02 bữa ăn sáng và tối', 'Combo 3N2Đ - Khách sạn Imperial Vũng Tàu 5* + Xe đưa đón + 03 bữa ăn trưa &amp; 02 bữa ăn sáng và tối', 'Combo 3N2Đ - Khách sạn Imperial Vũng Tàu 5* + Xe đưa đón + 03 bữa ăn trưa &amp; 02 bữa ăn sáng và tối', 'Combo 3N2Đ - Khách sạn Imperial Vũng Tàu 5* + Xe đưa đón + 03 bữa ăn trưa &amp; 02 bữa ăn sáng và tối');
INSERT INTO `hoaunet_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(40, 2, 'Tour Cù lao Câu 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                •	HÚT HỒN DU KHÁCH<br />\r\n•	BIỂN CỔ THẠCH<br />\r\n•	BIỂN MŨI NÉ<br />\r\n•	CÂU ĐÀI RƯỢU VANG<br />\r\n            </p>\n        </div>', 'Tour Cù lao Câu 2n2đ - Hai Dang Travel', 'Tour Cù lao Câu 2n2đ - Hai Dang Travel', 'Tour Cù lao Câu 2n2đ - Hai Dang Travel', 'Tour Cù lao Câu 2n2đ - Hai Dang Travel'),
(28, 2, 'Tour Bình Ba 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                RƯỢU TIỆC NỔI “BAR” TRÊN BIỂN<br />\r\nBBQ HẢI SẢN<br />\r\n            </p>\n        </div>', 'Tour Bình Ba 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bình Ba 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bình Ba 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bình Ba 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(44, 2, 'Tour Singapore - Malaysia: Hà Nội - Singapore - Kula Lumpur 5N Bay Vietnam Airlines - Hoàng Việt', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình 5 ngày du lịch Singapore - Malaysia 5 ngày du khách được bay hàng không quốc gia Việt Nam Airlines. Được trải nghiệm cao nguyên xanh Genting tuyệt đẹp, thăm thủy cung lớn nhất Thế giới S.E.A Aquarium, thỏa sức mua sắm tại thiên đường shopping ở hai quốc qua Singapore - Malaysia.            </p>\n        </div>', 'Tour Singapore - Malaysia: Hà Nội - Singapore - Kula Lumpur 5N Bay Vietnam Airlines - Hoàng Việt', 'Tour Singapore - Malaysia: Hà Nội - Singapore - Kula Lumpur 5N Bay Vietnam Airlines - Hoàng Việt', 'Tour Singapore - Malaysia: Hà Nội - Singapore - Kula Lumpur 5N Bay Vietnam Airlines - Hoàng Việt', 'Tour Singapore - Malaysia: Hà Nội - Singapore - Kula Lumpur 5N Bay Vietnam Airlines - Hoàng Việt'),
(201, 2, 'Du lịch Malaysia 4 ngày 3 đêm dịp hè 2017 khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Malaysia giá rẻ dịp hè 2017. Du lịch kết hợp mua sắm giải trí tham quan, hành trình du lịch Malaysia 1 ngày tự do, sẽ mang đến cho du khách một trải nghiệm thú vị...<br />\r\n<br />\r\nHành trình: Kualumpur - Genting (1/2 ngày tự do)<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 02,9,16,23,30/06             </p>\n        </div>', 'Du lịch Malaysia 4 ngày 3 đêm dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Malaysia 4 ngày 3 đêm dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Malaysia 4 ngày 3 đêm dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Malaysia 4 ngày 3 đêm dịp hè 2017 khởi hành từ Sài Gòn'),
(202, 2, 'Tour Singapore - Malaysia 5 ngày 4 đêm dịp hè 2017 giá tốt từ Tp.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                hành trình du lịch Singapore - Malaysia 5 ngày 4 đêm hè 2017. Ngoài những điểm tham quan đẹp, tận huởng khí hậu trong lành của quốc đảo sư tử Singapore sẽ làm quý khách xua tan những mệt mỏi trong những ngày làm việc vất vả.Với tour du lịch Singapore Malaysia giá rẻ hè 2017 lần này sẽ mang đến cho quý khách nhiều điều thú vị và hấp dẫn...<br />\r\n<br />\r\nHành trình: Singapore - Malaysia + Tặng 1 đêm khách sạn 5* tại Kuala Lumpur <br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 04,11,12,18,19,25,26/07; 01,2,8,9,15,16,23/08             </p>\n        </div>', 'Tour Singapore - Malaysia 5 ngày 4 đêm dịp hè 2017 giá tốt từ Tp.HCM', 'Tour Singapore - Malaysia 5 ngày 4 đêm dịp hè 2017 giá tốt từ Tp.HCM', 'Tour Singapore - Malaysia 5 ngày 4 đêm dịp hè 2017 giá tốt từ Tp.HCM', 'Tour Singapore - Malaysia 5 ngày 4 đêm dịp hè 2017 giá tốt từ Tp.HCM'),
(203, 2, 'Tour du lịch Singapore - Malaysia 6 ngày 5 đêm giá tốt hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Singapore - Malaysia hè 2017. Một hành trình du lịch qua 2 đất nước, Singapore - đưa bạn khám phá con rồng Châu Á, với nhiều điểm nổi tiếng như Công viên Merlion , Nhà hát Opera Esplanade, Garden by the Bay,....Tiếp đến, bạn sẽ được hòa mình vào thiên đường giải trí tại Malaysia với nhiều hoạt động vui chơi vô cùng hấp dẫn, đừng bỏ lỡ cơ hội du lịch vào mùa hè này ...<br />\r\n<br />\r\nHành trình: Singapore - Malaysia <br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 6 ngày 5 đêm<br />\r\n<br />\r\nNgày khởi hành: 06,13,28/07; 01,8,15,22/08             </p>\n        </div>', 'Tour du lịch Singapore - Malaysia 6 ngày 5 đêm giá tốt hè 2017', 'Tour du lịch Singapore - Malaysia 6 ngày 5 đêm giá tốt hè 2017', 'Tour du lịch Singapore - Malaysia 6 ngày 5 đêm giá tốt hè 2017', 'Tour du lịch Singapore - Malaysia 6 ngày 5 đêm giá tốt hè 2017'),
(204, 2, 'Du lịch Singapore - Malaysia 6 ngày dịp hè 2017 khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Chương trình du lịch Singapore - Malaysia 6 ngày dịp hè 2017 khởi hành từ Sài Gòn đưa bạn khám phá đất nước, con người của 2 nước đang vươn lên phát triển bật nhất Châu Á với nền văn hóa đa dạng, những điểm đến nổi tiếng, cùng trăm chương trình vui chơi giải trí hấp dẫn hay bạt ngàn khu trung tâm mua sắm sầm uất mà bạn không thể bỏ qua ...<br />\r\n<br />\r\nHành trình: Malaysia - Singapore (2 đêm tại Singapore) <br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 6 ngày 5 đêm<br />\r\n<br />\r\nNgày khởi hành: 08,24/06; 05,12,17,26/07             </p>\n        </div>', 'Du lịch Singapore - Malaysia 6 ngày dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Singapore - Malaysia 6 ngày dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Singapore - Malaysia 6 ngày dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Singapore - Malaysia 6 ngày dịp hè 2017 khởi hành từ Sài Gòn'),
(205, 2, 'Du lịch Sin - Mal - Indo 6 ngày 5 đêm giá tốt dịp hè 2017 từ TP.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình du lịch liên tuyến Sing - Mal - Indo dịp hè 2017. Khám phá quốc đảo sư tử Singapore với các công trình nghệ thuật hiện đại đầy ấn tượng, thả ga mua sắm tại các trung tâm thương mại bạt ngàn hàng hóa. Tiếp tục đến với Indonesia đắm chìm trong không gian biển cả, thưởng thức các món hải sản đầy hấp dẫn. Cuối cùng đến với Mayliasia tham quan những điểm đến nổi tiếng, trải nghiệm nhiều trò vui chơi giải trí đầy sôi động.<br />\r\n<br />\r\nHành trình: Singapore - Malaysia - Indonesia<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 6 ngày 5 đêm<br />\r\n<br />\r\nNgày khởi hành: 07,13,21,28/07             </p>\n        </div>', 'Du lịch Sin - Mal - Indo 6 ngày 5 đêm giá tốt dịp hè 2017 từ TP.HCM', 'Du lịch Sin - Mal - Indo 6 ngày 5 đêm giá tốt dịp hè 2017 từ TP.HCM', 'Du lịch Sin - Mal - Indo 6 ngày 5 đêm giá tốt dịp hè 2017 từ TP.HCM', 'Du lịch Sin - Mal - Indo 6 ngày 5 đêm giá tốt dịp hè 2017 từ TP.HCM'),
(206, 2, 'Du lịch Indonesia 4 ngày 3 đêm thiên đường đảo Bali giá tốt 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Indonesia - thiên đường đảo Bali. Sức hấp dẫn của Bali là những bãi biển dài đầy cát, là những thửa ruộng bậc thang ngút ngàn, là những ngọn núi lửa cao chót vót trên 3.000 m, những dòng sông cuộn chảy, những khe núi sâu hun hút, những mặt hồ nguyên sơ trên miệng các dãy núi lửa đã tắt, các hang động yên ắng và những cánh rừng nhiệt đới đầy ắp cuộc sống hoang dã<br />\r\n<br />\r\nHành trình: Bali - Đền Tanah Lot<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 22,26/06             </p>\n        </div>', 'Du lịch Indonesia 4 ngày 3 đêm thiên đường đảo Bali giá tốt 2017', 'Du lịch Indonesia 4 ngày 3 đêm thiên đường đảo Bali giá tốt 2017', 'Du lịch Indonesia 4 ngày 3 đêm thiên đường đảo Bali giá tốt 2017', 'Du lịch Indonesia 4 ngày 3 đêm thiên đường đảo Bali giá tốt 2017'),
(207, 2, 'Tour Đà Lạt Thanh Tịnh 3n3đ -Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Tour Du lịch: “tham quan, ngắm hoa kết hợp hành hương viếng cảnh Chùa Đà Lạt” là một tour đặc trưng mới của Hải Đăng. Có vui tươi, có tĩnh lặng. Tham gia chuyến tour này, quý khách vừa được du lịch tham quan khám phá các điểm mới, vừa được thưởng ngoạn chiêm ngưỡng các loài hoa xuân tuyệt đẹp, lại vừa dịp để đi cầu may, cầu an cho cả năm an lành.Quý khách hãy dọn long thật tĩnh tâm để hòa quyện vào với thiên nhiên, với không khí tươi vui của năm mới này nhé            </p>\n        </div>', 'Tour Đà Lạt Thanh Tịnh 3n3đ -Hai Dang Travel', 'Tour Đà Lạt Thanh Tịnh 3n3đ -Hai Dang Travel', 'Tour Đà Lạt Thanh Tịnh 3n3đ -Hai Dang Travel', 'Tour Đà Lạt Thanh Tịnh 3n3đ -Hai Dang Travel'),
(208, 2, 'Tour Đà Lạt - Thung Lũng Vàng 3n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt là một tour phổ biến, là điểm du lịch khá quen thuộc trong lòng du khách, Những KDL nổi tiếng ở Đà Lạt, du khách đã không thể bỏ qua nếu như một lần đặt chân lên xứ sở Sương Mù này.<br />\r\nNhưng đến với tour du lịch này, quý khách sẽ tiếp tục có cơ hội khám phá những điểm độc đáo, “quen mà như lạ” và  thật thích thú vô cùng khi càng tìm hiểu càng thấy hay.<br />\r\n            </p>\n        </div>', 'Tour Đà Lạt - Thung Lũng Vàng 3n2đ - Hai Dang Travel', 'Tour Đà Lạt - Thung Lũng Vàng 3n2đ - Hai Dang Travel', 'Tour Đà Lạt - Thung Lũng Vàng 3n2đ - Hai Dang Travel', 'Tour Đà Lạt - Thung Lũng Vàng 3n2đ - Hai Dang Travel'),
(209, 2, 'Tour Đà Lạt - Thung Lũng Vàng 4 Sao 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt là một tour phổ biến, là điểm du lịch khá quen thuộc trong lòng du khách, Những KDL nổi tiếng ở Đà Lạt, du khách đã không thể bỏ qua nếu như một lần đặt chân lên xứ sở Sương Mù này.<br />\r\nNhưng đến với tour du lịch này, quý khách sẽ tiếp tục có cơ hội khám phá những điểm độc đáo, “quen mà như lạ” và  thật thích thú vô cùng khi càng tìm hiểu càng thấy hay            </p>\n        </div>', 'Tour Đà Lạt - Thung Lũng Vàng 4 Sao 3n3đ - Hai Dang Travel', 'Tour Đà Lạt - Thung Lũng Vàng 4 Sao 3n3đ - Hai Dang Travel', 'Tour Đà Lạt - Thung Lũng Vàng 4 Sao 3n3đ - Hai Dang Travel', 'Tour Đà Lạt - Thung Lũng Vàng 4 Sao 3n3đ - Hai Dang Travel'),
(210, 2, 'Tour Đà Lạt - Thung lũng vàng 2 sao 3N3Đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt là một tour phổ biến, là điểm du lịch khá quen thuộc trong lòng du khách, Những KDL nổi tiếng ở Đà Lạt, du khách đã không thể bỏ qua nếu như một lần đặt chân lên xứ sở Sương Mù này.<br />\r\nNhưng đến với tour du lịch này, quý khách sẽ tiếp tục có cơ hội khám phá những điểm độc đáo, “quen mà như lạ” và  thật thích thú vô cùng khi càng tìm hiểu càng thấy hay.<br />\r\n            </p>\n        </div>', 'Tour Đà Lạt - Thung lũng vàng 2 sao 3N3Đ - Hai Dang Travel', 'Tour Đà Lạt - Thung lũng vàng 2 sao 3N3Đ - Hai Dang Travel', 'Tour Đà Lạt - Thung lũng vàng 2 sao 3N3Đ - Hai Dang Travel', 'Tour Đà Lạt - Thung lũng vàng 2 sao 3N3Đ - Hai Dang Travel'),
(45, 2, 'Tour Hà Nội - Singapore - Malaysia 6N5Đ Giá Kích Cầu - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Khám phá hai quốc gia xinh đẹp Singapore và Malaysia. Singapore - \"đảo quốc sư tử\" nhỏ bé, được mệnh danh là thành phố xanh, sạch nhất Thế Giới. Malaysia - quốc gia đa sắc tộc, tôn giáo, điểm đến luôn cuốn hút các du khách bởi những điều độc đáo, có một không hai. Đặt tour Singapore - Malaysia giá rẻ, trọn gói ngay hôm nay và cảm nhận !            </p>\n        </div>', 'Tour Hà Nội - Singapore - Malaysia 6N5Đ Giá Kích Cầu - Hoàng Việt Travel', 'Tour Hà Nội - Singapore - Malaysia 6N5Đ Giá Kích Cầu - Hoàng Việt Travel', 'Tour Hà Nội - Singapore - Malaysia 6N5Đ Giá Kích Cầu - Hoàng Việt Travel', 'Tour Hà Nội - Singapore - Malaysia 6N5Đ Giá Kích Cầu - Hoàng Việt Travel'),
(153, 2, 'Tour Phú Quốc đảo ngọc thiên đường 3N3Đ', '<div class=\"text_info_sp width_common\">\n            <p>\n                Được ví như thiên đường miền nhiệt đới với nhiều bãi biển hoang sơ đẹp mê hồn. Phú Quốc sẽ níu chân bạn bằng chính vẻ đẹp thiên nhiên thuần khiết, hoang sơ, sẽ mở ra cho bạn một biển trời duyên hải đầy kỳ thú và đem bạn đến cuộc sống làng chài muôn màu tươi vui, nơi mà nụ cười bình dị của những người dân biển luôn lấp lánh đón chào.             </p>\n        </div>', 'Tour Phú Quốc đảo ngọc thiên đường 3N3Đ', 'Tour Phú Quốc đảo ngọc thiên đường 3N3Đ', 'Tour Phú Quốc đảo ngọc thiên đường 3N3Đ', 'Tour Phú Quốc đảo ngọc thiên đường 3N3Đ'),
(154, 2, 'Cát Bà cao tốc 2 ngày 1 đêm 2 sao - APT Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Cát Bà - Hải Phòng là đảo lớn nhất trong số 1.969 hòn đảo của quần thể đảo Vịnh Hạ Long. Thiên nhiên ở đây hoang sơ, rừng, biển, sông, suối, núi, đồi, thung lũng, bãi cát, hang động, xen kẽ gắn kết với nhau tạo nên nhiều cảnh đẹp kỳ thú. Rừng Quốc gia Cát Bà rộng 15.200 ha có khu rừng nguyên sinh nhiệt đới rộng 570 ha với hệ thống động thực vật vô cùng phong phú, đặc trưng là loài Voọc đầu trắng và cây Kim Giao.<br />\r\n <br />\r\nAPT Travel là đơn vị duy nhất và đầu tiên khai thác Tuyến Du lịch Hà Nội - Cát Bà - Hà Nội ghép đoàn với 02 chương trình : Du lịch cát Bà 02 ngày 1 đêm và Du lịch Cát Bà 3 ngày 2 đêm<br />\r\nKhởi hành hàng ngày từ Hà Nội, với các loại dịch vụ từ 2-3-4 sao tại các khách sạn: Giếng ngọc, Hùng Long và Sunrise Resort tại Cát Bà.<br />\r\n <br />\r\nƯu thế của Tour du lịch ghép đoàn Hà Nội Cát Bà:<br />\r\n <br />\r\n+ Tour Du lịch Hà Nội - Cát Bà Khởi hành hàng ngày từ Hà Nội, Gia đình bạn có thể sắp xếp bất cứ thời gian trong tuần nào nếu muốn.<br />\r\n+ Rút ngắn thời gian cho quý khách ra thăm quan Đảo Cát bà, nếu trước kia quý khách muốn đi phải đi qua Vịnh Hạ Long, APT Travel tổ chức Tour đi đường Cao Tốc Hải Phòng mới, đi Tàu cao Tốc Hoàng Long sang cát Bà.<br />\r\n+ Du lịch Cát Bà mới: Tiết kiệm chi phí, thời gian với loại hình Tour ghép đoàn hàng ngày.<br />\r\n+ Chương trình tour cát bà với dịch vụ đa dạng, chất lượng bởi APT Travel và các nhà cung cấp hàng đầu tại Cát Bà.<br />\r\n+ Lịch trình thăm quan đầy đủ, phong phú, ưu thế hơn nhiều so với các tour phổ thông cũ đã xây dựng: Thăm quan Vịnh Lan hạ, Đảo khỉ, Vườn Quốc Gia, Pháo Đài thần công,..<br />\r\n <br />\r\n            </p>\n        </div>', 'Cát Bà cao tốc 2 ngày 1 đêm 2 sao - APT Travel', 'Cát Bà cao tốc 2 ngày 1 đêm 2 sao - APT Travel', 'Cát Bà cao tốc 2 ngày 1 đêm 2 sao - APT Travel', 'Cát Bà cao tốc 2 ngày 1 đêm 2 sao - APT Travel'),
(155, 2, 'HÀ NỘI - HỒ BA BỂ - THÁC BẢN GIỐC – ĐỘNG NGƯỜM NGAO – HÀ NỘI', '<div class=\"text_info_sp width_common\">\n            <p>\n                Khám phá hành trình Tour ghép Hồ Ba Bể - Thác Bản Giốc – Động Ngườm Ngao 3 ngày 2 đêm ghép đoàn hàng tuần để tận hưởng chương trình ghép đoàn, với hành trình hấp dẫn, chi phí tiết kiệm, chương trình cố định và hấp dẫn với các điểm thăm quan: Hồ Ba Bể, Thác Bản Giốc, Động Ngườm Ngao<br />\r\n              </p>\n        </div>', 'HÀ NỘI - HỒ BA BỂ - THÁC BẢN GIỐC – ĐỘNG NGƯỜM NGAO – HÀ NỘI', 'HÀ NỘI - HỒ BA BỂ - THÁC BẢN GIỐC – ĐỘNG NGƯỜM NGAO – HÀ NỘI', 'HÀ NỘI - HỒ BA BỂ - THÁC BẢN GIỐC – ĐỘNG NGƯỜM NGAO – HÀ NỘI', 'HÀ NỘI - HỒ BA BỂ - THÁC BẢN GIỐC – ĐỘNG NGƯỜM NGAO – HÀ NỘI'),
(156, 2, 'DU LỊCH ĐÀI LOAN HÀ NỘI - ĐÀI BẮC - ĐÀI TRUNG - CAO HÙNG - HÀ NỘI - APT TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                DU LỊCH ĐÀI LOAN<br />\r\nHÀ NỘI - ĐÀI BẮC - ĐÀI TRUNG - CAO HÙNG - HÀ NỘI THẢ ĐÈN TRỜI – LÀNG CỔ THẬP PHẦN – CÔNG VIÊN DẠ LIỄU<br />\r\n(5 Ngày 4 Đêm, Bay VJ ) - Giá : 12.990.000<br />\r\nNgày khởi hành: <br />\r\nTháng 5: 10,24,31/5;  - Tháng 6: 14,21,28/6;<br />\r\nTháng 7: 5,12,19,26/7/2017<br />\r\n            </p>\n        </div>', 'DU LỊCH ĐÀI LOAN HÀ NỘI - ĐÀI BẮC - ĐÀI TRUNG - CAO HÙNG - HÀ NỘI - APT TRAVEL', 'DU LỊCH ĐÀI LOAN HÀ NỘI - ĐÀI BẮC - ĐÀI TRUNG - CAO HÙNG - HÀ NỘI - APT TRAVEL', 'DU LỊCH ĐÀI LOAN HÀ NỘI - ĐÀI BẮC - ĐÀI TRUNG - CAO HÙNG - HÀ NỘI - APT TRAVEL', 'DU LỊCH ĐÀI LOAN HÀ NỘI - ĐÀI BẮC - ĐÀI TRUNG - CAO HÙNG - HÀ NỘI - APT TRAVEL'),
(157, 2, 'Hạ Long 2 ngày 1 đêm ngủ tàu  Halong Dragon Gold 3sao - APT Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                 <br />\r\nVịnh Hạ Long một kiệt tác của thiên nhiên được công nhận là di sản thế giới, là một trong những điểm thu hút nhiều khách du lịch nhất tại Việt Nam. Vịnh Hạ Long là một vịnh nhỏ thuộc phần bờ Tây vịnh Bắc Bộ tại khu vực biển Đông Bắc Việt Nam, thuộc địa phận tỉnh Quảng Ninh. Vịnh Hạ Long được hình thành do sự vận động của đá và nước, là một tác phẩm nghệ thuật địa lí được hoàn thành sau hàng triệu năm biến đổi của địa chất. Là trung tâm của một khu vực rộng lớn có những yếu tố ít nhiều tương đồng về địa chất, địa mạo, cảnh quan, khí hậu và văn hóa, với vịnh Bái Tử Long phía Đông Bắc và quần đảo Cát Bà phía Tây Nam, Vịnh Hạ Long giới hạn trong diện tích khoảng 1.553km² bao gồm 1.960 hòn đảo lớn nhỏ, phần lớn là đảo đá vôi.<br />\r\nTrải nghiệm Ngủ đêm trên Du Thuyền Hạ Long Dragon mang đến cho quý vị trải nghiệm khác lạ với ngủ trên khách sạn. Với những hoạt động thú vị trên suốt tuyến hành trình từ Thăm quan Hang Sửng Sốt, bãi tắm Tiptop hay Soi sim và đặc biệt chèo Kayaking trên vịnh là những hoạt động khác lạ mang tới cho quý khách.<br />\r\n <br />\r\nKhi đem về quý khách có thể tham gia hoạt động hát trên tàu hoặc tự mình câu Mực trên Vịnh, hết sức hấp dẫn. Đây là sản phẩm Tour của APT Travel tổ chức hàng ngày, phụ vụ du khách trong và ngoài nước có thể đi ghép lẻ vào đoàn, phụ vụ liên tục hàng ngày.<br />\r\n <br />\r\nVới lịch khởi hành hàng ngày phục vụ các dịch vụ từ 3 sao đến 4 sao trên Du thuyền Halong dragon Cúie, The Vietbeauty Cruise,  và với kinh nghiệm tổ chức Tour trên 10 năm về dịch vụ tour ghép tại Hạ Long nói riêng và các điểm du lịch tại Miền Bắc nói chung, Du lịch ghép đoàn Hạ Long trên du thuyền chắc chắn sẽ mang lại sự hài lòng, an toàn cho du khách khi đặt niềm tin vào APT Travel.<br />\r\n <br />\r\n            </p>\n        </div>', 'Hạ Long 2 ngày 1 đêm ngủ tàu  Halong Dragon Gold 3sao - APT Travel', 'Hạ Long 2 ngày 1 đêm ngủ tàu  Halong Dragon Gold 3sao - APT Travel', 'Hạ Long 2 ngày 1 đêm ngủ tàu  Halong Dragon Gold 3sao - APT Travel', 'Hạ Long 2 ngày 1 đêm ngủ tàu  Halong Dragon Gold 3sao - APT Travel'),
(158, 2, 'Hạ Long 2 ngày 1 đêm ngủ tàu Vietbeauty 4 sao - APT Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                 <br />\r\nVịnh Hạ Long một kiệt tác của thiên nhiên được công nhận là di sản thế giới, là một trong những điểm thu hút nhiều khách du lịch nhất tại Việt Nam. Vịnh Hạ Long là một vịnh nhỏ thuộc phần bờ Tây vịnh Bắc Bộ tại khu vực biển Đông Bắc Việt Nam, thuộc địa phận tỉnh Quảng Ninh. Vịnh Hạ Long được hình thành do sự vận động của đá và nước, là một tác phẩm nghệ thuật địa lí được hoàn thành sau hàng triệu năm biến đổi của địa chất. Là trung tâm của một khu vực rộng lớn có những yếu tố ít nhiều tương đồng về địa chất, địa mạo, cảnh quan, khí hậu và văn hóa, với vịnh Bái Tử Long phía Đông Bắc và quần đảo Cát Bà phía Tây Nam, Vịnh Hạ Long giới hạn trong diện tích khoảng 1.553km² bao gồm 1.960 hòn đảo lớn nhỏ, phần lớn là đảo đá vôi.<br />\r\nCùng APT Travel Khám phá Hạ Long trên du thuyền 4 sao mang tên \"vẻ đẹp Việt \" - The Vietbeauty  cùng khám phá và trải nghiệm Vịnh Hạ Long với những dịch vụ tốt, hấp dẫn và sự phụ vụ chu đáo của chúng tôi. Trên chuyến đi này, quý vị còn có cơ hội làm bạn với những vị khách nước ngoài thú vị đến từ nhiều nền văn hóa khác nhau. Hãy thưởng thức và trải nghiệm Hạ Long cùng chúng tôi, cùng  Du thuyền The Viet beauty Cruise!<br />\r\n             </p>\n        </div>', 'Hạ Long 2 ngày 1 đêm ngủ tàu Vietbeauty 4 sao - APT Travel', 'Hạ Long 2 ngày 1 đêm ngủ tàu Vietbeauty 4 sao - APT Travel', 'Hạ Long 2 ngày 1 đêm ngủ tàu Vietbeauty 4 sao - APT Travel', 'Hạ Long 2 ngày 1 đêm ngủ tàu Vietbeauty 4 sao - APT Travel'),
(159, 2, 'Du lịch Campuchia 4 ngày 3 đêm Siem Reap - Phnom Penh giá tốt hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Campuchia 4 ngày 3 đêm Siem Reap - Phnom Penh hè 2017. Đưa bạn khám phá đất nước chùa tháp chất chứa bao điều bí ẩn làm say lòng mỗi ai đặt chân đến vùng đất này. Nơi có vẻ đẹp nguyên sơ, hùng vĩ của đền Angkor Wat, Angkor Thom mang đậm dấu ấn thời gian, cùng sống lại những giây phút lịch sử tại cung điện hoàng gia nguy nga. Điều đặc biệt mà Campuchia níu chân du khách thập phương đó là sự thân thiện và dung dị của người dân, làm ai đi cũng nhớ mãi không thôi.<br />\r\n<br />\r\nHành trình: Siem Reap - Phnom Penh<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 01,8,15,22,29/06; 06,13,20,27/07             </p>\n        </div>', 'Du lịch Campuchia 4 ngày 3 đêm Siem Reap - Phnom Penh giá tốt hè 2017', 'Du lịch Campuchia 4 ngày 3 đêm Siem Reap - Phnom Penh giá tốt hè 2017', 'Du lịch Campuchia 4 ngày 3 đêm Siem Reap - Phnom Penh giá tốt hè 2017', 'Du lịch Campuchia 4 ngày 3 đêm Siem Reap - Phnom Penh giá tốt hè 2017'),
(160, 2, 'Du lịch Shihanoukville - Korong Saloem 4 ngày 3 đêm hè 2017 giá tốt', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nếu bạn đang tìm kiếm điểm du lịch nước ngoài hè 2017 vừa hấp dẫn, giá hợp lý chắc chắn đay là điểm đến bạn không thể bỏ qua. Ở Campuchia có cả thiên đường biển Shihanoukville - Korong Saloem đầy hoang sơ nơi chỉ có biển xanh - cát trắng - nắng vàng và chỉ thiếu bạn đến đến để tận hưởng không gian sắc màu của biển cả ...<br />\r\n<br />\r\nHành trình: Sihanoukville - Đảo Kohrong Saloem - Bokor - Phnom Penh<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 01,8,15,22,29/06; 06,13,20,27/07             </p>\n        </div>', 'Du lịch Shihanoukville - Korong Saloem 4 ngày 3 đêm hè 2017 giá tốt', 'Du lịch Shihanoukville - Korong Saloem 4 ngày 3 đêm hè 2017 giá tốt', 'Du lịch Shihanoukville - Korong Saloem 4 ngày 3 đêm hè 2017 giá tốt', 'Du lịch Shihanoukville - Korong Saloem 4 ngày 3 đêm hè 2017 giá tốt'),
(161, 2, 'Du lịch Hàn Quốc 4 ngày 4 đêm giá tốt 2017 khởi hành từ Tp.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Hàn Quốc - Hàn Quốc xứ kimchi là nơi du lịch với cảnh đẹp và văn hóa tuyệt vời. Seoul sở hữu cung điện Hoàng gia lộng lẫy, chợ Dong Dae Moon, Nam Dae Moon nhộn nhịp, dễ dàng mua nhân sâm, mỹ phẩm và thời trang....<br />\r\n<br />\r\nHành trình: Seoul - Everland - Đảo Nami - Floating Island +Tặng Nanta Show<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 13,20,22,27/06             </p>\n        </div>', 'Du lịch Hàn Quốc 4 ngày 4 đêm giá tốt 2017 khởi hành từ Tp.HCM', 'Du lịch Hàn Quốc 4 ngày 4 đêm giá tốt 2017 khởi hành từ Tp.HCM', 'Du lịch Hàn Quốc 4 ngày 4 đêm giá tốt 2017 khởi hành từ Tp.HCM', 'Du lịch Hàn Quốc 4 ngày 4 đêm giá tốt 2017 khởi hành từ Tp.HCM'),
(162, 2, 'Du lịch Hàn Quốc 4 ngày 4 đêm bay Vietjet Air giá tốt dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch hè Hàn Quốc 2017 - Khám phá Seoul về đêm. Thủ đô Seoul là một thành phố mang trong mình vẻ đẹp vừa hiện đại, vừa ẩn chứa truyền thống lâu đời. Chính sự kết hợp hài hòa đó đã thu hút du khách đi tour Hàn Quốc dịp hè 2017 nói chung và Seoul nói riêng. Ngày nay, Seoul còn được mệnh danh là thành phố không ngủ với những trung tâm mua sắm, quán bar cafe, hàng ăn, nhà tăm hơi hoạt động suốt cả ngày lẫn đêm. Cũng chính vì lẽ đó mà khám phá Seoul về đêm cũng là một trong những điều thú vị thu hút du khách trong các tour du lịch Hàn Quốc.<br />\r\n<br />\r\nHành trình: Seoul - Nami - Everland - Lotte World Tower + Tặng Nanta / Pang / Drawing Show<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 29/06; 04,18,25/07; 01,10,22/08             </p>\n        </div>', 'Du lịch Hàn Quốc 4 ngày 4 đêm bay Vietjet Air giá tốt dịp hè 2017', 'Du lịch Hàn Quốc 4 ngày 4 đêm bay Vietjet Air giá tốt dịp hè 2017', 'Du lịch Hàn Quốc 4 ngày 4 đêm bay Vietjet Air giá tốt dịp hè 2017', 'Du lịch Hàn Quốc 4 ngày 4 đêm bay Vietjet Air giá tốt dịp hè 2017'),
(163, 2, 'Tour du lịch Hàn Quốc 5 ngày 5 đêm giá tốt hè 2017 bay Vietjet Air', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch hè Hàn Quốc hè 2017 - Thiên đường du lịch đảo Jeju. Đối với người Hàn Quốc, hòn đảo Jeju xinh đẹp với phong cảnh thanh bình, bờ biển tràn ngập nắng và gió, là địa điểm lý tưởng cho những kỳ nghỉ trăng mật của các đôi tình nhân, hay vợ chồng mới cưới hoặc những kỳ nghỉ giúp gắn kết gia đình. Trái ngược với Seoul nhộn nhịp, tấp nập người và xe, nhà cao tầng san sát, Jeju lắng đọng và êm đềm, xứng đánh với danh hiệu \"hòn đảo của hòa bình\".<br />\r\n<br />\r\nHành trình: Seoul - Jeju - Nami - Everland - Nanta Show<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 5 đêm<br />\r\n<br />\r\nNgày khởi hành: 14,27/07             </p>\n        </div>', 'Tour du lịch Hàn Quốc 5 ngày 5 đêm giá tốt hè 2017 bay Vietjet Air', 'Tour du lịch Hàn Quốc 5 ngày 5 đêm giá tốt hè 2017 bay Vietjet Air', 'Tour du lịch Hàn Quốc 5 ngày 5 đêm giá tốt hè 2017 bay Vietjet Air', 'Tour du lịch Hàn Quốc 5 ngày 5 đêm giá tốt hè 2017 bay Vietjet Air'),
(164, 2, 'Du lịch Nhật Bản 4 ngày 3 đêm dịp hè 2017 ngắm hoa Lavender', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Nhật Bản dịp hè 2017 - Tham gia Lễ hội cỏ cây Kawaguchiko ngắm hoa Lavender, được tổ chức hàng năm vào mùa hè (19/06- 16/07) trên bờ hồ Kawaguchiko, được đặt ở chân núi Phú Sĩ. Đừng chỉ đi để xem các loại thảo mộc – Hồ Kawaguchiko được bao quanh bởi vô số các điểm tham quan hấp dẫn khác...<br />\r\n<br />\r\nHành trình: Tokyo - Hakone - Núi Phú Sỹ - Odaiba<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 09/07             </p>\n        </div>', 'Du lịch Nhật Bản 4 ngày 3 đêm dịp hè 2017 ngắm hoa Lavender', 'Du lịch Nhật Bản 4 ngày 3 đêm dịp hè 2017 ngắm hoa Lavender', 'Du lịch Nhật Bản 4 ngày 3 đêm dịp hè 2017 ngắm hoa Lavender', 'Du lịch Nhật Bản 4 ngày 3 đêm dịp hè 2017 ngắm hoa Lavender'),
(165, 2, 'Du lịch Nhật Bản hè 2017 giá tốt ngắm hoa cẩm tú cầu từ Tp.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Nhật Bản dịp hè 2017 - Thời gian này là mùa mưa tại Nhật Bản, tuy nhiên lại có những điểm hấp dẫn và cách trải nghiệm đặc thù chỉ có trong mùa mưa. Một trong những điểm đó là \"ngắm hoa cẩm tú cầu\". Hoa cẩm tú cầu là loại hoa của Nhật Bản bình dị và tươi sáng, chỉ nở vào mùa này. <br />\r\n<br />\r\nHành trình: Tokyo – Hakone – Fuji – Nagoya – Kyoto – Osaka<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 5 đêm            </p>\n        </div>', 'Du lịch Nhật Bản hè 2017 giá tốt ngắm hoa cẩm tú cầu từ Tp.HCM', 'Du lịch Nhật Bản hè 2017 giá tốt ngắm hoa cẩm tú cầu từ Tp.HCM', 'Du lịch Nhật Bản hè 2017 giá tốt ngắm hoa cẩm tú cầu từ Tp.HCM', 'Du lịch Nhật Bản hè 2017 giá tốt ngắm hoa cẩm tú cầu từ Tp.HCM'),
(166, 2, 'Tour du lịch Hồng Kông 4 ngày 3 đêm giá tốt 2017 từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Hồng Kông hè 2017 - Khám phá Hồng Kông, thành phố cảng với những tòa nhà cao chọc trời, vùng bờ biển tuyệt đẹp và những khu mua sắm tuyệt vời. Khám phá địa danh lịch sử Cảng Victoria và những tòa nhà chọc trời, ngắm nhìn những công trình kiến trúc mang phong các thuộc địa Anh chen chúc với những tòa nhà cực kỳ hiện đại ...<br />\r\n<br />\r\nHành trình: Hồng Kông - 1 ngày tự do<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 30/06 - Bay Vietjet Air             </p>\n        </div>', 'Tour du lịch Hồng Kông 4 ngày 3 đêm giá tốt 2017 từ Sài Gòn', 'Tour du lịch Hồng Kông 4 ngày 3 đêm giá tốt 2017 từ Sài Gòn', 'Tour du lịch Hồng Kông 4 ngày 3 đêm giá tốt 2017 từ Sài Gòn', 'Tour du lịch Hồng Kông 4 ngày 3 đêm giá tốt 2017 từ Sài Gòn'),
(167, 2, 'Du lịch Đài Loan 5 ngày 5 đêm hè 2017 khỏi hành từ Tp.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch đài loan 5 ngày 5 đêm hè 2017  bạn sẽ có cơ hội được thấy sự đa dạng, phong phú và sáng tạo là những gì bạn có thể cảm nhận được khi có cơ hội tìm hiểu về ẩm thực Đài Loan. Vốn sở hữu nền nông - ngư nghiệp phát triển mạnh mẽ, người dân Đài Loan thường sử dụng những nguyên vật liệu độc đáo, tươi sống từ địa phương để chế biến ra những món ăn đặc sản phục vụ thực khách<br />\r\n<br />\r\nHành trình: Đài Trung - Cao Hùng - Gia Nghĩa - Đài Bắc<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 5 đêm            </p>\n        </div>', 'Du lịch Đài Loan 5 ngày 5 đêm hè 2017 khỏi hành từ Tp.HCM', 'Du lịch Đài Loan 5 ngày 5 đêm hè 2017 khỏi hành từ Tp.HCM', 'Du lịch Đài Loan 5 ngày 5 đêm hè 2017 khỏi hành từ Tp.HCM', 'Du lịch Đài Loan 5 ngày 5 đêm hè 2017 khỏi hành từ Tp.HCM'),
(168, 2, 'Du lịch Đài Loan 5 ngày 4 đêm giá tốt dịp hè 2017 khởi hành từ Tp.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                Mùa hè đã sắp đến, bạn đã lên kế hoạch gì cho kỳ nghỉ hè này? Cùng Du Lịch Việt đồng hành tronghành trình tour du lịch Đài Loan hè 2017, sẽ đưa bạn đi qua 4 thành phố nổi tiếng: Đài Trung - Cao Hùng - Gia Nghĩa - Đài Bắc. Với những trải nghiệm thú vị như thả đèn trời tại làng văn hoá thập phần, hay tới hồ sen xuân thu các ở Cao Hùng, chiêm ngưỡng những dãy đá tại công viên địa chất Dạ Liễu ...<br />\r\n<br />\r\nHành trình: Đài Trung - Cao Hùng - Gia Nghĩa - Đài Bắc<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 28/07; 18,25/08             </p>\n        </div>', 'Du lịch Đài Loan 5 ngày 4 đêm giá tốt dịp hè 2017 khởi hành từ Tp.HCM', 'Du lịch Đài Loan 5 ngày 4 đêm giá tốt dịp hè 2017 khởi hành từ Tp.HCM', 'Du lịch Đài Loan 5 ngày 4 đêm giá tốt dịp hè 2017 khởi hành từ Tp.HCM', 'Du lịch Đài Loan 5 ngày 4 đêm giá tốt dịp hè 2017 khởi hành từ Tp.HCM'),
(169, 2, 'Du lịch Đài Loan 4 ngày 3 đêm khởi hành từ Sài Gòn giá tốt hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Đài Loan - Trải nghiệm tắm suối khoáng nóng tại Đài Bắc. Du khách khi đến với các điểm suối khoáng nóng, ngoài việc tham quan các địa danh nổi tiếng, thưởng thức những món ăn đặc trưng thì tắm suối nước nóng sẽ là một loại hình giải trí giúp cải thiện sức khỏe con người, mang lại cảm giác vô cùng sảng khoái cho du khách....<br />\r\n<br />\r\nHành trình: Đài Bắc- Đài Trung - Nam Đầu - Tắm suối khoáng nóng<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 06,20/06; 04,18/07             </p>\n        </div>', 'Du lịch Đài Loan 4 ngày 3 đêm khởi hành từ Sài Gòn giá tốt hè 2017', 'Du lịch Đài Loan 4 ngày 3 đêm khởi hành từ Sài Gòn giá tốt hè 2017', 'Du lịch Đài Loan 4 ngày 3 đêm khởi hành từ Sài Gòn giá tốt hè 2017', 'Du lịch Đài Loan 4 ngày 3 đêm khởi hành từ Sài Gòn giá tốt hè 2017'),
(170, 2, 'Du lịch Trung Quốc 4 ngày 3 đêm khởi hành từ Sài Gòn giá tốt 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Trung Quốc giá rẻ 2017 - Hành trình du lịch Trung Quốc 4 ngày 3 đêm với rất nhiều các dịa danh du lịch nổi tiếng như Vạn Lý Trường Thành, Tử Cấm Thành, Di Hòa viên, Đội quân đất nung được tạo dựng từ lâu đời với kiến trúc đặc biệt và cổ kính hay những quan cảnh sắc thiên nhiên hùng vĩ, thơ mộng do tạo hóa ban tặng. Đến với Trung Quốc bạn và người thân sẽ có những khám phá vô cùng thú vị ở đất nước này...<br />\r\n<br />\r\nHành trình: Bắc Kinh – Vạn Lý Trường Thành – Tử Cấm Thành<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm            </p>\n        </div>', 'Du lịch Trung Quốc 4 ngày 3 đêm khởi hành từ Sài Gòn giá tốt 2017', 'Du lịch Trung Quốc 4 ngày 3 đêm khởi hành từ Sài Gòn giá tốt 2017', 'Du lịch Trung Quốc 4 ngày 3 đêm khởi hành từ Sài Gòn giá tốt 2017', 'Du lịch Trung Quốc 4 ngày 3 đêm khởi hành từ Sài Gòn giá tốt 2017'),
(171, 2, 'Du lịch Nhật Bản 5 ngày 5 đêm hè 2017 ngắm hoa Lavender giá tốt', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Tokyo - Odaiba - Hakone - Mt.Fuji - Nagoya - Kyoto - Osaka - Kobe<br />\r\n<br />\r\nThời gian : 5 Ngày – 5 Đêm<br />\r\nKhởi hành: 30/06/2017<br />\r\n            </p>\n        </div>', 'Du lịch Nhật Bản 5 ngày 5 đêm hè 2017 ngắm hoa Lavender giá tốt', 'Du lịch Nhật Bản 5 ngày 5 đêm hè 2017 ngắm hoa Lavender giá tốt', 'Du lịch Nhật Bản 5 ngày 5 đêm hè 2017 ngắm hoa Lavender giá tốt', 'Du lịch Nhật Bản 5 ngày 5 đêm hè 2017 ngắm hoa Lavender giá tốt'),
(172, 2, 'Du lịch Thái Lan 5 ngày 4 đêm giá tốt tháng 7 khởi hành từ Tp.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Thái Lan giá rẻ tháng 7. Lên kế hoạch cho ngày nghỉ hè cận kề, còn gì tuyệt với hơn khi hè này bạn được tới một đất nước khác. Hành trình du lịch Bangkok - Pattaya 5 ngày 4 đêm sẽ là lựa chọn tuyệt vời cho bạn. Với mức giá ưu đãi cùng với những điểm đến nổi tiếng ở Thái Lan sẽ giúp bạn có 1 kỳ nghỉ hè thật tuyệt vời...<br />\r\n<br />\r\nHành trình: Bangkok - Pattaya (Tiêu chuẩn) + Ăn buffet trái cây tại vườn <br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: <br />\r\n01,5,6,7,8,12,13,14,15,19,20,21,22,26,27,28,29,31/07; <br />\r\n02,4,5,9,11,12,16,18,23,25/08             </p>\n        </div>', 'Du lịch Thái Lan 5 ngày 4 đêm giá tốt tháng 7 khởi hành từ Tp.HCM', 'Du lịch Thái Lan 5 ngày 4 đêm giá tốt tháng 7 khởi hành từ Tp.HCM', 'Du lịch Thái Lan 5 ngày 4 đêm giá tốt tháng 7 khởi hành từ Tp.HCM', 'Du lịch Thái Lan 5 ngày 4 đêm giá tốt tháng 7 khởi hành từ Tp.HCM'),
(173, 2, 'Du lịch Thái Lan 5 ngày 4 đêm dịp hè 2017 khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Bạn đã lên kế hoạch gì cho hè này chưa? Hãy đồng hành cùng Du Lịch Việt trong hành trình Du lịch Thái Lan Bangkok - Pattaya 5 ngày 4 đêm khởi hành từ Sài Gòn giá tốt dịp hè 2017, khám phá đất nước sôi động nhộn nhịp và cũng rất truyền thống này nhé...<br />\r\n<br />\r\nHành trình: Bangkok - Pattaya (Tiêu chuẩn) + Ăn buffet trái cây tại vườn<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 7,10,14,15,16,17,21,22,23,24,28,29,30/06             </p>\n        </div>', 'Du lịch Thái Lan 5 ngày 4 đêm dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Thái Lan 5 ngày 4 đêm dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Thái Lan 5 ngày 4 đêm dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Thái Lan 5 ngày 4 đêm dịp hè 2017 khởi hành từ Sài Gòn'),
(174, 2, 'Du lịch Thái Lan cao cấp dịp hè 2017 giá tốt khởi hành từ Tp.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Thái Lan cao cấp: Bangkok - Pattaya dịp hè 2017 - Kỳ nghỉ hè sắp tới, bạn đã có dự định gì cho kỳ nghỉ sắp tới. Hành trình du lịch hè 5 ngày 4 đêm của Du Lịch Việt sẽ đưa bạn tới nơi được mệnh danh là xứ sở của những ngôi chùa ....<br />\r\n<br />\r\nHành trình: Vườn Nho - Đảo Coral - Ăn buffet trái cây + Tặng 01 Suất Massage Thái<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 09,10,12,18,20,21,23,24,25,27,28,30/06             </p>\n        </div>', 'Du lịch Thái Lan cao cấp dịp hè 2017 giá tốt khởi hành từ Tp.HCM', 'Du lịch Thái Lan cao cấp dịp hè 2017 giá tốt khởi hành từ Tp.HCM', 'Du lịch Thái Lan cao cấp dịp hè 2017 giá tốt khởi hành từ Tp.HCM', 'Du lịch Thái Lan cao cấp dịp hè 2017 giá tốt khởi hành từ Tp.HCM'),
(175, 2, 'Tour du lịch Thái Lan 5 ngày 4 đêm Safari - Nong Nooch giá tốt hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hấp dẫn chương trình du lịch Thái Lan Bangkok - Pattaya hè 2017, chương trình tham quan những điểm du lịch và những hoạt động thú vị. Cùng tới Safari Worl - Đây là vườn thú mở tự nhiên lớn nhất Châu Á nằm trên diện tích đất rộng khoảng 69ha với hơn 75 loài động vật có vú, 300 loài chim đến từ châu Phi và Châu Á cùng các loài động vật đặc trưng khắp nơi trên thế giới. Nong Nooch - là công viên nhân tạo, một công viên thực vật nhiệt đới lớn của Đông Nam Á và đã trở thành điểm Du lich Thái Lan ...<br />\r\n<br />\r\nHành trình: Bangkok – Pataya: Safari - Nong Nooch - Ăn buffet trái cây<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 23,28/06; 7,14,22,29/07             </p>\n        </div>', 'Tour du lịch Thái Lan 5 ngày 4 đêm Safari - Nong Nooch giá tốt hè 2017', 'Tour du lịch Thái Lan 5 ngày 4 đêm Safari - Nong Nooch giá tốt hè 2017', 'Tour du lịch Thái Lan 5 ngày 4 đêm Safari - Nong Nooch giá tốt hè 2017', 'Tour du lịch Thái Lan 5 ngày 4 đêm Safari - Nong Nooch giá tốt hè 2017'),
(176, 2, 'Du lịch Thái Lan cao cấp giá tốt dịp hè 2017 khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Thái Lan Bangkok - Pattaya hè 2017. Thủ đô Bangkok của đất nước sứ sở Chùa Vàng là nơi hội tụ của văn hóa truyền thống, hiện đại, của ẩm thực, của các hoạt động vui chơi, giải trí, mua sắm… Tất cả tạo nên cho du khách cái nhìn toàn cảnh về đất nước Thái Lan.<br />\r\n<br />\r\nHành trình: Vườn Nho - Đảo Coral - Ăn buffet trái cây tại vườn + Tặng 01 Suất Massage Thái<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 12,16,23,30/06             </p>\n        </div>', 'Du lịch Thái Lan cao cấp giá tốt dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Thái Lan cao cấp giá tốt dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Thái Lan cao cấp giá tốt dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Thái Lan cao cấp giá tốt dịp hè 2017 khởi hành từ Sài Gòn'),
(177, 2, 'Tour du thuyền 5 sao khám phá Trung Quốc - Nhật Bản, Khởi hành 31/07/2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hải trình 07 ngày: Thượng Hải - Kumamoto - Nagasaki - Thượng Hải.<br />\r\nKhởi hành ngày 31/07/2017<br />\r\nDu thuyền: Mariner of the seas            </p>\n        </div>', 'Tour du thuyền 5 sao khám phá Trung Quốc - Nhật Bản, Khởi hành 31/07/2017', 'Tour du thuyền 5 sao khám phá Trung Quốc - Nhật Bản, Khởi hành 31/07/2017', 'Tour du thuyền 5 sao khám phá Trung Quốc - Nhật Bản, Khởi hành 31/07/2017', 'Tour du thuyền 5 sao khám phá Trung Quốc - Nhật Bản, Khởi hành 31/07/2017'),
(178, 2, 'Tour Du Lịch Thái Lan: Hà Nội - BangKok - Pattaya 5 Ngày Bay Thai Air Asia - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Thái Lan, khám phá \"xứ sở những nụ cười\" đất nước nổi tiếng với những thiên đường mua sắm sầm uất, hoạt động suốt ngày đêm, những bãi biển trong xanh, cát trắng trải dài ... Đi tour du lịch Thái Lan, du khách không chỉ được thưởng thức các món ăn ẩm thực độc đáo, mãn nhãn với những màn trình diễn show pêđê hoàng tráng, có một không hai.... mà du khách còn được trải nghiệm, thư giãn với các dịch vụ massage Thái, những lễ hội truyền thống đặc sắc… Hãy cùng Hoàng Việt - Open khám phá tour du lịch Thái Lan 5 ngày bay Air Asia giá rẻ ngay hôm nay nhé !            </p>\n        </div>', 'Tour Du Lịch Thái Lan: Hà Nội - BangKok - Pattaya 5 Ngày Bay Thai Air Asia - Hoàng Việt Travel', 'Tour Du Lịch Thái Lan: Hà Nội - BangKok - Pattaya 5 Ngày Bay Thai Air Asia - Hoàng Việt Travel', 'Tour Du Lịch Thái Lan: Hà Nội - BangKok - Pattaya 5 Ngày Bay Thai Air Asia - Hoàng Việt Travel', 'Tour Du Lịch Thái Lan: Hà Nội - BangKok - Pattaya 5 Ngày Bay Thai Air Asia - Hoàng Việt Travel'),
(179, 2, 'Tour du thuyền 5 sao khởi hành 15/07 khám phá Thượng Hải - Kumamoto - Fukuoka, Star Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hải trình 07 ngày đi: Thượng Hải - Kumamoto - Fukuok - Thượng Hải<br />\r\nKhởi hành ngày: 15/07/2017<br />\r\nDu thuyền: Quantum of the seas            </p>\n        </div>', 'Tour du thuyền 5 sao khởi hành 15/07 khám phá Thượng Hải - Kumamoto - Fukuoka, Star Travel', 'Tour du thuyền 5 sao khởi hành 15/07 khám phá Thượng Hải - Kumamoto - Fukuoka, Star Travel', 'Tour du thuyền 5 sao khởi hành 15/07 khám phá Thượng Hải - Kumamoto - Fukuoka, Star Travel', 'Tour du thuyền 5 sao khởi hành 15/07 khám phá Thượng Hải - Kumamoto - Fukuoka, Star Travel'),
(180, 2, 'Tour du thuyền 5 sao khám phá Trung - Nhật, khởi hành 24/6', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình 07 ngày: Thượng Hải - Kumamoto - Nagasaki - Thượng Hải<br />\r\nKhởi hành: 24/06/2017            </p>\n        </div>', 'Tour du thuyền 5 sao khám phá Trung - Nhật, khởi hành 24/6', 'Tour du thuyền 5 sao khám phá Trung - Nhật, khởi hành 24/6', 'Tour du thuyền 5 sao khám phá Trung - Nhật, khởi hành 24/6', 'Tour du thuyền 5 sao khám phá Trung - Nhật, khởi hành 24/6'),
(181, 2, 'Tour đảo Điệp Sơn Dốc Lết 2N2Đ', '<div class=\"text_info_sp width_common\">\n            <p>\n                	ĐỘC NHẤT VÔ NHỊ VỚI CON ĐƯỜNG 700M GIỮA BIỂN <br />\r\n	RESORT DỐC LẾT<br />\r\n	THƯỞNG THỨC HẢI SẢN TẠI ĐẢO<br />\r\n	BUFFET BBQ HẢI SẢN TẠI RESORT<br />\r\n            </p>\n        </div>', 'Tour đảo Điệp Sơn Dốc Lết 2N2Đ', 'Tour đảo Điệp Sơn Dốc Lết 2N2Đ', 'Tour đảo Điệp Sơn Dốc Lết 2N2Đ', 'Tour đảo Điệp Sơn Dốc Lết 2N2Đ'),
(182, 2, 'Tour Đảo Điệp Sơn - Nha Trang 3N3Đ', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nha Trang, được mệnh danh là một trong 29 vịnh đẹp nhất Thế giới khi có khá nhiều cảnh quan thiên nhiên đẹp tuyệt mỹ cùng nhiều điểm du lịch hấp dẫn, cho những ai yêu thích khám phá vẻ đẹp tiềm ẩn của thiên nhiên. Sở hữu những bãi biển xanh mát cùng bãi cát trắng mịn trải dài, Nha Trang như đang vẫy gọi du khách muôn phương tìm về một trong những thành phố biển xinh đẹp bậc nhất Việt Nam.            </p>\n        </div>', 'Tour Đảo Điệp Sơn - Nha Trang 3N3Đ', 'Tour Đảo Điệp Sơn - Nha Trang 3N3Đ', 'Tour Đảo Điệp Sơn - Nha Trang 3N3Đ', 'Tour Đảo Điệp Sơn - Nha Trang 3N3Đ'),
(183, 2, 'Du lịch Trung Quốc 7 ngày 6 đêm giá tốt hè 2017 khởi hành từ Tp.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Trung Quốc dịp hè 2017 giá tốt đi Thượng Hải - Hàng Châu - Tô Châu. Là hành trình tham quan, mua sắm tuyệt vời nhất nếu quyết định du lịch Trung Quốc.<br />\r\nHành trình: Bắc Kinh - Thượng Hải - Hàng Châu - Tô Châu<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 7 ngày 6 đêm            </p>\n        </div>', 'Du lịch Trung Quốc 7 ngày 6 đêm giá tốt hè 2017 khởi hành từ Tp.HCM', 'Du lịch Trung Quốc 7 ngày 6 đêm giá tốt hè 2017 khởi hành từ Tp.HCM', 'Du lịch Trung Quốc 7 ngày 6 đêm giá tốt hè 2017 khởi hành từ Tp.HCM', 'Du lịch Trung Quốc 7 ngày 6 đêm giá tốt hè 2017 khởi hành từ Tp.HCM'),
(184, 2, 'Du Lịch Miền Tây trải nghiệm thú vui tát mương, bắt cá dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du Lịch Hè 2017 Miền Tây - Khi những cơn gió hạ đang chuẩn bị kéo về, thì hành trình du ngoạn miệt vườn sông nước Miền Tây cũng là lựa chọn mà du khách đặc biệt quan tâm và hướng về. Đây cũng là dịp để bạn trải nghiệm những văn hóa miệt vườn vô cùng hấp dẫn của những con người hồn hậu rất đỗi thân quen, gần gũi.<br />\r\n<br />\r\nHành trình: Mỹ Tho – 4 Cồn (Long – Lân – Qui – Phụng)<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 1 ngày 0 đêm<br />\r\n<br />\r\nNgày khởi hành: Chủ nhật             </p>\n        </div>', 'Du Lịch Miền Tây trải nghiệm thú vui tát mương, bắt cá dịp hè 2017', 'Du Lịch Miền Tây trải nghiệm thú vui tát mương, bắt cá dịp hè 2017', 'Du Lịch Miền Tây trải nghiệm thú vui tát mương, bắt cá dịp hè 2017', 'Du Lịch Miền Tây trải nghiệm thú vui tát mương, bắt cá dịp hè 2017'),
(185, 2, 'Du Lịch Phan Thiết Hành Hương Đức Mẹ TàPao giá tốt 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du Lịch Phan Thiết - Thánh tượng Đức Mẹ Tàpao là một trong năm thánh tượng Đức Mẹ được đặt rải rác từ Miền Trung vào Miền Nam và cao nguyên Trung phần vào năm 1959. Lễ đài Đức Mẹ Tà Pao hiện đang là một trong những trung tâm hành hương lớn của người Công giáo Việt Nam, có tên chính thức là Trung tâm Thánh Mẫu Tà Pao.<br />\r\n<br />\r\nHành trình: Hành hương Đức Mẹ Tàpao<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 2 ngày 1 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 2,7 hàng tuần             </p>\n        </div>', 'Du Lịch Phan Thiết Hành Hương Đức Mẹ TàPao giá tốt 2017', 'Du Lịch Phan Thiết Hành Hương Đức Mẹ TàPao giá tốt 2017', 'Du Lịch Phan Thiết Hành Hương Đức Mẹ TàPao giá tốt 2017', 'Du Lịch Phan Thiết Hành Hương Đức Mẹ TàPao giá tốt 2017'),
(186, 2, 'Du Lịch Phan Thiết - Mũi Né 2 ngày giá tốt dịp hè 2017 từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du Lịch Phan Thiết - Nếu chưa có kế hoạch cho kỳ nghỉ hè 2017 này, thì hành trình 2 ngày đến với miền biển Phan Thiết – Hòn Rơm – Mũi Né sẽ là gợi ý tuyện vời cho chuyến đi ngắn ngày của quý khách bởi nơi đây tập trung nhiều bãi biển đẹp và các món ăn tươi ngon. Du khách có thể vẫy vùng tắm mát trong làn nước biển mát lành, có dịp “quẫy” tưng bừng trên đồi cát Bay, thử sức với những pha trượt cát mạo hiểm và tha hồ chụp ảnh giữa khung cảnh mênh mông gió cát<br />\r\n<br />\r\nHành trình: Phan Thiết – Hòn Rơm – Mũi Né<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 2 ngày 1 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 7 hàng tuần             </p>\n        </div>', 'Du Lịch Phan Thiết - Mũi Né 2 ngày giá tốt dịp hè 2017 từ Sài Gòn', 'Du Lịch Phan Thiết - Mũi Né 2 ngày giá tốt dịp hè 2017 từ Sài Gòn', 'Du Lịch Phan Thiết - Mũi Né 2 ngày giá tốt dịp hè 2017 từ Sài Gòn', 'Du Lịch Phan Thiết - Mũi Né 2 ngày giá tốt dịp hè 2017 từ Sài Gòn'),
(187, 2, 'Du lịch miền Tây - Mỹ Tho - Cần Thơ - Chợ nổi Cái Răng hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch hè miền Tây - Rời xa những bộn bề cuộc sống ta tìm về miền đất cuối cùng của sông mẹ Mekong vĩ đại tìm đường ra biển lớn. Miền Tây thường là điểm đến của những cuộc hành trình mang ý nghĩa thư giản và giải trí vô cùng tuyệt vời. Tour du lịch miền Tây 2 ngày 1 đêm đưa bạn đến với những điểm nổi tiếng khi nhắc đến vùng đất này như Chùa Vĩnh Tràng, Cồn Long – Lân – Quy – Phụng.<br />\r\n<br />\r\nHành trình: Mỹ Tho - Chùa Vĩnh Tràng - Cồn Long - Lân - Qui - Phụng - Cần Thơ - Chợ Nổi Cái Răng<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 2 ngày 1 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 7 hàng tuần             </p>\n        </div>', 'Du lịch miền Tây - Mỹ Tho - Cần Thơ - Chợ nổi Cái Răng hè 2017', 'Du lịch miền Tây - Mỹ Tho - Cần Thơ - Chợ nổi Cái Răng hè 2017', 'Du lịch miền Tây - Mỹ Tho - Cần Thơ - Chợ nổi Cái Răng hè 2017', 'Du lịch miền Tây - Mỹ Tho - Cần Thơ - Chợ nổi Cái Răng hè 2017'),
(188, 2, 'Du lịch Đảo Bình Hưng - Ninh Chữ 2 ngày 2 đêm giá tốt dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Đảo Bình Hưng - Ninh Chữ - Khám phá Đảo Bình Hưng là hành trình tuyệt vời dành cho những du khách thích phiêu liêu khám phá với cảnh đẹp thiên nhiên hoang sơ, đến với Bình Hưng bạn có thể thưởng thức món tôm hùm thả ga mà không lo tốn kém. Đây hứa hẹn sẽ là hành trình đáng nhớ dành cho du khách dịp hè này nhé!<br />\r\n<br />\r\nHành trình: Đảo Bình Hưng – Ninh Chữ – Vườn Nho<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 2 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Tối thứ 6 hàng tuần             </p>\n        </div>', 'Du lịch Đảo Bình Hưng - Ninh Chữ 2 ngày 2 đêm giá tốt dịp hè 2017', 'Du lịch Đảo Bình Hưng - Ninh Chữ 2 ngày 2 đêm giá tốt dịp hè 2017', 'Du lịch Đảo Bình Hưng - Ninh Chữ 2 ngày 2 đêm giá tốt dịp hè 2017', 'Du lịch Đảo Bình Hưng - Ninh Chữ 2 ngày 2 đêm giá tốt dịp hè 2017'),
(189, 2, 'Tour du thuyền 5 sao khám phá Thượng Hải - Hiroshima - Miyazaki - Kobe, Khởi hành 21/07/2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình 08 Ngày: Thượng Hải - Hiroshima - Miyazaki - Kobe - Thượng Hải<br />\r\nKhởi hành: 21/07/2017<br />\r\nDu thuyền: Mariner of the seas            </p>\n        </div>', 'Tour du thuyền 5 sao khám phá Thượng Hải - Hiroshima - Miyazaki - Kobe, Khởi hành 21/07/2017', 'Tour du thuyền 5 sao khám phá Thượng Hải - Hiroshima - Miyazaki - Kobe, Khởi hành 21/07/2017', 'Tour du thuyền 5 sao khám phá Thượng Hải - Hiroshima - Miyazaki - Kobe, Khởi hành 21/07/2017', 'Tour du thuyền 5 sao khám phá Thượng Hải - Hiroshima - Miyazaki - Kobe, Khởi hành 21/07/2017');
INSERT INTO `hoaunet_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(190, 2, 'Du lịch miền Tây - Cà Mau - Đất Mũi - Sóc Trăng 2 ngày 2 đêm hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch hè 2017 miền Tây - Về miền Tây, bạn được hòa mình vào cuộc sống thiên nhiên miệt vườn, thưởng thức những món ăn đặc sản đậm đà hương vị của vùng đồng bằng cây ngọt trái lành. Đến với vùng đất “Tây Đô”, du ngoạn chợ nổi Cái Răng, ghé thăm ngôi chùa có niên đại đến hàng trăm năm tuổi, đặt chân đến vùng đất cuối cùng của tổ quốc nơi bạn có thể phóng tầm mắt ngắm nhìn những khu rừng xanh mướt, hay nghe giai thoại về công tử Bạc Liêu. Tất cả đều có trong chương trình này.<br />\r\n<br />\r\nHành trình: Cà Mau – Nam Căn – Đất Mũi - Bạc Liêu – Sóc Trăng<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 2 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Tối thứ 6 hàng tuần             </p>\n        </div>', 'Du lịch miền Tây - Cà Mau - Đất Mũi - Sóc Trăng 2 ngày 2 đêm hè 2017', 'Du lịch miền Tây - Cà Mau - Đất Mũi - Sóc Trăng 2 ngày 2 đêm hè 2017', 'Du lịch miền Tây - Cà Mau - Đất Mũi - Sóc Trăng 2 ngày 2 đêm hè 2017', 'Du lịch miền Tây - Cà Mau - Đất Mũi - Sóc Trăng 2 ngày 2 đêm hè 2017'),
(191, 2, 'Du Lịch Miền Tây - Hà Tiên 2 ngày giá tốt khởi hành từ TP.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình Miền Tây 2 ngày 2 đêm của công ty Du Lịch Việt sẽ là dịp khám phá những dòng sông hiền hòa, chiếc xuồng ba lá, hay ngồi nhâm nhi ly trà mật ong thơm lừng, thưởng thức trái cây miệt vườn,... Hay ngồi trên tắc ráng đến với rừng tràm Trà Sư luôn phủ một màu xanh mơn mởn của đám bèo giăng kín mặt nước. Đây sẽ là một trải nghiệm du khách không thể bỏ lỡ khi đi thuyền trên dòng nước mênh mang và say mê với vẻ đẹp mát rượi của khu rừng, lắng nghe tiếng chim chóc kêu thật gần và những bông điên điển vàng nghiêng nghiêng soi bóng.<br />\r\n<br />\r\nHành trình: Quần Đảo Bà Lụa – Hang Moso – Hà Tiên – Rừng Tràm Trà Sư<br />\r\nKhởi hành: TP.HCM<br />\r\n<br />\r\nThời gian: 2 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Tối thứ 6 hàng tuần             </p>\n        </div>', 'Du Lịch Miền Tây - Hà Tiên 2 ngày giá tốt khởi hành từ TP.HCM', 'Du Lịch Miền Tây - Hà Tiên 2 ngày giá tốt khởi hành từ TP.HCM', 'Du Lịch Miền Tây - Hà Tiên 2 ngày giá tốt khởi hành từ TP.HCM', 'Du Lịch Miền Tây - Hà Tiên 2 ngày giá tốt khởi hành từ TP.HCM'),
(192, 2, 'Du Lịch Châu Đốc - Rừng Trà Sư - Chùa Huỳnh Đạo 2N2Đ giá tốt hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Châu Đốc - Rừng Tràm Trà Sư - Hành trình xuôi về An Giang thăm rừng tràm Trà Sư, nơi có hệ sinh thái điển hình ở vùng ngập nước phía Tây sông Hậu đã tạo dấu ấn rất riêng trong lòng du khách với những trải nghiệm thú vị. Hành trình đưa du khách tham quan những địa danh nổi tiếng của vùng miền Tây sông nước như núi Sam với miếu Bà Chúa Xứ nổi tiếng, núi Cấm nơi có tượng Phật Di Lặc lớn nhất Châu Á….<br />\r\n<br />\r\nHành trình: CĐốc – Rừng Tràm Trà Sư - Thiên Cấm Sơn – Chùa Huỳnh Đạo<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 2 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Tối thứ 6 hàng tuần             </p>\n        </div>', 'Du Lịch Châu Đốc - Rừng Trà Sư - Chùa Huỳnh Đạo 2N2Đ giá tốt hè 2017', 'Du Lịch Châu Đốc - Rừng Trà Sư - Chùa Huỳnh Đạo 2N2Đ giá tốt hè 2017', 'Du Lịch Châu Đốc - Rừng Trà Sư - Chùa Huỳnh Đạo 2N2Đ giá tốt hè 2017', 'Du Lịch Châu Đốc - Rừng Trà Sư - Chùa Huỳnh Đạo 2N2Đ giá tốt hè 2017'),
(193, 2, 'Du lịch Cam Ranh - Đảo Bình Ba 2 ngày 2 đêm giá tốt hè 2017 từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch hè 2017 Cam Ranh - Đảo Bình Ba - Đến với Cam Ranh – Bình Ba bạn như hòa mình vào biển trời tươi mát, thoát khỏi sự xô bô chốn phồn hoa nhộn nhịp, rãi bước bên bờ biển dài trắng mịn, thả mình vào làn nước biển trong xanh, vui chơi hết mình với những hoạt động thú vị trên biển. Đặc biệt đến với đảo Bình Ba bạn được thưởng thức những món hải sản tươi ngon. Đừng bỏ lỡ điểm đến thú vị này nhé. <br />\r\n<br />\r\nHành trình: Cam Ranh – Đảo Bình Ba<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 2 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Tối thứ 6 hàng tuần             </p>\n        </div>', 'Du lịch Cam Ranh - Đảo Bình Ba 2 ngày 2 đêm giá tốt hè 2017 từ Sài Gòn', 'Du lịch Cam Ranh - Đảo Bình Ba 2 ngày 2 đêm giá tốt hè 2017 từ Sài Gòn', 'Du lịch Cam Ranh - Đảo Bình Ba 2 ngày 2 đêm giá tốt hè 2017 từ Sài Gòn', 'Du lịch Cam Ranh - Đảo Bình Ba 2 ngày 2 đêm giá tốt hè 2017 từ Sài Gòn'),
(194, 2, 'Du lịch miền Tây - Khám phá Đảo Nam Du 2 ngày 2 đêm hè 2017 từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch hè 2017 miền Tây - Đảo Nam Du thuộc huyện Kiên Hải, Kiên Giang, gồm hơn 21 hòn đảo lớn nhỏ tại thành thế trận vững chắc giữa biển khơi. Vốn là một quần đảo còn rất hoang sơ, Nam Du đang trở thành cái tên hot hơn bao giờ hết và là sự lựa chọn lý tưởng của các bạn trẻ yêu du lịch. Đến đây, được tận hưởng không khí xanh mát, vẻ đẹp bình yên, cùng sự thân thiên của người dân nơi đây. <br />\r\n<br />\r\nHành trình: Rạch Giá - Khám Phá Đảo Nam Du - Chinh Phục Dốc Ông Tình<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 2 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Tối thứ 7; Tối 9,23/06; 7,21/7; 4/8             </p>\n        </div>', 'Du lịch miền Tây - Khám phá Đảo Nam Du 2 ngày 2 đêm hè 2017 từ Sài Gòn', 'Du lịch miền Tây - Khám phá Đảo Nam Du 2 ngày 2 đêm hè 2017 từ Sài Gòn', 'Du lịch miền Tây - Khám phá Đảo Nam Du 2 ngày 2 đêm hè 2017 từ Sài Gòn', 'Du lịch miền Tây - Khám phá Đảo Nam Du 2 ngày 2 đêm hè 2017 từ Sài Gòn'),
(195, 2, 'Du lịch Đà Lạt trải nghiệm với nông trại Đà Lạt giá tốt dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch hè 2017 Đà Lạt - Đà Lạt không chỉ được biết đến với cảnh sắc thiên nhiên nên thơ, lãng mạn mà đến với Đà Lạt bạn còn có cơ hội khám phá và tìm hiểu về quy trình trồng rau, trái cây sạch. Đặc biệt là dưa Pepino nổi tiếng đang làm mưa làm gió. Hay vườn cà chua Chocolate được mệnh danh là nho của Đà Lạt.<br />\r\n<br />\r\nHành trình: Vườn hoa actiso - Vườn rau thuỷ canh - Cánh đồng hoa cẩm tú cầu - Đồi Mộng Mơ - Thác Datanla<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 6 hàng tuần             </p>\n        </div>', 'Du lịch Đà Lạt trải nghiệm với nông trại Đà Lạt giá tốt dịp hè 2017', 'Du lịch Đà Lạt trải nghiệm với nông trại Đà Lạt giá tốt dịp hè 2017', 'Du lịch Đà Lạt trải nghiệm với nông trại Đà Lạt giá tốt dịp hè 2017', 'Du lịch Đà Lạt trải nghiệm với nông trại Đà Lạt giá tốt dịp hè 2017'),
(196, 2, 'Du lịch miền tây - Mỹ Tho - Châu Đốc - Rừng Trà Sư 3 ngày dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch hè 2017 miền tây - Mang vẻ đẹp đặc trưng của vùng đồng bằng sông nước Cửu Long, An Giang nổi tiếng bởi cảnh quan thiên nhiên nhuốm màu sắc huyền bí. Nằm trong dãy núi Thất Sơn, núi Cấm là ngọn núi cao nhất, nơi đây cảnh trí sơn thủy hữu tình, khí hậu mát mẻ được ví như một phiên bản “Đà Lạt” của miền Tây, là điểm đến lý tưởng du lịch sinh thái và tâm linh cho du khách hành hương cả nước. Hành trình sẽ là chuyến du hí đầy màu sắc dành cho du khách dịp hè 2017.<br />\r\n<br />\r\nHành trình: Mỹ Tho - Chùa Vĩnh Tràng - Cồn Long - Lân - Qui - Phụng - Châu Đốc - Miếu Bà Chúa Xứ Núi Sam - Rừng Tràm Trà Sư - Thiên Cấm Sơn<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 6 hàng tuần             </p>\n        </div>', 'Du lịch miền tây - Mỹ Tho - Châu Đốc - Rừng Trà Sư 3 ngày dịp hè 2017', 'Du lịch miền tây - Mỹ Tho - Châu Đốc - Rừng Trà Sư 3 ngày dịp hè 2017', 'Du lịch miền tây - Mỹ Tho - Châu Đốc - Rừng Trà Sư 3 ngày dịp hè 2017', 'Du lịch miền tây - Mỹ Tho - Châu Đốc - Rừng Trà Sư 3 ngày dịp hè 2017'),
(197, 2, 'Du lịch Đảo Bình Hưng - Ninh Chữ - Vườn nho 3 ngày giá tốt dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch hè đảo Bình Hưng - Ninh Chữ - Rời xa thành phố xô bồ nhộn nhịp, ta tìm đến thiên đường xanh mát, tận hưởng hương vị nồng nàn của biển cả, chìm đắm trong khung trời bình yên lộng gió bạn như được trải lòng cùng với thiên nhiên và khám phá những thắng cảnh đẹp say lòng.<br />\r\n<br />\r\nHành trình: Đảo Bình Hưng - Ninh Chữ - Làng gốm Bàu Trúc - Tháp Poklong Garai - Vườn Nho<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 6 hàng tuần             </p>\n        </div>', 'Du lịch Đảo Bình Hưng - Ninh Chữ - Vườn nho 3 ngày giá tốt dịp hè 2017', 'Du lịch Đảo Bình Hưng - Ninh Chữ - Vườn nho 3 ngày giá tốt dịp hè 2017', 'Du lịch Đảo Bình Hưng - Ninh Chữ - Vườn nho 3 ngày giá tốt dịp hè 2017', 'Du lịch Đảo Bình Hưng - Ninh Chữ - Vườn nho 3 ngày giá tốt dịp hè 2017'),
(198, 2, 'Tour Trung - Nhật cùng du thuyền 5 sao, Khởi hành 08/07/2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hảnh trình 07 Ngày: Thượng Hải - Kumamoto - Fukuoka - Thượng Hải.<br />\r\nKhởi hành: 08/07/2017.<br />\r\nDu thuyền: Mariner of the seas.            </p>\n        </div>', 'Tour Trung - Nhật cùng du thuyền 5 sao, Khởi hành 08/07/2017', 'Tour Trung - Nhật cùng du thuyền 5 sao, Khởi hành 08/07/2017', 'Tour Trung - Nhật cùng du thuyền 5 sao, Khởi hành 08/07/2017', 'Tour Trung - Nhật cùng du thuyền 5 sao, Khởi hành 08/07/2017'),
(199, 2, 'Du lịch Singapore 4 ngày 3 đêm dịp hè 2017 khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Singapore dịp hè 2017 - Được mệnh danh là \"thiên đường mua sắm\" nổi tiếng của châu Á, nếu muốn du lịch Singapore kết hợp với việc mua sắm thì bạn nên đi tour du lịch Singapore dịp hè 2017 với 1 ngày tự do, bạn sẽ có thời gian thoả thích shopping.<br />\r\n<br />\r\nHành trình: Garden by the bay - Sentosa (1 ngày tự do)<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 01,8,15,22,29/06; 06,13,20/07             </p>\n        </div>', 'Du lịch Singapore 4 ngày 3 đêm dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Singapore 4 ngày 3 đêm dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Singapore 4 ngày 3 đêm dịp hè 2017 khởi hành từ Sài Gòn', 'Du lịch Singapore 4 ngày 3 đêm dịp hè 2017 khởi hành từ Sài Gòn'),
(200, 2, 'Tour du lịch Singapore 3 ngày 2 đêm giá tốt hè 2017 từ Tp.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Singapore 3 ngày 2 đêm từ Sài Gòn. Hè 2017 đang tới gần, bạn và gia đình đã có dự định gì cho kỳ nghỉ sắp tới. Hãy đồng hành cùng Du Lịch Việt đến với đảo quốc xinh đẹp Singapore, một điểm du lịch được mệnh danh là \"xanh - sạch - đẹp\". Cùng đến với những siêu cây khổng lồ tại Garden By The Bay, vui chơi tại đảo Sentosa với nhiều điểm tham quan và hoạt động vui chơi thú vị...<br />\r\n<br />\r\nHành trình: Sentosa - Garden By The Bay<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: 01,8,15,22,29/07             </p>\n        </div>', 'Tour du lịch Singapore 3 ngày 2 đêm giá tốt hè 2017 từ Tp.HCM', 'Tour du lịch Singapore 3 ngày 2 đêm giá tốt hè 2017 từ Tp.HCM', 'Tour du lịch Singapore 3 ngày 2 đêm giá tốt hè 2017 từ Tp.HCM', 'Tour du lịch Singapore 3 ngày 2 đêm giá tốt hè 2017 từ Tp.HCM'),
(29, 2, 'Tour Bình Ba - Nha Trang - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                MỘT CHUYẾN ĐI 3 ĐIỂM ĐẾN<br />\r\nXUỐNG BIỂN LÊN RỪNG “BÌNH BA - NHA TRANG - ĐÀ LẠT”<br />\r\nĐẢO BÌNH BA – TÔM HÙM<br />\r\nBAR TRÊN BIỂN - TIỆC NƯỚNG HẢI SẢN <br />\r\nKHU DU LỊCH ĐẲNG CẤP 5 ***** VINPEARL LAND<br />\r\nGA XE LỬA – TRẠI MÁT - RỪNG HOA KHÔ - VƯỜN DÂU TÂY– ĐỒI MỘNG MƠ – THIỀN VIỆN TRÚC LÂM – CỒNG CHIÊNG TÂY NGUYÊN<br />\r\nBỮA TIỆC: CƠM LAM THỊT NƯỚNG            </p>\n        </div>', 'Tour Bình Ba - Nha Trang - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bình Ba - Nha Trang - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bình Ba - Nha Trang - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bình Ba - Nha Trang - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(36, 2, 'Tour Phú Quốc 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                VINPEARLAND - SAFARI<br />\r\nLÀNG CHÀI HÀM NINH - BÃI SAO<br />\r\nCHÂU ĐỐC            </p>\n        </div>', 'Tour Phú Quốc 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Phú Quốc 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Phú Quốc 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Phú Quốc 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(37, 2, 'Tour Phú Yên  - Đại Lãnh 3N3Đ 5 sao - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                CUỘC HÀNH TRÌNH KHÁM PHÁ CỰC ĐÔNG TỔ QUỐC “ MŨI ĐIỆN CAP VARELLA”<br />\r\nGÀNH ĐÁ ĐĨA: THẮNG CẢNH ĐỘC NHẤT VÔ NHỊ”<br />\r\nĐÊM BBQ HẢI SẢN & THỊT RỪNG - GALA NGHỆ THUẬT BÀI CHÒI<br />\r\nKHÁM PHÁ ĐẶC SẢN PHÚ YÊN<br />\r\nCẢNH TRONG PHIM “TÔI THẤY HOA VÀNG TRÊN CỎ XANH”            </p>\n        </div>', 'Tour Phú Yên  - Đại Lãnh 3N3Đ 5 sao - HAI DANG TRAVEL', 'Tour Phú Yên  - Đại Lãnh 3N3Đ 5 sao - HAI DANG TRAVEL', 'Tour Phú Yên  - Đại Lãnh 3N3Đ 5 sao - HAI DANG TRAVEL', 'Tour Phú Yên  - Đại Lãnh 3N3Đ 5 sao - HAI DANG TRAVEL'),
(38, 2, 'Tour Quy Nhơn - Kỳ Co 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                EO GIÓ - ĐẢO KỲ CO<br />\r\nKHÁM PHÁ ĐẶC SẢN QUY NHƠN<br />\r\n            </p>\n        </div>', 'Tour Quy Nhơn - Kỳ Co 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Quy Nhơn - Kỳ Co 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Quy Nhơn - Kỳ Co 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Quy Nhơn - Kỳ Co 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(39, 2, 'Tour khám phá Côn Sơn 3n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                	CHIÊM NGƯỠNG: ĐỈNH TỈNH YÊU, BÃI NHÁT, SUỐI NHẬT BẢN<br />\r\n	VIẾNG NGHĨA TRANG HÀNG DƯƠNG, THĂM MỘ CÔ SÁU<br />\r\n	THAM QUAN HỆ THỐNG  CHUỒNG CỌP KIỂU PHÁP, MỸ; MIẾU BÀ PHI YẾN<br />\r\n            </p>\n        </div>', 'Tour khám phá Côn Sơn 3n2đ - Hai Dang Travel', 'Tour khám phá Côn Sơn 3n2đ - Hai Dang Travel', 'Tour khám phá Côn Sơn 3n2đ - Hai Dang Travel', 'Tour khám phá Côn Sơn 3n2đ - Hai Dang Travel'),
(46, 2, 'Tour Singapore: HÀ NỘI - SINGAPORE - ĐẢO SENTOSA 4N3Đ - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Tham gia hành trình du lịch Singapore 4 ngày, du khách có cơ hội trải nghiệm những điểm đẹp nhất Singapore, miễn phí 27kg hành lý, mãn nhãn xem show nhạc nước 3D Wonder Full Show. Ngoài ra, du khách còn được thoải mái mua sắm mùa Sale off 60 - 70% ở Singapore. Hãy đăng ký ngay để trải nghiệm.             </p>\n        </div>', 'Tour Singapore: HÀ NỘI - SINGAPORE - ĐẢO SENTOSA 4N3Đ - Hoàng Việt Travel', 'Tour Singapore: HÀ NỘI - SINGAPORE - ĐẢO SENTOSA 4N3Đ - Hoàng Việt Travel', 'Tour Singapore: HÀ NỘI - SINGAPORE - ĐẢO SENTOSA 4N3Đ - Hoàng Việt Travel', 'Tour Singapore: HÀ NỘI - SINGAPORE - ĐẢO SENTOSA 4N3Đ - Hoàng Việt Travel'),
(139, 2, 'Tour Nhật Bản: Osaka – Kyoto – Nagoya – Fuji – Hakone - Tokyo - 5N5Đ', '<div class=\"text_info_sp width_common\">\n            <p>\n                LỊCH TRÌNH: OSAKA – KYOTO – NAGOYA – FUJI – HAKONE - TOKYO<br />\r\nThời gian : 5 ngày – 5 đêm<br />\r\nKhởi hành: 14/06/2017            </p>\n        </div>', 'Tour Nhật Bản: Osaka – Kyoto – Nagoya – Fuji – Hakone - Tokyo - 5N5Đ', 'Tour Nhật Bản: Osaka – Kyoto – Nagoya – Fuji – Hakone - Tokyo - 5N5Đ', 'Tour Nhật Bản: Osaka – Kyoto – Nagoya – Fuji – Hakone - Tokyo - 5N5Đ', 'Tour Nhật Bản: Osaka – Kyoto – Nagoya – Fuji – Hakone - Tokyo - 5N5Đ'),
(140, 2, 'Du lịch Dubai 4 ngày 4 đêm giá tốt dịp hè 2017 khởi hành từ Tp.HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Abu Dhabi - Dubai<br />\r\n4 Ngày  – 4 Đêm<br />\r\nLưu trú khách sạn 4* - Vận chuyển hàng không 5* Emirates Airlines<br />\r\nKhởihành: 22/6/2017<br />\r\n<br />\r\nDu lịch Dubai dịp hè 2017 từ Sài Gòn. Dubai kì diệu, ấn tượng bởi kiến trúc vĩ đại, những tòa nhà cao nhất thế giới, trung tâm thương mại sầm uất, khách sạn 7* xa hoa và lộng lẫy, trò chơi tốc độ ...<br />\r\n<br />\r\nDubai một trong các Tiểu vương quốc Ả Rập thống nhất (UAE) được khách du lịch bốn phương xem như là một xứ sở của những điều kì diệu với sự xa hoa, lộng lẫy khi sở hữu nhiều cái nhất của thế giới. Từ hòn đảo nhân tạo lớn nhất The Palm được mệnh danh là “kì quan thứ 8 của thế giới”, trung tâm thương mại lớn nhất Dubai Mall tập trung hơn 1200 cửa hàng, bể cá khổng lồ, sân trượt băng tiêu chuẩn Olympic, phòng chiếu phim 22 màn hình. Đến khách sạn 7 sao Burj Al-Arab đầu tiên trên thế giới, công trình mang hình dáng thuyền buồm. Tòa tháp cao nhất thế giới Burj Khalifa cao 828m với 164 tầng. Tất cả sẽ mang lại ấn tượng và sự choáng ngợp cho du khách khi đặt chân đến đây.            </p>\n        </div>', 'Du lịch Dubai 4 ngày 4 đêm giá tốt dịp hè 2017 khởi hành từ Tp.HCM', 'Du lịch Dubai 4 ngày 4 đêm giá tốt dịp hè 2017 khởi hành từ Tp.HCM', 'Du lịch Dubai 4 ngày 4 đêm giá tốt dịp hè 2017 khởi hành từ Tp.HCM', 'Du lịch Dubai 4 ngày 4 đêm giá tốt dịp hè 2017 khởi hành từ Tp.HCM'),
(141, 2, 'Tour du lịch Đà Nẵng - Cao Nguyên Bà Nà - Huế - Hội An - Lễ hội pháo hoa quốc tế', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình Khám phá “Con đường Di sản Miền Trung”<br />\r\n <br />\r\nKhởi hành: 01.06.2017<br />\r\n(Thời gian: 3 ngày 2 đêm)<br />\r\nPhương tiện: đi về bằng máy bay, xe đời mới cao cấp<br />\r\n            </p>\n        </div>', 'Tour du lịch Đà Nẵng - Cao Nguyên Bà Nà - Huế - Hội An - Lễ hội pháo hoa quốc tế', 'Tour du lịch Đà Nẵng - Cao Nguyên Bà Nà - Huế - Hội An - Lễ hội pháo hoa quốc tế', 'Tour du lịch Đà Nẵng - Cao Nguyên Bà Nà - Huế - Hội An - Lễ hội pháo hoa quốc tế', 'Tour du lịch Đà Nẵng - Cao Nguyên Bà Nà - Huế - Hội An - Lễ hội pháo hoa quốc tế'),
(142, 2, 'Tour du lịch Hà Nội - Ninh Bình - Hạ Long - Sapa - 6 ngày 5 đêm', '<div class=\"text_info_sp width_common\">\n            <p>\n                (Thời gian: 6 ngày 5 đêm)<br />\r\nKhởi hành: 6,20.06.2017<br />\r\nPhương tiện: đi về bằng máy bay, xe đời mới cao cấp<br />\r\n            </p>\n        </div>', 'Tour du lịch Hà Nội - Ninh Bình - Hạ Long - Sapa - 6 ngày 5 đêm', 'Tour du lịch Hà Nội - Ninh Bình - Hạ Long - Sapa - 6 ngày 5 đêm', 'Tour du lịch Hà Nội - Ninh Bình - Hạ Long - Sapa - 6 ngày 5 đêm', 'Tour du lịch Hà Nội - Ninh Bình - Hạ Long - Sapa - 6 ngày 5 đêm'),
(143, 2, 'Tour Du Lịch Hè Đông Bắc - Hà Giang - Quản Bạ - Cao Bằng - Hồ Ba Bể giá tốt', '<div class=\"text_info_sp width_common\">\n            <p>\n                (Thời gian: 6 ngày 5 đêm)<br />\r\nKhởi hành: 6,13,20,27/06/2017<br />\r\nPhương tiện: Đi về bằng máy bay, xe đời mới cao cấp<br />\r\nHành trình: HÀ NỘI - HÀ GIANG - QUẢN BẠ - ĐỒNG VĂN - LŨNG CÚ - MÈO VẠC - CAO BẰNG - THÁC BẢN GIỐC - ĐỘNG NGƯỜM NGAO - HANG PẮC PÓ - HỒ BA BỂ            </p>\n        </div>', 'Tour Du Lịch Hè Đông Bắc - Hà Giang - Quản Bạ - Cao Bằng - Hồ Ba Bể giá tốt', 'Tour Du Lịch Hè Đông Bắc - Hà Giang - Quản Bạ - Cao Bằng - Hồ Ba Bể giá tốt', 'Tour Du Lịch Hè Đông Bắc - Hà Giang - Quản Bạ - Cao Bằng - Hồ Ba Bể giá tốt', 'Tour Du Lịch Hè Đông Bắc - Hà Giang - Quản Bạ - Cao Bằng - Hồ Ba Bể giá tốt'),
(144, 2, 'Tour du lịch Hà Nội – Yên Tử – Hạ Long – Lào Cai – Sapa - 5N4Đ - KS 4 sao', '<div class=\"text_info_sp width_common\">\n            <p>\n                “Hành trình phương Bắc” sẽ đưa du khách đến Hà Nội 36 phố phường, nếm đặc sản đất Hà Thành, chìm đắm trong nên thơ cảnh sắc núi rừng Yên Tử, cảm nhận không gian bao la hùng vĩ của Hạ Long, khám phá nét đặc sắc của văn hóa vùng cao nơi phố núi Sapa với mênh mông những thửa ruộng bậc thang xanh ngút ngàn và  tìm hiểu đời sống văn hóa của đồng bào dân tộc – Đó là những gì mà du khách cảm nhận được trong 5 ngày 4 đêm, chương trình “Hà Nội – Yên Tử – Hạ Long – Lào Cai – Sapa”<br />\r\n<br />\r\n(Thời gian: 5 ngày 4 đêm)<br />\r\nKhởi hành: 23/06/2017<br />\r\nPhương tiện: đi về bằng máy bay, xe đời mới cao cấp            </p>\n        </div>', 'Tour du lịch Hà Nội – Yên Tử – Hạ Long – Lào Cai – Sapa - 5N4Đ - KS 4 sao', 'Tour du lịch Hà Nội – Yên Tử – Hạ Long – Lào Cai – Sapa - 5N4Đ - KS 4 sao', 'Tour du lịch Hà Nội – Yên Tử – Hạ Long – Lào Cai – Sapa - 5N4Đ - KS 4 sao', 'Tour du lịch Hà Nội – Yên Tử – Hạ Long – Lào Cai – Sapa - 5N4Đ - KS 4 sao'),
(145, 2, 'Du lịch Ninh Bình hàng ngày: Bái Đính Tràng An 1 ngày', '<div class=\"text_info_sp width_common\">\n            <p>\n                Với kiến trúc hoành tráng, đồ sộ, mang đậm bản sắc truyền thống, chùa Bái Đính đã trở thành một điểm đến hấp dẫn của Ninh Bình.<br />\r\nĐến với Khu du lịch sinh thái Tràng An để được thưởng ngoạn một bức tranh thủy mặc mê đắm lòng người với non nước, mây trời, khám phá những hang động kỳ ảo và có những phút giây thanh tịnh, thư giãn với văn hóa tâm linh riêng có của nơi đây.<br />\r\n            </p>\n        </div>', 'Du lịch Ninh Bình hàng ngày: Bái Đính Tràng An 1 ngày', 'Du lịch Ninh Bình hàng ngày: Bái Đính Tràng An 1 ngày', 'Du lịch Ninh Bình hàng ngày: Bái Đính Tràng An 1 ngày', 'Du lịch Ninh Bình hàng ngày: Bái Đính Tràng An 1 ngày'),
(146, 2, 'Du lịch Sapa hàng ngày: Sapa 2 ngày 1 đêm 3 sao - APT Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đến với du lịch Sapa du khách sẽ được ngắm tuyết rơi - một hiện tượng thiên nhiên mà Việt Nam hiếm có - hiện tượng tưởng chừng chỉ xảy ra ở các nước có khí hậu ôn đới như châu Âu. Đó chính là điểm tạo ra sức hút của du khách khi đến với Sapa vào mùa đông. <br />\r\nTuy nhiên, đối với du khách chưa từng đặt chân lên Sapa hoặc có kế hoạch đi du lịch vào mùa khác thì đừng ngần ngại, Sapa mang trong mình đẻ vẻ đẹp của 4 mùa: mùa xuân trắng trời với hoa đào, hoa mận; mùa hè của tiết trời quang đãng và những khối mây như tơ trời chen ngang các khu nhà, cả thị trấn Sapa, mùa thu rực vàng với những ruộng bậc thang lúa chín như bức tranh sắc màu của núi rừng nơi đây….            </p>\n        </div>', 'Du lịch Sapa hàng ngày: Sapa 2 ngày 1 đêm 3 sao - APT Travel', 'Du lịch Sapa hàng ngày: Sapa 2 ngày 1 đêm 3 sao - APT Travel', 'Du lịch Sapa hàng ngày: Sapa 2 ngày 1 đêm 3 sao - APT Travel', 'Du lịch Sapa hàng ngày: Sapa 2 ngày 1 đêm 3 sao - APT Travel'),
(147, 2, 'Du lịch Mộc Châu: Mộc Châu 2 Ngày 1 đêm thứ 7 hàng tuần', '<div class=\"text_info_sp width_common\">\n            <p>\n                Mỗi mùa Mộc Châu – thảo nguyên của tình yêu có vẻ đẹp khác nhau, Mộc châu là cao nguyên đẹp của miền bắc, Quý khách đi tour Mộc Châu mỗi dịp cuối tuần của bốn mùa có những trải nghiệm  và thưởng thức sắc đẹp khác nhau của cao nguyên Mộc châu.<br />\r\n            </p>\n        </div>', 'Du lịch Mộc Châu: Mộc Châu 2 Ngày 1 đêm thứ 7 hàng tuần', 'Du lịch Mộc Châu: Mộc Châu 2 Ngày 1 đêm thứ 7 hàng tuần', 'Du lịch Mộc Châu: Mộc Châu 2 Ngày 1 đêm thứ 7 hàng tuần', 'Du lịch Mộc Châu: Mộc Châu 2 Ngày 1 đêm thứ 7 hàng tuần'),
(148, 2, 'Du lịch Sapa hàng ngày - 2 ngày 1 đêm khách sạn 2 sao APT Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đến với du lịch Sapa du khách sẽ được ngắm tuyết rơi - một hiện tượng thiên nhiên mà Việt Nam hiếm có - hiện tượng tưởng chừng chỉ xảy ra ở các nước có khí hậu ôn đới như châu Âu. Đó chính là điểm tạo ra sức hút của du khách khi đến với Sapa vào mùa đông. <br />\r\nTuy nhiên, đối với du khách chưa từng đặt chân lên Sapa hoặc có kế hoạch đi du lịch vào mùa khác thì đừng ngần ngại, Sapa mang trong mình đẻ vẻ đẹp của 4 mùa:  mùa xuân trắng trời với hoa đào, hoa mận;  mùa hè của tiết trời quang đãng và những khối mây như tơ trời chen ngang các khu nhà, cả thị trấn Sapa, mùa thu rực vàng với những ruộng bậc thang lúa chín như bức tranh sắc màu của núi rừng nơi đây….<br />\r\n<br />\r\nĐể có chuyến du lịch Sapa hết sức đơn giản, vì ngoài phương tiện truyền thống đi tàu hỏa thì hiện nay tuyến đường cao tốc Hà Nội – Lào cai – Hà Nội đã hoạt động 1 năm qua.Tuyến du lịch Hà Nội – Sapa đã tiện lợi hơn nhiều do sự phát triển của giao thông hạ tầng, bạn có thể đi tuyến du lịch ghép đoàn hàng ngày : <br />\r\n             </p>\n        </div>', 'Du lịch Sapa hàng ngày - 2 ngày 1 đêm khách sạn 2 sao APT Travel', 'Du lịch Sapa hàng ngày - 2 ngày 1 đêm khách sạn 2 sao APT Travel', 'Du lịch Sapa hàng ngày - 2 ngày 1 đêm khách sạn 2 sao APT Travel', 'Du lịch Sapa hàng ngày - 2 ngày 1 đêm khách sạn 2 sao APT Travel'),
(149, 2, 'Tour Đà Lạt một thoáng mộng mơ 2N2Đ', '<div class=\"text_info_sp width_common\">\n            <p>\n                CHƯƠNG TRÌNH ĐỒNG GIÁ 999.000 PHIÊN BẢN 2017<br />\r\n1.	Không phụ thu phòng đôi<br />\r\n2.	Mua tour trong chuỗi đồng giá được giảm 9.999đ nhân theo số lần đi (Lần 1: 9.999 đ*1, Lần 2: 9.999  đ*2, Lần 3: 9.999 đ*3, lần 4: 9.999 đ*4, lần 5: 9.999 đ *5, lần 6: 9.999 đ*6, lần 7: 9.999 đ *7, lần 8: 9.999 đ*8, lần 9: 9.999 đ*9).<br />\r\n3.	Tham dự rút thăm số ghế may mắn khi lên tour “MUA TOUR TRÚNG TOUR” (cơ hội đi 1 trong 9 tour Đồng giá miễn phí cho lần tiếp theo)<br />\r\n4.	Được hỗ trợ nâng tiêu chuẩn khách sạn và dịch vụ (nếu có nhu cầu) với giá gốc<br />\r\n            </p>\n        </div>', 'Tour Đà Lạt một thoáng mộng mơ 2N2Đ', 'Tour Đà Lạt một thoáng mộng mơ 2N2Đ', 'Tour Đà Lạt một thoáng mộng mơ 2N2Đ', 'Tour Đà Lạt một thoáng mộng mơ 2N2Đ'),
(150, 2, 'Tour Nha Trang VIP - Buffet 3N3Đ', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nha Trang, được mệnh danh là một trong 29 vịnh đẹp nhất Thế giới khi có khá nhiều cảnh quan thiên nhiên đẹp tuyệt mỹ cùng nhiều điểm du lịch hấp dẫn, cho những ai yêu thích khám phá vẻ đẹp tiềm ẩn của thiên nhiên. Sở hữu những bãi biển xanh mát cùng bãi cát trắng mịn trải dài, Nha Trang như đang vẫy gọi du khách muôn phương tìm về một trong những thành phố biển xinh đẹp bậc nhất Việt Nam.             </p>\n        </div>', 'Tour Nha Trang VIP - Buffet 3N3Đ', 'Tour Nha Trang VIP - Buffet 3N3Đ', 'Tour Nha Trang VIP - Buffet 3N3Đ', 'Tour Nha Trang VIP - Buffet 3N3Đ'),
(151, 2, 'Tour Nha Trang - du ngoạn đảo 3N3Đ', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nha Trang, được mệnh danh là một trong 29 vịnh đẹp nhất Thế giới khi có khá nhiều cảnh quan thiên nhiên đẹp tuyệt mỹ cùng nhiều điểm du lịch hấp dẫn, cho những ai yêu thích khám phá vẻ đẹp tiềm ẩn của thiên nhiên. Sở hữu những bãi biển xanh mát cùng bãi cát trắng mịn trải dài, Nha Trang như đang vẫy gọi du khách muôn phương tìm về một trong những thành phố biển xinh đẹp bậc nhất Việt Nam.             </p>\n        </div>', 'Tour Nha Trang - du ngoạn đảo 3N3Đ', 'Tour Nha Trang - du ngoạn đảo 3N3Đ', 'Tour Nha Trang - du ngoạn đảo 3N3Đ', 'Tour Nha Trang - du ngoạn đảo 3N3Đ'),
(152, 2, 'Tour Nha Trang - Hòn Tằm 3N3Đ', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nha Trang, được mệnh danh là một trong 29 vịnh đẹp nhất Thế giới khi có khá nhiều cảnh quan thiên nhiên đẹp tuyệt mỹ cùng nhiều điểm du lịch hấp dẫn, cho những ai yêu thích khám phá vẻ đẹp tiềm ẩn của thiên nhiên. Sở hữu những bãi biển xanh mát cùng bãi cát trắng mịn trải dài, Nha Trang như đang vẫy gọi du khách muôn phương tìm về một trong những thành phố biển xinh đẹp bậc nhất Việt Nam            </p>\n        </div>', 'Tour Nha Trang - Hòn Tằm 3N3Đ', 'Tour Nha Trang - Hòn Tằm 3N3Đ', 'Tour Nha Trang - Hòn Tằm 3N3Đ', 'Tour Nha Trang - Hòn Tằm 3N3Đ'),
(47, 2, 'Tour Trung Quốc: Hà Nội - Nam Ninh - Quảng Châu - Thâm Quyến 5N4Đ - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Chuyến Du lịch Trung Quốc: khám phá du lịch Nam Ninh - Quảng Châu - Thẩm Quyến chắc chắn sẽ làm hài lòng du khách. Thẩm Quyến - Cửa sổ thế giới giúp du khách có cái nhìn tổng quan về các kỳ quan, di sản thế giới. Du lịch Nam Ninh - thành phố du lịch xanh. Du lịch Quảng Châu - thiên đường mua sắm phù hợp cho mọi lứa tuổi            </p>\n        </div>', 'Tour Trung Quốc: Hà Nội - Nam Ninh - Quảng Châu - Thâm Quyến 5N4Đ - Hoàng Việt Travel', 'Tour Trung Quốc: Hà Nội - Nam Ninh - Quảng Châu - Thâm Quyến 5N4Đ - Hoàng Việt Travel', 'Tour Trung Quốc: Hà Nội - Nam Ninh - Quảng Châu - Thâm Quyến 5N4Đ - Hoàng Việt Travel', 'Tour Trung Quốc: Hà Nội - Nam Ninh - Quảng Châu - Thâm Quyến 5N4Đ - Hoàng Việt Travel'),
(129, 2, 'Tour Tam Bình 02 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                CHƯƠNG TRÌNH ĐỒNG GIÁ 999.000 PHIÊN BẢN 2017<br />\r\n1.	Không phụ thu phòng đôi.<br />\r\n2.	Mua tour trong chuỗi đồng giá được giảm 9.999đ nhân theo số lần đi (Lần 1: 9.999 đ*1, Lần 2: 9.999  đ*2, Lần 3: 9.999 đ*3, lần 4: 9.999 đ*4, lần 5: 9.999 đ *5, lần 6: 9.999 đ*6, lần 7: 9.999 đ *7, lần 8: 9.999 đ*8, lần 9: 9.999 đ*9).<br />\r\n3.	Tham dự rút thăm may mắn khi lên tour “MUA TOUR TRÚNG TOUR” (cơ hội đi 1 trong 9 tour Đồng giá miễn phí cho lần tiếp theo).<br />\r\n4.	Được hỗ trợ nâng tiêu chuẩn khách sạn và dịch vụ (nếu có nhu cầu) với giá gốc            </p>\n        </div>', 'Tour Tam Bình 02 2n2đ - Hai Dang Travel', 'Tour Tam Bình 02 2n2đ - Hai Dang Travel', 'Tour Tam Bình 02 2n2đ - Hai Dang Travel', 'Tour Tam Bình 02 2n2đ - Hai Dang Travel'),
(130, 2, 'Tour Phan Thiết Mũi Né đồng giá 2n1đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Thiên nhiên dường như quá ưu đãi cho bờ biển Phan Thiết, bởi nó chứa đựng những điều cuốn hút du khách, biển xanh, cát trắng, rặng dừa xanh,…đã tạo cho Phan Thiết sức hấp dẫn khó cưỡng cho những ai yêu biển, yêu cái nắng vàng trên cát. Ngỡ như khô cằn nhưng lại vô cùng lãng mạn. Đừng nghĩ Phan Thiết không có gì để khám phá, thật ra nó là một điểm nghĩ dưỡng sau những ngày làm mệt mỏi, căng thẳng nơi phố thị vô cùng hữu hiệu, là nơi để bạn và gia đình thư giãn vào những ngày hè oi bức , gắn kết tình thân hay là nơi trăng mật vô cùng lãng mạn.             </p>\n        </div>', 'Tour Phan Thiết Mũi Né đồng giá 2n1đ - Hai Dang Travel', 'Tour Phan Thiết Mũi Né đồng giá 2n1đ - Hai Dang Travel', 'Tour Phan Thiết Mũi Né đồng giá 2n1đ - Hai Dang Travel', 'Tour Phan Thiết Mũi Né đồng giá 2n1đ - Hai Dang Travel'),
(131, 2, 'Tour Nha Trang - du ngoạn đảo 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                CHƯƠNG TRÌNH ĐỒNG GIÁ 999.000 PHIÊN BẢN 2017<br />\r\nCó gì mới?:<br />\r\n1.	Không phụ thu phòng đôi<br />\r\n2.	Mua tour trong chuỗi đồng giá được giảm 9.999đ nhân theo số lần đi (Lần 1: 9.999 đ*1, Lần 2: 9.999  đ*2, Lần 3: 9.999 đ*3, lần 4: 9.999 đ*4, lần 5: 9.999 đ *5, lần 6: 9.999 đ*6, lần 7: 9.999 đ *7, lần 8: 9.999 đ*8, lần 9: 9.999 đ*9).<br />\r\n3.	Tham dự rút thăm may mắn khi lên tour “MUA TOUR TRÚNG TOUR” (cơ hội đi 1 trong 9 tour Đồng giá miễn phí cho lần tiếp theo)<br />\r\n4.	Được hỗ trợ nâng tiêu chuẩn khách sạn và dịch vụ (nếu có nhu cầu) với giá gốc.            </p>\n        </div>', 'Tour Nha Trang - du ngoạn đảo 2n2đ - Hai Dang Travel', 'Tour Nha Trang - du ngoạn đảo 2n2đ - Hai Dang Travel', 'Tour Nha Trang - du ngoạn đảo 2n2đ - Hai Dang Travel', 'Tour Nha Trang - du ngoạn đảo 2n2đ - Hai Dang Travel'),
(132, 2, 'Tour Hà Nội – Bangkok - Pattaya – Hà Nội - Bay với Jetstar (Onetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: Liên hệ <br />\r\nThời gian: 5 ngày 4 đêm<br />\r\nĐiểm khởi hành: Hà Nội <br />\r\nĐiểm đến: duu lịch Thái Lan, du lịch Bangkok, du lịch Pattaya<br />\r\nHàng không: Jetstar Pacific            </p>\n        </div>', 'Tour Hà Nội – Bangkok - Pattaya – Hà Nội - Bay với Jetstar (Onetour Việt Nam)', 'Tour Hà Nội – Bangkok - Pattaya – Hà Nội - Bay với Jetstar (Onetour Việt Nam)', 'Tour Hà Nội – Bangkok - Pattaya – Hà Nội - Bay với Jetstar (Onetour Việt Nam)', 'Tour Hà Nội – Bangkok - Pattaya – Hà Nội - Bay với Jetstar (Onetour Việt Nam)'),
(133, 2, 'Tour Hà Nội – Singapore – Hà Nội (Onetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: Liên hệ <br />\r\nThời gian: 4 ngày 3 đêm<br />\r\nĐiểm khởi hành: Hà Nội <br />\r\nĐiểm đến: Du lịch Singapore<br />\r\nHàng không: Vietnam airlines            </p>\n        </div>', 'Tour Hà Nội – Singapore – Hà Nội (Onetour Việt Nam)', 'Tour Hà Nội – Singapore – Hà Nội (Onetour Việt Nam)', 'Tour Hà Nội – Singapore – Hà Nội (Onetour Việt Nam)', 'Tour Hà Nội – Singapore – Hà Nội (Onetour Việt Nam)'),
(134, 2, 'Tour DU LỊCH HÀN QUỐC THAM DỰ ĐẠI LỄ PHẬT ĐẢN 2017 (Onetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: 27/04/2017 <br />\r\nThời gian: 5 ngày <br />\r\nĐiểm khởi hành: Hà Nội <br />\r\nĐiểm đến: Du lịch Hàn Quốc<br />\r\nHàng không: Vietjet Air            </p>\n        </div>', 'Tour DU LỊCH HÀN QUỐC THAM DỰ ĐẠI LỄ PHẬT ĐẢN 2017 (Onetour Việt Nam)', 'Tour DU LỊCH HÀN QUỐC THAM DỰ ĐẠI LỄ PHẬT ĐẢN 2017 (Onetour Việt Nam)', 'Tour DU LỊCH HÀN QUỐC THAM DỰ ĐẠI LỄ PHẬT ĐẢN 2017 (Onetour Việt Nam)', 'Tour DU LỊCH HÀN QUỐC THAM DỰ ĐẠI LỄ PHẬT ĐẢN 2017 (Onetour Việt Nam)'),
(135, 2, 'Tour Quy Nhơn - Phú Yên 4N4Đ', '<div class=\"text_info_sp width_common\">\n            <p>\n                	Đến Phú Yên để ghé thăm Gành Đá Dĩa hùng vĩ, Nhất Tự Sơn  -  hòn đảo đẹp nhất Vịnh Xuân Đài - nơi được mệnh danh là \" Điệp Sơn của Phú Yên\" <br />\r\n	Đến Quy Nhơn - mảnh đất anh hùng nơi có Bảo Tàng Quang Trung, bãi biển Kỳ Co đẹp tuyệt trần, người dân thân thiện. <br />\r\n	Một chuyến đi hai điểm đến này chắc chắn sẽ là một sự kết hợp thật hoàn hảo.<br />\r\n            </p>\n        </div>', 'Tour Quy Nhơn - Phú Yên 4N4Đ', 'Tour Quy Nhơn - Phú Yên 4N4Đ', 'Tour Quy Nhơn - Phú Yên 4N4Đ', 'Tour Quy Nhơn - Phú Yên 4N4Đ'),
(136, 2, 'Phú Yên Tuy Hòa 4 ngày 3 đêm ghép trọn gói', '<div class=\"text_info_sp width_common\">\n            <p>\n                KHÁM PHÁ XỨ SỞ “ HOA VÀNG TRÊN CỎ XANH”<br />\r\nHÀ NỘI - TUY HÒA – PHÚ YÊN - HÀ NỘI<br />\r\n(Thời gian: 4 ngày/3 đêm - Máy bay, ô tô )<br />\r\nLịch khởi hành: 24.6 và 1.7.2017<br />\r\nNằm ở Phía Đông dãy Trường sơn, Phú Yên được thiên nhiên ưu đãi nhiều danh lam thắng cảnh. Đây là Núi Nhạn sừng sững giữa Tp. Tuy Hòa, bên cạnh là dòng Sông Ba hiền hòa ngày ngày bồi đắp Phù sa cho vựa lúa Miền Trung; kia là Gành Đá Dĩa như một tạo hóa kỳ lạ của Thiên nhiên ban tặng cho con người, còn đó Vịnh Vũng rô với Chiến tích của những con tàu không số…. Và còn nhiều hơn thế nữa. Mời các bạn đến với Phú Yên với những danh lam thắng cảnh và lòng mến khách của người dân xứ “Nẫu”.<br />\r\nĐiểm Nổi Bật:<br />\r\n Địa danh Phú Yên: nơi có nhiều danh thắng đẹp với biển xanh cát trắng hoang sơ là vùng đất “ Hoa Vàng trên Cỏ<br />\r\nxanh” – Bộ phim chuyển thể nổi tiếng được khởi chiếu năm 2015. Thăm các điểm nổi tiếng của Phú Yên: Gành Đá Đĩa,<br />\r\nMũi Điện, Vũng Rô, Tàu không số, Nhà thờ Mằng Lăng…<br />\r\n Giá cả: Mua lẻ - Giá bán buôn<br />\r\n Dịch vụ: Trọn gói ăn uống - máy bay và dịch vụ 4 Sao tại Khách sạn Kaya hoặc Saigon Phú Yên Hotel.<br />\r\n Giờ bay đẹp, khởi hành cuối tuần<br />\r\n            </p>\n        </div>', 'Phú Yên Tuy Hòa 4 ngày 3 đêm ghép trọn gói', 'Phú Yên Tuy Hòa 4 ngày 3 đêm ghép trọn gói', 'Phú Yên Tuy Hòa 4 ngày 3 đêm ghép trọn gói', 'Phú Yên Tuy Hòa 4 ngày 3 đêm ghép trọn gói'),
(137, 2, 'Tour du lịch Hàn Quốc - Seoul – Everland - Đảo Nami - 4N4Đ', '<div class=\"text_info_sp width_common\">\n            <p>\n                Lịch trình: SEOUL – EVERLAND - ĐẢO NAMI<br />\r\nTặng  NANTA SHOW <br />\r\nThời gian:  4 ngày 4 đêm<br />\r\nKhởi hành: 11/06/2017            </p>\n        </div>', 'Tour du lịch Hàn Quốc - Seoul – Everland - Đảo Nami - 4N4Đ', 'Tour du lịch Hàn Quốc - Seoul – Everland - Đảo Nami - 4N4Đ', 'Tour du lịch Hàn Quốc - Seoul – Everland - Đảo Nami - 4N4Đ', 'Tour du lịch Hàn Quốc - Seoul – Everland - Đảo Nami - 4N4Đ'),
(138, 2, 'Du lịch Nhật Bản dịp hè 2017 khám phá cung đường tuyết Tateyama (Tuyến Rồng) - 4N4Đ', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Nagoya - Shirakawago - Takayama - Tateyama - Matsumoto<br />\r\nKhám phá cung đường tuyết Tateyama Kurobe Alphine<br />\r\n<br />\r\nThời gian : 4 ngày – 4 đêm<br />\r\nKhởi hành: 29/06/2017<br />\r\n            </p>\n        </div>', 'Du lịch Nhật Bản dịp hè 2017 khám phá cung đường tuyết Tateyama (Tuyến Rồng) - 4N4Đ', 'Du lịch Nhật Bản dịp hè 2017 khám phá cung đường tuyết Tateyama (Tuyến Rồng) - 4N4Đ', 'Du lịch Nhật Bản dịp hè 2017 khám phá cung đường tuyết Tateyama (Tuyến Rồng) - 4N4Đ', 'Du lịch Nhật Bản dịp hè 2017 khám phá cung đường tuyết Tateyama (Tuyến Rồng) - 4N4Đ'),
(32, 2, 'Tour Nha Trang Buffet 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                THƯỞNG NGOẠN với:<br />\r\nKDL ĐẲNG CẤP 4 SAO DIAMOND BAY – BÃI TẮM NHŨ TIÊN<br />\r\nDU NGOẠN ĐẢO - KHÁM PHÁ VỊNH NHA TRANG Với: HỒ CÁ TRÍ NGUYÊN - BÃI SỎI - BÃI TRANH - BÃI MINI - LÀNG CHÀI - ĐẢO BỒNG NGUYÊN - ĐẢO HÒN TRE<br />\r\nCHƯƠNG TRÌNH “BAR” TRÊN BIỂN<br />\r\nBAO BỮA TIỆC BUFFET HẢI SẢN VÀ THỊT NƯỚNG             </p>\n        </div>', 'Tour Nha Trang Buffet 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Nha Trang Buffet 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Nha Trang Buffet 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Nha Trang Buffet 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(41, 2, 'Tour đảo Bình Hưng - biển Bình Lập 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                	TIỆC NƯỚNG HẢI SẢN<br />\r\n	NGHỈ DƯỠNG TẠI VILLA ĐẢO HOA VÀNG <br />\r\n            </p>\n        </div>', 'Tour đảo Bình Hưng - biển Bình Lập 2n2đ - Hai Dang Travel', 'Tour đảo Bình Hưng - biển Bình Lập 2n2đ - Hai Dang Travel', 'Tour đảo Bình Hưng - biển Bình Lập 2n2đ - Hai Dang Travel', 'Tour đảo Bình Hưng - biển Bình Lập 2n2đ - Hai Dang Travel'),
(33, 2, 'Tour Đà Lạt Hoa Lavender 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                THÁC ĐATANLA – ĐƯỜNG HẦM ĐIÊU KHẮC ĐẤT SÉT- GA XE LỬA<br />\r\n- TRẠI MÁT- RỪNG HOA KHÔ –– THIỀN VIỆN TRÚC LÂM – LANGBIANG<br />\r\nĐẶC BIỆT: VƯỜN HOA LAVENDER<br />\r\n            </p>\n        </div>', 'Tour Đà Lạt Hoa Lavender 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Đà Lạt Hoa Lavender 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Đà Lạt Hoa Lavender 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Đà Lạt Hoa Lavender 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(34, 2, 'Tour Đà Lạt VIP 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                DU THUYỀN TRÊN HỒ TUYỀN LÂM<br />\r\nVƯỜN HOA LAVENDER<br />\r\nĐƯỜNG HẦM ĐIÊU KHẮC ĐẤT SÉT<br />\r\nẨM THỰC XỨ LẠNH<br />\r\nTIỆC NƯỚNG (BBQ) tại KDL Nam Qua<br />\r\nTIỆC BUFFET RAU KHÔNG GIỚI HẠN<br />\r\nTIỆC CƠM LAM THỊT NƯỚNG            </p>\n        </div>', 'Tour Đà Lạt VIP 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Đà Lạt VIP 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Đà Lạt VIP 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Đà Lạt VIP 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(43, 2, 'Tour Trung Quốc: Hà Nội - Nam Ninh - Trương Gia Giới - Phượng Hoàng Cổ Trấn 6N5Đ - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                ✓ Đến với phim trường Trương Gia Giới của bộ phim nổi tiếng Avatar - Bộ phim đã phá vỡ kỉ lục phòng vé suốt thời gian trình chiếu và trở thành phim có doanh thu cao nhất mọi thời đại tại Mỹ, Canada và trên toàn thế giới. <br />\r\n✓ Khám phá vẻ đẹp lung linh mang đậm nét thơ tại Phượng Hoàng Cổ Trấn - Một nơi có vẻ đẹp hài hòa giữa núi non, con người và nhịp sống, tạo nên một khung cảnh thần tiên.<br />\r\n✓ Hồ sơ cực đơn giản: Chỉ cần hộ chiếu + 2 ảnh 4x6 nền trắng<br />\r\n✓ Trải nghiệm cảm giác \"ngồi cáp treo dài nhất tại một ngọn núi cao nhất Thế giới\".<br />\r\n✓ Bước đi trên Skywalk - Con đường Kính gác trên vách núi - điểm du lịch cực hấp dẫn tại Trương Gia Giới. <br />\r\n✓ Khám phá Phố tình nhân đẹp nhất Trung Quốc tại Đại Hiệp Cốc - Kim Tiên Khê.             </p>\n        </div>', 'Tour Trung Quốc: Hà Nội - Nam Ninh - Trương Gia Giới - Phượng Hoàng Cổ Trấn 6N5Đ - Hoàng Việt Travel', 'Tour Trung Quốc: Hà Nội - Nam Ninh - Trương Gia Giới - Phượng Hoàng Cổ Trấn 6N5Đ - Hoàng Việt Travel', 'Tour Trung Quốc: Hà Nội - Nam Ninh - Trương Gia Giới - Phượng Hoàng Cổ Trấn 6N5Đ - Hoàng Việt Travel', 'Tour Trung Quốc: Hà Nội - Nam Ninh - Trương Gia Giới - Phượng Hoàng Cổ Trấn 6N5Đ - Hoàng Việt Travel'),
(211, 2, 'Tour Đà Lạt tình yêu3N3Đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đến với tour này, quý khách sẽ khám phá những cái nhất tại Xứ Lạnh như: <br />\r\n-	Thung Lũng Tình Yêu<br />\r\n-	Chùa Linh Phước – nơi có tượng phật Quan Âm lớn nhất được kết bằng hoa bất tử (3 tấn hoa)<br />\r\n-	Nhà Ga Xe Lửa Đà Lạt – Cổ nhất Việt Nam, Đầu máy hơi nước, đường sắt răng cưa duy nhất.<br />\r\n-	Làng Hoa Vạn Thành: Làng hoa lớn nhất Đà Lạt<br />\r\n-	Thiền Viện Trúc Lâm : Thiền Viện lớn nhất.<br />\r\nTham dự tour Đà Lạt “ Thay lời muốn nói” quý khách sẽ được tặng:<br />\r\n-	Áo Tình Nhân (Size S, M, L, XL)<br />\r\n-	1 Bộ ảnh lưu niệm riêng (10 tấm) ghi dấu kỉ niệm.Hình chụp ngẫu nhiên của mỗi cặp đôi.<br />\r\n-	Hoa hồng mỗi phòng.<br />\r\n-	Gối hơi Du Lịch<br />\r\n-	Đêm Gala Dinner “ Thay lời muốn nói”<br />\r\n-	Phần quà “Tình Yêu” đặc biệt dành cho cặp đôi thể hiện tốt nhất trong suốt chương trình tour.(1 Bộ Đồng hồ cặp Nam, nữ)<br />\r\n-	Phòng: 2 khách/ phòng.            </p>\n        </div>', 'Tour Đà Lạt tình yêu3N3Đ - Hai Dang Travel', 'Tour Đà Lạt tình yêu3N3Đ - Hai Dang Travel', 'Tour Đà Lạt tình yêu3N3Đ - Hai Dang Travel', 'Tour Đà Lạt tình yêu3N3Đ - Hai Dang Travel'),
(212, 2, 'Tour Đà Lạt - Thung lũng tình yêu 3N2Đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đến với tour này, quý khách sẽ khám phá những cái nhất tại Xứ Lạnh như: <br />\r\n-	Thung Lũng Tình Yêu<br />\r\n-	Chùa Linh Phước – nơi có tượng phật Quan Âm lớn nhất được kết bằng hoa bất tử (3 tấn hoa)<br />\r\n-	Nhà Ga Xe Lửa Đà Lạt – Cổ nhất Việt Nam, Đầu máy hơi nước, đường sắt răng cưa duy nhất.<br />\r\n-	Làng Hoa Vạn Thành: Làng hoa lớn nhất Đà Lạt<br />\r\n-	Thiền Viện Trúc Lâm : Thiền Viện lớn nhất.<br />\r\n            </p>\n        </div>', 'Tour Đà Lạt - Thung lũng tình yêu 3N2Đ - Hai Dang Travel', 'Tour Đà Lạt - Thung lũng tình yêu 3N2Đ - Hai Dang Travel', 'Tour Đà Lạt - Thung lũng tình yêu 3N2Đ - Hai Dang Travel', 'Tour Đà Lạt - Thung lũng tình yêu 3N2Đ - Hai Dang Travel'),
(213, 2, 'Tour Đà Lạt - Phototrip 3N3Đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Những ai yêu hoa, mê hoa thì tour “Đà Lạt – sắc hoa hội tụ” sẽ là nơi để quý khách được thực hiện niềm đam  mê ấy,<br />\r\nMỗi loài hoa đều mang 1 ý nghĩa riêng, càng tìm hiểu càng thấy hay. Có khi nào bạn thấy hình ảnh của mình nằm trong vẻ đẹp ấy? Có khi nào trong 1 hoàn cảnh nào đó, 1 tình huống nào đó bạn thấy ý nghĩa loài hoa thật đúng, thật hay?<br />\r\nHoa- tăng thêm hương vị của cuộc sống, Hoa- làm cho cuộc sống ý nghĩa hơn, Hoa- điểm tô cho đời, Hoa –làm người gần người hơn- và đến với tour này Hoa  sẽ giúp bạn đi tour MIỄN PHÍ<br />\r\nI.Cơ cấu giải thưởng cho mỗi đợt thi<br />\r\nGiải nhất: 1 vé tour Du lịch Nha Trang  đảo <br />\r\nGiải nhì: 1 vé tour đi Đảo Bình Ba<br />\r\nGiải ba: 1 balo du lịch Hải Đăng<br />\r\n(Giá trị tour có thời hạn đến ngày 13/12/2017)<br />\r\n            </p>\n        </div>', 'Tour Đà Lạt - Phototrip 3N3Đ - Hai Dang Travel', 'Tour Đà Lạt - Phototrip 3N3Đ - Hai Dang Travel', 'Tour Đà Lạt - Phototrip 3N3Đ - Hai Dang Travel', 'Tour Đà Lạt - Phototrip 3N3Đ - Hai Dang Travel'),
(214, 2, 'Tour Đà Lạt VIP 3N3Đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt là một tour phổ biến, là điểm du lịch khá quen thuộc trong lòng du khách, Những KDL nổi tiếng ở Đà Lạt, du khách đã không thể bỏ qua nếu như một lần đặt chân lên xứ sở Sương Mù này.<br />\r\nNhưng đến với tour du lịch này, quý khách sẽ tiếp tục có cơ hội khám phá những điểm độc đáo, “quen mà như lạ” và  thật thích thú vô cùng khi càng tìm hiểu càng thấy hay.<br />\r\n            </p>\n        </div>', 'Tour Đà Lạt VIP 3N3Đ - Hai Dang Travel', 'Tour Đà Lạt VIP 3N3Đ - Hai Dang Travel', 'Tour Đà Lạt VIP 3N3Đ - Hai Dang Travel', 'Tour Đà Lạt VIP 3N3Đ - Hai Dang Travel'),
(215, 2, 'Festival Biển Nha Trang - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Tham dự khai mạc festival biển <br />\r\nBuffet hải sản thịt nướng trên 60 món <br />\r\nBãi dài <br />\r\nDu ngoạn đảo - Khám phá vịnh Nha Trang <br />\r\nHồ cá Trí Nguyên - Bãi Sỏi - Bãi Tranh - Bãi Mini - Làng Chài <br />\r\nĐảo Bồng Nguyên - Đảo Hòn Tre<br />\r\nChương trình \" Bar\" trên biển <br />\r\nTiệc buffet hải sản, cá sấu và thịt nướng trên 60 món <br />\r\nKhu du lịch đẳng cấp 5 soa Vinpearl land <br />\r\n            </p>\n        </div>', 'Festival Biển Nha Trang - Hai Dang Travel', 'Festival Biển Nha Trang - Hai Dang Travel', 'Festival Biển Nha Trang - Hai Dang Travel', 'Festival Biển Nha Trang - Hai Dang Travel'),
(216, 2, 'TOUR ĐIỆP SƠN - PHÚ YÊN 5 SAO 3N3Đ - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                Phú Yên là một tỉnh ven biển thuộc duyên hải nam trung bộ, phía bắc giáp Bình Định, phía nam giáp Khánh Hòa. với 3 mặt giáp núi, 1 mặt giáp biển đông. Nằm ở phía đông dãy trường sơn, Phú Yên được thiên nhiên ưu đãi nhiều danh lam thắng cảnh. Đây là Núi Nhạn sừng sững giữa thành phố tuy hòa, bên cạnh là dòng sông ba hiền hòa ngày ngày bồi đắp phù sa cho vựa lúa Miền Trung; kia là gành đá đĩa như một tạo hóa kỳ lạ của Thiên nhiên ban tặng cho con người, còn đó Vịnh Vũng rô với Chiến tích của những con tàu không số. Đến với Điệp Sơn điểm thú vị nhất của Điệp Sơn chính là  đi bộ theo con đường mòn trên biển kéo dài gần 700 mét, nối liền hòn đảo giữa với đảo Điệp Sơn lớn. Con đường uốn lượn, rộng khoảng 1 mét và nằm sâu dưới mặt nước biển trong xanh chưa đến nửa mét. Đặt chân thả bước trên con đường này đem lại cho du khách cảm giác vô cùng thích thú, xen lẫn hồi hộp và một chút sợ hãi như đang bước bước giữa đại dương bao la, 2 bên là sóng vỗ. Thích thú hơn là việc có thể thỏa thích ngắm nhìn những đàn cá nhỏ tung tăng bơi lội hai bên. Nước biển ở đây trong xanh nên có thể nhìn sâu tận đáy.            </p>\n        </div>', 'TOUR ĐIỆP SƠN - PHÚ YÊN 5 SAO 3N3Đ - HAI DANG TRAVEL', 'TOUR ĐIỆP SƠN - PHÚ YÊN 5 SAO 3N3Đ - HAI DANG TRAVEL', 'TOUR ĐIỆP SƠN - PHÚ YÊN 5 SAO 3N3Đ - HAI DANG TRAVEL', 'TOUR ĐIỆP SƠN - PHÚ YÊN 5 SAO 3N3Đ - HAI DANG TRAVEL'),
(217, 2, 'Du thuyền 5 sao khám phá Singapore - Penang - Langkawi, Khởi hành 06/11/2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hải trình 05 Ngày khám phá: Singapore - Penang - Langkawi - Singapore.<br />\r\nKhởi hành: 06/11/2017.<br />\r\nDu thuyền: Mariner of the seas.            </p>\n        </div>', 'Du thuyền 5 sao khám phá Singapore - Penang - Langkawi, Khởi hành 06/11/2017', 'Du thuyền 5 sao khám phá Singapore - Penang - Langkawi, Khởi hành 06/11/2017', 'Du thuyền 5 sao khám phá Singapore - Penang - Langkawi, Khởi hành 06/11/2017', 'Du thuyền 5 sao khám phá Singapore - Penang - Langkawi, Khởi hành 06/11/2017'),
(218, 2, 'Du thuyền 5 sao khám phá Singapore - Penang - Phuket, Khởi hành 31/10/2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hải trình 05 ngày khám phá: Singapore - Penang - Phuket - Singapore.<br />\r\nKhởi hành: 30/10/2017.<br />\r\nDu thuyền: Mariner of the seas.            </p>\n        </div>', 'Du thuyền 5 sao khám phá Singapore - Penang - Phuket, Khởi hành 31/10/2017', 'Du thuyền 5 sao khám phá Singapore - Penang - Phuket, Khởi hành 31/10/2017', 'Du thuyền 5 sao khám phá Singapore - Penang - Phuket, Khởi hành 31/10/2017', 'Du thuyền 5 sao khám phá Singapore - Penang - Phuket, Khởi hành 31/10/2017'),
(219, 2, 'Du lịch Hà Giang - Lũng Cú - Đồng Văn - Mèo Vạc Thứ 6 hàng tuần - APT Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngỡ ngàng vẻ đẹp Hoa Tam Giác Mạch<br />\r\n <br />\r\nMấy năm nay, “dân phượt” đã khám phá ra vài vùng đất trồng loài hoa này. Thế nhưng xét đi, xét lại thì để tận mắt ngắm được những đồi hoa tam giác mạch bung nở tuyệt đẹp, Hà Giang vẫn là sự lựa chọn số một. Lý do không chỉ bởi ở nơi đây, sắc hoa thường nồng nàn hơn các vùng khác mà còn vì có phông nền là cảnh núi rừng hoang sơ âm thầm điểm tô. Giữa bốn bề núi đá gieo neo, quanh năm sương mù lạnh lẽo bao trùm, giữa những con đường đổ dốc ngoằn nghèo và hàng loạt thung lũng mọc “gai đá” tua tủa… thì sự sống của hoa tam giác mạch là một “thanh âm” khác, khéo léo điểm xuyết vào bức tranh phong cảnh tứ bình thơ mộng ở vùng đất biên viễn Hà Giang.            </p>\n        </div>', 'Du lịch Hà Giang - Lũng Cú - Đồng Văn - Mèo Vạc Thứ 6 hàng tuần - APT Travel', 'Du lịch Hà Giang - Lũng Cú - Đồng Văn - Mèo Vạc Thứ 6 hàng tuần - APT Travel', 'Du lịch Hà Giang - Lũng Cú - Đồng Văn - Mèo Vạc Thứ 6 hàng tuần - APT Travel', 'Du lịch Hà Giang - Lũng Cú - Đồng Văn - Mèo Vạc Thứ 6 hàng tuần - APT Travel');
INSERT INTO `hoaunet_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(220, 2, 'Tour du thuyền 5 sao Singapore - Penang - Langkawi, khởi hành 23/10/2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hải trình 05 ngày: Singapore - Penang - Langkawi - Singapore.<br />\r\nKhởi hành: 23/10.<br />\r\nDu thuyền: Mariner of the seas.            </p>\n        </div>', 'Tour du thuyền 5 sao Singapore - Penang - Langkawi, khởi hành 23/10/2017', 'Tour du thuyền 5 sao Singapore - Penang - Langkawi, khởi hành 23/10/2017', 'Tour du thuyền 5 sao Singapore - Penang - Langkawi, khởi hành 23/10/2017', 'Tour du thuyền 5 sao Singapore - Penang - Langkawi, khởi hành 23/10/2017'),
(221, 2, 'Cùng du thuyền 5 sao khám phá Singapore - Penang - Phuket, Khởi hành 16/10/2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hải trình 05 khám phá: Singapore - Penang - Phuket - Singapore.<br />\r\nKhởi hành: 16/10/2017.<br />\r\nDu thuyền: Mariner of the seas.            </p>\n        </div>', 'Cùng du thuyền 5 sao khám phá Singapore - Penang - Phuket, Khởi hành 16/10/2017', 'Cùng du thuyền 5 sao khám phá Singapore - Penang - Phuket, Khởi hành 16/10/2017', 'Cùng du thuyền 5 sao khám phá Singapore - Penang - Phuket, Khởi hành 16/10/2017', 'Cùng du thuyền 5 sao khám phá Singapore - Penang - Phuket, Khởi hành 16/10/2017'),
(222, 2, 'Khám phá Thượng Hải - Kumamoto - Miyazak cùng du thuyền 5 sao, khởi hành 25/08/2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình 07 ngày: Thượng Hải - Kumamoto - Miyazaki - Thượng Hải.<br />\r\nKhởi hành: 25/08/2017.<br />\r\nDu thuyền: Quantum of the seas.            </p>\n        </div>', 'Khám phá Thượng Hải - Kumamoto - Miyazak cùng du thuyền 5 sao, khởi hành 25/08/2017', 'Khám phá Thượng Hải - Kumamoto - Miyazak cùng du thuyền 5 sao, khởi hành 25/08/2017', 'Khám phá Thượng Hải - Kumamoto - Miyazak cùng du thuyền 5 sao, khởi hành 25/08/2017', 'Khám phá Thượng Hải - Kumamoto - Miyazak cùng du thuyền 5 sao, khởi hành 25/08/2017'),
(223, 2, 'Tour du thuyền 5 sao Thượng Hải - Hiroshima - Kochi, Khởi hành 15/08/2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình 07 Ngày: Thượng Hải - Hiroshima - Kochi - Thượng Hải<br />\r\nKhởi hành: 15/08/2017.<br />\r\nDu thuyền: Quantum of the seas.            </p>\n        </div>', 'Tour du thuyền 5 sao Thượng Hải - Hiroshima - Kochi, Khởi hành 15/08/2017', 'Tour du thuyền 5 sao Thượng Hải - Hiroshima - Kochi, Khởi hành 15/08/2017', 'Tour du thuyền 5 sao Thượng Hải - Hiroshima - Kochi, Khởi hành 15/08/2017', 'Tour du thuyền 5 sao Thượng Hải - Hiroshima - Kochi, Khởi hành 15/08/2017'),
(224, 2, 'Tour du thuyền 5 sao Thượng Hải - Okinawa, Khởi hành 09/08/2017, Star Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hải trình 07 Ngày: Thượng Hải - Okinawa - Thượng Hải.<br />\r\nKhởi hành ngày: 09/08/2017.<br />\r\nDu thuyền: Mariner of the seas.            </p>\n        </div>', 'Tour du thuyền 5 sao Thượng Hải - Okinawa, Khởi hành 09/08/2017, Star Travel', 'Tour du thuyền 5 sao Thượng Hải - Okinawa, Khởi hành 09/08/2017, Star Travel', 'Tour du thuyền 5 sao Thượng Hải - Okinawa, Khởi hành 09/08/2017, Star Travel', 'Tour du thuyền 5 sao Thượng Hải - Okinawa, Khởi hành 09/08/2017, Star Travel'),
(225, 2, 'Tour ghép Tây Thiên - Tam Đảo 2 ngày 1 đêm', '<div class=\"text_info_sp width_common\">\n            <p>\n                Tam Đảo từng được mệnh danh là Đà Lạt xứ bắc. Ở thị trấn nhỏ bé này mây mù quanh năm hiển hiện, trong một ngày có thể cảm nhận được dư vị của bốn mùa: bình minh là gió xuân mơn man; trưa là chút nắng hè hanh hao vàng như mật; chiều về giống như tiết thu; còn buổi tối là mùa đông lạnh giá. Chỉ với sự độc đáo ấy, Tam Đảo đã đủ điều kiện để trở thành khu du lịch nghỉ dưỡng lý tưởng.<br />\r\n<br />\r\nĐầu thế kỷ XX, người Pháp đã phát hiện ra vẻ đẹp lạ lùng của Tam Đảo và xây dựng nơi đây thành thị trấn du lịch với 163 ngôi biệt thự nằm rải rác trên các sườn núi. Sự tàn phá của thời gian và thiên nhiên đã khiến những ngôi biệt thự này chỉ còn là phế tích trong hoang tàn, đổ nát... Tuy nhiên, chính điều đó lại tạo một dấu ấn riêng cho Tam Đảo, vừa nên thơ, cổ kính, vừa thâm u, trầm mặc.<br />\r\n <br />\r\nNgoài các giá trị về lịch sử, văn hóa và tín ngưỡng, du khách sẽ được tận hưởng cảnh quan tuyệt vời của bức tranh thủy mặc Tây Thiên từ độ cao 200m của hệ thống cáp treo Tây Thiên hiện đại.<br />\r\n <br />\r\nNơi đây còn có hệ thống dịch vụ phụ trợ rất đa dạng, đáp ứng nhu cầu du lịch tâm linh, tín ngưỡng, văn hóa và sinh thái của du khách như: Vận chuyển đồ và hành khách; gói dịch vụ tâm linh, du lịch văn hóa và du lịch sinh thái; hệ thống xe điện được sử dụng để chuyên chở du khách từ khu đỗ xe vào ga cáp treo hay từ chân đền Thỏng tới đền Cậu; dịch vụ lưu trú được thiết kế theo phong cách địa phương và phong cách tôn giáo nằm giữa thiên nhiên; dịch vụ chụp ảnh lưu động của Cáp treo Tây Thiên từ độ cao 200m; quà tặng lưu niệm từ vật liệu địa phương...<br />\r\n <br />\r\nNghỉ dưỡng tại Tam Đảo, bạn còn có cơ hội thưởng thức các món ăn đặc sản tại vùng núi này. Món thịt lợn rừng nướng được nuôi trong các làng trại của người dân tộc Sán Dìu trên núi Tam Đảo, với thớ thịt mỏng và dai, không siêu nạc, không nhiều mỡ, ăn không ngấy và càng nhai càng ngọt đậm đà. Hay “thương hiệu” rau su su Tam Đảo được ưa chuộng ở khắp nơi: Rau su su luộc chấm tương hay nước mắm chanh, hoặc xào với tỏi lẫn thịt bò…Măng Tam Đảo luộc qua và ngâm nước muối, luộc, chấm mắm tôm, chanh ớt. Nấm hương nhồi giò giã, nấu nước gà luộc, tôm he khô, cùng với bóng bì, thịt thăn, su hào thái mỏng ăn vừa thơm, vừa ngon, vừa bổ dưỡng…Và chắc chắn còn nhiều nhiều nữa những món ngon bạn sẽ có cơ hội khám phá trong những ngày nghỉ dưỡng tại Tam Đảo. Đừng bỏ lỡ nhé!<br />\r\n<br />\r\nChương trình Du lịch Tam Đảo - Tây Thiên - Hà Nội 2 ngày 1 đêm ( Thứ 7 hàng tuần) với chất lượng dịch vụ tốt, ổn định, uy tín, là sản phẩm du lịch nghỉ dưỡng phù hợp cho mỗi cá nhâ, tổ chức và gia đình dịp cuối tuần!            </p>\n        </div>', 'Tour ghép Tây Thiên - Tam Đảo 2 ngày 1 đêm', 'Tour ghép Tây Thiên - Tam Đảo 2 ngày 1 đêm', 'Tour ghép Tây Thiên - Tam Đảo 2 ngày 1 đêm', 'Tour ghép Tây Thiên - Tam Đảo 2 ngày 1 đêm'),
(226, 2, 'Du lịch Sapa - Sapa 3  ngày 2  đêm khách sạn 3 sao', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hãy cùng chúng tôi trải nghiệm sự hấp dẫn của phong cảnh, khí hậu và văn hóa đặc sắc của  thị trấn du lịch Sapa  - Lào Cai trong chương trình du lịch mới này. Với chương trình chúng tôi đưa ra là tour ghép đoàn - khởi hành hàng ngày với mong muốn cung cấp cho quý khách sản phẩm tour ghép Sapa đi đường cao tốc ngày nào cũng có thể tham gia ghép tour mà không cần phải chờ đợi lịch khởi hành, chủ động hơn về thời gian.  <br />\r\n<br />\r\nTham gia tour ghép Sapa cao tốc mới bằng xe bus quý khách thưởng thức phong cảnh của các tỉnh trên tuyến đường chạy qua như:  Vĩnh Phúc, Phú Thọ, Yên Bái, Lào Cai,... Và các địa danh du lịch trên Sapa khi quý khách lên  thị trấn du lịch này như: Bản Cát Cát, Khu du lịch Hàm Rồng, Bản Lao Chải - Tả Van, Giàng Tả chải, Bắc Hà,...Mỗi địa danh đều đặc trưng cho mỗi dân tộc anh em như:  H\"Mông, Dao , Zay,...            </p>\n        </div>', 'Du lịch Sapa - Sapa 3  ngày 2  đêm khách sạn 3 sao', 'Du lịch Sapa - Sapa 3  ngày 2  đêm khách sạn 3 sao', 'Du lịch Sapa - Sapa 3  ngày 2  đêm khách sạn 3 sao', 'Du lịch Sapa - Sapa 3  ngày 2  đêm khách sạn 3 sao'),
(227, 2, 'Du lịch Nga 9 Ngày 8 đêm – Bay VietnamAirline APT Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                CHƯƠNG TRÌNH DU LỊCH NGA:<br />\r\nHÀ NỘI - MATXCOVA  -  St. PETERSBURG - HÀ NỘI<br />\r\nThời Gian: 9 Ngày 8 Đêm – Hãng hàng không Vietnam Aiirline<br />\r\nKh: 29/4,22/7,19/8,16/9;07/10 Giá niêt yết 49.500.000 vnd<br />\r\nKh: 20/5,3/6 Giá niêm yết : 51.900.000 vnd<br />\r\nChi tiết xin vui lòng liên hệ: <br />\r\nTel: 0439290808– Skype: Tourghepvn84 -  Hotline 0912 -943-936            </p>\n        </div>', 'Du lịch Nga 9 Ngày 8 đêm – Bay VietnamAirline APT Travel', 'Du lịch Nga 9 Ngày 8 đêm – Bay VietnamAirline APT Travel', 'Du lịch Nga 9 Ngày 8 đêm – Bay VietnamAirline APT Travel', 'Du lịch Nga 9 Ngày 8 đêm – Bay VietnamAirline APT Travel'),
(228, 2, 'Du lịch Trung Quốc 6 ngày 5 đêm Trương Gia Giới - Phượng Hoàng Cổ Trấn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Trung Quốc Trương Gia Giới - Phượng Hoàng Cổ Trấn giá rẻ từ Sài Gòn. Hiếm có nơi nào mà mọi ống kính máy ảnh đều không truyền tải được hết vẻ đẹp của nó - sự kết tinh của văn hoá truyền thống đẹp đẽ tráng lệ đậm chất phương Đông và sự hùng vĩ của thiên nhiên ban tặng, kiều diễm và sắc nét như một tiên nữ đẹp nghiêng nước nghiêng thành, chỉ có thể nói là ngỡ ngàng....<br />\r\n<br />\r\nHành trình: Trương Gia Giới - Phượng Hoàng Cổ Trấn + Tặng 1 đêm khách sạn 5*<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 6 ngày 5 đêm            </p>\n        </div>', 'Du lịch Trung Quốc 6 ngày 5 đêm Trương Gia Giới - Phượng Hoàng Cổ Trấn', 'Du lịch Trung Quốc 6 ngày 5 đêm Trương Gia Giới - Phượng Hoàng Cổ Trấn', 'Du lịch Trung Quốc 6 ngày 5 đêm Trương Gia Giới - Phượng Hoàng Cổ Trấn', 'Du lịch Trung Quốc 6 ngày 5 đêm Trương Gia Giới - Phượng Hoàng Cổ Trấn'),
(229, 2, 'Du lịch Trung Quốc 6 ngày 5 đêm khởi hành từ Tp.HCM dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Tour du lịch Trung Quốc 6 ngày 5 đêm dịp hè 2017 bạn sẽ được thấy một Tô Châu với khu phố cổ hai bên bờ kênh thường là những con đường đá mấp mô, nhỏ hẹp, khiến không nhiều phương tiện hiện đại có thể đi được, nên bạn cùng lắm sẽ chỉ phải tránh vài chiếc xe đạp chầm chậm mà thôi. Cuộc sống ở đây đông đúc người nhưng chẳng quá ồn ào.<br />\r\n<br />\r\nHành trình: Bắc Kinh - Thượng Hải - Hàng Châu - Tô Châu (bay toàn chặng)<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 6 ngày 5 đêm            </p>\n        </div>', 'Du lịch Trung Quốc 6 ngày 5 đêm khởi hành từ Tp.HCM dịp hè 2017', 'Du lịch Trung Quốc 6 ngày 5 đêm khởi hành từ Tp.HCM dịp hè 2017', 'Du lịch Trung Quốc 6 ngày 5 đêm khởi hành từ Tp.HCM dịp hè 2017', 'Du lịch Trung Quốc 6 ngày 5 đêm khởi hành từ Tp.HCM dịp hè 2017'),
(230, 2, 'Du lịch Trung Quốc Bắc Kinh - Vạn Lý Trường Thành giá tốt dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Trung Quốc hè 2017 - Hành trình du lịch Bắc Kinh - Vạn Lý Trường Thành quý khách sẽ được khám phá vẻ đẹp hòa hợp giữa nét cổ kính của thành phố hơn 700 năm tuổi và sự hiện đại của một đô thị loại một trên thế giới.<br />\r\n<br />\r\nHành trình: Bắc Kinh - Vạn Lý Trường Thành<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm            </p>\n        </div>', 'Du lịch Trung Quốc Bắc Kinh - Vạn Lý Trường Thành giá tốt dịp hè 2017', 'Du lịch Trung Quốc Bắc Kinh - Vạn Lý Trường Thành giá tốt dịp hè 2017', 'Du lịch Trung Quốc Bắc Kinh - Vạn Lý Trường Thành giá tốt dịp hè 2017', 'Du lịch Trung Quốc Bắc Kinh - Vạn Lý Trường Thành giá tốt dịp hè 2017'),
(231, 2, 'Du lịch Miền Bắc - Hạ Long - Tràng An Ninh Bình khuyến mãi Vietnam Airlines', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Hà Nội - Yên Tử - Hạ Long - Ninh Bình - Chùa Bái Đính - Tràng An - Siêu khuyến mãi bay Vietnam Airlines<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 26/7; 30/9 <br />\r\nKhách sạn 3*, bay VIETNAM AIRLINE            </p>\n        </div>', 'Du lịch Miền Bắc - Hạ Long - Tràng An Ninh Bình khuyến mãi Vietnam Airlines', 'Du lịch Miền Bắc - Hạ Long - Tràng An Ninh Bình khuyến mãi Vietnam Airlines', 'Du lịch Miền Bắc - Hạ Long - Tràng An Ninh Bình khuyến mãi Vietnam Airlines', 'Du lịch Miền Bắc - Hạ Long - Tràng An Ninh Bình khuyến mãi Vietnam Airlines'),
(232, 2, 'Du lịch Miền Bắc - Hà Nội - Sapa - Hàm Rồng 4 ngày dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: HÀ NỘI - LÀO CAI - SAPA - HÀM RỒNG - BẢN CÁT CÁT- CHINH PHỤC ĐỈNH FANSIPAN<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 3,10,17,24/6 <br />\r\nKhách sạn 3*, 2 đêm Hà Nội Khách sạn 4*            </p>\n        </div>', 'Du lịch Miền Bắc - Hà Nội - Sapa - Hàm Rồng 4 ngày dịp hè 2017', 'Du lịch Miền Bắc - Hà Nội - Sapa - Hàm Rồng 4 ngày dịp hè 2017', 'Du lịch Miền Bắc - Hà Nội - Sapa - Hàm Rồng 4 ngày dịp hè 2017', 'Du lịch Miền Bắc - Hà Nội - Sapa - Hàm Rồng 4 ngày dịp hè 2017'),
(233, 2, 'Du lịch Hà Nội - Lào Cai - Sapa - Fansipan khuyến mãi Vietnam Airlines', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Hà Nội - Lào Cai - Sapa - Chinh Phục Đỉnh Fansipan - Siêu khuyến mãi Vietnam Airlines<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 26/7; 30/9 <br />\r\nKhách sạn 3*            </p>\n        </div>', 'Du lịch Hà Nội - Lào Cai - Sapa - Fansipan khuyến mãi Vietnam Airlines', 'Du lịch Hà Nội - Lào Cai - Sapa - Fansipan khuyến mãi Vietnam Airlines', 'Du lịch Hà Nội - Lào Cai - Sapa - Fansipan khuyến mãi Vietnam Airlines', 'Du lịch Hà Nội - Lào Cai - Sapa - Fansipan khuyến mãi Vietnam Airlines'),
(234, 2, 'Du lịch miền Bắc - Hạ Long - Ninh Bình - Đầm Vân Long bay từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Hà Nội - Đền Đô - Yên Tử - Hạ Long - NInh Bình - Đầm Vân Long - Chùa Bái Đính - Tràng An<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 23,30/6; 1,15,29/7; 04/08 <br />\r\nKS 3*,4*, siêu khuyến mãi Jetstar Pacific, TẶNG 20KG HÀNH LÝ            </p>\n        </div>', 'Du lịch miền Bắc - Hạ Long - Ninh Bình - Đầm Vân Long bay từ Sài Gòn', 'Du lịch miền Bắc - Hạ Long - Ninh Bình - Đầm Vân Long bay từ Sài Gòn', 'Du lịch miền Bắc - Hạ Long - Ninh Bình - Đầm Vân Long bay từ Sài Gòn', 'Du lịch miền Bắc - Hạ Long - Ninh Bình - Đầm Vân Long bay từ Sài Gòn'),
(235, 2, 'Du lịch miền Bắc 5 ngày bay từ Sài Gòn khuyến mãi Vietnam Airlines', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Hà Nội - Hạ Long - Lào Cai - Sapa - Fansipang - Siêu khuyến mãi Vietnam Airlines<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 10/6; 8/7; 19/8; 16/9 <br />\r\nKhách sạn 3*,4*, Tour Khuyến mãi Vietnam Airlines            </p>\n        </div>', 'Du lịch miền Bắc 5 ngày bay từ Sài Gòn khuyến mãi Vietnam Airlines', 'Du lịch miền Bắc 5 ngày bay từ Sài Gòn khuyến mãi Vietnam Airlines', 'Du lịch miền Bắc 5 ngày bay từ Sài Gòn khuyến mãi Vietnam Airlines', 'Du lịch miền Bắc 5 ngày bay từ Sài Gòn khuyến mãi Vietnam Airlines'),
(236, 2, 'Du lịch Đông Bắc - Hà Giang - Quảng Bạ - Mèo Vạc - Đền Hùng hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Hà Nội - Hà Giang - Quảng Bạ - Phố Cáo - Sủng Là - Lũng Cú - Mèo Vạc - Đền Hùng<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 2,9,16,23,30/6; 1,15,21,29/7; 4/8 <br />\r\nKhách sạn 3*            </p>\n        </div>', 'Du lịch Đông Bắc - Hà Giang - Quảng Bạ - Mèo Vạc - Đền Hùng hè 2017', 'Du lịch Đông Bắc - Hà Giang - Quảng Bạ - Mèo Vạc - Đền Hùng hè 2017', 'Du lịch Đông Bắc - Hà Giang - Quảng Bạ - Mèo Vạc - Đền Hùng hè 2017', 'Du lịch Đông Bắc - Hà Giang - Quảng Bạ - Mèo Vạc - Đền Hùng hè 2017'),
(237, 2, 'Du lịch Đông Bắc - Bắc Kạn giá tốt khởi hành từ Sài Gòn hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: HÀ NỘI – BẮC KẠN – CAO BẰNG – THÁC BẢN GIỐC - HANG PẮC PÓ – LẠNG SƠN – BẮC NINH<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 2,16,23,26/5; 2,9,16,23,30/6; 1,15,21,29/7; 4/8 <br />\r\nKhách sạn 2*,3*            </p>\n        </div>', 'Du lịch Đông Bắc - Bắc Kạn giá tốt khởi hành từ Sài Gòn hè 2017', 'Du lịch Đông Bắc - Bắc Kạn giá tốt khởi hành từ Sài Gòn hè 2017', 'Du lịch Đông Bắc - Bắc Kạn giá tốt khởi hành từ Sài Gòn hè 2017', 'Du lịch Đông Bắc - Bắc Kạn giá tốt khởi hành từ Sài Gòn hè 2017'),
(238, 2, 'Du lịch Nha Trang - Bình Hưng - Vườn Nho từ Sài Gòn giá tốt hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Nha Trang - Tháp Bà Ponagar – Vinpearland – Đảo Bình Hưng - Vườn Nho – Tháp Poklong Garai<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 5 hàng tuần             </p>\n        </div>', 'Du lịch Nha Trang - Bình Hưng - Vườn Nho từ Sài Gòn giá tốt hè 2017', 'Du lịch Nha Trang - Bình Hưng - Vườn Nho từ Sài Gòn giá tốt hè 2017', 'Du lịch Nha Trang - Bình Hưng - Vườn Nho từ Sài Gòn giá tốt hè 2017', 'Du lịch Nha Trang - Bình Hưng - Vườn Nho từ Sài Gòn giá tốt hè 2017'),
(239, 2, 'Du lịch Nha Trang - Phú Yên - Gành Đá Đĩa 4 ngày giá tốt dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Phú Yên - Nha Trang<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 5 hàng tuần             </p>\n        </div>', 'Du lịch Nha Trang - Phú Yên - Gành Đá Đĩa 4 ngày giá tốt dịp hè 2017', 'Du lịch Nha Trang - Phú Yên - Gành Đá Đĩa 4 ngày giá tốt dịp hè 2017', 'Du lịch Nha Trang - Phú Yên - Gành Đá Đĩa 4 ngày giá tốt dịp hè 2017', 'Du lịch Nha Trang - Phú Yên - Gành Đá Đĩa 4 ngày giá tốt dịp hè 2017'),
(240, 2, 'Du lịch Rạch Giá - Khám phá đảo Nam Du 3 ngày 3 đêm giá tốt hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Trong tất cả các hòn đảo Việt Nam hiếm có nơi đầu còn giữ được nét hoang sơ như Nam Du, cùng với sự nguyên sinh trên hòn đảo và bầu không khí trong lành thoáng đãng, và những bãi cát vàng cát trắng mịn màng ngâm mình dưới làn nước biển xanh bức tranh Nam Du sơn thủy hữu tình. Tour du lịch Nam Du 3 ngày 3 đêm chắc hẵn sẽ ko làm bạn thất vọng khi đến hòn đảo này.<br />\r\n<br />\r\nHành trình: Rạch Giá – Khám Phá Đảo Nam Du - Chinh Phục Dốc Ông Tình – Hải Đăng Nam Du<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 3 ngày 3 đêm<br />\r\nNgày khởi hành: Tối thứ 5 (tháng 6,7)             </p>\n        </div>', 'Du lịch Rạch Giá - Khám phá đảo Nam Du 3 ngày 3 đêm giá tốt hè 2017', 'Du lịch Rạch Giá - Khám phá đảo Nam Du 3 ngày 3 đêm giá tốt hè 2017', 'Du lịch Rạch Giá - Khám phá đảo Nam Du 3 ngày 3 đêm giá tốt hè 2017', 'Du lịch Rạch Giá - Khám phá đảo Nam Du 3 ngày 3 đêm giá tốt hè 2017'),
(241, 2, 'Du lịch Buôn Ma Thuột - Buôn Đôn 3 ngày giá tốt từ Sài Gòn dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch hè Buôn Ma Thuột - Nổi tiếng với vẻ đẹp hoang dại của vùng đất đại ngàn, với thác nước trắng xóa và hồ nước đẹp mênh mang trong ánh nắng hoàng hôn, đến với Buôn Mê Thuột, du khách sẽ được khám phá thác D’ray Nur, tham quan Làng cà phê Trung Nguyên, ngắm nhìn không gian kiến trúc độc đáo mang đậm bản sắc của dân tộc Tây Nguyên và tận hưởng không gian cà phê đặc sắc, nhâm nhi những ly cà phê đậm đà, thơm ngon vào hàng bậc nhất. Thăm Buôn Ako D’Hông, du khách sẽ được hòa mình không gian văn hóa Cồng Chiêng Tây Nguyên được UNESCO công nhận là Kiệt tác truyền khẩu và phi vật thể nhân, qua đó tìm hiểu thêm về những phong tục, tập quán đầy thú vị của đồng bào dân tộc thiểu số nơi đây.<br />\r\n<br />\r\nHành trình: Buôn Ma Thuột - Thác D’ray nur - Làng cà phê Trung Nguyên - Buôn làng Ê Đê Ako Dhong - Buôn Đôn<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 6 hàng tuần             </p>\n        </div>', 'Du lịch Buôn Ma Thuột - Buôn Đôn 3 ngày giá tốt từ Sài Gòn dịp hè 2017', 'Du lịch Buôn Ma Thuột - Buôn Đôn 3 ngày giá tốt từ Sài Gòn dịp hè 2017', 'Du lịch Buôn Ma Thuột - Buôn Đôn 3 ngày giá tốt từ Sài Gòn dịp hè 2017', 'Du lịch Buôn Ma Thuột - Buôn Đôn 3 ngày giá tốt từ Sài Gòn dịp hè 2017'),
(242, 2, 'Du lịch Hà Tiên - Phú Quốc 3 ngày 3 đêm hè 2017 khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Phú Quốc nổi tiếng và là nguồn cảm hứng sáng tạo cho nhiều du khách vì vẻ hoang sơ nhưng không kém phần quyến rũ. Nơi đây là điểm nghỉ dưỡng lý tưởng của nhiều du khách trong và ngoài nước với làn nước biển trong xanh, những dòng suối yên bình và sự hài hòa rất đỗi nên thơ của cảnh vật. Phú Quốc có nhiều con suối đẹp và hoang sơ như suối Đá Bàn, suối Tiên, suối Hang... Nổi tiếng nhất là suối Tranh, dài hơn 15 km, uốn lượn trên những ghềnh đá, lúc ẩn lúc hiện dưới sắc xanh của núi rừng.<br />\r\n<br />\r\nHành trình: HÀ TIÊN – PHÚ QUỐC:  Làng chài Hàm Ninh – Vinpearl Bãi Sao – Câu Cá, Ngắm San Hô<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: Tối thứ 5 hàng tuần             </p>\n        </div>', 'Du lịch Hà Tiên - Phú Quốc 3 ngày 3 đêm hè 2017 khởi hành từ Sài Gòn', 'Du lịch Hà Tiên - Phú Quốc 3 ngày 3 đêm hè 2017 khởi hành từ Sài Gòn', 'Du lịch Hà Tiên - Phú Quốc 3 ngày 3 đêm hè 2017 khởi hành từ Sài Gòn', 'Du lịch Hà Tiên - Phú Quốc 3 ngày 3 đêm hè 2017 khởi hành từ Sài Gòn'),
(243, 2, 'Du lịch Châu Đốc - Hà Tiên 4 ngày giá tốt hè 2017 khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Trên mảnh đất hình chữ S có một mảnh đất xanh trù phú, được thiên nhiên ban tặng những cánh đồng thẳng cánh cò bay, vườn trái cây quanh năm tươi tốt, mảnh đất của những ngôi chùa hội tụ tinh hoa văn hóa. Tour du lịch Tiền Giang – Hà Tiên – Cần Thơ 4 ngày 3 đêm sẽ đưa bạn khám phá trọn vẹn miền Tây hương quê.<br />\r\n<br />\r\nHành trình: Châu Đốc - Vía Bà Chúa Xứ - Núi Cấm - Hà Tiên - Lăng Mạc Cửu - Cần Thơ<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 5 hàng tuần             </p>\n        </div>', 'Du lịch Châu Đốc - Hà Tiên 4 ngày giá tốt hè 2017 khởi hành từ Sài Gòn', 'Du lịch Châu Đốc - Hà Tiên 4 ngày giá tốt hè 2017 khởi hành từ Sài Gòn', 'Du lịch Châu Đốc - Hà Tiên 4 ngày giá tốt hè 2017 khởi hành từ Sài Gòn', 'Du lịch Châu Đốc - Hà Tiên 4 ngày giá tốt hè 2017 khởi hành từ Sài Gòn'),
(31, 2, 'Tour Phú Yên - Điệp Sơn 3N3Đ 5 sao Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                TRẢI NGHIỆM TUYỆT VỜI TẠI ĐẢO ĐIỆP SƠN – CON ĐƯỜNG DƯỚI BIỂN ĐÔC ĐÁO<br />\r\nCUỘC HÀNH TRÌNH KHÁM PHÁ CỰC ĐÔNG TỔ QUỐC “ MŨI ĐIỆN CAP VARELLA”<br />\r\nGÀNH ĐÁ ĐĨA : THẮNG CẢNH ĐỘC NHẤT VÔ NHỊ”<br />\r\nBBQ HẢI SẢN + THỊT RỪNG<br />\r\nKHÁM PHÁ ĐẶC SẢN PHÚ YÊN            </p>\n        </div>', 'Tour Phú Yên - Điệp Sơn 3N3Đ 5 sao Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Phú Yên - Điệp Sơn 3N3Đ 5 sao Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Phú Yên - Điệp Sơn 3N3Đ 5 sao Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Phú Yên - Điệp Sơn 3N3Đ 5 sao Tết Nguyên Đán - HAI DANG TRAVEL'),
(49, 2, 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 4N3Đ Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Chương trình du lịch Thái Lan dịp đầu năm mới 2017 khám phá vương quốc của những nụ cười với những thành phố biển. Trong hành trình du khách có thể thoải mái thư giãn tại Đảo san hô Coral nổi tiếng, thưởng thức bê đê show hoành tráng, có cơ hội trải nghiệm chợ nổi bốn miền đặc sắc ở Pattaya.            </p>\n        </div>', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 4N3Đ Hoàng Việt Travel', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 4N3Đ Hoàng Việt Travel', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 4N3Đ Hoàng Việt Travel', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 4N3Đ Hoàng Việt Travel'),
(50, 2, 'Tour Hàn: Hà Nội - Seoul - Đảo Nami - Everland 5N4Đ Bay Hàng Không Vietjet Air - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình du lịch Hàn Quốc, ngắm nhìn Seoul sôi động, du khách sẽ được trải nghiệm tắm hơi Sauna kiểu Hàn quốc, thưởng thức chương trình Drumcat Show, được học làm kim chi với trang phục truyền thống Hanbok. Đặt tour du lịch Hàn Quốc ngay hôm nay và cảm nhận.            </p>\n        </div>', 'Tour Hàn: Hà Nội - Seoul - Đảo Nami - Everland 5N4Đ Bay Hàng Không Vietjet Air - Hoàng Việt Travel', 'Tour Hàn: Hà Nội - Seoul - Đảo Nami - Everland 5N4Đ Bay Hàng Không Vietjet Air - Hoàng Việt Travel', 'Tour Hàn: Hà Nội - Seoul - Đảo Nami - Everland 5N4Đ Bay Hàng Không Vietjet Air - Hoàng Việt Travel', 'Tour Hàn: Hà Nội - Seoul - Đảo Nami - Everland 5N4Đ Bay Hàng Không Vietjet Air - Hoàng Việt Travel'),
(51, 2, 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 5N4Đ - Bay Qatar 5 Sao - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Tour du lịch Thái Lan 5N sử dụng hãng hàng không quốc tế Quatar 5 sao. Trong hành trình, du khách sẽ được tận hưởng 1 giờ massage Thái cổ truyền, thăm quan Lâu đài tỉ phú Baan Sukhawadee lộng lẫy, thưởng thức chương trình bê đê show độc đáo và thỏa sức mua sắm tại các trung tâm mua sắm lớn nhất Đông Nam Á.            </p>\n        </div>', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 5N4Đ - Bay Qatar 5 Sao - Hoàng Việt Travel', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 5N4Đ - Bay Qatar 5 Sao - Hoàng Việt Travel', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 5N4Đ - Bay Qatar 5 Sao - Hoàng Việt Travel', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 5N4Đ - Bay Qatar 5 Sao - Hoàng Việt Travel'),
(52, 2, 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 5N4Đ Bay Hàng Không Nok Air - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Tham gia hành trình du lịch Thái Lan 5N4Đ trọn gói, bay hàng không Nok Air, du khách sẽ có cơ hội thư giãn 1h massage Thái cổ truyền, miễn phí mang theo 37kg hành lý, thưởng thức buffet Thái hoành tráng, thỏa sức mua sắm tại các thiên đường shopping ở Thái và mãn nhãn với chương trình bê đê show hoành tráng. Đặt tour Thái Lan ngay hôm nay và cảm nhận.            </p>\n        </div>', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 5N4Đ Bay Hàng Không Nok Air - Hoàng Việt Travel', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 5N4Đ Bay Hàng Không Nok Air - Hoàng Việt Travel', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 5N4Đ Bay Hàng Không Nok Air - Hoàng Việt Travel', 'Tour Thái Lan: Hà Nội - Bangkok - Pattaya- Đảo Coral 5N4Đ Bay Hàng Không Nok Air - Hoàng Việt Travel'),
(53, 2, 'Tour Myanmar: Hà Nội - Yangon - Bago - Golden Rock 4N3Đ, Bay Vietnam Airlines', '<div class=\"text_info_sp width_common\">\n            <p>\n                Tour trọn gói, ở khách sạn 3-4*. Hành hương đất phật Myanmar - \"Rước Lộc Đầu Năm\"            </p>\n        </div>', 'Tour Myanmar: Hà Nội - Yangon - Bago - Golden Rock 4N3Đ, Bay Vietnam Airlines', 'Tour Myanmar: Hà Nội - Yangon - Bago - Golden Rock 4N3Đ, Bay Vietnam Airlines', 'Tour Myanmar: Hà Nội - Yangon - Bago - Golden Rock 4N3Đ, Bay Vietnam Airlines', 'Tour Myanmar: Hà Nội - Yangon - Bago - Golden Rock 4N3Đ, Bay Vietnam Airlines'),
(54, 2, 'Tour Úc: Hà Nội - Sydney - Canberra 4N3Đ Bay Thẳng Việt Nam Airlines - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình tour trọn gói. Giá siêu khuyến mại, chào mừng đường bay thẳng Hà Nội - Sydney của hãng hàng không quốc gia Vietnam Airlines. Khám phá mùa Thu nước Úc.            </p>\n        </div>', 'Tour Úc: Hà Nội - Sydney - Canberra 4N3Đ Bay Thẳng Việt Nam Airlines - Hoàng Việt Travel', 'Tour Úc: Hà Nội - Sydney - Canberra 4N3Đ Bay Thẳng Việt Nam Airlines - Hoàng Việt Travel', 'Tour Úc: Hà Nội - Sydney - Canberra 4N3Đ Bay Thẳng Việt Nam Airlines - Hoàng Việt Travel', 'Tour Úc: Hà Nội - Sydney - Canberra 4N3Đ Bay Thẳng Việt Nam Airlines - Hoàng Việt Travel'),
(55, 2, 'Tour Campuchia - Phnom Penh 2N1Đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Thủ đô Phnom Penh - Mua sắm cuối tuần<br />\r\nHành hương Đức Mẹ MêKong<br />\r\n            </p>\n        </div>', 'Tour Campuchia - Phnom Penh 2N1Đ - Hai Dang Travel', 'Tour Campuchia - Phnom Penh 2N1Đ - Hai Dang Travel', 'Tour Campuchia - Phnom Penh 2N1Đ - Hai Dang Travel', 'Tour Campuchia - Phnom Penh 2N1Đ - Hai Dang Travel'),
(56, 2, 'Combo 3N2Đ - Khu nghỉ dưỡng Risemount Đà Nẵng 4* + Vé máy bay khứ hồi từ Tp. HCM/ Hà Nội + Đưa đón sân bay + Ăn tối', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ Hà Nội/HCM: 3.699.000/khách<br />\r\n(Số lượng có hạn, chương trình kết thúc khi hết chỗ)<br />\r\n- Vé máy bay khứ hồi đi Đà Nẵng (bao gồm 7kg hành lý xách tay)<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Superior<br />\r\n- Ăn sáng Buffet<br />\r\n- 1 bữa ăn tối Vietnamese set menu<br />\r\n- Đưa đón sân bay bằng xe limousine theo lịch trình<br />\r\n(Lịch đón từ sân bay: 9h45\", 16h, 18h30\"<br />\r\nLịch đưa từ resort: 9h15\", 15h30\", 18h)<br />\r\n- Miễn phí sử dụng mini bar trong phòng<br />\r\n- Miễn phí sử dụng trà chiều tại Elia Lounge (14h - 16h)<br />\r\n*Giai đoạn lưu trú: đến hết 30/09/2017 (không áp dụng giai đoạn 01/09 - 02/09 có phụ thu thêm)            </p>\n        </div>', 'Combo 3N2Đ - Khu nghỉ dưỡng Risemount Đà Nẵng 4* + Vé máy bay khứ hồi từ Tp. HCM/ Hà Nội + Đưa đón sân bay + Ăn tối', 'Combo 3N2Đ - Khu nghỉ dưỡng Risemount Đà Nẵng 4* + Vé máy bay khứ hồi từ Tp. HCM/ Hà Nội + Đưa đón sân bay + Ăn tối', 'Combo 3N2Đ - Khu nghỉ dưỡng Risemount Đà Nẵng 4* + Vé máy bay khứ hồi từ Tp. HCM/ Hà Nội + Đưa đón sân bay + Ăn tối', 'Combo 3N2Đ - Khu nghỉ dưỡng Risemount Đà Nẵng 4* + Vé máy bay khứ hồi từ Tp. HCM/ Hà Nội + Đưa đón sân bay + Ăn tối'),
(57, 2, 'Trọn gói 3N2Đ -  L’Alyana Ninh Vân Bay Nha Trang 5* - Đưa đón sân bay - Vé máy bay khứ hồi từ Tp. HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ HCM: 6,699,000 VND/khách.<br />\r\n*Khởi hành từ HN: 7,799,000 VND/khách.<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi<br />\r\n- 2 đêm nghỉ dưỡng ở Hill Rock Pool Villa<br />\r\n- Tàu cao tốc đưa đón lúc nhận & trả phòng<br />\r\n- Ăn sáng buffet<br />\r\n- Hằng ngày có 1 chuyến tàu & xe đưa khách đến trung tâm thành phố & ngược lại (theo lịch trình)<br />\r\n- Dịch vụ quản gia riêng 24/24<br />\r\n- Trái cây tươi & trà chiều hằng ngày tại Villa<br />\r\n- Các hoạt động thể thao: chèo thuyền Kayak, câu cá, leo núi,...<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi, phòng tập gym,...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Đặt tối thiểu 2 khách/phòng<br />\r\n- Giai đoạn lưu trú: đến hết 23/12/17 (không áp dụng giai đoạn Lễ 01/09 - 03/09)<br />\r\nPhụ thu: liên hệ 19001870 để biết thêm chi tiết            </p>\n        </div>', 'Trọn gói 3N2Đ -  L’Alyana Ninh Vân Bay Nha Trang 5* - Đưa đón sân bay - Vé máy bay khứ hồi từ Tp. HCM', 'Trọn gói 3N2Đ -  L’Alyana Ninh Vân Bay Nha Trang 5* - Đưa đón sân bay - Vé máy bay khứ hồi từ Tp. HCM', 'Trọn gói 3N2Đ -  L’Alyana Ninh Vân Bay Nha Trang 5* - Đưa đón sân bay - Vé máy bay khứ hồi từ Tp. HCM', 'Trọn gói 3N2Đ -  L’Alyana Ninh Vân Bay Nha Trang 5* - Đưa đón sân bay - Vé máy bay khứ hồi từ Tp. HCM'),
(58, 2, 'Trọn gói 3N2Đ -  L’Alyana Ninh Vân Bay Nha Trang 5* + Vé máy bay khứ hồi từ Hà Nội', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ HCM: 6,699,000 VND/khách.<br />\r\n*Khởi hành từ HN: 7,799,000 VND/khách.<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi<br />\r\n- 2 đêm nghỉ dưỡng ở Hill Rock Pool Villa<br />\r\n- Tàu cao tốc đưa đón lúc nhận & trả phòng<br />\r\n- Ăn sáng buffet<br />\r\n- Hằng ngày có 1 chuyến tàu & xe đưa khách đến trung tâm thành phố & ngược lại (theo lịch trình)<br />\r\n- Dịch vụ quản gia riêng 24/24<br />\r\n- Trái cây tươi & trà chiều hằng ngày tại Villa<br />\r\n- Các hoạt động thể thao: chèo thuyền Kayak, câu cá, leo núi,...<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi, phòng tập gym,...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Đặt tối thiểu 2 khách/phòng<br />\r\n- Giai đoạn lưu trú: đến hết 23/12/17 (không áp dụng giai đoạn Lễ 01/09 - 03/09)<br />\r\nPhụ thu: liên hệ 19001870 để biết thêm chi tiết            </p>\n        </div>', 'Trọn gói 3N2Đ -  L’Alyana Ninh Vân Bay Nha Trang 5* + Vé máy bay khứ hồi từ Hà Nội', 'Trọn gói 3N2Đ -  L’Alyana Ninh Vân Bay Nha Trang 5* + Vé máy bay khứ hồi từ Hà Nội', 'Trọn gói 3N2Đ -  L’Alyana Ninh Vân Bay Nha Trang 5* + Vé máy bay khứ hồi từ Hà Nội', 'Trọn gói 3N2Đ -  L’Alyana Ninh Vân Bay Nha Trang 5* + Vé máy bay khứ hồi từ Hà Nội'),
(59, 2, 'Tour Nha Trang - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                Khu Du Lịch Tắm Khoáng Bùn Trăm Trứng “Egg Mud Bath”<br />\r\nKHU DU LỊCH ĐẲNG CẤP 5* VINPEARL LAND<br />\r\nĐƯỜNG HẦM ĐIÊU KHẮC ĐẤT SÉT<br />\r\nLANGBIANG – THIỀN VIỆN TRÚC LÂM – ĐÊM CỒNG CHIÊNG TÂY NGUYÊN<br />\r\nBUỔI TIỆC: CƠM LAM + THỊT NƯỚNG            </p>\n        </div>', 'Tour Nha Trang - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Nha Trang - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Nha Trang - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Nha Trang - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(60, 2, 'Tour Ninh Chữ - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                KHÁM PHÁ HANG RÁI<br />\r\nKHÁM PHÁ VỊNH VĨNH HY BẰNG TÀU ĐÁY KÍNH<br />\r\nĐƯỜNG HẦM ĐIÊU KHẮC ĐẤT SÉT–LANGBIANG – THIỀN VIỆN TRÚC LÂM – ĐÊM CỒNG CHIÊNG TÂY NGUYÊN.<br />\r\nBUỔI TIỆC: CƠM LAM + THỊT NƯỚNG<br />\r\n            </p>\n        </div>', 'Tour Ninh Chữ - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Ninh Chữ - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Ninh Chữ - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Ninh Chữ - Đà Lạt 4N4Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(61, 2, 'Tour Phú Yên  - Điệp Sơn 3N3Đ 4 sao Tết Nguyên Đán- HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                TRẢI NGHIỆM TUYỆT VỜI TẠI ĐẢO ĐIỆP SƠN – CON ĐƯỜNG DƯỚI BIỂN ĐÔC ĐÁO<br />\r\nCUỘC HÀNH TRÌNH KHÁM PHÁ CỰC ĐÔNG TỔ QUỐC “ MŨI ĐIỆN CAP VARELLA”<br />\r\nGÀNH ĐÁ ĐĨA : THẮNG CẢNH ĐỘC NHẤT VÔ NHỊ”<br />\r\nBBQ HẢI SẢN + THỊT RỪNG<br />\r\nKHÁM PHÁ ĐẶC SẢN PHÚ YÊN            </p>\n        </div>', 'Tour Phú Yên  - Điệp Sơn 3N3Đ 4 sao Tết Nguyên Đán- HAI DANG TRAVEL', 'Tour Phú Yên  - Điệp Sơn 3N3Đ 4 sao Tết Nguyên Đán- HAI DANG TRAVEL', 'Tour Phú Yên  - Điệp Sơn 3N3Đ 4 sao Tết Nguyên Đán- HAI DANG TRAVEL', 'Tour Phú Yên  - Điệp Sơn 3N3Đ 4 sao Tết Nguyên Đán- HAI DANG TRAVEL'),
(62, 2, 'Tour Tứ Bình 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                BIỂN BÌNH LẬP - BÌNH LOAN «Maldiver» ĐẢO BÌNH BA - ĐẢO BÌNH HƯNG- BIỂN BÌNH TIÊN - KHÁM PHÁ PHIM TRƯỜNG RESORT NGỌC SƯƠNG<br />\r\nTỨ BÌNH (Bình Ba - Bình Lập - Bình Tiên - Bình Hưng) <br />\r\nNếu như Nha Trang nổi tiếng với bãi biển xanh mướt trên nền cát trắng mịn màng, trải dài từ đất liền ra đến các đảo thì biển Cam Ranh lại mang vẻ đẹp hoang sơ hiền hòa với nhiều bãi tắm đẹp mê hồn như cõi thiên đường chốn nhân gian. Nước biển trong vắt, mặt biển phẳng như gương, gió mát dịu nhẹ – Đảo Bình Ba - biển Bình Lập, Biển Bình Tiên, đảo Bình Hưng, TP.Cam Ranh, tỉnh Khánh Hòa được ví như một Maldives thu nhỏ của Việt Nam. Hãy cùng Hải Đăng khám phá một chương trình 4 điểm đến đầy hấp dẫn này bạn nhé.<br />\r\n            </p>\n        </div>', 'Tour Tứ Bình 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Tứ Bình 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Tứ Bình 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Tứ Bình 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(63, 2, 'Tour Ghép Trọn Gói 6N5Đ Hà Nội - Singapore - Malaysia - Hà Nội - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đồng hành cùng Lữ Hành Quốc Tế Hoàng Việt Open khám phá 2 quốc gia Singapore, Malaysia xinh đẹp. Dịch vụ chất lượng 3-4 sao, giá siêu kích cầu chỉ từ 9,9tr.            </p>\n        </div>', 'Tour Ghép Trọn Gói 6N5Đ Hà Nội - Singapore - Malaysia - Hà Nội - Hoàng Việt Travel', 'Tour Ghép Trọn Gói 6N5Đ Hà Nội - Singapore - Malaysia - Hà Nội - Hoàng Việt Travel', 'Tour Ghép Trọn Gói 6N5Đ Hà Nội - Singapore - Malaysia - Hà Nội - Hoàng Việt Travel', 'Tour Ghép Trọn Gói 6N5Đ Hà Nội - Singapore - Malaysia - Hà Nội - Hoàng Việt Travel'),
(64, 2, 'Tour Đà Nẵng - Bà Nà Hill -Phố Cổ Hội An 3n4đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Nẵng nằm giữa ba di sản thế giới: cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn. Đà Nẵng còn có nhiều danh thắng tuyệt đẹp say lòng du khách như Ngũ Hành Sơn, Bà Nà, bán đảo Sơn Trà, đèo Hải Vân, sông Hàn thơ mộng và cầu quay Sông Hàn – niềm tự hào của thành phố, và biển Mỹ Khê đẹp nhất hành tinh.Một trong những tạp chí nổi tiếng của Mĩ đã bình chọn cho bãi biển của Đà Nẵng là một trong những bãi biển có sức \"quyến rũ nhất hành tinh\".            </p>\n        </div>', 'Tour Đà Nẵng - Bà Nà Hill -Phố Cổ Hội An 3n4đ - Hai Dang Travel', 'Tour Đà Nẵng - Bà Nà Hill -Phố Cổ Hội An 3n4đ - Hai Dang Travel', 'Tour Đà Nẵng - Bà Nà Hill -Phố Cổ Hội An 3n4đ - Hai Dang Travel', 'Tour Đà Nẵng - Bà Nà Hill -Phố Cổ Hội An 3n4đ - Hai Dang Travel'),
(65, 2, 'Tour Quy Nhơn - Phú Yên 3n4đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                	Đến Phú Yên để ghé thăm Gành Đá Dĩa hùng vĩ, Nhất Tự Sơn  -  hòn đảo đẹp nhất Vịnh Xuân Đài - nơi được mệnh danh là \" Điệp Sơn của Phú Yên\" <br />\r\n	Đến Quy Nhơn mảnh đất anh hùng nơi có Bảo Tàng Quang Trung, bãi biển Kỳ Co đẹp tuyệt trần, người dân thân thiện. <br />\r\n	Một chuyến đi hai điểm đến này chắc chắn sẽ là một sự kết hợp thật hoàn hảo.<br />\r\n            </p>\n        </div>', 'Tour Quy Nhơn - Phú Yên 3n4đ - Hai Dang Travel', 'Tour Quy Nhơn - Phú Yên 3n4đ - Hai Dang Travel', 'Tour Quy Nhơn - Phú Yên 3n4đ - Hai Dang Travel', 'Tour Quy Nhơn - Phú Yên 3n4đ - Hai Dang Travel'),
(66, 2, 'Tour Bình Ba - Nha Trang - Đà Lạt 4n4đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Bạn yêu những bãi biển xanh ngắt, hiền hòa ở Bình Ba. Bạn thích cái không khí se se lạnh của Đà Lạt trong những ngày đông. Thế nên bạn băn khoăn không biết chọn lựa lên rừng, đi núi hay xuống biển. Vậy tại sao bạn không tận dụng ngay ưu đãi lần này đến từ Hải Đăng. Tour Bình Ba – Nha Trang - Đà Lạt trong 4N4Đ, bạn sẽ hòa mình vào làn nước biển trong xanh cũng như tận hưởng không khí mát mẻ, dễ chịu của Đà Lạt để xua tan những mệt mỏi, căng thẳng.            </p>\n        </div>', 'Tour Bình Ba - Nha Trang - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Bình Ba - Nha Trang - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Bình Ba - Nha Trang - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Bình Ba - Nha Trang - Đà Lạt 4n4đ - Hai Dang Travel'),
(67, 2, 'Tour Đảo Bình Hưng 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                BÌNH HƯNG Nằm nép mình bên cửa lớn thuộc vịnh nước sâu Cam Ranh, đảo Bình Hưng được ví như hòn ngọc giữa dải lụa xanh tuyệt đẹp, nơi thiên nhiên vẫn còn nguyên sơ như chưa bao giờ có dấu chân con người.<br />\r\nHãy đến với Đảo Bình Hưng với nhiều trãi nghiệm mới lạ - Một Bình Hưng đẹp hoang sơ nhưng lại quyến rũ. Và điều thú vị hơn nữa là người dân xứ biển nơi đây nhanh nhẩu, hiếu khách và thân thiện vô cùng. <br />\r\n            </p>\n        </div>', 'Tour Đảo Bình Hưng 2n2đ - Hai Dang Travel', 'Tour Đảo Bình Hưng 2n2đ - Hai Dang Travel', 'Tour Đảo Bình Hưng 2n2đ - Hai Dang Travel', 'Tour Đảo Bình Hưng 2n2đ - Hai Dang Travel'),
(68, 2, 'Tour Ninh Chữ về miền biển nắng 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ninh Thuận, một vùng đất đầy nắng và gió. Nắng có thể làm tan chảy đi trái tim băng giá của con người , gió có thể thổi bay những ước mơ bé nhỏ, nắng và gió nơi đây đã làm nên một Ninh Thuận đầy huyền bí và con người Ninh Thuận vô cùng hiền hòa và mến khách. Tiếp tục khám phá vịnh Vĩnh Hy, con tàu đáy kính sẽ đưa du khách vào thế giới kỳ ảo, tuyệt đẹp của biển xanh, núi đá, san hô và nhiều loài cá biển.<br />\r\nSau khi tận hưởng làn nước biển mát lạnh trong xanh ở bãi biển đẹp Ninh Chữ và thưởng thức nhiều món ngon Ninh Thuận, chắc chắn các bạn sẽ rời miền biển nắng Phan Rang với ấn tượng khó quên và với lời hẹn ngày tái ngộ...<br />\r\n            </p>\n        </div>', 'Tour Ninh Chữ về miền biển nắng 2n2đ - Hai Dang Travel', 'Tour Ninh Chữ về miền biển nắng 2n2đ - Hai Dang Travel', 'Tour Ninh Chữ về miền biển nắng 2n2đ - Hai Dang Travel', 'Tour Ninh Chữ về miền biển nắng 2n2đ - Hai Dang Travel'),
(69, 2, 'Tour  đảo Điệp Sơn - Nha Trang 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Điệp Sơn (hay còn gọi là Hòn Bịp) là một dãy gồm 3 hòn đảo nhỏ, nằm chơi vơi trong vùng biển thuộc vịnh Vân Phong, tỉnh Khánh Hòa. Địa danh này nổi bật và gây dấu ấn với khách du lịch bằng một con đường mòn kéo dài gần 800m nối giữa hai hòn đảo trong dãy đảo Điệp Sơn, có thể được xem là độc nhất vô nhị tại Việt Nam. Giờ nước rút lộ ra Điệp Sơn thủy đạo là từ 6g sáng đến 10g trưa (thay đổi theo mùa). Đây là “địa điểm vàng” tiềm năng hứa hẹn sánh ngang với tứ bình nổi tiếng ở Khánh Hòa: Bình Ba – Bình Hưng – Bình Lập – Bình Tiên. Hãy cùng HaidangTravel khám phá Điệp Sơn nhé.            </p>\n        </div>', 'Tour  đảo Điệp Sơn - Nha Trang 2n2đ - Hai Dang Travel', 'Tour  đảo Điệp Sơn - Nha Trang 2n2đ - Hai Dang Travel', 'Tour  đảo Điệp Sơn - Nha Trang 2n2đ - Hai Dang Travel', 'Tour  đảo Điệp Sơn - Nha Trang 2n2đ - Hai Dang Travel'),
(70, 2, 'Tour Cà Mau - Bạc Liêu - Sóc Trăng 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Thiên nhiên Cà Mau bao la, hào phóng; con người Cà Mau mộc mạc, hồn hậu, dễ thương .Đến với Cà Mau  bạn sẽ chẳng còn phải lo âu với cuộc sống thường ngày, bạn sẽ quên hết những nổi mệt nhọc trong cuộc sống để tận hưởng không khí trong lành và nhiều cảnh đẹp của vùng sông nước… Trong chuyến đi 2N2Đ này bạn còn được khám phá và viếng nhà thờ Cha Diệp, nhà công tử Bạc Liêu, viếng mộ cố Quán Âm Phật Đài, viếng Chùa Dơi, Chùa Đất Sét,… và đặc biệt là “Chinh Phục Điểm Cực Nam Của Tổ Quốc”.            </p>\n        </div>', 'Tour Cà Mau - Bạc Liêu - Sóc Trăng 2n2đ - Hai Dang Travel', 'Tour Cà Mau - Bạc Liêu - Sóc Trăng 2n2đ - Hai Dang Travel', 'Tour Cà Mau - Bạc Liêu - Sóc Trăng 2n2đ - Hai Dang Travel', 'Tour Cà Mau - Bạc Liêu - Sóc Trăng 2n2đ - Hai Dang Travel'),
(71, 2, 'Tour Bình Ba - Vĩnh Hy 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đến Bình Ba, du khách sẽ được tham quan bãi tắm hoang sơ nhất chưa có tên trên bản đồ du lịch khu vực miền Trung như: Bãi Bồ Đề, Bãi Nhà Cũ, Bãi Me, thỏa thích ngâm mình trong làng nước trong xanh tuyệt đẹp, lặn ngắm san hô và những đàn cá đầy màu sắc. Ngoài ra, bạn còn được tham quan Tịnh Thất Ngọc Gia Hương... Du khách cũng có thể leo lên tận lô cốt từ thời Pháp, được người dân địa phương gọi là Lầu Ông Hoàng Bình Ba ngắm trọn vẹn cảnh đẹp bình minh và ráng chiều hoàng hôn, rặng san hô, cát trắng đẹp như tranh vẽ của Vịnh Cam Ranh.            </p>\n        </div>', 'Tour Bình Ba - Vĩnh Hy 2n2đ - Hai Dang Travel', 'Tour Bình Ba - Vĩnh Hy 2n2đ - Hai Dang Travel', 'Tour Bình Ba - Vĩnh Hy 2n2đ - Hai Dang Travel', 'Tour Bình Ba - Vĩnh Hy 2n2đ - Hai Dang Travel'),
(72, 2, 'Tour Buôn Mê Thuột 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nhắc đến Buôn Ma Thuột, người ta thường nghĩ ngay đến những cánh đồng cà phê bạt ngàn. Không chỉ vậy, Buôn Mê Thuột còn hút hồn khách du lịch bởi những con thác cao ngất hùng vĩ, những vườn quốc gia mênh mông bí ẩn hay vẻ đẹp của dòng Serepôk huyền thoại. Hãy cùng Hải Đăng khám phá Buôn Ma Thuột nếu bạn đang có ý định du lịch đến đây nhé.            </p>\n        </div>', 'Tour Buôn Mê Thuột 3n3đ - Hai Dang Travel', 'Tour Buôn Mê Thuột 3n3đ - Hai Dang Travel', 'Tour Buôn Mê Thuột 3n3đ - Hai Dang Travel', 'Tour Buôn Mê Thuột 3n3đ - Hai Dang Travel'),
(73, 2, 'Tour Buôn Mê Thuột - Gia - Lai - Kon Tum - Măng Đen 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Khu du lịch sinh thái Măng Đen được du khách xa gần biết đến như “Đà Lạt thứ hai” của Tây Nguyên. Măng Đen vẫn giữ nguyên vẻ đẹp hoang sơ hiếm có của đại ngàn Tây Nguyên với rừng, suối, hồ và thác nước. Măng Đen e ấp ẩn mình bên cánh rừng nguyên sinh với những rặng thông đỏ bạt ngàn trải dài như vô tận, xen lẫn tiếng nước chảy róc rách quanh năm... <br />\r\nCảm giác thú vị bất ngờ xâm chiếm sau hành trình dài giữa đại ngàn hùng vĩ, du khách thấy Măng Đen bốn phía được bao bọc bởi sương mù, rừng thông, biệt thự và cái lạnh nhè nhẹ... Ngoài bạt ngàn cây xanh, ở Măng Đen thỉnh thoảng khách bộ hành còn bắt gặp nhiều suối, thác đẹp nổi tiếng như: Pa Sỹ, Đăk Ke, Lô Ba và những hồ thơ mộng: Toong Zơri, Toong Pô, Toong Đam.<br />\r\nLà một thị trấn thuộc huyện Kon Plong, tỉnh Kon Tum, Măng Đen được tự nhiên ưu ái khi mang trong mình đến tận bảy hồ, ba thác với dòng nước xanh trong ngọt ngào quanh năm. Tiết trời dịu nhẹ trên vùng cao nguyên xa xôi luôn làm cho tâm thái người lữ khách mỗi lần về đây đều căng tràn nhựa sống.             </p>\n        </div>', 'Tour Buôn Mê Thuột - Gia - Lai - Kon Tum - Măng Đen 3n3đ - Hai Dang Travel', 'Tour Buôn Mê Thuột - Gia - Lai - Kon Tum - Măng Đen 3n3đ - Hai Dang Travel', 'Tour Buôn Mê Thuột - Gia - Lai - Kon Tum - Măng Đen 3n3đ - Hai Dang Travel', 'Tour Buôn Mê Thuột - Gia - Lai - Kon Tum - Măng Đen 3n3đ - Hai Dang Travel'),
(74, 2, 'Tour Tứ Bình 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nếu như Nha Trang nổi tiếng với bãi biển xanh mướt trên nền cát trắng mịn màng, trải dài từ đất liền ra đến các đảo thì biển Cam Ranh lại mang vẻ đẹp hoang sơ hiền hòa với nhiều bãi tắm đẹp mê hồn như cõi thiên đường chốn nhân gian. Nước biển trong vắt, mặt biển phẳng như gương, gió mát dịu nhẹ - Đảo Bình Ba, biển Bình Lập, biển Bình Tiên, đảo Bình Hưng, TP.Cam Ranh, tỉnh Khánh Hòa được ví như một Maldives thu nhỏ của Việt Nam. Hãy cùng Hải Đăng khám phá một chương trình 4 điểm đến đầy hấp dẫn này bạn nhé.            </p>\n        </div>', 'Tour Tứ Bình 3n3đ - Hai Dang Travel', 'Tour Tứ Bình 3n3đ - Hai Dang Travel', 'Tour Tứ Bình 3n3đ - Hai Dang Travel', 'Tour Tứ Bình 3n3đ - Hai Dang Travel'),
(75, 2, 'Tour Tam Bình 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nếu như Nha Trang nổi tiếng với bãi biển xanh mướt trên nền cát trắng mịn màng, trải dài từ đất liền ra đến các đảo thì biển Cam Ranh lại mang vẻ đẹp hoang sơ hiền hòa với nhiều bãi tắm đẹp mê hồn như cõi thiên đường chốn nhân gian. Nước biển trong vắt, mặt biển phẳng như gương, gió mát dịu nhẹ - Đảo Bình Ba-,Biển Bình Tiên, đảo Bình Hưng, TP.Cam Ranh, tỉnh Khánh Hòa được ví như một Maldives thu nhỏ của Việt Nam. Hãy cùng Hải Đăng khám phá một chương trình 3 điểm đến đầy hấp dẫn này bạn nhé.            </p>\n        </div>', 'Tour Tam Bình 3n3đ - Hai Dang Travel', 'Tour Tam Bình 3n3đ - Hai Dang Travel', 'Tour Tam Bình 3n3đ - Hai Dang Travel', 'Tour Tam Bình 3n3đ - Hai Dang Travel'),
(77, 2, 'Tour Nha Trang - vịnh Vân Phong 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ai một lần đến Xuân Đừng (Khánh Hòa) cũng phải thốt lên, “đẹp quá!” để rồi quẩn quanh ở chốn này suốt cả ngày mà vẫn chưa muốn rời xa. Mọi thứ đều hoang sơ đến hồn nhiên. Cát trắng mịn màng và làn nước trong xanh màu ngọc bích, những rặng san hô sặc sỡ… như níu chân du khách.            </p>\n        </div>', 'Tour Nha Trang - vịnh Vân Phong 3n3đ - Hai Dang Travel', 'Tour Nha Trang - vịnh Vân Phong 3n3đ - Hai Dang Travel', 'Tour Nha Trang - vịnh Vân Phong 3n3đ - Hai Dang Travel', 'Tour Nha Trang - vịnh Vân Phong 3n3đ - Hai Dang Travel'),
(78, 2, 'Tour Nha Trang - siêu tiết kiệm 2n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nha Trang, được mệnh danh là một trong 29 vịnh đẹp nhất Thế giới khi có khá nhiều cảnh quan thiên nhiên đẹp tuyệt mỹ cùng nhiều điểm du lịch hấp dẫn, cho những ai yêu thích khám phá vẻ đẹp tiềm ẩn của thiên nhiên. Sở hữu những bãi biển xanh mát cùng bãi cát trắng mịn trải dài, Nha Trang như đang vẫy gọi du khách muôn phương tìm về một trong những thành phố biển xinh đẹp bậc nhất Việt Nam.             </p>\n        </div>', 'Tour Nha Trang - siêu tiết kiệm 2n3đ - Hai Dang Travel', 'Tour Nha Trang - siêu tiết kiệm 2n3đ - Hai Dang Travel', 'Tour Nha Trang - siêu tiết kiệm 2n3đ - Hai Dang Travel', 'Tour Nha Trang - siêu tiết kiệm 2n3đ - Hai Dang Travel');
INSERT INTO `hoaunet_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(79, 2, 'Tour Nha Trang - Con Sẻ Tre 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nha Trang, được mệnh danh là một trong 29 vịnh đẹp nhất Thế giới khi có khá nhiều cảnh quan thiên nhiên đẹp tuyệt mỹ cùng nhiều điểm du lịch hấp dẫn, cho những ai yêu thích khám phá vẻ đẹp tiềm ẩn của thiên nhiên. Sở hữu những bãi biển xanh mát cùng bãi cát trắng mịn trải dài, Nha Trang như đang vẫy gọi du khách muôn phương tìm về một trong những thành phố biển xinh đẹp bậc nhất Việt Nam.            </p>\n        </div>', 'Tour Nha Trang - Con Sẻ Tre 3n3đ - Hai Dang Travel', 'Tour Nha Trang - Con Sẻ Tre 3n3đ - Hai Dang Travel', 'Tour Nha Trang - Con Sẻ Tre 3n3đ - Hai Dang Travel', 'Tour Nha Trang - Con Sẻ Tre 3n3đ - Hai Dang Travel'),
(80, 2, 'Tour đảo Phú Quý huyền thoại 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đến với Phú Quý bạn như lạc vào huyền thoại , bởi cảnh sắc tuyệt vời mang đậm nét hoang sơ của vùng biển đảo nhưng vô cùng hùng vĩ và tráng lệ, khí trời mát mẽ quanh năm của gió biển sẽ làm tâm hồn bạn như trẻ lại. <br />\r\nCái thân thiện và cởi mở làm cho ai dù là lần đầu tiên đến với Phú Quý nhưng vẫn có cảm giác “nơi đây là quê hương của ta\" \"không muốn rời xa\" và \"nhất định sẽ quay lại\" là câu nói mà du khách nào cũng phải thốt lên khi sắp chia tay \"Phú Quý\".<br />\r\n            </p>\n        </div>', 'Tour đảo Phú Quý huyền thoại 3n3đ - Hai Dang Travel', 'Tour đảo Phú Quý huyền thoại 3n3đ - Hai Dang Travel', 'Tour đảo Phú Quý huyền thoại 3n3đ - Hai Dang Travel', 'Tour đảo Phú Quý huyền thoại 3n3đ - Hai Dang Travel'),
(81, 2, 'Tour đảo Nam Du 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đảo Nam Du còn gọi là Đảo Củ Tron là một hòn đảo lớn nhất trong quần đảo Nam Du nằm ở Đông Nam của đảo Phú Quốc, cách bờ biển Rạch Giá khoảng 65 hải lí (80km đường biển) về phía Nam, đi thuyền từ bến tàu Rạch Giá ra đảo Nam Du mất khoảng 2 tiếng đồng hồ. Đảo thuộc xã An Sơn và xã Nam Du thuộc huyện Kiên Hải, tỉnh Kiên Giang.<br />\r\nĐảo Nam Du rất đẹp, nước biển nơi đây rất sạch và trong bãi biển hoang sơ tự nhiên, đây là một hòn đảo đáng để khám phá trong kì nghỉ của bạn, hiện nay có rất nhiều bạn đang tìm kiếm thông tin về đảo Nam Du.            </p>\n        </div>', 'Tour đảo Nam Du 2n2đ - Hai Dang Travel', 'Tour đảo Nam Du 2n2đ - Hai Dang Travel', 'Tour đảo Nam Du 2n2đ - Hai Dang Travel', 'Tour đảo Nam Du 2n2đ - Hai Dang Travel'),
(82, 2, 'Tour Quảng Ngãi Lý Sơn 4n4đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Bạn dự định sẽ đi đâu trong kì nghỉ sắp tới khi mà những địa danh Phố Biển Nha Trang, Phố Hoa Đà Lạt, hay Đảo Ngọc Thiên Đường Phú Quốc .. đã trở nên quá quen thuộc! Bạn có muốn “đổi gió” cùng Hải Đăng? Một năm mới với những trải nghiệm mới! Hãy cùng chúng tôi khám phá  một hòn đảo của miền Trung nắng gió, tuy hoang sơ, khắc nghiệt mà kiên cường, nồng ấm tình người - Lý Sơn - hòn đảo được mệnh danh là Vương Quốc Tỏi!<br />\r\nCòn chần chờ gì nữa mà không: <br />\r\n“Về đi anh ta thăm đảo Lý Sơn<br />\r\nVới những di tích quốc gia, với chùa Hang, chùa Giếng<br />\r\nVới lễ hội cầu ngư, lễ khao lề thế lính<br />\r\nVới hương quê của vị tỏi, vị hành.”            </p>\n        </div>', 'Tour Quảng Ngãi Lý Sơn 4n4đ - Hai Dang Travel', 'Tour Quảng Ngãi Lý Sơn 4n4đ - Hai Dang Travel', 'Tour Quảng Ngãi Lý Sơn 4n4đ - Hai Dang Travel', 'Tour Quảng Ngãi Lý Sơn 4n4đ - Hai Dang Travel'),
(83, 2, 'Tour Đảo Hòn Sơn 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hòn Sơn Rái chưa phát triển du lịch, tuy nhiên, trên đảo có không ít quán ăn với giá mềm, chế biến ổn. Nếu tiết kiệm, bạn có thể mua hải sản ở chợ rồi tự chế biến. Các món bạn nên thưởng thức tại đây là cá ba thú chiên tươi, mực nướng, cá rìa canh chua, gỏi cá trích cuốn bánh tráng.<br />\r\nMột hoạt động khám phá khác bạn nên thực hiện tại đây là chinh phục các ngọn núi. Đảo có tất cả 7 ngọn núi, trong đó cao nhất là đỉnh Ma Thiên Lãnh. Hành trình chinh phục không phụ thuộc vào kỹ năng mà là sức bền, vì bạn sẽ phải đi qua ngàn bậc thang nối từ chân lên đỉnh ngọn núi. Bù lại, bạn sẽ được tận mắt chiêm ngưỡng Sân Tiên, nơi từng được các nàng tiên nữ ghé đến trong truyền thuyết, thu vào tầm mắt cả một vùng biển, núi bao la.            </p>\n        </div>', 'Tour Đảo Hòn Sơn 2n2đ - Hai Dang Travel', 'Tour Đảo Hòn Sơn 2n2đ - Hai Dang Travel', 'Tour Đảo Hòn Sơn 2n2đ - Hai Dang Travel', 'Tour Đảo Hòn Sơn 2n2đ - Hai Dang Travel'),
(84, 2, 'Tour Cà Mau - đảo Hòn Đá Bạc  3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                	THƯỞNG THỨC ĐẶC SẢN RỪNG U MINH<br />\r\n	ĐẦM THỊ TƯỜNG<br />\r\n	CỰC NAM TỔ QUỐC<br />\r\n            </p>\n        </div>', 'Tour Cà Mau - đảo Hòn Đá Bạc  3n3đ - Hai Dang Travel', 'Tour Cà Mau - đảo Hòn Đá Bạc  3n3đ - Hai Dang Travel', 'Tour Cà Mau - đảo Hòn Đá Bạc  3n3đ - Hai Dang Travel', 'Tour Cà Mau - đảo Hòn Đá Bạc  3n3đ - Hai Dang Travel'),
(85, 2, 'Tour khám phá Đảo Bình Ba 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                	RƯỢU TIỆC NỔI “BAR” TRÊN BIỂN<br />\r\n	BBQ HẢI SẢN<br />\r\n	ĐẶC BIỆT 1 KHÁCH 1 CON TÔM HÙM<br />\r\n	VƯỢT BIỂN BẰNG CANO SIÊU TỐC<br />\r\n	XE GIƯỜNG NẰM PHỤC VỤ RIÊNG            </p>\n        </div>', 'Tour khám phá Đảo Bình Ba 2n2đ - Hai Dang Travel', 'Tour khám phá Đảo Bình Ba 2n2đ - Hai Dang Travel', 'Tour khám phá Đảo Bình Ba 2n2đ - Hai Dang Travel', 'Tour khám phá Đảo Bình Ba 2n2đ - Hai Dang Travel'),
(86, 2, 'Tour Bình Hưng - Ninh Chữ 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                	VỀ MIỀN BIỂN NẮNG<br />\r\n	NINH CHỮ - VỊNH VĨNH HY <br />\r\n	ĐẢO BÌNH HƯNG<br />\r\n	NGẮM SAN HÔ TỪ TÀU ĐÁY KÍNH<br />\r\n	DANCING LỬU TRẠI<br />\r\n	NGHĨ DƯỠNG RESORT 3 SAO            </p>\n        </div>', 'Tour Bình Hưng - Ninh Chữ 2n2đ - Hai Dang Travel', 'Tour Bình Hưng - Ninh Chữ 2n2đ - Hai Dang Travel', 'Tour Bình Hưng - Ninh Chữ 2n2đ - Hai Dang Travel', 'Tour Bình Hưng - Ninh Chữ 2n2đ - Hai Dang Travel'),
(87, 2, 'Tour Hà Nội – Singapore – Malaysia – Hà Nội (Onetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: 18/5 - 15/6 -  06, 13, 20, 27/7/2017 <br />\r\nThời gian: 6 ngày 5 đêm<br />\r\nĐiểm khởi hành: Hà Nội <br />\r\nĐiểm đến: Du lịch Malaysia, Du lịch Singapore<br />\r\nHàng không: Malindo Airway/Tiger Air            </p>\n        </div>', 'Tour Hà Nội – Singapore – Malaysia – Hà Nội (Onetour Việt Nam)', 'Tour Hà Nội – Singapore – Malaysia – Hà Nội (Onetour Việt Nam)', 'Tour Hà Nội – Singapore – Malaysia – Hà Nội (Onetour Việt Nam)', 'Tour Hà Nội – Singapore – Malaysia – Hà Nội (Onetour Việt Nam)'),
(88, 2, 'Tour Hà Nội -  Dubai – Abu Dhabi – Dubai – Hà Nội ( Onetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: 24/3 - 01, 05, 06/4/2017 <br />\r\nThời gian: 6 ngày 5 đêm<br />\r\nĐiểm khởi hành: Hà Nội <br />\r\nĐiểm đến: Du lịch Dubai, Du lịch Abu Dhabi<br />\r\nHàng không: Emirates Airway            </p>\n        </div>', 'Tour Hà Nội -  Dubai – Abu Dhabi – Dubai – Hà Nội ( Onetour Việt Nam)', 'Tour Hà Nội -  Dubai – Abu Dhabi – Dubai – Hà Nội ( Onetour Việt Nam)', 'Tour Hà Nội -  Dubai – Abu Dhabi – Dubai – Hà Nội ( Onetour Việt Nam)', 'Tour Hà Nội -  Dubai – Abu Dhabi – Dubai – Hà Nội ( Onetour Việt Nam)'),
(89, 2, 'Tour Hà Nội – Seoul – Nami – Everland – Tháp Nam San – Hà Nội - Tặng Sauna ( Onetour Việt Nam)', '<div class=\"text_info_sp width_common\">\n            <p>\n                Ngày khởi hành: 13&29/03, 01,05,07,10,28/04 và 25/5/2017<br />\r\nThời gian: 05 ngày 04 đêm<br />\r\nĐiểm khởi hành: Hà Nội<br />\r\nĐiểm đến: Du lịch Seoul, Du lịch Hàn Quốc, Du lịch Nami<br />\r\nHàng không: Vietjet Air            </p>\n        </div>', 'Tour Hà Nội – Seoul – Nami – Everland – Tháp Nam San – Hà Nội - Tặng Sauna ( Onetour Việt Nam)', 'Tour Hà Nội – Seoul – Nami – Everland – Tháp Nam San – Hà Nội - Tặng Sauna ( Onetour Việt Nam)', 'Tour Hà Nội – Seoul – Nami – Everland – Tháp Nam San – Hà Nội - Tặng Sauna ( Onetour Việt Nam)', 'Tour Hà Nội – Seoul – Nami – Everland – Tháp Nam San – Hà Nội - Tặng Sauna ( Onetour Việt Nam)'),
(90, 2, 'Tour Phan Thiết - Đà Lạt 4n4đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Phan Thiết có rất nhiều bãi tắm mát rượi trong lành với những hàng dừa, hàng dương tạo nên một khung cảnh thiên nhiên rất gần gũi, mang đến những khoảnh khắc tuyệt vời nhất cho du khách trong và ngoài ước khi đến du lịch Phan Thiết. Đà Lạt với vẻ đẹp thơ mộng, lãng mạn sẽ là điểm nhấn không thể quên trong chuyến hành trình khám phá từ biển lên rừng Phan Thiết - Đà Lạt. Một chuyến du lịch với hai điểm đến hấp dẫn này sẽ thỏa lòng đam mê khám phá của mọi du khách.<br />\r\n            </p>\n        </div>', 'Tour Phan Thiết - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Phan Thiết - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Phan Thiết - Đà Lạt 4n4đ - Hai Dang Travel', 'Tour Phan Thiết - Đà Lạt 4n4đ - Hai Dang Travel'),
(91, 2, 'Tour đảo Bình Ba - Nha Trang 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nha Trang, được mệnh danh là một trong 29 vịnh đẹp nhất Thế giới khi có khá nhiều cảnh quan thiên nhiên đẹp tuyệt mỹ cùng nhiều điểm du lịch hấp dẫn, cho những ai yêu thích khám phá vẻ đẹp tiềm ẩn của thiên nhiên. Sở hữu những bãi biển xanh mát cùng bãi cát trắng mịn trải dài, Nha Trang như đang vẫy gọi du khách muôn phương tìm về một trong những thành phố biển xinh đẹp bậc nhất Việt Nam.             </p>\n        </div>', 'Tour đảo Bình Ba - Nha Trang 3n3đ - Hai Dang Travel', 'Tour đảo Bình Ba - Nha Trang 3n3đ - Hai Dang Travel', 'Tour đảo Bình Ba - Nha Trang 3n3đ - Hai Dang Travel', 'Tour đảo Bình Ba - Nha Trang 3n3đ - Hai Dang Travel'),
(92, 2, 'Tour đảo Bình Hưng - Nha Trang 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nha Trang, được mệnh danh là một trong 29 vịnh đẹp nhất Thế giới khi có khá nhiều cảnh quan thiên nhiên đẹp tuyệt mỹ cùng nhiều điểm du lịch hấp dẫn, cho những ai yêu thích khám phá vẻ đẹp tiềm ẩn của thiên nhiên. Sở hữu những bãi biển xanh mát cùng bãi cát trắng mịn trải dài, Nha Trang như đang vẫy gọi du khách muôn phương tìm về một trong những thành phố biển xinh đẹp bậc nhất Việt Nam.            </p>\n        </div>', 'Tour đảo Bình Hưng - Nha Trang 3n3đ - Hai Dang Travel', 'Tour đảo Bình Hưng - Nha Trang 3n3đ - Hai Dang Travel', 'Tour đảo Bình Hưng - Nha Trang 3n3đ - Hai Dang Travel', 'Tour đảo Bình Hưng - Nha Trang 3n3đ - Hai Dang Travel'),
(93, 2, 'Tour  Điệp Sơn - Phú Yên 4 sao 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Phú Yên là một tỉnh ven biển thuộc duyên hải nam trung bộ, phía bắc giáp Bình Định, phía nam giáp Khánh Hòa. với 3 mặt giáp núi, 1 mặt giáp biển đông. Nằm ở phía đông dãy trường sơn, Phú Yên được thiên nhiên ưu đãi nhiều danh lam thắng cảnh. Đây là Núi Nhạn sừng sững giữa thành phố tuy hòa, bên cạnh là dòng sông ba hiền hòa ngày ngày bồi đắp phù sa cho vựa lúa Miền Trung; kia là gành đá đĩa như một tạo hóa kỳ lạ của Thiên nhiên ban tặng cho con người, còn đó Vịnh Vũng rô với Chiến tích của những con tàu không số. Đến với Điệp Sơn điểm thú vị nhất của Điệp Sơn chính là  đi bộ theo con đường mòn trên biển kéo dài gần 700 mét, nối liền hòn đảo giữa với đảo Điệp Sơn lớn. Con đường uốn lượn, rộng khoảng 1 mét và nằm sâu dưới mặt nước biển trong xanh chưa đến nửa mét. Đặt chân thả bước trên con đường này đem lại cho du khách cảm giác vô cùng thích thú, xen lẫn hồi hộp và một chút sợ hãi như đang bước bước giữa đại dương bao la, 2 bên là sóng vỗ. Thích thú hơn là việc có thể thỏa thích ngắm nhìn những đàn cá nhỏ tung tăng bơi lội hai bên. Nước biển ở đây trong xanh nên có thể nhìn sâu tận đáy.            </p>\n        </div>', 'Tour  Điệp Sơn - Phú Yên 4 sao 3n3đ - Hai Dang Travel', 'Tour  Điệp Sơn - Phú Yên 4 sao 3n3đ - Hai Dang Travel', 'Tour  Điệp Sơn - Phú Yên 4 sao 3n3đ - Hai Dang Travel', 'Tour  Điệp Sơn - Phú Yên 4 sao 3n3đ - Hai Dang Travel'),
(94, 2, 'Tour Đảo Hòn Tre 2n2đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Nằm trong vùng nhiệt đới gió mùa, hòn Tre thuộc khu vực Vịnh Thái Lan nên Hòn Tre có khí hậu tương đồng như cùng Tây Nam Bộ của Việt Nam. Đây là một hòn đảo du lịch nổi tiếng tỉnh Kiên Giang.Hòn Tre là hòn đảo nhiều đồi núi thuộc tỉnh Kiên Giang, có độ cao trung bình trên 30m so với mặt nước biển. Toàn đảo có diện tích chưa tới 500km2 do đó bạn có thể thoải mái khám phá thiên nhiên toàn đảo trong một ngày nhé. Hòn đảo có 2 ngọn núi cao ở bắc đảo và nam đảo, đây là nơi để các tay leo núi cự phách tìm đến để chinh phục. Nên trang bị đầy đủ vật dụng và đồ nghề khi chinh phục nhé.            </p>\n        </div>', 'Tour Đảo Hòn Tre 2n2đ - Hai Dang Travel', 'Tour Đảo Hòn Tre 2n2đ - Hai Dang Travel', 'Tour Đảo Hòn Tre 2n2đ - Hai Dang Travel', 'Tour Đảo Hòn Tre 2n2đ - Hai Dang Travel'),
(95, 2, 'Tour Hà Tiên -Đảo Hải Tặc - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đảo Hải Tặc - Hà Tiên, miền đất nằm ở cực Tây Nam tổ quốc hấp dẫn du khách ngay từ cái tên gọi rất đẹp của mình.<br />\r\nNgay từ tên gọi, du khách đã có thể hình dung về quá khứ một thời trên đảo. Do nằm trong khu vực vịnh Hà Tiên - Rạch Giá ra đến vịnh Thái Lan, một tuyến đường thông thương quan trọng từ Trung Quốc sang các nước phương Tây, nên từ nhiều thế kỷ trước, quần đảo này là nơi lý tưởng để cướp biển đồn trú, ẩn nấp, mai phục và tấn công các tàu buôn qua lại. Đến tận những năm đầu thế kỷ 20, ở vùng biển này nạn cướp biển vẫn hoành hành.<br />\r\nKhông chỉ là nỗi ám ảnh của nhiều tàu thuyền, đảo Hải Tặc còn được cho là nơi cất giấu kho báu. Có người tin đó chỉ là lời đồn, cũng có người coi đó là sự thật. Nhưng nếu ngược thời gian về những năm 80 của thế kỷ trước, từng có người nước ngoài xâm nhập đảo với ý đồ truy tìm kho báu. Lời kể về một tấm bản đồ 300 tuổi chỉ dẫn đến kho báu cất giấu trên đảo, cùng một lượng lớn tiền cổ tìm được ở đây càng khiến đảo Hải Tặc trở nên đặc biệt hơn.            </p>\n        </div>', 'Tour Hà Tiên -Đảo Hải Tặc - Hai Dang Travel', 'Tour Hà Tiên -Đảo Hải Tặc - Hai Dang Travel', 'Tour Hà Tiên -Đảo Hải Tặc - Hai Dang Travel', 'Tour Hà Tiên -Đảo Hải Tặc - Hai Dang Travel'),
(42, 1, 'HÀNG NHẬP _ĐẦM XOÈ REN CHÂN VOAN LỤA CAO CẤP', '&lt;p&gt;&lt;span style=&quot;color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Gía : 450.000&lt;/span&gt;&lt;br style=&quot;color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span class=&quot;_5mfr _47e3&quot; style=&quot;line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;&quot;&gt;&lt;span class=&quot;_7oe&quot; style=&quot;display: inline-block; font-size: 0px; width: 0px; font-family: inherit;&quot;&gt;⚡️&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Chất liệu : Voan lụa 2 lớp+ Ren cao cấp&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span class=&quot;_5mfr _47e3&quot; style=&quot;line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;&quot;&gt;&lt;span class=&quot;_7oe&quot; style=&quot;display: inline-block; font-size: 0px; width: 0px; font-family: inherit;&quot;&gt;⚡️&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Xuất xứ : Hồng Kông&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span class=&quot;_5mfr _47e3&quot; style=&quot;line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;&quot;&gt;&lt;span class=&quot;_7oe&quot; style=&quot;display: inline-block; font-size: 0px; width: 0px; font-family: inherit;&quot;&gt;⚡️&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Size : M,L,XL&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;text_exposed_show&quot; style=&quot;display: inline; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41); font-size: 14px;&quot;&gt;&lt;br&gt;-----------------------------------------------&lt;br&gt;&lt;span class=&quot;_5mfr _47e3&quot; style=&quot;line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: inherit;&quot;&gt;&lt;span class=&quot;_7oe&quot; style=&quot;display: inline-block; font-size: 0px; width: 0px; font-family: inherit;&quot;&gt;????&lt;/span&gt;&lt;/span&gt;Thông số size&amp;nbsp;&lt;br&gt;&lt;span class=&quot;_5mfr _47e3&quot; style=&quot;line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: inherit;&quot;&gt;&lt;span class=&quot;_7oe&quot; style=&quot;display: inline-block; font-size: 0px; width: 0px; font-family: inherit;&quot;&gt;✅&lt;/span&gt;&lt;/span&gt;Size M : Ngực 88 , eo 72 dài đầm 110&lt;br&gt;&lt;span class=&quot;_5mfr _47e3&quot; style=&quot;line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: inherit;&quot;&gt;&lt;span class=&quot;_7oe&quot; style=&quot;display: inline-block; font-size: 0px; width: 0px; font-family: inherit;&quot;&gt;✅&lt;/span&gt;&lt;/span&gt;Size L : Ngực 92, eo 76 , dài đầm 111&lt;br&gt;&lt;span class=&quot;_5mfr _47e3&quot; style=&quot;line-height: 0; vertical-align: middle; margin: 0px 1px; font-family: inherit;&quot;&gt;&lt;span class=&quot;_7oe&quot; style=&quot;display: inline-block; font-size: 0px; width: 0px; font-family: inherit;&quot;&gt;✅&lt;/span&gt;&lt;/span&gt;Size XL : Ngực 96, eo 80, dài đầm 112&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', 'dam xoe, dam, dam voan', 'dam xoe, dam, dam voan', 'dam xoe, dam, dam voan', 'dam xoe, dam, dam voan'),
(42, 2, 'Tour Myanmar: Hà Nội - Yangon - Bago - Golden Rock - Chùa Nổi Thanlyn 5N Bay Emirates 5 Sao - Hoàng Việt Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Tham gia hành trình du lịch Myanmar 5N, du khách sẽ được bay hàng không 5*, nghỉ ngơi tại khách sạn tiện nghi. Được tham quan những ngôi chùa cổ kính, độc đáo nhất tại Myanmar, có tới hơn 1000 năm lịch sử. Thỏa sức tham quan và mua sắm tại trung tâm Ngọc nổi tiếng Myanmar. Hãy đăng ký ngay tour Myanmar để trải nghiệm.            </p>\n        </div>', 'Tour Myanmar: Hà Nội - Yangon - Bago - Golden Rock - Chùa Nổi Thanlyn 5N Bay Emirates 5 Sao - Hoàng Việt Travel', 'Tour Myanmar: Hà Nội - Yangon - Bago - Golden Rock - Chùa Nổi Thanlyn 5N Bay Emirates 5 Sao - Hoàng Việt Travel', 'Tour Myanmar: Hà Nội - Yangon - Bago - Golden Rock - Chùa Nổi Thanlyn 5N Bay Emirates 5 Sao - Hoàng Việt Travel', 'Tour Myanmar: Hà Nội - Yangon - Bago - Golden Rock - Chùa Nổi Thanlyn 5N Bay Emirates 5 Sao - Hoàng Việt Travel'),
(244, 2, 'Du lịch Cần Thơ - Cà Mau - Sóc Trăng Bạc Liêu 4 ngày giá tốt hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đến với hành trình miền Tây dịp hè này, du khách có dịp ghé Sóc Trăng, thăm Chùa Dơi để chiêm ngưỡng lối kiến trúc Khơmer độc đáo và nghe kể về đàn dơi huyền bí trụ ngụ trong khuôn viên chùa. Đặt chân đến Đất Mũi vùng đất cuối cùng của Tổ quốc. Hay đến Bạc Liêu nghe nhắc lại những giai thoại nức tiếng về sự xa hoa của chàng Công Tử tiêu tiền như nước. Ngoài ra, Du khách còn được tìm hiểu về điệu Dạ Cổ Hoài Lang, thăm những di tích lịch sử, điểm du lịch sinh thái và đặc biệt là những điểm du lịch tâm linh gắn liền với cảnh quan và các câu chuyện cổ xưa….<br />\r\n<br />\r\nHành trình: Mỹ Tho - Cần Thơ - Cà Mau - Đất Mũi - Sóc Trăng - Bạc Liêu<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 5 hàng tuần             </p>\n        </div>', 'Du lịch Cần Thơ - Cà Mau - Sóc Trăng Bạc Liêu 4 ngày giá tốt hè 2017', 'Du lịch Cần Thơ - Cà Mau - Sóc Trăng Bạc Liêu 4 ngày giá tốt hè 2017', 'Du lịch Cần Thơ - Cà Mau - Sóc Trăng Bạc Liêu 4 ngày giá tốt hè 2017', 'Du lịch Cần Thơ - Cà Mau - Sóc Trăng Bạc Liêu 4 ngày giá tốt hè 2017'),
(245, 2, 'Tour thiên đường đảo Phú Quý, thưởng thức cua Huỳnh Đế 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Phan Thiết - Đảo Phú Quý<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 6 hàng tuần             </p>\n        </div>', 'Tour thiên đường đảo Phú Quý, thưởng thức cua Huỳnh Đế 2017', 'Tour thiên đường đảo Phú Quý, thưởng thức cua Huỳnh Đế 2017', 'Tour thiên đường đảo Phú Quý, thưởng thức cua Huỳnh Đế 2017', 'Tour thiên đường đảo Phú Quý, thưởng thức cua Huỳnh Đế 2017'),
(246, 2, 'Du lịch Điệp Sơn chinh phục con đường mòn trên biển giá tốt hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Nha Trang - Đảo Điệp Sơn - VinpearLand - Nhà Thờ Đá<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: Tối thứ 5 hàng tuần             </p>\n        </div>', 'Du lịch Điệp Sơn chinh phục con đường mòn trên biển giá tốt hè 2017', 'Du lịch Điệp Sơn chinh phục con đường mòn trên biển giá tốt hè 2017', 'Du lịch Điệp Sơn chinh phục con đường mòn trên biển giá tốt hè 2017', 'Du lịch Điệp Sơn chinh phục con đường mòn trên biển giá tốt hè 2017'),
(247, 2, 'Du lịch miền Tây - Trải nghiệm làm người dân miệt vườn chính hiệu Hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Sóc Trăng - Cồn Mỹ Phước - Chợ Nổi Ngã Năm - Cần Thơ - Thiền Viện Trúc Lâm<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 6 hàng tuần             </p>\n        </div>', 'Du lịch miền Tây - Trải nghiệm làm người dân miệt vườn chính hiệu Hè 2017', 'Du lịch miền Tây - Trải nghiệm làm người dân miệt vườn chính hiệu Hè 2017', 'Du lịch miền Tây - Trải nghiệm làm người dân miệt vườn chính hiệu Hè 2017', 'Du lịch miền Tây - Trải nghiệm làm người dân miệt vườn chính hiệu Hè 2017'),
(248, 2, 'Du lịch Đà Lạt - Đồi Mộng Mơ - Langbiang 4 ngày giá tốt dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt  - Thành phố chưa bao giờ hết hot, đến với xứ sở mộng mơ bạn được thưởng ngoạn không gian tuyệt đẹp không góc chết, cùng Du Lịch Việt tham quan các địa điểm nổi tiếng để trải nghiệm cảnh sắc của thành phố ngàn hoa nhé.<br />\r\n<br />\r\nHành trình: Đà Lạt - Thác Datanla - Ga Đà Lạt - Hầm Đất Sét - Đồi Mộng Mơ - Langbiang - Thiền Viện Trúc Lâm<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\nNgày khởi hành: Thứ 5 hàng tuần             </p>\n        </div>', 'Du lịch Đà Lạt - Đồi Mộng Mơ - Langbiang 4 ngày giá tốt dịp hè 2017', 'Du lịch Đà Lạt - Đồi Mộng Mơ - Langbiang 4 ngày giá tốt dịp hè 2017', 'Du lịch Đà Lạt - Đồi Mộng Mơ - Langbiang 4 ngày giá tốt dịp hè 2017', 'Du lịch Đà Lạt - Đồi Mộng Mơ - Langbiang 4 ngày giá tốt dịp hè 2017'),
(249, 2, 'Tour Phú Yên - Đại Lãnh 5 sao  3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Phú Yên là một tỉnh ven biển thuộc duyên hải nam trung bộ, phía bắc giáp Bình Định, phía nam giáp Khánh Hòa. với 3 mặt giáp núi, 1 mặt giáp biển đông. Nằm ở phía đông dãy trường sơn, Phú Yên được thiên nhiên ưu đãi nhiều danh lam thắng cảnh. Đây là Núi Nhạn sừng sững giữa thành phố tuy hòa, bên cạnh là dòng sông ba hiền hòa ngày ngày bồi đắp phù sa cho vựa lúa Miền Trung; kia là gành đá đĩa như một tạo hóa kỳ lạ của Thiên nhiên ban tặng cho con người, còn đó Vịnh Vũng rô với Chiến tích của những con tàu không số. Mời các quý khách đến với Phú Yên với những danh lam thắng cảnh và lòng mến khách của người dân xứ nẫu.            </p>\n        </div>', 'Tour Phú Yên - Đại Lãnh 5 sao  3n3đ - Hai Dang Travel', 'Tour Phú Yên - Đại Lãnh 5 sao  3n3đ - Hai Dang Travel', 'Tour Phú Yên - Đại Lãnh 5 sao  3n3đ - Hai Dang Travel', 'Tour Phú Yên - Đại Lãnh 5 sao  3n3đ - Hai Dang Travel'),
(250, 2, 'TOUR PHÚ YÊN - VỊNH VÂN PHONG 3N3Đ - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                Phú Yên là một tỉnh ven biển thuộc duyên hải nam trung bộ, phía bắc giáp Bình Định, phía nam giáp Khánh Hòa. với 3 mặt giáp núi, 1 mặt giáp biển đông. Nằm ở phía đông dãy trường sơn, Phú Yên được thiên nhiên ưu đãi nhiều danh lam thắng cảnh. Đây là Núi Nhạn sừng sững giữa thành phố tuy hòa, bên cạnh là dòng sông ba hiền hòa ngày ngày bồi đắp phù sa cho vựa lúa Miền Trung; kia là gành đá đĩa như một tạo hóa kỳ lạ của Thiên nhiên ban tặng cho con người, còn đó Vịnh Vũng rô với Chiến tích của những con tàu không số, đến với vịnh vân phong được ví như nàng công chúa ngủ quên trên biển cả mênh mông, vịnh vân phong kiêu sa, kiều diễm ru hồn du khách bởi bãi cát trắng trải dài mênh mông, làn nước biển xanh trong và lòng đại dương rực rỡ sắc màu của đa dạng các loài san hô hay sinh vật biển. là một kỳ quan thiên nhiên với khí hậu ôn hoà, bãi biển đẹp, cát mịn, núi đồi hùng vĩ bao quanh. Mời các quý khách đến với Phú Yên với những danh lam thắng cảnh và lòng mến khách của người dân xứ nẫu.            </p>\n        </div>', 'TOUR PHÚ YÊN - VỊNH VÂN PHONG 3N3Đ - HAI DANG TRAVEL', 'TOUR PHÚ YÊN - VỊNH VÂN PHONG 3N3Đ - HAI DANG TRAVEL', 'TOUR PHÚ YÊN - VỊNH VÂN PHONG 3N3Đ - HAI DANG TRAVEL', 'TOUR PHÚ YÊN - VỊNH VÂN PHONG 3N3Đ - HAI DANG TRAVEL'),
(251, 2, 'Tour Phú Yên - Vịnh Vân Phong 5 Sao 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Phú Yên là một tỉnh ven biển thuộc duyên hải nam trung bộ, phía bắc giáp Bình Định, phía nam giáp Khánh Hòa. với 3 mặt giáp núi, 1 mặt giáp biển đông. Nằm ở phía đông dãy trường sơn, Phú Yên được thiên nhiên ưu đãi nhiều danh lam thắng cảnh. Đây là Núi Nhạn sừng sững giữa thành phố tuy hòa, bên cạnh là dòng sông ba hiền hòa ngày ngày bồi đắp phù sa cho vựa lúa Miền Trung; kia là gành đá đĩa như một tạo hóa kỳ lạ của Thiên nhiên ban tặng cho con người, còn đó Vịnh Vũng rô với Chiến tích của những con tàu không số, đến với vịnh vân phong được ví như nàng công chúa ngủ quên trên biển cả mênh mông, vịnh vân phong kiêu sa, kiều diễm ru hồn du khách bởi bãi cát trắng trải dài mênh mông, làn nước biển xanh trong và lòng đại dương rực rỡ sắc màu của đa dạng các loài san hô hay sinh vật biển. là một kỳ quan thiên nhiên với khí hậu ôn hoà, bãi biển đẹp, cát mịn, núi đồi hùng vĩ bao quanh. Mời các quý khách đến với Phú Yên với những danh lam thắng cảnh và lòng mến khách của người dân xứ nẫu.            </p>\n        </div>', 'Tour Phú Yên - Vịnh Vân Phong 5 Sao 3n3đ - Hai Dang Travel', 'Tour Phú Yên - Vịnh Vân Phong 5 Sao 3n3đ - Hai Dang Travel', 'Tour Phú Yên - Vịnh Vân Phong 5 Sao 3n3đ - Hai Dang Travel', 'Tour Phú Yên - Vịnh Vân Phong 5 Sao 3n3đ - Hai Dang Travel'),
(252, 2, 'Tour Đà Lạt - ẩm thực 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt là một tour phổ biến, là điểm du lịch khá quen thuộc trong lòng du khách, Những KDL nổi tiếng ở Đà Lạt, du khách đã không thể bỏ qua nếu như một lần đặt chân lên xứ sở Sương Mù này.<br />\r\nNhưng đến với tour du lịch này, quý khách sẽ tiếp tục có cơ hội khám phá những điểm độc đáo, “quen mà như lạ” và  thật thích thú vô cùng khi càng tìm hiểu càng thấy hay.<br />\r\n            </p>\n        </div>', 'Tour Đà Lạt - ẩm thực 3n3đ - Hai Dang Travel', 'Tour Đà Lạt - ẩm thực 3n3đ - Hai Dang Travel', 'Tour Đà Lạt - ẩm thực 3n3đ - Hai Dang Travel', 'Tour Đà Lạt - ẩm thực 3n3đ - Hai Dang Travel'),
(253, 2, 'Tour Đà Lạt Milk 3n3đ -Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt là một tour phổ biến, là điểm du lịch khá quen thuộc trong lòng du khách, Những KDL nổi tiếng ở Đà Lạt, du khách đã không thể bỏ qua nếu như một lần đặt chân lên xứ sở Sương Mù này.<br />\r\nNhưng đến với tour du lịch này, quý khách sẽ tiếp tục có cơ hội khám phá những điểm độc đáo, “quen mà như lạ” và  thật thích thú vô cùng khi càng tìm hiểu càng thấy hay.<br />\r\n            </p>\n        </div>', 'Tour Đà Lạt Milk 3n3đ -Hai Dang Travel', 'Tour Đà Lạt Milk 3n3đ -Hai Dang Travel', 'Tour Đà Lạt Milk 3n3đ -Hai Dang Travel', 'Tour Đà Lạt Milk 3n3đ -Hai Dang Travel'),
(254, 2, 'Tour Đà Lạt - Hồ Tuyền Lâm 3n3đ - Hai Dang Travel', '<div class=\"text_info_sp width_common\">\n            <p>\n                Đà Lạt là một tour phổ biến, là điểm du lịch khá quen thuộc trong lòng du khách, Những KDL nổi tiếng ở Đà Lạt, du khách đã không thể bỏ qua nếu như một lần đặt chân lên xứ sở Sương Mù này.<br />\r\nNhưng đến với tour du lịch này, quý khách sẽ tiếp tục có cơ hội khám phá những điểm độc đáo, “quen mà như lạ” và  thật thích thú vô cùng khi càng tìm hiểu càng thấy hay.<br />\r\n            </p>\n        </div>', 'Tour Đà Lạt - Hồ Tuyền Lâm 3n3đ - Hai Dang Travel', 'Tour Đà Lạt - Hồ Tuyền Lâm 3n3đ - Hai Dang Travel', 'Tour Đà Lạt - Hồ Tuyền Lâm 3n3đ - Hai Dang Travel', 'Tour Đà Lạt - Hồ Tuyền Lâm 3n3đ - Hai Dang Travel'),
(255, 2, 'Tour du lịch Dubai: Hà Nội - Dubai - Abu Dhabi 6 ngày bay Emirate Airlines 5 sao', '<div class=\"text_info_sp width_common\">\n            <p>\n                Du lịch Dubai, điểm đến xứng danh với câu nói \"Thánh địa của thế giới vật chất\" với các kỷ lục guiness như nhà cao tầng nhất thế giới, khách sang sang trọng bậc nhất thế giới và là thiên đường mua sắm bậc nhất trên thế giới… Hãy cùng Hoàng Việt - Open khám phá tour du lịch Dubai 6 ngày, bay hàng không đẳng cấp 5 sao, khách sạn 4 sao ngay hôm nay nhé !<br />\r\n- Tặng vé lên tầng 124 tháp Burj Khalifa cao nhất thế giới<br />\r\n- Tặng đại tiệc buffet nướng + xem múa bụng belly dance<br />\r\n- Trải nghiệm cưỡi lạc đà và tour xe tốc độ trên sa mạc            </p>\n        </div>', 'Tour du lịch Dubai: Hà Nội - Dubai - Abu Dhabi 6 ngày bay Emirate Airlines 5 sao', 'Tour du lịch Dubai: Hà Nội - Dubai - Abu Dhabi 6 ngày bay Emirate Airlines 5 sao', 'Tour du lịch Dubai: Hà Nội - Dubai - Abu Dhabi 6 ngày bay Emirate Airlines 5 sao', 'Tour du lịch Dubai: Hà Nội - Dubai - Abu Dhabi 6 ngày bay Emirate Airlines 5 sao'),
(256, 2, 'Tour du lịch Campuchia: Hà Nội - Siem Riep - Phnompenh 4 ngày bay Vietjet Air', '<div class=\"text_info_sp width_common\">\n            <p>\n                Tưng bừng khai trương đường bay thẳng của hãng hàng không Vietjet Air chặng Hà Nội - Siêm Riệp. Khám phá đất nước chùa tháp với nhiều địa danh nổi tiếng đã được Unesco công nhận như đền Angkor Wat, Ta Pruhm,... Thưởng thức vũ điệu Apsara truyền thống đặc sắc cùng rất nhiều món ăn đặc sản thú vị. Đặt tour đi du lịch Campuchia ngay hôm nay và cảm nhận            </p>\n        </div>', 'Tour du lịch Campuchia: Hà Nội - Siem Riep - Phnompenh 4 ngày bay Vietjet Air', 'Tour du lịch Campuchia: Hà Nội - Siem Riep - Phnompenh 4 ngày bay Vietjet Air', 'Tour du lịch Campuchia: Hà Nội - Siem Riep - Phnompenh 4 ngày bay Vietjet Air', 'Tour du lịch Campuchia: Hà Nội - Siem Riep - Phnompenh 4 ngày bay Vietjet Air'),
(257, 2, 'Du lịch Tây Bắc mùa nước đổ giá tốt hè 2017 khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: TÂY BẮC: Hà Nội - Đền Hùng - Suối Giang - Nghĩa Lộ - Mù Cang Chải - Sapa - Bản Cát Cát - Fansipan - Lai Châu - Điện Biên - Mộc Châu - Đồi Chè Trái Tim<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 6 ngày 5 đêm<br />\r\n<br />\r\nNgày khởi hành: 6,13,20,27/6; 4,11,18,25/7; 1,8,15,22,29/8 <br />\r\nKhách sạn 2*,3*            </p>\n        </div>', 'Du lịch Tây Bắc mùa nước đổ giá tốt hè 2017 khởi hành từ Sài Gòn', 'Du lịch Tây Bắc mùa nước đổ giá tốt hè 2017 khởi hành từ Sài Gòn', 'Du lịch Tây Bắc mùa nước đổ giá tốt hè 2017 khởi hành từ Sài Gòn', 'Du lịch Tây Bắc mùa nước đổ giá tốt hè 2017 khởi hành từ Sài Gòn'),
(258, 2, 'Du lịch Miền Trung - Huế dịp lễ hội pháo hoa Quốc tế Đà Nẵng 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Lễ hội Pháo hoa Quốc tế Đà Nẵng năm 2017: ĐÀ NẴNG – BÀ NÀ – NGŨ HÀNH SƠN BÁN ĐẢO SƠN TRÀ – HỘI AN – HUẾ<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: 2,24/6 <br />\r\nTham quan lễ hội pháo hoa quốc tế Đà Nẵng 2017<br />\r\nKS 3*            </p>\n        </div>', 'Du lịch Miền Trung - Huế dịp lễ hội pháo hoa Quốc tế Đà Nẵng 2017', 'Du lịch Miền Trung - Huế dịp lễ hội pháo hoa Quốc tế Đà Nẵng 2017', 'Du lịch Miền Trung - Huế dịp lễ hội pháo hoa Quốc tế Đà Nẵng 2017', 'Du lịch Miền Trung - Huế dịp lễ hội pháo hoa Quốc tế Đà Nẵng 2017'),
(259, 2, 'Du lịch Miền Trung - Đà Nẵng - Huế - Phong Nha hè 2017 bay từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: ĐÀ NẴNG - BÀ NÀ - HỘI AN - HUẾ - LA VANG - PHONG NHA<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 1,3,10,11,15,16,17,20,25/6; 6,14,20,22,28/7 <br />\r\nKhách sạn 3*            </p>\n        </div>', 'Du lịch Miền Trung - Đà Nẵng - Huế - Phong Nha hè 2017 bay từ Sài Gòn', 'Du lịch Miền Trung - Đà Nẵng - Huế - Phong Nha hè 2017 bay từ Sài Gòn', 'Du lịch Miền Trung - Đà Nẵng - Huế - Phong Nha hè 2017 bay từ Sài Gòn', 'Du lịch Miền Trung - Đà Nẵng - Huế - Phong Nha hè 2017 bay từ Sài Gòn'),
(260, 2, 'Du lịch Miền Trung - Huế - La Vang - Động Thiên Đường hè 2017 từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: ĐÀ NẴNG - BÀ NÀ - HỘI AN - HUẾ - THÁNH ĐỊA LA VANG - ĐỘNG THIÊN ĐƯỜNG<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 14,15,24,29,30/6; 1,8,1522,29/7 <br />\r\nKhách sạn 3*            </p>\n        </div>', 'Du lịch Miền Trung - Huế - La Vang - Động Thiên Đường hè 2017 từ Sài Gòn', 'Du lịch Miền Trung - Huế - La Vang - Động Thiên Đường hè 2017 từ Sài Gòn', 'Du lịch Miền Trung - Huế - La Vang - Động Thiên Đường hè 2017 từ Sài Gòn', 'Du lịch Miền Trung - Huế - La Vang - Động Thiên Đường hè 2017 từ Sài Gòn'),
(261, 2, 'Du lịch Miền Trung - Đà Nẵng - Huế - Hồ Truồi hè 2017 bay từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: ĐÀ NẴNG - BÀ NÀ - HỘI AN - HUẾ - HỒ TRUỒI - BẠCH MÃ<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 10,16,17,29/6; 6,14,20,28/7 <br />\r\nKhách sạn 3*            </p>\n        </div>', 'Du lịch Miền Trung - Đà Nẵng - Huế - Hồ Truồi hè 2017 bay từ Sài Gòn', 'Du lịch Miền Trung - Đà Nẵng - Huế - Hồ Truồi hè 2017 bay từ Sài Gòn', 'Du lịch Miền Trung - Đà Nẵng - Huế - Hồ Truồi hè 2017 bay từ Sài Gòn', 'Du lịch Miền Trung - Đà Nẵng - Huế - Hồ Truồi hè 2017 bay từ Sài Gòn'),
(262, 2, 'Du lịch Miền Trung - Cù Lao Chàm 4 ngày bay từ Sài Gòn giá tốt hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Đà Nẵng - Bà Nà - Hội An - Cù lao Chàm - Huế - Lăng Khải Định - Đại Nội<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 10,30/06; 1,2,6,9,12,16,20,22,23,29,30/07 <br />\r\nKhách sạn 3*            </p>\n        </div>', 'Du lịch Miền Trung - Cù Lao Chàm 4 ngày bay từ Sài Gòn giá tốt hè 2017', 'Du lịch Miền Trung - Cù Lao Chàm 4 ngày bay từ Sài Gòn giá tốt hè 2017', 'Du lịch Miền Trung - Cù Lao Chàm 4 ngày bay từ Sài Gòn giá tốt hè 2017', 'Du lịch Miền Trung - Cù Lao Chàm 4 ngày bay từ Sài Gòn giá tốt hè 2017'),
(263, 2, 'Du lịch Miền Trung - Huế - Hội An - Động Phong Nha hè 2017 từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: ĐÀ NẴNG - BÀ NÀ - HỘI AN - HUẾ - THÁNH ĐỊA LA VANG - ĐỘNG PHONG NHA<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 7,15,20,29,30/6; 7,19,26/7 <br />\r\nKhách sạn 3*            </p>\n        </div>', 'Du lịch Miền Trung - Huế - Hội An - Động Phong Nha hè 2017 từ Sài Gòn', 'Du lịch Miền Trung - Huế - Hội An - Động Phong Nha hè 2017 từ Sài Gòn', 'Du lịch Miền Trung - Huế - Hội An - Động Phong Nha hè 2017 từ Sài Gòn', 'Du lịch Miền Trung - Huế - Hội An - Động Phong Nha hè 2017 từ Sài Gòn'),
(264, 2, 'Du lịch Miền Trung - Động Thiên Đường 5 ngày hè 2017 bay từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Đà Nẵng - Hội An - Huế - La Vang - Động Thiên Đường<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 9,14,16,28/6; 5,14,21,28/7 <br />\r\nKhách sạn 3*            </p>\n        </div>', 'Du lịch Miền Trung - Động Thiên Đường 5 ngày hè 2017 bay từ Sài Gòn', 'Du lịch Miền Trung - Động Thiên Đường 5 ngày hè 2017 bay từ Sài Gòn', 'Du lịch Miền Trung - Động Thiên Đường 5 ngày hè 2017 bay từ Sài Gòn', 'Du lịch Miền Trung - Động Thiên Đường 5 ngày hè 2017 bay từ Sài Gòn'),
(265, 2, 'Tour Đà Nẵng - Lào - Đông Bắc Thái - Khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Đà Nẵng - Huế - Nakhon Phanom - Viên Chăn - Savannakhet<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: 16,30/06; 14,28/07 <br />\r\nKhách sạn 3* + Savanakhet 4*            </p>\n        </div>', 'Tour Đà Nẵng - Lào - Đông Bắc Thái - Khởi hành từ Sài Gòn', 'Tour Đà Nẵng - Lào - Đông Bắc Thái - Khởi hành từ Sài Gòn', 'Tour Đà Nẵng - Lào - Đông Bắc Thái - Khởi hành từ Sài Gòn', 'Tour Đà Nẵng - Lào - Đông Bắc Thái - Khởi hành từ Sài Gòn'),
(266, 2, 'Du lịch Nha Trang - Vinpearl - Nhà Thờ Đá 4 ngày đi Sài Gòn hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Nha Trang – Du ngoạn 4 đảo - Tháp Bà Ponagar – Vinpearland – Nhà thời đá<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 5 hàng tuần             </p>\n        </div>', 'Du lịch Nha Trang - Vinpearl - Nhà Thờ Đá 4 ngày đi Sài Gòn hè 2017', 'Du lịch Nha Trang - Vinpearl - Nhà Thờ Đá 4 ngày đi Sài Gòn hè 2017', 'Du lịch Nha Trang - Vinpearl - Nhà Thờ Đá 4 ngày đi Sài Gòn hè 2017', 'Du lịch Nha Trang - Vinpearl - Nhà Thờ Đá 4 ngày đi Sài Gòn hè 2017'),
(267, 2, 'Du lịch Miền Tây - Hòn Sơn - Nam Du 3 ngày 3 đêm khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Khám Phá Hòn Sơn – Đảo Nam Du<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: Tối thứ 5 (tháng 6,7)             </p>\n        </div>', 'Du lịch Miền Tây - Hòn Sơn - Nam Du 3 ngày 3 đêm khởi hành từ Sài Gòn', 'Du lịch Miền Tây - Hòn Sơn - Nam Du 3 ngày 3 đêm khởi hành từ Sài Gòn', 'Du lịch Miền Tây - Hòn Sơn - Nam Du 3 ngày 3 đêm khởi hành từ Sài Gòn', 'Du lịch Miền Tây - Hòn Sơn - Nam Du 3 ngày 3 đêm khởi hành từ Sài Gòn'),
(268, 2, 'Du lịch Nha Trang - Đà Lạt 5 ngày khởi hành từ Sài Gòn dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Nha Trang - Đà Lạt<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 5 ngày 4 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 4 hàng tuần             </p>\n        </div>', 'Du lịch Nha Trang - Đà Lạt 5 ngày khởi hành từ Sài Gòn dịp hè 2017', 'Du lịch Nha Trang - Đà Lạt 5 ngày khởi hành từ Sài Gòn dịp hè 2017', 'Du lịch Nha Trang - Đà Lạt 5 ngày khởi hành từ Sài Gòn dịp hè 2017', 'Du lịch Nha Trang - Đà Lạt 5 ngày khởi hành từ Sài Gòn dịp hè 2017'),
(269, 2, 'Du lịch Miền Tây - Hà Tiên - Phú Quốc 4 ngày 3 đêm giá tốt dịp hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Hà Tiên – Chùa Hang – Hòn Phụ Tử – Lăng Mạc Cửu - Làng chài Hàm Ninh – Vinpearl – Bãi Sao – Câu Cá, Ngắm San Hô<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: Thứ 5 hàng tuần             </p>\n        </div>', 'Du lịch Miền Tây - Hà Tiên - Phú Quốc 4 ngày 3 đêm giá tốt dịp hè 2017', 'Du lịch Miền Tây - Hà Tiên - Phú Quốc 4 ngày 3 đêm giá tốt dịp hè 2017', 'Du lịch Miền Tây - Hà Tiên - Phú Quốc 4 ngày 3 đêm giá tốt dịp hè 2017', 'Du lịch Miền Tây - Hà Tiên - Phú Quốc 4 ngày 3 đêm giá tốt dịp hè 2017'),
(270, 2, 'Du lịch Phú Quốc siêu khuyến mãi Vietnam Airlines khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Phú Quốc - Nam Đảo - Bãi Sao -Vietnam Airlines<br />\r\nTẶNG CÂU CÁ, NGẮM SAN HÔ<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: 10,24/8; 14,28/9 <br />\r\nKS 2*, TẶNG CÂU CÁ, NGẮM SAN HÔ, bay VIETNAM AIRLINES            </p>\n        </div>', 'Du lịch Phú Quốc siêu khuyến mãi Vietnam Airlines khởi hành từ Sài Gòn', 'Du lịch Phú Quốc siêu khuyến mãi Vietnam Airlines khởi hành từ Sài Gòn', 'Du lịch Phú Quốc siêu khuyến mãi Vietnam Airlines khởi hành từ Sài Gòn', 'Du lịch Phú Quốc siêu khuyến mãi Vietnam Airlines khởi hành từ Sài Gòn'),
(271, 2, 'Du lịch Phú Quốc - Nam Đảo - Vinpearl khởi hành từ Sài Gòn hè 2017', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: PHÚ QUỐC - TẶNG CÂU CÁ, NGẮM SAN HÔ - TẶNG 20KG HÀNH LÝ<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: <br />\r\n1,3,10,15,17,24,29/6<br />\r\n1,6,8,13,15,20,22,27,29/7<br />\r\n3,5/8<br />\r\nKS 2*, TẶNG CÂU CÁ, NGẮM SAN HÔ            </p>\n        </div>', 'Du lịch Phú Quốc - Nam Đảo - Vinpearl khởi hành từ Sài Gòn hè 2017', 'Du lịch Phú Quốc - Nam Đảo - Vinpearl khởi hành từ Sài Gòn hè 2017', 'Du lịch Phú Quốc - Nam Đảo - Vinpearl khởi hành từ Sài Gòn hè 2017', 'Du lịch Phú Quốc - Nam Đảo - Vinpearl khởi hành từ Sài Gòn hè 2017'),
(272, 2, 'Du lịch Phú Yên - Vũng Rô - Gành Đá Đĩa hè 2017 khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Tuy Hòa - Bãi Xếp - Vũng Rô - Gành Đá Dĩa - Đầm Ô Loan<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: 6,13,20,27/6; 2,6,9,13,16,20,24,27/7; 2,6,9,13,16,20,23,27,30/8<br />\r\nKhách sạn 4*            </p>\n        </div>', 'Du lịch Phú Yên - Vũng Rô - Gành Đá Đĩa hè 2017 khởi hành từ Sài Gòn', 'Du lịch Phú Yên - Vũng Rô - Gành Đá Đĩa hè 2017 khởi hành từ Sài Gòn', 'Du lịch Phú Yên - Vũng Rô - Gành Đá Đĩa hè 2017 khởi hành từ Sài Gòn', 'Du lịch Phú Yên - Vũng Rô - Gành Đá Đĩa hè 2017 khởi hành từ Sài Gòn'),
(273, 2, 'Du lịch Quy Nhơn siêu khuyến mãi Vietnam Airlines - khời hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Quy Nhơn Hòn Khô - Eo Gió - KDL Hầm Hô<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 3 ngày 2 đêm<br />\r\n<br />\r\nNgày khởi hành: 2,30/6; 14,28/7 11,25/8; 15/9 <br />\r\nKhách sạn 3*            </p>\n        </div>', 'Du lịch Quy Nhơn siêu khuyến mãi Vietnam Airlines - khời hành từ Sài Gòn', 'Du lịch Quy Nhơn siêu khuyến mãi Vietnam Airlines - khời hành từ Sài Gòn', 'Du lịch Quy Nhơn siêu khuyến mãi Vietnam Airlines - khời hành từ Sài Gòn', 'Du lịch Quy Nhơn siêu khuyến mãi Vietnam Airlines - khời hành từ Sài Gòn'),
(274, 2, 'Du lịch Quy Nhơn - Phú Yên 4 ngày giá tốt 2017 khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Quy Nhơn - Phú Yên - Hòn Khô - Eo Gió - KDL Hầm Hô<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 1,3,8,10,15,17,22,24,29/06; 1,6,8,13,15,20,22,27,29/07; 5,12,19,26/8 <br />\r\nKhách Sạn 3*;4*            </p>\n        </div>', 'Du lịch Quy Nhơn - Phú Yên 4 ngày giá tốt 2017 khởi hành từ Sài Gòn', 'Du lịch Quy Nhơn - Phú Yên 4 ngày giá tốt 2017 khởi hành từ Sài Gòn', 'Du lịch Quy Nhơn - Phú Yên 4 ngày giá tốt 2017 khởi hành từ Sài Gòn', 'Du lịch Quy Nhơn - Phú Yên 4 ngày giá tốt 2017 khởi hành từ Sài Gòn'),
(275, 2, 'Du lịch Mai Châu - Mộc Châu - Tràng An - Bái Đính khởi hành từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Mai Châu - Bản Lác - Mộc Châu - Thác Dải Yếm - Đồi Chè Trái Tim - Chùa Bái Đính - Tràng An<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 8,10,15,17,22,24,29/06; 1,6,8,13,15,20,22,27,29/07; 5,12,19,26/8 <br />\r\nKhách sạn 2*,3*            </p>\n        </div>', 'Du lịch Mai Châu - Mộc Châu - Tràng An - Bái Đính khởi hành từ Sài Gòn', 'Du lịch Mai Châu - Mộc Châu - Tràng An - Bái Đính khởi hành từ Sài Gòn', 'Du lịch Mai Châu - Mộc Châu - Tràng An - Bái Đính khởi hành từ Sài Gòn', 'Du lịch Mai Châu - Mộc Châu - Tràng An - Bái Đính khởi hành từ Sài Gòn'),
(276, 2, 'Du lịch Miền Bắc - Hà Nội - Chùa Bái Đính - Hạ Long hè 2017 từ Sài Gòn', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: KHÁM PHÁ TOUR ĐẢO ĐẦU LÂU: Hà Nội - Đầm Vân Long - Chùa Bái Đính - Tràng An - Hạ Long<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 8,10,15,17,22,24,29/06; 1,6,8,13,15,20,22,27,29/07; 5,12,19,26/8 <br />\r\nKhách sạn 3*            </p>\n        </div>', 'Du lịch Miền Bắc - Hà Nội - Chùa Bái Đính - Hạ Long hè 2017 từ Sài Gòn', 'Du lịch Miền Bắc - Hà Nội - Chùa Bái Đính - Hạ Long hè 2017 từ Sài Gòn', 'Du lịch Miền Bắc - Hà Nội - Chùa Bái Đính - Hạ Long hè 2017 từ Sài Gòn', 'Du lịch Miền Bắc - Hà Nội - Chùa Bái Đính - Hạ Long hè 2017 từ Sài Gòn'),
(277, 2, 'Du lịch hè 2017 Miền Bắc - Hà Nội - Ninh Bình - Chùa Bái Đính giá tốt', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Hà Nội - Yên Tử - Hạ Long - Ninh Bình - Chùa Bái Đính - Tràng An<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 4 ngày 3 đêm<br />\r\n<br />\r\nNgày khởi hành: 8,10,15,17,22,24,29/06; 1,6,8,13,15,20,22,27,29/07; 5,12,19,26/8 <br />\r\nKhách sạn 3*,4*            </p>\n        </div>', 'Du lịch hè 2017 Miền Bắc - Hà Nội - Ninh Bình - Chùa Bái Đính giá tốt', 'Du lịch hè 2017 Miền Bắc - Hà Nội - Ninh Bình - Chùa Bái Đính giá tốt', 'Du lịch hè 2017 Miền Bắc - Hà Nội - Ninh Bình - Chùa Bái Đính giá tốt', 'Du lịch hè 2017 Miền Bắc - Hà Nội - Ninh Bình - Chùa Bái Đính giá tốt'),
(278, 2, 'Tour Hà Nội - Hạ Long - Ninh Bình - Sapa khuyến mãi Vietnam Airlines', '<div class=\"text_info_sp width_common\">\n            <p>\n                Hành trình: Hà Nội - Hạ Long - Ninh Bình - Sapa - Bản Cát Cát - Hàm Rồng - Đỉnh Fansipan - Siêu khuyến mãi Vietnam Airlines<br />\r\nKhởi hành: Hồ Chí Minh<br />\r\n<br />\r\nThời gian: 6 ngày 5 đêm<br />\r\n<br />\r\nNgày khởi hành: 15/6; 20/7; 17/8; 14/09 <br />\r\nKhách sạn 3*,4*, Tour khuyến mãi VIETNAM AIRLINE            </p>\n        </div>', 'Tour Hà Nội - Hạ Long - Ninh Bình - Sapa khuyến mãi Vietnam Airlines', 'Tour Hà Nội - Hạ Long - Ninh Bình - Sapa khuyến mãi Vietnam Airlines', 'Tour Hà Nội - Hạ Long - Ninh Bình - Sapa khuyến mãi Vietnam Airlines', 'Tour Hà Nội - Hạ Long - Ninh Bình - Sapa khuyến mãi Vietnam Airlines'),
(279, 2, '', '', '', '', '', ''),
(280, 2, '', '', '', '', '', ''),
(281, 2, '', '', '', '', '', ''),
(282, 2, '', '', '', '', '', ''),
(283, 2, '', '', '', '', '', ''),
(284, 2, '', '', '', '', '', ''),
(285, 2, '', '', '', '', '', ''),
(286, 2, '', '', '', '', '', ''),
(287, 2, '', '', '', '', '', ''),
(288, 2, '', '', '', '', '', ''),
(289, 2, '', '', '', '', '', ''),
(290, 2, '', '', '', '', '', ''),
(291, 2, '', '', '', '', '', ''),
(292, 2, '', '', '', '', '', ''),
(293, 2, '', '', '', '', '', ''),
(294, 2, '', '', '', '', '', ''),
(295, 2, '', '', '', '', '', ''),
(296, 2, '', '', '', '', '', ''),
(297, 2, '', '', '', '', '', ''),
(298, 2, '', '', '', '', '', ''),
(299, 2, '', '', '', '', '', ''),
(300, 2, '', '', '', '', '', ''),
(301, 2, '', '', '', '', '', ''),
(302, 2, '', '', '', '', '', ''),
(303, 2, '', '', '', '', '', ''),
(1, 2, 'Combo 3N2Đ - Khách sạn Havana Nha Trang 5* + Tour Du Ngoạn Đảo Vịnh Nha Trang', '<div class=\"text_info_sp width_common\">\n            <p>\n                Combo bao gồm:<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Deluxe Ocean View<br />\r\n- Miễn phí wifi<br />\r\n- 1 Tour du ngoạn đảo vịnh Nha Trang<br />\r\n   + Bơi , ngắm san hô và cá cảnh bằng kính lặn hoặc tàu đáy kính.<br />\r\n   + Tham quan bè nuôi hải sản xuất khẩu của dân chài.<br />\r\n   + Dùng cơm trưa trên tàu<br />\r\n   + ...<br />\r\nThời gian áp dụng: 3/5 - 31/08/2017             </p>\n        </div>', 'Combo 3N2Đ - Khách sạn Havana Nha Trang 5* + Tour Du Ngoạn Đảo Vịnh Nha Trang', 'Combo 3N2Đ - Khách sạn Havana Nha Trang 5* + Tour Du Ngoạn Đảo Vịnh Nha Trang', 'Combo 3N2Đ - Khách sạn Havana Nha Trang 5* + Tour Du Ngoạn Đảo Vịnh Nha Trang', 'Combo 3N2Đ - Khách sạn Havana Nha Trang 5* + Tour Du Ngoạn Đảo Vịnh Nha Trang');
INSERT INTO `hoaunet_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(2, 2, 'Combo 4N3Đ - khu nghỉ dưỡng Club Med Kani 4* + vé máy bay TP.HCM - Maldives', '<div class=\"text_info_sp width_common\">\n            <p>\n                Bao gồm:<br />\r\n- Vé MB khứ hồi SG-Maldives<br />\r\n- 1 đêm tại khách sạn tại thành phố Male <br />\r\n- 2 đêm tại Club Med Kanni Resort<br />\r\n- Ăn 3 bữa và thức uống miễn phí cả ngày. <br />\r\n- Miễn phí tham gia vui chơi giải trí phong phú tại Khu nghỉ dưỡng <br />\r\n- Đưa đón sân bay đến Đảo Kanni<br />\r\nHạn lưu trú: đến 29/09/2017            </p>\n        </div>', 'Combo 4N3Đ - khu nghỉ dưỡng Club Med Kani 4* + vé máy bay TP.HCM - Maldives', 'Combo 4N3Đ - khu nghỉ dưỡng Club Med Kani 4* + vé máy bay TP.HCM - Maldives', 'Combo 4N3Đ - khu nghỉ dưỡng Club Med Kani 4* + vé máy bay TP.HCM - Maldives', 'Combo 4N3Đ - khu nghỉ dưỡng Club Med Kani 4* + vé máy bay TP.HCM - Maldives'),
(3, 2, 'Combo 3N2Đ - khách sạn The Reverie Sài Gòn 5* + vé Máy Bay Khứ Hồi + đưa đón sân bay', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ Hà Nội hoặc Đà Nẵng: Chỉ từ 7.999.000/khách<br />\r\n- Vé máy bay khứ hồi Hà Nội - Tp. HCM hoặc Đà Nẵng - Tp. HCM<br />\r\n- 2 đêm nghỉ dưỡng ở phòng Deluxe<br />\r\n- Ăn sáng Buffet<br />\r\n- Miễn phí đưa đón sân bay<br />\r\n- Đặt tối thiểu 2 khách<br />\r\n*Giai đoạn lưu trú: 01/04/2017 - 30/09/2017.            </p>\n        </div>', 'Combo 3N2Đ - khách sạn The Reverie Sài Gòn 5* + vé Máy Bay Khứ Hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn The Reverie Sài Gòn 5* + vé Máy Bay Khứ Hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn The Reverie Sài Gòn 5* + vé Máy Bay Khứ Hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn The Reverie Sài Gòn 5* + vé Máy Bay Khứ Hồi + đưa đón sân bay'),
(4, 2, 'Combo 3N2Đ - Cocobay Boutique Hotels Đà Nẵng 4* + vé máy bay khứ hồi + đưa đón sân bay + ăn tối', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ Hồ Chí Minh: 4.199.000 VND/ Khách<br />\r\n*Khởi hành từ Hà Nội: 4.199.000 VND/ Khách<br />\r\n *Khởi hành từ Cần Thơ: 3.999.000 VND/ Khách<br />\r\nCombo bao gồm:<br />\r\nCơ hội giảm đến 1,000,000 VND/khách cho khách lưu trú giai đoạn tháng 09 - 12/2017!<br />\r\n- Vé máy bay khứ hồi<br />\r\n- 2 đêm nghỉ dưỡng ở phòng Superior thuộc hệ thống khách sạn 4 sao Boutique Cocobay Đà Nẵng: Muze, Latido, Bisou (phòng do Cocobay sắp xếp tùy vào tình trạng phòng thực tế).<br />\r\n- Ăn sáng<br />\r\n- Xe đưa đón sân bay<br />\r\n- 1 bữa tối set menu<br />\r\n- Miễn phí vé Cococity tour bằng xe buýt 2 tầng tham quan thành phố Đà nẵng hoặc Hội An không hạn chế số lần trong 1 ngày<br />\r\n- Sử dụng tiện ích: miễn phí đồ uống khi check-in, trà, cà phê và nước lọc tại phòng, hồ bơi chung trong tổ hợp, bãi biển riêng,...<br />\r\n- Miễn phí xe điện đi lại trong khu tổ hợp Cocobay và ra quảng trường<br />\r\n- Miễn phí tham quan khu tổ hợp Cocobay của tập đoàn Empire<br />\r\n- 2 vé xem show Coco championship (Thứ 7, Chủ nhật hàng tuần)<br />\r\nĐiều kiện áp dụng:<br />\r\n- Phụ thu giai đoạn Tháng 7/2017: 900,000 VND/khách<br />\r\n- Phụ thu cuối tuần (thứ 7, chủ nhật): 300.000 VND/khách <br />\r\n- Không áp dụng giai đoạn lễ 31/08 - 03/09/17<br />\r\n- Áp dụng cho khách Việt Nam<br />\r\n Giai đoạn lưu trú: 15/07/2017 → 23/12/2017.<br />\r\n *Đặt từ hôm nay đến trước 30/06/2017.            </p>\n        </div>', 'Combo 3N2Đ - Cocobay Boutique Hotels Đà Nẵng 4* + vé máy bay khứ hồi + đưa đón sân bay + ăn tối', 'Combo 3N2Đ - Cocobay Boutique Hotels Đà Nẵng 4* + vé máy bay khứ hồi + đưa đón sân bay + ăn tối', 'Combo 3N2Đ - Cocobay Boutique Hotels Đà Nẵng 4* + vé máy bay khứ hồi + đưa đón sân bay + ăn tối', 'Combo 3N2Đ - Cocobay Boutique Hotels Đà Nẵng 4* + vé máy bay khứ hồi + đưa đón sân bay + ăn tối'),
(5, 2, 'Combo nghỉ dưỡng tại khách sạn A La Carte Đà Nẵng Beach 4* + phòng 2-Bedroom + tiễn sân bay + ăn tối cho 4 khách', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Đặt phòng từ 3 đêm trở lên: 4.299.000 VNĐ/phòng/đêm<br />\r\n* Đặt phòng từ 2 đêm: 4.799.000 VNĐ/phòng/đêm<br />\r\nGiá bao gồm:<br />\r\n- Nghỉ dưỡng tại phòng Delight Plus (2-Bedroom)<br />\r\n- Ăn sáng buffet dành cho gia đình<br />\r\n- Tiễn sân bay miễn phí<br />\r\n- 1 bữa tối set menu Việt Nam tại nhà hàng Fishca<br />\r\n- 4 đơn vị nước uống tại Top Bar<br />\r\n- 1 lần sử dụng shuttle bus đi Bà Nà/Hội An<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi, phòng gym,...<br />\r\n- Giá áp dụng cho 1 phòng (4 khách), đặt tối thiểu 2 đêm<br />\r\n- Sẽ có phụ thu thêm nếu có em bé.<br />\r\nĐiều kiện áp dụng:<br />\r\n- Đến hết 30/09 (không áp dụng giai đoạn lễ 01/09 - 03/09).            </p>\n        </div>', 'Combo nghỉ dưỡng tại khách sạn A La Carte Đà Nẵng Beach 4* + phòng 2-Bedroom + tiễn sân bay + ăn tối cho 4 khách', 'Combo nghỉ dưỡng tại khách sạn A La Carte Đà Nẵng Beach 4* + phòng 2-Bedroom + tiễn sân bay + ăn tối cho 4 khách', 'Combo nghỉ dưỡng tại khách sạn A La Carte Đà Nẵng Beach 4* + phòng 2-Bedroom + tiễn sân bay + ăn tối cho 4 khách', 'Combo nghỉ dưỡng tại khách sạn A La Carte Đà Nẵng Beach 4* + phòng 2-Bedroom + tiễn sân bay + ăn tối cho 4 khách'),
(6, 2, 'Combo nghỉ dưỡng tại khu nghỉ dưỡng Furama Đà Nẵng 5* + đưa đón sân bay + xe đưa đón đi tham quan phố cổ Hội An', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Giá ưu đãi áp dụng cho đặt phòng từ 2 đêm trở lên.<br />\r\n* Đặt phòng từ 3 đêm được tặng phiếu ẩm thực trị giá 300,000 VNĐ/người lớn/ngày.<br />\r\n* Phụ thu cuối tuần: 400,000 VNĐ/phòng/đêm (Thứ Sáu, Thứ bảy).<br />\r\n*Chương trình bao gồm:<br />\r\n- Nghỉ dưỡng tại phòng GARDEN SUPERIOR<br />\r\n- Ăn sáng tự chọn hàng ngày<br />\r\n- Miễn phí đưa đón sân bay<br />\r\n- Xe đưa đón đi tham quan phố cổ Hội An hàng ngày theo lịch trình<br />\r\n- Miễn phí lớp học bơi căn bản và bơi tự cứu cho trẻ em<br />\r\n- Đón khách tại sảnh với khăn lạnh và nước hoa quả tươi<br />\r\n- Miễn phí hoa quả tươi, bình đun nước, trà và café tự pha trong phòng<br />\r\n- Sử dụng miễn phí bể bơi, phòng tập thể hình, phòng tắm hơi và sauna, phòng chơi game, CLB trẻ em và tham gia miễn phí các lớp Taichi vào các buổi sáng<br />\r\n- Giảm 10% cho bữa tối tự chọn, các trò chơi dưới nước và SPA, 10% các dịch vụ tham quan tour.<br />\r\n* Điều kiện: Khuyến mãi dành cho người Việt Nam, Việt kiều và người nước ngoài sống và làm việc tại Việt Nam.<br />\r\n*Thời hạn lưu trú: đến 03/09/2017.            </p>\n        </div>', 'Combo nghỉ dưỡng tại khu nghỉ dưỡng Furama Đà Nẵng 5* + đưa đón sân bay + xe đưa đón đi tham quan phố cổ Hội An', 'Combo nghỉ dưỡng tại khu nghỉ dưỡng Furama Đà Nẵng 5* + đưa đón sân bay + xe đưa đón đi tham quan phố cổ Hội An', 'Combo nghỉ dưỡng tại khu nghỉ dưỡng Furama Đà Nẵng 5* + đưa đón sân bay + xe đưa đón đi tham quan phố cổ Hội An', 'Combo nghỉ dưỡng tại khu nghỉ dưỡng Furama Đà Nẵng 5* + đưa đón sân bay + xe đưa đón đi tham quan phố cổ Hội An'),
(7, 2, 'Combo nghỉ dưỡng tại The Ocean Villas Đà Nẵng 5* + Shuttle bus đưa đón Hội An + Miễn phí sân tennis', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Loại villa:<br />\r\n- Pool villa 1 bed room: 4,999,000 VNĐ/villa/đêm<br />\r\n- Pool villa 2 bed room: 6,799,000 VNĐ/villa/đêm<br />\r\n- Pool villa 3 bed room: 8,699,000 VNĐ/villa/đêm<br />\r\n* Bao gồm:<br />\r\n- Bữa sáng mỗi ngày tại nhà hàng Whitecaps<br />\r\n- Miễn phí trà gừng khi nhận phòng<br />\r\n- Miễn phí nước khoáng theo số lượng người trong mỗi căn villa<br />\r\n- Miễn phí di chuyển sang Câu lạc bộ Đà Nẵng Golf<br />\r\n- Miễn phí sử dụng sân tennis trong ngày<br />\r\n- Miễn phí shuttle bus đưa đón từ resort đến Hội An<br />\r\n* Thời hạn lưu trú: đến 30/06/2017.            </p>\n        </div>', 'Combo nghỉ dưỡng tại The Ocean Villas Đà Nẵng 5* + Shuttle bus đưa đón Hội An + Miễn phí sân tennis', 'Combo nghỉ dưỡng tại The Ocean Villas Đà Nẵng 5* + Shuttle bus đưa đón Hội An + Miễn phí sân tennis', 'Combo nghỉ dưỡng tại The Ocean Villas Đà Nẵng 5* + Shuttle bus đưa đón Hội An + Miễn phí sân tennis', 'Combo nghỉ dưỡng tại The Ocean Villas Đà Nẵng 5* + Shuttle bus đưa đón Hội An + Miễn phí sân tennis'),
(8, 2, 'Combo 3N2Đ - Victoria Phan Thiết Beach Resort &amp; Spa 4* + 1 bữa trưa/tối', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Chỉ 2.195.000/khách<br />\r\nGiá bao gồm:<br />\r\n- 2 đêm nghỉ tại phòng Garden Bungalow<br />\r\n- Ăn sáng tự chọn<br />\r\n- 1 bữa trưa hoặc tối theo set menu<br />\r\n- Giảm 50% cho các dịch vụ Spa<br />\r\nĐiều kiện áp dụng:<br />\r\n* Áp dụng cho tối thiểu 2 khách<br />\r\n* Đặt phòng vào thứ 6 hoặc thứ 7: Phụ thu 125.000VND/khách/đêm<br />\r\n* Giai đoạn lưu trú: đến 30/09/2017, không áp dụng Lễ<br />\r\nChính sách phụ thu:<br />\r\n- Miễn phí 1 giường phụ cho 02 bé dưới 12 tuổi kèm bữa sáng.<br />\r\n- Trẻ em từ 0 - 5 tuổi: Miễn phí (tối đa 02 trẻ).<br />\r\n- Trẻ em từ 6 - 11 tuổi: Phụ thu 200.000/trẻ/bữa ăn.<br />\r\n- Trẻ em từ 12 tuổi trở lên (tính như người lớn ở chung phòng): Phụ thu 2.000.000VND/khách/2 đêm.            </p>\n        </div>', 'Combo 3N2Đ - Victoria Phan Thiết Beach Resort &amp; Spa 4* + 1 bữa trưa/tối', 'Combo 3N2Đ - Victoria Phan Thiết Beach Resort &amp; Spa 4* + 1 bữa trưa/tối', 'Combo 3N2Đ - Victoria Phan Thiết Beach Resort &amp; Spa 4* + 1 bữa trưa/tối', 'Combo 3N2Đ - Victoria Phan Thiết Beach Resort &amp; Spa 4* + 1 bữa trưa/tối'),
(9, 2, 'Combo 3N2Đ - Khu nghỉ dưỡng Edensee Lake Resort &amp; Spa Đà Lạt 5* + vé máy bay khứ hồi + đưa đón sân bay', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ HCM: chỉ từ 3.599.000 VND/khách<br />\r\n(Giá áp dụng trong tuần, cuối tuần có phụ thu thêm)<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi Đà Lạt<br />\r\n- 2 đêm nghỉ ở phòng Deluxe<br />\r\n- Miễn phí đưa đón sân bay<br />\r\n- Ăn sáng buffet<br />\r\n- Xe đưa đón trung tâm & ngược lại theo lịch trình<br />\r\n- Tham gia các hoạt động trong khu VIP Club Lounge: hát Karaoke, xem phim, sân golf mini, bàn bi-da,...<br />\r\n- Tham gia các hoạt động ngoài trời: đạp xe, khu trò chơi thử thách, tham quan vườn thú, sân tennis,...<br />\r\n- Giảm giá 30% sử dụng dịch vụ Spa, massage<br />\r\n- Sử dụng các tiện ích: hồ bơi nước nóng trong nhà, phòng Gym, phòng tập Yoga, khu chơi trẻ em,..<br />\r\nĐiều kiện áp dụng:<br />\r\n- Đặt tối thiểu 2 khách/phòng<br />\r\n- Giai đoạn lưu trú: đến hết 31/12/17 (giai đoạn lễ 01 - 02/09, 23 - 25/12, 30 - 31/12 có phụ thu thêm)            </p>\n        </div>', 'Combo 3N2Đ - Khu nghỉ dưỡng Edensee Lake Resort &amp; Spa Đà Lạt 5* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - Khu nghỉ dưỡng Edensee Lake Resort &amp; Spa Đà Lạt 5* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - Khu nghỉ dưỡng Edensee Lake Resort &amp; Spa Đà Lạt 5* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - Khu nghỉ dưỡng Edensee Lake Resort &amp; Spa Đà Lạt 5* + vé máy bay khứ hồi + đưa đón sân bay'),
(10, 2, 'Combo 2N1Đ - Anantara Resort &amp; Spa Mũi Né 5* + Ăn tối', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Chỉ 2.999.000/khách/đêm<br />\r\nGiá bao gồm:<br />\r\n- 1 đêm nghỉ tại Pool Villa<br />\r\n- Ăn sáng <br />\r\n- 1 bữa ăn trưa hoặc ăn tối ( trong suốt giai đoạn ở)<br />\r\n- Giảm 20% dịch vụ Spa và ăn uống<br />\r\nĐiều kiện áp dụng:<br />\r\n* Áp dụng cho tối thiểu 2 khách<br />\r\n* Đặt phòng vào thứ 6 hoặc thứ 7, yêu cầu đặt 2 đêm<br />\r\n* Áp dụng đến 30/09/2017, không áp dụng Lễ<br />\r\nChính sách trẻ em: <br />\r\n- Miễn phí 2 trẻ em dưới 6 tuổi<br />\r\n- Trẻ từ 6 - 10 tuổi phụ thu 302,500 VND/ trẻ/đêm, sử dụng chung giường với bố mẹ ( tối đa 1 trẻ). Trẻ thứ 2 bắt buộc phải kê thêm giường phụ: 1,177,000 VND/đêm<br />\r\n- Trẻ em từ 11 tuổi trở lên phụ thu 1,177,000 VND/đêm.<br />\r\nPhụ thu ăn trưa hoặc ăn tối<br />\r\n- Trẻ từ 6 - 10 tuổi phụ thu 312,5000 VND/ trẻ/lần<br />\r\n- Trẻ em từ 11 tuổi trở lên phụ thu 625,000 VND/lần.            </p>\n        </div>', 'Combo 2N1Đ - Anantara Resort &amp; Spa Mũi Né 5* + Ăn tối', 'Combo 2N1Đ - Anantara Resort &amp; Spa Mũi Né 5* + Ăn tối', 'Combo 2N1Đ - Anantara Resort &amp; Spa Mũi Né 5* + Ăn tối', 'Combo 2N1Đ - Anantara Resort &amp; Spa Mũi Né 5* + Ăn tối'),
(11, 2, 'Combo 3N2Đ - khách sạn Mường Thanh Đà Lạt 4* + vé máy bay khứ hồi + đưa đón sân bay', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ HCM:<br />\r\n- 31/05 - 31/08/17: chỉ từ 2.699.000 VND/khách<br />\r\n*Khởi hành từ Hà Nội/Đà Nẵng:<br />\r\n- 31/05 - 31/08/17: chỉ từ 4.499.000 VND/khách<br />\r\n(Giá áp dụng trong tuần, cuối tuần có phụ thu thêm)<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi đi Đà Lạt<br />\r\n- 2 đêm nghỉ tại phòng Superior<br />\r\n- Ăn sáng buffet<br />\r\n- Xe đưa đón sân bay<br />\r\n- Miễn phí sử dụng các tiện ích: Wifi, hồ bơi trong nhà, phòng gym...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Đặt tối thiểu 2 khách/phòng<br />\r\n- Giai đoạn lưu trú: đến hết 31/08/17             </p>\n        </div>', 'Combo 3N2Đ - khách sạn Mường Thanh Đà Lạt 4* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn Mường Thanh Đà Lạt 4* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn Mường Thanh Đà Lạt 4* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn Mường Thanh Đà Lạt 4* + vé máy bay khứ hồi + đưa đón sân bay'),
(12, 2, 'Combo 3N2Đ - Vinpearl Phú Quốc Ocean Resort &amp; Villas 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ Hồ Chí Minh:<br />\r\n- Tháng 06 – 08/17: 5.650.000 VNĐ/khách (tối thiểu 2 khách)<br />\r\n- Tháng 09 – 12/17: 5.400.000 VNĐ/khách (tối thiểu 2 khách)<br />\r\n*Khởi hành từ Hà Nội/Hải Phòng: <br />\r\n- Tháng 06 – 08/17: 7.450.000 VNĐ/khách (tối thiểu 2 khách)<br />\r\n- Tháng 09 – 12/17: 7.200.000 VNĐ/khách (tối thiểu 2 khách)<br />\r\nTặng ngay vali du lịch cho khách đặt Villa & thanh toán bằng tiền mặt/chuyển khoản!<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi Phú Quốc<br />\r\n- 2 đêm nghỉ tại Villa<br />\r\n- Ăn 3 bữa (Ngày thứ 1 ăn tối. Ngày thứ 2 ăn sáng, trưa, tối. Ngày thứ 3 ăn sáng, trưa)<br />\r\n- Xe đưa đón sân bay<br />\r\n- Vui chơi không giới hạn tại Vinpearl Land & Vinpearl Safari<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi, phòng tập gym,...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Giai đoạn đặt: cho đến 31/12/17<br />\r\n- Giai đoạn lưu trú: 01/06 - 31/12/17<br />\r\n- Phụ thu cuối tuần (T6, T7) chỉ áp dụng tháng 6, 7, 8: 1,000,000 VNĐ/Villa/đêm<br />\r\n- Phụ thu Lễ Tết (Lễ Quốc Khánh, Lễ Giáng Sinh, Gala Dinner 31/12)<br />\r\n- Phụ thu trẻ em (nếu có)<br />\r\n- Áp dụng cho khách Việt Nam<br />\r\nChương trình áp dụng cho toàn bộ cơ sở của Vinpearl tại Phú Quốc: Vinpearl Phú Quốc Paradise Resort & Villas, Vinpearl Phú Quốc Ocean Resort & Villas, Vinpearl Phú Quốc Resort và Vinpearl Phú Quốc Resort & Golf.            </p>\n        </div>', 'Combo 3N2Đ - Vinpearl Phú Quốc Ocean Resort &amp; Villas 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Vinpearl Phú Quốc Ocean Resort &amp; Villas 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Vinpearl Phú Quốc Ocean Resort &amp; Villas 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Vinpearl Phú Quốc Ocean Resort &amp; Villas 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari'),
(13, 2, 'Combo 3N2Đ - Khu nghỉ dưỡng Vinpearl Phú Quốc 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ Hồ Chí Minh:<br />\r\n- Tháng 06 – 08/17: 5.650.000 VNĐ/khách (tối thiểu 4 khách)<br />\r\n- Tháng 09 – 12/17: 5.400.000 VNĐ/khách (tối thiểu 4 khách)<br />\r\n*Khởi hành từ Hà Nội/Hải Phòng: <br />\r\n- Tháng 06 – 08/17: 7.450.000 VNĐ/khách (tối thiểu 4 khách)<br />\r\n- Tháng 09 – 12/17: 7.200.000 VNĐ/khách (tối thiểu 4 khách)<br />\r\nTặng ngay vali du lịch cho khách đặt phòng & thanh toán bằng tiền mặt/chuyển khoản!<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi Phú Quốc<br />\r\n- 2 đêm nghỉ tại Villa<br />\r\n- Ăn 3 bữa (Ngày thứ 1 ăn tối. Ngày thứ 2 ăn sáng, trưa, tối. Ngày thứ 3 ăn sáng, trưa)<br />\r\n- Xe đưa đón sân bay<br />\r\n- Vui chơi không giới hạn tại Vinpearl Land & Vinpearl Safari<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi, phòng tập gym,...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Giai đoạn đặt: cho đến 31/12/17<br />\r\n- Giai đoạn lưu trú: 01/06 - 31/12/17<br />\r\n- Phụ thu cuối tuần (T6, T7) chỉ áp dụng tháng 6, 7, 8: 1,000,000 VNĐ/Villa/đêm<br />\r\n- Phụ thu Lễ Tết (Lễ Quốc Khánh, Lễ Giáng Sinh, Gala Dinner 31/12)<br />\r\n- Phụ thu trẻ em (nếu có)<br />\r\n- Áp dụng cho khách Việt Nam<br />\r\nChương trình áp dụng cho toàn bộ cơ sở của Vinpearl tại Phú Quốc: Vinpearl Phú Quốc Paradise Resort & Villas, Vinpearl Phú Quốc Ocean Resort & Villas, Vinpearl Phú Quốc Resort và Vinpearl Phú Quốc Resort & Golf.            </p>\n        </div>', 'Combo 3N2Đ - Khu nghỉ dưỡng Vinpearl Phú Quốc 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Khu nghỉ dưỡng Vinpearl Phú Quốc 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Khu nghỉ dưỡng Vinpearl Phú Quốc 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Khu nghỉ dưỡng Vinpearl Phú Quốc 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari'),
(14, 2, 'Combo 3N2Đ - khu nghỉ dưỡng Elwood Phú Quốc 4* + đưa đón sân bay + vé máy bay khứ hồi từ TP. HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ HCM: Chỉ từ 3.199.000/khách<br />\r\n* Khởi hành từ Hà Nội: Chỉ từ 5.199.000/khách<br />\r\nPhụ thu tiền phòng cuối tuần (thứ 6, thứ 7): 200.000 VND/phòng/đêm.<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi đi Phú Quốc<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Botanical Bungalow<br />\r\n- Ăn sáng buffet<br />\r\n- Đưa đón sân bay<br />\r\n- Xe đưa đón tới trung tâm thị trấn (theo lịch trình)<br />\r\n- Sử dụng các tiện ích khác của khách sạn: Wifi, Trà, cafe & nước suối mỗi ngày, Kid Club, hồ bơi,...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Giai đoạn lưu trú: đến hết 31/10/2017 (giai đoạn lễ 01/09 - 02/09 có phụ thu thêm)<br />\r\n- Đặt tối thiểu 2 khách/phòng            </p>\n        </div>', 'Combo 3N2Đ - khu nghỉ dưỡng Elwood Phú Quốc 4* + đưa đón sân bay + vé máy bay khứ hồi từ TP. HCM', 'Combo 3N2Đ - khu nghỉ dưỡng Elwood Phú Quốc 4* + đưa đón sân bay + vé máy bay khứ hồi từ TP. HCM', 'Combo 3N2Đ - khu nghỉ dưỡng Elwood Phú Quốc 4* + đưa đón sân bay + vé máy bay khứ hồi từ TP. HCM', 'Combo 3N2Đ - khu nghỉ dưỡng Elwood Phú Quốc 4* + đưa đón sân bay + vé máy bay khứ hồi từ TP. HCM'),
(15, 2, 'Combo 3N2Đ - Khách Sạn Equarius Singapore 5* + Tặng Voucher 200$ SGD Sử Dụng Dịch Vụ Ăn Uống Hoặc Spa', '<div class=\"text_info_sp width_common\">\n            <p>\n                PACKAGE SÀNH ĐIỆU<br />\r\nGiá bao gồm:<br />\r\n- 2 đêm nghỉ dưỡng tại phòng Deluxe <br />\r\n- Ăn sáng cao cấp hàng ngày<br />\r\n- Tặng 1 voucher 200$ SGD sử dụng dịch vụ ăn uống hoặc spa tại Resort World Sentosa (*)<br />\r\nThời gian áp dụng: 01/05/2017 - 16/12/2017<br />\r\n* Phụ thu: 1.200.000vnd/Khách/đêm, áp dụng vào giai đoạn sau: Thứ 6, Thứ 7 hàng tuần, 30/4/17, 1/5/17, 28/5/17, 27/6/17 - 19/8/17, 1 - 2/12/17, 25 - 28/12/17<br />\r\n* Không áp dụng giai đoạn sau: 23 - 26/6/17, 23, 24/12/17            </p>\n        </div>', 'Combo 3N2Đ - Khách Sạn Equarius Singapore 5* + Tặng Voucher 200$ SGD Sử Dụng Dịch Vụ Ăn Uống Hoặc Spa', 'Combo 3N2Đ - Khách Sạn Equarius Singapore 5* + Tặng Voucher 200$ SGD Sử Dụng Dịch Vụ Ăn Uống Hoặc Spa', 'Combo 3N2Đ - Khách Sạn Equarius Singapore 5* + Tặng Voucher 200$ SGD Sử Dụng Dịch Vụ Ăn Uống Hoặc Spa', 'Combo 3N2Đ - Khách Sạn Equarius Singapore 5* + Tặng Voucher 200$ SGD Sử Dụng Dịch Vụ Ăn Uống Hoặc Spa'),
(16, 2, 'Combo 2N1Đ - Khách sạn Pullman Vũng Tàu 5* + Ăn sáng + Buffet BBQ hải sản', '<div class=\"text_info_sp width_common\">\n            <p>\n                - 01 đêm nghỉ dưỡng tại phòng Superior<br />\r\n- Ăn sáng buffet<br />\r\n- 01 bữa buffet tối BBQ Hải sản (chưa bao gồm nước)<br />\r\n- Sử dụng các tiện nghi của khách sạn: hồ bơi, phòng gym,....<br />\r\n- Đặt tối thiểu 2 khách/phòng.<br />\r\nThời gian lưu trú: đến 31/05/2017. (Không áp dụng giai đoạn lễ 29/04 - 01/05)<br />\r\nÁp dụng cho các đêm thứ bảy, khách ở thêm đêm Thứ sáu hoặc Chủ nhật: Chỉ 1.500.000/phòng/đêm.            </p>\n        </div>', 'Combo 2N1Đ - Khách sạn Pullman Vũng Tàu 5* + Ăn sáng + Buffet BBQ hải sản', 'Combo 2N1Đ - Khách sạn Pullman Vũng Tàu 5* + Ăn sáng + Buffet BBQ hải sản', 'Combo 2N1Đ - Khách sạn Pullman Vũng Tàu 5* + Ăn sáng + Buffet BBQ hải sản', 'Combo 2N1Đ - Khách sạn Pullman Vũng Tàu 5* + Ăn sáng + Buffet BBQ hải sản'),
(17, 2, 'Combo 2N1Đ - Almanity resort and spa Hội An 4* + đưa/ đón sân bay + ăn trưa/ tối', '<div class=\"text_info_sp width_common\">\n            <p>\n                - 01 đêm nghỉ dưỡng tại phòng My Spirit Standard<br />\r\n- Ăn sáng Buffet<br />\r\n- 1 bữa ăn trưa/tối tại Resort<br />\r\n- 1 chiều đưa/đón khách ở Đà Nẵng (sân bay, khách sạn,...)<br />\r\n- Miễn phí shuttle bus đi biển An Bàng<br />\r\n- Miễn phí xe đạp & các dịch vụ: hồ bơi, phòng tập thể dục, ...<br />\r\nGiai đoạn lưu trú: Đến hết 30/06/2017<br />\r\nÁp dụng cho người Việt và người nước ngoài sinh sống tại Việt Nam<br />\r\n<br />\r\n            </p>\n        </div>', 'Combo 2N1Đ - Almanity resort and spa Hội An 4* + đưa/ đón sân bay + ăn trưa/ tối', 'Combo 2N1Đ - Almanity resort and spa Hội An 4* + đưa/ đón sân bay + ăn trưa/ tối', 'Combo 2N1Đ - Almanity resort and spa Hội An 4* + đưa/ đón sân bay + ăn trưa/ tối', 'Combo 2N1Đ - Almanity resort and spa Hội An 4* + đưa/ đón sân bay + ăn trưa/ tối'),
(18, 2, 'Combo 3N2Đ - khu nghỉ dưỡng Duyên Hà Cam Ranh 5* +  đưa đón sân bay + ăn tối + miễn phí trẻ em dưới 12 tuổi', '<div class=\"text_info_sp width_common\">\n            <p>\n                - 2 đêm nghỉ ở phòng Deluxe <br />\r\n- Miễn phí 2 trẻ em dưới 12 tuổi sử dụng chung giường với bố mẹ<br />\r\n- Ăn sáng buffet <br />\r\n- 01 bữa ăn tối theo set menu cho 2 người lớn và 2 trẻ em dưới 12 tuổi<br />\r\n- Đưa đón sân bay (theo lịch trình)<br />\r\n- Đưa đón vào trung tâm Nha Trang (theo lịch trình)<br />\r\n- Miễn phí tham gia Junior Master Chef Cooking Class<br />\r\n- Chương trình vui chơi đặc biệt cho trẻ em mỗi ngày<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi,..<br />\r\nChính sách phụ thu:<br />\r\n- Phụ thu giường phụ cho trẻ dưới 12 tuổi: 660.000 VNĐ/giường/trẻ/đêm.<br />\r\n- Phụ thu nâng cấp Villa: 2.180.000 VNĐ/Villa/đêm .<br />\r\n- Phụ thu người thứ 3: 1.375.000VNĐ/khách/đêm.<br />\r\nGiai đoạn lưu trú: đến hết 30/06/17            </p>\n        </div>', 'Combo 3N2Đ - khu nghỉ dưỡng Duyên Hà Cam Ranh 5* +  đưa đón sân bay + ăn tối + miễn phí trẻ em dưới 12 tuổi', 'Combo 3N2Đ - khu nghỉ dưỡng Duyên Hà Cam Ranh 5* +  đưa đón sân bay + ăn tối + miễn phí trẻ em dưới 12 tuổi', 'Combo 3N2Đ - khu nghỉ dưỡng Duyên Hà Cam Ranh 5* +  đưa đón sân bay + ăn tối + miễn phí trẻ em dưới 12 tuổi', 'Combo 3N2Đ - khu nghỉ dưỡng Duyên Hà Cam Ranh 5* +  đưa đón sân bay + ăn tối + miễn phí trẻ em dưới 12 tuổi'),
(19, 2, 'Combo 3N2Đ - khách sạn Grand President Bangkok 4* + vé máy bay khứ hồi từ Tp. HCM/Hà Nội', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ HCM/HN: Chỉ từ 3.999.000/khách<br />\r\n- Vé máy bay khứ hồi đi BANGKOK (bao gồm 7kg hành lý xách tay)<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Standard (Room Only)<br />\r\n- Miễn phí sử dụng hồ bơi, phòng gym,....<br />\r\n- Đặt tối thiểu 2 khách/phòng<br />\r\n* Hạn chót lưu trú: 31/05/2017.<br />\r\n* Hướng dẫn viên người Việt 150.000 VND/giờ, sau 18h00 180.000 VND/giờ (đặt tối thiểu 4 giờ)            </p>\n        </div>', 'Combo 3N2Đ - khách sạn Grand President Bangkok 4* + vé máy bay khứ hồi từ Tp. HCM/Hà Nội', 'Combo 3N2Đ - khách sạn Grand President Bangkok 4* + vé máy bay khứ hồi từ Tp. HCM/Hà Nội', 'Combo 3N2Đ - khách sạn Grand President Bangkok 4* + vé máy bay khứ hồi từ Tp. HCM/Hà Nội', 'Combo 3N2Đ - khách sạn Grand President Bangkok 4* + vé máy bay khứ hồi từ Tp. HCM/Hà Nội'),
(20, 2, 'Trọn gói ăn sáng, trưa/ tối + miễn phí đưa đón sân bay tại Khu nghỉ dưỡng Six Senses Ninh Vân Bay Nha Trang 5*', '<div class=\"text_info_sp width_common\">\n            <p>\n                Combo bao gồm:<br />\r\n- 1 đêm nghỉ dưỡng tại phòng Hill Top Pool Villa<br />\r\n- Ăn sáng Buffet<br />\r\n- Tặng 1 bữa ăn trưa/tối cho khách <br />\r\n- Đưa đón sân bay Cam Ranh đến khu nghỉ dưỡng<br />\r\n- Hoạt động thể thao: tập thái cực, chèo thuyền kayak, leo núi, khu vui chơi trẻ em, ...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Tặng 1 bữa ăn trưa/tối dành cho các booking đặt trước 7 ngày trong tháng 6 và 30 ngày từ 03/09/17 - 20/12/17  <br />\r\n- Chỉ áp dụng cho khách Việt Nam và Khách nước ngoài sinh sống - làm việc tại Việt Nam.<br />\r\n- Phụ thu người lớn thứ 3: 3.730.000/khách/đêm bao gồm ăn sáng, ăn tối, sử dụng Sofa Bed hoặc kê 1 nệm phụ miễn phí và đưa đón sân bay.<br />\r\n- Áp dụng đến 30/06/17, 03/09/17 - 20/12/17            </p>\n        </div>', 'Trọn gói ăn sáng, trưa/ tối + miễn phí đưa đón sân bay tại Khu nghỉ dưỡng Six Senses Ninh Vân Bay Nha Trang 5*', 'Trọn gói ăn sáng, trưa/ tối + miễn phí đưa đón sân bay tại Khu nghỉ dưỡng Six Senses Ninh Vân Bay Nha Trang 5*', 'Trọn gói ăn sáng, trưa/ tối + miễn phí đưa đón sân bay tại Khu nghỉ dưỡng Six Senses Ninh Vân Bay Nha Trang 5*', 'Trọn gói ăn sáng, trưa/ tối + miễn phí đưa đón sân bay tại Khu nghỉ dưỡng Six Senses Ninh Vân Bay Nha Trang 5*'),
(21, 2, 'Combo 3N2Đ - khách sạn Wyndham Legend Hạ Long 5* + vé tham quan công viên Sun World + xe đưa đón từ Hà Nội', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ Hà Nội: chỉ từ 2,799,000 VND/Khách. <br />\r\nCombo bao gồm:<br />\r\n- Xe đưa đón Hà Nội - Hạ Long<br />\r\n- 2 đêm nghỉ dưỡng ở phòng Superior King/Twin<br />\r\n- Ăn sáng buffet<br />\r\n- 1 vé tham quan Công viên Sun World Hạ Long<br />\r\n- Miễn phí sử dụng các tiện ích: hồ bơi, phòng tập thể dục,...<br />\r\nGiai đoạn lưu trú: Đến hết 30/09/2017            </p>\n        </div>', 'Combo 3N2Đ - khách sạn Wyndham Legend Hạ Long 5* + vé tham quan công viên Sun World + xe đưa đón từ Hà Nội', 'Combo 3N2Đ - khách sạn Wyndham Legend Hạ Long 5* + vé tham quan công viên Sun World + xe đưa đón từ Hà Nội', 'Combo 3N2Đ - khách sạn Wyndham Legend Hạ Long 5* + vé tham quan công viên Sun World + xe đưa đón từ Hà Nội', 'Combo 3N2Đ - khách sạn Wyndham Legend Hạ Long 5* + vé tham quan công viên Sun World + xe đưa đón từ Hà Nội'),
(22, 2, 'Combo 3N2Đ - khu nghỉ dưỡng Novotel Phú Quốc 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ HCM: Chỉ từ 3.999.000/khách<br />\r\n* Khởi hành từ Hà Nội: Chỉ từ 5.999.000/khách<br />\r\nGiảm đến 500.000đ/khách cho giai đoạn lưu trú trong tuần! <br />\r\n* Khởi hành từ Cần Thơ: Chỉ từ 4.999.000/khách<br />\r\nGiảm đến 500.000đ/khách cho giai đoạn lưu trú trong tháng 5!<br />\r\n(Số lượng có hạn, chương trình kết thúc khi hết chỗ)<br />\r\nCombo bao gồm:<br />\r\n- Vé máy bay khứ hồi đi Phú Quốc<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Superior<br />\r\n- Ăn sáng buffet<br />\r\n- Đưa đón sân bay theo lịch trình<br />\r\n- Shuttle Bus đưa đón đến trung tâm thị trấn Dương Đông theo lịch trình<br />\r\n- Sử dụng các tiện ích của khách sạn: hồ bơi, kid club, xe đạp, phòng gym...<br />\r\n* Giai đoạn lưu trú: đến 31/10/2017. Không áp dụng dịp Lễ 01-02/09<br />\r\n* Giảm 500.000 là mức giảm tối đa, tùy theo tình trạng chỗ trống sẽ có mức giảm giá khác nhau.            </p>\n        </div>', 'Combo 3N2Đ - khu nghỉ dưỡng Novotel Phú Quốc 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội', 'Combo 3N2Đ - khu nghỉ dưỡng Novotel Phú Quốc 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội', 'Combo 3N2Đ - khu nghỉ dưỡng Novotel Phú Quốc 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội', 'Combo 3N2Đ - khu nghỉ dưỡng Novotel Phú Quốc 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội'),
(23, 2, 'Trọn Gói 3N2Đ - Khách sạn Grand Mercure Đà Nẵng 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội/ Tp. HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ Hà Nội/HCM: 4.499.000/khách <br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi đi Đà Nẵng (bao gồm 7kg hành lý xách tay)<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Superior<br />\r\n- Ăn sáng Buffet<br />\r\n- Đưa đón sân bay trong khung giờ 7h - 19h<br />\r\n- Xe đưa đón đến Bảo tàng Chăm, Chợ Hàn, Bãi biển, công viên Á Châu theo lịch trình<br />\r\n- Giảm 15% phí sử dụng Spa, nhà hàng, giặt ủi tại khách sạn<br />\r\n- Miễn phí sử dụng các tiện ích: hồ bơi, wifi,...<br />\r\nGiai đoạn lưu trú: đến hết 31/05/2017 (giai đoạn lễ 20/05, 27/05 có phụ thu thêm)<br />\r\n- Yêu cầu: đặt tối thiểu 2 người/phòng & đặt trước 7 ngày            </p>\n        </div>', 'Trọn Gói 3N2Đ - Khách sạn Grand Mercure Đà Nẵng 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội/ Tp. HCM', 'Trọn Gói 3N2Đ - Khách sạn Grand Mercure Đà Nẵng 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội/ Tp. HCM', 'Trọn Gói 3N2Đ - Khách sạn Grand Mercure Đà Nẵng 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội/ Tp. HCM', 'Trọn Gói 3N2Đ - Khách sạn Grand Mercure Đà Nẵng 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội/ Tp. HCM'),
(24, 2, 'Trọn Gói 3N2Đ - Khu nghỉ dưỡng Novotel Phú Quốc 5* + Đưa Đón Sân Bay + Vé Máy Bay Khứ Hồi Từ Tp. HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ HCM: Chỉ từ 3.999.000/khách<br />\r\n* Khởi hành từ Hà Nội: Chỉ từ 5.999.000/khách<br />\r\nGiảm đến 500.000đ/khách cho giai đoạn lưu trú trong tuần! <br />\r\n* Khởi hành từ Cần Thơ: Chỉ từ 4.999.000/khách<br />\r\nGiảm đến 500.000đ/khách cho giai đoạn lưu trú trong tháng 5!<br />\r\n(Số lượng có hạn, chương trình kết thúc khi hết chỗ)<br />\r\nCombo bao gồm:<br />\r\n- Vé máy bay khứ hồi đi Phú Quốc<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Superior<br />\r\n- Ăn sáng buffet<br />\r\n- Đưa đón sân bay theo lịch trình<br />\r\n- Shuttle Bus đưa đón đến trung tâm thị trấn Dương Đông theo lịch trình<br />\r\n- Sử dụng các tiện ích của khách sạn: hồ bơi, kid club, xe đạp, phòng gym...<br />\r\n* Giai đoạn lưu trú: đến 31/10/2017. Không áp dụng dịp Lễ 01-02/09<br />\r\n* Giảm 500.000 là mức giảm tối đa, tùy theo tình trạng chỗ trống sẽ có mức giảm giá khác nhau.            </p>\n        </div>', 'Trọn Gói 3N2Đ - Khu nghỉ dưỡng Novotel Phú Quốc 5* + Đưa Đón Sân Bay + Vé Máy Bay Khứ Hồi Từ Tp. HCM', 'Trọn Gói 3N2Đ - Khu nghỉ dưỡng Novotel Phú Quốc 5* + Đưa Đón Sân Bay + Vé Máy Bay Khứ Hồi Từ Tp. HCM', 'Trọn Gói 3N2Đ - Khu nghỉ dưỡng Novotel Phú Quốc 5* + Đưa Đón Sân Bay + Vé Máy Bay Khứ Hồi Từ Tp. HCM', 'Trọn Gói 3N2Đ - Khu nghỉ dưỡng Novotel Phú Quốc 5* + Đưa Đón Sân Bay + Vé Máy Bay Khứ Hồi Từ Tp. HCM'),
(25, 2, 'Trọn Gói 3N2Đ - Khách sạn Havana Nha Trang + Tour du ngoạn đảo vịnh Nha Trang', '<div class=\"text_info_sp width_common\">\n            <p>\n                Combo bao gồm:<br />\r\n- 2 đêm nghỉ dưỡng tại phòng Deluxe Ocean View<br />\r\n- 1 tour du ngoạn đảo vịnh Nha Trang:<br />\r\n   + Xe và tàu đưa đón khách <br />\r\n   + Bơi, ngắm san hô và cá cảnh bằng kính lặn<br />\r\n   + Dùng cơm trưa trên tàu<br />\r\n   + ...<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi, phòng tập gym,...<br />\r\n*Giai đoạn lưu trú: tới hết 31/08/2017. <br />\r\n*Lưu ý: Tour du ngoạn đảo vịnh Nha Trang không bao gồm vé tham quan & các dịch vụ khác.            </p>\n        </div>', 'Trọn Gói 3N2Đ - Khách sạn Havana Nha Trang + Tour du ngoạn đảo vịnh Nha Trang', 'Trọn Gói 3N2Đ - Khách sạn Havana Nha Trang + Tour du ngoạn đảo vịnh Nha Trang', 'Trọn Gói 3N2Đ - Khách sạn Havana Nha Trang + Tour du ngoạn đảo vịnh Nha Trang', 'Trọn Gói 3N2Đ - Khách sạn Havana Nha Trang + Tour du ngoạn đảo vịnh Nha Trang'),
(26, 2, 'Tour Campuchia - Siemriep 4N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                SIÊM RIỆP- ANGKOR WAT-PHNOM PENH            </p>\n        </div>', 'Tour Campuchia - Siemriep 4N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Campuchia - Siemriep 4N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Campuchia - Siemriep 4N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Campuchia - Siemriep 4N3Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(27, 2, 'Tour Bà Lụa - Trà Sư 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                QUẦN ĐẢO BÀ LỤA<br />\r\nHANG MOSO –RỪNG TRÀM TRÀ SƯ<br />\r\nLƯU TRÚ TẠI HÀ TIÊN<br />\r\n            </p>\n        </div>', 'Tour Bà Lụa - Trà Sư 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bà Lụa - Trà Sư 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bà Lụa - Trà Sư 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bà Lụa - Trà Sư 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(30, 2, 'Tour Tam Bình 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                ĐẢO BÌNH BA – ĐẢO BÌNH HƯNG – BIỂN BÌNH TIÊN <br />\r\nNINH CHỮ - VỊNH VĨNH HY<br />\r\nLỬA TRẠI DANCING – BBQ HẢI SẢN<br />\r\n thưởng thức Tôm Hùm – đặc sản của Bình Ba<br />\r\nCâu Cá, Lặn Ngắm San Hô tại Đảo Tôm Hùm            </p>\n        </div>', 'Tour Tam Bình 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Tam Bình 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Tam Bình 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Tam Bình 3N3Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(76, 1, 'Tour Bình Ba 2n2đ - Hai Dang Travel', '', '', 'Tour Bình Ba 2n2đ - Hai Dang Travel', '', ''),
(76, 2, 'Tour Bình Ba 2n2đ - Hai Dang Travel', '&lt;div class=&quot;text_info_sp width_common&quot;&gt;\r\n            &lt;p&gt;\r\n                Đến Bình Ba, du khách sẽ được tham quan bãi tắm hoang sơ nhất chưa có tên trên bản đồ du lịch khu vực miền Trung như: Bãi Bồ Đề, Bãi Nhà Cũ, Bãi Me, thỏa thích ngâm mình trong làng nước trong xanh tuyệt đẹp, lặn ngắm san hô và những đàn cá đầy màu sắc. Ngoài ra, bạn còn được tham quan Tịnh Thất Ngọc Gia Hương... Du khách cũng có thể leo lên tận lô cốt từ thời Pháp, được người dân địa phương gọi là Lầu Ông Hoàng Bình Ba ngắm trọn vẹn cảnh đẹp bình minh và ráng chiều hoàng hôn, rặng san hô, cát trắng đẹp như tranh vẽ của Vịnh Cam Ranh.            &lt;/p&gt;\r\n        &lt;/div&gt;', 'Tour Bình Ba 2n2đ - Hai Dang Travel', 'Tour Bình Ba 2n2đ - Hai Dang Travel', 'Tour Bình Ba 2n2đ - Hai Dang Travel', 'Tour Bình Ba 2n2đ - Hai Dang Travel'),
(1, 1, 'Combo 3N2Đ - Khách sạn Havana Nha Trang 5* + Tour Du Ngoạn Đảo Vịnh Nha Trang', '<div class=\"text_info_sp width_common\">\n            <p>\n                Combo bao gồm:<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Deluxe Ocean View<br />\r\n- Miễn phí wifi<br />\r\n- 1 Tour du ngoạn đảo vịnh Nha Trang<br />\r\n   + Bơi , ngắm san hô và cá cảnh bằng kính lặn hoặc tàu đáy kính.<br />\r\n   + Tham quan bè nuôi hải sản xuất khẩu của dân chài.<br />\r\n   + Dùng cơm trưa trên tàu<br />\r\n   + ...<br />\r\nThời gian áp dụng: 3/5 - 31/08/2017             </p>\n        </div>', 'Combo 3N2Đ - Khách sạn Havana Nha Trang 5* + Tour Du Ngoạn Đảo Vịnh Nha Trang', 'Combo 3N2Đ - Khách sạn Havana Nha Trang 5* + Tour Du Ngoạn Đảo Vịnh Nha Trang', 'Combo 3N2Đ - Khách sạn Havana Nha Trang 5* + Tour Du Ngoạn Đảo Vịnh Nha Trang', 'Combo 3N2Đ - Khách sạn Havana Nha Trang 5* + Tour Du Ngoạn Đảo Vịnh Nha Trang'),
(2, 1, 'Combo 4N3Đ - khu nghỉ dưỡng Club Med Kani 4* + vé máy bay TP.HCM - Maldives', '<div class=\"text_info_sp width_common\">\n            <p>\n                Bao gồm:<br />\r\n- Vé MB khứ hồi SG-Maldives<br />\r\n- 1 đêm tại khách sạn tại thành phố Male <br />\r\n- 2 đêm tại Club Med Kanni Resort<br />\r\n- Ăn 3 bữa và thức uống miễn phí cả ngày. <br />\r\n- Miễn phí tham gia vui chơi giải trí phong phú tại Khu nghỉ dưỡng <br />\r\n- Đưa đón sân bay đến Đảo Kanni<br />\r\nHạn lưu trú: đến 29/09/2017            </p>\n        </div>', 'Combo 4N3Đ - khu nghỉ dưỡng Club Med Kani 4* + vé máy bay TP.HCM - Maldives', 'Combo 4N3Đ - khu nghỉ dưỡng Club Med Kani 4* + vé máy bay TP.HCM - Maldives', 'Combo 4N3Đ - khu nghỉ dưỡng Club Med Kani 4* + vé máy bay TP.HCM - Maldives', 'Combo 4N3Đ - khu nghỉ dưỡng Club Med Kani 4* + vé máy bay TP.HCM - Maldives'),
(3, 1, 'Combo 3N2Đ - khách sạn The Reverie Sài Gòn 5* + vé Máy Bay Khứ Hồi + đưa đón sân bay', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ Hà Nội hoặc Đà Nẵng: Chỉ từ 7.999.000/khách<br />\r\n- Vé máy bay khứ hồi Hà Nội - Tp. HCM hoặc Đà Nẵng - Tp. HCM<br />\r\n- 2 đêm nghỉ dưỡng ở phòng Deluxe<br />\r\n- Ăn sáng Buffet<br />\r\n- Miễn phí đưa đón sân bay<br />\r\n- Đặt tối thiểu 2 khách<br />\r\n*Giai đoạn lưu trú: 01/04/2017 - 30/09/2017.            </p>\n        </div>', 'Combo 3N2Đ - khách sạn The Reverie Sài Gòn 5* + vé Máy Bay Khứ Hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn The Reverie Sài Gòn 5* + vé Máy Bay Khứ Hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn The Reverie Sài Gòn 5* + vé Máy Bay Khứ Hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn The Reverie Sài Gòn 5* + vé Máy Bay Khứ Hồi + đưa đón sân bay'),
(4, 1, 'Combo 3N2Đ - Cocobay Boutique Hotels Đà Nẵng 4* + vé máy bay khứ hồi + đưa đón sân bay + ăn tối', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ Hồ Chí Minh: 4.199.000 VND/ Khách<br />\r\n*Khởi hành từ Hà Nội: 4.199.000 VND/ Khách<br />\r\n *Khởi hành từ Cần Thơ: 3.999.000 VND/ Khách<br />\r\nCombo bao gồm:<br />\r\nCơ hội giảm đến 1,000,000 VND/khách cho khách lưu trú giai đoạn tháng 09 - 12/2017!<br />\r\n- Vé máy bay khứ hồi<br />\r\n- 2 đêm nghỉ dưỡng ở phòng Superior thuộc hệ thống khách sạn 4 sao Boutique Cocobay Đà Nẵng: Muze, Latido, Bisou (phòng do Cocobay sắp xếp tùy vào tình trạng phòng thực tế).<br />\r\n- Ăn sáng<br />\r\n- Xe đưa đón sân bay<br />\r\n- 1 bữa tối set menu<br />\r\n- Miễn phí vé Cococity tour bằng xe buýt 2 tầng tham quan thành phố Đà nẵng hoặc Hội An không hạn chế số lần trong 1 ngày<br />\r\n- Sử dụng tiện ích: miễn phí đồ uống khi check-in, trà, cà phê và nước lọc tại phòng, hồ bơi chung trong tổ hợp, bãi biển riêng,...<br />\r\n- Miễn phí xe điện đi lại trong khu tổ hợp Cocobay và ra quảng trường<br />\r\n- Miễn phí tham quan khu tổ hợp Cocobay của tập đoàn Empire<br />\r\n- 2 vé xem show Coco championship (Thứ 7, Chủ nhật hàng tuần)<br />\r\nĐiều kiện áp dụng:<br />\r\n- Phụ thu giai đoạn Tháng 7/2017: 900,000 VND/khách<br />\r\n- Phụ thu cuối tuần (thứ 7, chủ nhật): 300.000 VND/khách <br />\r\n- Không áp dụng giai đoạn lễ 31/08 - 03/09/17<br />\r\n- Áp dụng cho khách Việt Nam<br />\r\n Giai đoạn lưu trú: 15/07/2017 → 23/12/2017.<br />\r\n *Đặt từ hôm nay đến trước 30/06/2017.            </p>\n        </div>', 'Combo 3N2Đ - Cocobay Boutique Hotels Đà Nẵng 4* + vé máy bay khứ hồi + đưa đón sân bay + ăn tối', 'Combo 3N2Đ - Cocobay Boutique Hotels Đà Nẵng 4* + vé máy bay khứ hồi + đưa đón sân bay + ăn tối', 'Combo 3N2Đ - Cocobay Boutique Hotels Đà Nẵng 4* + vé máy bay khứ hồi + đưa đón sân bay + ăn tối', 'Combo 3N2Đ - Cocobay Boutique Hotels Đà Nẵng 4* + vé máy bay khứ hồi + đưa đón sân bay + ăn tối'),
(5, 1, 'Combo nghỉ dưỡng tại khách sạn A La Carte Đà Nẵng Beach 4* + phòng 2-Bedroom + tiễn sân bay + ăn tối cho 4 khách', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Đặt phòng từ 3 đêm trở lên: 4.299.000 VNĐ/phòng/đêm<br />\r\n* Đặt phòng từ 2 đêm: 4.799.000 VNĐ/phòng/đêm<br />\r\nGiá bao gồm:<br />\r\n- Nghỉ dưỡng tại phòng Delight Plus (2-Bedroom)<br />\r\n- Ăn sáng buffet dành cho gia đình<br />\r\n- Tiễn sân bay miễn phí<br />\r\n- 1 bữa tối set menu Việt Nam tại nhà hàng Fishca<br />\r\n- 4 đơn vị nước uống tại Top Bar<br />\r\n- 1 lần sử dụng shuttle bus đi Bà Nà/Hội An<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi, phòng gym,...<br />\r\n- Giá áp dụng cho 1 phòng (4 khách), đặt tối thiểu 2 đêm<br />\r\n- Sẽ có phụ thu thêm nếu có em bé.<br />\r\nĐiều kiện áp dụng:<br />\r\n- Đến hết 30/09 (không áp dụng giai đoạn lễ 01/09 - 03/09).            </p>\n        </div>', 'Combo nghỉ dưỡng tại khách sạn A La Carte Đà Nẵng Beach 4* + phòng 2-Bedroom + tiễn sân bay + ăn tối cho 4 khách', 'Combo nghỉ dưỡng tại khách sạn A La Carte Đà Nẵng Beach 4* + phòng 2-Bedroom + tiễn sân bay + ăn tối cho 4 khách', 'Combo nghỉ dưỡng tại khách sạn A La Carte Đà Nẵng Beach 4* + phòng 2-Bedroom + tiễn sân bay + ăn tối cho 4 khách', 'Combo nghỉ dưỡng tại khách sạn A La Carte Đà Nẵng Beach 4* + phòng 2-Bedroom + tiễn sân bay + ăn tối cho 4 khách'),
(6, 1, 'Combo nghỉ dưỡng tại khu nghỉ dưỡng Furama Đà Nẵng 5* + đưa đón sân bay + xe đưa đón đi tham quan phố cổ Hội An', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Giá ưu đãi áp dụng cho đặt phòng từ 2 đêm trở lên.<br />\r\n* Đặt phòng từ 3 đêm được tặng phiếu ẩm thực trị giá 300,000 VNĐ/người lớn/ngày.<br />\r\n* Phụ thu cuối tuần: 400,000 VNĐ/phòng/đêm (Thứ Sáu, Thứ bảy).<br />\r\n*Chương trình bao gồm:<br />\r\n- Nghỉ dưỡng tại phòng GARDEN SUPERIOR<br />\r\n- Ăn sáng tự chọn hàng ngày<br />\r\n- Miễn phí đưa đón sân bay<br />\r\n- Xe đưa đón đi tham quan phố cổ Hội An hàng ngày theo lịch trình<br />\r\n- Miễn phí lớp học bơi căn bản và bơi tự cứu cho trẻ em<br />\r\n- Đón khách tại sảnh với khăn lạnh và nước hoa quả tươi<br />\r\n- Miễn phí hoa quả tươi, bình đun nước, trà và café tự pha trong phòng<br />\r\n- Sử dụng miễn phí bể bơi, phòng tập thể hình, phòng tắm hơi và sauna, phòng chơi game, CLB trẻ em và tham gia miễn phí các lớp Taichi vào các buổi sáng<br />\r\n- Giảm 10% cho bữa tối tự chọn, các trò chơi dưới nước và SPA, 10% các dịch vụ tham quan tour.<br />\r\n* Điều kiện: Khuyến mãi dành cho người Việt Nam, Việt kiều và người nước ngoài sống và làm việc tại Việt Nam.<br />\r\n*Thời hạn lưu trú: đến 03/09/2017.            </p>\n        </div>', 'Combo nghỉ dưỡng tại khu nghỉ dưỡng Furama Đà Nẵng 5* + đưa đón sân bay + xe đưa đón đi tham quan phố cổ Hội An', 'Combo nghỉ dưỡng tại khu nghỉ dưỡng Furama Đà Nẵng 5* + đưa đón sân bay + xe đưa đón đi tham quan phố cổ Hội An', 'Combo nghỉ dưỡng tại khu nghỉ dưỡng Furama Đà Nẵng 5* + đưa đón sân bay + xe đưa đón đi tham quan phố cổ Hội An', 'Combo nghỉ dưỡng tại khu nghỉ dưỡng Furama Đà Nẵng 5* + đưa đón sân bay + xe đưa đón đi tham quan phố cổ Hội An'),
(7, 1, 'Combo nghỉ dưỡng tại The Ocean Villas Đà Nẵng 5* + Shuttle bus đưa đón Hội An + Miễn phí sân tennis', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Loại villa:<br />\r\n- Pool villa 1 bed room: 4,999,000 VNĐ/villa/đêm<br />\r\n- Pool villa 2 bed room: 6,799,000 VNĐ/villa/đêm<br />\r\n- Pool villa 3 bed room: 8,699,000 VNĐ/villa/đêm<br />\r\n* Bao gồm:<br />\r\n- Bữa sáng mỗi ngày tại nhà hàng Whitecaps<br />\r\n- Miễn phí trà gừng khi nhận phòng<br />\r\n- Miễn phí nước khoáng theo số lượng người trong mỗi căn villa<br />\r\n- Miễn phí di chuyển sang Câu lạc bộ Đà Nẵng Golf<br />\r\n- Miễn phí sử dụng sân tennis trong ngày<br />\r\n- Miễn phí shuttle bus đưa đón từ resort đến Hội An<br />\r\n* Thời hạn lưu trú: đến 30/06/2017.            </p>\n        </div>', 'Combo nghỉ dưỡng tại The Ocean Villas Đà Nẵng 5* + Shuttle bus đưa đón Hội An + Miễn phí sân tennis', 'Combo nghỉ dưỡng tại The Ocean Villas Đà Nẵng 5* + Shuttle bus đưa đón Hội An + Miễn phí sân tennis', 'Combo nghỉ dưỡng tại The Ocean Villas Đà Nẵng 5* + Shuttle bus đưa đón Hội An + Miễn phí sân tennis', 'Combo nghỉ dưỡng tại The Ocean Villas Đà Nẵng 5* + Shuttle bus đưa đón Hội An + Miễn phí sân tennis'),
(8, 1, 'Combo 3N2Đ - Victoria Phan Thiết Beach Resort &amp; Spa 4* + 1 bữa trưa/tối', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Chỉ 2.195.000/khách<br />\r\nGiá bao gồm:<br />\r\n- 2 đêm nghỉ tại phòng Garden Bungalow<br />\r\n- Ăn sáng tự chọn<br />\r\n- 1 bữa trưa hoặc tối theo set menu<br />\r\n- Giảm 50% cho các dịch vụ Spa<br />\r\nĐiều kiện áp dụng:<br />\r\n* Áp dụng cho tối thiểu 2 khách<br />\r\n* Đặt phòng vào thứ 6 hoặc thứ 7: Phụ thu 125.000VND/khách/đêm<br />\r\n* Giai đoạn lưu trú: đến 30/09/2017, không áp dụng Lễ<br />\r\nChính sách phụ thu:<br />\r\n- Miễn phí 1 giường phụ cho 02 bé dưới 12 tuổi kèm bữa sáng.<br />\r\n- Trẻ em từ 0 - 5 tuổi: Miễn phí (tối đa 02 trẻ).<br />\r\n- Trẻ em từ 6 - 11 tuổi: Phụ thu 200.000/trẻ/bữa ăn.<br />\r\n- Trẻ em từ 12 tuổi trở lên (tính như người lớn ở chung phòng): Phụ thu 2.000.000VND/khách/2 đêm.            </p>\n        </div>', 'Combo 3N2Đ - Victoria Phan Thiết Beach Resort &amp; Spa 4* + 1 bữa trưa/tối', 'Combo 3N2Đ - Victoria Phan Thiết Beach Resort &amp; Spa 4* + 1 bữa trưa/tối', 'Combo 3N2Đ - Victoria Phan Thiết Beach Resort &amp; Spa 4* + 1 bữa trưa/tối', 'Combo 3N2Đ - Victoria Phan Thiết Beach Resort &amp; Spa 4* + 1 bữa trưa/tối'),
(9, 1, 'Combo 3N2Đ - Khu nghỉ dưỡng Edensee Lake Resort &amp; Spa Đà Lạt 5* + vé máy bay khứ hồi + đưa đón sân bay', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ HCM: chỉ từ 3.599.000 VND/khách<br />\r\n(Giá áp dụng trong tuần, cuối tuần có phụ thu thêm)<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi Đà Lạt<br />\r\n- 2 đêm nghỉ ở phòng Deluxe<br />\r\n- Miễn phí đưa đón sân bay<br />\r\n- Ăn sáng buffet<br />\r\n- Xe đưa đón trung tâm & ngược lại theo lịch trình<br />\r\n- Tham gia các hoạt động trong khu VIP Club Lounge: hát Karaoke, xem phim, sân golf mini, bàn bi-da,...<br />\r\n- Tham gia các hoạt động ngoài trời: đạp xe, khu trò chơi thử thách, tham quan vườn thú, sân tennis,...<br />\r\n- Giảm giá 30% sử dụng dịch vụ Spa, massage<br />\r\n- Sử dụng các tiện ích: hồ bơi nước nóng trong nhà, phòng Gym, phòng tập Yoga, khu chơi trẻ em,..<br />\r\nĐiều kiện áp dụng:<br />\r\n- Đặt tối thiểu 2 khách/phòng<br />\r\n- Giai đoạn lưu trú: đến hết 31/12/17 (giai đoạn lễ 01 - 02/09, 23 - 25/12, 30 - 31/12 có phụ thu thêm)            </p>\n        </div>', 'Combo 3N2Đ - Khu nghỉ dưỡng Edensee Lake Resort &amp; Spa Đà Lạt 5* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - Khu nghỉ dưỡng Edensee Lake Resort &amp; Spa Đà Lạt 5* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - Khu nghỉ dưỡng Edensee Lake Resort &amp; Spa Đà Lạt 5* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - Khu nghỉ dưỡng Edensee Lake Resort &amp; Spa Đà Lạt 5* + vé máy bay khứ hồi + đưa đón sân bay'),
(10, 1, 'Combo 2N1Đ - Anantara Resort &amp; Spa Mũi Né 5* + Ăn tối', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Chỉ 2.999.000/khách/đêm<br />\r\nGiá bao gồm:<br />\r\n- 1 đêm nghỉ tại Pool Villa<br />\r\n- Ăn sáng <br />\r\n- 1 bữa ăn trưa hoặc ăn tối ( trong suốt giai đoạn ở)<br />\r\n- Giảm 20% dịch vụ Spa và ăn uống<br />\r\nĐiều kiện áp dụng:<br />\r\n* Áp dụng cho tối thiểu 2 khách<br />\r\n* Đặt phòng vào thứ 6 hoặc thứ 7, yêu cầu đặt 2 đêm<br />\r\n* Áp dụng đến 30/09/2017, không áp dụng Lễ<br />\r\nChính sách trẻ em: <br />\r\n- Miễn phí 2 trẻ em dưới 6 tuổi<br />\r\n- Trẻ từ 6 - 10 tuổi phụ thu 302,500 VND/ trẻ/đêm, sử dụng chung giường với bố mẹ ( tối đa 1 trẻ). Trẻ thứ 2 bắt buộc phải kê thêm giường phụ: 1,177,000 VND/đêm<br />\r\n- Trẻ em từ 11 tuổi trở lên phụ thu 1,177,000 VND/đêm.<br />\r\nPhụ thu ăn trưa hoặc ăn tối<br />\r\n- Trẻ từ 6 - 10 tuổi phụ thu 312,5000 VND/ trẻ/lần<br />\r\n- Trẻ em từ 11 tuổi trở lên phụ thu 625,000 VND/lần.            </p>\n        </div>', 'Combo 2N1Đ - Anantara Resort &amp; Spa Mũi Né 5* + Ăn tối', 'Combo 2N1Đ - Anantara Resort &amp; Spa Mũi Né 5* + Ăn tối', 'Combo 2N1Đ - Anantara Resort &amp; Spa Mũi Né 5* + Ăn tối', 'Combo 2N1Đ - Anantara Resort &amp; Spa Mũi Né 5* + Ăn tối'),
(11, 1, 'Combo 3N2Đ - khách sạn Mường Thanh Đà Lạt 4* + vé máy bay khứ hồi + đưa đón sân bay', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ HCM:<br />\r\n- 31/05 - 31/08/17: chỉ từ 2.699.000 VND/khách<br />\r\n*Khởi hành từ Hà Nội/Đà Nẵng:<br />\r\n- 31/05 - 31/08/17: chỉ từ 4.499.000 VND/khách<br />\r\n(Giá áp dụng trong tuần, cuối tuần có phụ thu thêm)<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi đi Đà Lạt<br />\r\n- 2 đêm nghỉ tại phòng Superior<br />\r\n- Ăn sáng buffet<br />\r\n- Xe đưa đón sân bay<br />\r\n- Miễn phí sử dụng các tiện ích: Wifi, hồ bơi trong nhà, phòng gym...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Đặt tối thiểu 2 khách/phòng<br />\r\n- Giai đoạn lưu trú: đến hết 31/08/17             </p>\n        </div>', 'Combo 3N2Đ - khách sạn Mường Thanh Đà Lạt 4* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn Mường Thanh Đà Lạt 4* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn Mường Thanh Đà Lạt 4* + vé máy bay khứ hồi + đưa đón sân bay', 'Combo 3N2Đ - khách sạn Mường Thanh Đà Lạt 4* + vé máy bay khứ hồi + đưa đón sân bay');
INSERT INTO `hoaunet_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(12, 1, 'Combo 3N2Đ - Vinpearl Phú Quốc Ocean Resort &amp; Villas 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ Hồ Chí Minh:<br />\r\n- Tháng 06 – 08/17: 5.650.000 VNĐ/khách (tối thiểu 2 khách)<br />\r\n- Tháng 09 – 12/17: 5.400.000 VNĐ/khách (tối thiểu 2 khách)<br />\r\n*Khởi hành từ Hà Nội/Hải Phòng: <br />\r\n- Tháng 06 – 08/17: 7.450.000 VNĐ/khách (tối thiểu 2 khách)<br />\r\n- Tháng 09 – 12/17: 7.200.000 VNĐ/khách (tối thiểu 2 khách)<br />\r\nTặng ngay vali du lịch cho khách đặt Villa & thanh toán bằng tiền mặt/chuyển khoản!<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi Phú Quốc<br />\r\n- 2 đêm nghỉ tại Villa<br />\r\n- Ăn 3 bữa (Ngày thứ 1 ăn tối. Ngày thứ 2 ăn sáng, trưa, tối. Ngày thứ 3 ăn sáng, trưa)<br />\r\n- Xe đưa đón sân bay<br />\r\n- Vui chơi không giới hạn tại Vinpearl Land & Vinpearl Safari<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi, phòng tập gym,...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Giai đoạn đặt: cho đến 31/12/17<br />\r\n- Giai đoạn lưu trú: 01/06 - 31/12/17<br />\r\n- Phụ thu cuối tuần (T6, T7) chỉ áp dụng tháng 6, 7, 8: 1,000,000 VNĐ/Villa/đêm<br />\r\n- Phụ thu Lễ Tết (Lễ Quốc Khánh, Lễ Giáng Sinh, Gala Dinner 31/12)<br />\r\n- Phụ thu trẻ em (nếu có)<br />\r\n- Áp dụng cho khách Việt Nam<br />\r\nChương trình áp dụng cho toàn bộ cơ sở của Vinpearl tại Phú Quốc: Vinpearl Phú Quốc Paradise Resort & Villas, Vinpearl Phú Quốc Ocean Resort & Villas, Vinpearl Phú Quốc Resort và Vinpearl Phú Quốc Resort & Golf.            </p>\n        </div>', 'Combo 3N2Đ - Vinpearl Phú Quốc Ocean Resort &amp; Villas 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Vinpearl Phú Quốc Ocean Resort &amp; Villas 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Vinpearl Phú Quốc Ocean Resort &amp; Villas 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Vinpearl Phú Quốc Ocean Resort &amp; Villas 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari'),
(13, 1, 'Combo 3N2Đ - Khu nghỉ dưỡng Vinpearl Phú Quốc 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ Hồ Chí Minh:<br />\r\n- Tháng 06 – 08/17: 5.650.000 VNĐ/khách (tối thiểu 4 khách)<br />\r\n- Tháng 09 – 12/17: 5.400.000 VNĐ/khách (tối thiểu 4 khách)<br />\r\n*Khởi hành từ Hà Nội/Hải Phòng: <br />\r\n- Tháng 06 – 08/17: 7.450.000 VNĐ/khách (tối thiểu 4 khách)<br />\r\n- Tháng 09 – 12/17: 7.200.000 VNĐ/khách (tối thiểu 4 khách)<br />\r\nTặng ngay vali du lịch cho khách đặt phòng & thanh toán bằng tiền mặt/chuyển khoản!<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi Phú Quốc<br />\r\n- 2 đêm nghỉ tại Villa<br />\r\n- Ăn 3 bữa (Ngày thứ 1 ăn tối. Ngày thứ 2 ăn sáng, trưa, tối. Ngày thứ 3 ăn sáng, trưa)<br />\r\n- Xe đưa đón sân bay<br />\r\n- Vui chơi không giới hạn tại Vinpearl Land & Vinpearl Safari<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi, phòng tập gym,...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Giai đoạn đặt: cho đến 31/12/17<br />\r\n- Giai đoạn lưu trú: 01/06 - 31/12/17<br />\r\n- Phụ thu cuối tuần (T6, T7) chỉ áp dụng tháng 6, 7, 8: 1,000,000 VNĐ/Villa/đêm<br />\r\n- Phụ thu Lễ Tết (Lễ Quốc Khánh, Lễ Giáng Sinh, Gala Dinner 31/12)<br />\r\n- Phụ thu trẻ em (nếu có)<br />\r\n- Áp dụng cho khách Việt Nam<br />\r\nChương trình áp dụng cho toàn bộ cơ sở của Vinpearl tại Phú Quốc: Vinpearl Phú Quốc Paradise Resort & Villas, Vinpearl Phú Quốc Ocean Resort & Villas, Vinpearl Phú Quốc Resort và Vinpearl Phú Quốc Resort & Golf.            </p>\n        </div>', 'Combo 3N2Đ - Khu nghỉ dưỡng Vinpearl Phú Quốc 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Khu nghỉ dưỡng Vinpearl Phú Quốc 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Khu nghỉ dưỡng Vinpearl Phú Quốc 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari', 'Combo 3N2Đ - Khu nghỉ dưỡng Vinpearl Phú Quốc 5* + vé máy bay + ăn 3 bữa + Vinpearl Land + Safari'),
(14, 1, 'Combo 3N2Đ - khu nghỉ dưỡng Elwood Phú Quốc 4* + đưa đón sân bay + vé máy bay khứ hồi từ TP. HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ HCM: Chỉ từ 3.199.000/khách<br />\r\n* Khởi hành từ Hà Nội: Chỉ từ 5.199.000/khách<br />\r\nPhụ thu tiền phòng cuối tuần (thứ 6, thứ 7): 200.000 VND/phòng/đêm.<br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi đi Phú Quốc<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Botanical Bungalow<br />\r\n- Ăn sáng buffet<br />\r\n- Đưa đón sân bay<br />\r\n- Xe đưa đón tới trung tâm thị trấn (theo lịch trình)<br />\r\n- Sử dụng các tiện ích khác của khách sạn: Wifi, Trà, cafe & nước suối mỗi ngày, Kid Club, hồ bơi,...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Giai đoạn lưu trú: đến hết 31/10/2017 (giai đoạn lễ 01/09 - 02/09 có phụ thu thêm)<br />\r\n- Đặt tối thiểu 2 khách/phòng            </p>\n        </div>', 'Combo 3N2Đ - khu nghỉ dưỡng Elwood Phú Quốc 4* + đưa đón sân bay + vé máy bay khứ hồi từ TP. HCM', 'Combo 3N2Đ - khu nghỉ dưỡng Elwood Phú Quốc 4* + đưa đón sân bay + vé máy bay khứ hồi từ TP. HCM', 'Combo 3N2Đ - khu nghỉ dưỡng Elwood Phú Quốc 4* + đưa đón sân bay + vé máy bay khứ hồi từ TP. HCM', 'Combo 3N2Đ - khu nghỉ dưỡng Elwood Phú Quốc 4* + đưa đón sân bay + vé máy bay khứ hồi từ TP. HCM'),
(15, 1, 'Combo 3N2Đ - Khách Sạn Equarius Singapore 5* + Tặng Voucher 200$ SGD Sử Dụng Dịch Vụ Ăn Uống Hoặc Spa', '<div class=\"text_info_sp width_common\">\n            <p>\n                PACKAGE SÀNH ĐIỆU<br />\r\nGiá bao gồm:<br />\r\n- 2 đêm nghỉ dưỡng tại phòng Deluxe <br />\r\n- Ăn sáng cao cấp hàng ngày<br />\r\n- Tặng 1 voucher 200$ SGD sử dụng dịch vụ ăn uống hoặc spa tại Resort World Sentosa (*)<br />\r\nThời gian áp dụng: 01/05/2017 - 16/12/2017<br />\r\n* Phụ thu: 1.200.000vnd/Khách/đêm, áp dụng vào giai đoạn sau: Thứ 6, Thứ 7 hàng tuần, 30/4/17, 1/5/17, 28/5/17, 27/6/17 - 19/8/17, 1 - 2/12/17, 25 - 28/12/17<br />\r\n* Không áp dụng giai đoạn sau: 23 - 26/6/17, 23, 24/12/17            </p>\n        </div>', 'Combo 3N2Đ - Khách Sạn Equarius Singapore 5* + Tặng Voucher 200$ SGD Sử Dụng Dịch Vụ Ăn Uống Hoặc Spa', 'Combo 3N2Đ - Khách Sạn Equarius Singapore 5* + Tặng Voucher 200$ SGD Sử Dụng Dịch Vụ Ăn Uống Hoặc Spa', 'Combo 3N2Đ - Khách Sạn Equarius Singapore 5* + Tặng Voucher 200$ SGD Sử Dụng Dịch Vụ Ăn Uống Hoặc Spa', 'Combo 3N2Đ - Khách Sạn Equarius Singapore 5* + Tặng Voucher 200$ SGD Sử Dụng Dịch Vụ Ăn Uống Hoặc Spa'),
(16, 1, 'Combo 2N1Đ - Khách sạn Pullman Vũng Tàu 5* + Ăn sáng + Buffet BBQ hải sản', '<div class=\"text_info_sp width_common\">\n            <p>\n                - 01 đêm nghỉ dưỡng tại phòng Superior<br />\r\n- Ăn sáng buffet<br />\r\n- 01 bữa buffet tối BBQ Hải sản (chưa bao gồm nước)<br />\r\n- Sử dụng các tiện nghi của khách sạn: hồ bơi, phòng gym,....<br />\r\n- Đặt tối thiểu 2 khách/phòng.<br />\r\nThời gian lưu trú: đến 31/05/2017. (Không áp dụng giai đoạn lễ 29/04 - 01/05)<br />\r\nÁp dụng cho các đêm thứ bảy, khách ở thêm đêm Thứ sáu hoặc Chủ nhật: Chỉ 1.500.000/phòng/đêm.            </p>\n        </div>', 'Combo 2N1Đ - Khách sạn Pullman Vũng Tàu 5* + Ăn sáng + Buffet BBQ hải sản', 'Combo 2N1Đ - Khách sạn Pullman Vũng Tàu 5* + Ăn sáng + Buffet BBQ hải sản', 'Combo 2N1Đ - Khách sạn Pullman Vũng Tàu 5* + Ăn sáng + Buffet BBQ hải sản', 'Combo 2N1Đ - Khách sạn Pullman Vũng Tàu 5* + Ăn sáng + Buffet BBQ hải sản'),
(17, 1, 'Combo 2N1Đ - Almanity resort and spa Hội An 4* + đưa/ đón sân bay + ăn trưa/ tối', '<div class=\"text_info_sp width_common\">\n            <p>\n                - 01 đêm nghỉ dưỡng tại phòng My Spirit Standard<br />\r\n- Ăn sáng Buffet<br />\r\n- 1 bữa ăn trưa/tối tại Resort<br />\r\n- 1 chiều đưa/đón khách ở Đà Nẵng (sân bay, khách sạn,...)<br />\r\n- Miễn phí shuttle bus đi biển An Bàng<br />\r\n- Miễn phí xe đạp & các dịch vụ: hồ bơi, phòng tập thể dục, ...<br />\r\nGiai đoạn lưu trú: Đến hết 30/06/2017<br />\r\nÁp dụng cho người Việt và người nước ngoài sinh sống tại Việt Nam<br />\r\n<br />\r\n            </p>\n        </div>', 'Combo 2N1Đ - Almanity resort and spa Hội An 4* + đưa/ đón sân bay + ăn trưa/ tối', 'Combo 2N1Đ - Almanity resort and spa Hội An 4* + đưa/ đón sân bay + ăn trưa/ tối', 'Combo 2N1Đ - Almanity resort and spa Hội An 4* + đưa/ đón sân bay + ăn trưa/ tối', 'Combo 2N1Đ - Almanity resort and spa Hội An 4* + đưa/ đón sân bay + ăn trưa/ tối'),
(18, 1, 'Combo 3N2Đ - khu nghỉ dưỡng Duyên Hà Cam Ranh 5* +  đưa đón sân bay + ăn tối + miễn phí trẻ em dưới 12 tuổi', '<div class=\"text_info_sp width_common\">\n            <p>\n                - 2 đêm nghỉ ở phòng Deluxe <br />\r\n- Miễn phí 2 trẻ em dưới 12 tuổi sử dụng chung giường với bố mẹ<br />\r\n- Ăn sáng buffet <br />\r\n- 01 bữa ăn tối theo set menu cho 2 người lớn và 2 trẻ em dưới 12 tuổi<br />\r\n- Đưa đón sân bay (theo lịch trình)<br />\r\n- Đưa đón vào trung tâm Nha Trang (theo lịch trình)<br />\r\n- Miễn phí tham gia Junior Master Chef Cooking Class<br />\r\n- Chương trình vui chơi đặc biệt cho trẻ em mỗi ngày<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi,..<br />\r\nChính sách phụ thu:<br />\r\n- Phụ thu giường phụ cho trẻ dưới 12 tuổi: 660.000 VNĐ/giường/trẻ/đêm.<br />\r\n- Phụ thu nâng cấp Villa: 2.180.000 VNĐ/Villa/đêm .<br />\r\n- Phụ thu người thứ 3: 1.375.000VNĐ/khách/đêm.<br />\r\nGiai đoạn lưu trú: đến hết 30/06/17            </p>\n        </div>', 'Combo 3N2Đ - khu nghỉ dưỡng Duyên Hà Cam Ranh 5* +  đưa đón sân bay + ăn tối + miễn phí trẻ em dưới 12 tuổi', 'Combo 3N2Đ - khu nghỉ dưỡng Duyên Hà Cam Ranh 5* +  đưa đón sân bay + ăn tối + miễn phí trẻ em dưới 12 tuổi', 'Combo 3N2Đ - khu nghỉ dưỡng Duyên Hà Cam Ranh 5* +  đưa đón sân bay + ăn tối + miễn phí trẻ em dưới 12 tuổi', 'Combo 3N2Đ - khu nghỉ dưỡng Duyên Hà Cam Ranh 5* +  đưa đón sân bay + ăn tối + miễn phí trẻ em dưới 12 tuổi'),
(19, 1, 'Combo 3N2Đ - khách sạn Grand President Bangkok 4* + vé máy bay khứ hồi từ Tp. HCM/Hà Nội', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ HCM/HN: Chỉ từ 3.999.000/khách<br />\r\n- Vé máy bay khứ hồi đi BANGKOK (bao gồm 7kg hành lý xách tay)<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Standard (Room Only)<br />\r\n- Miễn phí sử dụng hồ bơi, phòng gym,....<br />\r\n- Đặt tối thiểu 2 khách/phòng<br />\r\n* Hạn chót lưu trú: 31/05/2017.<br />\r\n* Hướng dẫn viên người Việt 150.000 VND/giờ, sau 18h00 180.000 VND/giờ (đặt tối thiểu 4 giờ)            </p>\n        </div>', 'Combo 3N2Đ - khách sạn Grand President Bangkok 4* + vé máy bay khứ hồi từ Tp. HCM/Hà Nội', 'Combo 3N2Đ - khách sạn Grand President Bangkok 4* + vé máy bay khứ hồi từ Tp. HCM/Hà Nội', 'Combo 3N2Đ - khách sạn Grand President Bangkok 4* + vé máy bay khứ hồi từ Tp. HCM/Hà Nội', 'Combo 3N2Đ - khách sạn Grand President Bangkok 4* + vé máy bay khứ hồi từ Tp. HCM/Hà Nội'),
(20, 1, 'Trọn gói ăn sáng, trưa/ tối + miễn phí đưa đón sân bay tại Khu nghỉ dưỡng Six Senses Ninh Vân Bay Nha Trang 5*', '<div class=\"text_info_sp width_common\">\n            <p>\n                Combo bao gồm:<br />\r\n- 1 đêm nghỉ dưỡng tại phòng Hill Top Pool Villa<br />\r\n- Ăn sáng Buffet<br />\r\n- Tặng 1 bữa ăn trưa/tối cho khách <br />\r\n- Đưa đón sân bay Cam Ranh đến khu nghỉ dưỡng<br />\r\n- Hoạt động thể thao: tập thái cực, chèo thuyền kayak, leo núi, khu vui chơi trẻ em, ...<br />\r\nĐiều kiện áp dụng:<br />\r\n- Tặng 1 bữa ăn trưa/tối dành cho các booking đặt trước 7 ngày trong tháng 6 và 30 ngày từ 03/09/17 - 20/12/17  <br />\r\n- Chỉ áp dụng cho khách Việt Nam và Khách nước ngoài sinh sống - làm việc tại Việt Nam.<br />\r\n- Phụ thu người lớn thứ 3: 3.730.000/khách/đêm bao gồm ăn sáng, ăn tối, sử dụng Sofa Bed hoặc kê 1 nệm phụ miễn phí và đưa đón sân bay.<br />\r\n- Áp dụng đến 30/06/17, 03/09/17 - 20/12/17            </p>\n        </div>', 'Trọn gói ăn sáng, trưa/ tối + miễn phí đưa đón sân bay tại Khu nghỉ dưỡng Six Senses Ninh Vân Bay Nha Trang 5*', 'Trọn gói ăn sáng, trưa/ tối + miễn phí đưa đón sân bay tại Khu nghỉ dưỡng Six Senses Ninh Vân Bay Nha Trang 5*', 'Trọn gói ăn sáng, trưa/ tối + miễn phí đưa đón sân bay tại Khu nghỉ dưỡng Six Senses Ninh Vân Bay Nha Trang 5*', 'Trọn gói ăn sáng, trưa/ tối + miễn phí đưa đón sân bay tại Khu nghỉ dưỡng Six Senses Ninh Vân Bay Nha Trang 5*'),
(21, 1, 'Combo 3N2Đ - khách sạn Wyndham Legend Hạ Long 5* + vé tham quan công viên Sun World + xe đưa đón từ Hà Nội', '<div class=\"text_info_sp width_common\">\n            <p>\n                *Khởi hành từ Hà Nội: chỉ từ 2,799,000 VND/Khách. <br />\r\nCombo bao gồm:<br />\r\n- Xe đưa đón Hà Nội - Hạ Long<br />\r\n- 2 đêm nghỉ dưỡng ở phòng Superior King/Twin<br />\r\n- Ăn sáng buffet<br />\r\n- 1 vé tham quan Công viên Sun World Hạ Long<br />\r\n- Miễn phí sử dụng các tiện ích: hồ bơi, phòng tập thể dục,...<br />\r\nGiai đoạn lưu trú: Đến hết 30/09/2017            </p>\n        </div>', 'Combo 3N2Đ - khách sạn Wyndham Legend Hạ Long 5* + vé tham quan công viên Sun World + xe đưa đón từ Hà Nội', 'Combo 3N2Đ - khách sạn Wyndham Legend Hạ Long 5* + vé tham quan công viên Sun World + xe đưa đón từ Hà Nội', 'Combo 3N2Đ - khách sạn Wyndham Legend Hạ Long 5* + vé tham quan công viên Sun World + xe đưa đón từ Hà Nội', 'Combo 3N2Đ - khách sạn Wyndham Legend Hạ Long 5* + vé tham quan công viên Sun World + xe đưa đón từ Hà Nội'),
(22, 1, 'Combo 3N2Đ - khu nghỉ dưỡng Novotel Phú Quốc 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ HCM: Chỉ từ 3.999.000/khách<br />\r\n* Khởi hành từ Hà Nội: Chỉ từ 5.999.000/khách<br />\r\nGiảm đến 500.000đ/khách cho giai đoạn lưu trú trong tuần! <br />\r\n* Khởi hành từ Cần Thơ: Chỉ từ 4.999.000/khách<br />\r\nGiảm đến 500.000đ/khách cho giai đoạn lưu trú trong tháng 5!<br />\r\n(Số lượng có hạn, chương trình kết thúc khi hết chỗ)<br />\r\nCombo bao gồm:<br />\r\n- Vé máy bay khứ hồi đi Phú Quốc<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Superior<br />\r\n- Ăn sáng buffet<br />\r\n- Đưa đón sân bay theo lịch trình<br />\r\n- Shuttle Bus đưa đón đến trung tâm thị trấn Dương Đông theo lịch trình<br />\r\n- Sử dụng các tiện ích của khách sạn: hồ bơi, kid club, xe đạp, phòng gym...<br />\r\n* Giai đoạn lưu trú: đến 31/10/2017. Không áp dụng dịp Lễ 01-02/09<br />\r\n* Giảm 500.000 là mức giảm tối đa, tùy theo tình trạng chỗ trống sẽ có mức giảm giá khác nhau.            </p>\n        </div>', 'Combo 3N2Đ - khu nghỉ dưỡng Novotel Phú Quốc 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội', 'Combo 3N2Đ - khu nghỉ dưỡng Novotel Phú Quốc 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội', 'Combo 3N2Đ - khu nghỉ dưỡng Novotel Phú Quốc 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội', 'Combo 3N2Đ - khu nghỉ dưỡng Novotel Phú Quốc 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội'),
(23, 1, 'Trọn Gói 3N2Đ - Khách sạn Grand Mercure Đà Nẵng 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội/ Tp. HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ Hà Nội/HCM: 4.499.000/khách <br />\r\nGiá bao gồm:<br />\r\n- Vé máy bay khứ hồi đi Đà Nẵng (bao gồm 7kg hành lý xách tay)<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Superior<br />\r\n- Ăn sáng Buffet<br />\r\n- Đưa đón sân bay trong khung giờ 7h - 19h<br />\r\n- Xe đưa đón đến Bảo tàng Chăm, Chợ Hàn, Bãi biển, công viên Á Châu theo lịch trình<br />\r\n- Giảm 15% phí sử dụng Spa, nhà hàng, giặt ủi tại khách sạn<br />\r\n- Miễn phí sử dụng các tiện ích: hồ bơi, wifi,...<br />\r\nGiai đoạn lưu trú: đến hết 31/05/2017 (giai đoạn lễ 20/05, 27/05 có phụ thu thêm)<br />\r\n- Yêu cầu: đặt tối thiểu 2 người/phòng & đặt trước 7 ngày            </p>\n        </div>', 'Trọn Gói 3N2Đ - Khách sạn Grand Mercure Đà Nẵng 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội/ Tp. HCM', 'Trọn Gói 3N2Đ - Khách sạn Grand Mercure Đà Nẵng 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội/ Tp. HCM', 'Trọn Gói 3N2Đ - Khách sạn Grand Mercure Đà Nẵng 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội/ Tp. HCM', 'Trọn Gói 3N2Đ - Khách sạn Grand Mercure Đà Nẵng 5* + đưa đón sân bay + vé máy bay khứ hồi từ Hà Nội/ Tp. HCM'),
(24, 1, 'Trọn Gói 3N2Đ - Khu nghỉ dưỡng Novotel Phú Quốc 5* + Đưa Đón Sân Bay + Vé Máy Bay Khứ Hồi Từ Tp. HCM', '<div class=\"text_info_sp width_common\">\n            <p>\n                * Khởi hành từ HCM: Chỉ từ 3.999.000/khách<br />\r\n* Khởi hành từ Hà Nội: Chỉ từ 5.999.000/khách<br />\r\nGiảm đến 500.000đ/khách cho giai đoạn lưu trú trong tuần! <br />\r\n* Khởi hành từ Cần Thơ: Chỉ từ 4.999.000/khách<br />\r\nGiảm đến 500.000đ/khách cho giai đoạn lưu trú trong tháng 5!<br />\r\n(Số lượng có hạn, chương trình kết thúc khi hết chỗ)<br />\r\nCombo bao gồm:<br />\r\n- Vé máy bay khứ hồi đi Phú Quốc<br />\r\n- 02 đêm nghỉ dưỡng tại phòng Superior<br />\r\n- Ăn sáng buffet<br />\r\n- Đưa đón sân bay theo lịch trình<br />\r\n- Shuttle Bus đưa đón đến trung tâm thị trấn Dương Đông theo lịch trình<br />\r\n- Sử dụng các tiện ích của khách sạn: hồ bơi, kid club, xe đạp, phòng gym...<br />\r\n* Giai đoạn lưu trú: đến 31/10/2017. Không áp dụng dịp Lễ 01-02/09<br />\r\n* Giảm 500.000 là mức giảm tối đa, tùy theo tình trạng chỗ trống sẽ có mức giảm giá khác nhau.            </p>\n        </div>', 'Trọn Gói 3N2Đ - Khu nghỉ dưỡng Novotel Phú Quốc 5* + Đưa Đón Sân Bay + Vé Máy Bay Khứ Hồi Từ Tp. HCM', 'Trọn Gói 3N2Đ - Khu nghỉ dưỡng Novotel Phú Quốc 5* + Đưa Đón Sân Bay + Vé Máy Bay Khứ Hồi Từ Tp. HCM', 'Trọn Gói 3N2Đ - Khu nghỉ dưỡng Novotel Phú Quốc 5* + Đưa Đón Sân Bay + Vé Máy Bay Khứ Hồi Từ Tp. HCM', 'Trọn Gói 3N2Đ - Khu nghỉ dưỡng Novotel Phú Quốc 5* + Đưa Đón Sân Bay + Vé Máy Bay Khứ Hồi Từ Tp. HCM'),
(25, 1, 'Trọn Gói 3N2Đ - Khách sạn Havana Nha Trang + Tour du ngoạn đảo vịnh Nha Trang', '<div class=\"text_info_sp width_common\">\n            <p>\n                Combo bao gồm:<br />\r\n- 2 đêm nghỉ dưỡng tại phòng Deluxe Ocean View<br />\r\n- 1 tour du ngoạn đảo vịnh Nha Trang:<br />\r\n   + Xe và tàu đưa đón khách <br />\r\n   + Bơi, ngắm san hô và cá cảnh bằng kính lặn<br />\r\n   + Dùng cơm trưa trên tàu<br />\r\n   + ...<br />\r\n- Sử dụng các tiện ích: wifi, hồ bơi, phòng tập gym,...<br />\r\n*Giai đoạn lưu trú: tới hết 31/08/2017. <br />\r\n*Lưu ý: Tour du ngoạn đảo vịnh Nha Trang không bao gồm vé tham quan & các dịch vụ khác.            </p>\n        </div>', 'Trọn Gói 3N2Đ - Khách sạn Havana Nha Trang + Tour du ngoạn đảo vịnh Nha Trang', 'Trọn Gói 3N2Đ - Khách sạn Havana Nha Trang + Tour du ngoạn đảo vịnh Nha Trang', 'Trọn Gói 3N2Đ - Khách sạn Havana Nha Trang + Tour du ngoạn đảo vịnh Nha Trang', 'Trọn Gói 3N2Đ - Khách sạn Havana Nha Trang + Tour du ngoạn đảo vịnh Nha Trang'),
(26, 1, 'Tour Campuchia - Siemriep 4N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                SIÊM RIỆP- ANGKOR WAT-PHNOM PENH            </p>\n        </div>', 'Tour Campuchia - Siemriep 4N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Campuchia - Siemriep 4N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Campuchia - Siemriep 4N3Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Campuchia - Siemriep 4N3Đ Tết Nguyên Đán - HAI DANG TRAVEL'),
(27, 1, 'Tour Bà Lụa - Trà Sư 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', '<div class=\"text_info_sp width_common\">\n            <p>\n                QUẦN ĐẢO BÀ LỤA<br />\r\nHANG MOSO –RỪNG TRÀM TRÀ SƯ<br />\r\nLƯU TRÚ TẠI HÀ TIÊN<br />\r\n            </p>\n        </div>', 'Tour Bà Lụa - Trà Sư 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bà Lụa - Trà Sư 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bà Lụa - Trà Sư 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL', 'Tour Bà Lụa - Trà Sư 2N2Đ Tết Nguyên Đán - HAI DANG TRAVEL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_discount`
--

CREATE TABLE `hoaunet_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_discount`
--

INSERT INTO `hoaunet_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(443, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(442, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(441, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_filter`
--

CREATE TABLE `hoaunet_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_image`
--

CREATE TABLE `hoaunet_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_image`
--

INSERT INTO `hoaunet_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(1, 1, 'catalog/du_lich/combo-3n2d-khach-san-havana-nha-trang-5-tour-du-ngoan-dao-vinh-nha-trang-1436_luatsutunhan.png', 1),
(2, 2, 'catalog/du_lich/combo-4n3d-khu-nghi-duong-club-med-kani-4-ve-may-bay-tp-hcm-maldives-7011_luatsutunhan.png', 1),
(3, 3, 'catalog/du_lich/combo-3n2d-khach-san-the-reverie-sai-gon-5-ve-may-bay-khu-hoi-dua-don-san-bay-6779_luatsutunhan.png', 1),
(4, 4, 'catalog/du_lich/combo-3n2d-cocobay-boutique-hotels-da-nang-4-ve-may-bay-khu-hoi-dua-don-san-bay-an-toi-6735_luatsutunhan.png', 1),
(5, 5, 'catalog/du_lich/combo-nghi-duong-tai-khach-san-a-la-carte-da-nang-beach-4-phong-2-bedroom-tien-san-bay-an-toi-cho-4-khach-6716_luatsutunhan.png', 1),
(6, 6, 'catalog/du_lich/combo-nghi-duong-tai-khu-nghi-duong-furama-da-nang-5-dua-don-san-bay-xe-dua-don-di-tham-quan-pho-co-hoi-an-6701_luatsutunhan.png', 1),
(7, 7, 'catalog/du_lich/combo-nghi-duong-tai-the-ocean-villas-da-nang-5-shuttle-bus-dua-don-hoi-an-mien-phi-san-tennis-6708_luatsutunhan.png', 1),
(8, 8, 'catalog/du_lich/combo-3n2d-victoria-phan-thiet-beach-resort-spa-4-1-bua-trua-toi-6236_luatsutunhan.png', 1),
(9, 9, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-edensee-lake-resort-spa-da-lat-5-ve-may-bay-khu-hoi-dua-don-san-bay-6242_luatsutunhan.png', 1),
(10, 10, 'catalog/du_lich/combo-2n1d-anantara-resort-spa-mui-ne-5-an-toi-6244_luatsutunhan.png', 1),
(11, 11, 'catalog/du_lich/combo-3n2d-khach-san-muong-thanh-da-lat-4-ve-may-bay-khu-hoi-dua-don-san-bay-6245_luatsutunhan.png', 1),
(12, 12, 'catalog/du_lich/combo-3n2d-vinpearl-phu-quoc-ocean-resort-villas-5-ve-may-bay-an-3-bua-vinpearl-land-safari-6246_luatsutunhan.png', 1),
(13, 13, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-vinpearl-phu-quoc-5-ve-may-bay-an-3-bua-vinpearl-land-safari-6222_luatsutunhan.png', 1),
(14, 14, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-elwood-phu-quoc-4-dua-don-san-bay-ve-may-bay-khu-hoi-tu-tp-hcm-2608_luatsutunhan.png', 1),
(15, 15, 'catalog/du_lich/combo-3n2d-khach-san-equarius-singapore-5-tang-voucher-200-sgd-su-dung-dich-vu-an-uong-hoac-spa-2620_luatsutunhan.png', 1),
(16, 16, 'catalog/du_lich/combo-2n1d-khach-san-pullman-vung-tau-5-an-sang-buffet-bbq-hai-san-2597_luatsutunhan.png', 1),
(17, 17, 'catalog/du_lich/combo-2n1d-almanity-resort-and-spa-hoi-an-4-dua-don-san-bay-an-trua-toi-1957_luatsutunhan.png', 1),
(18, 18, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-duyen-ha-cam-ranh-5-dua-don-san-bay-an-toi-mien-phi-tre-em-duoi-12-tuoi-2225_luatsutunhan.png', 1),
(19, 19, 'catalog/du_lich/combo-3n2d-khach-san-grand-president-bangkok-4-ve-may-bay-khu-hoi-tu-tp-hcm-ha-noi-1916_luatsutunhan.jpg', 1),
(20, 20, 'catalog/du_lich/tron-goi-an-sang-trua-toi-mien-phi-dua-don-san-bay-tai-khu-nghi-duong-six-senses-ninh-van-bay-nha-trang-5-1076_luatsutunhan.png', 1),
(21, 21, 'catalog/du_lich/combo-3n2d-khach-san-wyndham-legend-ha-long-5-ve-tham-quan-cong-vien-sun-world-xe-dua-don-tu-ha-noi-1882_luatsutunhan.png', 1),
(22, 22, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-novotel-phu-quoc-5-dua-don-san-bay-ve-may-bay-khu-hoi-tu-ha-noi-1512_luatsutunhan.jpg', 1),
(23, 23, 'catalog/du_lich/tron-goi-3n2d-khach-san-grand-mercure-da-nang-5-dua-don-san-bay-ve-may-bay-khu-hoi-tu-ha-noi-tp-hcm-1513_luatsutunhan.png', 1),
(24, 24, 'catalog/du_lich/tron-goi-3n2d-khu-nghi-duong-novotel-phu-quoc-5-dua-don-san-bay-ve-may-bay-khu-hoi-tu-tp-hcm-1454_luatsutunhan.jpg', 1),
(25, 25, 'catalog/du_lich/tron-goi-3n2d-khach-san-havana-nha-trang-tour-du-ngoan-dao-vinh-nha-trang-1438_luatsutunhan.png', 1),
(26, 26, 'catalog/du_lich/tour-campuchia-siemriep-4n3d-tet-nguyen-dan-hai-dang-travel-571_luatsutunhan.jpg', 1),
(27, 27, 'catalog/du_lich/tour-ba-lua-tra-su-2n2d-tet-nguyen-dan-hai-dang-travel-521_luatsutunhan.jpg', 1),
(28, 28, 'catalog/du_lich/tour-binh-ba-2n2d-tet-nguyen-dan-hai-dang-travel-481_luatsutunhan.jpg', 1),
(29, 29, 'catalog/du_lich/tour-binh-ba-nha-trang-da-lat-4n4d-tet-nguyen-dan-hai-dang-travel-527_luatsutunhan.jpg', 1),
(30, 30, 'catalog/du_lich/tour-tam-binh-3n3d-tet-nguyen-dan-hai-dang-travel-509_luatsutunhan.jpg', 1),
(31, 31, 'catalog/du_lich/tour-phu-yen-diep-son-3n3d-5-sao-tet-nguyen-dan-hai-dang-travel-512_luatsutunhan.jpg', 1),
(32, 32, 'catalog/du_lich/tour-nha-trang-buffet-3n3d-tet-nguyen-dan-hai-dang-travel-513_luatsutunhan.jpg', 1),
(33, 33, 'catalog/du_lich/tour-da-lat-hoa-lavender-3n3d-tet-nguyen-dan-hai-dang-travel-524_luatsutunhan.jpg', 1),
(34, 34, 'catalog/du_lich/tour-da-lat-vip-3n3d-tet-nguyen-dan-hai-dang-travel-523_luatsutunhan.jpg', 1),
(35, 35, 'catalog/du_lich/tour-nha-trang-diep-son-3n3d-tet-nguyen-dan-hai-dang-travel-514_luatsutunhan.jpg', 1),
(36, 36, 'catalog/du_lich/tour-phu-quoc-3n3d-tet-nguyen-dan-hai-dang-travel-515_luatsutunhan.jpg', 1),
(37, 37, 'catalog/du_lich/tour-phu-yen-dai-lanh-3n3d-5-sao-hai-dang-travel-511_luatsutunhan.jpg', 1),
(38, 38, 'catalog/du_lich/tour-quy-nhon-ky-co-3n3d-tet-nguyen-dan-hai-dang-travel-510_luatsutunhan.jpg', 1),
(39, 39, 'catalog/du_lich/tour-kham-pha-con-son-3n2d-hai-dang-travel-1341_luatsutunhan.jpg', 1),
(40, 40, 'catalog/du_lich/tour-cu-lao-cau-2n2d-hai-dang-travel-1342_luatsutunhan.jpg', 1),
(41, 41, 'catalog/du_lich/tour-dao-binh-hung-bien-binh-lap-2n2d-hai-dang-travel-1334_luatsutunhan.jpg', 1),
(42, 42, 'catalog/du_lich/tour-myanmar-ha-noi-yangon-bago-golden-rock-chua-noi-thanlyn-5n-bay-emirates-5-sao-hoang-viet-travel-1281_luatsutunhan.jpg', 1),
(43, 43, 'catalog/du_lich/tour-trung-quoc-ha-noi-nam-ninh-truong-gia-gioi-phuong-hoang-co-tran-6n5d-hoang-viet-travel-1275_luatsutunhan.jpg', 1),
(44, 44, 'catalog/du_lich/tour-singapore-malaysia-ha-noi-singapore-kula-lumpur-5n-bay-vietnam-airlines-hoang-viet-1278_luatsutunhan.jpg', 1),
(45, 45, 'catalog/du_lich/tour-ha-noi-singapore-malaysia-6n5d-gia-kich-cau-hoang-viet-travel-1279_luatsutunhan.jpg', 1),
(46, 46, 'catalog/du_lich/tour-singapore-ha-noi-singapore-dao-sentosa-4n3d-hoang-viet-travel-1276_luatsutunhan.jpg', 1),
(47, 47, 'catalog/du_lich/tour-trung-quoc-ha-noi-nam-ninh-quang-chau-tham-quyen-5n4d-hoang-viet-travel-1277_luatsutunhan.jpg', 1),
(48, 48, 'catalog/du_lich/tour-dai-loan-ha-noi-dai-trung-cao-hung-dai-bac-5n4d-bay-china-airlines-hoang-viet-travel-1268_luatsutunhan.jpg', 1),
(49, 49, 'catalog/du_lich/tour-thai-lan-ha-noi-bangkok-pattaya-dao-coral-4n3d-hoang-viet-travel-1263_luatsutunhan.jpg', 1),
(50, 50, 'catalog/du_lich/tour-han-ha-noi-seoul-dao-nami-everland-5n4d-bay-hang-khong-vietjet-air-hoang-viet-travel-1265_luatsutunhan.jpg', 1),
(51, 51, 'catalog/du_lich/tour-thai-lan-ha-noi-bangkok-pattaya-dao-coral-5n4d-bay-qatar-5-sao-hoang-viet-travel-1261_luatsutunhan.jpg', 1),
(52, 52, 'catalog/du_lich/tour-thai-lan-ha-noi-bangkok-pattaya-dao-coral-5n4d-bay-hang-khong-nok-air-hoang-viet-travel-1255_luatsutunhan.jpg', 1),
(53, 53, 'catalog/du_lich/tour-myanmar-ha-noi-yangon-bago-golden-rock-4n3d-bay-vietnam-airlines-1248_luatsutunhan.jpg', 1),
(54, 54, 'catalog/du_lich/tour-uc-ha-noi-sydney-canberra-4n3d-bay-thang-viet-nam-airlines-hoang-viet-travel-1249_luatsutunhan.jpg', 1),
(55, 55, 'catalog/du_lich/tour-campuchia-phnom-penh-2n1d-hai-dang-travel-1081_luatsutunhan.jpg', 1),
(56, 56, 'catalog/du_lich/combo-3n2d-khu-nghi-duong-risemount-da-nang-4-ve-may-bay-khu-hoi-tu-tp-hcm-ha-noi-dua-don-san-bay-an-toi-464_luatsutunhan.png', 1),
(57, 57, 'catalog/du_lich/tron-goi-3n2d-l-alyana-ninh-van-bay-nha-trang-5-dua-don-san-bay-ve-may-bay-khu-hoi-tu-tp-hcm-505_luatsutunhan.png', 1),
(58, 58, 'catalog/du_lich/tron-goi-3n2d-l-alyana-ninh-van-bay-nha-trang-5-ve-may-bay-khu-hoi-tu-ha-noi-508_luatsutunhan.png', 1),
(59, 59, 'catalog/du_lich/tour-nha-trang-da-lat-4n4d-tet-nguyen-dan-hai-dang-travel-525_luatsutunhan.JPG', 1),
(60, 60, 'catalog/du_lich/tour-ninh-chu-da-lat-4n4d-tet-nguyen-dan-hai-dang-travel-480_luatsutunhan.jpg', 1),
(61, 61, 'catalog/du_lich/tour-phu-yen-diep-son-3n3d-4-sao-tet-nguyen-dan-hai-dang-travel-526_luatsutunhan.jpg', 1),
(62, 62, 'catalog/du_lich/tour-tu-binh-3n3d-tet-nguyen-dan-hai-dang-travel-506_luatsutunhan.jpg', 1),
(63, 63, 'catalog/du_lich/tour-ghep-tron-goi-6n5d-ha-noi-singapore-malaysia-ha-noi-hoang-viet-travel-1475_luatsutunhan.jpg', 1),
(64, 64, 'catalog/du_lich/tour-da-nang-ba-na-hill-pho-co-hoi-an-3n4d-hai-dang-travel-1463_luatsutunhan.JPG', 1),
(65, 65, 'catalog/du_lich/tour-quy-nhon-phu-yen-3n4d-hai-dang-travel-1466_luatsutunhan.jpg', 1),
(66, 66, 'catalog/du_lich/tour-binh-ba-nha-trang-da-lat-4n4d-hai-dang-travel-1439_luatsutunhan.jpg', 1),
(67, 67, 'catalog/du_lich/tour-dao-binh-hung-2n2d-hai-dang-travel-1451_luatsutunhan.jpg', 1),
(68, 68, 'catalog/du_lich/tour-ninh-chu-ve-mien-bien-nang-2n2d-hai-dang-travel-1453_luatsutunhan.jpg', 1),
(69, 69, 'catalog/du_lich/tour-dao-diep-son-nha-trang-2n2d-hai-dang-travel-1433_luatsutunhan.jpg', 1),
(70, 70, 'catalog/du_lich/tour-ca-mau-bac-lieu-soc-trang-2n2d-hai-dang-travel-1430_luatsutunhan.jpg', 1),
(71, 71, 'catalog/du_lich/tour-binh-ba-vinh-hy-2n2d-hai-dang-travel-1419_luatsutunhan.jpg', 1),
(72, 72, 'catalog/du_lich/tour-buon-me-thuot-3n3d-hai-dang-travel-1421_luatsutunhan.jpg', 1),
(73, 73, 'catalog/du_lich/tour-buon-me-thuot-gia-lai-kon-tum-mang-den-3n3d-hai-dang-travel-1424_luatsutunhan.jpg', 1),
(74, 74, 'catalog/du_lich/tour-tu-binh-3n3d-hai-dang-travel-1426_luatsutunhan.jpg', 1),
(75, 75, 'catalog/du_lich/tour-tam-binh-3n3d-hai-dang-travel-1425_luatsutunhan.jpg', 1),
(279, 76, 'catalog/du_lich/tour-binh-ba-2n2d-hai-dang-travel-1418_luatsutunhan.jpg', 1),
(77, 77, 'catalog/du_lich/tour-nha-trang-vinh-van-phong-3n3d-hai-dang-travel-1416_luatsutunhan.jpg', 1),
(78, 78, 'catalog/du_lich/tour-nha-trang-sieu-tiet-kiem-2n3d-hai-dang-travel-1415_luatsutunhan.jpg', 1),
(79, 79, 'catalog/du_lich/tour-nha-trang-con-se-tre-3n3d-hai-dang-travel-1409_luatsutunhan.jpg', 1),
(80, 80, 'catalog/du_lich/tour-dao-phu-quy-huyen-thoai-3n3d-hai-dang-travel-1368_luatsutunhan.jpg', 1),
(81, 81, 'catalog/du_lich/tour-dao-nam-du-2n2d-hai-dang-travel-1370_luatsutunhan.jpg', 1),
(82, 82, 'catalog/du_lich/tour-quang-ngai-ly-son-4n4d-hai-dang-travel-1374_luatsutunhan.jpg', 1),
(83, 83, 'catalog/du_lich/tour-dao-hon-son-2n2d-hai-dang-travel-1366_luatsutunhan.jpg', 1),
(84, 84, 'catalog/du_lich/tour-ca-mau-dao-hon-da-bac-3n3d-hai-dang-travel-1364_luatsutunhan.jpg', 1),
(85, 85, 'catalog/du_lich/tour-kham-pha-dao-binh-ba-2n2d-hai-dang-travel-1337_luatsutunhan.jpg', 1),
(86, 86, 'catalog/du_lich/tour-binh-hung-ninh-chu-2n2d-hai-dang-travel-1338_luatsutunhan.jpg', 1),
(87, 87, 'catalog/du_lich/tour-ha-noi-singapore-malaysia-ha-noi-onetour-vie-t-nam-1876_luatsutunhan.jpg', 1),
(88, 88, 'catalog/du_lich/tour-ha-noi-dubai-abu-dhabi-dubai-ha-noi-onetour-vie-t-nam-1871_luatsutunhan.jpg', 1),
(89, 89, 'catalog/du_lich/tour-ha-noi-seoul-nami-everland-thap-nam-san-ha-noi-tang-sauna-onetour-vie-t-nam-1870_luatsutunhan.jpg', 1),
(90, 90, 'catalog/du_lich/tour-phan-thiet-da-lat-4n4d-hai-dang-travel-1445_luatsutunhan.jpg', 1),
(91, 91, 'catalog/du_lich/tour-dao-binh-ba-nha-trang-3n3d-hai-dang-travel-1384_luatsutunhan.jpg', 1),
(92, 92, 'catalog/du_lich/tour-dao-binh-hung-nha-trang-3n3d-hai-dang-travel-1383_luatsutunhan.jpg', 1),
(93, 93, 'catalog/du_lich/tour-diep-son-phu-yen-4-sao-3n3d-hai-dang-travel-1469_luatsutunhan.jpg', 1),
(94, 94, 'catalog/du_lich/tour-dao-hon-tre-2n2d-hai-dang-travel-1381_luatsutunhan.jpg', 1),
(95, 95, 'catalog/du_lich/tour-ha-tien-dao-hai-tac-hai-dang-travel-1360_luatsutunhan.jpg', 1),
(96, 96, 'catalog/du_lich/phu-yen-dai-lanh-4-sao-3n3d-hai-dang-travel-1470_luatsutunhan.png', 1),
(97, 97, 'catalog/du_lich/ha-noi-osaka-kyoto-nagoya-fuji-tokyo-cung-duo-ng-va-ng-1524_luatsutunhan.jpg', 1),
(98, 98, 'catalog/du_lich/tour-dao-ba-lua-rung-tram-tra-su-2n2d-hai-dang-travel-1335_luatsutunhan.jpg', 1),
(99, 99, 'catalog/du_lich/tour-chau-doc-ha-tien-2n2d-hai-dang-travel-1449_luatsutunhan.jpg', 1),
(100, 100, 'catalog/du_lich/tour-phan-thiet-la-gi-2n1d-hai-dang-travel-1446_luatsutunhan.jpg', 1),
(101, 101, 'catalog/du_lich/tour-dao-binh-ba-tom-hum-2n2d-hai-dang-travel-1448_luatsutunhan.jpg', 1),
(102, 102, 'catalog/du_lich/tour-phan-thiet-bluebay-resort-2n1d-hai-dang-travel-1434_luatsutunhan.jpg', 1),
(103, 103, 'catalog/du_lich/tour-ninh-chu-tanyoli-mui-dinh-2n2d-hai-dang-travel-1435_luatsutunhan.jpg', 1),
(104, 104, 'catalog/du_lich/tour-dao-binh-hung-bien-ninh-chu-da-lat-4n4d-hai-dang-travel-1441_luatsutunhan.jpg', 1),
(105, 105, 'catalog/du_lich/tour-nha-trang-da-lat-4n4d-hai-dang-travel-1442_luatsutunhan.jpg', 1),
(106, 106, 'catalog/du_lich/tour-ninh-chu-da-lat-4n4d-hai-dang-travel-1443_luatsutunhan.jpg', 1),
(107, 107, 'catalog/du_lich/tour-binh-ba-da-lat-3n3d-hai-dang-travel-1440_luatsutunhan.jpg', 1),
(108, 108, 'catalog/du_lich/tour-quang-ngai-quy-nhon-3n4d-hai-dang-travel-1460_luatsutunhan.jpg', 1),
(109, 109, 'catalog/du_lich/tour-quy-nhon-ky-co-eo-gio-3n3d-hai-dang-travel-1459_luatsutunhan.jpg', 1),
(110, 110, 'catalog/du_lich/tour-eo-gio-dao-ky-co-3n3d-hai-dang-travel-1458_luatsutunhan.jpg', 1),
(111, 111, 'catalog/du_lich/tour-1-ngay-kham-pha-tokyo-nhat-banonetour-vie-t-nam-2420_luatsutunhan.jpg', 1),
(112, 112, 'catalog/du_lich/du-lich-thai-lan-ha-noi-bangkok-safari-world-pattaya-dao-coral-5-ngay-bay-lion-air-3437_luatsutunhan.jpg', 1),
(113, 113, 'catalog/du_lich/vui-he-cung-du-thuyen-5-sao-kham-pha-singapore-penang-phuket-singapore-khoi-hanh-08-05-2017-star-travel-3312_luatsutunhan.jpg', 1),
(114, 114, 'catalog/du_lich/du-lich-thai-lan-ha-noi-bangkok-pattaya-dao-coral-4-ngay-bay-lion-air-3425_luatsutunhan.jpg', 1),
(115, 115, 'catalog/du_lich/vui-he-cung-du-thuyen-5-sao-kham-pha-singapore-malaysia-khoi-hanh-02-06-star-travel-2418_luatsutunhan.jpg', 1),
(116, 116, 'catalog/du_lich/tour-du-lich-nhat-ban-ha-noi-tokyo-nui-phu-sy-4-ngay-bay-vietnam-airlines-hoang-viet-travel-2498_luatsutunhan.jpg', 1),
(117, 117, 'catalog/du_lich/tour-da-lat-lang-lat3n3d-hai-dang-travel-1492_luatsutunhan.jpg', 1),
(118, 118, 'catalog/du_lich/tour-du-thuyen-5-sao-freedom-of-the-seas-di-tay-ban-nha-phap-y-star-travel-2430_luatsutunhan.jpg', 1),
(119, 119, 'catalog/du_lich/tour-du-thuyen-5-sao-voyager-of-the-seas-di-singapore-kuala-lumpur-star-travel-2431_luatsutunhan.jpg', 1),
(120, 120, 'catalog/du_lich/cung-du-thuyen-5-sao-trai-nghiem-mua-hoa-tim-nhat-ban-2419_luatsutunhan.jpg', 1),
(121, 121, 'catalog/du_lich/kham-pha-tokyo-nhat-ban-3-ngay-2-dem-onetour-viet-nam-2424_luatsutunhan.jpg', 1),
(122, 122, 'catalog/du_lich/tour-2-ngay-kham-pha-outside-truot-tuyet-tai-tokyo-nhat-ban-onetour-viet-nam-2423_luatsutunhan.jpg', 1),
(123, 123, 'catalog/du_lich/tour-2-ngay-kham-pha-tokyo-nhat-ban-onetour-viet-nam-2422_luatsutunhan.jpg', 1),
(124, 124, 'catalog/du_lich/tour-1-ngay-kham-pha-outside-truot-tuyet-tai-tokyo-nhat-ban-onetour-vie-t-nam-2421_luatsutunhan.JPG', 1),
(125, 125, 'catalog/du_lich/tour-dao-diep-son-dai-lanh-2n2d-hai-dang-travel-1432_luatsutunhan.jpg', 1),
(126, 126, 'catalog/du_lich/tour-du-lich-malaysia-ha-noi-kuala-lumpur-genting-4-ngay-khoi-hanh-29-4-hoang-viet-travel-2333_luatsutunhan.jpg', 1),
(127, 127, 'catalog/du_lich/tour-ha-noi-bangkok-pattaya-ha-noi-bay-nok-air-onetour-vie-t-nam-1873_luatsutunhan.jpg', 1),
(128, 128, 'catalog/du_lich/combo-3n2d-khach-san-imperial-vung-tau-5-xe-dua-don-03-bua-an-trua-02-bua-an-sang-va-toi-491_luatsutunhan.png', 1),
(129, 129, 'catalog/du_lich/tour-tam-binh-02-2n2d-hai-dang-travel-1457_luatsutunhan.jpg', 1),
(130, 130, 'catalog/du_lich/tour-phan-thiet-mui-ne-dong-gia-2n1d-hai-dang-travel-1456_luatsutunhan.jpg', 1),
(131, 131, 'catalog/du_lich/tour-nha-trang-du-ngoan-dao-2n2d-hai-dang-travel-1455_luatsutunhan.jpg', 1),
(132, 132, 'catalog/du_lich/tour-ha-noi-bangkok-pattaya-ha-noi-bay-voi-jetstar-onetour-vie-t-nam-1931_luatsutunhan.jpg', 1),
(133, 133, 'catalog/du_lich/tour-ha-noi-singapore-ha-noi-onetour-vie-t-nam-1874_luatsutunhan.jpg', 1),
(134, 134, 'catalog/du_lich/tour-du-lich-han-quoc-tham-du-dai-le-phat-dan-2017-onetour-vie-t-nam-1877_luatsutunhan.jpg', 1),
(135, 135, 'catalog/du_lich/tour-quy-nhon-phu-yen-4n4d-1468_luatsutunhan.jpg', 1),
(136, 136, 'catalog/du_lich/phu-yen-tuy-hoa-4-ngay-3-dem-ghep-tron-goi-5209_luatsutunhan.jpg', 1),
(137, 137, 'catalog/du_lich/tour-du-lich-han-quoc-seoul-everland-dao-nami-4n4d-5640_luatsutunhan.jpg', 1),
(138, 138, 'catalog/du_lich/du-lich-nhat-ban-dip-he-2017-kham-pha-cung-duong-tuyet-tateyama-tuyen-rong-4n4d-5641_luatsutunhan.jpg', 1),
(139, 139, 'catalog/du_lich/tour-nhat-ban-osaka-kyoto-nagoya-fuji-hakone-tokyo-5n5d-5642_luatsutunhan.jpg', 1),
(140, 140, 'catalog/du_lich/du-lich-dubai-4-ngay-4-dem-gia-tot-dip-he-2017-khoi-hanh-tu-tp-hcm-5218_luatsutunhan.jpg', 1),
(141, 141, 'catalog/du_lich/tour-du-lich-da-nang-cao-nguyen-ba-na-hue-hoi-an-le-hoi-phao-hoa-quoc-te-5211_luatsutunhan.jpg', 1),
(142, 142, 'catalog/du_lich/tour-du-lich-ha-noi-ninh-binh-ha-long-sapa-6-ngay-5-dem-5203_luatsutunhan.png', 1),
(143, 143, 'catalog/du_lich/tour-du-lich-he-dong-bac-ha-giang-quan-ba-cao-bang-ho-ba-be-gia-tot-5190_luatsutunhan.jpg', 1),
(144, 144, 'catalog/du_lich/tour-du-lich-ha-noi-yen-tu-ha-long-lao-cai-sapa-5n4d-ks-4-sao-5194_luatsutunhan.jpg', 1),
(145, 145, 'catalog/du_lich/du-lich-ninh-binh-hang-ngay-bai-dinh-trang-an-1-ngay-4426_luatsutunhan.jpg', 1),
(146, 146, 'catalog/du_lich/du-lich-sapa-hang-ngay-sapa-2-ngay-1-dem-3-sao-apt-travel-4425_luatsutunhan.jpg', 1),
(147, 147, 'catalog/du_lich/du-lich-moc-chau-moc-chau-2-ngay-1-dem-thu-7-hang-tuan-4429_luatsutunhan.jpg', 1),
(148, 148, 'catalog/du_lich/du-lich-sapa-hang-ngay-2-ngay-1-dem-khach-san-2-sao-apt-travel-4423_luatsutunhan.jpg', 1),
(149, 149, 'catalog/du_lich/tour-da-lat-mot-thoang-mong-mo-2n2d-1450_luatsutunhan.jpg', 1),
(150, 150, 'catalog/du_lich/tour-nha-trang-vip-buffet-3n3d-1417_luatsutunhan.jpg', 1),
(151, 151, 'catalog/du_lich/tour-nha-trang-du-ngoan-dao-3n3d-1412_luatsutunhan.JPG', 1),
(152, 152, 'catalog/du_lich/tour-nha-trang-hon-tam-3n3d-1411_luatsutunhan.jpg', 1),
(153, 153, 'catalog/du_lich/tour-phu-quoc-dao-ngoc-thien-duong-3n3d-1382_luatsutunhan.jpg', 1),
(154, 154, 'catalog/du_lich/cat-ba-cao-toc-2-ngay-1-dem-2-sao-apt-travel-4305_luatsutunhan.jpg', 1),
(155, 155, 'catalog/du_lich/ha-noi-ho-ba-be-thac-ban-gioc-dong-nguom-ngao-ha-noi-4249_luatsutunhan.jpg', 1),
(156, 156, 'catalog/du_lich/du-lich-dai-loan-ha-noi-dai-bac-dai-trung-cao-hung-ha-noi-apt-travel-4247_luatsutunhan.jpg', 1),
(157, 157, 'catalog/du_lich/ha-long-2-ngay-1-dem-ngu-tau-halong-dragon-gold-3sao-apt-travel-4300_luatsutunhan.jpg', 1),
(158, 158, 'catalog/du_lich/ha-long-2-ngay-1-dem-ngu-tau-vietbeauty-4-sao-apt-travel-4298_luatsutunhan.jpg', 1),
(159, 159, 'catalog/du_lich/du-lich-campuchia-4-ngay-3-dem-siem-reap-phnom-penh-gia-tot-he-2017-6328_luatsutunhan.jpg', 1),
(160, 160, 'catalog/du_lich/du-lich-shihanoukville-korong-saloem-4-ngay-3-dem-he-2017-gia-tot-6329_luatsutunhan.jpg', 1),
(161, 161, 'catalog/du_lich/du-lich-han-quoc-4-ngay-4-dem-gia-tot-2017-khoi-hanh-tu-tp-hcm-6330_luatsutunhan.jpg', 1),
(162, 162, 'catalog/du_lich/du-lich-han-quoc-4-ngay-4-dem-bay-vietjet-air-gia-tot-dip-he-2017-6331_luatsutunhan.jpg', 1),
(163, 163, 'catalog/du_lich/tour-du-lich-han-quoc-5-ngay-5-dem-gia-tot-he-2017-bay-vietjet-air-6332_luatsutunhan.jpg', 1),
(164, 164, 'catalog/du_lich/du-lich-nhat-ban-4-ngay-3-dem-dip-he-2017-ngam-hoa-lavender-6333_luatsutunhan.jpg', 1),
(165, 165, 'catalog/du_lich/du-lich-nhat-ban-he-2017-gia-tot-ngam-hoa-cam-tu-cau-tu-tp-hcm-6334_luatsutunhan.jpg', 1),
(166, 166, 'catalog/du_lich/tour-du-lich-hong-kong-4-ngay-3-dem-gia-tot-2017-tu-sai-gon-6335_luatsutunhan.jpg', 1),
(167, 167, 'catalog/du_lich/du-lich-dai-loan-5-ngay-5-dem-he-2017-khoi-hanh-tu-tp-hcm-6336_luatsutunhan.jpg', 1),
(168, 168, 'catalog/du_lich/du-lich-dai-loan-5-ngay-4-dem-gia-tot-dip-he-2017-khoi-hanh-tu-tp-hcm-6337_luatsutunhan.jpg', 1),
(169, 169, 'catalog/du_lich/du-lich-dai-loan-4-ngay-3-dem-khoi-hanh-tu-sai-gon-gia-tot-he-2017-6338_luatsutunhan.jpg', 1),
(170, 170, 'catalog/du_lich/du-lich-trung-quoc-4-ngay-3-dem-khoi-hanh-tu-sai-gon-gia-tot-2017-6339_luatsutunhan.jpg', 1),
(171, 171, 'catalog/du_lich/du-lich-nhat-ban-5-ngay-5-dem-he-2017-ngam-hoa-lavender-gia-tot-6314_luatsutunhan.jpg', 1),
(172, 172, 'catalog/du_lich/du-lich-thai-lan-5-ngay-4-dem-gia-tot-thang-7-khoi-hanh-tu-tp-hcm-6315_luatsutunhan.jpg', 1),
(173, 173, 'catalog/du_lich/du-lich-thai-lan-5-ngay-4-dem-dip-he-2017-khoi-hanh-tu-sai-gon-6316_luatsutunhan.jpg', 1),
(174, 174, 'catalog/du_lich/du-lich-thai-lan-cao-cap-dip-he-2017-gia-tot-khoi-hanh-tu-tp-hcm-6317_luatsutunhan.jpg', 1),
(175, 175, 'catalog/du_lich/tour-du-lich-thai-lan-5-ngay-4-dem-safari-nong-nooch-gia-tot-he-2017-6318_luatsutunhan.jpg', 1),
(176, 176, 'catalog/du_lich/du-lich-thai-lan-cao-cap-gia-tot-dip-he-2017-khoi-hanh-tu-sai-gon-6319_luatsutunhan.jpg', 1),
(177, 177, 'catalog/du_lich/tour-du-thuyen-5-sao-kham-pha-trung-quoc-nhat-ban-khoi-hanh-31-07-2017-6224_luatsutunhan.jpg', 1),
(178, 178, 'catalog/du_lich/tour-du-lich-thai-lan-ha-noi-bangkok-pattaya-5-ngay-bay-thai-air-asia-hoang-viet-travel-5722_luatsutunhan.jpg', 1),
(179, 179, 'catalog/du_lich/tour-du-thuyen-5-sao-khoi-hanh-15-07-kham-pha-thuong-hai-kumamoto-fukuoka-star-travel-5702_luatsutunhan.jpg', 1),
(180, 180, 'catalog/du_lich/tour-du-thuyen-5-sao-kham-pha-trung-nhat-khoi-hanh-24-6-5675_luatsutunhan.jpg', 1),
(181, 181, 'catalog/du_lich/tour-dao-diep-son-doc-let-2n2d-1347_luatsutunhan.jpg', 1),
(182, 182, 'catalog/du_lich/tour-dao-diep-son-nha-trang-3n3d-1389_luatsutunhan.jpg', 1),
(183, 183, 'catalog/du_lich/du-lich-trung-quoc-7-ngay-6-dem-gia-tot-he-2017-khoi-hanh-tu-tp-hcm-6343_luatsutunhan.jpg', 1),
(184, 184, 'catalog/du_lich/du-lich-mien-tay-trai-nghiem-thu-vui-tat-muong-bat-ca-dip-he-2017-6344_luatsutunhan.jpg', 1),
(185, 185, 'catalog/du_lich/du-lich-phan-thiet-hanh-huong-duc-me-tapao-gia-tot-2017-6345_luatsutunhan.jpg', 1),
(186, 186, 'catalog/du_lich/du-lich-phan-thiet-mui-ne-2-ngay-gia-tot-dip-he-2017-tu-sai-gon-6346_luatsutunhan.jpg', 1),
(187, 187, 'catalog/du_lich/du-lich-mien-tay-my-tho-can-tho-cho-noi-cai-rang-he-2017-6349_luatsutunhan.jpg', 1),
(188, 188, 'catalog/du_lich/du-lich-dao-binh-hung-ninh-chu-2-ngay-2-dem-gia-tot-dip-he-2017-6347_luatsutunhan.png', 1),
(189, 189, 'catalog/du_lich/tour-du-thuyen-5-sao-kham-pha-thuong-hai-hiroshima-miyazaki-kobe-khoi-hanh-21-07-2017-6360_luatsutunhan.jpg', 1),
(190, 190, 'catalog/du_lich/du-lich-mien-tay-ca-mau-dat-mui-soc-trang-2-ngay-2-dem-he-2017-6348_luatsutunhan.jpg', 1),
(191, 191, 'catalog/du_lich/du-lich-mien-tay-ha-tien-2-ngay-gia-tot-khoi-hanh-tu-tp-hcm-6351_luatsutunhan.jpg', 1),
(192, 192, 'catalog/du_lich/du-lich-chau-doc-rung-tra-su-chua-huynh-dao-2n2d-gia-tot-he-2017-6350_luatsutunhan.jpg', 1),
(193, 193, 'catalog/du_lich/du-lich-cam-ranh-dao-binh-ba-2-ngay-2-dem-gia-tot-he-2017-tu-sai-gon-6352_luatsutunhan.jpg', 1),
(194, 194, 'catalog/du_lich/du-lich-mien-tay-kham-pha-dao-nam-du-2-ngay-2-dem-he-2017-tu-sai-gon-6353_luatsutunhan.jpg', 1),
(195, 195, 'catalog/du_lich/du-lich-da-lat-trai-nghiem-voi-nong-trai-da-lat-gia-tot-dip-he-2017-6354_luatsutunhan.jpg', 1),
(196, 196, 'catalog/du_lich/du-lich-mien-tay-my-tho-chau-doc-rung-tra-su-3-ngay-dip-he-2017-6355_luatsutunhan.jpg', 1),
(197, 197, 'catalog/du_lich/du-lich-dao-binh-hung-ninh-chu-vuon-nho-3-ngay-gia-tot-dip-he-2017-6356_luatsutunhan.jpg', 1),
(198, 198, 'catalog/du_lich/tour-trung-nhat-cung-du-thuyen-5-sao-khoi-hanh-08-07-2017-6358_luatsutunhan.jpg', 1),
(199, 199, 'catalog/du_lich/du-lich-singapore-4-ngay-3-dem-dip-he-2017-khoi-hanh-tu-sai-gon-6320_luatsutunhan.jpg', 1),
(200, 200, 'catalog/du_lich/tour-du-lich-singapore-3-ngay-2-dem-gia-tot-he-2017-tu-tp-hcm-6321_luatsutunhan.jpg', 1),
(201, 201, 'catalog/du_lich/du-lich-malaysia-4-ngay-3-dem-dip-he-2017-khoi-hanh-tu-sai-gon-6322_luatsutunhan.jpg', 1),
(202, 202, 'catalog/du_lich/tour-singapore-malaysia-5-ngay-4-dem-dip-he-2017-gia-tot-tu-tp-hcm-6323_luatsutunhan.jpg', 1),
(203, 203, 'catalog/du_lich/tour-du-lich-singapore-malaysia-6-ngay-5-dem-gia-tot-he-2017-6324_luatsutunhan.jpg', 1),
(204, 204, 'catalog/du_lich/du-lich-singapore-malaysia-6-ngay-dip-he-2017-khoi-hanh-tu-sai-gon-6325_luatsutunhan.jpg', 1),
(205, 205, 'catalog/du_lich/du-lich-sin-mal-indo-6-ngay-5-dem-gia-tot-dip-he-2017-tu-tp-hcm-6326_luatsutunhan.jpg', 1),
(206, 206, 'catalog/du_lich/du-lich-indonesia-4-ngay-3-dem-thien-duong-dao-bali-gia-tot-2017-6327_luatsutunhan.jpg', 1),
(207, 207, 'catalog/du_lich/tour-da-lat-thanh-tinh-3n3d-hai-dang-travel-1484_luatsutunhan.jpg', 1),
(208, 208, 'catalog/du_lich/tour-da-lat-thung-lung-vang-3n2d-hai-dang-travel-1485_luatsutunhan.jpg', 1),
(209, 209, 'catalog/du_lich/tour-da-lat-thung-lung-vang-4-sao-3n3d-hai-dang-travel-1487_luatsutunhan.jpg', 1),
(210, 210, 'catalog/du_lich/tour-da-lat-thung-lung-vang-2-sao-3n3d-hai-dang-travel-1488_luatsutunhan.jpg', 1),
(211, 211, 'catalog/du_lich/tour-da-lat-tinh-yeu3n3d-hai-dang-travel-1489_luatsutunhan.jpg', 1),
(212, 212, 'catalog/du_lich/tour-da-lat-thung-lung-tinh-yeu-3n2d-hai-dang-travel-1490_luatsutunhan.jpg', 1),
(213, 213, 'catalog/du_lich/tour-da-lat-phototrip-3n3d-hai-dang-travel-1491_luatsutunhan.jpg', 1),
(214, 214, 'catalog/du_lich/tour-da-lat-vip-3n3d-hai-dang-travel-1493_luatsutunhan.jpg', 1),
(215, 215, 'catalog/du_lich/festival-bien-nha-trang-hai-dang-travel-4597_luatsutunhan.jpg', 1),
(216, 216, 'catalog/du_lich/tour-diep-son-phu-yen-5-sao-3n3d-hai-dang-travel-1471_luatsutunhan.jpg', 1),
(217, 217, 'catalog/du_lich/du-thuyen-5-sao-kham-pha-singapore-penang-langkawi-khoi-hanh-06-11-2017-6563_luatsutunhan.jpg', 1),
(218, 218, 'catalog/du_lich/du-thuyen-5-sao-kham-pha-singapore-penang-phuket-khoi-hanh-31-10-2017-6540_luatsutunhan.jpg', 1),
(219, 219, 'catalog/du_lich/du-lich-ha-giang-lung-cu-dong-van-meo-vac-thu-6-hang-tuan-apt-travel-4250_luatsutunhan.jpg', 1),
(220, 220, 'catalog/du_lich/tour-du-thuyen-5-sao-singapore-penang-langkawi-khoi-hanh-23-10-2017-6525_luatsutunhan.jpg', 1),
(221, 221, 'catalog/du_lich/cung-du-thuyen-5-sao-kham-pha-singapore-penang-phuket-khoi-hanh-16-10-2017-6511_luatsutunhan.jpg', 1),
(222, 222, 'catalog/du_lich/kham-pha-thuong-hai-kumamoto-miyazak-cung-du-thuyen-5-sao-khoi-hanh-25-08-2017-6410_luatsutunhan.jpg', 1),
(223, 223, 'catalog/du_lich/tour-du-thuyen-5-sao-thuong-hai-hiroshima-kochi-khoi-hanh-15-08-2017-6394_luatsutunhan.jpg', 1),
(224, 224, 'catalog/du_lich/tour-du-thuyen-5-sao-thuong-hai-okinawa-khoi-hanh-09-08-2017-star-travel-6383_luatsutunhan.jpg', 1),
(225, 225, 'catalog/du_lich/tour-ghep-tay-thien-tam-dao-2-ngay-1-dem-5222_luatsutunhan.jpg', 1),
(226, 226, 'catalog/du_lich/du-lich-sapa-sapa-3-ngay-2-dem-khach-san-3-sao-4427_luatsutunhan.jpg', 1),
(227, 227, 'catalog/du_lich/du-lich-nga-9-ngay-8-dem-bay-vietnamairline-apt-travel-4303_luatsutunhan.jpg', 1),
(228, 228, 'catalog/du_lich/du-lich-trung-quoc-6-ngay-5-dem-truong-gia-gioi-phuong-hoang-co-tran-6341_luatsutunhan.jpg', 1),
(229, 229, 'catalog/du_lich/du-lich-trung-quoc-6-ngay-5-dem-khoi-hanh-tu-tp-hcm-dip-he-2017-6342_luatsutunhan.jpg', 1),
(230, 230, 'catalog/du_lich/du-lich-trung-quoc-bac-kinh-van-ly-truong-thanh-gia-tot-dip-he-2017-6340_luatsutunhan.jpg', 1),
(231, 231, 'catalog/du_lich/du-lich-mien-bac-ha-long-trang-an-ninh-binh-khuyen-mai-vietnam-airlines-6922_luatsutunhan.jpg', 1),
(232, 232, 'catalog/du_lich/du-lich-mien-bac-ha-noi-sapa-ham-rong-4-ngay-dip-he-2017-6923_luatsutunhan.jpg', 1),
(233, 233, 'catalog/du_lich/du-lich-ha-noi-lao-cai-sapa-fansipan-khuyen-mai-vietnam-airlines-6924_luatsutunhan.jpg', 1),
(234, 234, 'catalog/du_lich/du-lich-mien-bac-ha-long-ninh-binh-dam-van-long-bay-tu-sai-gon-6925_luatsutunhan.jpg', 1),
(235, 235, 'catalog/du_lich/du-lich-mien-bac-5-ngay-bay-tu-sai-gon-khuyen-mai-vietnam-airlines-6926_luatsutunhan.jpg', 1),
(236, 236, 'catalog/du_lich/du-lich-dong-bac-ha-giang-quang-ba-meo-vac-den-hung-he-2017-6927_luatsutunhan.jpg', 1),
(237, 237, 'catalog/du_lich/du-lich-dong-bac-bac-kan-gia-tot-khoi-hanh-tu-sai-gon-he-2017-6928_luatsutunhan.jpg', 1),
(238, 238, 'catalog/du_lich/du-lich-nha-trang-binh-hung-vuon-nho-tu-sai-gon-gia-tot-he-2017-6908_luatsutunhan.jpg', 1),
(239, 239, 'catalog/du_lich/du-lich-nha-trang-phu-yen-ganh-da-dia-4-ngay-gia-tot-dip-he-2017-6907_luatsutunhan.jpg', 1),
(240, 240, 'catalog/du_lich/du-lich-rach-gia-kham-pha-dao-nam-du-3-ngay-3-dem-gia-tot-he-2017-6899_luatsutunhan.jpg', 1),
(241, 241, 'catalog/du_lich/du-lich-buon-ma-thuot-buon-don-3-ngay-gia-tot-tu-sai-gon-dip-he-2017-6900_luatsutunhan.jpg', 1),
(242, 242, 'catalog/du_lich/du-lich-ha-tien-phu-quoc-3-ngay-3-dem-he-2017-khoi-hanh-tu-sai-gon-6901_luatsutunhan.jpg', 1),
(243, 243, 'catalog/du_lich/du-lich-chau-doc-ha-tien-4-ngay-gia-tot-he-2017-khoi-hanh-tu-sai-gon-6902_luatsutunhan.jpg', 1),
(244, 244, 'catalog/du_lich/du-lich-can-tho-ca-mau-soc-trang-bac-lieu-4-ngay-gia-tot-he-2017-6903_luatsutunhan.jpg', 1),
(245, 245, 'catalog/du_lich/tour-thien-duong-dao-phu-quy-thuong-thuc-cua-huynh-de-2017-6904_luatsutunhan.jpg', 1),
(246, 246, 'catalog/du_lich/du-lich-diep-son-chinh-phuc-con-duong-mon-tren-bien-gia-tot-he-2017-6905_luatsutunhan.jpg', 1),
(247, 247, 'catalog/du_lich/du-lich-mien-tay-trai-nghiem-lam-nguoi-dan-miet-vuon-chinh-hieu-he-2017-6906_luatsutunhan.jpg', 1),
(248, 248, 'catalog/du_lich/du-lich-da-lat-doi-mong-mo-langbiang-4-ngay-gia-tot-dip-he-2017-6885_luatsutunhan.jpg', 1),
(249, 249, 'catalog/du_lich/tour-phu-yen-dai-lanh-5-sao-3n3d-hai-dang-travel-1472_luatsutunhan.jpg', 1),
(250, 250, 'catalog/du_lich/tour-phu-yen-vinh-van-phong-3n3d-hai-dang-travel-1474_luatsutunhan.jpg', 1),
(251, 251, 'catalog/du_lich/tour-phu-yen-vinh-van-phong-5-sao-3n3d-hai-dang-travel-1477_luatsutunhan.jpg', 1),
(252, 252, 'catalog/du_lich/tour-da-lat-am-thuc-3n3d-hai-dang-travel-1479_luatsutunhan.jpg', 1),
(253, 253, 'catalog/du_lich/tour-da-lat-milk-3n3d-hai-dang-travel-1481_luatsutunhan.jpg', 1),
(254, 254, 'catalog/du_lich/tour-da-lat-ho-tuyen-lam-3n3d-hai-dang-travel-1482_luatsutunhan.jpg', 1),
(255, 255, 'catalog/du_lich/tour-du-lich-dubai-ha-noi-dubai-abu-dhabi-6-ngay-bay-emirate-airlines-5-sao-2344_luatsutunhan.jpg', 1),
(256, 256, 'catalog/du_lich/tour-du-lich-campuchia-ha-noi-siem-riep-phnompenh-4-ngay-bay-vietjet-air-7359_luatsutunhan.jpg', 1),
(257, 257, 'catalog/du_lich/du-lich-tay-bac-mua-nuoc-do-gia-tot-he-2017-khoi-hanh-tu-sai-gon-6930_luatsutunhan.jpg', 1),
(258, 258, 'catalog/du_lich/du-lich-mien-trung-hue-dip-le-hoi-phao-hoa-quoc-te-da-nang-2017-6932_luatsutunhan.jpg', 1),
(259, 259, 'catalog/du_lich/du-lich-mien-trung-da-nang-hue-phong-nha-he-2017-bay-tu-sai-gon-6933_luatsutunhan.jpg', 1),
(260, 260, 'catalog/du_lich/du-lich-mien-trung-hue-la-vang-dong-thien-duong-he-2017-tu-sai-gon-6935_luatsutunhan.jpg', 1),
(261, 261, 'catalog/du_lich/du-lich-mien-trung-da-nang-hue-ho-truoi-he-2017-bay-tu-sai-gon-6936_luatsutunhan.jpg', 1),
(262, 262, 'catalog/du_lich/du-lich-mien-trung-cu-lao-cham-4-ngay-bay-tu-sai-gon-gia-tot-he-2017-6937_luatsutunhan.jpg', 1),
(263, 263, 'catalog/du_lich/du-lich-mien-trung-hue-hoi-an-dong-phong-nha-he-2017-tu-sai-gon-6938_luatsutunhan.jpg', 1),
(264, 264, 'catalog/du_lich/du-lich-mien-trung-dong-thien-duong-5-ngay-he-2017-bay-tu-sai-gon-6939_luatsutunhan.jpg', 1),
(265, 265, 'catalog/du_lich/tour-da-nang-lao-dong-bac-thai-khoi-hanh-tu-sai-gon-6940_luatsutunhan.jpg', 1),
(266, 266, 'catalog/du_lich/du-lich-nha-trang-vinpearl-nha-tho-da-4-ngay-di-sai-gon-he-2017-6910_luatsutunhan.jpg', 1),
(267, 267, 'catalog/du_lich/du-lich-mien-tay-hon-son-nam-du-3-ngay-3-dem-khoi-hanh-tu-sai-gon-6909_luatsutunhan.jpg', 1),
(268, 268, 'catalog/du_lich/du-lich-nha-trang-da-lat-5-ngay-khoi-hanh-tu-sai-gon-dip-he-2017-6911_luatsutunhan.png', 1),
(269, 269, 'catalog/du_lich/du-lich-mien-tay-ha-tien-phu-quoc-4-ngay-3-dem-gia-tot-dip-he-2017-6912_luatsutunhan.jpg', 1),
(270, 270, 'catalog/du_lich/du-lich-phu-quoc-sieu-khuyen-mai-vietnam-airlines-khoi-hanh-tu-sai-gon-6913_luatsutunhan.jpg', 1),
(271, 271, 'catalog/du_lich/du-lich-phu-quoc-nam-dao-vinpearl-khoi-hanh-tu-sai-gon-he-2017-6915_luatsutunhan.jpg', 1),
(272, 272, 'catalog/du_lich/du-lich-phu-yen-vung-ro-ganh-da-dia-he-2017-khoi-hanh-tu-sai-gon-6916_luatsutunhan.jpg', 1),
(273, 273, 'catalog/du_lich/du-lich-quy-nhon-sieu-khuyen-mai-vietnam-airlines-khoi-hanh-tu-sai-gon-6917_luatsutunhan.jpg', 1),
(274, 274, 'catalog/du_lich/du-lich-quy-nhon-phu-yen-4-ngay-gia-tot-2017-khoi-hanh-tu-sai-gon-6918_luatsutunhan.jpg', 1),
(275, 275, 'catalog/du_lich/du-lich-mai-chau-moc-chau-trang-an-bai-dinh-khoi-hanh-tu-sai-gon-6919_luatsutunhan.jpg', 1),
(276, 276, 'catalog/du_lich/du-lich-mien-bac-ha-noi-chua-bai-dinh-ha-long-he-2017-tu-sai-gon-6920_luatsutunhan.jpg', 1),
(277, 277, 'catalog/du_lich/du-lich-he-2017-mien-bac-ha-noi-ninh-binh-chua-bai-dinh-gia-tot-6921_luatsutunhan.jpg', 1),
(278, 278, 'catalog/du_lich/tour-ha-noi-ha-long-ninh-binh-sapa-khuyen-mai-vietnam-airlines-6929_luatsutunhan.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_option`
--

CREATE TABLE `hoaunet_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_option`
--

INSERT INTO `hoaunet_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(222, 42, 7, '', 1),
(219, 42, 8, '2011-02-20', 1),
(208, 42, 4, 'test', 1),
(218, 42, 1, '', 1),
(209, 42, 6, '', 1),
(217, 42, 5, '', 1),
(223, 42, 2, '', 1),
(226, 30, 5, '', 1),
(221, 42, 9, '22:25', 1),
(220, 42, 10, '2011-02-20 22:25', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_option_value`
--

CREATE TABLE `hoaunet_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_option_value`
--

INSERT INTO `hoaunet_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_recurring`
--

CREATE TABLE `hoaunet_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_related`
--

CREATE TABLE `hoaunet_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_related`
--

INSERT INTO `hoaunet_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41),
(76, 124),
(76, 125),
(124, 76),
(125, 76);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_reward`
--

CREATE TABLE `hoaunet_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_reward`
--

INSERT INTO `hoaunet_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(546, 42, 1, 100),
(519, 47, 1, 300),
(379, 28, 1, 400),
(329, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(335, 40, 1, 0),
(539, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(337, 31, 1, 0),
(425, 35, 1, 0),
(345, 33, 1, 0),
(347, 46, 1, 0),
(545, 41, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(521, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_special`
--

CREATE TABLE `hoaunet_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_special`
--

INSERT INTO `hoaunet_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(440, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(439, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_to_category`
--

CREATE TABLE `hoaunet_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_to_category`
--

INSERT INTO `hoaunet_product_to_category` (`product_id`, `category_id`) VALUES
(1, 43),
(2, 43),
(3, 43),
(4, 43),
(5, 43),
(6, 43),
(7, 43),
(8, 43),
(9, 43),
(10, 43),
(11, 43),
(12, 43),
(13, 43),
(14, 43),
(15, 43),
(16, 43),
(17, 43),
(18, 43),
(19, 43),
(20, 43),
(21, 43),
(22, 43),
(23, 43),
(24, 43),
(25, 43),
(26, 44),
(27, 44),
(28, 44),
(29, 44),
(30, 44),
(31, 44),
(32, 44),
(33, 44),
(34, 44),
(35, 44),
(36, 44),
(37, 44),
(38, 44),
(39, 44),
(40, 44),
(41, 44),
(42, 44),
(43, 44),
(44, 44),
(45, 44),
(46, 44),
(47, 44),
(48, 44),
(49, 44),
(50, 44),
(51, 44),
(52, 44),
(53, 44),
(54, 44),
(55, 44),
(56, 44),
(57, 44),
(58, 44),
(59, 44),
(60, 44),
(61, 44),
(62, 44),
(63, 44),
(64, 44),
(65, 44),
(66, 44),
(67, 44),
(68, 44),
(69, 44),
(70, 44),
(71, 44),
(72, 44),
(73, 44),
(74, 44),
(75, 44),
(76, 44),
(77, 44),
(78, 44),
(79, 44),
(80, 44),
(81, 44),
(82, 44),
(83, 44),
(84, 44),
(85, 44),
(86, 44),
(87, 44),
(88, 44),
(89, 44),
(90, 44),
(91, 44),
(92, 44),
(93, 44),
(94, 44),
(95, 44),
(96, 44),
(97, 44),
(98, 44),
(99, 44),
(100, 44),
(101, 44),
(102, 44),
(103, 44),
(104, 44),
(105, 44),
(106, 44),
(107, 44),
(108, 44),
(109, 44),
(110, 44),
(111, 44),
(112, 44),
(113, 44),
(114, 44),
(115, 44),
(116, 44),
(117, 44),
(118, 44),
(119, 44),
(120, 44),
(121, 44),
(122, 44),
(123, 44),
(124, 44),
(125, 44),
(126, 44),
(127, 44),
(128, 44),
(129, 44),
(130, 44),
(131, 44),
(132, 44),
(133, 44),
(134, 44),
(135, 44),
(136, 44),
(137, 44),
(138, 44),
(139, 44),
(140, 44),
(141, 44),
(142, 44),
(143, 44),
(144, 44),
(145, 44),
(146, 44),
(147, 44),
(148, 44),
(149, 44),
(150, 44),
(151, 44),
(152, 44),
(153, 44),
(154, 44),
(155, 44),
(156, 44),
(157, 44),
(158, 44),
(159, 44),
(160, 44),
(161, 44),
(162, 44),
(163, 44),
(164, 44),
(165, 44),
(166, 44),
(167, 44),
(168, 44),
(169, 44),
(170, 44),
(171, 44),
(172, 44),
(173, 44),
(174, 44),
(175, 44),
(176, 44),
(177, 44),
(178, 44),
(179, 44),
(180, 44),
(181, 44),
(182, 44),
(183, 44),
(184, 44),
(185, 44),
(186, 44),
(187, 44),
(188, 44),
(189, 44),
(190, 44),
(191, 44),
(192, 44),
(193, 44),
(194, 44),
(195, 44),
(196, 44),
(197, 44),
(198, 44),
(199, 44),
(200, 44),
(201, 44),
(202, 44),
(203, 44),
(204, 44),
(205, 44),
(206, 44),
(207, 44),
(208, 44),
(209, 44),
(210, 44),
(211, 44),
(212, 44),
(213, 44),
(214, 44),
(215, 44),
(216, 44),
(217, 44),
(218, 44),
(219, 44),
(220, 44),
(221, 44),
(222, 44),
(223, 44),
(224, 44),
(225, 44),
(226, 44),
(227, 44),
(228, 44),
(229, 44),
(230, 44),
(231, 44),
(232, 44),
(233, 44),
(234, 44),
(235, 44),
(236, 44),
(237, 44),
(238, 44),
(239, 44),
(240, 44),
(241, 44),
(242, 44),
(243, 44),
(244, 44),
(245, 44),
(246, 44),
(247, 44),
(248, 44),
(249, 44),
(250, 44),
(251, 44),
(252, 44),
(253, 44),
(254, 44),
(255, 44),
(256, 44),
(257, 44),
(258, 44),
(259, 44),
(260, 44),
(261, 44),
(262, 44),
(263, 44),
(264, 44),
(265, 44),
(266, 44),
(267, 44),
(268, 44),
(269, 44),
(270, 44),
(271, 44),
(272, 44),
(273, 44),
(274, 44),
(275, 44),
(276, 44),
(277, 44),
(278, 44),
(279, 44),
(280, 44),
(281, 44),
(282, 44),
(283, 44),
(284, 44),
(285, 44),
(286, 44),
(287, 44),
(288, 44),
(289, 44),
(290, 44),
(291, 44),
(292, 44),
(293, 44),
(294, 44),
(295, 44),
(296, 44),
(297, 44),
(298, 44),
(299, 44),
(300, 44),
(301, 44),
(302, 44),
(303, 44);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_to_download`
--

CREATE TABLE `hoaunet_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_to_layout`
--

CREATE TABLE `hoaunet_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_to_layout`
--

INSERT INTO `hoaunet_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(76, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_product_to_store`
--

CREATE TABLE `hoaunet_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_product_to_store`
--

INSERT INTO `hoaunet_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(146, 0),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 0),
(155, 0),
(156, 0),
(157, 0),
(158, 0),
(159, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0),
(164, 0),
(165, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(179, 0),
(180, 0),
(181, 0),
(182, 0),
(183, 0),
(184, 0),
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(193, 0),
(194, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(199, 0),
(200, 0),
(201, 0),
(202, 0),
(203, 0),
(204, 0),
(205, 0),
(206, 0),
(207, 0),
(208, 0),
(209, 0),
(210, 0),
(211, 0),
(212, 0),
(213, 0),
(214, 0),
(215, 0),
(216, 0),
(217, 0),
(218, 0),
(219, 0),
(220, 0),
(221, 0),
(222, 0),
(223, 0),
(224, 0),
(225, 0),
(226, 0),
(227, 0),
(228, 0),
(229, 0),
(230, 0),
(231, 0),
(232, 0),
(233, 0),
(234, 0),
(235, 0),
(236, 0),
(237, 0),
(238, 0),
(239, 0),
(240, 0),
(241, 0),
(242, 0),
(243, 0),
(244, 0),
(245, 0),
(246, 0),
(247, 0),
(248, 0),
(249, 0),
(250, 0),
(251, 0),
(252, 0),
(253, 0),
(254, 0),
(255, 0),
(256, 0),
(257, 0),
(258, 0),
(259, 0),
(260, 0),
(261, 0),
(262, 0),
(263, 0),
(264, 0),
(265, 0),
(266, 0),
(267, 0),
(268, 0),
(269, 0),
(270, 0),
(271, 0),
(272, 0),
(273, 0),
(274, 0),
(275, 0),
(276, 0),
(277, 0),
(278, 0),
(279, 0),
(280, 0),
(281, 0),
(282, 0),
(283, 0),
(284, 0),
(285, 0),
(286, 0),
(287, 0),
(288, 0),
(289, 0),
(290, 0),
(291, 0),
(292, 0),
(293, 0),
(294, 0),
(295, 0),
(296, 0),
(297, 0),
(298, 0),
(299, 0),
(300, 0),
(301, 0),
(302, 0),
(303, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_recurring`
--

CREATE TABLE `hoaunet_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_recurring_description`
--

CREATE TABLE `hoaunet_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_return`
--

CREATE TABLE `hoaunet_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_return_action`
--

CREATE TABLE `hoaunet_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_return_action`
--

INSERT INTO `hoaunet_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_return_history`
--

CREATE TABLE `hoaunet_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_return_reason`
--

CREATE TABLE `hoaunet_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_return_reason`
--

INSERT INTO `hoaunet_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_return_status`
--

CREATE TABLE `hoaunet_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_return_status`
--

INSERT INTO `hoaunet_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_review`
--

CREATE TABLE `hoaunet_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_seo_url`
--

CREATE TABLE `hoaunet_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_seo_url`
--

INSERT INTO `hoaunet_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(824, 0, 1, 'product_id=48', 'ipod-classic'),
(851, 0, 1, 'category_id=20', 'desktops'),
(834, 0, 1, 'category_id=26', 'pc'),
(835, 0, 1, 'category_id=27', 'mac'),
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(772, 0, 1, 'information_id=4', 'about_us'),
(844, 0, 1, 'product_id=42', 'test'),
(854, 0, 1, 'category_id=34', 'mp3-players'),
(852, 0, 1, 'category_id=18', 'laptop-notebook'),
(775, 0, 1, 'category_id=46', 'macs'),
(776, 0, 1, 'category_id=45', 'windows'),
(902, 0, 1, 'category_id=25', 'component'),
(847, 0, 1, 'category_id=29', 'mouse'),
(779, 0, 1, 'category_id=28', 'monitor'),
(907, 0, 1, 'category_id=35', 'test1'),
(782, 0, 1, 'category_id=30', 'printer'),
(783, 0, 1, 'category_id=31', 'scanner'),
(784, 0, 1, 'category_id=32', 'web-camera'),
(860, 0, 1, 'category_id=57', 'tablet'),
(856, 0, 1, 'category_id=17', 'software'),
(858, 0, 1, 'category_id=24', 'smartphone'),
(849, 0, 1, 'category_id=33', 'camera'),
(862, 0, 1, 'category_id=43', 'RESORT'),
(865, 0, 1, 'category_id=44', 'test12'),
(886, 0, 1, 'category_id=47', 'Personal care equipment'),
(894, 0, 1, 'category_id=49', 'Health care'),
(896, 0, 1, 'category_id=50', 'Nutritious food'),
(901, 0, 2, 'category_id=51', 'Phiếu quà tặng'),
(940, 0, 1, 'category_id=52', 'Makeup'),
(885, 0, 2, 'category_id=58', 'Thiết bị massage'),
(912, 0, 1, 'category_id=53', 'Kitchen equipment'),
(914, 0, 1, 'category_id=54', 'Home Appliances'),
(916, 0, 1, 'category_id=55', 'Stationery'),
(918, 0, 1, 'category_id=56', 'Household'),
(920, 0, 1, 'category_id=38', 'Home - Life'),
(926, 0, 1, 'category_id=39', 'The living room\'s furniture'),
(930, 0, 1, 'category_id=40', 'Women\'s Fashion'),
(932, 0, 1, 'category_id=41', 'Middle-aged fashion'),
(938, 0, 1, 'category_id=42', 'Fashion for baby'),
(809, 0, 1, 'product_id=30', 'canon-eos-5d'),
(840, 0, 1, 'product_id=47', 'hp-lp3065'),
(811, 0, 1, 'product_id=28', 'htc-touch-hd'),
(812, 0, 1, 'product_id=43', 'macbook'),
(813, 0, 1, 'product_id=44', 'macbook-air'),
(814, 0, 1, 'product_id=45', 'macbook-pro'),
(816, 0, 1, 'product_id=31', 'nikon-d300'),
(817, 0, 1, 'product_id=29', 'palm-treo-pro'),
(818, 0, 1, 'product_id=35', 'product-8'),
(819, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 0, 1, 'product_id=46', 'sony-vaio'),
(837, 0, 1, 'product_id=41', 'imac'),
(823, 0, 1, 'product_id=40', 'iphone'),
(825, 0, 1, 'product_id=36', 'ipod-nano'),
(826, 0, 1, 'product_id=34', 'ipod-shuffle'),
(827, 0, 1, 'product_id=32', 'ipod-touch'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms'),
(863, 0, 2, 'category_id=43', 'KHÁCH SẠN - RESORT'),
(941, 0, 2, 'category_id=52', 'Sức khỏe &amp; Làm đẹp'),
(884, 0, 1, 'category_id=58', 'massage'),
(887, 0, 2, 'category_id=47', 'Thiết bị chăm sóc cá nhân'),
(893, 0, 2, 'category_id=48', 'Thực phẩm chức năng'),
(892, 0, 1, 'category_id=48', 'Functional foods'),
(895, 0, 2, 'category_id=49', 'Chăm sóc sức khỏe'),
(897, 0, 2, 'category_id=50', 'Thực phẩm bổ dưỡng'),
(900, 0, 1, 'category_id=51', 'Voucher'),
(905, 0, 1, 'category_id=59', 'Domestic'),
(906, 0, 2, 'category_id=59', 'Gia dụng'),
(911, 0, 2, 'category_id=36', 'Đồ gia dụng'),
(910, 0, 1, 'category_id=36', 'Houseware'),
(913, 0, 2, 'category_id=53', 'Thiết bị nhà bếp'),
(915, 0, 2, 'category_id=54', 'Thiết bị gia dụng trong nhà'),
(917, 0, 2, 'category_id=55', 'Văn phòng phẩm'),
(919, 0, 2, 'category_id=56', 'Đồ dùng gia đình'),
(921, 0, 2, 'category_id=38', 'Nhà cửa - Đời sống'),
(925, 0, 2, 'category_id=37', 'Đồ bảo hộ gia đình'),
(924, 0, 1, 'category_id=37', 'Protective goods'),
(927, 0, 2, 'category_id=39', 'Nội thất phòng khách'),
(928, 0, 1, 'category_id=60', 'Fashion'),
(929, 0, 2, 'category_id=60', ' Thời trang'),
(931, 0, 2, 'category_id=40', 'Thời trang nữ'),
(933, 0, 2, 'category_id=41', 'Thời trang trung niên'),
(934, 0, 1, 'category_id=61', 'Jewelry'),
(935, 0, 2, 'category_id=61', 'Trang sức'),
(936, 0, 1, 'category_id=62', 'Mother &amp; Baby'),
(937, 0, 2, 'category_id=62', 'Mẹ &amp; Bé'),
(939, 0, 2, 'category_id=42', 'Thời trang cho bé'),
(942, 0, 2, 'product_id=76', 'Tour Bình Ba 2n2đ - Hai Dang Travel');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_setting`
--

CREATE TABLE `hoaunet_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_setting`
--

INSERT INTO `hoaunet_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(800, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(784, 0, 'config', 'config_mail_smtp_username', '', 0),
(785, 0, 'config', 'config_mail_smtp_password', '', 0),
(786, 0, 'config', 'config_mail_smtp_port', '25', 0),
(787, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(788, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(789, 0, 'config', 'config_mail_alert_email', '', 0),
(790, 0, 'config', 'config_maintenance', '0', 0),
(791, 0, 'config', 'config_seo_url', '1', 0),
(792, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(798, 0, 'config', 'config_file_max_size', '300000', 0),
(799, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(793, 0, 'config', 'config_compression', '0', 0),
(794, 0, 'config', 'config_secure', '0', 0),
(795, 0, 'config', 'config_password', '1', 0),
(796, 0, 'config', 'config_shared', '0', 0),
(797, 0, 'config', 'config_encryption', 'tDrBrAJaLNZQdlxgBLmUEYwos1xPAIWztpiB9pZFw5lq5ivXJg0edvSrzGkQpFKNTQ72JRa46gV36tIoBzoBooVwgi5bEW9zKXtieccFerOewuUNGFilqAvFmaHJYisSvD0HlA1wZK56zWxCSosVGbbddqGrtzoZhigBwq1N34xqHjv4mc2bPGydRgzL8c2KvVjDanCvXIsETVOdkIgfOm3QzNCNNJzKJrbv4CFDRFNIxOHtIfCFNlq2vdmp9GyaAFpnCl5THVOKJpn4XVdaDLnRt0omSDIjupBMIbw37tyBVC2Mdm2Z51B1J8x6PdnLHDZXvteiTZYJwfM15LRYXhz2Fe4g3SLnQZfA5HJILxHnXkvCrz2n3dx9g47wTPOzILrwWXTZ7jqIcwvnTKVTGyjDzWd20HzMDsWNb2PRUzlRlMIdyBuuMEK180iGGOS5qTddKFCHhE29s3oy5BG0urxakPn4KJUel8ue6iVyehGRpqT6Zi9d6s6oy1lwl7UBsB4VncNv2ZlfyUAjfScUqUatYnheHhTm3kGmq9Rg0c9plXPrkmkzgzFlBhstBeZmcX8BGzE9qGhrrLhBoFoytxhO121FzOygc5b7iRNsvcbhjoHaORy3Ewv1XtaCLZmYrfu1z1aH2gTbjvRW3WBf8OZjRMQ3WRDn7kWlqj73lgVmMh00UnbOi4OQycFrRz0dgCsOlf7YJrHqCOy5r9BD4oIaQYyl04uL3ylrtd2oJ0cO2IrlEbGLZ3axHgTOGe23BZlxBvTsJhT0qRoxCPNBitkkK95mcqatAIQcJuZvqzEKtIREGUWLt4076IkA1XT9LXiJacJpOgwZI2JtNtZm8h8vFpTLeg3S2zbQuCkgYwoZkBxPJSKiCrvrVmmS4rP1Mp6FqwxEkNfUNCxY9zRC6DB8o9lAKjgpsTETaEZlVMhMYWJpRg0JkS5YOy5mj5dXxRoV0DOldNrMvMhaDDrB9XFYktxglNy72lnM74fySFB257DO3Hj3Mlnks8Zz7SgS', 0),
(783, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(782, 0, 'config', 'config_mail_parameter', '', 0),
(781, 0, 'config', 'config_mail_engine', 'mail', 0),
(780, 0, 'config', 'config_icon', 'catalog/avatar_hoaunet_s3s.png', 0),
(779, 0, 'config', 'config_logo', 'catalog/avatar_hoaunet_s3s.png', 0),
(778, 0, 'config', 'config_captcha_page', '[\"register\",\"review\",\"return\",\"contact\"]', 1),
(776, 0, 'config', 'config_return_status_id', '2', 0),
(777, 0, 'config', 'config_captcha', '', 0),
(775, 0, 'config', 'config_return_id', '0', 0),
(774, 0, 'config', 'config_affiliate_id', '4', 0),
(773, 0, 'config', 'config_affiliate_commission', '5', 0),
(772, 0, 'config', 'config_affiliate_auto', '0', 0),
(771, 0, 'config', 'config_affiliate_approval', '0', 0),
(770, 0, 'config', 'config_affiliate_group_id', '1', 0),
(769, 0, 'config', 'config_stock_checkout', '0', 0),
(768, 0, 'config', 'config_stock_warning', '0', 0),
(767, 0, 'config', 'config_stock_display', '0', 0),
(766, 0, 'config', 'config_api_id', '2', 0),
(765, 0, 'config', 'config_fraud_status_id', '7', 0),
(764, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(763, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(762, 0, 'config', 'config_order_status_id', '1', 0),
(761, 0, 'config', 'config_checkout_id', '5', 0),
(760, 0, 'config', 'config_checkout_guest', '1', 0),
(759, 0, 'config', 'config_cart_weight', '1', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(125, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(126, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(127, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(128, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(129, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(130, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(131, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(132, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(133, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(134, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(135, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(136, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(137, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(138, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(139, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(140, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(141, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(142, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(143, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(144, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(145, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(146, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(147, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(148, 0, 'theme_default', 'theme_default_status', '1', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(758, 0, 'config', 'config_invoice_prefix', 'INV-2017-00', 0),
(757, 0, 'config', 'config_account_id', '3', 0),
(756, 0, 'config', 'config_login_attempts', '5', 0),
(755, 0, 'config', 'config_customer_price', '0', 0),
(754, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(753, 0, 'config', 'config_customer_group_id', '1', 0),
(752, 0, 'config', 'config_customer_search', '0', 0),
(751, 0, 'config', 'config_customer_activity', '0', 0),
(750, 0, 'config', 'config_customer_online', '0', 0),
(749, 0, 'config', 'config_tax_customer', 'shipping', 0),
(748, 0, 'config', 'config_tax_default', 'shipping', 0),
(747, 0, 'config', 'config_tax', '1', 0),
(746, 0, 'config', 'config_voucher_max', '1000', 0),
(745, 0, 'config', 'config_voucher_min', '1', 0),
(744, 0, 'config', 'config_review_guest', '1', 0),
(743, 0, 'config', 'config_review_status', '1', 0),
(742, 0, 'config', 'config_limit_admin', '20', 0),
(741, 0, 'config', 'config_product_count', '1', 0),
(740, 0, 'config', 'config_weight_class_id', '1', 0),
(739, 0, 'config', 'config_length_class_id', '1', 0),
(738, 0, 'config', 'config_currency_auto', '1', 0),
(737, 0, 'config', 'config_currency', 'vnd', 0),
(736, 0, 'config', 'config_admin_language', 'vi_vn', 0),
(735, 0, 'config', 'config_language', 'vi_vn', 0),
(734, 0, 'config', 'config_zone_id', '3780', 0),
(733, 0, 'config', 'config_country_id', '230', 0),
(732, 0, 'config', 'config_comment', '', 0),
(731, 0, 'config', 'config_open', '', 0),
(730, 0, 'config', 'config_image', 'catalog/avatar_hoaunet_s3s.png', 0),
(729, 0, 'config', 'config_fax', '', 0),
(728, 0, 'config', 'config_telephone', '0909683850', 0),
(727, 0, 'config', 'config_email', 'hoaunet@yahoo.com', 0),
(726, 0, 'config', 'config_geocode', '', 0),
(725, 0, 'config', 'config_address', 'Tô Hiến Thành', 0),
(724, 0, 'config', 'config_owner', 'S3S', 0),
(723, 0, 'config', 'config_name', 'Bán hàng online', 0),
(722, 0, 'config', 'config_layout_id', '4', 0),
(720, 0, 'config', 'config_meta_keyword', 'Bán hàn online Tô Hiến Thành', 0),
(721, 0, 'config', 'config_theme', 'default', 0),
(718, 0, 'config', 'config_meta_title', 'Bán hàn online Tô Hiến Thành', 0),
(719, 0, 'config', 'config_meta_description', 'Bán hàn online Tô Hiến Thành', 0),
(801, 0, 'config', 'config_error_display', '1', 0),
(802, 0, 'config', 'config_error_log', '1', 0),
(803, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_shipping_courier`
--

CREATE TABLE `hoaunet_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_shipping_courier`
--

INSERT INTO `hoaunet_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_statistics`
--

CREATE TABLE `hoaunet_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_statistics`
--

INSERT INTO `hoaunet_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '105.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_stock_status`
--

CREATE TABLE `hoaunet_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_stock_status`
--

INSERT INTO `hoaunet_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_store`
--

CREATE TABLE `hoaunet_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_tax_class`
--

CREATE TABLE `hoaunet_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_tax_class`
--

INSERT INTO `hoaunet_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_tax_rate`
--

CREATE TABLE `hoaunet_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_tax_rate`
--

INSERT INTO `hoaunet_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_tax_rate_to_customer_group`
--

CREATE TABLE `hoaunet_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_tax_rate_to_customer_group`
--

INSERT INTO `hoaunet_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_tax_rule`
--

CREATE TABLE `hoaunet_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_tax_rule`
--

INSERT INTO `hoaunet_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_theme`
--

CREATE TABLE `hoaunet_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_translation`
--

CREATE TABLE `hoaunet_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_upload`
--

CREATE TABLE `hoaunet_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_user`
--

CREATE TABLE `hoaunet_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_user`
--

INSERT INTO `hoaunet_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '2d993137e108fe9c95a4e2d33c5c699d3cf90bf4', 'MbjmKDf0z', 'Le', 'Hoa', 'hoaunet@yahoo.com', 'catalog/avatar_hoaunet_s3s.png', '', '::1', 1, '2017-06-21 18:34:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_user_group`
--

CREATE TABLE `hoaunet_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_user_group`
--

INSERT INTO `hoaunet_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/profile\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/analytics\\/google\",\"analytics\\/google\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/profile\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/event\",\"marketplace\\/api\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/analytics\\/google\",\"analytics\\/google\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_voucher`
--

CREATE TABLE `hoaunet_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_voucher_history`
--

CREATE TABLE `hoaunet_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_voucher_theme`
--

CREATE TABLE `hoaunet_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_voucher_theme`
--

INSERT INTO `hoaunet_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_voucher_theme_description`
--

CREATE TABLE `hoaunet_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_voucher_theme_description`
--

INSERT INTO `hoaunet_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_weight_class`
--

CREATE TABLE `hoaunet_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_weight_class`
--

INSERT INTO `hoaunet_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_weight_class_description`
--

CREATE TABLE `hoaunet_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_weight_class_description`
--

INSERT INTO `hoaunet_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_zone`
--

CREATE TABLE `hoaunet_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_zone`
--

INSERT INTO `hoaunet_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `hoaunet_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `hoaunet_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoaunet_zone_to_geo_zone`
--

CREATE TABLE `hoaunet_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoaunet_zone_to_geo_zone`
--

INSERT INTO `hoaunet_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hoaunet_address`
--
ALTER TABLE `hoaunet_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `hoaunet_api`
--
ALTER TABLE `hoaunet_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Chỉ mục cho bảng `hoaunet_api_ip`
--
ALTER TABLE `hoaunet_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Chỉ mục cho bảng `hoaunet_api_session`
--
ALTER TABLE `hoaunet_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Chỉ mục cho bảng `hoaunet_attribute`
--
ALTER TABLE `hoaunet_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Chỉ mục cho bảng `hoaunet_attribute_description`
--
ALTER TABLE `hoaunet_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_attribute_group`
--
ALTER TABLE `hoaunet_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Chỉ mục cho bảng `hoaunet_attribute_group_description`
--
ALTER TABLE `hoaunet_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_banner`
--
ALTER TABLE `hoaunet_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Chỉ mục cho bảng `hoaunet_banner_image`
--
ALTER TABLE `hoaunet_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Chỉ mục cho bảng `hoaunet_cart`
--
ALTER TABLE `hoaunet_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Chỉ mục cho bảng `hoaunet_category`
--
ALTER TABLE `hoaunet_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `hoaunet_category_description`
--
ALTER TABLE `hoaunet_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `hoaunet_category_filter`
--
ALTER TABLE `hoaunet_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Chỉ mục cho bảng `hoaunet_category_path`
--
ALTER TABLE `hoaunet_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Chỉ mục cho bảng `hoaunet_category_to_layout`
--
ALTER TABLE `hoaunet_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `hoaunet_category_to_store`
--
ALTER TABLE `hoaunet_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `hoaunet_country`
--
ALTER TABLE `hoaunet_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Chỉ mục cho bảng `hoaunet_coupon`
--
ALTER TABLE `hoaunet_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `hoaunet_coupon_category`
--
ALTER TABLE `hoaunet_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Chỉ mục cho bảng `hoaunet_coupon_history`
--
ALTER TABLE `hoaunet_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Chỉ mục cho bảng `hoaunet_coupon_product`
--
ALTER TABLE `hoaunet_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Chỉ mục cho bảng `hoaunet_currency`
--
ALTER TABLE `hoaunet_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Chỉ mục cho bảng `hoaunet_customer`
--
ALTER TABLE `hoaunet_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `hoaunet_customer_activity`
--
ALTER TABLE `hoaunet_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Chỉ mục cho bảng `hoaunet_customer_affiliate`
--
ALTER TABLE `hoaunet_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `hoaunet_customer_approval`
--
ALTER TABLE `hoaunet_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Chỉ mục cho bảng `hoaunet_customer_group`
--
ALTER TABLE `hoaunet_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Chỉ mục cho bảng `hoaunet_customer_group_description`
--
ALTER TABLE `hoaunet_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_customer_history`
--
ALTER TABLE `hoaunet_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Chỉ mục cho bảng `hoaunet_customer_ip`
--
ALTER TABLE `hoaunet_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `hoaunet_customer_login`
--
ALTER TABLE `hoaunet_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `hoaunet_customer_online`
--
ALTER TABLE `hoaunet_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Chỉ mục cho bảng `hoaunet_customer_reward`
--
ALTER TABLE `hoaunet_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Chỉ mục cho bảng `hoaunet_customer_search`
--
ALTER TABLE `hoaunet_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Chỉ mục cho bảng `hoaunet_customer_transaction`
--
ALTER TABLE `hoaunet_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Chỉ mục cho bảng `hoaunet_customer_wishlist`
--
ALTER TABLE `hoaunet_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Chỉ mục cho bảng `hoaunet_custom_field`
--
ALTER TABLE `hoaunet_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Chỉ mục cho bảng `hoaunet_custom_field_customer_group`
--
ALTER TABLE `hoaunet_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `hoaunet_custom_field_description`
--
ALTER TABLE `hoaunet_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_custom_field_value`
--
ALTER TABLE `hoaunet_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Chỉ mục cho bảng `hoaunet_custom_field_value_description`
--
ALTER TABLE `hoaunet_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_download`
--
ALTER TABLE `hoaunet_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Chỉ mục cho bảng `hoaunet_download_description`
--
ALTER TABLE `hoaunet_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_event`
--
ALTER TABLE `hoaunet_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Chỉ mục cho bảng `hoaunet_extension`
--
ALTER TABLE `hoaunet_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Chỉ mục cho bảng `hoaunet_extension_install`
--
ALTER TABLE `hoaunet_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Chỉ mục cho bảng `hoaunet_extension_path`
--
ALTER TABLE `hoaunet_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Chỉ mục cho bảng `hoaunet_filter`
--
ALTER TABLE `hoaunet_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Chỉ mục cho bảng `hoaunet_filter_description`
--
ALTER TABLE `hoaunet_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_filter_group`
--
ALTER TABLE `hoaunet_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Chỉ mục cho bảng `hoaunet_filter_group_description`
--
ALTER TABLE `hoaunet_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_geo_zone`
--
ALTER TABLE `hoaunet_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Chỉ mục cho bảng `hoaunet_information`
--
ALTER TABLE `hoaunet_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Chỉ mục cho bảng `hoaunet_information_description`
--
ALTER TABLE `hoaunet_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_information_to_layout`
--
ALTER TABLE `hoaunet_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Chỉ mục cho bảng `hoaunet_information_to_store`
--
ALTER TABLE `hoaunet_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Chỉ mục cho bảng `hoaunet_language`
--
ALTER TABLE `hoaunet_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `hoaunet_layout`
--
ALTER TABLE `hoaunet_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Chỉ mục cho bảng `hoaunet_layout_module`
--
ALTER TABLE `hoaunet_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Chỉ mục cho bảng `hoaunet_layout_route`
--
ALTER TABLE `hoaunet_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Chỉ mục cho bảng `hoaunet_length_class`
--
ALTER TABLE `hoaunet_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Chỉ mục cho bảng `hoaunet_length_class_description`
--
ALTER TABLE `hoaunet_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_location`
--
ALTER TABLE `hoaunet_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `hoaunet_manufacturer`
--
ALTER TABLE `hoaunet_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Chỉ mục cho bảng `hoaunet_manufacturer_to_store`
--
ALTER TABLE `hoaunet_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Chỉ mục cho bảng `hoaunet_marketing`
--
ALTER TABLE `hoaunet_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Chỉ mục cho bảng `hoaunet_modification`
--
ALTER TABLE `hoaunet_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Chỉ mục cho bảng `hoaunet_module`
--
ALTER TABLE `hoaunet_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Chỉ mục cho bảng `hoaunet_option`
--
ALTER TABLE `hoaunet_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Chỉ mục cho bảng `hoaunet_option_description`
--
ALTER TABLE `hoaunet_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_option_value`
--
ALTER TABLE `hoaunet_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Chỉ mục cho bảng `hoaunet_option_value_description`
--
ALTER TABLE `hoaunet_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_order`
--
ALTER TABLE `hoaunet_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `hoaunet_order_history`
--
ALTER TABLE `hoaunet_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Chỉ mục cho bảng `hoaunet_order_option`
--
ALTER TABLE `hoaunet_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Chỉ mục cho bảng `hoaunet_order_product`
--
ALTER TABLE `hoaunet_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `hoaunet_order_recurring`
--
ALTER TABLE `hoaunet_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Chỉ mục cho bảng `hoaunet_order_recurring_transaction`
--
ALTER TABLE `hoaunet_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Chỉ mục cho bảng `hoaunet_order_shipment`
--
ALTER TABLE `hoaunet_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Chỉ mục cho bảng `hoaunet_order_status`
--
ALTER TABLE `hoaunet_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_order_total`
--
ALTER TABLE `hoaunet_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `hoaunet_order_voucher`
--
ALTER TABLE `hoaunet_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Chỉ mục cho bảng `hoaunet_product`
--
ALTER TABLE `hoaunet_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_attribute`
--
ALTER TABLE `hoaunet_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_description`
--
ALTER TABLE `hoaunet_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `hoaunet_product_discount`
--
ALTER TABLE `hoaunet_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_filter`
--
ALTER TABLE `hoaunet_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_image`
--
ALTER TABLE `hoaunet_product_image`
  ADD PRIMARY KEY (`product_image_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_option`
--
ALTER TABLE `hoaunet_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_option_value`
--
ALTER TABLE `hoaunet_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_recurring`
--
ALTER TABLE `hoaunet_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_related`
--
ALTER TABLE `hoaunet_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_reward`
--
ALTER TABLE `hoaunet_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_special`
--
ALTER TABLE `hoaunet_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_to_category`
--
ALTER TABLE `hoaunet_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_to_download`
--
ALTER TABLE `hoaunet_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_to_layout`
--
ALTER TABLE `hoaunet_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `hoaunet_product_to_store`
--
ALTER TABLE `hoaunet_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `hoaunet_recurring`
--
ALTER TABLE `hoaunet_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Chỉ mục cho bảng `hoaunet_recurring_description`
--
ALTER TABLE `hoaunet_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_return`
--
ALTER TABLE `hoaunet_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Chỉ mục cho bảng `hoaunet_return_action`
--
ALTER TABLE `hoaunet_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_return_history`
--
ALTER TABLE `hoaunet_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Chỉ mục cho bảng `hoaunet_return_reason`
--
ALTER TABLE `hoaunet_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_return_status`
--
ALTER TABLE `hoaunet_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_review`
--
ALTER TABLE `hoaunet_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `hoaunet_seo_url`
--
ALTER TABLE `hoaunet_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Chỉ mục cho bảng `hoaunet_setting`
--
ALTER TABLE `hoaunet_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Chỉ mục cho bảng `hoaunet_shipping_courier`
--
ALTER TABLE `hoaunet_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Chỉ mục cho bảng `hoaunet_statistics`
--
ALTER TABLE `hoaunet_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Chỉ mục cho bảng `hoaunet_stock_status`
--
ALTER TABLE `hoaunet_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_store`
--
ALTER TABLE `hoaunet_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Chỉ mục cho bảng `hoaunet_tax_class`
--
ALTER TABLE `hoaunet_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Chỉ mục cho bảng `hoaunet_tax_rate`
--
ALTER TABLE `hoaunet_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Chỉ mục cho bảng `hoaunet_tax_rate_to_customer_group`
--
ALTER TABLE `hoaunet_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `hoaunet_tax_rule`
--
ALTER TABLE `hoaunet_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Chỉ mục cho bảng `hoaunet_theme`
--
ALTER TABLE `hoaunet_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Chỉ mục cho bảng `hoaunet_translation`
--
ALTER TABLE `hoaunet_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Chỉ mục cho bảng `hoaunet_upload`
--
ALTER TABLE `hoaunet_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Chỉ mục cho bảng `hoaunet_user`
--
ALTER TABLE `hoaunet_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `hoaunet_user_group`
--
ALTER TABLE `hoaunet_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Chỉ mục cho bảng `hoaunet_voucher`
--
ALTER TABLE `hoaunet_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Chỉ mục cho bảng `hoaunet_voucher_history`
--
ALTER TABLE `hoaunet_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Chỉ mục cho bảng `hoaunet_voucher_theme`
--
ALTER TABLE `hoaunet_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Chỉ mục cho bảng `hoaunet_voucher_theme_description`
--
ALTER TABLE `hoaunet_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_weight_class`
--
ALTER TABLE `hoaunet_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Chỉ mục cho bảng `hoaunet_weight_class_description`
--
ALTER TABLE `hoaunet_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Chỉ mục cho bảng `hoaunet_zone`
--
ALTER TABLE `hoaunet_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `hoaunet_zone_to_geo_zone`
--
ALTER TABLE `hoaunet_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoaunet_address`
--
ALTER TABLE `hoaunet_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_api`
--
ALTER TABLE `hoaunet_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `hoaunet_api_ip`
--
ALTER TABLE `hoaunet_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `hoaunet_api_session`
--
ALTER TABLE `hoaunet_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `hoaunet_attribute`
--
ALTER TABLE `hoaunet_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `hoaunet_attribute_group`
--
ALTER TABLE `hoaunet_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `hoaunet_banner`
--
ALTER TABLE `hoaunet_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `hoaunet_banner_image`
--
ALTER TABLE `hoaunet_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT cho bảng `hoaunet_cart`
--
ALTER TABLE `hoaunet_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_category`
--
ALTER TABLE `hoaunet_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT cho bảng `hoaunet_country`
--
ALTER TABLE `hoaunet_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT cho bảng `hoaunet_coupon`
--
ALTER TABLE `hoaunet_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `hoaunet_coupon_history`
--
ALTER TABLE `hoaunet_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_coupon_product`
--
ALTER TABLE `hoaunet_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_currency`
--
ALTER TABLE `hoaunet_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `hoaunet_customer`
--
ALTER TABLE `hoaunet_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `hoaunet_customer_activity`
--
ALTER TABLE `hoaunet_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_customer_approval`
--
ALTER TABLE `hoaunet_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_customer_group`
--
ALTER TABLE `hoaunet_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `hoaunet_customer_history`
--
ALTER TABLE `hoaunet_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_customer_ip`
--
ALTER TABLE `hoaunet_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_customer_login`
--
ALTER TABLE `hoaunet_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `hoaunet_customer_reward`
--
ALTER TABLE `hoaunet_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_customer_search`
--
ALTER TABLE `hoaunet_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_customer_transaction`
--
ALTER TABLE `hoaunet_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_custom_field`
--
ALTER TABLE `hoaunet_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_custom_field_value`
--
ALTER TABLE `hoaunet_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_download`
--
ALTER TABLE `hoaunet_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_event`
--
ALTER TABLE `hoaunet_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT cho bảng `hoaunet_extension`
--
ALTER TABLE `hoaunet_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT cho bảng `hoaunet_extension_install`
--
ALTER TABLE `hoaunet_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_extension_path`
--
ALTER TABLE `hoaunet_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_filter`
--
ALTER TABLE `hoaunet_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_filter_group`
--
ALTER TABLE `hoaunet_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_geo_zone`
--
ALTER TABLE `hoaunet_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `hoaunet_information`
--
ALTER TABLE `hoaunet_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `hoaunet_language`
--
ALTER TABLE `hoaunet_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `hoaunet_layout`
--
ALTER TABLE `hoaunet_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `hoaunet_layout_module`
--
ALTER TABLE `hoaunet_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT cho bảng `hoaunet_layout_route`
--
ALTER TABLE `hoaunet_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT cho bảng `hoaunet_length_class`
--
ALTER TABLE `hoaunet_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `hoaunet_location`
--
ALTER TABLE `hoaunet_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_manufacturer`
--
ALTER TABLE `hoaunet_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `hoaunet_marketing`
--
ALTER TABLE `hoaunet_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_modification`
--
ALTER TABLE `hoaunet_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_module`
--
ALTER TABLE `hoaunet_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT cho bảng `hoaunet_option`
--
ALTER TABLE `hoaunet_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `hoaunet_option_value`
--
ALTER TABLE `hoaunet_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT cho bảng `hoaunet_order`
--
ALTER TABLE `hoaunet_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `hoaunet_order_history`
--
ALTER TABLE `hoaunet_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `hoaunet_order_option`
--
ALTER TABLE `hoaunet_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_order_product`
--
ALTER TABLE `hoaunet_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `hoaunet_order_recurring`
--
ALTER TABLE `hoaunet_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_order_recurring_transaction`
--
ALTER TABLE `hoaunet_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_order_shipment`
--
ALTER TABLE `hoaunet_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_order_status`
--
ALTER TABLE `hoaunet_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `hoaunet_order_total`
--
ALTER TABLE `hoaunet_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `hoaunet_order_voucher`
--
ALTER TABLE `hoaunet_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_product`
--
ALTER TABLE `hoaunet_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT cho bảng `hoaunet_product_discount`
--
ALTER TABLE `hoaunet_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;
--
-- AUTO_INCREMENT cho bảng `hoaunet_product_image`
--
ALTER TABLE `hoaunet_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;
--
-- AUTO_INCREMENT cho bảng `hoaunet_product_option`
--
ALTER TABLE `hoaunet_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT cho bảng `hoaunet_product_option_value`
--
ALTER TABLE `hoaunet_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `hoaunet_product_reward`
--
ALTER TABLE `hoaunet_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;
--
-- AUTO_INCREMENT cho bảng `hoaunet_product_special`
--
ALTER TABLE `hoaunet_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT cho bảng `hoaunet_recurring`
--
ALTER TABLE `hoaunet_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_return`
--
ALTER TABLE `hoaunet_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_return_action`
--
ALTER TABLE `hoaunet_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `hoaunet_return_history`
--
ALTER TABLE `hoaunet_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_return_reason`
--
ALTER TABLE `hoaunet_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `hoaunet_return_status`
--
ALTER TABLE `hoaunet_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `hoaunet_review`
--
ALTER TABLE `hoaunet_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_seo_url`
--
ALTER TABLE `hoaunet_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=943;
--
-- AUTO_INCREMENT cho bảng `hoaunet_setting`
--
ALTER TABLE `hoaunet_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=804;
--
-- AUTO_INCREMENT cho bảng `hoaunet_statistics`
--
ALTER TABLE `hoaunet_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `hoaunet_stock_status`
--
ALTER TABLE `hoaunet_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `hoaunet_store`
--
ALTER TABLE `hoaunet_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_tax_class`
--
ALTER TABLE `hoaunet_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `hoaunet_tax_rate`
--
ALTER TABLE `hoaunet_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT cho bảng `hoaunet_tax_rule`
--
ALTER TABLE `hoaunet_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT cho bảng `hoaunet_theme`
--
ALTER TABLE `hoaunet_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_translation`
--
ALTER TABLE `hoaunet_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_upload`
--
ALTER TABLE `hoaunet_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_user`
--
ALTER TABLE `hoaunet_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `hoaunet_user_group`
--
ALTER TABLE `hoaunet_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `hoaunet_voucher`
--
ALTER TABLE `hoaunet_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_voucher_history`
--
ALTER TABLE `hoaunet_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `hoaunet_voucher_theme`
--
ALTER TABLE `hoaunet_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `hoaunet_weight_class`
--
ALTER TABLE `hoaunet_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `hoaunet_zone`
--
ALTER TABLE `hoaunet_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;
--
-- AUTO_INCREMENT cho bảng `hoaunet_zone_to_geo_zone`
--
ALTER TABLE `hoaunet_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
