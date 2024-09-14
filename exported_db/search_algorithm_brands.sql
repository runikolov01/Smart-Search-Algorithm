-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: search_algorithm
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (40,'Ask Italian\r'),(34,'Bella Italia\r'),(44,'Black Sheep Coffee\r'),(9,'Burger King\r'),(8,'Caff? Nero\r'),(26,'Chaiiwala\r'),(17,'Chef & Brewer Collection\r'),(35,'Chopstix\r'),(22,'Coffee#1\r'),(1,'Costa Coffee\r'),(27,'Cote\r'),(21,'Creams\r'),(41,'Farmhouse Inns\r'),(25,'Favorite\r'),(16,'Five Guys\r'),(38,'Franco Manca\r'),(31,'Fridays\r'),(18,'Gail\'s\r'),(46,'Giggling Squid\r'),(6,'Greene King\r'),(2,'Greggs\r'),(47,'Heavenly Desserts\r'),(13,'Hungry Horse\r'),(29,'Itsu\r'),(36,'JOE & THE JUICE\r'),(30,'Kaspa\'s Desserts\r'),(5,'KFC\r'),(33,'Kokoro\r'),(14,'Lounges\r'),(4,'McDonald\'s\r'),(24,'Morley\'s\r'),(43,'Muffin Break\r'),(28,'Panku\r'),(10,'Pizza Hut\r'),(12,'PizzaExpress\r'),(32,'Poundbakery\r'),(11,'Pret A Manger\r'),(23,'Prezzo\r'),(48,'Sam\'s Chicken\r'),(3,'Subway\r'),(15,'Sushimania\r'),(20,'Taco Bell\r'),(49,'Tim Hortons\r'),(39,'Tops Pizza\r'),(37,'Tortilla\r'),(45,'Turtle Bay\r'),(7,'Wetherspoon\r'),(50,'Wildwood'),(42,'Wimpy\r'),(19,'Zizzi\r');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-14 11:41:20
