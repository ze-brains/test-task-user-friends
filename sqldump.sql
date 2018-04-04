-- MySQL dump 10.13  Distrib 5.5.59, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: zebrains_task
-- ------------------------------------------------------
-- Server version	5.5.59-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Stanley Beahan','dschmeler@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','6IWyoMKB0B','2018-04-04 08:19:05','2018-04-04 08:19:05'),(2,'Alice Spinka','alisa22@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','T1jR6bUDBZ','2018-04-04 08:19:05','2018-04-04 08:19:05'),(3,'Emie Hermann','emayert@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','f5XORtWoZw','2018-04-04 08:19:05','2018-04-04 08:19:05'),(4,'Myrtle Thompson','tbecker@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','UBtHaT2SPC','2018-04-04 08:19:05','2018-04-04 08:19:05'),(5,'Constance Turcotte','darmstrong@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','NGIBjPLP4V','2018-04-04 08:19:05','2018-04-04 08:19:05'),(6,'Prof. Jayce Gorczany','reinger.myah@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','t4ieFudm7K','2018-04-04 08:19:05','2018-04-04 08:19:05'),(7,'Dr. Hassie Dickinson MD','louvenia21@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','WGjRUy6Njg','2018-04-04 08:19:05','2018-04-04 08:19:05'),(8,'Dr. Hassan O\'Conner','twila80@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','TJBTUpnnTf','2018-04-04 08:19:05','2018-04-04 08:19:05'),(9,'Alvera Kilback','powlowski.henriette@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','REEZ4CgOmb','2018-04-04 08:19:05','2018-04-04 08:19:05'),(10,'Leann Gutkowski','nichole.funk@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','5vrKzDkUhQ','2018-04-04 08:19:05','2018-04-04 08:19:05'),(11,'Frances Blanda','lilla22@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','NR44PlGdkE','2018-04-04 08:19:05','2018-04-04 08:19:05'),(12,'Prof. Cole Feest V','zledner@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','ejvd0WKYKt','2018-04-04 08:19:05','2018-04-04 08:19:05'),(13,'Niko Rippin','rita81@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','vvQNPNqr4W','2018-04-04 08:19:05','2018-04-04 08:19:05'),(14,'Mrs. Katelin Brekke Sr.','wehner.olga@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','7SmKbTppRe','2018-04-04 08:19:06','2018-04-04 08:19:06'),(15,'Lyda Mayert','shanahan.reuben@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','CZUb61TBNX','2018-04-04 08:19:06','2018-04-04 08:19:06'),(16,'Prof. Dwight Lowe Jr.','julia.renner@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','GJPpiHjORY','2018-04-04 08:19:06','2018-04-04 08:19:06'),(17,'Isabelle Hand','jennyfer.volkman@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','6DQX9dG1Y5','2018-04-04 08:19:06','2018-04-04 08:19:06'),(18,'Madyson Kunde','lwhite@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','I86uxV5RIk','2018-04-04 08:19:06','2018-04-04 08:19:06'),(19,'Mrs. Noemie Toy','wallace52@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','t6pPMhNGWz','2018-04-04 08:19:06','2018-04-04 08:19:06'),(20,'Mrs. Lexi Simonis I','gaylord.melyssa@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','o5xSbKVZkQ','2018-04-04 08:19:06','2018-04-04 08:19:06'),(21,'Prof. Murray Greenfelder DVM','bella.mante@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Ybd31iGIA4','2018-04-04 08:19:06','2018-04-04 08:19:06'),(22,'Prof. Elisabeth Gusikowski','buckridge.douglas@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','N3FLI6G2oC','2018-04-04 08:19:06','2018-04-04 08:19:06'),(23,'Deangelo Corkery','marie27@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','bEECB9wKBZ','2018-04-04 08:19:06','2018-04-04 08:19:06'),(24,'Ottis Wiegand','stiedemann.reina@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','MP1c8cuicO','2018-04-04 08:19:06','2018-04-04 08:19:06'),(25,'Stanford Doyle','jedediah.schaden@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','gOQbapTn3c','2018-04-04 08:19:06','2018-04-04 08:19:06'),(26,'Anderson Goodwin','dare.harrison@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','5kNjXDdX7b','2018-04-04 08:19:06','2018-04-04 08:19:06'),(27,'Miss Jailyn Pouros Sr.','stehr.katherine@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','lTQwrh82Kh','2018-04-04 08:19:06','2018-04-04 08:19:06'),(28,'Annamarie Mante','vstehr@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','f46ErONefq','2018-04-04 08:19:06','2018-04-04 08:19:06'),(29,'Lexus Kunde PhD','emmerich.chris@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','98FbohsVkL','2018-04-04 08:19:06','2018-04-04 08:19:06'),(30,'Miss May Macejkovic','amaya.homenick@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','3wR7Zfatjf','2018-04-04 08:19:06','2018-04-04 08:19:06'),(31,'Marcus Towne','jmayer@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','6OJcSas61d','2018-04-04 08:19:06','2018-04-04 08:19:06'),(32,'Kade Hegmann','mante.mckenna@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','p1XVJRoTdF','2018-04-04 08:19:06','2018-04-04 08:19:06'),(33,'Dr. Vince Huels','norris.sipes@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','JrpjedOmT7','2018-04-04 08:19:06','2018-04-04 08:19:06'),(34,'Mr. Jon Homenick','mfritsch@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','WCYavYmpmz','2018-04-04 08:19:06','2018-04-04 08:19:06'),(35,'Mrs. Jacinthe Bogan','bernardo.brown@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','CSv9wJIOJB','2018-04-04 08:19:06','2018-04-04 08:19:06'),(36,'Prof. Alfonzo Hoeger','megane.steuber@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','jEaT6py2FP','2018-04-04 08:19:06','2018-04-04 08:19:06'),(37,'Annabell Cartwright','goldner.cora@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','TjgYMIgGYa','2018-04-04 08:19:06','2018-04-04 08:19:06'),(38,'Christy Lockman','zmccullough@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','0fzeu8Toja','2018-04-04 08:19:06','2018-04-04 08:19:06'),(39,'Marilyne Schneider III','colleen23@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','5rwlVX3vsj','2018-04-04 08:19:06','2018-04-04 08:19:06'),(40,'Mr. Gerald Johns IV','annette.feil@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','T9DFJy6xJl','2018-04-04 08:19:06','2018-04-04 08:19:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_friends`
--

DROP TABLE IF EXISTS `users_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_friends` (
  `user_id` int(10) unsigned DEFAULT NULL,
  `friend_id` int(10) unsigned DEFAULT NULL,
  KEY `users_friends_user_id_foreign` (`user_id`),
  KEY `users_friends_friend_id_foreign` (`friend_id`),
  CONSTRAINT `users_friends_friend_id_foreign` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_friends_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_friends`
--

LOCK TABLES `users_friends` WRITE;
/*!40000 ALTER TABLE `users_friends` DISABLE KEYS */;
INSERT INTO `users_friends` VALUES (11,1),(23,1),(34,1),(25,1),(7,1),(39,1),(33,2),(37,2),(13,2),(4,2),(29,2),(10,2),(40,2),(17,2),(35,3),(2,3),(16,3),(34,3),(37,3),(10,4),(5,4),(28,4),(32,4),(34,4),(22,4),(40,4),(4,4),(1,5),(28,5),(29,5),(18,5),(26,5),(35,5),(5,5),(6,5),(7,6),(11,6),(21,6),(39,6),(5,6),(12,6),(24,6),(36,7),(37,7),(25,7),(3,7),(14,8),(36,8),(34,8),(22,8),(10,8),(16,8),(15,9),(19,9),(2,9),(13,9),(3,10),(12,10),(8,10),(39,10),(31,10),(32,11),(30,11),(28,11),(38,11),(7,11),(2,11),(14,11),(3,11),(29,12),(22,12),(26,12),(19,12),(38,13),(12,13),(39,13),(5,13),(31,13),(35,13),(25,13),(7,14),(36,14),(37,14),(16,14),(33,15),(36,15),(38,15),(8,16),(33,16),(35,16),(24,16),(19,16),(37,16),(13,17),(35,17),(20,17),(5,17),(31,17),(18,17),(37,18),(32,18),(39,18),(4,18),(15,18),(29,18),(12,19),(20,19),(13,19),(26,19),(33,19),(40,19),(18,19),(31,19),(19,20),(40,20),(2,20),(29,20),(20,20),(8,20),(33,20),(23,20),(21,21),(25,21),(23,21),(16,22),(1,22),(37,22),(35,23),(24,23),(5,23),(33,23),(40,23),(8,23),(7,24),(10,24),(32,24),(36,24),(27,24),(31,24),(7,25),(34,25),(1,25),(40,26),(5,26),(23,26),(1,26),(21,26),(17,27),(31,27),(7,27),(5,27),(39,27),(20,27),(23,27),(30,27),(33,28),(8,28),(12,28),(28,28),(31,28),(20,28),(9,29),(36,29),(14,29),(1,29),(18,30),(10,30),(15,30),(19,30),(14,30),(24,30),(11,31),(2,31),(27,31),(1,31),(38,31),(31,31),(11,32),(27,32),(2,32),(1,32),(18,32),(36,32),(33,32),(26,33),(3,33),(28,33),(14,34),(20,34),(30,34),(34,34),(38,34),(33,34),(17,35),(28,35),(26,35),(2,35),(36,35),(26,36),(23,36),(6,36),(37,36),(9,36),(25,36),(33,36),(39,37),(33,37),(21,37),(20,37),(38,37),(10,37),(18,38),(5,38),(10,38),(12,38),(31,39),(40,39),(1,39),(22,39),(34,39),(16,39),(29,39),(19,40),(40,40),(14,40),(22,40),(27,40),(29,40),(17,40),(7,40);
/*!40000 ALTER TABLE `users_friends` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-04  8:21:52
