/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.7.27-log : Database - ssm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm`;

/*Table structure for table `feel` */

DROP TABLE IF EXISTS `feel`;

CREATE TABLE `feel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `feel` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1579243758903 DEFAULT CHARSET=utf8;

/*Data for the table `feel` */

insert  into `feel`(`id`,`title`,`feel`) values 
(1579195089242,'1111','KindEditor'),
(1579195218781,'è°¢é¦','<span style=\"color:#FF9900;\">ç·å¿å½èªå¼º</span>'),
(1579195327447,'è¿ç¨å±äº«ä¸å¡1','ç·å¿å½èªå¼º'),
(1579195707392,'远程共享业务1','男儿当自强'),
(1579196027596,'远程共享业务1','男儿当自强'),
(1579196396821,'远程共享业务1','男儿当自强'),
(1579196477481,'ç¦æ¯','ç·å¿å½1èªå¼º'),
(1579197218057,'è¿ç¨å±äº«ä¸å¡1','ç·å¿å½èªå¼º'),
(1579197382360,'è¿ç¨å±äº«ä¸å¡1','ç·å¿å½èªå¼º'),
(1579197493365,'谢香','男儿当自强'),
(1579243470569,'谢香大笨蛋','<span style=\"color:#E53333;font-size:16px;\"><strong>男儿当自强<img src=\"http://192.168.43.45:8080/feel_war_exploded/js/kindeditor/plugins/emoticons/images/105.gif\" border=\"0\" alt=\"\" /></strong></span>'),
(1579243758902,'通天塔','<span style=\"color:#E53333;font-size:16px;\"><strong>男儿当自强<img src=\"http://192.168.43.45:8080/feel_war_exploded/js/kindeditor/plugins/emoticons/images/105.gif\" border=\"0\" alt=\"\" /></strong></span>');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
