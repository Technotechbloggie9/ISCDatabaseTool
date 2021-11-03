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
-- Table structure for table `Aliases`
--

DROP TABLE IF EXISTS `Aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aliases` (
  `alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `mood_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `keyword_id` int(11) DEFAULT NULL,
  `rank` float unsigned DEFAULT 0.3,
  `searchcount` bigint(20) unsigned DEFAULT 1,
  `lastsearch` date DEFAULT NULL,
  PRIMARY KEY (`alias_id`),
  KEY `category_id` (`category_id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `subject_id` (`subject_id`),
  KEY `domain_id` (`domain_id`),
  KEY `genre_id` (`genre_id`),
  KEY `mood_id` (`mood_id`),
  KEY `topic_id` (`topic_id`),
  KEY `keyword_id` (`keyword_id`),
  CONSTRAINT `Alias_ibfk_8` FOREIGN KEY (`mood_id`) REFERENCES `ISC_Moods` (`mood_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `Aliases_ibfk_10` FOREIGN KEY (`keyword_id`) REFERENCES `Keywords` (`keyword_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `Aliases_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `ISC_Category` (`category_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `Aliases_ibfk_4` FOREIGN KEY (`attribute_id`) REFERENCES `ISC_Attributes` (`attribute_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `Aliases_ibfk_5` FOREIGN KEY (`subject_id`) REFERENCES `ISC_Subjects` (`subject_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `Aliases_ibfk_6` FOREIGN KEY (`domain_id`) REFERENCES `ISC_Domains` (`domain_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `Aliases_ibfk_7` FOREIGN KEY (`genre_id`) REFERENCES `ISC_Genre` (`genre_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `Aliases_ibfk_9` FOREIGN KEY (`topic_id`) REFERENCES `ISC_Topics` (`topic_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aliases`
--

LOCK TABLES `Aliases` WRITE;
/*!40000 ALTER TABLE `Aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `Aliases` ENABLE KEYS */;
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
