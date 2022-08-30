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
-- Table structure for table `film_category`
--

DROP TABLE IF EXISTS `film_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_category` (
  `film_id` smallint(5) unsigned NOT NULL,
  `category_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`film_id`,`category_id`),
  KEY `fk_film_category_category` (`category_id`),
  CONSTRAINT `fk_film_category_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_film_category_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_category`
--

/*!40000 ALTER TABLE `film_category` DISABLE KEYS */;
INSERT INTO `film_category` VALUES (1,6),(19,1),(23,2),(25,13),(29,1),(30,11),(31,8),(42,15),(56,1),(60,4),(67,1),(79,7),(105,1),(112,9),(140,14),(145,8),(164,6),(165,14),(170,9),(172,7),(173,7),(179,7),(191,3),(193,2),(200,10),(202,5),(203,14),(204,7),(218,7),(225,7),(236,10),(249,4),(251,13),(255,12),(263,15),(286,16),(288,16),(289,13),(292,1),(314,2),(329,1),(336,6),(341,4),(361,15),(366,7),(369,14),(379,7),(383,15),(393,6),(398,12),(434,16),(438,10),(441,6),(453,15),(477,12),(480,4),(481,13),(503,15),(506,11),(514,7),(517,15),(518,16),(519,15),(522,5),(539,7),(540,12),(550,8),(554,4),(555,5),(571,6),(616,6),(618,7),(633,4),(637,14),(665,11),(691,15),(692,2),(703,2),(714,14),(721,12),(730,13),(732,1),(758,7),(770,9),(771,7),(782,15),(798,14),(806,13),(811,16),(826,16),(841,15),(846,13),(858,5),(859,2),(865,2),(873,3),(895,4),(900,9),(901,2),(902,15),(903,16),(914,16),(924,14),(926,6),(929,9),(930,14),(936,12),(939,5),(957,9),(964,1),(966,6),(967,14),(970,4),(971,9),(974,13);
/*!40000 ALTER TABLE `film_category` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 18:33:04
