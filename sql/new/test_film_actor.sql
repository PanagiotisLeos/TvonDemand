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
-- Table structure for table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_actor` (
  `actor_id` smallint(5) unsigned NOT NULL,
  `film_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`actor_id`,`film_id`),
  KEY `fk_film_actor_film` (`film_id`),
  CONSTRAINT `fk_film_actor_actor` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_film_actor_film` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_actor`
--

/*!40000 ALTER TABLE `film_actor` DISABLE KEYS */;
INSERT INTO `film_actor` VALUES (1,1),(1,23),(1,25),(1,140),(1,361),(1,438),(1,506),(1,939),(1,970),(2,31),(2,105),(2,145),(2,249),(2,314),(2,369),(2,481),(2,518),(2,540),(2,550),(2,555),(2,811),(3,42),(3,289),(3,329),(3,336),(3,341),(3,393),(3,441),(3,453),(3,480),(3,539),(3,618),(3,966),(3,967),(3,971),(4,23),(4,25),(4,56),(4,79),(4,379),(4,398),(4,616),(4,691),(4,714),(4,721),(4,798),(4,858),(4,924),(5,19),(5,172),(5,202),(5,203),(5,286),(5,288),(5,369),(5,383),(5,503),(5,571),(5,665),(5,730),(5,732),(5,811),(5,841),(5,865),(6,29),(6,60),(6,112),(6,164),(6,165),(6,193),(6,503),(6,517),(6,519),(6,692),(6,826),(6,902),(7,25),(7,67),(7,170),(7,173),(7,218),(7,225),(7,292),(7,554),(7,618),(7,633),(7,637),(7,691),(7,758),(7,770),(7,806),(7,846),(7,900),(7,901),(7,957),(8,179),(8,255),(8,263),(8,554),(8,771),(8,859),(8,895),(8,936),(9,30),(9,191),(9,200),(9,204),(9,434),(9,514),(9,811),(9,865),(9,873),(9,903),(9,926),(9,964),(9,974),(10,1),(10,191),(10,236),(10,251),(10,366),(10,477),(10,480),(10,522),(10,703),(10,782),(10,914),(10,929),(10,930),(10,964),(10,966);
/*!40000 ALTER TABLE `film_actor` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 18:33:04
