-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tv_show`
--

DROP TABLE IF EXISTS `tv_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_show` (
  `tv_show_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text DEFAULT NULL,
  `release_year` year(4) DEFAULT NULL,
  `seasons` int(11) DEFAULT NULL,
  `episodes` int(11) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `length` smallint(5) unsigned DEFAULT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  PRIMARY KEY (`tv_show_id`),
  KEY `fk_tv_show_language_idx` (`language_id`),
  KEY `fk_tv_show_language_original_idx` (`original_language_id`),
  CONSTRAINT `fk_tv_show_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_tv_show_language_original` FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show`
--

/*!40000 ALTER TABLE `tv_show` DISABLE KEYS */;
INSERT INTO `tv_show` VALUES (200,'MR ROBOT','A Brilliant Display of a Frisbee And a Mad Scientist who must Succumb a Robot in Ancient China',2006,4,40,1,NULL,124,'PG-13'),(201,'SAINTS BRIDE','A Fateful Tale of a Technical Writer And a Composer who must Pursue a Explorer in The Gulf of Mexico',2006,2,20,2,NULL,125,'G'),(202,'LUCK OPUS','A Boring Display of a Moose And a Squirrel who must Outrace a Teacher in A Shark Tank',2006,3,25,1,NULL,152,'NC-17'),(203,'POSEIDON FOREVER','A Thoughtful Epistle of a Womanizer And a Monkey who must Vanquish a Dentist in A Monastery',2006,5,60,4,NULL,159,'PG-13'),(204,'test','test123',2020,5,55,1,1,50,'G');
/*!40000 ALTER TABLE `tv_show` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 18:33:03
