-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: new
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(100) DEFAULT NULL,
  `restaurant_email` varchar(30) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `restaurant_type` varchar(30) DEFAULT NULL,
  `gst_number` varchar(20) DEFAULT NULL,
  `joined_date` date DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE KEY `restaurant_email_UNIQUE` (`restaurant_email`),
  UNIQUE KEY `gst_unique` (`gst_number`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Updated Name','updated@house.com','Hyderabad','Multi-cuisine',NULL,'2022-01-01'),(2,'Sweet Corner','sweetcorner@foodie.com','Delhi','Dessert','GST67890','2021-05-10'),(3,'Hot Grills','hotgrills@foodie.com','Chennai','BBQ','GST54321','2023-03-15'),(4,'Udupi','vegdelight@foodie.com','Bangalore','Vegetarian','GST09876','2020-08-25'),(5,'Oceanic Bites','oceanicbites@foodie.com','Mumbai','Seafood','GST13579','2022-07-12'),(6,'Curry House','curryhouse@foodie.com','Pune','Indian','GST24680','2019-09-30'),(7,'Pizza Nation','pizzanation@foodie.com','Ahmedabad','Italian','GST11223','2021-12-01'),(8,'Burger Planet','burgerplanet@foodie.com','Kolkata','Fast Food','GST33445','2023-01-20'),(9,'Sushi Zen','sushizen@foodie.com','Jaipur','Japanese','GST55667','2020-04-14'),(10,'Tandoori Nights','tandoorinights@foodie.com','Lucknow','Mughlai','GST77889','2022-10-10'),(11,'Santhosh Dhaba','Santhosh Dhaba@foodie.com','Hyderabad','Vegetarian','GST77880','2022-10-11'),(12,'Spicy House','spicy@house.com','Hyderabad',NULL,'GST12345',NULL),(24,'Flavor Town','flavortown@example.com','Mumbai',NULL,'123',NULL),(26,'FlavorTown','flavo2rtown@example.com','Mumbai2',NULL,'1234',NULL),(27,'Royal Dine','royaldine@example.com','Hyderabad',NULL,'GST98765',NULL);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-18 20:33:53
