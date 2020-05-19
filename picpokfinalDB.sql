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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `add_product` */

insert  into `add_product`(`pid`,`cat`,`pname`,`price`,`word`,`pic`,`rating`,`feedback`,`like`,`dislike`,`rank`,`buyerid`,`buyername`) values (2,'electronics','speaker','4000','speaker','speaker.jpg','2','nice one','1','1',3,'1','padmasri'),(4,'hand bags','skybags','1000','handbags','login_bg.jpg','0','-','0','1',1,'3','nivetha');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `boarding` */

insert  into `boarding`(`id`,`username`,`mobile`,`address`,`email`,`boardst`,`destst`,`routeno`,`date`) values (1,'vivek',NULL,NULL,NULL,'Chennai','Bengaluru','Chn-Ben-120','2019-12-18'),(2,'vivek',NULL,NULL,NULL,'Chennai','Chennai','Chn-Ben-120','2019-12-15'),(3,'karthik',NULL,NULL,NULL,'Chennai','null','Chn-Ben-120','2019-12-18'),(4,'karthik',NULL,NULL,NULL,'Chennai','null','Chn-Goa-234','2019-12-20'),(7,'vivek','9632140021','mysore','mhv23795@gmail.com','Chennai','Pondicherry','Chen-Pondi-1234','2020-02-18');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `book` */

insert  into `book`(`id`,`username`,`boardst`,`via`,`destst`,`routeno`,`latitude`,`longitude`,`mail`,`cardname`,`cardno`,`cvv`,`bankname`,`amount`,`status`) values (1,'vivek','Chennai',NULL,'Bengaluru','Chn-Ben-120','12.9716','77.5946',NULL,'vivek','1234 2324 32434','223','Canarabank',NULL,'Waiting..'),(2,'karthik','Chennai',NULL,'null','Chn-Ben-120','12.9716','77.5946',NULL,'vivek','1234 4567 3456','123','Vijaya Bank',NULL,'Waiting..'),(7,'vivek ','Chennai','mahabalipuram','pondicherry','Chen-Pondi-1234','12.6208','80.1945','1croreprojects.javateam@gmail.com','vivek mh','1234 4567 4532','123','vijaya bank','250','booked');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`category_name`) values (1,'mobile'),(2,'electronics'),(9,'hand bags');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `friend_request` */

insert  into `friend_request`(`id`,`uid`,`uname`,`fid`,`fname`,`mobile`,`mail`,`city`,`fpic`,`status`) values (1,'1','padmasri','2','madhuri','9988776655','1croreprojects.javateam@gmail.com','chennai','Lighthouse.jpg','Accept');

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(200) DEFAULT NULL,
  `area` varchar(200) DEFAULT NULL,
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `location` */

insert  into `location`(`id`,`location`,`area`,`latitude`,`longitude`) values (1,'Bengaluru','Shantinagar','12.9578','77.5993'),(2,'Bengaluru','majestic','12.9767','77.5713'),(3,'Bengaluru','Cormagala','12.9352','77.6244'),(4,'Bengaluru','BtmLayout','12.9166','77.5993'),(5,'Chennai','Vadapalani','13.0500','80.2121'),(6,'Chennai','Perambur','13.1210','80.2326'),(7,'Chennai','Tnagar','13.0418','80.2341'),(11,'mahabalipuram','mahabs','12.6208','80.1945');

/*Table structure for table `negative` */

DROP TABLE IF EXISTS `negative`;

CREATE TABLE `negative` (
  `neg` varchar(40) DEFAULT NULL,
  `polarity` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `negative` */

insert  into `negative`(`neg`,`polarity`) values ('worst','0.5'),('failed','0.5'),('poor','0.5'),('unsatistied','0.5'),('dont buy','0.5'),('waste','0.5'),('waste product','0.5'),('useless','0.5'),('poor','0.5'),('poor design','0.5'),('poor product','0.5'),('0% satisfied','0.5'),('average','0.5'),('flop','0.5'),('utter','0.5'),('waste of time','0.5'),('annoy','0.5'),('annoyed','1'),('annoying','0.5'),('not amazing','0.5'),('not ok','0.5'),('fuck','0.5'),('fuck off','0.5'),('bull shit','0.5'),('shit product','0.5'),('under performed','0.5'),('under performance','0.5'),('flaw','0.5'),('flawed product','0.5'),('damaged','0.5'),('damaged product','0.5'),('waste of money','0.5'),('cant believe this','0.5'),('whook','0.5'),('eeee','0.5'),('f***k','0.5'),('average product','0.5'),('shitty product','0.5'),('not satisfied','0.5'),('non delighted','0.5'),('not','0.5'),('bad','0.5');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient`(`id`,`hospital`,`pid`,`pname`,`pass`,`mobile`,`email`,`city`,`addr`,`age`,`gender`,`blood`,`disease`,`profile_pic`,`status`) values (1,'Hospital1',1111,'pavan','1234','9632140021','mhv23795@gmail.com','MYSORE','Srirampura 2nd stage mysuru',23,'male','O +','Amnesia','bg.jpg','Authorized'),(5,'Hospital2',1212,'guru','1234','9632140021','mhv23795@gmail.com','MYSORE','Srirampura 2nd stage mysuru',23,'male','O +','Malaria','shopping.png','Authorized');

/*Table structure for table `positive` */

DROP TABLE IF EXISTS `positive`;

CREATE TABLE `positive` (
  `gud` varchar(38) DEFAULT NULL,
  `polarity` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `positive` */

insert  into `positive`(`gud`,`polarity`) values ('A+',1.00),('A1',1.00),('A++',1.00),('AA+',1.00),('fab',0.00),('rad',1.00),('A+++',1.00),('AAA+',1.00),('A-OK',1.00),('a-ok',1.00),('best',1.00),('cool',1.00),('deal',1.00),('fast',1.00),('fine',1.00),('nice',1.00),('safe',1.00),('thx',0.00),('thanks',0.00),('tops',1.00),('wow',1.00),('clean',1.00),('grand',0.00),('great',1.00),('happy',1.00),('prime',1.00),('quick',1.00),('rapid',1.00),('solid',1.00),('super',1.00),('swift',1.00),('thanks',0.00),('value',1.00),('whoa!',1.00),('whoa',1.00),('choice',1.00),('dealer',1.00),('groovy',1.00),('honest',1.00),('polite',1.00),('secure',1.00),('seller',0.00),('snappy',0.00),('speedy',1.00),('super',1.00),('superb',1.00),('timely',0.00),('vendor',0.00),('zowie',1.00),('amazing',1.00),('auction',1.00),('awesome',1.00),('elegant',0.00),('classic',0.00),('genuine',1.00),('perfect',1.00),('classy',1.00),('master piece',0.00),('pleased',0.00),('quality',0.00),('sweet',1.00),('sweeet',1.00),('accurate',1.00),('ecstatic',1.00),('fabulous',1.00),('flawless',1.00),('friendly',1.00),('glorious',1.00),('good buy',1.00),('gorgeous',1.00),('pleasant',1.00),('peerlessstandout',1.00),('stunning',1.00),('superior',1.00),('the best',1.00),('the bomb',1.00),('thrilled',0.00),('up front',1.00),('way cool',1.00),('all right',1.00),('As listed',1.00),('authentic',1.00),('brilliant',1.00),('competant',1.00),('delighted',1.00),('excellent',1.00),('great buy',1.00),('love this',1.00),('low price',1.00),('marvellous',1.00),('overjoyed',1.00),('over joyed',1.00),('satisfied',1.00),('thank you',1.00),('top notch',1.00),('unrivaled',1.00),('very best',1.00),('wonderful',1.00),('astounding',1.00),('delightful',1.00),('first rate',1.00),('good rate',1.00),('good value',1.00),('great deal',1.00),('great item ',1.00),('im elated',1.00),('impressive',1.00),('incredible',0.00),('supercool',1.00),('superfast',0.00),('supersonic',1.00),('astounding',1.00),('considerate',1.00),('cooperative',1.00),('user friendly',1.00),('interesting',1.00),('magnifient',1.00),('no problem',0.00),('outstanding',1.00),('splendourous',1.00),('trustworthy',1.00),('unsurpassed',0.00),('well packed',0.00),('wicked cool',1.00),('as described',0.00),('breathtaking',1.00),('just perfect',1.00),('looking good',1.00),('looking cool',1.00),('looking awesome',1.00),('looking pro',1.00),('professional',0.00),('unbelievable',1.00),('no compalints',1.00),('thanks a ton!',1.00),('extremely cool',1.00),('satisfied 100%',1.00),('well protected',1.00),('state of the art',1.00),('unbelievable cool',1.00),('very good',1.00),('wonderful as described',1.00),('beyond my wildest dreams',1.00),('im very happy with this i',1.00),('awesome product',1.00),('good',1.00);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `ranking` */

insert  into `ranking`(`id`,`product`,`positive`,`negative`,`neutral`) values (1,'speaker','15','3','1'),(2,'headset','20','4','5'),(3,'mobile','24','10','5'),(4,'handbag','22','18','3');

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

insert  into `recommend`(`uid`,`uname`,`pid`,`pname`,`price`,`rating`,`fname`) values ('1','padmasri','2','speaker','4000','0','madhuri'),('1','padmasri','2','speaker','4000','2','madhuri');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `route` */

insert  into `route`(`id`,`routeno`,`boardst`,`via`,`latitude`,`longitude`,`destst`,`departure`,`arrival`,`amount`) values (1,'Chn-Ben-120','Chennai',NULL,NULL,NULL,'Bengaluru',NULL,NULL,NULL),(2,'Chn-Mys-120','Chennai',NULL,NULL,NULL,'Mysuru',NULL,NULL,NULL),(3,'Che-Ben-123','Chennai',NULL,NULL,NULL,'Bengaluru',NULL,NULL,NULL),(4,'Chn-Goa-234','Chennai',NULL,NULL,NULL,'Goa',NULL,NULL,NULL),(5,'Chen-Pondi-1234','Chennai','mahabalipuram','12.6208','80.1945','Pondicherry','10:30 Am','2:00 Pm','250'),(8,'1234-Mys-Ooty','Mysuru','Virajpet','12.1950','75.8040','OOTY','10:30 Am','2:00 Pm','400');

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

insert  into `solution`(`id`,`pid`,`pname`,`blood`,`disease`,`hospital`) values (1,1111,'pavan','O +','Amnesia','Hospital1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user_register` */

insert  into `user_register`(`user_id`,`username`,`password`,`mobile`,`mail`,`city`,`address`,`profile_pic`,`status`) values (1,'vivek','1234','9632140021','1croreprojects.javateam@gmail.com','chennai','kolathur','back-mining.jpg','Authorized'),(2,'karthik','1234','9632140021','1croreprojects.javateam@gmail.com','Goa','pondo,goa','back-mining.png','Authorized');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
