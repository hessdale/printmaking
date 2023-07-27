-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: printmaking
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.13-MariaDB

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
-- Table structure for table `admin_session`
--

DROP TABLE IF EXISTS `admin_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_session_FK` (`admin_id`),
  CONSTRAINT `admin_session_FK` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_session`
--

LOCK TABLES `admin_session` WRITE;
/*!40000 ALTER TABLE `admin_session` DISABLE KEYS */;
INSERT INTO `admin_session` VALUES (6,1,'ba9c2e8c438349da9479a67f5fd94cd5','2023-07-08 15:47:51'),(7,1,'1180b021c5ec4784aef5f54c7e7de1ac','2023-07-09 20:20:00'),(8,1,'f7806e5ddf6449578a6d819f972b48a6','2023-07-09 21:38:23'),(9,1,'17ed987f4bad4df1a657c9aeb4296959','2023-07-10 15:05:14'),(10,1,'9c4556d2865449daaaa2cf34d938a932','2023-07-10 15:10:54'),(11,1,'462d6f192cc4492a8c3593653c58e423','2023-07-10 15:11:30'),(12,1,'a9b41c70506a47dba477daea4deb2690','2023-07-10 15:13:46'),(13,1,'085a47fae5e247ae9c427d515cc4011e','2023-07-12 18:25:20'),(14,1,'3589639efd5a4cf7b0eb8294d9196b44','2023-07-16 20:54:32');
/*!40000 ALTER TABLE `admin_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `salt` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Admins_un` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Larisa','lastname','owner','*B49A6559C0C59103E423D34010106380C0113F2C','dd6b25cd1c9e448ca54a970738b0db7e');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `info` text NOT NULL,
  `date_uploaded` date NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `publication` varchar(150) DEFAULT NULL,
  `block_id` varchar(100) NOT NULL,
  `cliff_notes` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blocks_un` (`block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (29,NULL,'1957-01-01','Etching of a floral embroidery pattern. Text along the edge.','2023-07-16','Embroidery Pattern',NULL,'2021.1.45','Etching of floral embroidery pattern. Text along the edge.'),(30,NULL,'1957-01-01','Etching of embroidery pattern. Text along the edge.','2023-07-16','Embroidery Pattern',NULL,'2021.1.82','Etching of embroidery pattern. Text along the edge.'),(31,'Петро Дорошенко',NULL,'Etching of a hand drawn portrait of a Ukrainian ruler.','2023-07-16','Petro Doroshenko',NULL,'2021.1.170','Etching of a hand drawn portrait of a Ukrainian ruler.'),(32,'Князь Володимир Мономах',NULL,'Etching of a hand drawn portrait of a man.','2023-07-16','Prince Volodymyr Monomakh',NULL,'2021.1.183','Etching of a hand drawn portrait of a man.'),(33,NULL,NULL,'Etching of a hand drawn portrait of a man in armour holding a shield.','2023-07-16','Hand drawn portrait',NULL,'2021.1.220','Etching of a hand drawn portrait of a man in armour holding a shield.'),(34,NULL,NULL,'Etching of a hand drawn landscape with a statue of an angel, church, and starry night. Text near the bottom. Ой на Україні зорі засвітили','2023-07-16','Book illustration',NULL,'2021.1.252','Etching of a hand drawn landscape with a statue of an angel, church, and starry night. Text near the bottom. Ой на Україні зорі засвітили'),(35,'Анна Данилюк',NULL,'Photo etching of a portrait of a woman','2023-07-16','Anna Danyluk',NULL,'2021.1.540','Photo etching of a portrait of a woman'),(36,NULL,NULL,'Etching of an image of a little bird.','2023-07-16','Little bird',NULL,'2021.1.640','Etching of an image of a little bird.'),(37,'Ольга Барило',NULL,'Photo etching of a portrait of a woman','2023-07-16','Olga Barylo',NULL,'2021.1.934','Photo etching of a portrait of a woman'),(38,'Пан і Пані Возняк',NULL,'Photo etching of a portrait of a couple','2023-07-16','Mr. & Mrs. Wozniak',NULL,'2021.1.1010','Photo etching of a portrait of a couple'),(39,'Пані Е. Тіленпос.В.А.',NULL,'Photo etching of a portrait of a woman','2023-07-16','Mrs. E. Telenpos, B.A.',NULL,'2021.1.1204','Photo etching of a portrait of a woman'),(40,NULL,'1937-01-01','Photo etching of the photographs of the 1937-1938 graduating class from the Mykhailo Hrushevsky Ukrainian Institute in Edmonton.','2023-07-16','Graduation Photos',NULL,'2021.1.1448','Photo etching of the photographs of the 1937-1938 graduating class from the Mykhailo Hrushevsky Ukrainian Institute in Edmonton.'),(41,NULL,NULL,'Photo etching of a photograph of the editorial committee for UCC.','2023-07-16','Editorial Committee',NULL,'2021.1.1806','Photo etching of a photograph of the editorial committee for UCC.'),(42,NULL,NULL,'Photo etching of a photograph of a group of women. Text on the back is in Ukrainian.','2023-07-16','Group photo',NULL,'2021.1.2590','Photo etching of a photograph of a group of women. Text on the back is in Ukrainian.'),(43,NULL,'1975-01-01','Photo etching of a photograph of Ukrainian \"TEF\" Day, 1975. Block lists names on the back: V. Boychuk, I. Dycok, C. Holynska. Block also references Toronto and a city council, so V. Boychuk may refer to William Boytchuk, a longtime Toronto city councillor.','2023-07-16','Ukrainian \"TEF\" Day - Toronto',NULL,'2021.1.2091','Ukrainian \'TEF\' Day - Toronto'),(44,'Eugenia Zagurak and daughters (Donna and Luba)','1969-04-01','Photo etching of a photograph of Eugenia Zagurak and daughters (Donna and Luba). The three are writing Easter Eggs. Reprint from the \"Montreal Star\".','2023-07-16','Writing Easter Eggs',NULL,'2021.1.3370','Photo etching of a photograph of Eugenia Zagurak and daughters (Donna and Luba). The three are writing Easter Eggs.'),(45,NULL,NULL,'Photo etching of a photograph of a Ukrainian church with five domes. Church is in a field next to a farm house/hall.','2023-07-16','Ukrainian church',NULL,'2021.1.3555','Photo etching of a photograph of a Ukrainian church with five domes. Church is in a field next to a farm house/hall.'),(46,NULL,NULL,'Photo etching of a photograph of a Portrait of a Man','2023-07-16','Portrait of a Man',NULL,'2021.1.3722','Photo etching of a photograph of a Portrait of a Man'),(47,NULL,NULL,'Photo etching of a photograph of a Portrait of a Man','2023-07-16','Portrait of a Man',NULL,'2021.1.3735','Photo etching of a photograph of a Portrait of a Man'),(48,NULL,NULL,'Group of people Standing. Six women and one man.','2023-07-16','Group of people Standing',NULL,'2021.1.5044','Group of people Standing. Six women and one man.'),(49,NULL,NULL,'Photo etching of Graphics and title for the cover of the book titled \"Каменярі\". Image is of a tryzub within a maple leaf within a circle and a verticle stripe. Identicle to block 2021-1.5375','2023-07-16','Cover for book titled\"Каменярі\"',NULL,'2021.1.5374','Cover for book titled\"Каменярі\"');
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `block_id` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `image_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_un` (`file`),
  KEY `NewTable_FK` (`block_id`),
  CONSTRAINT `NewTable_FK` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (60,'2021.1.45','40aa239ea7f64b81bc718a173911e898.jpg','Etching of a floral embroidery pattern. Text along the edge.'),(61,'2021.1.82','8581d09706ef4fe882eb570bad99ab94.jpg','Etching of embroidery pattern. Text along the edge.'),(62,'2021.1.170','cf64eb549f744d71ae710ed070ed4f39.jpg','Etching of a hand drawn portrait of a Ukrainian ruler.'),(63,'2021.1.183','fbcf3d7c108e4051bf8969726bfad46d.jpg','Etching of a hand drawn portrait of a man.'),(64,'2021.1.220','1c6b83af1cb047399f0c743559ca4fd1.jpg','Etching of a hand drawn portrait of a man in armour holding a shield.'),(65,'2021.1.252','c573421920ac4bf9a29202214d82e665.jpg','Etching of a hand drawn landscape with a statue of an angel, church, and starry night.'),(66,'2021.1.540','3511b89eba194cb88d8223d5341c6b21.jpg','Photo etching of a portrait of a woman'),(67,'2021.1.640','e1bd16dbecc3462f8ac2e6fd048437d7.jpg','Etching of an image of a little bird.'),(68,'2021.1.934','d1f2eddb429a4786b84c9e6dc81154f5.jpg','Photo etching of a portrait of a woman'),(69,'2021.1.1010','57d0adc8695943808c89b9294368d944.jpg','Photo etching of a portrait of a couple'),(70,'2021.1.1204','7467efb150b14eb69a59c47465faae92.jpg','Photo etching of a portrait of a woman'),(71,'2021.1.1448','0be22980de3746bfad33cbda7a35e749.jpg','Photo etching of the photographs of the 1937-1938 graduating class'),(72,'2021.1.1806','dea9df86eac74120a8fc124a860e1d6b.jpg','Photo etching of a photograph of the editorial committee for UCC.'),(73,'2021.1.2091','7167dbed2fef44d3873007b62589da01.jpg','Ukrainian \"TEF\" Day - Toronto'),(74,'2021.1.2590','52c73f2436d6431aa736ff14fe493783.jpg','Photo etching of a photograph of a group of women. Text on the back is in Ukrainian.'),(75,'2021.1.3370','0b91d489b233458395cff5faf4acee3f.jpg','Photo etching of a photograph. The three are writing Easter Eggs.'),(76,'2021.1.3555','c355603c19474f4299515de30ac5d66a.jpg','Photo etching of a photograph of a Ukrainian church. Church is in a field next to a farm house/hall.'),(77,'2021.1.3722','2a0ff8cc31a245959476714ba2ca9260.jpg','Photo etching of a photograph of a Portrait of a Man'),(78,'2021.1.3735','5c62ae33c94d46fbb879803970bea1dc.jpg','Photo etching of a photograph of a Portrait of a Man'),(79,'2021.1.5044','8e9776a96cc4499c8569c550a0a917b1.jpg','Photo etching of a six women and one man.'),(80,'2021.1.5374','a473c308c6b3418a82da098d93eed537.jpg','Image is of a tryzub within a maple leaf within a circle and a vertical stripe.');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'printmaking'
--
/*!50003 DROP PROCEDURE IF EXISTS `delete_admin_session` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_admin_session`(token_input varchar(100))
    MODIFIES SQL DATA
begin
	SELECT convert(first_name using"utf8")as first_name FROM Printmaking.admins where id=(select admin_id from admin_session where token = token_input);
	DELETE FROM Printmaking.admin_session WHERE token=token_input;
	commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_block` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_block`(token_input varchar(100),id_input int(10))
    MODIFIES SQL DATA
begin
	
	SELECT convert(name using "utf8")as name,convert(date_uploaded using "utf8")as date_uploaded FROM Printmaking.blocks WHERE id=id_input;
	DELETE FROM Printmaking.blocks WHERE id=id_iput;
	commit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_ar_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_ar_data`(block_id_input varchar(100))
begin
	SELECT convert(name using "utf8")as name,convert(title using "utf8")as title,convert(block_id using "utf8")as block_id,convert(cliff_notes using "utf8")as cliff_notes 
	FROM printmaking.blocks where block_id=block_id_input;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_blocks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_blocks`()
begin
	SELECT b.id,convert(b.name using "utf8")as name,convert(b.`date` using "utf8")as `date`,convert(b.info using "utf8")as info,convert(b.date_uploaded using "utf8")as date_uploaded,
	convert(b.title using "utf8")as title,convert(b.publication using "utf8")as publication,convert(b.block_id using "utf8")as block_id,convert(b.cliff_notes using "utf8")as cliff_notes,
	convert(i.file using "utf8")as file,convert(i.image_description using "utf8")as image_description
	FROM printmaking.blocks b inner join images i on i.block_id=b.block_id order by b.date_uploaded desc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_id_blocks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_id_blocks`(block_id_input varchar(100))
begin
	select b.id,convert(b.name using "utf8")as name,convert(b.`date` using "utf8")as `date`,convert(b.info using "utf8")as info,
	convert(b.date_uploaded using "utf8")as date_uploaded,convert(b.title using "utf8")as title,
	convert(b.publication using "utf8")as publication,convert(b.block_id using "utf8")as block_id,convert(b.cliff_notes using "utf8")as cliff_notes
	FROM printmaking.blocks b where block_id = block_id_input;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_id_images` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_id_images`(block_id_input varchar(100))
begin
	SELECT id, convert(block_id using "utf8")as block_id,convert(file using "utf8")as file,convert(image_description using "utf8")as image_description 
	FROM printmaking.images where block_id = block_id_input;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_images` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_images`()
begin
	SELECT id, convert(block_id using "utf8")as block_id,convert(file using "utf8")as file,convert(image_description using "utf8")as image_description FROM printmaking.images;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_admin_session` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `post_admin_session`(token_input varchar(100),username_input varchar(100),password_input varchar(100))
    MODIFIES SQL DATA
begin
	INSERT INTO Printmaking.admin_session (admin_id, token, created_at) 
	VALUES((SELECT id FROM Printmaking.admins where username = username_input and 
	password =password(concat(password_input,(select a.salt from admins a where username=username_input)))),
	token_input,now());
	select id,convert(token using"utf8")as token from admin_session as2 where id = last_insert_id(); 
	commit;	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_block` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `post_block`(token_input varchar(100),name_input varchar(100),date_input date,info_input text,title_input varchar(200),publication_input varchar(150),block_id_input varchar(100),cliff_notes_input varchar(200))
    MODIFIES SQL DATA
begin
	if (select id from admin_session where token=token_input) is not null then
	INSERT INTO printmaking.blocks (name,`date`,info,date_uploaded,title,publication,block_id,cliff_notes) 
	VALUES(name_input,date_input,info_input,now(),title_input,publication_input,block_id_input,cliff_notes_input);
	SELECT convert(block_id using"utf8")as block_id,convert(name using "utf8")as name,convert(date_uploaded using "utf8")as date_uploaded
	FROM Printmaking.blocks where id=last_insert_id();
	commit;
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_image` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `post_image`(token_input varchar(100),block_id_input varchar(100),uploaded_image_input varchar(100),image_description_input varchar(100))
    MODIFIES SQL DATA
begin
	if (select id from admin_session where token=token_input) is not null then
	INSERT INTO printmaking.images (block_id,file,image_description) VALUES(block_id_input,uploaded_image_input,image_description_input);
	select convert(i.block_id using "utf8") as block_id from images i where id = last_insert_id(); 
	commit;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_blocks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_blocks`(search_input varchar(200))
begin
	SELECT b.id,convert(b.name using "utf8")as name,convert(b.`date` using "utf8")as `date`,convert(b.info using "utf8")as info,convert(b.date_uploaded using "utf8")as date_uploaded,
	convert(b.title using "utf8")as title,convert(b.publication using "utf8")as publication,convert(b.block_id using "utf8")as block_id,convert(b.cliff_notes using "utf8")as cliff_notes,
	convert(i.file using "utf8")as file,convert(i.image_description using "utf8")as image_description
	FROM printmaking.blocks b inner join images i on i.block_id=b.block_id
	where b.info like concat('%',search_input,'%')
	order by b.date_uploaded desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-26 21:00:18
