/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - pickpocket
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pickpocket` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pickpocket`;

/*Table structure for table `add_product` */

DROP TABLE IF EXISTS `add_product`;

CREATE TABLE `add_product` (
  `pid` int(200) NOT NULL AUTO_INCREMENT,
  `cat` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `word` varchar(200) DEFAULT NULL,
  `pic` text,
  `rating` varchar(200) DEFAULT '0',
  `feedback` varchar(200) DEFAULT '-',
  `like` varchar(200) DEFAULT '0',
  `dislike` varchar(200) DEFAULT '1',
  `rank` int(200) DEFAULT NULL,
  `buyerid` varchar(200) DEFAULT NULL,
  `buyername` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `add_product` */

/*Table structure for table `boarding` */

DROP TABLE IF EXISTS `boarding`;

CREATE TABLE `boarding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `boardst` varchar(200) DEFAULT NULL,
  `destst` varchar(200) DEFAULT NULL,
  `routeno` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `boarding` */

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `boardst` varchar(200) DEFAULT NULL,
  `via` varchar(200) DEFAULT NULL,
  `destst` varchar(200) DEFAULT NULL,
  `routeno` varchar(200) DEFAULT NULL,
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `cardname` varchar(200) DEFAULT NULL,
  `cardno` varchar(200) DEFAULT NULL,
  `cvv` varchar(200) DEFAULT NULL,
  `bankname` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting..',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `book` */

insert  into `book`(`id`,`username`,`boardst`,`via`,`destst`,`routeno`,`latitude`,`longitude`,`mail`,`cardname`,`cardno`,`cvv`,`bankname`,`amount`,`status`) values (1,'vivek ','Mysuru','bengaluru','Pondicherry','Mys-Pondy-200','12.9716','77.5946','1croreprojects.javateam@gmail.com','vivek mh','1234 4567 7896','123','Vijaya Bank','850','booked');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category` */

/*Table structure for table `friend_request` */

DROP TABLE IF EXISTS `friend_request`;

CREATE TABLE `friend_request` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `fid` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `fpic` text,
  `status` varchar(200) DEFAULT 'waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friend_request` */

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(200) DEFAULT NULL,
  `area` varchar(200) DEFAULT NULL,
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `location` */

insert  into `location`(`id`,`location`,`area`,`latitude`,`longitude`) values (1,'Vellore','vellore','12.9165','79.1325'),(2,'Bengaluru','Bengaluru','12.9716','77.5946');

/*Table structure for table `negative` */

DROP TABLE IF EXISTS `negative`;

CREATE TABLE `negative` (
  `neg` varchar(40) DEFAULT NULL,
  `polarity` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `negative` */

/*Table structure for table `negative_reviews` */

DROP TABLE IF EXISTS `negative_reviews`;

CREATE TABLE `negative_reviews` (
  `id` int(100) DEFAULT NULL,
  `product` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `reviews` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `negative_reviews` */

/*Table structure for table `neutral_reviews` */

DROP TABLE IF EXISTS `neutral_reviews`;

CREATE TABLE `neutral_reviews` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product` varchar(100) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `reviews` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `neutral_reviews` */

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `blood` varchar(200) DEFAULT NULL,
  `disease` varchar(200) DEFAULT NULL,
  `profile_pic` tinytext,
  `status` varchar(200) DEFAULT 'Un-Authorized',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

/*Table structure for table `positive` */

DROP TABLE IF EXISTS `positive`;

CREATE TABLE `positive` (
  `gud` varchar(38) DEFAULT NULL,
  `polarity` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `positive` */

/*Table structure for table `positive_reviews` */

DROP TABLE IF EXISTS `positive_reviews`;

CREATE TABLE `positive_reviews` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `reviews` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `positive_reviews` */

/*Table structure for table `ranking` */

DROP TABLE IF EXISTS `ranking`;

CREATE TABLE `ranking` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `product` varchar(200) DEFAULT NULL,
  `positive` varchar(200) DEFAULT NULL,
  `negative` varchar(200) DEFAULT NULL,
  `neutral` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ranking` */

/*Table structure for table `recommend` */

DROP TABLE IF EXISTS `recommend`;

CREATE TABLE `recommend` (
  `uid` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `recommend` */

/*Table structure for table `route` */

DROP TABLE IF EXISTS `route`;

CREATE TABLE `route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `routeno` varchar(200) DEFAULT NULL,
  `boardst` varchar(200) DEFAULT NULL,
  `via` varchar(200) DEFAULT NULL,
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  `destst` varchar(200) DEFAULT NULL,
  `departure` varchar(200) DEFAULT NULL,
  `arrival` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `route` */

insert  into `route`(`id`,`routeno`,`boardst`,`via`,`latitude`,`longitude`,`destst`,`departure`,`arrival`,`amount`) values (1,'Chn-Ben-100','Chennai','vellore','12.9165','79.1325','Bengaluru','10:30 Am','4:00 Pm','500'),(2,'Mys-Pondy-200','Mysuru','bengaluru','12.9716','77.5946','Pondicherry','10:00 AM','5:00 PM','850 ');

/*Table structure for table `solution` */

DROP TABLE IF EXISTS `solution`;

CREATE TABLE `solution` (
  `id` int(200) DEFAULT NULL,
  `pid` int(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `blood` varchar(200) DEFAULT NULL,
  `disease` varchar(200) DEFAULT NULL,
  `hospital` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `solution` */

/*Table structure for table `user_register` */

DROP TABLE IF EXISTS `user_register`;

CREATE TABLE `user_register` (
  `user_id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `profile_pic` text,
  `status` varchar(200) DEFAULT 'Un-Authorized',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user_register` */

insert  into `user_register`(`user_id`,`username`,`password`,`mobile`,`mail`,`city`,`address`,`profile_pic`,`status`) values (1,'vivek','1234','9632140021','1croreprojects.javateam@gmail.com','mumbai','Kolathur,mumbai','banner2.jpg','Authorized');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
