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
-- Table structure for table `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item` (
  `item_id` int NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `item_description` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `preparation_time` time DEFAULT NULL,
  `spice_level` char(1) DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  `item_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_menu_item_restaurant` (`restaurant_id`),
  CONSTRAINT `fk_menu_item_restaurant` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item`
--

LOCK TABLES `menu_item` WRITE;
/*!40000 ALTER TABLE `menu_item` DISABLE KEYS */;
INSERT INTO `menu_item` VALUES (1,'Chicken Biryani','Spicy chicken biryani','Main Course',250.00,'url1','00:30:00','M',1,'Non-Veg'),(2,'Gulab Jamun','Sweet dessert','Dessert',80.00,'url2','00:10:00','L',2,'Veg'),(3,'Grilled Chicken','BBQ chicken','Starter',180.00,'url3','00:25:00','M',3,'Non-Veg'),(4,'Veg Pulao','Rice with veggies','Main Course',155.50,'url4','00:20:00','M',4,'Veg'),(5,'Prawn Curry','Spicy prawn curry','Seafood',300.00,'url5','00:35:00','H',5,'Veg'),(6,'Paneer Tikka','Grilled paneer','Starter',200.00,'url6','00:20:00','M',6,'Veg'),(7,'Margherita Pizza','Cheese pizza','Main Course',220.00,'url7','00:30:00','L',7,'Non-Veg'),(8,'Cheese Burger','Loaded burger','Fast Food',180.00,'url8','00:15:00','L',8,'Non-Veg'),(9,'Sushi Roll','Japanese sushi','Main Course',350.00,'url9','00:40:00','M',9,'Non-Veg'),(10,'Tandoori Chicken','Grilled chicken','Starter',270.00,'url10','00:30:00','H',10,'Non-Veg'),(11,'Pizza','Paneer Pizza','Main Course',400.00,'url11','00:30:00','M',10,'Veg'),(12,'Butter Naan','Soft Indian bread','Main Course',50.00,'url12','00:20:00','L',1,'Veg'),(13,'Chicken Kebab','Grilled chicken skewers','Starter',250.00,'url13','00:20:00','H',1,'Non-Veg'),(14,'Chicken Curry','Spicy chicken curry','Main Course',270.00,'url14','00:20:00','H',1,'Non-Veg'),(15,'Butter Chicken','Creamy tomato chicken curry','Main Course',280.00,'url15','00:20:00','M',1,'Non-Veg'),(16,'Fish Fry','Crispy fried fish','Starter',220.00,'url16','00:20:00','H',1,'Non-Veg'),(17,'Sweet Corn Soup','Mild corn soup','Starter',100.00,'url17','00:20:00','L',2,'Veg'),(18,'Brownie','Chocolate dessert','Dessert',90.00,'url18','00:20:00','L',2,'Veg'),(19,'Chicken 65','Spicy fried chicken','Starter',180.00,'url19','00:20:00','H',2,'Non-Veg'),(20,'Chicken Curry','Spicy chicken curry','Main Course',270.00,'url20','00:20:00','H',2,'Non-Veg'),(21,'Tandoori Chicken','Roasted spicy chicken','Main Course',300.00,'url21','00:20:00','H',2,'Non-Veg'),(22,'Cold Coffee','Chilled coffee drink','Beverage',90.00,'url22','00:20:00','L',3,'Veg'),(23,'Fish Fry','Crispy fried fish','Starter',220.00,'url23','00:20:00','H',3,'Non-Veg'),(24,'Mutton Rogan Josh','Slow-cooked mutton curry','Main Course',320.00,'url24','00:20:00','H',3,'Non-Veg'),(25,'Veg Pulao','Flavored rice with veggies','Main Course',165.50,'url25','00:20:00','M',4,'Veg'),(26,'Gajar Halwa','Carrot dessert','Dessert',125.50,'url26','00:20:00','L',4,'Veg'),(27,'Chicken Curry','Spicy chicken curry','Main Course',275.50,'url27','00:20:00','H',4,'Non-Veg'),(28,'Chicken Lollipop','Fried chicken drumsticks','Starter',205.50,'url28','00:20:00','H',4,'Non-Veg'),(29,'Chicken Kebab','Grilled chicken skewers','Starter',255.50,'url29','00:20:00','H',4,'Non-Veg'),(30,'Paneer Butter Masala','Rich paneer curry','Main Course',200.00,'url30','00:20:00','M',5,'Veg'),(31,'Gajar Halwa','Carrot dessert','Dessert',120.00,'url31','00:20:00','L',5,'Veg'),(32,'Tandoori Chicken','Roasted spicy chicken','Main Course',300.00,'url32','00:20:00','H',5,'Non-Veg'),(33,'Cold Coffee','Chilled coffee drink','Beverage',90.00,'url33','00:20:00','L',6,'Veg'),(34,'Paneer Butter Masala','Rich paneer curry','Main Course',200.00,'url34','00:20:00','M',6,'Veg'),(35,'Chicken Kebab','Grilled chicken skewers','Starter',250.00,'url35','00:20:00','H',6,'Non-Veg'),(36,'Butter Naan','Soft Indian bread','Main Course',50.00,'url36','00:20:00','L',7,'Veg'),(37,'Gajar Halwa','Carrot dessert','Dessert',120.00,'url37','00:20:00','L',7,'Veg'),(38,'Chicken Curry','Spicy chicken curry','Main Course',270.00,'url38','00:20:00','H',7,'Non-Veg'),(39,'Chicken 65','Spicy fried chicken','Starter',180.00,'url39','00:20:00','H',7,'Non-Veg'),(40,'Paneer Butter Masala','Rich paneer curry','Main Course',200.00,'url40','00:20:00','M',8,'Veg'),(41,'Sweet Corn Soup','Mild corn soup','Starter',100.00,'url41','00:20:00','L',8,'Veg'),(42,'Chicken 65','Spicy fried chicken','Starter',180.00,'url42','00:20:00','H',8,'Non-Veg'),(43,'Chicken Curry','Spicy chicken curry','Main Course',270.00,'url43','00:20:00','H',8,'Non-Veg'),(44,'Chicken Kebab','Grilled chicken skewers','Starter',250.00,'url44','00:20:00','H',8,'Non-Veg'),(45,'Cold Coffee','Chilled coffee drink','Beverage',90.00,'url45','00:20:00','L',9,'Veg'),(46,'Brownie','Chocolate dessert','Dessert',90.00,'url46','00:20:00','L',9,'Veg'),(47,'Chicken Kebab','Grilled chicken skewers','Starter',250.00,'url47','00:20:00','H',9,'Non-Veg'),(48,'Chicken Lollipop','Fried chicken drumsticks','Starter',200.00,'url48','00:20:00','H',9,'Non-Veg'),(49,'Cold Coffee','Chilled coffee drink','Beverage',90.00,'url49','00:20:00','L',10,'Veg'),(50,'Gajar Halwa','Carrot dessert','Dessert',120.00,'url50','00:20:00','L',10,'Veg'),(51,'Chicken Curry','Spicy chicken curry','Main Course',270.00,'url51','00:20:00','H',10,'Non-Veg'),(52,'Brownie','Chocolate dessert','Dessert',90.00,'url52','00:20:00','L',11,'Veg'),(53,'Veg Pulao','Flavored rice with veggies','Main Course',160.00,'url53','00:20:00','M',11,'Veg'),(54,'Tandoori Chicken','Roasted spicy chicken','Main Course',300.00,'url54','00:20:00','H',11,'Non-Veg'),(55,'Idly','Steamed rice cakes','Main Course',45.50,'url55','00:15:00','L',4,'Veg'),(56,'Dosa','Crispy rice pancake','Main Course',50.00,'url56','00:20:00','M',11,'Veg'),(57,'Apple Juice','Fresh apple juice','Beverage',60.00,'url57','00:10:00','L',2,'Veg');
/*!40000 ALTER TABLE `menu_item` ENABLE KEYS */;
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
