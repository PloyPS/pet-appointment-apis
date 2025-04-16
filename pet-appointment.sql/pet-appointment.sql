-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pet-appointment
-- ------------------------------------------------------
-- Server version	10.11.2-MariaDB-1:10.11.2+maria~ubu2204

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
-- Table structure for table `animalsType`
--

DROP TABLE IF EXISTS `animalsType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animalsType` (
  `name` varchar(255) DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animalsType`
--

LOCK TABLES `animalsType` WRITE;
/*!40000 ALTER TABLE `animalsType` DISABLE KEYS */;
INSERT INTO `animalsType` VALUES
('สุนัข',0,1),
('แมว',0,2);
/*!40000 ALTER TABLE `animalsType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `id` int(55) NOT NULL,
  `username` int(11) NOT NULL,
  `subject` tinyint(11) DEFAULT NULL,
  `animalsType` tinyint(11) DEFAULT NULL,
  `animalsBreed` varchar(255) DEFAULT NULL,
  `animalsName` varchar(255) DEFAULT NULL,
  `timeAppointment` datetime DEFAULT NULL,
  `status` tinyint(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createBy` tinyint(11) DEFAULT NULL,
  `modifiedBy` tinyint(11) DEFAULT NULL,
  `is_delete` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `days` (
  `id` int(11) DEFAULT NULL,
  `day` varchar(55) DEFAULT NULL,
  `is_active` tinyint(11) DEFAULT NULL,
  `is_delete` tinyint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
INSERT INTO `days` VALUES
(0,'1',1,0),
(1,'2',1,0),
(2,'3',1,0),
(3,'4',1,0),
(4,'5',1,0);
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `month`
--

DROP TABLE IF EXISTS `month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `month` (
  `id` int(11) DEFAULT NULL,
  `month` varchar(55) DEFAULT NULL,
  `is_active` tinyint(11) DEFAULT NULL,
  `is_delete` tinyint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `month`
--

LOCK TABLES `month` WRITE;
/*!40000 ALTER TABLE `month` DISABLE KEYS */;
INSERT INTO `month` VALUES
(1,'1',1,NULL),
(2,'2',1,NULL),
(3,'3',1,NULL),
(4,'4',1,NULL),
(5,'5',1,NULL),
(6,'6',1,NULL),
(7,'7',1,NULL),
(8,'8',1,NULL),
(9,'9',1,NULL),
(10,'10',1,NULL),
(11,'11',1,NULL),
(12,'12',1,NULL);
/*!40000 ALTER TABLE `month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `animalsTypeId` int(11) DEFAULT NULL,
  `petBreeds` varchar(100) DEFAULT NULL,
  `petAge` varchar(11) DEFAULT NULL,
  `petWeightId` int(11) DEFAULT NULL,
  `createBy` int(11) DEFAULT NULL,
  `modifiedBy` int(11) DEFAULT NULL,
  `modifiedDete` timestamp NULL DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT NULL,
  `createDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES
(1,NULL,'bubu',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-01-23 15:47:54.827573'),
(2,NULL,'bubu',1,'บางแก้ว','3',4,1,NULL,NULL,NULL,'2025-01-23 15:52:34.007541'),
(3,NULL,'เหมียว',2,'บริติช','1',1,1,NULL,NULL,NULL,'2025-01-23 15:53:50.396299'),
(4,2,'มูซู',1,'ชิบะ','2 ขวบคั้บ',4,2,NULL,NULL,NULL,'2025-01-23 16:01:24.073720'),
(5,2,'จิงจิง',2,'บริติช','2 ปี',1,2,NULL,NULL,NULL,'2025-01-23 16:36:36.389943'),
(6,NULL,'test',2,'eye','2',1,1,NULL,NULL,NULL,'2025-02-09 09:57:21.434860'),
(7,NULL,'gege',2,'thai','2',1,1,NULL,NULL,NULL,'2025-02-09 10:00:48.251695'),
(8,NULL,'toto',1,'thai','2',4,1,NULL,NULL,NULL,'2025-02-09 10:03:08.767306'),
(9,2,'liga',1,'chocho','2',4,1,NULL,NULL,NULL,'2025-02-09 10:11:57.091829'),
(10,11,'mumu',1,'thai','1',4,11,NULL,NULL,NULL,'2025-02-09 10:12:58.307982');
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price` (
  `id` tinyint(4) NOT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `animalTypeId` int(11) DEFAULT NULL,
  `subjectId` int(11) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES
(1,'0-3 Kg',2,1,'250'),
(2,'0-3 Kg',2,2,'350'),
(3,'0-3 Kg',2,4,'500'),
(4,'4-7 Kg',2,1,'350'),
(5,'4-7 Kg',2,2,'450'),
(6,'4-7 Kg',2,4,'600'),
(7,'7+ Kg',2,1,'450'),
(8,'7+ Kg',2,2,'550'),
(9,'7+ Kg',2,4,'700'),
(10,'0-5 Kg',1,1,'200'),
(11,'0-5 Kg',1,2,'150'),
(12,'0-5 Kg',1,3,'500'),
(13,'0-5 Kg',1,4,'350'),
(14,'6-10 Kg',1,1,'300'),
(15,'6-10 Kg',1,2,'200'),
(16,'6-10 Kg',1,3,'500'),
(17,'6-10 Kg',1,4,'500'),
(18,'11-15 Kg',1,1,'700'),
(19,'11-15 Kg',1,2,'700'),
(20,'11-15 Kg',1,3,'500'),
(21,'11-15 Kg',1,4,'500');
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `subject` varchar(255) DEFAULT NULL,
  `is_delete` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES
('อาบน้ำ',NULL,1),
('ตัดขน',NULL,2),
('สระว่ายน้ำ',NULL,3),
('อาบน้ำ,ตัดขน','1',4);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_slots`
--

DROP TABLE IF EXISTS `time_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_slot` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_slots`
--

LOCK TABLES `time_slots` WRITE;
/*!40000 ALTER TABLE `time_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `times`
--

DROP TABLE IF EXISTS `times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `times` (
  `id` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `is_active` tinyint(11) DEFAULT NULL,
  `is_delete` tinyint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times`
--

LOCK TABLES `times` WRITE;
/*!40000 ALTER TABLE `times` DISABLE KEYS */;
INSERT INTO `times` VALUES
(1,'01/01/2025','09:00:00',NULL,NULL),
(2,'01/01/2025','10:00:00',NULL,NULL),
(3,'01/01/2025','11:00:00',NULL,NULL),
(5,'01/01/2025','14:00:00',NULL,NULL),
(6,'01/01/2025','15:00:00',NULL,NULL),
(7,'01/01/2025','16:00:00',NULL,NULL),
(4,'01/01/2025','13:00:00',NULL,NULL),
(8,'02/01/2025','09:00:00',NULL,NULL),
(9,'02/01/2025','10:00:00',NULL,NULL),
(10,'02/01/2025','11:00:00',NULL,NULL),
(11,'02/01/2025','13:00:00',NULL,NULL),
(12,'02/01/2025','14:00:00',NULL,NULL),
(13,'02/01/2025','15:00:00',NULL,NULL),
(14,'02/01/2025','16:00:00',NULL,NULL),
(15,'03/01/2025','09:00:00',NULL,NULL),
(16,'03/01/2025','10:00:00',NULL,NULL),
(17,'03/01/2025','11:00:00',NULL,NULL),
(18,'03/01/2025','13:00:00',NULL,NULL),
(19,'03/01/2025','14:00:00',NULL,NULL),
(20,'03/01/2025','15:00:00',NULL,NULL),
(21,'03/01/2025','16:00:00',NULL,NULL);
/*!40000 ALTER TABLE `times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_entity`
--

DROP TABLE IF EXISTS `user_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedBy` varchar(255) NOT NULL,
  `isDelete` int(11) NOT NULL DEFAULT 0,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifiedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_entity`
--

LOCK TABLES `user_entity` WRITE;
/*!40000 ALTER TABLE `user_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `role` tinyint(1) DEFAULT NULL,
  `createBy` tinyint(4) DEFAULT NULL,
  `modifiedBy` tinyint(4) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
('admin','admin_10','ben','li_x','0611457951',1,NULL,NULL,NULL,NULL,1,'2025-01-21 18:00:41.697902'),
('ben','ben','Ben','To','0966076129',NULL,NULL,NULL,NULL,NULL,2,'2025-01-21 18:00:41.697902'),
('roro','ok','benja','kiki','0862574206',NULL,NULL,NULL,NULL,NULL,7,'2025-01-21 18:00:41.697902'),
('uuuu','brnbrn','brnkub','firt','0966076129',NULL,NULL,NULL,NULL,NULL,8,'2025-01-21 18:00:41.697902'),
('hello','hello01','hello','ja','0849549656',NULL,1,NULL,NULL,NULL,9,'2025-01-21 18:00:41.697902'),
('testtest','test','test','testt','0909090999',NULL,1,NULL,NULL,NULL,10,'2025-01-21 18:01:24.803033'),
('oak','oak98','wanat','chapron','0989897456',NULL,1,NULL,NULL,NULL,11,'2025-01-21 18:04:43.762211');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight`
--

DROP TABLE IF EXISTS `weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weight` varchar(255) DEFAULT NULL,
  `is_delete` varchar(255) DEFAULT NULL,
  `animalTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight`
--

LOCK TABLES `weight` WRITE;
/*!40000 ALTER TABLE `weight` DISABLE KEYS */;
INSERT INTO `weight` VALUES
(1,'0-3 Kg',NULL,2),
(2,'4-7 Kg',NULL,2),
(3,'7+ Kg',NULL,2),
(4,'0-5 Kg',NULL,1),
(5,'6-10 Kg',NULL,1),
(6,'11-15 Kg',NULL,1),
(7,'16+ Kg',NULL,1);
/*!40000 ALTER TABLE `weight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-25 14:25:07
