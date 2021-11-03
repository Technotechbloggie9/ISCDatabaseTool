-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB-1:10.6.4+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Performance_Recording`
--

DROP TABLE IF EXISTS `Performance_Recording`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Performance_Recording` (
  `performance_recording_id` int(11) NOT NULL AUTO_INCREMENT,
  `performance_id` int(11) DEFAULT NULL,
  `recording_name` varchar(255) DEFAULT NULL,
  `recording_path` varchar(255) DEFAULT NULL,
  `format` varchar(20) DEFAULT NULL,
  `play_count` int(11) NOT NULL DEFAULT 0,
  `runtime` time DEFAULT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `permission_to_release` tinyint(1) NOT NULL,
  `ready_for_release` tinyint(1) NOT NULL,
  `audio_or_video` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`performance_recording_id`),
  KEY `performance_id` (`performance_id`),
  CONSTRAINT `Performance_Recording_ibfk_1` FOREIGN KEY (`performance_id`) REFERENCES `Performances` (`performance_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Performance_Recording`
--

LOCK TABLES `Performance_Recording` WRITE;
/*!40000 ALTER TABLE `Performance_Recording` DISABLE KEYS */;
INSERT INTO `Performance_Recording` VALUES (13,2,'AcousticMeditation2.mp3','https://127.0.1.1/wp-content/uploads/narrativemedia/2_AcousticMeditation2.mp3','audio/mpeg',0,NULL,NULL,0,1,'A'),(14,1,'AcousticMeditation2.mp3','https://127.0.1.1/wp-content/uploads/narrativemedia/1_AcousticMeditation2.mp3','audio/mpeg',0,NULL,NULL,0,1,'A'),(15,4,'AcousticMeditation2.mp3','https://127.0.1.1/wp-content/uploads/narrativemedia/4_AcousticMeditation2.mp3','audio/mpeg',0,NULL,NULL,0,1,'A'),(16,8,'AcousticMeditation2.mp3','https://127.0.1.1/wp-content/uploads/narrativemedia/8_AcousticMeditation2.mp3','audio/mpeg',0,NULL,NULL,0,1,'A');
/*!40000 ALTER TABLE `Performance_Recording` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-03 16:56:06
