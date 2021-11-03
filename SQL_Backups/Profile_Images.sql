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
-- Table structure for table `Profile_Images`
--

DROP TABLE IF EXISTS `Profile_Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Profile_Images` (
  `profile_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `image_type` varchar(25) NOT NULL,
  `profile_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`profile_image_id`),
  KEY `pfk_id_1` (`profile_id`),
  CONSTRAINT `pfk_id_1` FOREIGN KEY (`profile_id`) REFERENCES `wp_users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profile_Images`
--

LOCK TABLES `Profile_Images` WRITE;
/*!40000 ALTER TABLE `Profile_Images` DISABLE KEYS */;
INSERT INTO `Profile_Images` VALUES (8,'ne.jpg','https://localhost/wp-content/uploads/imgprofile/10_ne.jpg','image/jpeg',10),(9,'Screenshot from 2021-06-16 07-52-58.png','https://localhost/wp-content/uploads/imgprofile/11_Screenshot from 2021-06-16 07-52-58.png','image/png',11),(10,'Screenshot from 2021-06-16 07-53-28.png','https://localhost/wp-content/uploads/imgprofile/12_Screenshot from 2021-06-16 07-53-28.png','image/png',12),(11,'Screenshot from 2021-06-16 07-52-30.png','https://localhost/wp-content/uploads/imgprofile/13_Screenshot from 2021-06-16 07-52-30.png','image/png',13),(12,'sa.png','https://localhost/wp-content/uploads/imgprofile/14_sa.png','image/png',14),(13,'gp.png','https://localhost/wp-content/uploads/imgprofile/14_gp.png','image/png',14),(14,'sa.png','https://localhost/wp-content/uploads/imgprofile/15_sa.png','image/png',15),(15,'jk.png','https://localhost/wp-content/uploads/imgprofile/16_jk.png','image/png',16),(16,'sa.png','https://localhost/wp-content/uploads/imgprofile/19_sa.png','image/png',19),(18,'1.png','https://localhost/wp-content/uploads/imgprofile/17_1.png','',17),(19,'default.png','https://127.0.0.1/wp-content/uploads/imgprofile/20_default.png','image/png',20),(20,'default.png','https://127.0.0.1/wp-content/uploads/imgprofile/21_default.png','image/png',21);
/*!40000 ALTER TABLE `Profile_Images` ENABLE KEYS */;
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
