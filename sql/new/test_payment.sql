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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` smallint(5) unsigned NOT NULL,
  `rental_id` int(11) DEFAULT NULL,
  `amount` decimal(5,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `fk_payment_rental` (`rental_id`),
  KEY `fk_payment_customer` (`customer_id`),
  CONSTRAINT `fk_payment_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_payment_rental` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`rental_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15982 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (434,16,8452,5.99,'2005-07-29 07:45:00'),(910,33,4095,5.99,'2005-07-07 06:01:48'),(922,33,13958,7.99,'2005-08-20 18:11:44'),(924,33,14623,0.99,'2005-08-21 18:29:13'),(953,35,424,6.99,'2005-05-27 15:34:01'),(1425,52,874,0.99,'2005-05-30 05:36:21'),(1428,52,2862,2.99,'2005-06-19 23:47:24'),(1437,52,7627,4.99,'2005-07-28 00:56:47'),(1438,52,8686,4.99,'2005-07-29 16:17:49'),(1439,52,9029,4.99,'2005-07-30 06:03:11'),(1453,52,12001,4.99,'2006-02-14 15:16:03'),(2802,104,1287,3.99,'2005-06-15 08:41:38'),(2816,104,11700,2.99,'2005-08-17 07:12:31'),(2823,104,15186,0.99,'2005-08-22 15:52:57'),(3060,114,889,2.99,'2005-05-30 07:14:53'),(3066,114,3924,2.99,'2005-07-06 20:38:02'),(3074,114,7462,2.99,'2005-07-27 18:47:47'),(3087,114,15528,2.99,'2005-08-23 03:45:40'),(3832,142,148,0.99,'2005-05-26 00:25:23'),(3836,142,3492,2.99,'2005-07-05 23:44:37'),(3837,142,4497,4.99,'2005-07-08 01:51:32'),(4416,162,10093,5.99,'2005-07-31 20:30:32'),(5276,195,12099,0.99,'2005-08-17 22:38:54'),(5280,195,16040,11.99,'2005-08-23 22:19:33'),(5285,196,1182,5.99,'2005-06-15 00:45:21'),(5292,196,3342,4.99,'2005-06-21 10:46:36'),(5304,196,9721,6.99,'2005-07-31 08:28:46'),(5310,196,12684,0.99,'2005-08-18 19:51:27'),(5312,196,13799,8.99,'2005-08-20 12:36:42'),(5447,201,756,5.99,'2005-05-29 10:28:45'),(5448,201,2047,1.99,'2005-06-17 14:40:58'),(5466,201,14656,2.99,'2005-08-21 19:39:28'),(5983,221,4693,6.99,'2005-07-08 11:07:36'),(5988,221,7531,8.99,'2005-07-27 21:19:34'),(5994,221,11693,4.99,'2005-08-17 06:56:56'),(5995,221,11802,2.99,'2005-08-17 11:32:51'),(6002,221,15125,8.99,'2005-08-22 12:53:22'),(6121,227,7132,7.99,'2005-07-27 06:28:34'),(6125,227,8417,4.99,'2005-07-29 06:53:36'),(6775,251,9196,2.99,'2005-07-30 12:30:19'),(6780,251,12666,4.99,'2005-08-18 19:11:41'),(6781,251,13121,2.99,'2005-08-19 11:51:39'),(6793,252,4372,0.99,'2005-07-07 20:09:01'),(6799,252,7168,0.99,'2005-07-27 07:51:11'),(7929,293,3025,2.99,'2005-06-20 11:46:48'),(7949,293,15258,4.99,'2005-08-22 18:22:44'),(8389,309,4172,4.99,'2005-07-07 09:49:09'),(8390,309,4540,4.99,'2005-07-08 04:03:28'),(8406,309,11964,6.99,'2005-08-17 17:37:03'),(8408,309,13502,0.99,'2005-08-20 01:58:15'),(8410,309,14846,5.99,'2005-08-22 02:13:48'),(8411,309,15422,4.99,'2005-08-22 23:58:09'),(10672,394,213,3.99,'2005-05-26 08:44:08'),(10681,394,6059,4.99,'2005-07-11 04:03:54'),(10857,402,1194,4.99,'2005-06-15 01:25:08'),(10859,402,2913,2.99,'2005-06-20 03:42:27'),(10867,402,6283,3.99,'2005-07-11 16:47:32'),(10874,402,11920,0.99,'2005-08-17 16:10:19'),(11835,439,2621,2.99,'2005-06-19 08:07:31'),(11852,439,11042,6.99,'2005-08-02 06:04:33'),(12087,448,1313,5.99,'2005-06-15 10:18:34'),(12088,448,1823,7.99,'2005-06-16 21:48:16'),(12095,448,4206,2.99,'2005-07-07 11:32:16'),(12100,448,6985,4.99,'2005-07-27 00:57:42'),(12103,448,11798,9.99,'2005-08-17 11:21:43'),(12106,448,13250,3.99,'2005-08-19 16:47:55'),(12651,469,506,7.99,'2005-05-28 02:09:19'),(12653,469,936,1.99,'2005-05-30 13:52:49'),(12658,469,3526,10.99,'2005-07-06 01:03:29'),(12663,469,5664,6.99,'2005-07-10 08:04:41'),(12885,477,882,2.99,'2005-05-30 06:16:06'),(12889,477,2676,4.99,'2005-06-19 11:54:57'),(12890,477,4237,5.99,'2005-07-07 13:16:55'),(12891,477,4283,2.99,'2005-07-07 15:29:35'),(12905,477,15091,2.99,'2005-08-22 11:34:43'),(13381,497,2818,4.99,'2005-06-19 20:05:52'),(13382,497,3696,2.99,'2005-07-06 10:04:55'),(13383,497,4218,7.99,'2005-07-07 12:10:24'),(13397,497,12123,0.99,'2005-08-17 23:22:18'),(13403,497,15919,0.99,'2005-08-23 18:01:31'),(13404,497,12698,4.99,'2006-02-14 15:16:03'),(13433,499,1355,2.99,'2005-06-15 13:13:59'),(13782,512,2029,4.99,'2005-06-17 13:10:59'),(13806,512,12786,0.99,'2006-02-14 15:16:03'),(14119,525,3993,6.99,'2005-07-06 23:37:06'),(14738,549,8316,4.99,'2005-07-29 03:38:49'),(14891,556,772,5.99,'2005-05-29 13:08:06'),(14892,556,1083,3.99,'2005-05-31 11:04:48'),(14895,556,2986,0.99,'2005-06-20 08:50:28'),(14909,556,14176,2.99,'2005-08-21 03:09:23'),(15623,583,5462,0.99,'2005-07-09 22:56:53'),(15633,583,10800,4.99,'2005-08-01 22:07:44'),(15967,596,6197,4.99,'2005-07-11 12:09:51'),(15980,596,14417,0.99,'2005-08-21 11:13:35');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `test`.`payment_BEFORE_INSERT` BEFORE INSERT ON `payment` FOR EACH ROW

BEGIN
declare disc_email varchar(50);
declare rental_count int;

set disc_email = (select email 
from payment 
inner join customer on new.customer_id = customer.customer_id);

CALL `test`.`show_rentals_on_date`(disc_email,'date(now())',@rental_count);

set @discount = (new.amount / 2);
IF (@rentalcount > 2) then 
	set new.amount = @discount;
end IF;

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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `payment_AFTER_INSERT_log` AFTER INSERT ON `payment` FOR EACH ROW 
BEGIN
declare log_email varchar(50);
set log_email = (select email from customer where customer_id = new.customer_id); INSERT INTO log(id,email,acount_type,action_type,action_table,action_date,action_status) 
VALUES(new.payment_id,log_email,CUSTOMER, 'INSERT', 'payment' ,NOW(),'SUCCEED');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `payment_AFTER_UPDATE_log` AFTER UPDATE ON `payment` FOR EACH ROW
BEGIN
declare log_email varchar(50);
set log_email = (select email from customer where customer_id = new.customer_id);
  INSERT INTO log(id,email,acount_type,action_type,action_table,action_date,action_status) VALUES(new.payment_id,log_email,"CUSTOMER",'UPDATE' ,"payment" ,NOW(),"SUCCEED");
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

-- Dump completed on 2022-08-30 18:33:03
