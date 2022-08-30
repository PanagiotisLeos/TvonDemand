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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(50) NOT NULL,
  `district` varchar(20) DEFAULT NULL,
  `city_id` smallint(5) unsigned NOT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `fk_address_city` (`city_id`),
  CONSTRAINT `fk_address_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (7,'692 Joliet Street','Attika',38,'83579','448477190408'),(20,'360 Toulouse Parkway','England',495,'54308','949312333307'),(37,'127 Purnea (Purnia) Manor','Piemonte',17,'79388','911872220378'),(39,'391 Callao Drive','Midi-Pyrnes',544,'34021','440512153169'),(56,'939 Probolinggo Loop','Galicia',1,'4166','680428310138'),(89,'1557 Ktahya Boulevard','England',88,'88002','720998247660'),(108,'1386 Yangor Avenue','Provence-Alpes-Cte',543,'80720','449216226468'),(118,'442 Rae Bareli Place','Nordrhein-Westfalen',148,'24321','886636413768'),(146,'483 Ljubertsy Parkway','Scotland',149,'60562','581174211853'),(166,'1740 Le Mans Loop','Pays de la Loire',297,'22853','168476538960'),(199,'1792 Valle de la Pascua Place','Nordrhein-Westfalen',477,'15540','419419591240'),(200,'1074 Binzhou Manor','Baden-Wrttemberg',325,'36490','331132568928'),(205,'68 Molodetno Manor','Nordrhein-Westfalen',575,'4662','146640639760'),(225,'1926 Gingoog Street','Sisilia',511,'22824','469738825391'),(231,'430 Alessandria Loop','Saarland',439,'47446','669828224459'),(255,'1966 Tonghae Street','Anhalt Sachsen',198,'36481','567359279425'),(256,'1497 Yuzhou Drive','England',312,'3433','246810237916'),(298,'44 Najafabad Way','Baskimaa',146,'61391','96604821070'),(314,'1224 Huejutla de Reyes Boulevard','Lombardia',91,'70923','806016930576'),(399,'331 Bydgoszcz Parkway','Asturia',181,'966','537374465982'),(407,'1346 Mysore Drive','Bretagne',92,'61507','516647474029'),(444,'231 Kaliningrad Place','Lombardia',70,'57833','575081026569'),(453,'319 Springs Loop','Baijeri',160,'99552','72524459905'),(474,'1469 Plock Lane','Galicia',388,'95835','622884741180'),(482,'808 Naala-Porto Parkway','England',500,'41060','553452430707'),(502,'1515 Korla Way','England',589,'57197','959467760895'),(504,'1 Valle de Santiago Avenue','Apulia',93,'86208','465897838272'),(517,'548 Uruapan Street','Ontario',312,'35653','879347453467'),(531,'1986 Sivas Place','Friuli-Venezia Giuli',551,'95775','182059202712'),(547,'379 Lublin Parkway','Toscana',309,'74568','921960450089'),(555,'1764 Jalib al-Shuyukh Parkway','Galicia',459,'77642','84794532510'),(562,'869 Shikarpur Way','England',496,'57380','590764256785'),(589,'1584 Ljubertsy Lane','England',494,'22954','285710089439'),(602,'1101 Bucuresti Boulevard','West Greece',401,'97661','199514580428');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 18:33:03
