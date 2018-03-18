/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - secrbac
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`secrbac` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `secrbac`;

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`id`,`username`,`password`) values (1,'cloud','cloud');

/*Table structure for table `fileupload` */

DROP TABLE IF EXISTS `fileupload`;

CREATE TABLE `fileupload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `masterky` varchar(45) NOT NULL,
  `privatkey` varchar(45) NOT NULL,
  `file` longtext NOT NULL,
  `enkfiles` longtext NOT NULL,
  `fileid` varchar(45) NOT NULL,
  `fnames` varchar(45) NOT NULL,
  `prosystatus` varchar(45) DEFAULT NULL,
  `Ownername` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `fileupload` */

insert  into `fileupload`(`id`,`fname`,`masterky`,`privatkey`,`file`,`enkfiles`,`fileid`,`fnames`,`prosystatus`,`Ownername`) values (8,'nikil','ZjjVlp8Dwrys/I/KN6zNJg==','q%7/*-fdjT@uuPHC%%58S#kfs','hiiiwelcome to 1000projects','Rqa4SfNpQLnI8Lhz/OxzuKq1woaRWZz/Nix9WnTv/bU=','nikil','nikil.txt','encrypted','t/3mjhzSGAANouTbGpZEbvIWwdtf5f/KFdNMvILEHWRG1e04J3bP5+K2D53JJndn');

/*Table structure for table `filrequest` */

DROP TABLE IF EXISTS `filrequest`;

CREATE TABLE `filrequest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` varchar(45) NOT NULL,
  `caption` varchar(45) NOT NULL,
  `descp` varchar(45) NOT NULL,
  `fnmae` varchar(45) NOT NULL,
  `masterky` varchar(500) NOT NULL,
  `privatkey` varchar(500) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `requeststatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `filrequest` */

insert  into `filrequest`(`id`,`fid`,`caption`,`descp`,`fnmae`,`masterky`,`privatkey`,`emailid`,`uname`,`requeststatus`) values (11,'8','nikil','nikil','nikil.txt','ZjjVlp8Dwrys/I/KN6zNJg==','q%7/*-fdjT@uuPHC%%58S#kfs','nikilp306@gmail.com','nikil','replayed');

/*Table structure for table `ownerregi` */

DROP TABLE IF EXISTS `ownerregi`;

CREATE TABLE `ownerregi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `phone` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `ownerregi` */

insert  into `ownerregi`(`id`,`username`,`password`,`emailid`,`gender`,`date`,`phone`,`location`) values (1,'xzczxc','123','pavithrajpinfotech@gmail.com','male','2016-10-19 00:00:00','8956780926','chennai'),(2,'fsdf','123','pavithrajpinfotech@gmail.com','male','2016-10-04 00:00:00','8956780926','chennai'),(3,'mani','123','muthu@gmail.com','female','2016-10-05 00:00:00','9087985693','chennai'),(4,'dency','123','dency@gmail.com','female','2016-11-16 00:00:00','9087979693','pondicherry'),(6,'aa','aa','nikilp306@gmail.com','male','2017-06-15 00:00:00','9988774455','hyd'),(7,'raj','raj','raj@gmail.com','male','2006-12-31 00:00:00','9988774455','hyd');

/*Table structure for table `userregi` */

DROP TABLE IF EXISTS `userregi`;

CREATE TABLE `userregi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `phone` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `userregi` */

insert  into `userregi`(`id`,`username`,`password`,`emailid`,`gender`,`date`,`phone`,`location`) values (1,'pavithra','123','pavithrajpinfotech@gmail.com','male','2016-10-11 00:00:00','9087985693','chennai'),(9,'nikil','nikil','nikilp306@gmail.com','male','2017-06-01 00:00:00','9988774454','hyd');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
