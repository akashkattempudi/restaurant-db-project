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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comments` text,
  `feedback_date` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `fk_feedback_order` (`order_id`),
  KEY `fk_feedback_customer` (`customer_id`),
  KEY `fk_feedback_restaurant` (`restaurant_id`),
  CONSTRAINT `fk_feedback_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_feedback_order` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`),
  CONSTRAINT `fk_feedback_restaurant` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,1,1,1,'Excellent food and service!','2024-06-04'),(2,2,2,2,1,'Good experience overall.','2024-06-01'),(4,4,4,1,5,'Loved the ambiance!','2024-06-04'),(5,5,5,2,2,'Slow service.','2024-06-05'),(6,6,6,3,1,'Good variety in menu.','2024-06-06'),(7,7,7,4,5,'Best experience ever!','2024-01-07'),(8,8,8,5,3,'Could be better.','2024-02-08'),(9,9,9,1,4,'Tasty food.','2024-06-10'),(10,10,10,2,1,'Very disappointed.','2024-06-11'),(11,1,1,1,5,'Amazing food quality!','2024-06-12'),(12,2,2,2,1,'Very prompt service.','2024-06-12'),(13,3,3,3,3,'Could be better.','2024-06-12'),(14,1,4,1,1,'Loved the dosa!','2024-06-13'),(15,2,5,2,4,'Tasty and quick!','2024-06-13'),(16,3,6,3,1,'Great value for money.','2024-06-13'),(17,4,7,1,4,'Decent but oily.','2024-06-14'),(18,5,8,2,5,'Perfect spice level.','2024-06-14'),(19,1,9,1,3,'Repeat visit. Consistent taste.','2024-06-14'),(20,2,10,2,2,'Could improve the packaging.','2024-06-14'),(21,1,11,1,2,'Top notch biryani.','2024-06-15'),(22,2,12,2,1,'Paneer dishes are great.','2024-06-15'),(23,3,13,3,1,'Veg options were limited.','2024-06-15'),(24,4,14,2,2,'Service was a bit slow.','2024-06-16'),(25,5,15,1,3,'Loved the grilled chicken.','2024-06-16'),(26,6,16,3,4,'Too crowded but food was fine.','2024-06-16'),(27,7,17,1,2,'Not worth the price.','2024-06-17'),(28,8,18,2,1,'Great ambience and food.','2024-06-17'),(29,9,19,3,4,'Excellent vegetarian thali.','2024-06-17'),(30,10,20,2,4,'Good for quick meals.','2024-06-17'),(31,1,21,1,1,'Loved the desserts!','2024-06-18'),(32,1,22,2,3,'Dosa was a bit cold.','2024-06-18'),(33,2,23,1,1,'Paneer butter masala is ?.','2024-06-18'),(34,2,24,3,2,'Gravy was watery.','2024-06-18'),(35,3,25,2,4,'Friendly staff.','2024-06-19'),(36,3,26,3,3,'Repeat order. Still good.','2024-06-19'),(37,4,27,1,5,'Loved the thali!','2024-06-19'),(38,4,28,2,2,'Juice was too sugary.','2024-06-19'),(39,5,29,3,5,'Nice spicy options.','2024-06-20'),(40,5,30,2,4,'Good staff behavior.','2024-06-20'),(41,6,31,2,3,'Items were fresh.','2024-06-20'),(42,6,32,1,4,'Very good value meal.','2024-06-20'),(43,7,33,3,3,'Paneer tikka was okay.','2024-06-21'),(44,7,34,1,4,'Dosa was great!','2024-06-21'),(45,8,35,2,5,'Loved the variety!','2024-06-21'),(46,8,36,3,5,'Quick delivery.','2024-06-21'),(47,9,37,3,4,'Good packaging.','2024-06-22'),(48,9,38,1,2,'Items not hot.','2024-06-22'),(49,10,39,2,4,'Combo meals were good.','2024-06-22'),(50,10,40,1,3,'Loved the rice combo.','2024-06-22'),(51,1,1,1,5,'Auto feedback - Delivered',NULL),(52,2,2,2,5,'Auto feedback - Delivered',NULL),(53,4,4,1,5,'Auto feedback - Delivered',NULL),(54,5,5,2,5,'Auto feedback - Delivered',NULL),(55,6,6,3,5,'Auto feedback - Delivered',NULL),(56,7,7,4,5,'Auto feedback - Delivered',NULL),(57,8,8,5,5,'Auto feedback - Delivered',NULL),(58,9,9,1,5,'Auto feedback - Delivered',NULL),(59,5,15,1,5,'Auto feedback - Delivered',NULL),(60,7,17,1,5,'Auto feedback - Delivered',NULL),(61,9,19,3,5,'Auto feedback - Delivered',NULL),(62,1,21,1,5,'Auto feedback - Delivered',NULL),(63,2,23,1,5,'Auto feedback - Delivered',NULL),(64,3,25,2,5,'Auto feedback - Delivered',NULL),(65,4,27,1,5,'Auto feedback - Delivered',NULL),(66,5,29,3,5,'Auto feedback - Delivered',NULL),(67,6,31,2,5,'Auto feedback - Delivered',NULL),(68,7,33,3,5,'Auto feedback - Delivered',NULL),(69,9,37,3,5,'Auto feedback - Delivered',NULL),(82,1,1,1,4,'Good',NULL),(83,2,2,2,4,'Good',NULL),(84,4,4,1,4,'Good',NULL),(85,5,5,2,4,'Good',NULL),(86,6,6,3,4,'Good',NULL),(87,7,7,4,4,'Good',NULL),(88,8,8,5,4,'Good',NULL),(89,9,9,1,4,'Good',NULL),(90,5,15,1,4,'Good',NULL),(91,7,17,1,4,'Good',NULL),(92,9,19,3,4,'Good',NULL),(93,1,21,1,4,'Good',NULL),(94,2,23,1,4,'Good',NULL),(95,3,25,2,4,'Good',NULL),(96,4,27,1,4,'Good',NULL),(97,5,29,3,4,'Good',NULL),(98,6,31,2,4,'Good',NULL),(99,7,33,3,4,'Good',NULL),(100,9,37,3,4,'Good',NULL);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-18 20:33:54
