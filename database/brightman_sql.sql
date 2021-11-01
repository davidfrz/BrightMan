/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.26 : Database - brightman
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`brightman` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `brightman`;

/*Table structure for table `main_user` */

DROP TABLE IF EXISTS `main_user`;

CREATE TABLE `main_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `main_UID` varchar(20) NOT NULL,
  `main_password` varchar(50) NOT NULL,
  `main_IMEI` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_UID` (`main_UID`),
  UNIQUE KEY `main_IMEI` (`main_IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `main_user` */

/*Table structure for table `mqtt` */

DROP TABLE IF EXISTS `mqtt`;

CREATE TABLE `mqtt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lng` varchar(100) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `cur_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `topic` (`topic`),
  CONSTRAINT `mqtt_ibfk_1` FOREIGN KEY (`topic`) REFERENCES `main_user` (`main_IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `mqtt` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
