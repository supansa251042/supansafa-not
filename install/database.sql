-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2018 at 10:54 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


-- --------------------------------------------------------

--
-- โครงสร้างตาราง `{prefix}_01work`
--

CREATE TABLE `{prefix}_01work` (
  `id` int(2) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `{prefix}_01work`
--

INSERT INTO `{prefix}_01work` (`id`, `title`, `description`, `fname`) VALUES
(1, 'การเขียนเว็บไซต์', 'ให้นักเรียนนักศึกษาดูจากตัวอย่างที่อาจารย์สอนให้เป็นแบบอย่างในการทำงานต่อไป', 'อ.คำภี');

--
-- โครงสร้างตาราง `{prefix}_member`
--

CREATE TABLE `{prefix}_member` (
  `id_m` int(2) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ',
  `lname` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อ',
  `fame` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุล',
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมลล์',
  `tel` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เบอร์โทร',
  `address` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'ที่อยู๋',
  `uname` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อผู้ใช้',
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัส',
  `typeid` int(3) NOT NULL COMMENT 'รหัสประเภท',
  PRIMARY KEY (`id_m`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- โครงสร้างตาราง `{prefix}_member`
--
CREATE TABLE `type` (
  `typeid` int(3) NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภท',
  `typename` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ประเภทสินค้า',
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางประเภท';

--
-- โครงสร้างตาราง `{prefix}_member`
--

CREATE TABLE `product` (
  `proid` int(5) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสินค้า',
  `proname` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อสินค้า',
  `detail` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รายละเอียด',
  `price` float NOT NULL COMMENT 'ราคา',
  `ิbal` int(10) NOT NULL COMMENT 'จำนวนคงเหลือ',
  `typeid` varchar(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสประเภท',
  PRIMARY KEY (`proid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางสินค้า';


--
-- โครงสร้างตาราง `{prefix}_member`
--
CREATE TABLE `basket` (
  `orderid` int(10) NOT NULL AUTO_INCREMENT COMMENT 'เลขที่วั่งสินค้า',
  `basname` date NOT NULL COMMENT 'วันที่',
  `uname` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ผู้สั่ง',
  `proid` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสสินค้า',
  `amount` int(10) NOT NULL COMMENT 'จำนวน',
  `status` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'สถานะการสั่ง',
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางตะกร้า';

--
-- โครงสร้างตาราง `{prefix}_member`
--
CREATE TABLE `payment` (
  `payid` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ',
  `paydaet` date NOT NULL COMMENT 'วันที่',
  `paytime` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'เวลา',
  `channel` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ช่องทางการชำระ',
  `total` float NOT NULL COMMENT 'ยอดชำระ',
  `uname` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ผู้ชำระ',
  PRIMARY KEY (`payid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางหารชำระ';

--
-- โครงสร้างตาราง `{prefix}_member`
--
CREATE TABLE `question` (
  `qid` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับคำถาม',
  `qdate` date NOT NULL COMMENT 'วันที่',
  `q` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'คำถาม',
  `uname` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ผู้ถาม',
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- โครงสร้างตาราง `{prefix}_member`
--

CREATE TABLE `answer` (
  `aid` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับความคิด',
  `adate` date NOT NULL COMMENT 'วันที่',
  `a` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ความคิดเห็น',
  `uname` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ผู้ตอบ',
  `qid` int(10) NOT NULL COMMENT 'ลำดับคำถาม',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






