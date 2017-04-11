/*
SQLyog Enterprise - MySQL GUI v6.15
MySQL - 5.1.41 : Database - managebook
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `managebook`;

USE `managebook`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bookOri` float NOT NULL,
  `bookPrice` float NOT NULL,
  `bookPub` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bookPic` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.gif',
  `bookAddTime` datetime NOT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `books` */

insert  into `books`(`bookId`,`bookName`,`bookOri`,`bookPrice`,`bookPub`,`bookPic`,`bookAddTime`) values (1,'css+div从入门到精通',80,60,'人民邮电出版社','3d0f4927-0d22-4f7e-9e1b-d2ecbb810666.jpg','2017-04-01 00:00:00'),(2,'Angularjs权威指南',100,90,'清华大学出版社','53f595f7N7977f3c4.jpg','2017-04-03 00:00:00'),(3,'js高级程序设置',90,40,'北京大学出版社','552e74bfN1350cd93.jpg','2017-04-04 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
