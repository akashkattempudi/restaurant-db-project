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
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_order` (
  `order_id` int NOT NULL,
  `order_type` varchar(20) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_status` varchar(30) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_customer_order_customer` (`customer_id`),
  KEY `fk_item` (`item_id`),
  KEY `fk_customer_order_restaurant` (`restaurant_id`),
  CONSTRAINT `fk_customer_order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_customer_order_restaurant` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  CONSTRAINT `fk_item` FOREIGN KEY (`item_id`) REFERENCES `menu_item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (1,'Dine-in',250.00,1,'Delivered','2024-06-01',1,1),(2,'Takeaway',180.00,2,'Delivered','2024-06-02',2,2),(3,'Dine-in',350.00,3,'Cancelled','2024-06-03',3,3),(4,'Online',500.00,4,'Delivered','2024-06-04',1,4),(5,'Takeaway',220.00,5,'Delivered','2024-06-05',2,5),(6,'Dine-in',300.00,6,'Delivered','2024-06-06',3,6),(7,'Online',410.00,7,'Delivered','2024-06-07',4,7),(8,'Takeaway',100.00,8,'Delivered','2024-06-08',5,8),(9,'Dine-in',270.00,9,'Delivered','2024-06-09',1,9),(10,'Online',190.00,10,'Cancelled','2024-06-10',2,10),(11,'Online',180.00,1,'Cancelled','2024-07-01',1,1),(12,'Takeaway',210.00,2,'Pending','2024-07-02',2,2),(13,'Dine-in',320.00,3,'Cancelled','2024-07-03',3,3),(14,'Online',450.00,4,'Cancelled','2024-07-04',2,4),(15,'Dine-in',500.00,5,'Delivered','2024-07-05',1,5),(16,'Takeaway',260.00,6,'Pending','2024-07-06',3,6),(17,'Dine-in',380.00,7,'Delivered','2024-07-07',1,7),(18,'Online',150.00,8,'Cancelled','2024-07-08',2,8),(19,'Takeaway',400.00,9,'Delivered','2024-07-09',3,9),(20,'Dine-in',310.00,10,'Pending','2024-07-10',2,10),(21,'Dine-in',250.00,1,'Delivered','2024-07-11',1,1),(22,'Online',300.00,1,'Pending','2024-07-12',2,2),(23,'Takeaway',190.00,2,'Delivered','2024-07-11',1,3),(24,'Online',350.00,2,'Cancelled','2024-07-12',3,4),(25,'Online',410.00,3,'Delivered','2024-07-11',2,5),(26,'Dine-in',295.00,3,'Pending','2024-07-12',3,6),(27,'Takeaway',270.00,4,'Delivered','2024-07-11',1,7),(28,'Online',375.00,4,'Cancelled','2024-07-12',2,8),(29,'Dine-in',330.00,5,'Delivered','2024-07-11',3,9),(30,'Online',390.00,5,'Pending','2024-07-12',2,10),(31,'Takeaway',260.00,6,'Delivered','2024-07-11',2,1),(32,'Online',440.00,6,'Cancelled','2024-07-12',1,2),(33,'Dine-in',470.00,7,'Delivered','2024-07-11',3,3),(34,'Takeaway',360.00,7,'Pending','2024-07-12',1,4),(35,'Online',380.00,8,'Cancelled','2024-07-11',2,5),(36,'Dine-in',415.00,8,'Cancelled','2024-07-12',3,6),(37,'Takeaway',290.00,9,'Delivered','2024-07-11',3,7),(38,'Online',335.00,9,'Pending','2024-07-12',1,8),(39,'Dine-in',420.00,10,'Cancelled','2024-07-11',2,9),(40,'Online',310.00,10,'Cancelled','2024-07-12',1,10);
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
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
