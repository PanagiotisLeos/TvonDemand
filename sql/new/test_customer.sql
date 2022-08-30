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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address_id` smallint(5) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL,
  `reg_type` enum('Films','Tv shows','Films + Tv shows') NOT NULL DEFAULT 'Films',
  PRIMARY KEY (`customer_id`),
  KEY `fk_customer_address` (`address_id`),
  CONSTRAINT `fk_customer_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (3,'LINDA','WILLIAMS','LINDA.WILLIAMS@sakilacustomer.org',7,1,'2006-02-14 22:04:36','Films'),(16,'SANDRA','MARTIN','SANDRA.MARTIN@sakilacustomer.org',20,0,'2006-02-14 22:04:36','Films'),(33,'ANNA','HILL','ANNA.HILL@sakilacustomer.org',37,1,'2006-02-14 22:04:36','Films'),(35,'VIRGINIA','GREEN','VIRGINIA.GREEN@sakilacustomer.org',39,1,'2006-02-14 22:04:36','Films'),(52,'JULIE','SANCHEZ','JULIE.SANCHEZ@sakilacustomer.org',56,1,'2006-02-14 22:04:36','Films'),(85,'ANNE','POWELL','ANNE.POWELL@sakilacustomer.org',89,1,'2006-02-14 22:04:36','Films'),(104,'RITA','GRAHAM','RITA.GRAHAM@sakilacustomer.org',108,1,'2006-02-14 22:04:36','Films'),(114,'GRACE','ELLIS','GRACE.ELLIS@sakilacustomer.org',118,1,'2006-02-14 22:04:36','Films'),(142,'APRIL','BURNS','APRIL.BURNS@sakilacustomer.org',146,1,'2006-02-14 22:04:36','Films'),(162,'LAUREN','HUDSON','LAUREN.HUDSON@sakilacustomer.org',166,1,'2006-02-14 22:04:36','Films'),(195,'VANESSA','SIMS','VANESSA.SIMS@sakilacustomer.org',199,1,'2006-02-14 22:04:36','Films'),(196,'ALMA','AUSTIN','ALMA.AUSTIN@sakilacustomer.org',200,1,'2006-02-14 22:04:36','Films'),(201,'VICKI','FIELDS','VICKI.FIELDS@sakilacustomer.org',205,1,'2006-02-14 22:04:36','Films'),(221,'BESSIE','MORRISON','BESSIE.MORRISON@sakilacustomer.org',225,1,'2006-02-14 22:04:36','Films'),(227,'COLLEEN','BURTON','COLLEEN.BURTON@sakilacustomer.org',231,1,'2006-02-14 22:04:36','Films'),(251,'VICKIE','BREWER','VICKIE.BREWER@sakilacustomer.org',255,1,'2006-02-14 22:04:36','Films'),(252,'MATTIE','HOFFMAN','MATTIE.HOFFMAN@sakilacustomer.org',256,1,'2006-02-14 22:04:36','Films'),(293,'MAE','FLETCHER','MAE.FLETCHER@sakilacustomer.org',298,1,'2006-02-14 22:04:37','Films'),(309,'CHRISTOPHER','GRECO','CHRISTOPHER.GRECO@sakilacustomer.org',314,1,'2006-02-14 22:04:37','Films'),(394,'CHRIS','BROTHERS','CHRIS.BROTHERS@sakilacustomer.org',399,1,'2006-02-14 22:04:37','Films'),(402,'LUIS','YANEZ','LUIS.YANEZ@sakilacustomer.org',407,1,'2006-02-14 22:04:37','Films'),(439,'ALEXANDER','FENNELL','ALEXANDER.FENNELL@sakilacustomer.org',444,1,'2006-02-14 22:04:37','Films'),(448,'MIGUEL','BETANCOURT','MIGUEL.BETANCOURT@sakilacustomer.org',453,1,'2006-02-14 22:04:37','Films'),(469,'WESLEY','BULL','WESLEY.BULL@sakilacustomer.org',474,1,'2006-02-14 22:04:37','Films'),(477,'DAN','PAINE','DAN.PAINE@sakilacustomer.org',482,1,'2006-02-14 22:04:37','Films'),(497,'GILBERT','SLEDGE','GILBERT.SLEDGE@sakilacustomer.org',502,1,'2006-02-14 22:04:37','Films'),(499,'MARC','OUTLAW','MARC.OUTLAW@sakilacustomer.org',504,1,'2006-02-14 22:04:37','Films'),(512,'CECIL','VINES','CECIL.VINES@sakilacustomer.org',517,1,'2006-02-14 22:04:37','Films'),(525,'ADRIAN','CLARY','ADRIAN.CLARY@sakilacustomer.org',531,1,'2006-02-14 22:04:37','Films'),(541,'DARREN','WINDHAM','DARREN.WINDHAM@sakilacustomer.org',547,1,'2006-02-14 22:04:37','Films'),(549,'NELSON','CHRISTENSON','NELSON.CHRISTENSON@sakilacustomer.org',555,1,'2006-02-14 22:04:37','Films'),(556,'ARMANDO','GRUBER','ARMANDO.GRUBER@sakilacustomer.org',562,1,'2006-02-14 22:04:37','Films'),(583,'MARSHALL','THORN','MARSHALL.THORN@sakilacustomer.org',589,1,'2006-02-14 22:04:37','Films'),(596,'ENRIQUE','FORSYTHE','ENRIQUE.FORSYTHE@sakilacustomer.org',602,1,'2006-02-14 22:04:37','Films'),(597,'test','test','kof@test.gr',602,1,'2022-01-05 10:39:22','Films'),(603,'Panagiotis','Leos','leosp@gmail.com',7,1,'2022-08-29 14:30:52','Tv shows');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `customer_AFTER_INSERT` AFTER INSERT ON `customer` FOR EACH ROW 
BEGIN 
INSERT INTO LOGIN(user_id,user_email,user_type)
VALUES(new.customer_id,new.email,'customer');
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
