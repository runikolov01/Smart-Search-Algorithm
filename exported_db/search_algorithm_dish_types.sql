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
-- Table structure for table `dish_types`
--

DROP TABLE IF EXISTS `dish_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dish_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish_types`
--

LOCK TABLES `dish_types` WRITE;
/*!40000 ALTER TABLE `dish_types` DISABLE KEYS */;
INSERT INTO `dish_types` VALUES (43,'Anchovy\r'),(70,'Asparagus Dish\r'),(64,'Aubergine Dish\r'),(94,'Avocado Dish\r'),(83,'Baked Potato\r'),(30,'Bass\r'),(4,'Beef\r'),(6,'Beef Tartare\r'),(65,'Beetroot Dish\r'),(26,'Blood Sausage\r'),(32,'Bream\r'),(68,'Cabbage Dish\r'),(100,'Carbonara'),(66,'Cauliflower Dish\r'),(19,'Chicken\r'),(20,'Chicken Wings\r'),(89,'Chips\r'),(75,'Chocolate cake\r'),(31,'Cod\r'),(60,'Crab\r'),(41,'Fatty Fish\r'),(21,'Fried Chicken\r'),(8,'Fried Pork\r'),(71,'Fried Potatoes\r'),(13,'Game & Exotic Meats\r'),(14,'Game Birds\r'),(15,'Game Meat\r'),(78,'Gherkin\r'),(95,'Green Bean Dish\r'),(23,'Grilled Chicken\r'),(12,'Grilled Pork\r'),(37,'Haddock\r'),(35,'Halibut\r'),(9,'Ham\r'),(86,'Hash Browns\r'),(76,'Kimchi\r'),(3,'Kofte\r'),(2,'Lamb\r'),(28,'Lean Fish\r'),(25,'Liver\r'),(58,'Lobster\r'),(99,'Mac & Cheese\r'),(44,'Mackerel\r'),(63,'Maki\r'),(80,'Mashed Potatoes\r'),(1,'Meats\r'),(61,'Molluscs\r'),(39,'Monkfish\r'),(85,'Moussaka\r'),(55,'Octopus\r'),(24,'Offal\r'),(92,'Okra Dish\r'),(54,'Oysters\r'),(73,'Pak Choi Dish\r'),(98,'Pasta Dish\r'),(67,'Pepper Dish\r'),(77,'Pickles\r'),(38,'Plaice\r'),(96,'Plantain Dish\r'),(7,'Pork\r'),(81,'Potato Cake\r'),(82,'Potato Salad\r'),(84,'Potato Skins\r'),(90,'Potato Wedges\r'),(79,'Potatoes\r'),(16,'Poultry & Other Meat\r'),(59,'Prawn\r'),(97,'Rice, Bowls & Stir Fry\r'),(17,'Roast & Crispy Duck\r'),(11,'Roast & Crispy Pork\r'),(5,'Roast Beef\r'),(22,'Roast Chicken\r'),(87,'Roast Potatoes\r'),(42,'Salmon\r'),(45,'Sardines\r'),(53,'Scallops\r'),(57,'Scampi\r'),(27,'Seafood\r'),(51,'Seafood & Chips\r'),(52,'Seafood Cake\r'),(48,'Seafood Carpaccio\r'),(47,'Seafood Ceviche\r'),(49,'Seafood Tartare\r'),(50,'Seafood Tataki\r'),(40,'Skate\r'),(18,'Slow Cooked Duck\r'),(29,'Sole\r'),(69,'Squash Dish\r'),(56,'Squid\r'),(62,'Surf & Turf\r'),(72,'Sushi\r'),(91,'Sweet Potato Chips\r'),(88,'Sweet Potato Dish\r'),(10,'Terrine\r'),(34,'Tilapia\r'),(74,'Tofu\r'),(93,'Tomato Dish\r'),(36,'Trout\r'),(46,'Tuna\r'),(33,'Whitebait\r');
/*!40000 ALTER TABLE `dish_types` ENABLE KEYS */;
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
