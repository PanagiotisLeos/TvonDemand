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
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text DEFAULT NULL,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `length` smallint(5) unsigned DEFAULT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT 'G',
  `special_features` set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  KEY `fk_film_language` (`language_id`),
  KEY `fk_film_language_original` (`original_language_id`),
  CONSTRAINT `fk_film_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_film_language_original` FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=975 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'ACADEMY DINOSAUR','A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies',2006,1,NULL,86,'PG','Deleted Scenes,Behind the Scenes'),(19,'AMADEUS HOLY','A Emotional Display of a Pioneer And a Technical Writer who must Battle a Man in A Baloon',2006,1,NULL,113,'PG','Commentaries,Deleted Scenes,Behind the Scenes'),(23,'ANACONDA CONFESSIONS','A Lacklusture Display of a Dentist And a Dentist who must Fight a Girl in Australia',2006,1,NULL,92,'R','Trailers,Deleted Scenes'),(25,'ANGELS LIFE','A Thoughtful Display of a Woman And a Astronaut who must Battle a Robot in Berlin',2006,1,NULL,74,'G','Trailers'),(29,'ANTITRUST TOMATOES','A Fateful Yarn of a Womanizer And a Feminist who must Succumb a Database Administrator in Ancient India',2006,3,NULL,168,'NC-17','Trailers,Commentaries,Deleted Scenes'),(30,'ANYTHING SAVANNAH','A Epic Story of a Pastry Chef And a Woman who must Chase a Feminist in An Abandoned Fun House',2006,1,NULL,82,'R','Trailers,Deleted Scenes,Behind the Scenes'),(31,'APACHE DIVINE','A Awe-Inspiring Reflection of a Pastry Chef And a Teacher who must Overcome a Sumo Wrestler in A U-Boat',2006,3,NULL,92,'NC-17','Commentaries,Deleted Scenes,Behind the Scenes'),(42,'ARTIST COLDBLOODED','A Stunning Reflection of a Robot And a Moose who must Challenge a Woman in California',2006,1,NULL,170,'NC-17','Trailers,Behind the Scenes'),(56,'BAREFOOT MANCHURIAN','A Intrepid Story of a Cat And a Student who must Vanquish a Girl in An Abandoned Amusement Park',2006,1,3,129,'G','Trailers,Commentaries'),(60,'BEAST HUNCHBACK','A Awe-Inspiring Epistle of a Student And a Squirrel who must Defeat a Boy in Ancient China',2006,1,NULL,89,'R','Deleted Scenes,Behind the Scenes'),(67,'BERETS AGENT','A Taut Saga of a Crocodile And a Boy who must Overcome a Technical Writer in Ancient China',2006,1,NULL,77,'PG-13','Deleted Scenes'),(79,'BLADE POLISH','A Thoughtful Character Study of a Frisbee And a Pastry Chef who must Fight a Dentist in The First Manned Space Station',2006,1,NULL,114,'PG-13','Trailers,Behind the Scenes'),(105,'BULL SHAWSHANK','A Fanciful Drama of a Moose And a Squirrel who must Conquer a Pioneer in The Canadian Rockies',2006,1,NULL,125,'NC-17','Deleted Scenes'),(112,'CALENDAR GUNFIGHT','A Thrilling Drama of a Frisbee And a Lumberjack who must Sink a Man in Nigeria',2006,1,NULL,120,'NC-17','Trailers,Commentaries,Behind the Scenes'),(140,'CHEAPER CLYDE','A Emotional Character Study of a Pioneer And a Girl who must Discover a Dog in Ancient Japan',2006,1,NULL,87,'G','Trailers,Commentaries,Behind the Scenes'),(145,'CHISUM BEHAVIOR','A Epic Documentary of a Sumo Wrestler And a Butler who must Kill a Car in Ancient India',2006,1,NULL,124,'G','Trailers,Commentaries,Behind the Scenes'),(164,'COAST RAINBOW','A Astounding Documentary of a Mad Cow And a Pioneer who must Challenge a Butler in The Sahara Desert',2006,1,NULL,55,'PG','Trailers,Commentaries,Deleted Scenes,Behind the Scenes'),(165,'COLDBLOODED DARLING','A Brilliant Panorama of a Dentist And a Moose who must Find a Student in The Gulf of Mexico',2006,1,NULL,70,'G','Trailers,Deleted Scenes'),(170,'COMMAND DARLING','A Awe-Inspiring Tale of a Forensic Psychologist And a Woman who must Challenge a Database Administrator in Ancient Japan',2006,1,NULL,120,'PG-13','Behind the Scenes'),(172,'CONEHEADS SMOOCHY','A Touching Story of a Womanizer And a Composer who must Pursue a Husband in Nigeria',2006,1,NULL,112,'NC-17','Deleted Scenes,Behind the Scenes'),(173,'CONFESSIONS MAGUIRE','A Insightful Story of a Car And a Boy who must Battle a Technical Writer in A Baloon',2006,1,NULL,65,'PG-13','Behind the Scenes'),(179,'CONQUERER NUTS','A Taut Drama of a Mad Scientist And a Man who must Escape a Pioneer in An Abandoned Mine Shaft',2006,1,3,173,'G','Commentaries,Deleted Scenes,Behind the Scenes'),(191,'CROOKED FROGMEN','A Unbelieveable Drama of a Hunter And a Database Administrator who must Battle a Crocodile in An Abandoned Amusement Park',2006,1,NULL,143,'PG-13','Commentaries,Deleted Scenes,Behind the Scenes'),(193,'CROSSROADS CASUALTIES','A Intrepid Documentary of a Sumo Wrestler And a Astronaut who must Battle a Composer in The Outback',2006,2,NULL,153,'G','Trailers,Commentaries,Behind the Scenes'),(200,'CURTAIN VIDEOTAPE','A Boring Reflection of a Dentist And a Mad Cow who must Chase a Secret Agent in A Shark Tank',2006,1,NULL,133,'PG-13','Trailers,Commentaries,Deleted Scenes,Behind the Scenes'),(202,'DADDY PITTSBURGH','A Epic Story of a A Shark And a Student who must Confront a Explorer in The Gulf of Mexico',2006,1,NULL,161,'G','Deleted Scenes,Behind the Scenes'),(203,'DAISY MENAGERIE','A Fast-Paced Saga of a Pastry Chef And a Monkey who must Sink a Composer in Ancient India',2006,1,NULL,84,'G','Trailers,Commentaries,Behind the Scenes'),(204,'DALMATIONS SWEDEN','A Emotional Epistle of a Moose And a Hunter who must Overcome a Robot in A Manhattan Penthouse',2006,2,NULL,106,'PG','Trailers,Commentaries,Deleted Scenes'),(218,'DECEIVER BETRAYED','A Taut Story of a Moose And a Squirrel who must Build a Husband in Ancient India',2006,1,NULL,122,'NC-17','Trailers,Commentaries,Deleted Scenes,Behind the Scenes'),(225,'DESTINATION JERK','A Beautiful Yarn of a Teacher And a Cat who must Build a Car in A U-Boat',2006,1,NULL,76,'PG-13','Trailers,Commentaries,Behind the Scenes'),(236,'DIVINE RESURRECTION','A Boring Character Study of a Man And a Womanizer who must Succumb a Teacher in An Abandoned Amusement Park',2006,1,2,100,'R','Trailers,Commentaries'),(249,'DRACULA CRYSTAL','A Thrilling Reflection of a Feminist And a Cat who must Find a Frisbee in An Abandoned Fun House',2006,3,NULL,176,'G','Commentaries'),(251,'DRAGONFLY STRANGERS','A Boring Documentary of a Pioneer And a Man who must Vanquish a Man in Nigeria',2006,1,NULL,133,'NC-17','Trailers,Behind the Scenes'),(255,'DRIVING POLISH','A Action-Packed Yarn of a Feminist And a Technical Writer who must Sink a Boat in An Abandoned Mine Shaft',2006,4,NULL,175,'NC-17','Trailers,Deleted Scenes'),(263,'DURHAM PANKY','A Brilliant Panorama of a Girl And a Boy who must Face a Mad Scientist in An Abandoned Mine Shaft',2006,1,NULL,154,'R','Trailers,Commentaries'),(286,'ENOUGH RAGING','A Astounding Character Study of a Boat And a Secret Agent who must Find a Mad Cow in The Sahara Desert',2006,1,4,158,'NC-17','Commentaries'),(288,'ESCAPE METROPOLIS','A Taut Yarn of a Astronaut And a Technical Writer who must Outgun a Boat in New Orleans',2006,1,NULL,167,'R','Trailers'),(289,'EVE RESURRECTION','A Awe-Inspiring Yarn of a Pastry Chef And a Database Administrator who must Challenge a Teacher in A Baloon',2006,1,NULL,66,'G','Trailers,Commentaries,Deleted Scenes'),(292,'EXCITEMENT EVE','A Brilliant Documentary of a Monkey And a Car who must Conquer a Crocodile in A Shark Tank',2006,1,NULL,51,'G','Commentaries'),(314,'FIGHT JAWBREAKER','A Intrepid Panorama of a Womanizer And a Girl who must Escape a Girl in A Manhattan Penthouse',2006,1,NULL,91,'R','Trailers,Commentaries,Deleted Scenes,Behind the Scenes'),(329,'FORREST SONS','A Thrilling Documentary of a Forensic Psychologist And a Butler who must Defeat a Explorer in A Jet Boat',2006,1,3,63,'R','Commentaries'),(336,'FRENCH HOLIDAY','A Thrilling Epistle of a Dog And a Feminist who must Kill a Madman in Berlin',2006,1,NULL,99,'PG','Behind the Scenes'),(341,'FROST HEAD','A Amazing Reflection of a Lumberjack And a Cat who must Discover a Husband in A MySQL Convention',2006,1,2,82,'PG','Trailers,Deleted Scenes'),(361,'GLEAMING JAWBREAKER','A Amazing Display of a Composer And a Forensic Psychologist who must Discover a Car in The Canadian Rockies',2006,1,NULL,89,'NC-17','Trailers,Commentaries'),(366,'GOLDFINGER SENSIBILITY','A Insightful Drama of a Mad Scientist And a Hunter who must Defeat a Pastry Chef in New Orleans',2006,4,NULL,93,'G','Trailers,Commentaries,Behind the Scenes'),(369,'GOODFELLAS SALUTE','A Unbelieveable Tale of a Dog And a Explorer who must Sink a Mad Cow in A Baloon Factory',2006,1,NULL,56,'PG','Deleted Scenes'),(379,'GREEDY ROOTS','A Amazing Reflection of a A Shark And a Butler who must Chase a Hunter in The Canadian Rockies',2006,1,NULL,166,'R','Trailers,Commentaries,Deleted Scenes'),(383,'GROOVE FICTION','A Unbelieveable Reflection of a Moose And a A Shark who must Defeat a Lumberjack in An Abandoned Mine Shaft',2006,1,4,111,'NC-17','Behind the Scenes'),(393,'HALLOWEEN NUTS','A Amazing Panorama of a Forensic Psychologist And a Technical Writer who must Fight a Dentist in A U-Boat',2006,1,NULL,47,'PG-13','Deleted Scenes'),(398,'HANOVER GALAXY','A Stunning Reflection of a Girl And a Secret Agent who must Succumb a Boy in A MySQL Convention',2006,1,NULL,47,'NC-17','Commentaries,Deleted Scenes,Behind the Scenes'),(434,'HORROR REIGN','A Touching Documentary of a A Shark And a Car who must Build a Husband in Nigeria',2006,1,NULL,139,'R','Deleted Scenes,Behind the Scenes'),(438,'HUMAN GRAFFITI','A Beautiful Reflection of a Womanizer And a Sumo Wrestler who must Chase a Database Administrator in The Gulf of Mexico',2006,1,NULL,68,'NC-17','Trailers,Behind the Scenes'),(441,'HUNTER ALTER','A Emotional Drama of a Mad Cow And a Boat who must Redeem a Secret Agent in A Shark Tank',2006,1,NULL,125,'PG-13','Commentaries,Deleted Scenes,Behind the Scenes'),(453,'IMAGE PRINCESS','A Lacklusture Panorama of a Secret Agent And a Crocodile who must Discover a Madman in The Canadian Rockies',2006,1,NULL,178,'PG-13','Trailers,Commentaries,Deleted Scenes'),(477,'JAWBREAKER BROOKLYN','A Stunning Reflection of a Boat And a Pastry Chef who must Succumb a A Shark in A Jet Boat',2006,4,NULL,118,'PG','Trailers,Behind the Scenes'),(480,'JEEPERS WEDDING','A Astounding Display of a Composer And a Dog who must Kill a Pastry Chef in Soviet Georgia',2006,1,NULL,84,'R','Trailers,Commentaries,Deleted Scenes'),(481,'JEKYLL FROGMEN','A Fanciful Epistle of a Student And a Astronaut who must Kill a Waitress in A Shark Tank',2006,1,NULL,58,'PG','Commentaries,Deleted Scenes,Behind the Scenes'),(503,'KRAMER CHOCOLATE','A Amazing Yarn of a Robot And a Pastry Chef who must Redeem a Mad Scientist in The Outback',2006,1,NULL,171,'R','Trailers'),(506,'LADY STAGE','A Beautiful Character Study of a Woman And a Man who must Pursue a Explorer in A U-Boat',2006,1,NULL,67,'PG','Trailers,Deleted Scenes,Behind the Scenes'),(514,'LEBOWSKI SOLDIERS','A Beautiful Epistle of a Secret Agent And a Pioneer who must Chase a Astronaut in Ancient China',2006,1,NULL,69,'PG-13','Commentaries,Deleted Scenes'),(517,'LESSON CLEOPATRA','A Emotional Display of a Man And a Explorer who must Build a Boy in A Manhattan Penthouse',2006,1,NULL,167,'NC-17','Deleted Scenes,Behind the Scenes'),(518,'LIAISONS SWEET','A Boring Drama of a A Shark And a Explorer who must Redeem a Waitress in The Canadian Rockies',2006,1,NULL,140,'PG','Commentaries,Behind the Scenes'),(519,'LIBERTY MAGNIFICENT','A Boring Drama of a Student And a Cat who must Sink a Technical Writer in A Baloon',2006,1,NULL,138,'G','Commentaries,Deleted Scenes,Behind the Scenes'),(522,'LIFE TWISTED','A Thrilling Reflection of a Teacher And a Composer who must Find a Man in The First Manned Space Station',2006,1,NULL,137,'NC-17','Commentaries,Deleted Scenes'),(539,'LUCK OPUS','A Boring Display of a Moose And a Squirrel who must Outrace a Teacher in A Shark Tank',2006,1,NULL,152,'NC-17','Trailers,Commentaries,Behind the Scenes'),(540,'LUCKY FLYING','A Lacklusture Character Study of a A Shark And a Man who must Find a Forensic Psychologist in A U-Boat',2006,2,NULL,97,'PG-13','Trailers,Commentaries,Behind the Scenes'),(550,'MAGUIRE APACHE','A Fast-Paced Reflection of a Waitress And a Hunter who must Defeat a Forensic Psychologist in A Baloon',2006,1,NULL,74,'NC-17','Trailers,Commentaries'),(554,'MALKOVICH PET','A Intrepid Reflection of a Waitress And a A Shark who must Kill a Squirrel in The Outback',2006,1,NULL,159,'G','Behind the Scenes'),(555,'MALLRATS UNITED','A Thrilling Yarn of a Waitress And a Dentist who must Find a Hunter in A Monastery',2006,1,NULL,133,'PG','Trailers,Commentaries,Deleted Scenes'),(571,'METAL ARMAGEDDON','A Thrilling Display of a Lumberjack And a Crocodile who must Meet a Monkey in A Baloon Factory',2006,1,NULL,161,'PG-13','Trailers,Commentaries,Deleted Scenes'),(616,'NATIONAL STORY','A Taut Epistle of a Mad Scientist And a Girl who must Escape a Monkey in California',2006,1,NULL,92,'NC-17','Trailers'),(618,'NECKLACE OUTBREAK','A Astounding Epistle of a Database Administrator And a Mad Scientist who must Pursue a Cat in California',2006,4,NULL,132,'PG','Trailers,Commentaries,Behind the Scenes'),(633,'OCTOBER SUBMARINE','A Taut Epistle of a Monkey And a Boy who must Confront a Husband in A Jet Boat',2006,1,NULL,54,'PG-13','Trailers,Commentaries,Behind the Scenes'),(637,'OPEN AFRICAN','A Lacklusture Drama of a Secret Agent And a Explorer who must Discover a Car in A U-Boat',2006,1,NULL,131,'PG','Trailers,Commentaries'),(665,'PATTON INTERVIEW','A Thrilling Documentary of a Composer And a Secret Agent who must Succumb a Cat in Berlin',2006,1,NULL,175,'PG','Commentaries'),(691,'POSEIDON FOREVER','A Thoughtful Epistle of a Womanizer And a Monkey who must Vanquish a Dentist in A Monastery',2006,4,NULL,159,'PG-13','Commentaries'),(692,'POTLUCK MIXED','A Beautiful Story of a Dog And a Technical Writer who must Outgun a Student in A Baloon',2006,1,NULL,179,'G','Behind the Scenes'),(703,'PUNK DIVORCE','A Fast-Paced Tale of a Pastry Chef And a Boat who must Face a Frisbee in The Canadian Rockies',2006,1,NULL,100,'PG','Trailers,Commentaries,Deleted Scenes'),(714,'RANDOM GO','A Fateful Drama of a Frisbee And a Student who must Confront a Cat in A Shark Tank',2006,1,NULL,73,'NC-17','Trailers'),(721,'REDS POCUS','A Lacklusture Yarn of a Sumo Wrestler And a Squirrel who must Redeem a Monkey in Soviet Georgia',2006,1,NULL,182,'PG-13','Trailers,Behind the Scenes'),(730,'RIDGEMONT SUBMARINE','A Unbelieveable Drama of a Waitress And a Composer who must Sink a Mad Cow in Ancient Japan',2006,1,2,46,'PG-13','Commentaries,Deleted Scenes,Behind the Scenes'),(732,'RINGS HEARTBREAKERS','A Amazing Yarn of a Sumo Wrestler And a Boat who must Conquer a Waitress in New Orleans',2006,1,NULL,58,'G','Trailers,Commentaries,Behind the Scenes'),(758,'SAINTS BRIDE','A Fateful Tale of a Technical Writer And a Composer who must Pursue a Explorer in The Gulf of Mexico',2006,2,NULL,125,'G','Deleted Scenes'),(770,'SCISSORHANDS SLUMS','A Awe-Inspiring Drama of a Girl And a Technical Writer who must Meet a Feminist in The Canadian Rockies',2006,2,NULL,147,'G','Commentaries,Deleted Scenes,Behind the Scenes'),(771,'SCORPION APOLLO','A Awe-Inspiring Documentary of a Technical Writer And a Husband who must Meet a Monkey in An Abandoned Fun House',2006,1,NULL,137,'NC-17','Commentaries,Deleted Scenes'),(782,'SHAKESPEARE SADDLE','A Fast-Paced Panorama of a Lumberjack And a Database Administrator who must Defeat a Madman in A MySQL Convention',2006,1,NULL,60,'PG-13','Commentaries,Behind the Scenes'),(798,'SILVERADO GOLDFINGER','A Stunning Epistle of a Sumo Wrestler And a Man who must Challenge a Waitress in Ancient India',2006,1,NULL,74,'PG','Trailers,Commentaries'),(806,'SLEEPY JAPANESE','A Emotional Epistle of a Moose And a Composer who must Fight a Technical Writer in The Outback',2006,1,NULL,137,'PG','Trailers,Commentaries,Deleted Scenes'),(811,'SMILE EARRING','A Intrepid Drama of a Teacher And a Butler who must Build a Pastry Chef in Berlin',2006,1,NULL,60,'G','Commentaries,Behind the Scenes'),(826,'SPEED SUIT','A Brilliant Display of a Frisbee And a Mad Scientist who must Succumb a Robot in Ancient China',2006,1,NULL,124,'PG-13','Commentaries,Behind the Scenes'),(841,'STAR OPERATION','A Insightful Character Study of a Girl And a Car who must Pursue a Mad Cow in A Shark Tank',2006,1,NULL,181,'PG','Commentaries'),(846,'STING PERSONAL','A Fanciful Drama of a Frisbee And a Dog who must Fight a Madman in A Jet Boat',2006,1,NULL,93,'NC-17','Commentaries,Deleted Scenes,Behind the Scenes'),(858,'SUBMARINE BED','A Amazing Display of a Car And a Monkey who must Fight a Teacher in Soviet Georgia',2006,1,NULL,127,'R','Trailers'),(859,'SUGAR WONKA','A Touching Story of a Dentist And a Database Administrator who must Conquer a Astronaut in An Abandoned Amusement Park',2006,1,NULL,114,'PG','Trailers,Commentaries,Behind the Scenes'),(865,'SUNRISE LEAGUE','A Beautiful Epistle of a Madman And a Butler who must Face a Crocodile in A Manhattan Penthouse',2006,3,NULL,135,'PG-13','Behind the Scenes'),(873,'SWEETHEARTS SUSPECTS','A Brilliant Character Study of a Frisbee And a Sumo Wrestler who must Confront a Woman in The Gulf of Mexico',2006,1,NULL,108,'G','Trailers,Commentaries,Deleted Scenes,Behind the Scenes'),(895,'TOMORROW HUSTLER','A Thoughtful Story of a Moose And a Husband who must Face a Secret Agent in The Sahara Desert',2006,1,NULL,142,'R','Commentaries'),(900,'TOWN ARK','A Awe-Inspiring Documentary of a Moose And a Madman who must Meet a Dog in An Abandoned Mine Shaft',2006,1,4,136,'R','Behind the Scenes'),(901,'TRACY CIDER','A Touching Reflection of a Database Administrator And a Madman who must Build a Lumberjack in Nigeria',2006,1,NULL,142,'G','Trailers,Commentaries,Behind the Scenes'),(902,'TRADING PINOCCHIO','A Emotional Character Study of a Student And a Explorer who must Discover a Frisbee in The First Manned Space Station',2006,1,NULL,170,'PG','Trailers,Deleted Scenes,Behind the Scenes'),(903,'TRAFFIC HOBBIT','A Amazing Epistle of a Squirrel And a Lumberjack who must Succumb a Database Administrator in A U-Boat',2006,1,NULL,139,'G','Trailers,Commentaries'),(914,'TROUBLE DATE','A Lacklusture Panorama of a Forensic Psychologist And a Woman who must Kill a Explorer in Ancient Japan',2006,1,NULL,61,'PG','Trailers,Commentaries,Behind the Scenes'),(924,'UNFORGIVEN ZOOLANDER','A Taut Epistle of a Monkey And a Sumo Wrestler who must Vanquish a A Shark in A Baloon Factory',2006,1,NULL,129,'PG','Trailers,Commentaries,Behind the Scenes'),(926,'UNTOUCHABLES SUNRISE','A Amazing Documentary of a Woman And a Astronaut who must Outrace a Teacher in An Abandoned Fun House',2006,1,NULL,120,'NC-17','Trailers,Deleted Scenes'),(929,'USUAL UNTOUCHABLES','A Touching Display of a Explorer And a Lumberjack who must Fight a Forensic Psychologist in A Shark Tank',2006,4,NULL,128,'PG-13','Trailers,Commentaries,Behind the Scenes'),(930,'VACATION BOONDOCK','A Fanciful Character Study of a Secret Agent And a Mad Scientist who must Reach a Teacher in Australia',2006,1,NULL,145,'R','Commentaries'),(936,'VANISHING ROCKY','A Brilliant Reflection of a Man And a Woman who must Conquer a Pioneer in A MySQL Convention',2006,1,NULL,123,'NC-17','Trailers,Commentaries,Behind the Scenes'),(939,'VERTIGO NORTHWEST','A Unbelieveable Display of a Mad Scientist And a Mad Scientist who must Outgun a Mad Cow in Ancient Japan',2006,1,NULL,90,'R','Commentaries,Behind the Scenes'),(957,'WAR NOTTING','A Boring Drama of a Teacher And a Sumo Wrestler who must Challenge a Secret Agent in The Canadian Rockies',2006,1,NULL,80,'G','Deleted Scenes,Behind the Scenes'),(964,'WATERFRONT DELIVERANCE','A Unbelieveable Documentary of a Dentist And a Technical Writer who must Build a Womanizer in Nigeria',2006,4,NULL,61,'G','Behind the Scenes'),(966,'WEDDING APOLLO','A Action-Packed Tale of a Student And a Waitress who must Conquer a Lumberjack in An Abandoned Mine Shaft',2006,1,NULL,70,'PG','Trailers'),(967,'WEEKEND PERSONAL','A Fast-Paced Documentary of a Car And a Butler who must Find a Frisbee in A Jet Boat',2006,1,NULL,134,'R','Trailers,Commentaries,Deleted Scenes,Behind the Scenes'),(970,'WESTWARD SEABISCUIT','A Lacklusture Tale of a Butler And a Husband who must Face a Boy in Ancient China',2006,1,NULL,52,'NC-17','Commentaries,Deleted Scenes'),(971,'WHALE BIKINI','A Intrepid Story of a Pastry Chef And a Database Administrator who must Kill a Feminist in A MySQL Convention',2006,3,NULL,109,'PG-13','Commentaries,Deleted Scenes,Behind the Scenes'),(974,'WILD APOLLO','A Beautiful Story of a Monkey And a Sumo Wrestler who must Conquer a A Shark in A MySQL Convention',2006,1,NULL,181,'R','Trailers,Commentaries,Deleted Scenes,Behind the Scenes');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 18:33:04
