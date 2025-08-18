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
-- Table structure for table `payment_transaction`
--

DROP TABLE IF EXISTS `payment_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_transaction` (
  `transaction_id` int NOT NULL,
  `transaction_number` varchar(50) DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(30) DEFAULT NULL,
  `payment_status` varchar(30) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_payment_transaction_order` (`order_id`),
  CONSTRAINT `fk_payment_transaction_order` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`),
  CONSTRAINT `payment_status_chk` CHECK ((`payment_status` in (_utf8mb4'Success',_utf8mb4'Pending',_utf8mb4'Failed')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_transaction`
--

LOCK TABLES `payment_transaction` WRITE;
/*!40000 ALTER TABLE `payment_transaction` DISABLE KEYS */;
INSERT INTO `payment_transaction` VALUES (1,'TXN001',250.00,'Card','Success',1),(2,'TXN002',180.00,'Cash','Success',2),(3,'TXN003',350.00,'UPI','Failed',3),(4,'TXN004',500.00,'Card','Success',4),(5,'TXN005',220.00,'Cash','Pending',5),(6,'TXN006',300.00,'UPI','Success',6),(7,'TXN007',410.00,'Card','Success',7),(8,'TXN008',100.00,'Cash','Success',8),(9,'TXN009',270.00,'UPI','Success',9),(10,'TXN010',190.00,'Card','Success',10),(11,'TXN011',260.00,'Cash','Failed',11),(12,'TXN012',310.00,'UPI','Success',12),(13,'TXN013',200.00,'Card','Success',13),(14,'TXN014',420.00,'Cash','Failed',14),(15,'TXN015',150.00,'Wallet','Success',15),(16,'TXN016',360.00,'UPI','Success',16),(17,'TXN017',230.00,'Cash','Pending',17),(18,'TXN018',340.00,'Card','Failed',18),(19,'TXN019',310.00,'Wallet','Success',19),(20,'TXN020',280.00,'UPI','Success',20),(21,'TXN021',450.00,'Cash','Success',21),(22,'TXN022',220.00,'UPI','Success',22),(23,'TXN023',240.00,'Card','Failed',23),(24,'TXN024',390.00,'UPI','Success',24),(25,'TXN025',180.00,'Cash','Success',25),(26,'TXN026',250.00,'UPI','Success',26),(27,'TXN027',330.00,'Wallet','Pending',27),(28,'TXN028',400.00,'Card','Success',28),(29,'TXN029',210.00,'UPI','Failed',29),(30,'TXN030',290.00,'Cash','Success',30),(31,'TXN031',270.00,'UPI','Success',31),(32,'TXN032',370.00,'Card','Success',32),(33,'TXN033',195.00,'Wallet','Success',33),(34,'TXN034',405.00,'Cash','Pending',34),(35,'TXN035',240.00,'UPI','Failed',35),(36,'TXN036',315.00,'Card','Success',36),(37,'TXN037',165.00,'Cash','Success',37),(38,'TXN038',385.00,'UPI','Success',38),(39,'TXN039',305.00,'Card','Failed',39),(40,'TXN040',275.00,'Cash','Success',40);
/*!40000 ALTER TABLE `payment_transaction` ENABLE KEYS */;
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
