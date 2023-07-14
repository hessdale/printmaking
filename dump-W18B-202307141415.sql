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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_session`
--

LOCK TABLES `admin_session` WRITE;
/*!40000 ALTER TABLE `admin_session` DISABLE KEYS */;
INSERT INTO `admin_session` VALUES (6,1,'ba9c2e8c438349da9479a67f5fd94cd5','2023-07-08 15:47:51'),(7,1,'1180b021c5ec4784aef5f54c7e7de1ac','2023-07-09 20:20:00'),(8,1,'f7806e5ddf6449578a6d819f972b48a6','2023-07-09 21:38:23'),(9,1,'17ed987f4bad4df1a657c9aeb4296959','2023-07-10 15:05:14'),(10,1,'9c4556d2865449daaaa2cf34d938a932','2023-07-10 15:10:54'),(11,1,'462d6f192cc4492a8c3593653c58e423','2023-07-10 15:11:30'),(12,1,'a9b41c70506a47dba477daea4deb2690','2023-07-10 15:13:46'),(13,1,'085a47fae5e247ae9c427d515cc4011e','2023-07-12 18:25:20');
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
  `date` date NOT NULL,
  `info` text NOT NULL,
  `date_uploaded` date NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `publication` varchar(150) DEFAULT NULL,
  `block_id` varchar(100) NOT NULL,
  `cliff_notes` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blocks_un` (`block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'test','2022-02-02','testing info','2023-07-08','testing title','testing publication','test','test notes'),(4,'tester','2022-02-02','testing info','2023-07-10','testing title','testing publication','tester','test notes'),(5,'test','2022-02-02','test','2023-07-10','test','test','22','test'),(6,'test1','2022-02-02','test','2023-07-11','test','test','1','test'),(7,'test1','2022-02-02','test','2023-07-11','test','test','2','test'),(8,'test1','2022-02-02','test','2023-07-11','test','test','3','test'),(9,'test1','2022-02-02','test','2023-07-11','test','test','4','test'),(10,'test1','2022-02-02','test','2023-07-11','test','test','5','test'),(11,'test1','2022-02-02','test','2023-07-11','test','test','6','test'),(12,'test1','2022-02-02','test','2023-07-11','test','test','7','test'),(13,'test1','2022-02-02','test','2023-07-11','test','test','8','test'),(14,'test1','2022-02-02','test','2023-07-11','test','test','9','test'),(15,'test1','2022-02-02','test','2023-07-11','test','test','10','test'),(16,'test1','2022-02-02','test','2023-07-11','test','test','11','test'),(17,'test1','2022-02-02','test','2023-07-11','test','test','12','test'),(18,'test1','2022-02-02','test','2023-07-11','test','test','13','test'),(19,'test1','2022-02-02','test','2023-07-11','test','test','14','test'),(20,'test1','2022-02-02','test','2023-07-11','test','test','15','test'),(21,'test1','2022-02-02','test','2023-07-11','test','test','16','test'),(22,'test1','2022-02-02','test','2023-07-11','test','test','17','test'),(23,'test1','2022-02-02','test','2023-07-11','test','test','18','test'),(24,'test1','2022-02-02','test','2023-07-11','test','test','19','test'),(25,'test1','2022-02-02','test','2023-07-11','test','test','20','test'),(26,'test1','2022-02-02','test','2023-07-11','test','test','21','test');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (35,'test','ee7c3945c51d4c24985c34f038efd753.jpg','woman holding printing block'),(36,'tester','e8a24593f9a64332a6bfcaaa8c6e06c9.jpg','woman holding printing block'),(37,'22','d0aaad35ef654356b1154268738dbcdf.jpg','woman holding printing block'),(38,'1','49f6d0989945410892de0206360a1b4a.jpg','woman holding printing block'),(39,'2','664bd518264746e89b6cb81bb49c4d80.jpg','woman holding printing block'),(40,'3','a0cf909e46184f6bb8b8c915d281da94.jpg','woman holding printing block'),(41,'4','84c1e11d6c144e3694b79c41dc0caf03.jpg','woman holding printing block'),(42,'5','be950894b38c4dcd9f45677a0826a1f8.jpg','woman holding printing block'),(43,'6','603fcb552d7b4ea6be3a76b30140b5f9.jpg','woman holding printing block'),(44,'7','62b505d9789547b5a95a49345ffe41b6.jpg','woman holding printing block'),(45,'8','d63c83deec154377959b2b93ad8ad04a.jpg','woman holding printing block'),(46,'9','3ff16ecea54e43feac05f57bb944a12c.jpg','woman holding printing block'),(47,'10','d5475c9e06314b71bcc6851cbc392cec.jpg','woman holding printing block'),(48,'11','e6381a1a98d44ef392ec368618f3e23c.jpg','woman holding printing block'),(49,'12','6b34b3e837844f949497693446031434.jpg','woman holding printing block'),(50,'13','abc1dab11459458daa784ba8a9e256f8.jpg','woman holding printing block'),(51,'14','c84211ad42a74429b1531865d1104512.jpg','woman holding printing block'),(52,'15','eb1bdf4a8aff4a259c4a6bb10b68cebc.jpg','woman holding printing block'),(53,'16','69c29dd322284cdca5df33fe26403f34.jpg','woman holding printing block'),(54,'17','d7856a1ccb634e0d85e1bd008ed7b15b.jpg','woman holding printing block'),(55,'18','8b9034332ad24e75a367434f19d9476b.jpg','woman holding printing block'),(56,'18','44f20381edc54b6f98e2400128b1fa70.jpg','woman holding printing block'),(57,'19','67e8782234a64294900c5708bd8809dc.jpg','woman holding printing block'),(58,'20','c51a2a9907ae45fe8747e4550fd461b3.jpg','woman holding printing block'),(59,'21','370479e80fb644b2a74f89e93240c67e.jpg','woman holding printing block');
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

-- Dump completed on 2023-07-14 14:15:12
