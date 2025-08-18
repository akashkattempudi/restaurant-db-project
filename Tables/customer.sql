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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `signup_date` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `customer_preference` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT 'M',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Rajeev','Sharma','9876543210','Hyderabad, Telangana','rahul.sharma@example.com','2024-06-15','1998-05-12','Spicy','M'),(2,'Priya','Agarwal','9876512345','Pune, Maharashtra','priya.agarwal@example.com','2024-07-10','1995-08-19','Sweet','F'),(3,'Amit','Patel','9876001122','Ahmedabad, Gujarat','amit.patel@example.com','2024-05-20','1992-01-30','Mild','M'),(4,'Sneha','Reddy','9876033445','Bangalore, Karnataka','sneha.reddy@example.com','2024-08-01','1996-07-25','Spicy','F'),(5,'Anjali','Verma','9876098765','Delhi, India','arjun.verma@example.com','2024-03-10','1990-11-10','No Onion','M'),(6,'Arjun','Kumar','9876078901','Chennai, Tamil Nadu','divya.kumar@example.com','2024-04-22','1994-04-04','Less Oil','F'),(7,'Ravi','Joshi','9876004567','Indore, MP','ravi.joshi@example.com','2024-02-18','1991-09-09','High Protein','M'),(8,'Neha','Singh','9876043210','Lucknow, UP','neha.singh@example.com','2024-09-12','1993-12-21','Gluten-Free','F'),(9,'Vikram','Das','9876056789','Kolkata, WB','vikram.das@example.com','2024-06-01','1989-06-06','Spicy','M'),(10,'Anita','Roy','9876023456','Mumbai, Maharashtra','anita.roy@example.com','2024-01-27','1997-02-02','Vegan','F');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
