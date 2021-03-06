/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.5.48 : Database - online_movies
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `gf_actor` */

DROP TABLE IF EXISTS `gf_actor`;

CREATE TABLE `gf_actor` (
  `actor_id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_name` varchar(400) DEFAULT NULL,
  KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gf_actor` */

/*Table structure for table `gf_country` */

DROP TABLE IF EXISTS `gf_country`;

CREATE TABLE `gf_country` (
  `country_code` varchar(100) DEFAULT NULL,
  `country_name` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gf_country` */

/*Table structure for table `gf_director` */

DROP TABLE IF EXISTS `gf_director`;

CREATE TABLE `gf_director` (
  `director_id` int(11) NOT NULL AUTO_INCREMENT,
  `director_name` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gf_director` */

/*Table structure for table `gf_film` */

DROP TABLE IF EXISTS `gf_film`;

CREATE TABLE `gf_film` (
  `film_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_name` varchar(400) DEFAULT NULL,
  `film_plot` text,
  `film_release_date` datetime DEFAULT NULL,
  `film_post_link` text,
  `original_poster_url` text,
  `website_poster_url` text,
  `film_genre_value` varchar(400) DEFAULT NULL,
  `film_actor_value` varchar(400) DEFAULT NULL,
  `film_director_value` varchar(400) DEFAULT NULL,
  `imdb_link` text,
  `trailer` text,
  `film_feature` varchar(1) DEFAULT NULL,
  `film_post_date` datetime DEFAULT NULL,
  `film_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`film_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gf_film` */

/*Table structure for table `gf_film_comment` */

DROP TABLE IF EXISTS `gf_film_comment`;

CREATE TABLE `gf_film_comment` (
  `film_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_msg` text,
  `comment_post_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`film_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gf_film_comment` */

/*Table structure for table `gf_genre` */

DROP TABLE IF EXISTS `gf_genre`;

CREATE TABLE `gf_genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gf_genre` */

/*Table structure for table `gf_user` */

DROP TABLE IF EXISTS `gf_user`;

CREATE TABLE `gf_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(400) DEFAULT NULL,
  `birth_day` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `hear_from` text,
  `registration_date` datetime DEFAULT NULL,
  `reset_password_code` text,
  `reset_password_code_until` timestamp NULL DEFAULT NULL,
  `country` varchar(400) DEFAULT NULL,
  `about_me` text,
  `hobbies` text,
  `pm_notify_mail` varchar(50) DEFAULT NULL,
  `view_content_to` varchar(100) DEFAULT NULL,
  `view_recent_visit` varchar(400) DEFAULT NULL,
  `photo_tagging` text,
  `avatar` text,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gf_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
