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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `job_role` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `shift_time` time DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `years_of_experience` int DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_employee_restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Arjun Reddy','M','9876543210','arjun@example.com','Chef',40000.00,'08:00:00','Kitchen Staff',5,1),(2,'Riya Sen','F','8765432109','riya@example.com','Manager',55000.00,'09:00:00','Management',7,1),(3,'Kiran Kumar','M','7654321098','kiran@example.com','Waiter',25000.00,'10:00:00','Service',2,2),(4,'Nikita Das','F','6543210987','nikita@example.com','Receptionist',30000.00,'11:00:00','Front Desk',3,2),(5,'Manoj Varma','M','5432109876','manoj@example.com','Security',22000.00,'12:00:00','Security',4,3),(6,'Anjali Mehta','F','4321098765','anjali@example.com','Cashier',32000.00,'09:30:00','Billing',6,3),(7,'Siddharth Rao','M','3210987654','siddharth@example.com','Cleaner',18000.00,'06:00:00','Maintenance',1,4),(8,'Sneha Jain','F','2109876543','sneha@example.com','Chef',42000.00,'08:30:00','Kitchen Staff',5,4),(9,'Rahul Bose','M','1098765432','rahul@example.com','Waiter',24000.00,'10:30:00','Service',2,5),(10,'Megha Kapoor','F','1987654321','megha@example.com','Manager',60000.00,'09:00:00','Management',8,5);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
