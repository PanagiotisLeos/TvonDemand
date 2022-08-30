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
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental` (
  `rental_id` int(11) NOT NULL AUTO_INCREMENT,
  `rental_date` datetime NOT NULL,
  `inventory_id` mediumint(8) unsigned NOT NULL,
  `customer_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`rental_id`),
  UNIQUE KEY `rental_date` (`rental_date`,`inventory_id`,`customer_id`),
  KEY `fk_rental_inventory` (`inventory_id`),
  KEY `fk_rental_customer` (`customer_id`),
  CONSTRAINT `fk_rental_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_rental_inventory` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16056 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (16052,'0000-00-00 00:00:00',5008,597),(148,'2005-05-26 00:25:23',4252,142),(213,'2005-05-26 08:44:08',1505,394),(424,'2005-05-27 15:34:01',2815,35),(506,'2005-05-28 02:09:19',667,469),(756,'2005-05-29 10:28:45',3152,201),(772,'2005-05-29 13:08:06',3319,556),(874,'2005-05-30 05:36:21',363,52),(882,'2005-05-30 06:16:06',3841,477),(889,'2005-05-30 07:14:53',1299,114),(936,'2005-05-30 13:52:49',901,469),(1083,'2005-05-31 11:04:48',2393,556),(1182,'2005-06-15 00:45:21',1061,196),(1194,'2005-06-15 01:25:08',3774,402),(1287,'2005-06-15 08:41:38',4204,104),(1313,'2005-06-15 10:18:34',1657,448),(1355,'2005-06-15 13:13:59',4203,499),(1823,'2005-06-16 21:48:16',3871,448),(2029,'2005-06-17 13:10:59',914,512),(2047,'2005-06-17 14:40:58',2371,201),(2621,'2005-06-19 08:07:31',1746,439),(2676,'2005-06-19 11:54:57',3938,477),(2818,'2005-06-19 20:05:52',2376,497),(2862,'2005-06-19 23:47:24',4260,52),(2913,'2005-06-20 03:42:27',3456,402),(2986,'2005-06-20 08:50:28',478,556),(3025,'2005-06-20 11:46:48',1309,293),(3342,'2005-06-21 10:46:36',2884,196),(3492,'2005-07-05 23:44:37',980,142),(3526,'2005-07-06 01:03:29',3871,469),(3696,'2005-07-06 10:04:55',3244,497),(3924,'2005-07-06 20:38:02',187,114),(3993,'2005-07-06 23:37:06',1061,525),(4095,'2005-07-07 06:01:48',2900,33),(4172,'2005-07-07 09:49:09',1158,309),(4206,'2005-07-07 11:32:16',1557,448),(4218,'2005-07-07 12:10:24',152,497),(4237,'2005-07-07 13:16:55',3773,477),(4283,'2005-07-07 15:29:35',2807,477),(4372,'2005-07-07 20:09:01',2207,252),(4497,'2005-07-08 01:51:32',1995,142),(4540,'2005-07-08 04:03:28',4160,309),(4693,'2005-07-08 11:07:36',1694,221),(5462,'2005-07-09 22:56:53',871,583),(5664,'2005-07-10 08:04:41',2375,469),(6059,'2005-07-11 04:03:54',1437,394),(6197,'2005-07-11 12:09:51',4156,596),(6283,'2005-07-11 16:47:32',3319,402),(6985,'2005-07-27 00:57:42',1834,448),(7132,'2005-07-27 06:28:34',3201,227),(7168,'2005-07-27 07:51:11',6,252),(7462,'2005-07-27 18:47:47',878,114),(7531,'2005-07-27 21:19:34',2393,221),(7627,'2005-07-28 00:56:47',782,52),(8316,'2005-07-29 03:38:49',4118,549),(8417,'2005-07-29 06:53:36',750,227),(8452,'2005-07-29 07:45:00',4312,16),(8686,'2005-07-29 16:17:49',4160,52),(9029,'2005-07-30 06:03:11',2220,52),(9196,'2005-07-30 12:30:19',4298,251),(9721,'2005-07-31 08:28:46',3942,196),(10093,'2005-07-31 20:30:32',3943,162),(10800,'2005-08-01 22:07:44',507,583),(11042,'2005-08-02 06:04:33',4149,439),(11693,'2005-08-17 06:56:56',793,221),(11700,'2005-08-17 07:12:31',2365,104),(11798,'2005-08-17 11:21:43',3974,448),(11802,'2005-08-17 11:32:51',2815,221),(11920,'2005-08-17 16:10:19',4253,402),(11964,'2005-08-17 17:37:03',2225,309),(12099,'2005-08-17 22:38:54',1743,195),(12123,'2005-08-17 23:22:18',361,497),(12666,'2005-08-18 19:11:41',4156,251),(12684,'2005-08-18 19:51:27',978,196),(13121,'2005-08-19 11:51:39',3517,251),(13250,'2005-08-19 16:47:55',2524,448),(13502,'2005-08-20 01:58:15',1324,309),(13799,'2005-08-20 12:36:42',4413,196),(13958,'2005-08-20 18:11:44',2380,33),(14176,'2005-08-21 03:09:23',4420,556),(14417,'2005-08-21 11:13:35',1768,596),(14623,'2005-08-21 18:29:13',901,33),(14656,'2005-08-21 19:39:28',4205,201),(14846,'2005-08-22 02:13:48',3840,309),(15091,'2005-08-22 11:34:43',2092,477),(15125,'2005-08-22 12:53:22',3942,221),(15186,'2005-08-22 15:52:57',1323,104),(15258,'2005-08-22 18:22:44',788,293),(15422,'2005-08-22 23:58:09',2601,309),(15528,'2005-08-23 03:45:40',3033,114),(15919,'2005-08-23 18:01:31',1746,497),(16040,'2005-08-23 22:19:33',3524,195),(12786,'2006-02-14 15:16:03',97,512),(12698,'2006-02-14 15:16:03',3657,497),(12001,'2006-02-14 15:16:03',4158,52),(16051,'2018-10-29 21:00:00',5008,597),(16053,'2022-08-29 20:48:55',5008,597),(16054,'2022-08-29 20:49:11',5008,597),(16055,'2022-08-29 20:49:13',5008,597);
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_AFTER_INSERT_log` 
AFTER INSERT ON `rental` FOR EACH ROW 
BEGIN 
Declare log_email varchar(50); 
set log_email = (select email from customer where customer_id = new.customer_id);
INSERT INTO log(id,email,acount_type,action_type,action_table,action_date,action_status) VALUES(new.rental_id,log_email,"CUSTOMER",'INSERT' ,"renta", NOW(),"SUCCEED");
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rental_AFTER_DELETE_log` AFTER DELETE ON `rental` FOR EACH ROW 
BEGIN 
declare log_email varchar(50);
set log_email = (select email from customer where customer_id = old.customer_id); 
INSERT INTO log(id,email,acount_type,action_type,action_table,action_date,action_status) VALUES(old.rental_id,log_email,"CUSTOMER",'INSERT',"rental",NOW(),SUCCEED);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 18:33:04
