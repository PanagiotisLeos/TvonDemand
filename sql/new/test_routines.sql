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
-- Dumping events for database 'test'
--

--
-- Dumping routines for database 'test'
--
/*!50003 DROP PROCEDURE IF EXISTS `new_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`()
BEGIN declare f_year int;
declare f_month int;
declare f_earnings float (5,2) default null;
declare tv_year int;
declare tv_month int;
declare tv_earnings float (5,2) default null;
declare finished_flag int;
declare f_cursor cursor for 
select  year(`payment_date`),month(`payment_date`) 
   from payment   
   group by month(`payment_date`);       
   
   declare tv_cursor cursor for
   select  year(`payment_date`),month(`payment_date`),sum(amount)    from payment 
   inner join rental on rental.rental_id = payment.rental_id inner join inventory on inventory.inventory_id = rental.inventory_id   where inventory.tv_show_id is not null
   group by month(`payment_date`);
   declare continue handler for not found set finished_flag=1;
   
   open f_cursor;
   open tv_cursor;
   set finished_flag=0;
   while (finished_flag=0) do 
   fetch f_cursor into f_year,f_month;
   select  sum(amount) into f_earnings        
   from payment     
   inner join rental on rental.rental_id = payment.rental_id 
   inner join inventory on inventory.inventory_id = rental.inventory_id where inventory.film_id is not null 
   group by month(`payment_date`);
   select f_year,f_month,f_earnings; end while; 
   while (finished_flag=0) do 
   fetch tv_cursor into tv_year,tv_month,tv_earnings;    select tv_year,tv_month,tv_earnings; end while;
   close tv_cursor;
   close f_cursor; 
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_earnings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_earnings`()
BEGIN
declare e_year int;
declare e_month int;
declare f_earnings int;
declare tv_earnings int;
declare finished_flag int;

declare f_cursor cursor for
	select  year(`payment_date`),month(`payment_date`),sum(amount)
    from payment 
    inner join rental on rental.inventory_id = inventory.inventory_id
	where rental.inventory_id is not null
    group by month(`payment_date`);
    
declare tv_cursor cursor for
	select  year(`payment_date`),month(`payment_date`),sum(amount)
    from payment 
    inner join rental on rental.inventory_id = inventory.inventory_id
	where rental.inventory_id is null
    group by month(`payment_date`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_most_rentals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_most_rentals`(IN w_type enum('m','s'),IN nlimit int, IN f_date date, IN l_date date)
BEGIN

declare f_id smallint(5);
declare f_title text;
declare finished_flag int;

declare f_cursor cursor for
	select film.film_id,title 
    from film 
    inner join inventory on inventory.film_id = film.film_id
    inner join rental on rental.inventory_id = inventory.inventory_id
	where rental.rental_date between f_date and l_date
    group by film_id 
    order by count(*) desc
    limit nlimit;
	DECLARE s_cursor cursor for 
	select tv_show.tv_show_id,title
    from tv_show
    inner join tv_show_inventory on tv_show_inventory.tv_show_id = tv_show.tv_show_id
    inner join rental on rental.inventory_id = inventory.inventory_id;




declare continue handler for not found set finished_flag=1;
open f_cursor;
set finished_flag=0;
fetch f_cursor into f_id, f_title;
while (finished_flag=0) do 
	select f_id as 'Film ID' , f_title as 'Title';
    fetch f_cursor into f_id, f_title;
end while;
close f_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_most_rentals_test` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_most_rentals_test`(IN w_type enum('m','s'),IN nlimit int, IN f_date date, IN l_date date)
BEGIN 
declare f_id smallint(5);
declare f_title text;
declare finished_flag int;
declare f_cursor cursor for 
select film.film_id,title   
from film inner join inventory on inventory.film_id = film.film_id  inner join rental on rental.inventory_id = inventory.inventory_id where rental.rental_date between f_date and l_date
    group by film_id 
    order by count(*) desc
    limit nlimit   ;
    declare continue handler for not found set finished_flag=1;
    open f_cursor;
    set finished_flag=0;
    fetch f_cursor into f_id, f_title;
    while (finished_flag=0) do 
    select f_id as 'Film ID' , f_title as 'Title'   ; 
    fetch f_cursor into f_id, f_title ;
    end while;
    close f_cursor;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_rentals_on_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_rentals_on_date`(IN c_email varchar(45), IN r_date date,out r_c int)
BEGIN
declare finished_flag int;
declare rental_count int;
declare r_cursor cursor for
	select count(*) 
    from rental
    inner join customer on customer.customer_id = rental.customer_id
    where date(rental.rental_date) = r_date AND c_email = customer.email
    group by rental.customer_id;
    
declare continue handler for not found set finished_flag=1;
open r_cursor;
set finished_flag=0;
fetch r_cursor into rental_count;
while (finished_flag=0) do 
	select c_email as 'Customer Email' , rental_count as 'Rentals';
    fetch r_cursor into rental_count, c_email;
end while;
close r_cursor;
set @rc = rental_count;

END ;;
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

-- Dump completed on 2022-08-30 18:33:05
