-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: unifichiamoci
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.21.04.1

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
-- Current Database: `unifichiamoci`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `unifichiamoci`  /*!80016 DEFAULT ENCRYPTION='N' */;

USE `unifichiamoci`;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

-- fixme modifiche da fare qua se serve
CREATE TABLE `article` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `author_id` varchar(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `publication_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `member` (`code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB ;
/*!40101 SET character_set_client = @saved_cs_client */;
-- fixme zona modificabile

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_pictures`
--

-- fixme modifiche da fare qua se serve
DROP TABLE IF EXISTS `article_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_pictures` (
  `article_id` bigint unsigned NOT NULL,
  `picture` blob,
  PRIMARY KEY (`article_id`),
  CONSTRAINT `article_pictures_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;
-- fixme zona modificabile

--
-- Dumping data for table `article_pictures`
--

LOCK TABLES `article_pictures` WRITE;
/*!40000 ALTER TABLE `article_pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors_articles`
--

-- fixme modifiche da fare qua se serve
DROP TABLE IF EXISTS `authors_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors_articles` (
  `author_id` varchar(10) NOT NULL,
  `article_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`author_id`,`article_id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;
-- fixme zona modificabile

--
-- Dumping data for table `authors_articles`
--

LOCK TABLES `authors_articles` WRITE;
/*!40000 ALTER TABLE `authors_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `authors_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

-- fixme modifiche da fare qua se serve
DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `code` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `picture` blob,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;
-- fixme zona modificabile

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_role`
--

-- fixme modifiche da fare qua se serve
DROP TABLE IF EXISTS `member_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_role` (
  `member_id` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`member_id`),
  KEY `role` (`role`),
  CONSTRAINT `member_role_ibfk_1` FOREIGN KEY (`role`) REFERENCES `member` (`code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;
-- fixme zona modificabile

--
-- Dumping data for table `member_role`
--

LOCK TABLES `member_role` WRITE;
/*!40000 ALTER TABLE `member_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_articles`
--

-- fixme modifiche da fare qua se serve
DROP TABLE IF EXISTS `section_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_articles` (
  `section_name` varchar(20) NOT NULL,
  `article_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`section_name`,`article_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `section_articles_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;
-- fixme zona modificabile

--
-- Dumping data for table `section_articles`
--

LOCK TABLES `section_articles` WRITE;
/*!40000 ALTER TABLE `section_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `section_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

-- fixme modifiche da fare qua se serve
DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;
-- fixme zona modificabile

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-12 23:12:22
