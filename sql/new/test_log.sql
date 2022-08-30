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
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `acount_type` varchar(45) NOT NULL,
  `action_type` varchar(45) DEFAULT NULL,
  `action_table` varchar(45) DEFAULT NULL,
  `action_date` datetime NOT NULL,
  `action_status` enum('SUCCEED','FAILED') DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `fk_log_customer_idx` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (6,16051,'kof@test.gr','CUSTOMER','INSERT',NULL,'2022-01-05 11:41:30','SUCCEED'),(7,12345,'kof@test.gr','CUSTOMER','INSERT','payment','2022-01-05 12:24:11','SUCCEED'),(8,12345,'kof@test.gr','CUSTOMER','DELETE','payment','2022-01-05 12:25:27','SUCCEED'),(9,16052,'kof@test.gr','CUSTOMER','INSERT','renta','2022-08-29 20:48:29','SUCCEED'),(10,16053,'kof@test.gr','CUSTOMER','INSERT','renta','2022-08-29 20:48:55','SUCCEED'),(11,16054,'kof@test.gr','CUSTOMER','INSERT','renta','2022-08-29 20:49:11','SUCCEED'),(12,16055,'kof@test.gr','CUSTOMER','INSERT','renta','2022-08-29 20:49:13','SUCCEED');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 18:33:03
