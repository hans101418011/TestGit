-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 伺服器版本:                        10.4.13-MariaDB - mariadb.org binary distribution
-- 伺服器作業系統:                      Win64
-- HeidiSQL 版本:                  11.3.0.6462
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 傾印 restaurant_toscano 的資料庫結構
CREATE DATABASE IF NOT EXISTS `restaurant_toscano` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `restaurant_toscano`;

-- 傾印  資料表 restaurant_toscano.custom_order 結構
CREATE TABLE IF NOT EXISTS `custom_order` (
  `No` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '訂單編號',
  `memberNo` char(50) NOT NULL DEFAULT '' COMMENT '會員編號',
  `keyinDate` date NOT NULL COMMENT '資料記錄日期',
  `order_outsend` varchar(4) NOT NULL COMMENT '訂餐/訂位判別欄位',
  `orderTable_date` date DEFAULT NULL COMMENT '訂位日期',
  `orderTable_time` varchar(6) DEFAULT NULL COMMENT '訂位時間',
  `orderFood_date` date DEFAULT NULL COMMENT '訂餐日期',
  `freightage` int(10) unsigned DEFAULT 0 COMMENT '外送運費',
  `location` varchar(100) DEFAULT NULL COMMENT '外送地址',
  `amount` int(10) unsigned DEFAULT 0 COMMENT '外送總金額',
  `finish` varchar(4) NOT NULL DEFAULT '0' COMMENT '訂單狀態',
  `notations` varchar(50) DEFAULT NULL COMMENT '備註',
  PRIMARY KEY (`No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='訂位訂餐';

-- 取消選取資料匯出。

-- 傾印  資料表 restaurant_toscano.member 結構
CREATE TABLE IF NOT EXISTS `member` (
  `No` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '會員編號',
  `account` varchar(20) NOT NULL COMMENT '帳號',
  `passwd` varchar(20) NOT NULL COMMENT '密碼',
  `email` varchar(100) NOT NULL COMMENT '電子郵件',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sex` char(2) DEFAULT NULL COMMENT '性別',
  `address` varchar(160) DEFAULT NULL COMMENT '地址',
  `tel` varchar(16) DEFAULT NULL COMMENT '電話',
  `mobileNumber` varchar(10) NOT NULL COMMENT '手機號碼',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `records` varchar(100) DEFAULT NULL COMMENT '紀錄',
  PRIMARY KEY (`account`) USING BTREE,
  KEY `No` (`No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='會員資料表';

-- 取消選取資料匯出。

-- 傾印  資料表 restaurant_toscano.menu 結構
CREATE TABLE IF NOT EXISTS `menu` (
  `No` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '餐點編號',
  `class` varchar(10) NOT NULL COMMENT '分類名稱',
  `price` int(10) unsigned NOT NULL DEFAULT 99999 COMMENT '價格',
  `cName` varchar(30) NOT NULL COMMENT '中文菜名',
  `eName` varchar(30) NOT NULL COMMENT '英文菜名',
  `introduce` varchar(250) DEFAULT NULL COMMENT '餐點介紹',
  PRIMARY KEY (`No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜單';

-- 取消選取資料匯出。

-- 傾印  資料表 restaurant_toscano.order_food 結構
CREATE TABLE IF NOT EXISTS `order_food` (
  `No` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '訂單編號',
  `menu_no` varchar(10) NOT NULL COMMENT '餐點編號',
  `numbers` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '數量',
  `outSend_date` date NOT NULL COMMENT '外送日期',
  `outSend_time` varchar(6) NOT NULL COMMENT '外送時間',
  `notatioins` varchar(50) DEFAULT NULL COMMENT '備註',
  PRIMARY KEY (`No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外送份數';

-- 取消選取資料匯出。

-- 傾印  資料表 restaurant_toscano.order_seats 結構
CREATE TABLE IF NOT EXISTS `order_seats` (
  `No` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '訂單編號',
  `table_no` varchar(10) NOT NULL COMMENT '桌號',
  `orderTable_date` date NOT NULL COMMENT '訂位日期',
  `orderTable_time` varchar(6) NOT NULL COMMENT '訂位時間',
  `notations` varchar(50) DEFAULT NULL COMMENT '備註',
  PRIMARY KEY (`No`,`table_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='訂位桌號';

-- 取消選取資料匯出。

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
