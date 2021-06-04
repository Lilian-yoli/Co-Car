-- MySQL dump 10.13  Distrib 8.0.23, for macos10.15 (x86_64)
--
-- Host: localhost    Database: cocar
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat_msg`
--

DROP TABLE IF EXISTS `chat_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_msg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int DEFAULT NULL,
  `receiver_id` int DEFAULT NULL,
  `msg` varchar(1000) DEFAULT NULL,
  `send_at` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `unread` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_msg`
--

LOCK TABLES `chat_msg` WRITE;
/*!40000 ALTER TABLE `chat_msg` DISABLE KEYS */;
INSERT INTO `chat_msg` VALUES (10,25,24,'123','1622176494','24WITH25',0),(11,24,25,'456','1622176502','24WITH25',0),(12,24,25,'123','1622176601','24WITH25',0),(13,25,24,'123','1622176851','24WITH25',0),(14,25,24,'123','1622181724','24WITH25',0),(15,24,25,'456','1622181734','24WITH25',0),(45,25,24,'123','1622297434','24WITH25',0);
/*!40000 ALTER TABLE `chat_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offered_routes`
--

DROP TABLE IF EXISTS `offered_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offered_routes` (
  `route_id` int NOT NULL AUTO_INCREMENT,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `available_seats` int DEFAULT NULL,
  `date` int DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `driver_email` varchar(255) DEFAULT NULL,
  `requested_routes_id` varchar(255) DEFAULT NULL,
  `origin_coordinate` point DEFAULT NULL,
  `destination_coordinate` point DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `seats_left` int DEFAULT NULL,
  `routeTS` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`route_id`),
  UNIQUE KEY `offer_routes_id_UNIQUE` (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offered_routes`
--

LOCK TABLES `offered_routes` WRITE;
/*!40000 ALTER TABLE `offered_routes` DISABLE KEYS */;
INSERT INTO `offered_routes` VALUES (62,'台北','花蓮',3,1621468800,'8:00','test@test.com','0',_binary '\0\0\0\0\0\0\0\�ľ�p9@��\�/d^@',_binary '\0\0\0\0\0\0\0�tr��7@_MT%�f^@',300,3,NULL,NULL),(63,'台北','花蓮',2,1621468800,'9:00','test@test.com','0',_binary '\0\0\0\0\0\0\0\�ľ�p9@��\�/d^@',_binary '\0\0\0\0\0\0\0�tr��7@_MT%�f^@',300,2,NULL,NULL),(64,'台北','花蓮',3,1622160000,'8:00','test@test.com','0',_binary '\0\0\0\0\0\0\0\�ľ�p9@��\�/d^@',_binary '\0\0\0\0\0\0\0�tr��7@_MT%�f^@',300,3,NULL,NULL),(65,'台北','花蓮',4,1622160000,'8:00','test@test.com','0',_binary '\0\0\0\0\0\0\0\�ľ�p9@��\�/d^@',_binary '\0\0\0\0\0\0\0�tr��7@_MT%�f^@',300,4,NULL,NULL),(66,'台北','宜蘭車站',3,1622160000,'8:00','test@test.com','0',_binary '\0\0\0\0\0\0\0\�ľ�p9@��\�/d^@',_binary '\0\0\0\0\0\0\0�3�9A�8@\�ma\'�p^@',200,3,NULL,NULL),(67,'台北','宜蘭車站',3,1622160000,'8:00','test@test.com','0',_binary '\0\0\0\0\0\0\0\�ľ�p9@��\�/d^@',_binary '\0\0\0\0\0\0\0�3�9A�8@\�ma\'�p^@',200,-2,NULL,NULL),(68,'台北','宜蘭車站',4,1622160000,'8:00','test@test.com','0',_binary '\0\0\0\0\0\0\0\�ľ�p9@��\�/d^@',_binary '\0\0\0\0\0\0\0�3�9A�8@\�ma\'�p^@',200,1,NULL,NULL),(69,'台北','苗栗',3,1622160000,'08:00:00','test@test.com','0',_binary '\0\0\0\0\0\0\0\�ľ�p9@��\�/d^@',_binary '\0\0\0\0\0\0\0`���f�8@Vdt@�4^@',200,-2,'2021-05-28 08:00:00',NULL),(70,'台北車站','花蓮車站',3,1622131200,'10:00','test11@test.com','0',_binary '\0\0\0\0\0\0\0\�$\�9@�\��\�a^@',_binary '\0\0\0\0\0\0\0�.\�\�I�7@�\�g\�zf^@',300,6,'2021-05-28 10:00:00',24),(71,'台北南港','花蓮太魯閣',2,1622131200,'08:00:00','test11@test.com','0',_binary '\0\0\0\0\0\0\0\0O��9@پ6\�g^@',_binary '\0\0\0\0\0\0\0f�Ρ18@<�Ɂh_^@',350,10,'2021-05-28 08:00:00',NULL),(76,'台北車站','鹿港老街',3,1622131200,'08:00','test13@test.com','0',_binary '\0\0\0\0\0\0\0\�$\�9@�\��\�a^@',_binary '\0\0\0\0\0\0\0\�#\�O8@�*��^@',250,1,'2021-05-28 00:00:03',NULL),(88,'台北車站','玉山塔塔加',3,1622131200,'08:00','test11@test.com','0',_binary '\0\0\0\0\0\0\0\�$\�9@�\��\�a^@',_binary '\0\0\0\0\0\0\0I\�U\�y7@\�\'}�9^@',400,1,'2021-05-28 08:00:00',NULL),(89,'台北車站','玉山塔塔加',3,1622131200,'08:00','test2@test.com','0',_binary '\0\0\0\0\0\0\0\�$\�9@�\��\�a^@',_binary '\0\0\0\0\0\0\0I\�U\�y7@\�\'}�9^@',400,3,'2021-05-28 08:00:00',NULL),(90,'台北車站','玉山塔塔加',3,1622131200,'08:00',NULL,NULL,_binary '\0\0\0\0\0\0\0\�$\�9@�\��\�a^@',_binary '\0\0\0\0\0\0\0I\�U\�y7@\�\'}�9^@',400,25,'2021-05-28 08:00:00',25),(91,'台北車站','玉山塔塔加',4,1622131200,'08:00',NULL,NULL,_binary '\0\0\0\0\0\0\0\�$\�9@�\��\�a^@',_binary '\0\0\0\0\0\0\0I\�U\�y7@\�\'}�9^@',400,4,'2021-05-28 08:00:00',25),(92,'台北車站','玉山塔塔加',3,1622131200,'09:00',NULL,NULL,_binary '\0\0\0\0\0\0\0\�$\�9@�\��\�a^@',_binary '\0\0\0\0\0\0\0I\�U\�y7@\�\'}�9^@',400,3,'2021-05-28 09:00:00',25),(93,'台北車站','玉山塔塔加',3,1622131200,'10:00',NULL,NULL,_binary '\0\0\0\0\0\0\0\�$\�9@�\��\�a^@',_binary '\0\0\0\0\0\0\0I\�U\�y7@\�\'}�9^@',400,5,'2021-05-28 10:00:00',25),(94,'110台灣台北市信義區基隆路一段178號','555台灣南投縣魚池鄉中山路419號',3,1622908800,'08:00',NULL,NULL,_binary '\0\0\0\0\0\0\0�d\�\n9@�\�\��\'d^@',_binary '\0\0\0\0\0\0\0�T�6�\�7@\�]�)\�9^@',400,3,'2021-06-06 08:00:00',25);
/*!40000 ALTER TABLE `offered_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger_search_route`
--

DROP TABLE IF EXISTS `passenger_search_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger_search_route` (
  `route_id` int NOT NULL AUTO_INCREMENT,
  `destination` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `passenger_email` varchar(255) DEFAULT NULL,
  `persons` int DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger_search_route`
--

LOCK TABLES `passenger_search_route` WRITE;
/*!40000 ALTER TABLE `passenger_search_route` DISABLE KEYS */;
INSERT INTO `passenger_search_route` VALUES (1,NULL,NULL,'test@test.com',1),(2,NULL,NULL,'test@test.com',1),(3,NULL,NULL,'test12@gmail.com',1);
/*!40000 ALTER TABLE `passenger_search_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requested_routes`
--

DROP TABLE IF EXISTS `requested_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requested_routes` (
  `route_id` int NOT NULL AUTO_INCREMENT,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `persons` int DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isMatched` int DEFAULT NULL,
  `origin_coordinate` point DEFAULT NULL,
  `destination_coordinate` point DEFAULT NULL,
  `passenger_type` varchar(45) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `distance` double DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requested_routes`
--

LOCK TABLES `requested_routes` WRITE;
/*!40000 ALTER TABLE `requested_routes` DISABLE KEYS */;
INSERT INTO `requested_routes` VALUES (102,'台北車站','花蓮車站',2,'1622131200',NULL,1,_binary '\0\0\0\0\0\0\0\�$\�9@�\��\�a^@',_binary '\0\0\0\0\0\0\0�.\�\�I�7@�\�g\�zf^@','search',25,'1622013488','1622013488',117.49239672058869),(104,'台北車站','花蓮車站',1,'1622131200',NULL,1,_binary '\0\0\0\0\0\0\0\�$\�9@�\��\�a^@',_binary '\0\0\0\0\0\0\0�.\�\�I�7@�\�g\�zf^@','search',25,'1622087359','1622087359',117.49239672058869),(105,'台北車站','花蓮車站',1,'1622131200',NULL,0,_binary '\0\0\0\0\0\0\0\�$\�9@�\��\�a^@',_binary '\0\0\0\0\0\0\0�.\�\�I�7@�\�g\�zf^@','search',25,'1622087396','1622087396',117.49239672058869),(106,'110台灣台北市信義區基隆路一段178號','台灣南投縣日月潭國家風景區',2,'1622131200',NULL,0,_binary '\0\0\0\0\0\0\0�d\�\n9@�\�\��\'d^@',_binary '\0\0\0\0\0\0\0�n��\�7@\�l)\�_:^@','request',24,'1622441585','1622441585',146.6065201805835),(107,'台灣南投縣日月潭國家風景區','556台灣南投縣信義鄉太平巷118號',2,'1622131200',NULL,0,_binary '\0\0\0\0\0\0\0�n��\�7@\�l)\�_:^@',_binary '\0\0\0\0\0\0\0t}�7@\ZiN�7^@','request',24,'1622444462','1622444462',35.65668317952769),(108,'台灣南投縣日月潭國家風景區','556台灣南投縣信義鄉',2,'1622131200',NULL,0,_binary '\0\0\0\0\0\0\0�n��\�7@\�l)\�_:^@',_binary '\0\0\0\0\0\0\0��\�r\0�7@�~D]5?^@','request',24,'1622445022','1622445022',23.26702971880248),(109,'110台灣台北市信義區忠孝東路五段2號','台灣南投縣日月潭國家風景區',2,'1622131200',NULL,1,_binary '\0\0\0\0\0\0\0}8\�\�\n9@�xɤ+d^@',_binary '\0\0\0\0\0\0\0�n��\�7@\�l)\�_:^@','request',24,'1622466184','1622466184',146.47731444579702),(113,'555台灣南投縣魚池鄉中興路142號','556台灣南投縣信義鄉新中橫公路31號',2,'1622908800',NULL,0,_binary '\0\0\0\0\0\0\0u��\�\�7@]���&:^@',_binary '\0\0\0\0\0\0\0eC\�m\�7@\�aN\�6^@','request',24,'1622525505','1622525505',14.476244595087081),(114,'555台灣南投縣魚池鄉中正路63號','556台灣南投縣信義鄉',2,'1622908800',NULL,0,_binary '\0\0\0\0\0\0\0��\� �\�7@�M[;^@',_binary '\0\0\0\0\0\0\0��\�r\0�7@�~D]5?^@','request',24,'1622525603','1622525603',23.270606336276327);
/*!40000 ALTER TABLE `requested_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `offered_routes_id` int NOT NULL,
  `passenger_routes_id` int DEFAULT NULL,
  `finished` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `passenger_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (61,58,NULL,1,'request'),(61,59,NULL,2,'request'),(61,58,0,3,'request'),(61,59,0,4,'request'),(67,62,0,10,'request'),(67,62,0,11,'request'),(67,62,0,12,'request'),(67,62,0,13,'request'),(67,62,0,15,'request'),(67,0,0,30,'search'),(69,0,0,31,'search'),(69,0,0,32,'search'),(69,2,0,33,'search'),(67,3,0,34,'search'),(69,66,0,36,'search'),(71,67,0,37,'search'),(71,68,0,38,'search'),(71,69,0,39,'search'),(71,70,0,40,'search'),(71,71,0,41,'search'),(76,73,0,43,'request'),(71,74,0,44,'search'),(70,78,0,45,'search'),(78,79,0,46,'request'),(80,82,0,47,'request'),(83,83,0,49,'request'),(70,84,0,50,'search'),(70,85,0,51,'search'),(70,89,0,56,'search'),(87,90,0,57,'request'),(71,91,0,58,'search'),(88,92,0,59,'request'),(90,98,0,60,'request'),(90,98,0,61,'request'),(90,98,0,62,'request'),(70,100,0,63,'search'),(70,102,0,64,'search'),(70,103,0,65,'search'),(70,104,0,66,'search'),(70,105,0,67,'search'),(93,109,0,72,'request'),(95,110,0,73,'request'),(95,112,0,74,'request'),(95,NULL,0,75,'request'),(95,NULL,0,76,'request'),(95,110,0,77,'request'),(95,112,0,78,'request'),(95,NULL,0,79,'request'),(95,NULL,0,80,'request'),(95,110,0,81,'request'),(95,112,0,82,'request'),(95,NULL,0,83,'request'),(95,NULL,0,84,'request'),(95,110,0,85,'request'),(95,112,0,86,'request'),(95,NULL,0,87,'request'),(95,NULL,0,88,'request'),(95,110,0,89,'request'),(95,112,0,90,'request'),(95,NULL,0,91,'request'),(95,NULL,0,92,'request'),(95,110,0,93,'request'),(95,112,0,94,'request'),(95,110,0,95,'request'),(95,112,0,96,'request'),(95,NULL,0,97,'request'),(95,110,0,98,'request'),(95,112,0,99,'request'),(95,NULL,0,100,'request'),(96,110,0,101,'request'),(96,114,0,102,'request');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `login_at` varchar(255) DEFAULT NULL,
  `token_expired` varchar(255) DEFAULT NULL,
  `access_token` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (24,'native','林美秀','test@test.com','$2b$10$7NfiwVhfaAVke1HBOGCVIefv3ZPYHi8iIIrMT3Q6556SZRtNR0QhO','1','../uploads/images/member.png','2021-06-01 12:14:41.705','2592000','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwcm92aWRlciI6Im5hdGl2ZSIsIm5hbWUiOiLmnpfnvo7np4AiLCJlbWFpbCI6InRlc3RAdGVzdC5jb20iLCJwaG9uZSI6IjEiLCJwaWN0dXJlIjoiLi4vdXBsb2Fkcy9pbWFnZXMvbWVtYmVyLnBuZyIsImlhdCI6MTYyMjUyMDg4MSwiZXhwIjo0MjE0NTIwODgxfQ.mvjh8eaCFdbvscXskId3huCvymMOCe6CxmK8nZ4M8x4'),(25,'native','郝美麗','test2@test.com','$2b$10$PSB39xd2KetYnXyzxsJ7zu2jnrtmbIg0aAsghSYwepNrXlHIb1C9W','2','../uploads/images/member.png','2021-06-01 10:11:02.592','2592000','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwcm92aWRlciI6Im5hdGl2ZSIsIm5hbWUiOiLpg53nvo7pupciLCJlbWFpbCI6InRlc3QyQHRlc3QuY29tIiwicGhvbmUiOiIyIiwicGljdHVyZSI6Ii4uL3VwbG9hZHMvaW1hZ2VzL21lbWJlci5wbmciLCJpYXQiOjE2MjI1MTM0NjIsImV4cCI6NDIxNDUxMzQ2Mn0.1maX_3z8RR4wxZ_2mtFan9wqO9uw0bGi3oGkcoy17hc'),(26,'native','菜依林','test3@test.com','$2b$10$HQMRmyWukXJ0dskXxtD2guzDNYzh5mrJTMzSq3aysfO5rY.8LCX.W','3','../uploads/images/member.png','2021-06-01 10:21:56.188','2592000','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwcm92aWRlciI6Im5hdGl2ZSIsIm5hbWUiOiLoj5zkvp3mnpciLCJlbWFpbCI6InRlc3QzQHRlc3QuY29tIiwicGhvbmUiOiIzIiwicGljdHVyZSI6Ii4uL3VwbG9hZHMvaW1hZ2VzL21lbWJlci5wbmciLCJpYXQiOjE2MjI1MTQxMTYsImV4cCI6NDIxNDUxNDExNn0.UBVyQdTUm0NS_aA8BpDHsoZD11A4BWG2S-3aJe9TjHM'),(27,'native','填腹甄','test4@test.com','$2b$10$UcQIVJ01LH9TQBSWV3bNPudKSmstJFknm/67p0Pemw62.XNcKwCy6','4','../uploads/images/member.png','2021-06-01 10:32:22.267','2592000','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwcm92aWRlciI6Im5hdGl2ZSIsIm5hbWUiOiLloavohbnnlIQiLCJlbWFpbCI6InRlc3Q0QHRlc3QuY29tIiwicGhvbmUiOiI0IiwicGljdHVyZSI6Ii4uL3VwbG9hZHMvaW1hZ2VzL21lbWJlci5wbmciLCJpYXQiOjE2MjI1MTQ3NDIsImV4cCI6NDIxNDUxNDc0Mn0.zGYwopMLlE_uJasexdHTH_Ib5HIotuvGMmu7i-abIus');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-01 13:44:10