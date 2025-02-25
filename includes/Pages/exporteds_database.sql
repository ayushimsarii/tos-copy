-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: grade sheet
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `academic`
--

DROP TABLE IF EXISTS `academic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic` (
  `id` int(11) NOT NULL,
  `academic` varchar(255) DEFAULT NULL,
  `shortacademic` varchar(255) DEFAULT NULL,
  `ptype` varchar(30) DEFAULT NULL,
  `percentage` int(20) DEFAULT NULL,
  `phase` varchar(255) DEFAULT NULL,
  `ctp` varchar(30) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` int(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `days` int(155) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic`
--

LOCK TABLES `academic` WRITE;
/*!40000 ALTER TABLE `academic` DISABLE KEYS */;
INSERT INTO `academic` VALUES (2,'vbn','A02',NULL,NULL,'1','1','56','user_file',NULL,'2023-07-21',2),(4,'Parking in rush ','dcdc',NULL,NULL,'1','1','55','user_file',NULL,'2023-08-01',NULL),(5,'academic -5','ac5',NULL,NULL,'1','1','58','user_file',659523895,'2023-11-01',NULL),(6,'park1','pk1',NULL,NULL,'3','1',NULL,NULL,NULL,'2023-11-08',NULL),(7,'park2','pk2',NULL,NULL,'3','1',NULL,NULL,NULL,'2023-11-08',NULL),(8,'academic3','AC3',NULL,NULL,'7','1',NULL,NULL,NULL,'2023-11-09',NULL);
/*!40000 ALTER TABLE `academic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accomplish_task`
--

DROP TABLE IF EXISTS `accomplish_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accomplish_task` (
  `ac_id` int(11) NOT NULL,
  `Item_ac` varchar(255) DEFAULT NULL,
  `Stud_ac` varchar(255) DEFAULT NULL,
  `gradsheet_id` varchar(30) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `clone_id` varchar(30) DEFAULT NULL,
  `assign_class` varchar(30) DEFAULT NULL,
  `assign_class_table` varchar(30) DEFAULT NULL,
  `assign_class_table_cloneid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accomplish_task`
--

LOCK TABLES `accomplish_task` WRITE;
/*!40000 ALTER TABLE `accomplish_task` DISABLE KEYS */;
INSERT INTO `accomplish_task` VALUES (1,'1','13','14','item','',NULL,NULL,NULL),(2,'2','13','14','item','',NULL,NULL,NULL),(3,'2','13','14','item','',NULL,NULL,NULL),(4,'1','13','14','item','',NULL,NULL,NULL),(5,'3','13','14','item','',NULL,NULL,NULL),(6,'2','13','14','item','',NULL,NULL,NULL),(7,'3','13','14','item','',NULL,NULL,NULL),(8,'2','13','14','item','',NULL,NULL,NULL),(9,'2','13','14','item','',NULL,NULL,NULL),(10,'3','13','14','item','',NULL,NULL,NULL),(11,'2','13','14','item','',NULL,NULL,NULL),(12,'3','13','14','item','',NULL,NULL,NULL),(13,'2','13','14','item','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `accomplish_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acedemic_phase`
--

DROP TABLE IF EXISTS `acedemic_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acedemic_phase` (
  `id` int(30) NOT NULL,
  `phase` varchar(30) NOT NULL,
  `ctp_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acedemic_phase`
--

LOCK TABLES `acedemic_phase` WRITE;
/*!40000 ALTER TABLE `acedemic_phase` DISABLE KEYS */;
INSERT INTO `acedemic_phase` VALUES (1,'1','1'),(2,'7','1');
/*!40000 ALTER TABLE `acedemic_phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acedemic_stu`
--

DROP TABLE IF EXISTS `acedemic_stu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acedemic_stu` (
  `id` int(30) NOT NULL,
  `std_id` int(30) DEFAULT NULL,
  `acedemic_id` int(30) DEFAULT NULL,
  `permission` varchar(30) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `updateDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acedemic_stu`
--

LOCK TABLES `acedemic_stu` WRITE;
/*!40000 ALTER TABLE `acedemic_stu` DISABLE KEYS */;
INSERT INTO `acedemic_stu` VALUES (1,29,2,'1','2023-11-16 11:05:36.000000','2023-11-16'),(2,13,2,'1','2023-11-16 11:05:36.000000','2023-11-16');
/*!40000 ALTER TABLE `acedemic_stu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actual`
--

DROP TABLE IF EXISTS `actual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actual` (
  `id` int(11) NOT NULL,
  `actual` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `ptype` varchar(255) DEFAULT NULL,
  `percentage` int(20) DEFAULT NULL,
  `phase` varchar(255) DEFAULT NULL,
  `ctp` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `days` int(155) DEFAULT NULL,
  `linesRequired` varchar(255) DEFAULT NULL,
  `studentPerClass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actual`
--

LOCK TABLES `actual` WRITE;
/*!40000 ALTER TABLE `actual` DISABLE KEYS */;
INSERT INTO `actual` VALUES (1,'Front Drive','PRK-1','percentage',100,'1','1','2023-07-17',NULL,'4','5'),(2,'back adding \"AYushi\"','ADR-2','percentage',100,'1','1','2023-07-17',NULL,NULL,NULL),(3,'back adding','ADR-3','percentage',100,'1','1','2023-07-17',NULL,NULL,NULL),(4,'Front Drive','ADR-2','percentage',100,'1','1','2023-07-18',5,NULL,NULL),(5,'Front Drive','ADR-9','percentage',100,'3','1','2023-08-02',NULL,NULL,NULL),(6,'back park','ADR-92','percentage',100,'3','1','2023-08-02',NULL,NULL,NULL),(7,'msarii','ADR-11','percentage',100,'3','1','2023-08-02',NULL,NULL,NULL),(8,'back adding','ADR-8','percentage',100,'1','1','2023-08-07',NULL,NULL,NULL),(9,'back adding','ADR-7','percentage',100,'1','1','2023-08-07',NULL,NULL,NULL),(10,'back adding','wqopjow','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(11,'Front Drive','2uiy2iywio','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(12,'back adding','202uu2o','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(13,'back park','ADR-366','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(14,'back park ,xcnskcbsbcw scbvbevfbvcbcbwaukfvgefvbefjvefbvejbvdgvebvjebvebvfehjfg wvaefkbgveilhi dkvnfdfkgnbiebhrnbgkgrd ebve,bgkievnbk.jethlgtw ebgegtehgivhetgi;legt;oeu egnektghwupgh;otjgwi\'hw4 engekgheigbvkdsghsgtri dvnkdbgiuleshgbvegi','ADR-234','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(15,'Front Drive','ADR-100','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(16,'front adding','APR-10','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(17,'Front Drive','APR-9','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(18,'msarii','APR-8','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(19,'Front Drive','APR-7','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(20,'back adding','APR-6','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(21,'back park','APR-4','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(22,'Front Drive','APR-3','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(23,'drive','APR-2','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(24,'msarii','park 1','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(25,'Front Drive','park','percentage',100,'1','1','2023-08-09',NULL,NULL,NULL),(26,'Front Drive','ADR-9','percentage',100,'2','2','2023-08-25',NULL,NULL,NULL),(27,'PPK','PPK','percentage',100,'3','1','2023-09-08',NULL,NULL,NULL),(28,'newAct1','Act1','percentage',100,'4','1','2023-11-08',NULL,NULL,NULL),(29,'newAct2','Act2','percentage',100,'4','1','2023-11-08',NULL,NULL,NULL),(30,'newFolClass','NFC1','percentage',100,'8','6','2023-11-22',NULL,NULL,NULL),(31,'newFolClass','NFC2','percentage',100,'8','6','2023-11-22',NULL,NULL,NULL);
/*!40000 ALTER TABLE `actual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actual_gradesheet`
--

DROP TABLE IF EXISTS `actual_gradesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actual_gradesheet` (
  `id` int(30) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `phase_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `class_id` varchar(30) DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL,
  `instructor` varchar(30) DEFAULT NULL,
  `vehicle` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actual_gradesheet`
--

LOCK TABLES `actual_gradesheet` WRITE;
/*!40000 ALTER TABLE `actual_gradesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `actual_gradesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actual_phase`
--

DROP TABLE IF EXISTS `actual_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actual_phase` (
  `id` int(30) NOT NULL,
  `phase` varchar(30) NOT NULL,
  `ctp_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actual_phase`
--

LOCK TABLES `actual_phase` WRITE;
/*!40000 ALTER TABLE `actual_phase` DISABLE KEYS */;
INSERT INTO `actual_phase` VALUES (1,'1','2'),(2,'2','2'),(3,'3','3'),(4,'1','1'),(5,'2','2'),(6,'3','1'),(7,'0','1'),(8,'6','1'),(9,'4','1'),(10,'7','1'),(11,'8','6');
/*!40000 ALTER TABLE `actual_phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_task`
--

DROP TABLE IF EXISTS `additional_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_task` (
  `ad_id` int(11) NOT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `Stud_id` int(30) DEFAULT NULL,
  `gradesheet_id` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `clone_id` varchar(30) DEFAULT NULL,
  `assign_class` varchar(30) DEFAULT NULL,
  `assign_class_table` varchar(30) DEFAULT NULL,
  `assign_class_table_cloneid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_task`
--

LOCK TABLES `additional_task` WRITE;
/*!40000 ALTER TABLE `additional_task` DISABLE KEYS */;
INSERT INTO `additional_task` VALUES (1,'2',13,'14','item','',NULL,NULL,NULL),(2,'6',29,'5','item',NULL,NULL,NULL,NULL),(3,'1',29,'5','item',NULL,NULL,NULL,NULL),(4,'1',29,'26','item',NULL,NULL,NULL,NULL),(5,'2',29,'26','item',NULL,NULL,NULL,NULL),(6,'3',29,'26','item',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `additional_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminpagechangelog`
--

DROP TABLE IF EXISTS `adminpagechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminpagechangelog` (
  `id` int(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `changeLog` varchar(255) DEFAULT NULL,
  `pageId` varchar(255) DEFAULT NULL,
  `pageName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminpagechangelog`
--

LOCK TABLES `adminpagechangelog` WRITE;
/*!40000 ALTER TABLE `adminpagechangelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminpagechangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alertreply`
--

DROP TABLE IF EXISTS `alertreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alertreply` (
  `id` int(11) NOT NULL,
  `alert_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `is_read` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alertreply`
--

LOCK TABLES `alertreply` WRITE;
/*!40000 ALTER TABLE `alertreply` DISABLE KEYS */;
INSERT INTO `alertreply` VALUES (1,1,12,'ok','0'),(2,2,12,'ok','0'),(3,3,12,'ok','0'),(4,2,36,'ok','0'),(5,1,36,'ok','0'),(6,4,12,'ok','0'),(7,4,14,'ok','0'),(8,3,14,'ok','0'),(9,2,14,'ok','0'),(10,1,14,'ok','0'),(11,4,15,'close','0'),(12,3,15,'close','0'),(13,2,15,'close','0'),(14,1,15,'close','0'),(15,4,13,'close','0'),(16,3,13,'close','0'),(17,2,13,'close','0'),(18,1,13,'close','0'),(19,5,12,'ok','0'),(20,5,14,'close','0'),(21,5,16,'ok','0'),(22,4,16,'ok','0'),(23,2,16,'ok','0'),(24,1,16,'ok','0'),(25,6,12,'ok','0'),(26,6,14,'ok','0'),(27,8,12,'ok','0'),(28,7,12,'ok','0'),(29,8,16,'ok','0'),(30,7,16,'ok','0'),(31,6,16,'ok','0'),(33,8,14,'ok','0'),(34,7,14,'ok','0'),(35,8,29,'ok','0'),(36,7,29,'ok','0'),(37,6,29,'ok','0'),(38,2,29,'ok','0'),(39,8,34,'ok','0'),(40,7,34,'ok','0'),(41,6,34,'ok','0'),(42,2,34,'ok','0'),(43,8,33,'ok','0'),(44,7,33,'ok','0'),(45,6,33,'ok','0'),(46,2,33,'ok','0'),(47,8,32,'ok','0'),(48,7,32,'ok','0'),(49,6,32,'ok','0'),(50,2,32,'ok','0'),(51,8,31,'ok','0'),(52,7,31,'ok','0'),(53,6,31,'ok','0'),(54,2,31,'ok','0');
/*!40000 ALTER TABLE `alertreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerttable`
--

DROP TABLE IF EXISTS `alerttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerttable` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `alert_type` varchar(255) DEFAULT NULL,
  `message` varchar(3000) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `permission` varchar(30) DEFAULT NULL,
  `reciever_user_id` varchar(250) DEFAULT NULL,
  `alertCategory` varchar(255) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `alert_file` varchar(250) DEFAULT NULL,
  `alert_icon` varchar(250) DEFAULT NULL,
  `textcolor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerttable`
--

LOCK TABLES `alerttable` WRITE;
/*!40000 ALTER TABLE `alerttable` DISABLE KEYS */;
INSERT INTO `alerttable` VALUES (2,'11','Graduation ceremony','hello world','2023-09-19','everyone',NULL,'Urgent Notice','#FF1202','Mekala-Rajesh-Resume.pdf','urgent_w.png','white'),(6,'11','Red Warning','Hello guys its woraning for u','2023-10-12','Everyone',NULL,'Caution','#FFC433','1aHE.gif','caution_w.png','black'),(7,'11','FeedBack Request','Request for exam, hello everyone, how r u? all good. have u all ok. please contact as soon as possible','2023-10-13','Everyone',NULL,'Feedback Request','#e933cf','the-difference-between-trees-and-shrubs-3269804-hero-a4000090f0714f59a8ec6201ad250d90.jpg','feedback_w.png','white'),(8,'11','meeting summary','Meeting in 10 minutes come as soon as possible','2023-10-13','Everyone',NULL,'Meeting Summaries','grey','how-to-draw-a-sun-featured-image-1200-991x1024.webp','summary_w.png','white');
/*!40000 ALTER TABLE `alerttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assing_warning_doc`
--

DROP TABLE IF EXISTS `assing_warning_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assing_warning_doc` (
  `id` int(30) NOT NULL,
  `files` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `noti_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assing_warning_doc`
--

LOCK TABLES `assing_warning_doc` WRITE;
/*!40000 ALTER TABLE `assing_warning_doc` DISABLE KEYS */;
INSERT INTO `assing_warning_doc` VALUES (1,'orgChart.doc','','59'),(2,'orgChart (1).doc','','68'),(3,'MicrosoftTeams-image (52).png','','69');
/*!40000 ALTER TABLE `assing_warning_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attrition`
--

DROP TABLE IF EXISTS `attrition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attrition` (
  `id` int(11) NOT NULL,
  `attritionDepartment` int(11) NOT NULL,
  `attritionPercent` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attrition`
--

LOCK TABLES `attrition` WRITE;
/*!40000 ALTER TABLE `attrition` DISABLE KEYS */;
INSERT INTO `attrition` VALUES (1,0,60,NULL),(2,0,50,NULL);
/*!40000 ALTER TABLE `attrition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `briefcase`
--

DROP TABLE IF EXISTS `briefcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `briefcase` (
  `id` int(11) NOT NULL,
  `briefcase` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `briefcase`
--

LOCK TABLES `briefcase` WRITE;
/*!40000 ALTER TABLE `briefcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `briefcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate_data`
--

DROP TABLE IF EXISTS `certificate_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificate_data` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `structure` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate_data`
--

LOCK TABLES `certificate_data` WRITE;
/*!40000 ALTER TABLE `certificate_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificate_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatdeleteforme`
--

DROP TABLE IF EXISTS `chatdeleteforme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatdeleteforme` (
  `id` int(11) NOT NULL,
  `msgId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatdeleteforme`
--

LOCK TABLES `chatdeleteforme` WRITE;
/*!40000 ALTER TABLE `chatdeleteforme` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatdeleteforme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatgroup`
--

DROP TABLE IF EXISTS `chatgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatgroup` (
  `id` int(11) NOT NULL,
  `groupName` varchar(255) DEFAULT NULL,
  `groupDesc` varchar(255) DEFAULT NULL,
  `groupProfile` varchar(255) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatgroup`
--

LOCK TABLES `chatgroup` WRITE;
/*!40000 ALTER TABLE `chatgroup` DISABLE KEYS */;
INSERT INTO `chatgroup` VALUES (4,'test group','vdvddv',NULL,'2023-11-03');
/*!40000 ALTER TABLE `chatgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatpagepermission`
--

DROP TABLE IF EXISTS `chatpagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatpagepermission` (
  `id` int(11) NOT NULL,
  `pageId` varchar(255) DEFAULT NULL,
  `permissionId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `permissionType` varchar(255) DEFAULT NULL,
  `pageType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatpagepermission`
--

LOCK TABLES `chatpagepermission` WRITE;
/*!40000 ALTER TABLE `chatpagepermission` DISABLE KEYS */;
INSERT INTO `chatpagepermission` VALUES (1,'15','11','Everyone','readOnly','chatPage');
/*!40000 ALTER TABLE `chatpagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `senderId` varchar(255) DEFAULT NULL,
  `receiverId` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `fileType` varchar(255) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `msgEdit` varchar(255) DEFAULT NULL,
  `deleteStatus` varchar(255) DEFAULT NULL,
  `replyMsg` varchar(255) DEFAULT NULL,
  `replyStatus` varchar(255) DEFAULT NULL,
  `msgRead` varchar(255) DEFAULT '0',
  `notification` varchar(255) NOT NULL DEFAULT '0',
  `loca` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,'11','12','hii?',NULL,NULL,'2023-11-02 09:58:34.000000','Edited',NULL,NULL,NULL,'1','1',NULL),(2,'11','12','44','file',NULL,'2023-11-02 09:59:32.000000',NULL,NULL,NULL,NULL,'1','1','userfile'),(3,'11','12','Shivani_Sharma.pdf',NULL,NULL,'2023-11-02 10:05:15.000000',NULL,NULL,'good','yes','1','1',NULL),(4,'11','12','45','file',NULL,'2023-11-02 10:08:57.000000',NULL,NULL,NULL,NULL,'1','1','userfile'),(5,'11','12','Django Task (1).docx',NULL,NULL,'2023-11-02 10:09:12.000000',NULL,NULL,'nice','yes','1','1',NULL),(6,'11','12','46',NULL,NULL,'2023-11-02 10:17:05.000000','Edited',NULL,NULL,NULL,'1','1','userfile'),(7,'11','12','C:\\xampp\\htdocs\\latest\\TOS',NULL,NULL,'2023-11-02 10:20:22.000000',NULL,NULL,'ok','yes','1','1',NULL),(34,'11','12','53','file',NULL,'2023-11-03 10:06:05.000000',NULL,NULL,NULL,NULL,'1','1','userfile'),(35,'12','11','hii',NULL,NULL,'2023-11-06 13:08:40.000000',NULL,NULL,NULL,NULL,'1','1',NULL),(36,'12','11','57',NULL,NULL,'2023-11-06 13:14:50.000000',NULL,NULL,NULL,NULL,'1','1','userfile'),(37,'11','12','hii',NULL,NULL,'2023-11-06 16:36:54.000000',NULL,NULL,NULL,NULL,'1','1',NULL),(38,'12','11','hello',NULL,NULL,'2023-11-07 11:11:37.000000',NULL,NULL,NULL,NULL,'1','1',NULL),(39,'11','12','hii',NULL,NULL,'2023-11-07 11:13:18.000000',NULL,NULL,NULL,NULL,'1','1',NULL),(40,'12','11','how r you?',NULL,NULL,'2023-11-07 11:14:36.000000',NULL,NULL,NULL,NULL,'1','1',NULL),(41,'11','12','11',NULL,NULL,'2023-11-07 14:44:00.000000',NULL,NULL,NULL,NULL,'1','1','page'),(42,'12','11','64',NULL,NULL,'2023-11-07 14:50:43.000000',NULL,NULL,NULL,NULL,'1','1','userfile'),(43,'12','13','hii',NULL,NULL,'2023-11-07 14:51:49.000000',NULL,NULL,NULL,NULL,'0','0',NULL),(44,'12','11','hii',NULL,NULL,'2023-11-07 17:02:38.000000',NULL,NULL,NULL,NULL,'1','1',NULL),(45,'12','11','hii',NULL,NULL,'2023-11-07 17:04:13.000000',NULL,NULL,NULL,NULL,'1','1',NULL),(46,'11','12','hii',NULL,NULL,'2023-11-14 16:41:36.000000',NULL,NULL,NULL,NULL,'1','1',NULL),(47,'11','','69',NULL,NULL,'2023-11-16 15:31:05.000000',NULL,NULL,NULL,NULL,'0','0','userfile'),(48,'12','11','hii',NULL,NULL,'2023-11-17 12:30:33.000000',NULL,NULL,NULL,NULL,'1','1',NULL),(49,'12','11','hii',NULL,NULL,'2023-11-17 12:31:01.000000',NULL,NULL,NULL,NULL,'1','1',NULL),(50,'12','11','hii',NULL,NULL,'2023-11-17 12:39:22.000000',NULL,NULL,NULL,NULL,'1','1',NULL),(51,'11','12','hii',NULL,NULL,'2023-11-17 12:57:46.000000',NULL,NULL,NULL,NULL,'0','1',NULL),(52,'11','12','hii',NULL,NULL,'2023-11-17 13:14:12.000000',NULL,NULL,NULL,NULL,'0','1',NULL),(53,'11','12','varun',NULL,NULL,'2023-11-17 13:14:26.000000',NULL,NULL,NULL,NULL,'0','1',NULL),(54,'11','12','mishra',NULL,NULL,'2023-11-17 13:15:35.000000',NULL,NULL,NULL,NULL,'0','1',NULL),(55,'11','4','hii',NULL,NULL,'2023-11-17 13:17:27.000000',NULL,NULL,NULL,NULL,'0','0',NULL),(56,'11','12','hii',NULL,NULL,'2023-11-20 16:29:33.000000',NULL,NULL,NULL,NULL,'0','1',NULL);
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_sub_checklist`
--

DROP TABLE IF EXISTS `check_sub_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_sub_checklist` (
  `id` int(11) NOT NULL,
  `checkListId` varchar(255) DEFAULT NULL,
  `subCheckListId` varchar(255) DEFAULT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `ctpId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_sub_checklist`
--

LOCK TABLES `check_sub_checklist` WRITE;
/*!40000 ALTER TABLE `check_sub_checklist` DISABLE KEYS */;
INSERT INTO `check_sub_checklist` VALUES (1,'4','3','29','1'),(4,'4','4','29','1'),(5,'5','6','29','1'),(6,'5','5','29','1');
/*!40000 ALTER TABLE `check_sub_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklist`
--

DROP TABLE IF EXISTS `checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checklist` (
  `id` int(30) NOT NULL,
  `checklist` varchar(255) DEFAULT NULL,
  `ctp` varchar(255) DEFAULT NULL,
  `subchecklist` varchar(255) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `status` varchar(3000) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `category` varchar(3000) DEFAULT NULL,
  `comment` varchar(3000) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklist`
--

LOCK TABLES `checklist` WRITE;
/*!40000 ALTER TABLE `checklist` DISABLE KEYS */;
INSERT INTO `checklist` VALUES (4,'checklist 1','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-08-25 16:34:06','#f00a0a'),(5,'checklist 2','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-08-25 16:34:06',NULL),(6,'checklist 3','1',NULL,NULL,NULL,NULL,NULL,NULL,'2023-08-25 16:34:06',NULL),(7,'checklist per 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-09-04 14:08:30',NULL),(8,'checklist [er 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-09-04 14:08:30',NULL),(9,'checklist per 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-09-04 14:08:49',NULL);
/*!40000 ALTER TABLE `checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkonline`
--

DROP TABLE IF EXISTS `checkonline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkonline` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkonline`
--

LOCK TABLES `checkonline` WRITE;
/*!40000 ALTER TABLE `checkonline` DISABLE KEYS */;
INSERT INTO `checkonline` VALUES (0,'11','online'),(153,'31','online'),(162,'34','online'),(182,'12','online');
/*!40000 ALTER TABLE `checkonline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checktyping`
--

DROP TABLE IF EXISTS `checktyping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checktyping` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `chatId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checktyping`
--

LOCK TABLES `checktyping` WRITE;
/*!40000 ALTER TABLE `checktyping` DISABLE KEYS */;
/*!40000 ALTER TABLE `checktyping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_documnet`
--

DROP TABLE IF EXISTS `class_documnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_documnet` (
  `id` int(11) NOT NULL,
  `classId` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileType` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_documnet`
--

LOCK TABLES `class_documnet` WRITE;
/*!40000 ALTER TABLE `class_documnet` DISABLE KEYS */;
INSERT INTO `class_documnet` VALUES (1,'1','test','Data Analyst Questions (5).docx','docx','11');
/*!40000 ALTER TABLE `class_documnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classfilter`
--

DROP TABLE IF EXISTS `classfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classfilter` (
  `id` int(11) NOT NULL,
  `className` varchar(255) DEFAULT NULL,
  `pageName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classfilter`
--

LOCK TABLES `classfilter` WRITE;
/*!40000 ALTER TABLE `classfilter` DISABLE KEYS */;
INSERT INTO `classfilter` VALUES (6,'sim','qual');
/*!40000 ALTER TABLE `classfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clearance_data`
--

DROP TABLE IF EXISTS `clearance_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clearance_data` (
  `id` int(11) NOT NULL,
  `item` varchar(30) DEFAULT NULL,
  `subitem` varchar(30) DEFAULT NULL,
  `stud_id` varchar(30) DEFAULT NULL,
  `ctp_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clearance_data`
--

LOCK TABLES `clearance_data` WRITE;
/*!40000 ALTER TABLE `clearance_data` DISABLE KEYS */;
INSERT INTO `clearance_data` VALUES (1,'1',NULL,'','1'),(2,'2',NULL,'','1'),(3,'3',NULL,'','1'),(4,'4',NULL,'','1');
/*!40000 ALTER TABLE `clearance_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clearance_student_id`
--

DROP TABLE IF EXISTS `clearance_student_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clearance_student_id` (
  `id` int(30) NOT NULL,
  `clearance_id` varchar(30) NOT NULL,
  `stud_id` varchar(30) NOT NULL,
  `class_id` varchar(30) NOT NULL,
  `class_table` varchar(30) NOT NULL,
  `clone_cid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clearance_student_id`
--

LOCK TABLES `clearance_student_id` WRITE;
/*!40000 ALTER TABLE `clearance_student_id` DISABLE KEYS */;
INSERT INTO `clearance_student_id` VALUES (1,'1','29','2','actual',NULL);
/*!40000 ALTER TABLE `clearance_student_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clone_class`
--

DROP TABLE IF EXISTS `clone_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clone_class` (
  `id` int(30) NOT NULL,
  `class_id` varchar(30) DEFAULT NULL,
  `std_id` varchar(30) DEFAULT NULL,
  `class_name` varchar(30) DEFAULT NULL,
  `cloned_id` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clone_class`
--

LOCK TABLES `clone_class` WRITE;
/*!40000 ALTER TABLE `clone_class` DISABLE KEYS */;
INSERT INTO `clone_class` VALUES (1,'1','14','actual',1),(2,'4','18','actual',1),(3,'4','29','actual',1),(5,'1','29','actual',1),(7,'5','29','actual',1),(8,'6','29','actual',1),(9,'7','29','actual',1),(10,'5','29','actual',2),(11,'7','29','actual',2),(12,'5','29','actual',3),(13,'6','29','actual',2),(14,'5','29','actual',4),(15,'6','29','actual',3),(16,'1','27','actual',1),(17,'6','27','actual',1),(18,'7','27','actual',1),(19,'4','29','sim',1),(20,'5','29','sim',1),(21,'6','29','sim',1),(22,'7','29','sim',1),(23,'8','29','sim',1),(24,'9','29','sim',1),(26,'11','29','sim',1),(27,'12','29','sim',1),(28,'13','29','sim',1),(29,'14','29','sim',1),(30,'15','29','sim',1),(31,'16','29','sim',1),(32,'17','29','sim',1),(33,'18','29','sim',1),(34,'19','29','sim',1),(35,'20','29','sim',1),(36,'21','29','sim',1),(37,'22','29','sim',1),(38,'23','29','sim',1),(39,'24','29','sim',1),(40,'25','29','sim',1),(41,'26','29','sim',1),(42,'27','29','sim',1),(43,'28','29','sim',1),(44,'4','29','actual',2),(45,'8','29','actual',1),(46,'2','29','actual',1),(49,'1','29','test',1),(50,'2','29','test',1),(51,'1','29','quiz',1);
/*!40000 ALTER TABLE `clone_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloned_gradesheet`
--

DROP TABLE IF EXISTS `cloned_gradesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloned_gradesheet` (
  `id` int(30) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `phase_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `class_id` varchar(30) DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL,
  `instructor` varchar(30) DEFAULT NULL,
  `vehicle` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `duration_hours` varchar(3) NOT NULL,
  `duration_min` varchar(3) NOT NULL,
  `over_all_grade` varchar(30) DEFAULT NULL,
  `over_all_grade_per` varchar(30) DEFAULT NULL,
  `over_all_comment` varchar(3000) DEFAULT NULL,
  `comments` varchar(3000) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `cloned_id` int(30) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `gradsheet_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloned_gradesheet`
--

LOCK TABLES `cloned_gradesheet` WRITE;
/*!40000 ALTER TABLE `cloned_gradesheet` DISABLE KEYS */;
INSERT INTO `cloned_gradesheet` VALUES (1,'29','1','1','1','actual','12','1','12:20','2023-11-29','','','U','20',' cdcwv','\r\n                          ','1',1,NULL,'1');
/*!40000 ALTER TABLE `cloned_gradesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctppage`
--

DROP TABLE IF EXISTS `ctppage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctppage` (
  `CTPid` int(11) NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  `symbol` varchar(30) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `VehicleType` varchar(30) DEFAULT NULL,
  `manual` varchar(255) DEFAULT NULL,
  `Sponcors` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `CourseAim` varchar(255) DEFAULT NULL,
  `ClassSize` int(255) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `duration` varchar(30) DEFAULT NULL,
  `goal` varchar(3000) DEFAULT NULL,
  `total_mark` decimal(11,2) DEFAULT NULL,
  `divisionType` varchar(255) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `vehicleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CTPid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctppage`
--

LOCK TABLES `ctppage` WRITE;
/*!40000 ALTER TABLE `ctppage` DISABLE KEYS */;
INSERT INTO `ctppage` VALUES (1,'Driving School Advanced','DA','Driving','1','66555-1607-new-microsoft-powerpoint-presentation-(3) (6) (9) (5) (1).pptx','UAE Driving School','Alkarama Branch A','To qualify drivers to drive',4,'ah','6','',100.00,'1','#1aff1d','Car'),(2,'Driving School Beginner','DB','Parking','1','gradesheet.sql','UAE Driving School','Abu dhabi','To qualify drivers to drive',4,'dfghj','7','Hello',NULL,'1',NULL,'Car'),(3,'Python Class','PY','Parking','2','hashoff (1).sql','UAE Driving School','Abu dhabi','To qualify drivers to drive',4,'hekk','8','kdks',NULL,'1',NULL,NULL),(4,'Science Class','SC','hdkhs','1','gradesheet (1).sql','dsjkhdk','Abu dhabi','To qualify drivers to drive',4,'fghj','5','kdks',NULL,'1',NULL,NULL),(5,'Math Class','MA','Parking','1','folders.sql','driving school','Abu dhabi','To qualify drivers to drive',4,'hello','6','Hello',NULL,'1',NULL,NULL),(6,'test shop','ts','ts1','2','Sandeep_Kumar_Resume_Software_Developer.pdf','Mr.varun','prayagraj','NA',200,'NA','5','Without Goal',NULL,'1',NULL,'BMW');
/*!40000 ALTER TABLE `ctppage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deconflicterdata`
--

DROP TABLE IF EXISTS `deconflicterdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deconflicterdata` (
  `id` int(11) NOT NULL,
  `startDate` varchar(255) DEFAULT NULL,
  `endDate` varchar(255) NOT NULL,
  `linePerDay` int(11) DEFAULT NULL,
  `departMentId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deconflicterdata`
--

LOCK TABLES `deconflicterdata` WRITE;
/*!40000 ALTER TABLE `deconflicterdata` DISABLE KEYS */;
INSERT INTO `deconflicterdata` VALUES (1,'2023-09-08','2023-09-13',5,NULL);
/*!40000 ALTER TABLE `deconflicterdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deconflicterdepartment`
--

DROP TABLE IF EXISTS `deconflicterdepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deconflicterdepartment` (
  `id` int(11) NOT NULL,
  `departMentId` varchar(255) DEFAULT NULL,
  `mainId` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deconflicterdepartment`
--

LOCK TABLES `deconflicterdepartment` WRITE;
/*!40000 ALTER TABLE `deconflicterdepartment` DISABLE KEYS */;
INSERT INTO `deconflicterdepartment` VALUES (1,'1','1','planedLeave'),(2,'3','2','unPlanned'),(3,'3','1','attrition'),(4,'1','1','linePerDay');
/*!40000 ALTER TABLE `deconflicterdepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desccate`
--

DROP TABLE IF EXISTS `desccate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desccate` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `marks` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desccate`
--

LOCK TABLES `desccate` WRITE;
/*!40000 ALTER TABLE `desccate` DISABLE KEYS */;
INSERT INTO `desccate` VALUES (1,'Descipline 1','60','2023-08-23 16:15:05'),(2,'Descipline 2','70','2023-08-23 16:15:05'),(3,'Descipline','80','2023-08-23 16:15:05');
/*!40000 ALTER TABLE `desccate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digramtable`
--

DROP TABLE IF EXISTS `digramtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digramtable` (
  `id` int(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `question` varchar(3000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `figure_name` varchar(255) DEFAULT NULL,
  `labels` varchar(255) DEFAULT NULL,
  `difficulty` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `test` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digramtable`
--

LOCK TABLES `digramtable` WRITE;
/*!40000 ALTER TABLE `digramtable` DISABLE KEYS */;
/*!40000 ALTER TABLE `digramtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discipline` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `inst_id` varchar(30) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `dismarks` varchar(255) DEFAULT NULL,
  `student_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileExt` varchar(255) DEFAULT NULL,
  `categoryId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline`
--

LOCK TABLES `discipline` WRITE;
/*!40000 ALTER TABLE `discipline` DISABLE KEYS */;
INSERT INTO `discipline` VALUES (1,'2023-08-08','11',NULL,'Descipline Marks','60','29','1','users (1).csv','csv','1'),(2,'2023-08-18','11',NULL,'Hello world','80','29','1','Gardening Dep (2).xlsx','xlsx','3'),(3,'2023-10-09','11',NULL,'hi','60','14','1','test_updates (2) (1).sql','sql','1'),(4,'2023-10-09','11',NULL,'hi','20','14','1','test_updates (2) (1).sql','sql','1'),(5,'2023-10-09','11',NULL,'bye','60','14','1','document_test (2).sql','sql','1'),(6,'2023-10-09','11',NULL,'bye','30','14','1','document_test (2).sql','sql','1'),(7,'2023-10-09','11',NULL,'bye','7','14','1','roles (2).sql','sql','absent');
/*!40000 ALTER TABLE `discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discipline_data`
--

DROP TABLE IF EXISTS `discipline_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discipline_data` (
  `id` int(11) NOT NULL,
  `student_id` int(30) DEFAULT NULL,
  `dismarks` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline_data`
--

LOCK TABLES `discipline_data` WRITE;
/*!40000 ALTER TABLE `discipline_data` DISABLE KEYS */;
INSERT INTO `discipline_data` VALUES (1,29,'90');
/*!40000 ALTER TABLE `discipline_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division` (
  `id` int(11) NOT NULL,
  `divisionName` varchar(255) DEFAULT NULL,
  `color` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'devision 1','#c01616'),(2,'devision 2','#9aae0a'),(3,'devision 3','#9aae0a'),(4,'devision 4','#9aae0a'),(5,'devision 5',NULL),(6,'devision 6',NULL),(7,'devision 7',NULL);
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division_department`
--

DROP TABLE IF EXISTS `division_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division_department` (
  `id` int(11) NOT NULL,
  `departmentId` varchar(255) DEFAULT NULL,
  `divisionId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division_department`
--

LOCK TABLES `division_department` WRITE;
/*!40000 ALTER TABLE `division_department` DISABLE KEYS */;
INSERT INTO `division_department` VALUES (1,'1','1'),(2,'1','2'),(3,'2','2');
/*!40000 ALTER TABLE `division_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_test`
--

DROP TABLE IF EXISTS `document_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_test` (
  `id` int(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `refrence` varchar(3000) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `fileLoca` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_test`
--

LOCK TABLES `document_test` WRITE;
/*!40000 ALTER TABLE `document_test` DISABLE KEYS */;
INSERT INTO `document_test` VALUES (4,'Shivani_Sharma.pdf','hii','testing1','2023-11-06','pdf',NULL,NULL),(5,'D:\\xampp\\htdocs',NULL,'link','','offline','D:xampph',NULL),(6,'http://arudantech.com/',NULL,'link1','2023-11-07','online','http://aru',NULL),(7,'60',NULL,'lab file','2023-11-07',NULL,NULL,'userFile'),(8,'61',NULL,'lab link','2023-11-07',NULL,NULL,'userFile'),(9,'62',NULL,'lab link online','2023-11-07',NULL,NULL,'userFile');
/*!40000 ALTER TABLE `document_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editor_data`
--

DROP TABLE IF EXISTS `editor_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editor_data` (
  `id` int(11) NOT NULL,
  `pageName` varchar(255) DEFAULT NULL,
  `editorData` mediumtext DEFAULT NULL,
  `folderId` int(11) DEFAULT NULL,
  `shopid` varchar(30) NOT NULL DEFAULT '0',
  `briefId` int(11) DEFAULT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `favouriteColor` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `admin_delete` varchar(30) DEFAULT NULL,
  `changeLog` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `userRole` varchar(255) DEFAULT NULL,
  `briefType` varchar(255) DEFAULT NULL,
  `pageLoc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editor_data`
--

LOCK TABLES `editor_data` WRITE;
/*!40000 ALTER TABLE `editor_data` DISABLE KEYS */;
INSERT INTO `editor_data` VALUES (1,'test page','<p>hello word</p>\r\n',9,'6',0,'2023-07-24','2023-07-24','A4','A4',NULL,'11',NULL,'Initial publish','red','super admin','NULL',NULL),(6,'again test','<p>sdcscdsvvvedvqeveqb</p>\r\n',NULL,'0',NULL,'2023-10-31','2023-10-31','A4','A4',NULL,'11',NULL,NULL,'red','super admin',NULL,'chat'),(7,'group page','<p>&nbsp;avadfbdgbgfnf&nbsp; f</p>\r\n',NULL,'0',NULL,'2023-11-01','2023-11-01','A4','A4',NULL,'11',NULL,NULL,'red','super admin',NULL,'chat'),(8,'varun page','<p>brgrbrbrbr varun mishra</p>\r\n',NULL,'0',NULL,'2023-11-02','2023-11-02','A4','A4',NULL,'11',NULL,NULL,'red','super admin',NULL,'chat'),(9,'group page','<p>vdbshrnrnrnsnrw varun</p>\r\n',NULL,'0',NULL,'2023-11-02','2023-11-02','A4','A4',NULL,'11',NULL,NULL,'red','super admin',NULL,'chat'),(10,'group page','<p>cscsvv</p>\r\n',NULL,'0',NULL,'2023-11-07','2023-11-07','A4','A4',NULL,'11',NULL,NULL,'red','super admin',NULL,'chat'),(11,'chat page','<p>hello guy&#39;s</p>\r\n',NULL,'0',NULL,'2023-11-07','2023-11-07','A4','A4',NULL,'11',NULL,NULL,'red','super admin',NULL,'chat');
/*!40000 ALTER TABLE `editor_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emergency_data`
--

DROP TABLE IF EXISTS `emergency_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emergency_data` (
  `id` int(11) NOT NULL,
  `item` int(11) DEFAULT NULL,
  `subitem` int(11) DEFAULT NULL,
  `stud_id` int(11) DEFAULT NULL,
  `ctp_id` int(11) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergency_data`
--

LOCK TABLES `emergency_data` WRITE;
/*!40000 ALTER TABLE `emergency_data` DISABLE KEYS */;
INSERT INTO `emergency_data` VALUES (1,2,NULL,29,1,NULL),(2,1,NULL,29,1,NULL),(3,2,NULL,29,1,NULL),(4,3,NULL,29,1,NULL);
/*!40000 ALTER TABLE `emergency_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_answers_once_test`
--

DROP TABLE IF EXISTS `exam_answers_once_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_answers_once_test` (
  `id` int(255) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `exam_id` varchar(255) DEFAULT NULL,
  `countAttempts` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_answers_once_test`
--

LOCK TABLES `exam_answers_once_test` WRITE;
/*!40000 ALTER TABLE `exam_answers_once_test` DISABLE KEYS */;
INSERT INTO `exam_answers_once_test` VALUES (1,'118','16',NULL,'c','12',4),(2,'119','16',NULL,'d','12',2);
/*!40000 ALTER TABLE `exam_answers_once_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_answers_repeat_test`
--

DROP TABLE IF EXISTS `exam_answers_repeat_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_answers_repeat_test` (
  `id` int(255) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `exam_id` varchar(255) DEFAULT NULL,
  `repeat_id` int(255) DEFAULT NULL,
  `countAttempts` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_answers_repeat_test`
--

LOCK TABLES `exam_answers_repeat_test` WRITE;
/*!40000 ALTER TABLE `exam_answers_repeat_test` DISABLE KEYS */;
INSERT INTO `exam_answers_repeat_test` VALUES (1,'91','a','29','a','1',1,0),(2,'91','b','29','a','1',1,0),(3,'110',NULL,'14','false','9',8,0),(4,'111',NULL,'14','true','9',8,0),(5,'114','hand1','14','a','11',8,0),(6,'',NULL,'14','','11',8,0),(7,'114','leg1','14','b','11',8,0),(8,'115','leg1','14','a','11',8,0),(9,'115','eye1','14','c','11',8,0),(10,'115','hand1','14','b','11',8,0),(11,'116',NULL,'14','false','11',8,0),(12,'117',NULL,'14','true','11',8,0);
/*!40000 ALTER TABLE `exam_answers_repeat_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_question`
--

DROP TABLE IF EXISTS `exam_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_question` (
  `id` int(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type_color` varchar(255) DEFAULT NULL,
  `question` varchar(1000) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `correst_answer` varchar(255) DEFAULT NULL,
  `marks` int(255) DEFAULT NULL,
  `difficulty` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileType` varchar(255) DEFAULT NULL,
  `questionRef` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_question`
--

LOCK TABLES `exam_question` WRITE;
/*!40000 ALTER TABLE `exam_question` DISABLE KEYS */;
INSERT INTO `exam_question` VALUES (1,'1','mcq',NULL,'HTML stand for',NULL,'Hypermark Language','Hypermix language','Hypertext Markup Language','Hypertension Language','c',NULL,'easy','1',NULL,NULL,NULL,'Read about Html.'),(2,'1','mcq',NULL,'Which tag is used to create a check box',NULL,'<checkbox>','<Input type=\"checkbox\">','<type=\"checkbox\"','None of the above','b',NULL,'easy','1',NULL,NULL,NULL,NULL),(3,'1','mcq',NULL,'From which tag descriptive list starts ?',NULL,' <LL>',' <DL>',' <LDL>',' <DD>','b',NULL,'easy','1',NULL,NULL,NULL,NULL),(4,'1','mcq',NULL,'Which HTML tag produces the biggest heading? ',NULL,'<h7>','<H>','<H1>','<HI>','c',NULL,'easy','1',NULL,NULL,NULL,NULL),(5,'1','mcq',NULL,'Which type of HTML language is ? ',NULL,'scripting language','programming language','Markup language','Network language','c',NULL,'easy','1',NULL,NULL,NULL,NULL),(6,'2','mcq',NULL,'What does CSS stand for?',NULL,'Colorful Style Sheets','Creative Style Sheets','Cascading Style Sheets','Computer Style Sheets','c',NULL,'easy','1',NULL,NULL,NULL,NULL),(7,'2','mcq',NULL,'How can we change the background color of an element?',NULL,'background-color','color','Both A and B','None of above','a',NULL,'easy','1',NULL,NULL,NULL,NULL),(8,'2','mcq',NULL,'Which of the following tag is used to embed css in html page?',NULL,'<css>','<!DOCTYPE html>','<script> ','<style>','d',NULL,'easy','1',NULL,NULL,NULL,NULL),(9,'2','mcq',NULL,'Which of the following CSS selectors are used to specify a group of elements?',NULL,'tag','id','class','both class and tag','c',NULL,'easy','1',NULL,NULL,NULL,NULL),(10,'2','mcq',NULL,'Which of the following CSS framework is used to create a responsive design?',NULL,'Django','Rails','Laravell','bootstrap','d',NULL,'medium','1',NULL,NULL,NULL,NULL),(11,'2','mcq',NULL,'Which of the following CSS property is used to make the text bold?',NULL,'text-decoration: bold','font-weight: bold',' font-style: bold','text-align: bold','b',NULL,'easy','1',NULL,NULL,NULL,NULL),(12,'2','mcq',NULL,'Which of the following CSS style property is used to specify an italic text?',NULL,'style','font','font-style','@font-face','c',NULL,'easy','1',NULL,NULL,NULL,NULL),(13,'6','mcq',NULL,'What is JavaScript?',NULL,'JavaScript is a scripting language used to make the website interactive','JavaScript is an assembly language used to make the website interactive','JavaScript is a compiled language used to make the website interactive','None of the mentioned','a',NULL,'easy','1',NULL,NULL,NULL,NULL),(14,'6','mcq',NULL,'Which of the following object is the main entry point to all client-side JavaScript features and APIs?',NULL,'Position','Window','Standard','Location','b',NULL,'easy','1',NULL,NULL,NULL,NULL),(15,'6','mcq',NULL,'Which of the following is correct about JavaScript?',NULL,' JavaScript is an Object-Based language','JavaScript is Assembly-language','JavaScript is an Object-Oriented language','JavaScript is a High-level language','a',NULL,'easy','1',NULL,NULL,NULL,NULL),(16,'6','mcq',NULL,'Arrays in JavaScript are defined by which of the following statements?',NULL,'It is an ordered list of values','It is an ordered list of objects',' It is an ordered list of string','It is an ordered list of functions','a',NULL,'easy','1',NULL,NULL,NULL,NULL),(17,'6','mcq',NULL,'Which of the following is not javascript data types?',NULL,'Null type','Undefined type','Number type','All of the mentioned','d',NULL,'easy','1',NULL,NULL,NULL,NULL),(18,'3','mcq',NULL,'Which of the following class in Bootstrap is used to provide a responsive fixed width container?',NULL,'.container-fixed','.container-fluid','.container','All of the above','a',NULL,'easy','1',NULL,NULL,NULL,NULL),(19,'3','mcq',NULL,'Which of the following class in Bootstrap is used to create a dropdown menu?',NULL,'.dropdown','.select','.select-list','None of the above','a',NULL,'easy','1',NULL,NULL,NULL,NULL),(20,'3','mcq',NULL,'Which of the following bootstrap styles can be used to create a default progress bar?',NULL,'.nav-progress','.link-progress-bar','.progress, .progress-bar','All of the mentioned','c',NULL,'easy','1',NULL,NULL,NULL,NULL),(21,'3','mcq',NULL,'The Bootstrap grid system is based on how many columns?',NULL,'4','6','12','18','c',NULL,'easy','1',NULL,NULL,NULL,NULL),(22,'3','mcq',NULL,'Which plugin is used to cycle through elements, like a slideshow?',NULL,'Carousel Plugin','Modal Plugin','Tooltip Plugin','None of the mentioned','a',NULL,'easy','1',NULL,NULL,NULL,NULL),(23,'3','mcq',NULL,'Which of the following is correct about the data-animation Data attribute of the Popover Plugin?',NULL,'Gives the popover a CSS fade transition','Inserts the popover with HTML','Indicates how the popover should be positioned','Assigns delegated tasks to the designated targets','a',NULL,'easy','1',NULL,NULL,NULL,NULL),(24,'2','diagram',NULL,'Guess the name','MicrosoftTeams-image (104).png',NULL,NULL,NULL,NULL,'a:0:{}',NULL,'easy','1',NULL,NULL,NULL,NULL),(25,'1','true_false',NULL,'The HTML tags can be written in Capital or small Letters?',NULL,NULL,NULL,NULL,NULL,'true',NULL,'medium','1',NULL,NULL,NULL,NULL),(26,'1','true_false',NULL,'Text is written in word pad to create a home page?',NULL,NULL,NULL,NULL,NULL,'true',NULL,'hard','1',NULL,NULL,NULL,NULL),(27,'1','true_false',NULL,'Body tag is written after Head tag',NULL,NULL,NULL,NULL,NULL,'true',NULL,'medium','1',NULL,NULL,NULL,NULL),(28,'1','true_false',NULL,'Container tag is a solo tag.',NULL,NULL,NULL,NULL,NULL,'false',NULL,'medium','1',NULL,NULL,NULL,NULL),(29,'1','true_false',NULL,'Title is written in Head Tag',NULL,NULL,NULL,NULL,NULL,'true',NULL,'hard','1',NULL,NULL,NULL,NULL),(30,'1','true_false',NULL,'There are six levels in Heading.',NULL,NULL,NULL,NULL,NULL,'true',NULL,'veryhard','1',NULL,NULL,NULL,NULL),(31,'1','true_false',NULL,'The tag\r\nis used for paragraph.',NULL,NULL,NULL,NULL,NULL,'true',NULL,'medium','1',NULL,NULL,NULL,NULL),(32,'2','true_false',NULL,'Linking to an external style sheet allows you to have hyperlinks from your page to the World Wide Web.',NULL,NULL,NULL,NULL,NULL,'true',NULL,'easy','1',NULL,NULL,NULL,NULL),(33,'2','true_false',NULL,'The MIME type for a CSS style sheet is \"stylesheet = CSS\"',NULL,NULL,NULL,NULL,NULL,'true',NULL,'medium','1',NULL,NULL,NULL,NULL),(34,'2','true_false',NULL,'The rel attribute specifies a relationship between the current document and another document, such as a style sheet.',NULL,NULL,NULL,NULL,NULL,'true',NULL,'easy','1',NULL,NULL,NULL,NULL),(35,'2','true_false',NULL,'The link element should be placed at the top of the body section.',NULL,NULL,NULL,NULL,NULL,'true',NULL,'medium','1',NULL,NULL,NULL,NULL),(36,'2','true_false',NULL,'CSS can add background images to documents.',NULL,NULL,NULL,NULL,NULL,'false',NULL,'hard','1',NULL,NULL,NULL,NULL),(37,'10','diagram',NULL,'Name The Animal','download (2).jfif',NULL,NULL,NULL,NULL,'a:2:{s:1:\"a\";s:3:\"Dog\";s:1:\"b\";s:5:\"Puppy\";}',NULL,'medium','1',NULL,NULL,NULL,NULL),(38,'10','diagram',NULL,'Guess The Animal','cat.jpg',NULL,NULL,NULL,NULL,'a:1:{s:1:\"a\";s:3:\"Cat\";}',NULL,'easy','1',NULL,NULL,NULL,NULL),(39,'10','diagram',NULL,'Name 5 organs','human-skeleton-art-vector.jpg',NULL,NULL,NULL,NULL,'a:5:{s:1:\"a\";s:4:\"Head\";s:1:\"b\";s:4:\"Eyes\";s:1:\"c\";s:4:\"Hand\";s:1:\"d\";s:8:\"Shoulder\";s:1:\"e\";s:4:\"Nose\";}',NULL,'easy','1',NULL,NULL,NULL,NULL),(40,'10','diagram',NULL,'What is this?','tennis-ball.jpg',NULL,NULL,NULL,NULL,'a:1:{s:1:\"a\";s:4:\"Ball\";}',NULL,'easy','1',NULL,NULL,NULL,NULL),(41,'10','diagram',NULL,'Twinkle Twinkle Little ________','24098481.jpg',NULL,NULL,NULL,NULL,'a:1:{s:1:\"a\";s:4:\"Star\";}',NULL,'easy','1',NULL,NULL,NULL,NULL),(43,'1','diagram',NULL,'How Many Columns Are there?','3JoAZ.png',NULL,NULL,NULL,NULL,'a:0:{}',NULL,'easy','1',NULL,NULL,NULL,NULL),(62,'1','digrame',NULL,'label','success.jpg',NULL,NULL,NULL,NULL,'a:2:{s:1:\"a\";s:5:\"hand1\";s:1:\"b\";s:4:\"leg1\";}',NULL,'easy','4',NULL,NULL,NULL,NULL),(63,'1','digrame',NULL,'2 digram12','success.jpg',NULL,NULL,NULL,NULL,'a:3:{s:1:\"a\";s:5:\"hand1\";s:1:\"b\";s:4:\"leg1\";s:1:\"c\";s:4:\"eye1\";}',NULL,'medium','4',NULL,NULL,NULL,NULL),(64,'1','mcq',NULL,'Large tag for heading?',NULL,'h1','h4','h6','h3','a',NULL,'easy','4',NULL,NULL,NULL,NULL),(65,'1','mcq',NULL,'Which one is paragraph tag?',NULL,'p','h1','span','div','a',NULL,'easy','4',NULL,'blog2.jpg','jpg',NULL),(66,'1','mcq',NULL,'vvvgbgwv',NULL,'we','er','we','hii','d',NULL,'easy','4',NULL,NULL,NULL,NULL),(67,'1','true_false',NULL,'we can apply height and width in display inline or not?',NULL,NULL,NULL,NULL,NULL,'false',NULL,'easy','4',NULL,'VarunPicture.jpeg','jpeg',NULL),(68,'1','true_false',NULL,'we can apply height and width in display inline-block?',NULL,NULL,NULL,NULL,NULL,'true',NULL,'easy','4',NULL,NULL,NULL,NULL),(69,'1','mcq',NULL,'dnwcc',NULL,'faef','vv','dfv','fvfdv','a',NULL,'easy','4',NULL,NULL,NULL,'mmjym'),(70,'1','mcq',NULL,'jmymy',NULL,'df','nh','S','H','b',NULL,'easy','4',NULL,NULL,NULL,'sqxx');
/*!40000 ALTER TABLE `exam_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_question_ist`
--

DROP TABLE IF EXISTS `exam_question_ist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_question_ist` (
  `id` int(255) NOT NULL,
  `question_id` varchar(255) DEFAULT NULL,
  `exam_id` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_question_ist`
--

LOCK TABLES `exam_question_ist` WRITE;
/*!40000 ALTER TABLE `exam_question_ist` DISABLE KEYS */;
INSERT INTO `exam_question_ist` VALUES (1,'19','7',''),(2,'5','7',''),(3,'2','7',''),(4,'18','7',''),(5,'6','7',''),(34,'6','8',''),(35,'11','8',''),(36,'3','8',''),(37,'22','8',''),(38,'23','8',''),(39,'1','8',''),(40,'19','8',''),(41,'8','8',''),(42,'1','6',''),(43,'37','6',''),(44,'34','6',''),(45,'11','6',''),(46,'41','6',''),(47,'2','6',''),(48,'31','6',''),(49,'26','6',''),(50,'35','6',''),(51,'40','6',''),(86,'4','13',''),(87,'3','13',''),(88,'2','13',''),(89,'1','13',''),(90,'5','13',''),(91,'62','1',NULL),(92,'62','2',NULL),(93,'62','3',NULL),(94,'63','3',NULL),(95,'65','4',NULL),(96,'66','4',NULL),(99,'65','6',NULL),(100,'66','6',NULL),(101,'40','7',NULL),(102,'41','7',NULL),(103,'67','7',NULL),(104,'68','7',NULL),(105,'1','8',NULL),(106,'2','8',NULL),(107,'3','8',NULL),(108,'62','8',NULL),(109,'63','8',NULL),(110,'67','9',NULL),(111,'68','9',NULL),(112,'67','10',NULL),(113,'68','10',NULL),(114,'62','11',NULL),(115,'63','11',NULL),(116,'67','11',NULL),(117,'68','11',NULL),(118,'1','12',NULL),(119,'2','12',NULL),(120,'3','12',NULL),(121,'4','12',NULL);
/*!40000 ALTER TABLE `exam_question_ist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examname`
--

DROP TABLE IF EXISTS `examname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examname` (
  `id` int(11) NOT NULL,
  `examFor` varchar(255) DEFAULT NULL,
  `dep_id` varchar(255) DEFAULT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `examName` varchar(255) DEFAULT NULL,
  `questionNumber` varchar(255) DEFAULT NULL,
  `percentageEasy` varchar(255) DEFAULT NULL,
  `percentageMedium` varchar(255) DEFAULT NULL,
  `percentageHard` varchar(255) DEFAULT NULL,
  `percentageveryhard` varchar(255) DEFAULT NULL,
  `exam_Types` varchar(255) DEFAULT NULL,
  `result_hide_show` varchar(255) DEFAULT NULL,
  `total_marks` varchar(255) DEFAULT NULL,
  `marks_type` varchar(255) DEFAULT NULL,
  `passing_marks` varchar(255) DEFAULT NULL,
  `exam_type` varchar(255) DEFAULT NULL,
  `start_hours` varchar(20) DEFAULT NULL,
  `end_hours` varchar(20) DEFAULT NULL,
  `timings` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `randomCode` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `gen_code` varchar(255) DEFAULT NULL,
  `exam_created_type` varchar(255) DEFAULT NULL,
  `attempts` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examname`
--

LOCK TABLES `examname` WRITE;
/*!40000 ALTER TABLE `examname` DISABLE KEYS */;
INSERT INTO `examname` VALUES (1,'2',NULL,NULL,'digram exam','1','','','','','repeat','show','100','Equal','50','Open_Book','10:09','13:09',NULL,'2023-11-06','2023-11-06 10:09:13.000000','2023-11-09','india',NULL,'no',NULL,'manual','0'),(2,'2',NULL,NULL,'digram exam1','1','','','','','once','show','100','Equal','50','Open_Book','14:43','16:44',NULL,'2023-11-06','2023-11-06 14:42:41.000000','2023-11-09','india',NULL,'no',NULL,'manual','0'),(3,'2',NULL,NULL,'digram exam3','2','','','','','once','show','100','Equal','40','Open_Book','15:18','16:19',NULL,'2023-11-06','2023-11-06 15:17:47.000000','2023-11-07','india',NULL,'no',NULL,'manual','0'),(4,'2',NULL,NULL,'imageExam','2','','','','','once','show','100','Equal','50','Open_Book','13:06','17:07',NULL,'2023-11-08','2023-11-08 13:06:04.000000','2023-11-09','india',NULL,'no',NULL,'manual','0'),(5,'2',NULL,NULL,'imageTrueFalse','2','','','','','once','show','100','Equal','50','Open_Book','13:33','17:34',NULL,'2023-11-08','2023-11-08 13:33:04.000000','2023-11-09','india',NULL,'no',NULL,'manual','0'),(6,'2',NULL,NULL,'image Tes2','2','','','','','once','show','100','Equal','50','Open_Book','10:17','12:19',NULL,'2023-11-09','2023-11-09 10:18:11.000000','2023-11-11','india',NULL,'no',NULL,'manual','0'),(7,'2',NULL,NULL,'test exam12','4','','','','','once','show','100','Equal','50','Open_Book','18:43','22:43',NULL,'2023-11-09','2023-11-09 18:44:12.000000','2023-11-17','india',NULL,'no',NULL,'manual','0'),(8,'2',NULL,NULL,'test both','5','','','','','once','show','100','Equal','20','Open_Book','14:49','18:51',NULL,'2023-11-14','2023-11-14 12:50:07.000000','18:51','india',NULL,'no',NULL,'manual','0'),(9,'2','NULL','NULL','2','2','','','','','once','hide','100','Equal','20','closed','10:00','18:50',NULL,'2023-11-14','2023-11-14 16:48:29.000000','18:50','india',NULL,'yes',NULL,'manual','0'),(10,'2',NULL,NULL,'3','2','','','','','repeat','hide','100','Equal','20','closed','10:51','18:52',NULL,'2023-11-15','2023-11-15 10:52:16.000000','18:52','india',NULL,'yes',NULL,'manual','0'),(11,'2',NULL,NULL,'test3','4','','','','','once','show','100','Equal','20','Open_Book','14:33','18:33',NULL,'2023-11-15','2023-11-15 14:33:58.000000','18:33','india',NULL,'no',NULL,'manual','0'),(12,'2',NULL,NULL,'attempExam','4','','','','','once','show','100','Equal','20','Open_Book','10:19','18:20',NULL,'2023-11-22','2023-11-22 10:20:21.000000','2023-11-25','india',NULL,'no',NULL,'manual','3');
/*!40000 ALTER TABLE `examname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examsubcategory`
--

DROP TABLE IF EXISTS `examsubcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examsubcategory` (
  `id` int(11) NOT NULL,
  `examId` varchar(255) DEFAULT NULL,
  `examSubject` varchar(255) DEFAULT NULL,
  `subjectPercentage` varchar(255) DEFAULT NULL,
  `exam_marks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examsubcategory`
--

LOCK TABLES `examsubcategory` WRITE;
/*!40000 ALTER TABLE `examsubcategory` DISABLE KEYS */;
INSERT INTO `examsubcategory` VALUES (1,'1','3','20',NULL),(2,'2','2','10',NULL),(3,'3','2','10','10'),(4,'3','1','0','0'),(5,'3','1','0','0'),(6,'3','1','0','0'),(7,'4','2','10','10'),(8,'4','1','0','0'),(9,'4','1','0','0'),(10,'4','1','0','0'),(11,'5','2','10','10'),(12,'6','2','10','10'),(13,'7','1','20','20'),(14,'8','1','30','30'),(15,'9','2','20','20'),(16,'9','3','20','20'),(17,'9','1','20','20'),(18,'10','2','20','20'),(19,'10','3','20','20'),(20,'10','1','20','20'),(21,'11','2','20','20'),(22,'11','3','20','20'),(23,'11','1','20','20'),(24,'5','1','50','50'),(25,'5','2','20','20'),(26,'5','3','30','30'),(27,'6','1','50','30'),(28,'6','2','50','50'),(29,'6','3','0','20'),(30,'7','1','100','100'),(31,'7','3','0','0'),(32,'7','2','0','0'),(33,'8','3','50','50'),(34,'8','2','50','50'),(35,'8','4','0','0'),(36,'9','1','20','20'),(37,'9','2','30','30'),(38,'9','3','50','50'),(39,'10','1','40','40'),(40,'10','2','40','40'),(41,'10','3','20','20'),(42,'11','1','40','40'),(43,'11','2','50','50'),(44,'11','3','10','10'),(45,'12','1','20','20'),(46,'12','2','30','30'),(47,'12','6','50','50'),(48,'5','1','50','50'),(49,'6','1','25','25'),(50,'6','2','25','25'),(51,'6','3','0','0'),(52,'6','4','0','0'),(53,'6','5','0','0'),(54,'6','6','0','0'),(55,'6','7','0','0'),(56,'6','8','0','0'),(57,'6','9','0','0'),(58,'6','10','50','50'),(59,'7','1','50','50'),(60,'7','2','50','50'),(61,'7','3','0','0'),(62,'7','4','0','0'),(63,'7','5','0','0'),(64,'7','6','0','0'),(65,'7','7','0','0'),(66,'7','8','0','0'),(67,'7','9','0','0'),(68,'7','10','0','0'),(119,'13','1','100','100'),(120,'13','2','0','0'),(121,'13','3','0','0'),(122,'13','4','0','0'),(123,'13','5','0','0'),(124,'13','6','0','0'),(125,'13','7','0','0'),(126,'13','8','0','0'),(127,'13','9','0','0'),(128,'13','10','0','0');
/*!40000 ALTER TABLE `examsubcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examtype`
--

DROP TABLE IF EXISTS `examtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examtype` (
  `id` int(11) NOT NULL,
  `examId` varchar(255) DEFAULT NULL,
  `examType` varchar(255) DEFAULT NULL,
  `examTypePercentage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examtype`
--

LOCK TABLES `examtype` WRITE;
/*!40000 ALTER TABLE `examtype` DISABLE KEYS */;
INSERT INTO `examtype` VALUES (1,'1','mcq','20'),(2,'2','mcq','20'),(3,'3','trueOrFalse','40'),(4,'3','mcq','50'),(5,'3','trueOrFalse','10'),(6,'4','trueOrFalse','40'),(7,'4','mcq','50'),(8,'4','trueOrFalse','10'),(9,'5','mcq','10'),(10,'5','mcq','0'),(11,'5','mcq','0'),(12,'5','mcq','0'),(13,'6','mcq','10'),(14,'6','mcq','0'),(15,'6','mcq','0'),(16,'6','mcq','0'),(17,'7','trueOrFalse','20'),(18,'8','mcq','30'),(19,'9','trueOrFalse','20'),(20,'9','trueOrFalse','20'),(21,'9','mcq','20'),(22,'10','trueOrFalse','20'),(23,'10','trueOrFalse','20'),(24,'10','mcq','20'),(25,'11','trueOrFalse','20'),(26,'11','trueOrFalse','20'),(27,'11','mcq','20'),(28,'5','mcq','100'),(29,'5','trueOrFalse','0'),(30,'5','digrame','0'),(31,'6','mcq','100'),(32,'6','trueOrFalse','0'),(33,'6','digrame','0'),(34,'7','mcq','100'),(35,'7','trueOrFalse','0'),(36,'7','digrame','0'),(37,'8','mcq','100'),(38,'8','trueOrFalse','0'),(39,'8','digrame','0'),(40,'9','mcq','100'),(41,'9','trueOrFalse','0'),(42,'9','digrame','0'),(43,'10','mcq','100'),(44,'10','trueOrFalse','0'),(45,'10','digrame','0'),(46,'11','mcq','100'),(47,'11','trueOrFalse','0'),(48,'11','digrame','0'),(49,'12','mcq','100'),(50,'12','trueOrFalse','0'),(51,'12','digrame','0'),(52,'5','mcq','100'),(53,'6','mcq','25'),(54,'6','true_false','25'),(55,'6','digrame','50'),(56,'7','mcq','50'),(57,'7','true_false','30'),(58,'7','digrame','20'),(74,'13','mcq','100'),(75,'13','true_false','0'),(76,'13','digrame','0');
/*!40000 ALTER TABLE `examtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra_item_subitem`
--

DROP TABLE IF EXISTS `extra_item_subitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extra_item_subitem` (
  `id` int(255) NOT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `grade_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra_item_subitem`
--

LOCK TABLES `extra_item_subitem` WRITE;
/*!40000 ALTER TABLE `extra_item_subitem` DISABLE KEYS */;
INSERT INTO `extra_item_subitem` VALUES (1,'5','29','4','sim','item','26'),(2,'6','29','4','sim','item','26'),(3,'7','29','4','sim','item','26'),(4,'8','29','4','sim','item','26'),(5,'8','29','8','actual','item','16'),(6,'9','29','8','actual','item','16'),(7,'10','29','8','actual','item','16'),(8,'11','29','8','actual','item','16'),(9,'12','29','8','actual','item','16'),(10,'13','29','8','actual','item','16'),(11,'14','29','8','actual','item','16'),(12,'15','29','8','actual','item','16'),(13,'16','29','8','actual','item','16'),(14,'17','29','8','actual','item','16'),(15,'18','29','8','actual','item','16'),(16,'19','29','8','actual','item','16'),(17,'20','29','8','actual','item','16'),(18,'21','29','8','actual','item','16'),(19,'22','29','8','actual','item','16'),(20,'23','29','8','actual','item','16'),(21,'24','29','8','actual','item','16'),(22,'25','29','8','actual','item','16'),(23,'26','29','8','actual','item','16'),(24,'27','29','8','actual','item','16'),(25,'1','29','8','actual','subitem','16'),(26,'4','29','8','actual','subitem','16'),(27,'7','29','8','actual','subitem','16'),(28,'8','29','8','actual','subitem','16');
/*!40000 ALTER TABLE `extra_item_subitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra_item_subitem_cl`
--

DROP TABLE IF EXISTS `extra_item_subitem_cl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extra_item_subitem_cl` (
  `id` int(255) NOT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `cloneid` varchar(255) DEFAULT NULL,
  `grade_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra_item_subitem_cl`
--

LOCK TABLES `extra_item_subitem_cl` WRITE;
/*!40000 ALTER TABLE `extra_item_subitem_cl` DISABLE KEYS */;
/*!40000 ALTER TABLE `extra_item_subitem_cl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra_item_subitem_grades`
--

DROP TABLE IF EXISTS `extra_item_subitem_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extra_item_subitem_grades` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra_item_subitem_grades`
--

LOCK TABLES `extra_item_subitem_grades` WRITE;
/*!40000 ALTER TABLE `extra_item_subitem_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `extra_item_subitem_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra_item_subitem_grades_cl`
--

DROP TABLE IF EXISTS `extra_item_subitem_grades_cl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extra_item_subitem_grades_cl` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cloneid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra_item_subitem_grades_cl`
--

LOCK TABLES `extra_item_subitem_grades_cl` WRITE;
/*!40000 ALTER TABLE `extra_item_subitem_grades_cl` DISABLE KEYS */;
/*!40000 ALTER TABLE `extra_item_subitem_grades_cl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favouritefiles`
--

DROP TABLE IF EXISTS `favouritefiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favouritefiles` (
  `id` int(11) NOT NULL,
  `favouriteColors` varchar(255) DEFAULT NULL,
  `fileId` varchar(255) DEFAULT NULL,
  `fileType` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favouritefiles`
--

LOCK TABLES `favouritefiles` WRITE;
/*!40000 ALTER TABLE `favouritefiles` DISABLE KEYS */;
INSERT INTO `favouritefiles` VALUES (1,'#dc3545','20','user','11'),(2,'#ffc107','30','user','11'),(3,'#007bff','1','user','11');
/*!40000 ALTER TABLE `favouritefiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favouritepages`
--

DROP TABLE IF EXISTS `favouritepages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favouritepages` (
  `id` int(11) NOT NULL,
  `favouriteColors` varchar(255) DEFAULT NULL,
  `pageId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favouritepages`
--

LOCK TABLES `favouritepages` WRITE;
/*!40000 ALTER TABLE `favouritepages` DISABLE KEYS */;
/*!40000 ALTER TABLE `favouritepages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_briefcase`
--

DROP TABLE IF EXISTS `file_briefcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_briefcase` (
  `id` int(11) NOT NULL,
  `brief_id` varchar(30) NOT NULL,
  `breif_type` varchar(30) DEFAULT NULL,
  `file_id` varchar(30) DEFAULT NULL,
  `file_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_briefcase`
--

LOCK TABLES `file_briefcase` WRITE;
/*!40000 ALTER TABLE `file_briefcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_briefcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_briefcase_folder`
--

DROP TABLE IF EXISTS `file_briefcase_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_briefcase_folder` (
  `id` int(11) NOT NULL,
  `folder_id` varchar(30) NOT NULL,
  `file_id` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_briefcase_folder`
--

LOCK TABLES `file_briefcase_folder` WRITE;
/*!40000 ALTER TABLE `file_briefcase_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_briefcase_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_menu_name`
--

DROP TABLE IF EXISTS `file_menu_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_menu_name` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `type_menu` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_menu_name`
--

LOCK TABLES `file_menu_name` WRITE;
/*!40000 ALTER TABLE `file_menu_name` DISABLE KEYS */;
INSERT INTO `file_menu_name` VALUES (4,'Mega Menu1','megmenu',NULL),(8,'Menu','menu',NULL),(9,'Menu123','menu',''),(10,'Menu1180000','menu',''),(11,'menucheck','menu','#fd1717'),(12,'megacheck','megmenu','#27e10e');
/*!40000 ALTER TABLE `file_menu_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filepermissions`
--

DROP TABLE IF EXISTS `filepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filepermissions` (
  `id` int(11) NOT NULL,
  `pageId` varchar(255) DEFAULT NULL,
  `permissionId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `permissionType` varchar(255) DEFAULT NULL,
  `phaseId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filepermissions`
--

LOCK TABLES `filepermissions` WRITE;
/*!40000 ALTER TABLE `filepermissions` DISABLE KEYS */;
INSERT INTO `filepermissions` VALUES (1,'30','11','Everyone','blue','readOnly',NULL),(2,'31','11','Everyone','blue','readOnly',NULL),(3,'32','11','Everyone','blue','readOnly',NULL),(4,'33','11','Everyone','blue','readOnly',NULL),(5,'34','11','Everyone','blue','readOnly',NULL),(6,'35','11','Everyone','blue','readOnly',NULL),(7,'36','11','Everyone','blue','readOnly',NULL),(9,'37','11','Everyone','blue','readOnly',NULL),(10,'38','11','Everyone','blue','readOnly',NULL),(11,'39','11','Everyone','blue','readOnly',NULL),(12,'40','11','Everyone','blue','readOnly',NULL),(14,'42','11','Everyone','blue','readOnly',NULL),(15,'43','11','Everyone','blue','readOnly',NULL),(16,'44','11','Everyone','blue','readOnly',NULL),(17,'45','11','Everyone','blue','readOnly',NULL),(18,'46','11','Everyone','blue','readOnly',NULL),(19,'47','11','Everyone','blue','readOnly',NULL),(20,'48','11','Everyone','blue','readOnly',NULL),(21,'49','11','Everyone','blue','readOnly',NULL),(22,'50','11','Everyone','blue','readOnly',NULL),(23,'51','11','Everyone','blue','readOnly',NULL),(24,'52','11','Everyone','blue','readOnly',NULL),(25,'53','11','Everyone','blue','readOnly',NULL),(26,'54','11','Everyone','blue','readOnly',NULL),(27,'55','11','Everyone','blue','readOnly',NULL),(28,'56','11','Everyone','blue','readOnly',NULL),(29,'57','12','Everyone','blue','readOnly',NULL),(30,'58','11','Everyone','blue','readOnly',NULL),(31,'59','11','Everyone','blue','readOnly',NULL),(32,'60','11','Everyone','blue','readOnly',NULL),(33,'61','11','Everyone','blue','readOnly',NULL),(34,'62','11','Everyone','blue','readOnly',NULL),(35,'63','11','Everyone','blue','readOnly',NULL),(36,'64','12','Everyone','blue','readOnly',NULL),(37,'65','11','Everyone','blue','readOnly',NULL),(38,'66','11','All instructor','yellow','readOnly',NULL),(39,'67','11','All instructor','yellow','readOnly',NULL),(41,'69','11','Everyone','blue','readOnly',NULL),(42,'70','11','Everyone','blue','readOnly',NULL),(43,'71','11','Everyone','blue','readOnly',NULL);
/*!40000 ALTER TABLE `filepermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filepermissionsfm`
--

DROP TABLE IF EXISTS `filepermissionsfm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filepermissionsfm` (
  `id` int(11) NOT NULL,
  `pageId` varchar(255) DEFAULT NULL,
  `permissionId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filepermissionsfm`
--

LOCK TABLES `filepermissionsfm` WRITE;
/*!40000 ALTER TABLE `filepermissionsfm` DISABLE KEYS */;
/*!40000 ALTER TABLE `filepermissionsfm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(2000) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `content` longblob DEFAULT NULL,
  `file_Type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folder_shop_user`
--

DROP TABLE IF EXISTS `folder_shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folder_shop_user` (
  `id` int(30) NOT NULL,
  `folder_id` varchar(30) NOT NULL,
  `shelf_id` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `shop_id` varchar(30) NOT NULL,
  `lib_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folder_shop_user`
--

LOCK TABLES `folder_shop_user` WRITE;
/*!40000 ALTER TABLE `folder_shop_user` DISABLE KEYS */;
INSERT INTO `folder_shop_user` VALUES (1,'2','1','11','2','1'),(2,'9','1','11','6','1');
/*!40000 ALTER TABLE `folder_shop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` int(11) NOT NULL,
  `folder` varchar(30) NOT NULL,
  `fileName` varchar(30) DEFAULT NULL,
  `phaseId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
INSERT INTO `folders` VALUES (2,'folder00',NULL,NULL),(3,'folder3',NULL,NULL),(4,'folder',NULL,NULL),(6,'folder5',NULL,NULL),(7,'folder0',NULL,NULL),(8,'folder2',NULL,NULL),(9,'folder r',NULL,NULL),(10,'folder 178',NULL,NULL),(11,'jdlkjdkl',NULL,NULL),(12,'phase1',NULL,'8'),(13,'Driving',NULL,'1');
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frame_cert`
--

DROP TABLE IF EXISTS `frame_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frame_cert` (
  `id` int(255) NOT NULL,
  `cert_id` varchar(255) DEFAULT NULL,
  `image_height` varchar(255) DEFAULT NULL,
  `image_width` varchar(255) DEFAULT NULL,
  `border_radius` varchar(255) DEFAULT NULL,
  `border` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frame_cert`
--

LOCK TABLES `frame_cert` WRITE;
/*!40000 ALTER TABLE `frame_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `frame_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goals`
--

DROP TABLE IF EXISTS `goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goals` (
  `id` int(11) NOT NULL,
  `goal` varchar(255) DEFAULT NULL,
  `phase` varchar(255) DEFAULT NULL,
  `ctp` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `days` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goals`
--

LOCK TABLES `goals` WRITE;
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
/*!40000 ALTER TABLE `goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_per`
--

DROP TABLE IF EXISTS `grade_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_per` (
  `id` int(30) NOT NULL,
  `grade` varchar(30) DEFAULT NULL,
  `permission` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_per`
--

LOCK TABLES `grade_per` WRITE;
/*!40000 ALTER TABLE `grade_per` DISABLE KEYS */;
INSERT INTO `grade_per` VALUES (2,'U','0'),(3,'F','0'),(4,'G','0'),(5,'V','0'),(6,'E','0'),(7,'N','0');
/*!40000 ALTER TABLE `grade_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_per_notifications`
--

DROP TABLE IF EXISTS `grade_per_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_per_notifications` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `to_userid` varchar(30) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT NULL,
  `permission` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_per_notifications`
--

LOCK TABLES `grade_per_notifications` WRITE;
/*!40000 ALTER TABLE `grade_per_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_per_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_permission`
--

DROP TABLE IF EXISTS `grade_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_permission` (
  `id` int(255) NOT NULL,
  `grade_id` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `cloneid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_permission`
--

LOCK TABLES `grade_permission` WRITE;
/*!40000 ALTER TABLE `grade_permission` DISABLE KEYS */;
INSERT INTO `grade_permission` VALUES (1,'22','E','1',NULL);
/*!40000 ALTER TABLE `grade_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_permission_clone`
--

DROP TABLE IF EXISTS `grade_permission_clone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_permission_clone` (
  `id` int(255) NOT NULL,
  `grade_id` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `clone_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_permission_clone`
--

LOCK TABLES `grade_permission_clone` WRITE;
/*!40000 ALTER TABLE `grade_permission_clone` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_permission_clone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradeaheet_clear_reason`
--

DROP TABLE IF EXISTS `gradeaheet_clear_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradeaheet_clear_reason` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `gradesheetId` varchar(255) DEFAULT NULL,
  `clearDate` varchar(255) DEFAULT NULL,
  `clearTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradeaheet_clear_reason`
--

LOCK TABLES `gradeaheet_clear_reason` WRITE;
/*!40000 ALTER TABLE `gradeaheet_clear_reason` DISABLE KEYS */;
INSERT INTO `gradeaheet_clear_reason` VALUES (1,'11','hello','8','2023-07-31','13:07:16'),(2,'12','hgdjdgjk','2','2023-08-07','10:32:46'),(3,'15','khasdiadibaidgy','4','2023-08-11','05:25:48'),(4,'15','akshdiuwadigqw8yd','4','2023-08-11','05:39:03'),(5,'12','jHSBuasgbyd iuasbdahydihau iasbnduah','1','2023-08-11','06:46:00'),(6,'12','kuhsduiqwuidbqwuidbuiqwebd kq ybqeyidb','1','2023-08-11','08:37:46'),(7,'12','asxkhbisgxyqqhj qwy  hjqw uh quw ','4','2023-08-11','09:32:43'),(8,'12','kjhiqwuhxuqwuxbqwuibsibqwiiqwnq ','4','2023-08-11','09:34:01'),(9,'11','dmnfbfmhk','6','2023-08-17','10:57:54'),(10,'12','htrh','9','2023-08-17','11:56:15'),(11,'12','ger','16','2023-08-17','11:58:15'),(12,'12','fcfcerfrcf','16','2023-08-21','08:04:45'),(13,'12','e5y5','22','2023-08-22','13:42:44'),(14,'12','dff','23','2023-08-22','14:30:00'),(15,'12','fnhzn','2','2023-11-21','05:40:24');
/*!40000 ALTER TABLE `gradeaheet_clear_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradesheet`
--

DROP TABLE IF EXISTS `gradesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradesheet` (
  `id` int(30) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `phase_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `class_id` varchar(30) DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL,
  `instructor` varchar(30) DEFAULT NULL,
  `vehicle` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `duration_hours` varchar(3) DEFAULT NULL,
  `duration_min` varchar(3) DEFAULT NULL,
  `over_all_grade` varchar(30) DEFAULT NULL,
  `over_all_grade_per` varchar(30) DEFAULT NULL,
  `over_all_comment` varchar(3000) DEFAULT NULL,
  `comments` varchar(3000) DEFAULT NULL,
  `gradsheet_status` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradesheet`
--

LOCK TABLES `gradesheet` WRITE;
/*!40000 ALTER TABLE `gradesheet` DISABLE KEYS */;
INSERT INTO `gradesheet` VALUES (1,'29','1','1','1','actual','12','1','12:18','2023-11-29','12','05','U','10',' ,mkjbk','\r\n                          ','1','1','2023-11-29 12:19:06.000000');
/*!40000 ALTER TABLE `gradesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradsheet_final_hashoff`
--

DROP TABLE IF EXISTS `gradsheet_final_hashoff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradsheet_final_hashoff` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `hash_off` varchar(255) DEFAULT NULL,
  `hash_off_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradsheet_final_hashoff`
--

LOCK TABLES `gradsheet_final_hashoff` WRITE;
/*!40000 ALTER TABLE `gradsheet_final_hashoff` DISABLE KEYS */;
INSERT INTO `gradsheet_final_hashoff` VALUES (1,'18','8','actual','1','0'),(2,'18','8','actual','2','0'),(3,'29','8','actual','1','2'),(4,'29','8','actual','2','5'),(5,'13','8','actual','1','1'),(6,'13','8','actual','2','1'),(7,'27','8','actual','1','0'),(8,'27','8','actual','2','0'),(9,'29','4','actual','1','0'),(10,'29','4','actual','2','0'),(11,'29','4','actual','3','0'),(12,'29','4','actual','4','0'),(13,'29','4','actual','5','0'),(14,'29','4','actual','6','0'),(15,'29','4','sim','1','0'),(16,'29','4','sim','2','0'),(17,'29','4','sim','3','0'),(18,'29','4','sim','4','0');
/*!40000 ALTER TABLE `gradsheet_final_hashoff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradsheet_final_hashoff_cl`
--

DROP TABLE IF EXISTS `gradsheet_final_hashoff_cl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradsheet_final_hashoff_cl` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `hash_off` varchar(255) DEFAULT NULL,
  `hash_off_value` varchar(255) DEFAULT NULL,
  `cloneid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradsheet_final_hashoff_cl`
--

LOCK TABLES `gradsheet_final_hashoff_cl` WRITE;
/*!40000 ALTER TABLE `gradsheet_final_hashoff_cl` DISABLE KEYS */;
INSERT INTO `gradsheet_final_hashoff_cl` VALUES (1,'29','4','actual','1','0','2'),(2,'29','4','actual','2','0','2'),(3,'29','4','actual','3','0','2'),(4,'29','4','actual','4','0','2'),(5,'29','4','actual','5','0','2'),(6,'29','4','actual','6','0','2'),(7,'29','8','actual','1','0','1'),(8,'29','8','actual','2','0','1'),(9,'29','4','actual','1','0','1'),(10,'29','4','actual','2','0','1'),(11,'29','4','actual','3','0','1'),(12,'29','4','actual','4','0','1'),(13,'29','4','actual','5','0','1'),(14,'29','4','actual','6','0','1'),(15,'29','4','sim','1','0','1'),(16,'29','4','sim','2','0','1'),(17,'29','4','sim','3','0','1'),(18,'29','4','sim','4','0','1');
/*!40000 ALTER TABLE `gradsheet_final_hashoff_cl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_student_scheduling`
--

DROP TABLE IF EXISTS `group_student_scheduling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_student_scheduling` (
  `id` int(30) NOT NULL,
  `std_id` int(30) NOT NULL,
  `group_id` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_student_scheduling`
--

LOCK TABLES `group_student_scheduling` WRITE;
/*!40000 ALTER TABLE `group_student_scheduling` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_student_scheduling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupchats`
--

DROP TABLE IF EXISTS `groupchats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupchats` (
  `id` int(11) NOT NULL,
  `senderId` varchar(255) DEFAULT NULL,
  `groupId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `fileType` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `msgEdit` varchar(255) DEFAULT NULL,
  `deleteStatus` varchar(255) DEFAULT NULL,
  `replyMsg` varchar(255) DEFAULT NULL,
  `replyStatus` varchar(255) DEFAULT NULL,
  `loca` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupchats`
--

LOCK TABLES `groupchats` WRITE;
/*!40000 ALTER TABLE `groupchats` DISABLE KEYS */;
INSERT INTO `groupchats` VALUES (1,'11','2',NULL,'hii',NULL,NULL,'2023-11-02 12:08:50',NULL,NULL,NULL,NULL,NULL),(2,'11','2',NULL,'48','file',NULL,'2023-11-02 12:16:24',NULL,NULL,NULL,NULL,'userfile'),(3,'11','2',NULL,'49','file',NULL,'2023-11-02 12:18:32',NULL,NULL,NULL,NULL,'userfile'),(6,'11','2',NULL,'51',NULL,NULL,'2023-11-02 12:25:16','Edited',NULL,NULL,NULL,'userfile'),(7,'11','2',NULL,'52',NULL,NULL,'2023-11-02 12:28:42','Edited',NULL,NULL,NULL,'userfile'),(8,'11','2',NULL,'C:\\xampp\\htdocs',NULL,NULL,'2023-11-02 12:32:48',NULL,NULL,'nice','yes',NULL),(9,'11','2',NULL,'C:\\xampp\\htdocs',NULL,NULL,'2023-11-02 12:41:09',NULL,NULL,'good','yes',NULL),(10,'11','2',NULL,'9',NULL,NULL,'2023-11-02 12:45:26','Edited',NULL,NULL,NULL,'page'),(11,'11','2',NULL,'group page',NULL,NULL,'2023-11-02 12:54:03',NULL,NULL,'ohh','yes',NULL),(12,'11','3',NULL,'9',NULL,NULL,'2023-11-02 13:04:12',NULL,NULL,NULL,NULL,'page'),(13,'11','2',NULL,'group page',NULL,NULL,'2023-11-02 13:05:05',NULL,NULL,',,','yes',NULL),(14,'11','3',NULL,'52',NULL,NULL,'2023-11-02 13:15:42',NULL,NULL,NULL,NULL,NULL),(15,'11','2',NULL,'C:xampphtdocs',NULL,NULL,'2023-11-02 13:16:22',NULL,NULL,'wow','yes',NULL),(16,'11','3',NULL,'51',NULL,NULL,'2023-11-02 13:16:31',NULL,NULL,NULL,NULL,NULL),(17,'11','2',NULL,'Python Probation Task (1).docx',NULL,NULL,'2023-11-02 13:16:51',NULL,NULL,'good','yes',NULL),(18,'11','3',NULL,'49','file',NULL,'2023-11-02 13:18:22',NULL,NULL,NULL,NULL,'userfile'),(19,'11','3',NULL,'48','file',NULL,'2023-11-02 13:18:46',NULL,NULL,NULL,NULL,'userfile'),(20,'11','2',NULL,'54','file',NULL,'2023-11-03 11:42:40',NULL,NULL,NULL,NULL,'userfile'),(21,'11','4',NULL,'10',NULL,NULL,'2023-11-07 14:15:56',NULL,NULL,NULL,NULL,'page'),(22,'12','4',NULL,'hii',NULL,NULL,'2023-11-07 14:27:41',NULL,NULL,NULL,NULL,NULL),(23,'12','4',NULL,'hello',NULL,NULL,'2023-11-07 14:28:16',NULL,NULL,NULL,NULL,NULL),(24,'11','4',NULL,'63',NULL,NULL,'2023-11-07 14:34:56',NULL,NULL,NULL,NULL,'userfile'),(25,'11','4',NULL,'hii',NULL,NULL,'2023-11-17 13:17:51',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `groupchats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupdeleteforme`
--

DROP TABLE IF EXISTS `groupdeleteforme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupdeleteforme` (
  `id` int(11) NOT NULL,
  `msgId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupdeleteforme`
--

LOCK TABLES `groupdeleteforme` WRITE;
/*!40000 ALTER TABLE `groupdeleteforme` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupdeleteforme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupmember`
--

DROP TABLE IF EXISTS `groupmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupmember` (
  `id` int(11) NOT NULL,
  `groupId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupmember`
--

LOCK TABLES `groupmember` WRITE;
/*!40000 ALTER TABLE `groupmember` DISABLE KEYS */;
INSERT INTO `groupmember` VALUES (15,'4','12','member','2023-11-03'),(16,'4','13','member','2023-11-03'),(17,'4','14','member','2023-11-03'),(18,'4','11','admin','2023-11-03');
/*!40000 ALTER TABLE `groupmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashoff`
--

DROP TABLE IF EXISTS `hashoff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashoff` (
  `id` int(30) NOT NULL,
  `hashoff` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `class_id` varchar(30) DEFAULT NULL,
  `phase_id` varchar(30) DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashoff`
--

LOCK TABLES `hashoff` WRITE;
/*!40000 ALTER TABLE `hashoff` DISABLE KEYS */;
INSERT INTO `hashoff` VALUES (1,'hashoff 1',NULL,NULL,NULL,NULL),(2,'hashoff 2',NULL,NULL,NULL,NULL),(3,'hashoff 3',NULL,NULL,NULL,NULL),(4,'hashoff 4',NULL,NULL,NULL,NULL),(5,'hash 5',NULL,NULL,NULL,NULL),(6,'hash 6',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `hashoff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashoff_gradesheet`
--

DROP TABLE IF EXISTS `hashoff_gradesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashoff_gradesheet` (
  `id` int(11) NOT NULL,
  `classId` varchar(255) DEFAULT NULL,
  `phaseId` varchar(255) DEFAULT NULL,
  `ctpId` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  `hashCheck` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashoff_gradesheet`
--

LOCK TABLES `hashoff_gradesheet` WRITE;
/*!40000 ALTER TABLE `hashoff_gradesheet` DISABLE KEYS */;
INSERT INTO `hashoff_gradesheet` VALUES (1,'4','1','1','actual','1'),(2,'4','1','1','actual','2'),(3,'4','1','1','actual','3'),(4,'4','1','1','actual','4'),(5,'4','1','1','actual','5'),(6,'4','1','1','actual','6'),(7,'8','1','1','actual','1'),(8,'8','1','1','actual','2'),(9,'4','1','1','sim','1'),(10,'4','1','1','sim','2'),(11,'4','1','1','sim','3'),(12,'4','1','1','sim','4');
/*!40000 ALTER TABLE `hashoff_gradesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heading_cert`
--

DROP TABLE IF EXISTS `heading_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heading_cert` (
  `cert_id` varchar(255) NOT NULL,
  `headings_name` varchar(255) NOT NULL,
  `font_size_height` varchar(255) DEFAULT NULL,
  `heading_text_value` varchar(255) DEFAULT NULL,
  `headings_style` varchar(255) NOT NULL,
  `heading_backgoround` varchar(255) NOT NULL,
  `heading_text` varchar(255) NOT NULL,
  `text_type_heading` varchar(255) NOT NULL,
  `font_family` varchar(255) NOT NULL,
  `id` int(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heading_cert`
--

LOCK TABLES `heading_cert` WRITE;
/*!40000 ALTER TABLE `heading_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `heading_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holydays`
--

DROP TABLE IF EXISTS `holydays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holydays` (
  `id` int(11) NOT NULL,
  `startDate` varchar(255) DEFAULT NULL,
  `endDate` varchar(255) DEFAULT NULL,
  `holyDayName` varchar(255) DEFAULT NULL,
  `departMentId` varchar(255) DEFAULT NULL,
  `leaveType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holydays`
--

LOCK TABLES `holydays` WRITE;
/*!40000 ALTER TABLE `holydays` DISABLE KEYS */;
INSERT INTO `holydays` VALUES (1,'2023-09-14','2023-09-06','Diwali','1','planned'),(2,'2023-09-08','2023-09-07','Dasherra',NULL,'unPlanned');
/*!40000 ALTER TABLE `holydays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage`
--

DROP TABLE IF EXISTS `homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage` (
  `id` int(11) NOT NULL,
  `file_name` varchar(30) DEFAULT NULL,
  `uploaded_on` varchar(30) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `additional` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage`
--

LOCK TABLES `homepage` WRITE;
/*!40000 ALTER TABLE `homepage` DISABLE KEYS */;
INSERT INTO `homepage` VALUES (1,'kudos.jpg','2023-07-17','11','1','Driving school',NULL,'Hello world','Dubai','8765432190','ayushi260395@gmail.com','asdfghjkl','dfghjkl'),(2,NULL,NULL,'11','1','department 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,'11','1','department 3',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,'11','1','department 4',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,'11','1','department 5',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horizontal_cert`
--

DROP TABLE IF EXISTS `horizontal_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horizontal_cert` (
  `id` int(255) NOT NULL,
  `cert_id` varchar(255) DEFAULT NULL,
  `widht` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horizontal_cert`
--

LOCK TABLES `horizontal_cert` WRITE;
/*!40000 ALTER TABLE `horizontal_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `horizontal_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_cert`
--

DROP TABLE IF EXISTS `image_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_cert` (
  `id` int(255) NOT NULL,
  `cert_id` varchar(255) NOT NULL,
  `image_of_image` varchar(255) NOT NULL,
  `image_width` varchar(255) NOT NULL,
  `image_height` varchar(255) NOT NULL,
  `border_radius` varchar(255) NOT NULL,
  `border` varchar(255) NOT NULL,
  `border_color` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_cert`
--

LOCK TABLES `image_cert` WRITE;
/*!40000 ALTER TABLE `image_cert` DISABLE KEYS */;
INSERT INTO `image_cert` VALUES (1,'1','1','100','100','5','9','#000000','0');
/*!40000 ALTER TABLE `image_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(30) NOT NULL,
  `item` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `class_id` varchar(30) DEFAULT NULL,
  `phase_id` varchar(30) DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL,
  `CTS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'1','1','1','1','actual','1'),(2,'2','1','1','1','actual','1'),(5,'1','1','4','1','actual',NULL),(6,'2','1','4','1','actual',NULL),(7,'3','1','4','1','actual',NULL),(8,'4','1','4','1','actual',NULL),(9,'5','1','4','1','actual',NULL),(10,'6','1','4','1','actual',NULL),(11,'7','1','4','1','actual',NULL),(12,'1','1','8','1','actual',NULL),(13,'2','1','8','1','actual',NULL),(14,'3','1','8','1','actual',NULL),(15,'4','1','8','1','actual',NULL),(16,'5','1','8','1','actual',NULL),(17,'6','1','8','1','actual',NULL),(18,'7','1','8','1','actual',NULL),(19,'1','1','9','1','actual',NULL),(20,'2','1','9','1','actual',NULL),(21,'3','1','9','1','actual',NULL),(22,'4','1','9','1','actual',NULL),(23,'5','1','9','1','actual',NULL),(24,'6','1','9','1','actual',NULL),(25,'7','1','9','1','actual',NULL),(26,'1','1','2','1','actual',NULL),(27,'1','2','3','1','sim',NULL),(28,'2','2','3','1','sim',NULL),(29,'3','2','3','1','sim',NULL),(30,'1','2','2','1','sim',NULL),(31,'2','2','2','1','sim',NULL),(32,'3','2','2','1','sim',NULL),(33,'4','2','2','1','sim',NULL),(34,'1','1','4','1','sim',NULL),(35,'2','1','4','1','sim',NULL),(36,'3','1','4','1','sim',NULL),(37,'4','1','4','1','sim',NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_clone_gradesheet`
--

DROP TABLE IF EXISTS `item_clone_gradesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_clone_gradesheet` (
  `id` int(30) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `item_id` varchar(30) DEFAULT NULL,
  `grade` varchar(30) DEFAULT NULL,
  `cloned_id` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_clone_gradesheet`
--

LOCK TABLES `item_clone_gradesheet` WRITE;
/*!40000 ALTER TABLE `item_clone_gradesheet` DISABLE KEYS */;
INSERT INTO `item_clone_gradesheet` VALUES (1,'29','1','F','1','2023-11-29'),(2,'29','2','U','1','2023-11-29');
/*!40000 ALTER TABLE `item_clone_gradesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_gradesheet`
--

DROP TABLE IF EXISTS `item_gradesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_gradesheet` (
  `id` int(30) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `item_id` varchar(30) DEFAULT NULL,
  `grade` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_gradesheet`
--

LOCK TABLES `item_gradesheet` WRITE;
/*!40000 ALTER TABLE `item_gradesheet` DISABLE KEYS */;
INSERT INTO `item_gradesheet` VALUES (1,'29','1','U','2023-11-29'),(2,'29','2','F','2023-11-29');
/*!40000 ALTER TABLE `item_gradesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itembank`
--

DROP TABLE IF EXISTS `itembank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itembank` (
  `id` int(11) NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `U` varchar(255) DEFAULT NULL,
  `F` varchar(255) DEFAULT NULL,
  `G` varchar(255) DEFAULT NULL,
  `V` varchar(255) DEFAULT NULL,
  `E` varchar(255) DEFAULT NULL,
  `N` varchar(255) DEFAULT NULL,
  `CTScondition` varchar(255) DEFAULT NULL,
  `CTSstandards` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itembank`
--

LOCK TABLES `itembank` WRITE;
/*!40000 ALTER TABLE `itembank` DISABLE KEYS */;
INSERT INTO `itembank` VALUES (1,'item-1 has very long text ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'item-3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Item -1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'msarii',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'The click event is handled for the menu icon, and the .other-options element is toggled with slideToggle when the menu icon is clicked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'item-7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'General knowledge Page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'archana11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'msarii11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'ayushi11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'item-711',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'item-311',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'item-1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'archana78',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'item-378',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'msarii78',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'hello',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'helo1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'hlo2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'helo3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'helo8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'helo9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'helo7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'helo4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'gelo0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'shjkdkl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'dfjklddjfv',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `itembank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `library` varchar(30) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (1,'Main','super_admin'),(3,'library 2','11'),(4,'library 3','11');
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logo_cert`
--

DROP TABLE IF EXISTS `logo_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logo_cert` (
  `id` int(255) NOT NULL,
  `cert_id` varchar(255) DEFAULT NULL,
  `image_height` varchar(255) DEFAULT NULL,
  `image_width` varchar(255) DEFAULT NULL,
  `border_radius` varchar(255) DEFAULT NULL,
  `border` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logo_cert`
--

LOCK TABLES `logo_cert` WRITE;
/*!40000 ALTER TABLE `logo_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `logo_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_department`
--

DROP TABLE IF EXISTS `main_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_department` (
  `id` int(30) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_on` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `additional` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_department`
--

LOCK TABLES `main_department` WRITE;
/*!40000 ALTER TABLE `main_department` DISABLE KEYS */;
INSERT INTO `main_department` VALUES (1,'','','11','Alkarama','','','','','','');
/*!40000 ALTER TABLE `main_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_role_course_phase`
--

DROP TABLE IF EXISTS `manage_role_course_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manage_role_course_phase` (
  `id` int(30) NOT NULL,
  `phase_id` varchar(255) DEFAULT NULL,
  `intructor` varchar(255) DEFAULT NULL,
  `b_up_manger` varchar(255) DEFAULT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `phaseDate` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseCode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_role_course_phase`
--

LOCK TABLES `manage_role_course_phase` WRITE;
/*!40000 ALTER TABLE `manage_role_course_phase` DISABLE KEYS */;
INSERT INTO `manage_role_course_phase` VALUES (1,'1','12','12','1','2023-08-01','1','1'),(2,'3','12','12','1','2023-08-01','1','1'),(3,'1','12','12','22','2023-08-08','1','5'),(4,'3','12','12','22','2023-08-08','1','5');
/*!40000 ALTER TABLE `manage_role_course_phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark_distribution`
--

DROP TABLE IF EXISTS `mark_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mark_distribution` (
  `id` int(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `categories` varchar(30) DEFAULT NULL,
  `categories_data` varchar(30) DEFAULT NULL,
  `marks` int(30) DEFAULT NULL,
  `total_marks` int(30) DEFAULT NULL,
  `ctp` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark_distribution`
--

LOCK TABLES `mark_distribution` WRITE;
/*!40000 ALTER TABLE `mark_distribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `mark_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meesages`
--

DROP TABLE IF EXISTS `meesages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meesages` (
  `id` int(30) NOT NULL,
  `from_id` varchar(30) DEFAULT NULL,
  `to_id` varchar(30) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meesages`
--

LOCK TABLES `meesages` WRITE;
/*!40000 ALTER TABLE `meesages` DISABLE KEYS */;
INSERT INTO `meesages` VALUES (1,'11','11','hello','2023-08-02 15:51:40.000000');
/*!40000 ALTER TABLE `meesages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memo` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `inst_id` varchar(30) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `student_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `memomarks` varchar(30) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileExt` varchar(255) DEFAULT NULL,
  `categoryId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo`
--

LOCK TABLES `memo` WRITE;
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
INSERT INTO `memo` VALUES (1,'2023-08-02','11',NULL,'Memorandum for record','29','1','','item.csv','csv','1'),(2,'2023-08-08','11',NULL,'memo ','29','1','','Gardening Dep.csv','csv','3'),(3,'2023-09-04','11',NULL,'hello','29','1','2','','','absent'),(4,'2023-09-06','11',NULL,'hello','29','1','7','','','absent'),(5,'2023-10-10','11',NULL,'Hello','13','1','7','examform2.php','php','absent'),(6,'2023-10-09','11',NULL,'hello','13','1','70','document_test (2).sql','sql','2'),(7,'2023-10-08','11',NULL,'hello','16','1','3','','','absent'),(8,'2023-10-10','11',NULL,'h','16','1','20','test_updates (2) (1).sql','sql','2'),(9,'2023-11-03','11',NULL,'fgfgve','29','1','3','','','absent');
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memoabs`
--

DROP TABLE IF EXISTS `memoabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memoabs` (
  `id` int(11) NOT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `absday` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memoabs`
--

LOCK TABLES `memoabs` WRITE;
/*!40000 ALTER TABLE `memoabs` DISABLE KEYS */;
INSERT INTO `memoabs` VALUES (1,'29','2');
/*!40000 ALTER TABLE `memoabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memocate`
--

DROP TABLE IF EXISTS `memocate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memocate` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `marks` varchar(255) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memocate`
--

LOCK TABLES `memocate` WRITE;
/*!40000 ALTER TABLE `memocate` DISABLE KEYS */;
INSERT INTO `memocate` VALUES (1,'memo 1',NULL,'2023-08-09 16:07:15'),(2,'memo 2',NULL,'2023-08-09 16:07:15'),(3,'memo 33',NULL,'2023-08-09 16:07:15');
/*!40000 ALTER TABLE `memocate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_warnning`
--

DROP TABLE IF EXISTS `new_warnning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_warnning` (
  `id` int(11) NOT NULL,
  `notificationId` varchar(255) DEFAULT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `classId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_warnning`
--

LOCK TABLES `new_warnning` WRITE;
/*!40000 ALTER TABLE `new_warnning` DISABLE KEYS */;
INSERT INTO `new_warnning` VALUES (1,'59','29','actual','2'),(2,'68','29','actual','4'),(3,'69','29','actual','4');
/*!40000 ALTER TABLE `new_warnning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newcourse`
--

DROP TABLE IF EXISTS `newcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newcourse` (
  `Courseid` int(11) NOT NULL,
  `CourseName` varchar(255) DEFAULT NULL,
  `nick_name` varchar(30) DEFAULT NULL,
  `CourseDate` date DEFAULT NULL,
  `CourseCode` int(30) DEFAULT NULL,
  `StudentNames` varchar(255) DEFAULT NULL,
  `CourseManager` varchar(255) DEFAULT NULL,
  `file_name` varchar(30) DEFAULT NULL,
  `Instructor` varchar(30) DEFAULT NULL,
  `value_enter` varchar(30) DEFAULT NULL,
  `departmentId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newcourse`
--

LOCK TABLES `newcourse` WRITE;
/*!40000 ALTER TABLE `newcourse` DISABLE KEYS */;
INSERT INTO `newcourse` VALUES (13,'1','Driving Beginner','2023-07-07',3,'25','12',NULL,NULL,'',NULL),(17,'3','Servicing','2023-07-07',3,'22','15',NULL,NULL,'',NULL),(19,'4','Servicing','2023-07-26',3,'21','15',NULL,NULL,'',NULL),(21,'1','Driving Beginner','2023-07-11',4,'27','15',NULL,NULL,'',NULL),(22,'1','Parking School','2023-07-18',5,'29','12',NULL,NULL,'',NULL),(23,'1','Parking School','2023-07-20',6,'30','15',NULL,NULL,'',NULL),(24,'1','Parking School','2023-07-13',7,'31','15',NULL,NULL,'',NULL),(25,'2','Driving Beginner','2023-07-06',4,'33','12',NULL,NULL,'',NULL),(26,'2','Servicing','2023-07-14',5,'34','15',NULL,NULL,'',NULL),(27,'2','Parking School','2023-07-07',6,'35','15',NULL,NULL,'',NULL),(28,'2','Parking School','2023-07-24',7,'28','12',NULL,NULL,'',NULL),(29,'1','Driving Beginner','2023-07-13',8,'32','12',NULL,NULL,'',NULL),(30,'1','Parking School','2023-07-18',5,'13','15',NULL,NULL,NULL,NULL),(31,'1','Parking School','2023-07-18',5,'16','12',NULL,NULL,NULL,NULL),(32,'1','Parking School','2023-07-18',5,'14','12',NULL,NULL,NULL,NULL),(33,'1','Parking School','2023-07-18',5,'18','12',NULL,NULL,NULL,NULL),(34,'1','Parking School','2023-07-18',5,'19','12',NULL,NULL,NULL,NULL),(35,'1','Parking School','2023-07-18',5,'20','15',NULL,NULL,NULL,NULL),(36,'1','Parking School','2023-07-18',5,'23','15',NULL,NULL,NULL,NULL),(37,'1','Parking School','2023-07-18',5,'17','12',NULL,NULL,NULL,NULL),(38,'1','Parking School','2023-07-18',5,'24','12',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `newcourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newpage_fm`
--

DROP TABLE IF EXISTS `newpage_fm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newpage_fm` (
  `id` int(11) NOT NULL,
  `pageName` varchar(255) DEFAULT NULL,
  `editorData` longtext DEFAULT NULL,
  `folderid` int(30) DEFAULT NULL,
  `briefid` int(30) DEFAULT NULL,
  `breif_type` varchar(300) DEFAULT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `changeLog` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `userRole` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newpage_fm`
--

LOCK TABLES `newpage_fm` WRITE;
/*!40000 ALTER TABLE `newpage_fm` DISABLE KEYS */;
/*!40000 ALTER TABLE `newpage_fm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newpagechangelogdata`
--

DROP TABLE IF EXISTS `newpagechangelogdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newpagechangelogdata` (
  `id` int(11) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `changeLog` varchar(255) DEFAULT NULL,
  `pageId` varchar(255) DEFAULT NULL,
  `pageName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newpagechangelogdata`
--

LOCK TABLES `newpagechangelogdata` WRITE;
/*!40000 ALTER TABLE `newpagechangelogdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `newpagechangelogdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `to_userid` varchar(30) DEFAULT NULL,
  `if_admin` varchar(30) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `extra_data` varchar(100) DEFAULT NULL,
  `class_id` varchar(30) DEFAULT NULL,
  `class_name` varchar(30) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `permission` tinyint(1) NOT NULL DEFAULT 0,
  `date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'12','29',NULL,'academic','2','Has Accepted Academic For',NULL,NULL,0,0,'2023-11-15 16:47:31.000000'),(2,'12','13',NULL,'academic','2','Has Accepted Academic For',NULL,NULL,0,0,'2023-11-15 16:47:31.000000'),(3,'12','16',NULL,'academic','2','Has Accepted Academic For',NULL,NULL,0,0,'2023-11-15 16:47:31.000000'),(4,'12','14',NULL,'academic','2','Has Accepted Academic For',NULL,NULL,0,0,'2023-11-15 16:47:31.000000'),(5,'','29',NULL,'actual','1','filled your repeated gradsheet for',NULL,NULL,0,0,'2023-11-15 17:34:37.000000'),(6,'29','12',NULL,'actual','4','cloned_gradsheet',NULL,NULL,1,1,'2023-11-16 09:20:02.000000'),(7,'29','12',NULL,'actual','4','cloned_gradsheet',NULL,NULL,0,2,'2023-11-16 10:32:00.000000'),(8,'12','29',NULL,'academic','2','Has Accepted Academic For',NULL,NULL,0,0,'2023-11-16 11:05:36.000000'),(9,'12','13',NULL,'academic','2','Has Accepted Academic For',NULL,NULL,0,0,'2023-11-16 11:05:36.000000'),(10,'12','29',NULL,'actual','3','filled your gradsheet for',NULL,NULL,0,0,'2023-11-17 09:10:29.000000'),(11,'29','12',NULL,'actual','4','is selected to fill gradsheet of',NULL,NULL,1,0,'2023-11-17 09:13:53.000000'),(12,'12','29',NULL,'actual','4','filled your gradsheet for',NULL,NULL,0,0,'2023-11-17 09:14:10.000000'),(13,'29','12',NULL,'sim','1','is selected to fill gradsheet of',NULL,NULL,1,0,'2023-11-17 09:34:17.000000'),(14,'12','29',NULL,'sim','1','filled your gradsheet for',NULL,NULL,0,0,'2023-11-17 09:34:35.000000'),(15,'29','12',NULL,'actual','1','is selected to fill gradsheet of',NULL,NULL,1,0,'2023-11-21 09:52:44.000000'),(16,'12','29',NULL,'actual','1','filled your gradsheet for',NULL,NULL,0,0,'2023-11-21 09:53:12.000000'),(17,'29','12',NULL,'actual','2','is selected to fill gradsheet of',NULL,NULL,1,0,'2023-11-21 10:07:01.000000'),(18,'12','29',NULL,'actual','2','filled your gradsheet for',NULL,NULL,0,0,'2023-11-21 10:07:22.000000'),(19,'29','12',NULL,'actual','2','You requested a gradesheet for a reset',NULL,NULL,0,0,'2023-11-21 10:10:24.000000'),(20,'12','29',NULL,'actual','2','filled your gradsheet for',NULL,NULL,0,0,'2023-11-21 10:11:02.000000'),(21,'29','12',NULL,'actual','2','cloned_gradsheet',NULL,NULL,1,1,'2023-11-21 10:12:02.000000'),(22,'','29',NULL,'actual','2','filled your repeated gradsheet for',NULL,NULL,0,0,'2023-11-21 10:12:19.000000'),(23,'29','12',NULL,'sim','6','is selected to fill gradsheet of',NULL,NULL,1,0,'2023-11-21 10:22:22.000000'),(24,'12','29',NULL,'sim','6','filled your gradsheet for',NULL,NULL,0,0,'2023-11-21 10:22:44.000000'),(25,'29','12',NULL,'sim','7','is selected to fill gradsheet of',NULL,NULL,1,0,'2023-11-21 10:33:20.000000'),(26,'12','29',NULL,'sim','7','filled your gradsheet for',NULL,NULL,0,0,'2023-11-21 10:33:38.000000'),(27,'29','12',NULL,'sim','7','cloned_gradsheet',NULL,NULL,1,1,'2023-11-21 10:37:06.000000'),(28,'','29',NULL,'sim','7','filled your repeated gradsheet for',NULL,NULL,0,0,'2023-11-21 10:37:24.000000'),(29,'29','12',NULL,'actual','3','is selected to fill gradsheet of',NULL,NULL,0,0,'2023-11-21 12:56:50.000000'),(115,'29','12',NULL,'actual','2','clone_unlock_request',NULL,NULL,0,1,'2023-11-29 12:14:00.000000'),(116,'','29',NULL,'actual','2','filled your repeated gradsheet for',NULL,NULL,0,0,'2023-11-29 12:14:29.000000'),(117,'12','29',NULL,'actual','1','filled your gradsheet for',NULL,NULL,0,0,'2023-11-29 12:19:49.000000'),(118,'29','12',NULL,'actual','1','cloned_gradsheet',NULL,NULL,1,1,'2023-11-29 12:20:51.000000'),(119,'','29',NULL,'actual','1','filled your repeated gradsheet for',NULL,NULL,0,0,'2023-11-29 12:21:25.000000');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orgchart_data`
--

DROP TABLE IF EXISTS `orgchart_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orgchart_data` (
  `id` int(11) NOT NULL,
  `departmentName` varchar(255) DEFAULT NULL,
  `parentId` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orgchart_data`
--

LOCK TABLES `orgchart_data` WRITE;
/*!40000 ALTER TABLE `orgchart_data` DISABLE KEYS */;
INSERT INTO `orgchart_data` VALUES (1,'2','0','department'),(2,'14','1','user'),(3,'13','2','user'),(4,'3','1','department');
/*!40000 ALTER TABLE `orgchart_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `originalcertificate`
--

DROP TABLE IF EXISTS `originalcertificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `originalcertificate` (
  `id` int(11) NOT NULL,
  `certificateId` varchar(255) DEFAULT NULL,
  `certificateHtml` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `originalcertificate`
--

LOCK TABLES `originalcertificate` WRITE;
/*!40000 ALTER TABLE `originalcertificate` DISABLE KEYS */;
/*!40000 ALTER TABLE `originalcertificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissions`
--

DROP TABLE IF EXISTS `pagepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissions` (
  `id` int(11) NOT NULL,
  `pageId` varchar(255) DEFAULT NULL,
  `permissionId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `permissionType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissions`
--

LOCK TABLES `pagepermissions` WRITE;
/*!40000 ALTER TABLE `pagepermissions` DISABLE KEYS */;
INSERT INTO `pagepermissions` VALUES (1,'1','11','Everyone','blue','readOnly'),(2,'13','11','Everyone','blue','readOnly'),(3,'15','11','Everyone','blue','readOnly'),(4,'6','11','Everyone','blue','readOnly'),(5,'7','11','Everyone','blue','readOnly'),(6,'8','11','Everyone','blue','readOnly'),(7,'9','11','Everyone','blue','readOnly'),(8,'10','11','Everyone','blue','readOnly'),(9,'11','11','Everyone','blue','readOnly');
/*!40000 ALTER TABLE `pagepermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionsfm`
--

DROP TABLE IF EXISTS `pagepermissionsfm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionsfm` (
  `id` int(11) NOT NULL,
  `pageId` varchar(255) DEFAULT NULL,
  `permissionId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionsfm`
--

LOCK TABLES `pagepermissionsfm` WRITE;
/*!40000 ALTER TABLE `pagepermissionsfm` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionsfm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `para_cert`
--

DROP TABLE IF EXISTS `para_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `para_cert` (
  `id` int(255) NOT NULL,
  `cert_id` varchar(255) DEFAULT NULL,
  `text_data` varchar(2000) DEFAULT NULL,
  `heading_backgoround` varchar(255) DEFAULT NULL,
  `heading_text` varchar(255) DEFAULT NULL,
  `font_size_height` varchar(255) DEFAULT NULL,
  `text_type_heading` varchar(255) DEFAULT NULL,
  `font_style` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `para_cert`
--

LOCK TABLES `para_cert` WRITE;
/*!40000 ALTER TABLE `para_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `para_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_check_sub_checklist`
--

DROP TABLE IF EXISTS `per_check_sub_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_check_sub_checklist` (
  `id` int(11) NOT NULL,
  `checkListId` varchar(255) DEFAULT NULL,
  `subCheckListId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_check_sub_checklist`
--

LOCK TABLES `per_check_sub_checklist` WRITE;
/*!40000 ALTER TABLE `per_check_sub_checklist` DISABLE KEYS */;
INSERT INTO `per_check_sub_checklist` VALUES (6,'1','3','11'),(7,'1','4','11'),(8,'1','8','11'),(9,'1','7','11'),(11,'5','6','14'),(12,'6','9','14'),(13,'6','11','14'),(14,'6','10','14'),(15,'4','12','12');
/*!40000 ALTER TABLE `per_check_sub_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_checklist`
--

DROP TABLE IF EXISTS `per_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_checklist` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_checklist`
--

LOCK TABLES `per_checklist` WRITE;
/*!40000 ALTER TABLE `per_checklist` DISABLE KEYS */;
INSERT INTO `per_checklist` VALUES (1,'11','checklist per 13','TOS Academy offers a diverse array of online and offline courses','Complted','low','hello wolrd','2023-09-07','Category 33','#e21818'),(3,'11','checklist per 33','TOS Academy offers a diverse array of online and offline courses','Complted','low','hello','2023-09-06','Category 33','red'),(4,'12','checklist inst','TOS Academy offers a diverse array of online and offline courses','Complted','low','helo','2023-09-12','Category 33','orange'),(5,'14','Personal my',NULL,NULL,NULL,NULL,'2023-10-06 09:25:31',NULL,'#1e1bc5'),(6,'14','Profession',NULL,NULL,NULL,NULL,'2023-10-06 09:25:31',NULL,'#e60f0f'),(7,'14','White',NULL,NULL,NULL,NULL,'2023-10-06 09:25:31',NULL,'#2fec09'),(8,'14','Blue',NULL,NULL,NULL,NULL,'2023-10-06 09:25:31',NULL,'#f109de'),(9,'','today event',NULL,NULL,NULL,NULL,'2023-10-11 00:00:00',NULL,NULL),(10,'11','birthday',NULL,NULL,NULL,NULL,'2023-10-11 00:00:00',NULL,NULL),(11,'','my birthday',NULL,NULL,NULL,NULL,'2023-10-05 00:00:00',NULL,NULL),(12,'','Msarii bday',NULL,NULL,NULL,NULL,'2023-10-06 00:00:00',NULL,NULL),(16,'11','check color',NULL,NULL,NULL,NULL,'2023-10-05 00:00:00',NULL,'#e41111'),(36,'11','chat page',NULL,NULL,'low',NULL,'2023-11-09 13:12:10',NULL,'#f42525'),(37,'11','chat page',NULL,NULL,'medium',NULL,'2023-11-14 16:40:33',NULL,'#d31212'),(38,'11','hii',NULL,NULL,'medium',NULL,'2023-11-16 16:49:51',NULL,'#d01b1b');
/*!40000 ALTER TABLE `per_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_subchecklist`
--

DROP TABLE IF EXISTS `per_subchecklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_subchecklist` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `main_checklist_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_subchecklist`
--

LOCK TABLES `per_subchecklist` WRITE;
/*!40000 ALTER TABLE `per_subchecklist` DISABLE KEYS */;
INSERT INTO `per_subchecklist` VALUES (1,'11','per sub 1 ','1','Hello world','Complted','low','Category 33','hello msarii',NULL),(3,'11','per sub 4','1',NULL,NULL,NULL,NULL,NULL,'2023-09-06 10:29:23'),(4,'11','per sub 5','1',NULL,NULL,NULL,NULL,NULL,'2023-09-06 10:29:23'),(5,'11','sub test','5',NULL,NULL,NULL,NULL,NULL,'2023-09-11 11:29:00'),(6,'11','sub test 1','5',NULL,NULL,NULL,NULL,NULL,'2023-09-11 11:29:00'),(7,'11','per sub 2','1',NULL,NULL,NULL,NULL,NULL,'2023-10-03 14:31:29'),(8,'11','per sub 6','1',NULL,NULL,NULL,NULL,NULL,'2023-10-03 16:32:19'),(9,'14','Hello','6',NULL,NULL,NULL,NULL,NULL,'2023-10-06 09:29:45'),(10,'14','World','6',NULL,NULL,NULL,NULL,NULL,'2023-10-06 09:29:45'),(11,'14','Mine','6',NULL,NULL,NULL,NULL,NULL,'2023-10-06 09:29:45'),(12,'12','subchecklist 11','4',NULL,NULL,NULL,NULL,NULL,'2023-10-09 15:39:56'),(16,'11','per sub8','1',NULL,NULL,NULL,NULL,NULL,NULL),(17,'11','per sub7','1',NULL,NULL,NULL,NULL,NULL,NULL),(18,'11','per sub9','1',NULL,NULL,NULL,NULL,NULL,NULL),(19,'11','per sub10','1',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `per_subchecklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_subchecklistfile`
--

DROP TABLE IF EXISTS `per_subchecklistfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_subchecklistfile` (
  `id` int(11) NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `fileType` varchar(255) DEFAULT NULL,
  `checkId` varchar(255) DEFAULT NULL,
  `subCheckId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_subchecklistfile`
--

LOCK TABLES `per_subchecklistfile` WRITE;
/*!40000 ALTER TABLE `per_subchecklistfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `per_subchecklistfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `percentage`
--

DROP TABLE IF EXISTS `percentage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `percentage` (
  `id` int(11) NOT NULL,
  `percentagetype` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `percentage`
--

LOCK TABLES `percentage` WRITE;
/*!40000 ALTER TABLE `percentage` DISABLE KEYS */;
INSERT INTO `percentage` VALUES (1,'U-Unsatisfied','40','#ed4c78',NULL),(2,'F-Fair','60','#f5ca99','This got fair'),(3,'G-Good','80','#71869d',NULL),(4,'V- Very Good','90','#00c9a7',NULL),(5,'E- Excellent','100','#377dff',NULL),(6,'N- Not Graded','0','Black',NULL);
/*!40000 ALTER TABLE `percentage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persontitle`
--

DROP TABLE IF EXISTS `persontitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persontitle` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persontitle`
--

LOCK TABLES `persontitle` WRITE;
/*!40000 ALTER TABLE `persontitle` DISABLE KEYS */;
INSERT INTO `persontitle` VALUES (2,'12','Employee of the Week','You done a very great job this year.','2023-07-19'),(3,'14','Student of the year','You score really great in this year so we r giving you this award.','2023-07-19'),(5,'25','Student of the month','Great work on this month','2023-07-19'),(6,'18','employee of the month','Great job','2023-07-19'),(7,'11','Student of the year','hjhdksfjsklfjksfj','2023-08-08');
/*!40000 ALTER TABLE `persontitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phase`
--

DROP TABLE IF EXISTS `phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phase` (
  `id` int(11) NOT NULL,
  `phasename` varchar(255) DEFAULT NULL,
  `objective` varchar(5000) DEFAULT NULL,
  `ctp` varchar(30) DEFAULT NULL,
  `color` varchar(40) DEFAULT NULL,
  `phaseDuration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phase`
--

LOCK TABLES `phase` WRITE;
/*!40000 ALTER TABLE `phase` DISABLE KEYS */;
INSERT INTO `phase` VALUES (1,'Driving',NULL,'1','red',NULL),(2,'Driving',NULL,'2','green',NULL),(3,'Parking',NULL,'1','blue',NULL),(4,'phase',NULL,'1',NULL,NULL),(6,'test phase',NULL,'1',NULL,NULL),(7,'academic phase',NULL,'1',NULL,NULL),(8,'phase1',NULL,'6',NULL,NULL);
/*!40000 ALTER TABLE `phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phasefilepermission`
--

DROP TABLE IF EXISTS `phasefilepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phasefilepermission` (
  `id` int(11) NOT NULL,
  `fileId` varchar(255) DEFAULT NULL,
  `phaseId` varchar(255) DEFAULT NULL,
  `permissionType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phasefilepermission`
--

LOCK TABLES `phasefilepermission` WRITE;
/*!40000 ALTER TABLE `phasefilepermission` DISABLE KEYS */;
INSERT INTO `phasefilepermission` VALUES (2,'70','1','readAndWrite'),(3,'71','1','readAndWrite'),(4,'30','1','readAndWrite'),(5,'31','1','readAndWrite'),(8,'35','1','readAndWrite'),(9,'36','1','readAndWrite');
/*!40000 ALTER TABLE `phasefilepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popup`
--

DROP TABLE IF EXISTS `popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `popup` (
  `id` int(100) NOT NULL,
  `item` text DEFAULT NULL,
  `subitem` text DEFAULT NULL,
  `radio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popup`
--

LOCK TABLES `popup` WRITE;
/*!40000 ALTER TABLE `popup` DISABLE KEYS */;
/*!40000 ALTER TABLE `popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prereuisite_data`
--

DROP TABLE IF EXISTS `prereuisite_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prereuisite_data` (
  `id` int(11) NOT NULL,
  `class_id` varchar(30) DEFAULT NULL,
  `days` varchar(30) DEFAULT NULL,
  `class_table` varchar(255) DEFAULT NULL,
  `prereui_id` varchar(30) DEFAULT NULL,
  `prereui_table` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prereuisite_data`
--

LOCK TABLES `prereuisite_data` WRITE;
/*!40000 ALTER TABLE `prereuisite_data` DISABLE KEYS */;
INSERT INTO `prereuisite_data` VALUES (1,'2',NULL,'academic','1','academic'),(2,'3',NULL,'academic','2','academic'),(3,'4',NULL,'sim','3','academic'),(4,'4',NULL,'actual','3','academic'),(5,'5',NULL,'sim','4','actual'),(6,'5',NULL,'sim','4','sim'),(7,'6',NULL,'sim','5','sim'),(8,'7',NULL,'sim','6','sim'),(9,'1',NULL,'test','7','sim');
/*!40000 ALTER TABLE `prereuisite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prereuisites`
--

DROP TABLE IF EXISTS `prereuisites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prereuisites` (
  `id` int(11) NOT NULL,
  `prereuisite` varchar(255) DEFAULT NULL,
  `class_name` varchar(30) DEFAULT NULL,
  `days` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prereuisites`
--

LOCK TABLES `prereuisites` WRITE;
/*!40000 ALTER TABLE `prereuisites` DISABLE KEYS */;
/*!40000 ALTER TABLE `prereuisites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qual_data`
--

DROP TABLE IF EXISTS `qual_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qual_data` (
  `id` int(11) NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `subitem` varchar(30) DEFAULT NULL,
  `stud_id` varchar(30) DEFAULT NULL,
  `ctp_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qual_data`
--

LOCK TABLES `qual_data` WRITE;
/*!40000 ALTER TABLE `qual_data` DISABLE KEYS */;
INSERT INTO `qual_data` VALUES (1,'1',NULL,'','1'),(2,'2',NULL,'','1'),(3,'3',NULL,'','1'),(4,'4',NULL,'','1'),(5,'5',NULL,'','1'),(6,'6',NULL,'','1'),(7,'7',NULL,'','1'),(8,'8',NULL,'','1'),(9,'9',NULL,'','1'),(10,'10',NULL,'','1'),(11,'11',NULL,'','1'),(12,'12',NULL,'','1'),(13,'13',NULL,'','1'),(14,'14',NULL,'','1'),(15,'15',NULL,'','1'),(16,'16',NULL,'','1'),(17,'17',NULL,'','1'),(18,'18',NULL,'','1'),(19,'19',NULL,'','1'),(20,'20',NULL,'','1'),(21,'21',NULL,'','1'),(22,'22',NULL,'','1'),(23,'23',NULL,'','1'),(24,'24',NULL,'','1'),(25,'25',NULL,'','1'),(26,'26',NULL,'','1'),(27,'27',NULL,'','1'),(28,NULL,'1','','1'),(29,NULL,'2','','1'),(30,NULL,'3','','1'),(31,NULL,'4','','1'),(32,NULL,'5','','1'),(33,NULL,'6','','1'),(34,NULL,'7','','1'),(35,NULL,'8','','1');
/*!40000 ALTER TABLE `qual_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `quiz` varchar(30) DEFAULT NULL,
  `phase` varchar(30) DEFAULT NULL,
  `ctp` varchar(30) DEFAULT NULL,
  `percentage` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'Subject1','','1','100','2023-09-04'),(2,'Subject2','','1','100','2023-09-04'),(3,'Subject3','','1','100','2023-09-04'),(4,'Subject4','','1','100','2023-09-04'),(5,'Subject5','','1','100','2023-09-04'),(6,'Subject6','','1','100','2023-09-04'),(7,'Subject7','','1','100','2023-09-04'),(8,'Subject8','','1','100','2023-09-04');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_cloned_data`
--

DROP TABLE IF EXISTS `quiz_cloned_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_cloned_data` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) DEFAULT NULL,
  `student_id` int(30) DEFAULT NULL,
  `course_id` int(30) DEFAULT NULL,
  `clone_id` varchar(30) DEFAULT NULL,
  `marks` varchar(30) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_cloned_data`
--

LOCK TABLES `quiz_cloned_data` WRITE;
/*!40000 ALTER TABLE `quiz_cloned_data` DISABLE KEYS */;
INSERT INTO `quiz_cloned_data` VALUES (1,1,29,1,'1','86','12');
/*!40000 ALTER TABLE `quiz_cloned_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_marks`
--

DROP TABLE IF EXISTS `quiz_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_marks` (
  `id` int(11) NOT NULL,
  `quiz_id` varchar(30) DEFAULT NULL,
  `marks` varchar(30) DEFAULT NULL,
  `student_id` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `userId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_marks`
--

LOCK TABLES `quiz_marks` WRITE;
/*!40000 ALTER TABLE `quiz_marks` DISABLE KEYS */;
INSERT INTO `quiz_marks` VALUES (2,'1','0','29','1','2023-11-21','1','12');
/*!40000 ALTER TABLE `quiz_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolepermission`
--

DROP TABLE IF EXISTS `rolepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolepermission` (
  `id` int(11) NOT NULL,
  `rolePermission` varchar(255) DEFAULT NULL,
  `cardName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolepermission`
--

LOCK TABLES `rolepermission` WRITE;
/*!40000 ALTER TABLE `rolepermission` DISABLE KEYS */;
INSERT INTO `rolepermission` VALUES (1,'super admin',NULL);
/*!40000 ALTER TABLE `rolepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(30) NOT NULL,
  `roles` varchar(30) NOT NULL,
  `permission` varchar(50000) NOT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'student','a:56:{s:9:\"Dashboard\";s:1:\"1\";s:10:\"phase_page\";s:1:\"0\";s:10:\"class_page\";s:1:\"0\";s:6:\"actual\";s:1:\"1\";s:3:\"sim\";s:1:\"1\";s:8:\"Academic\";s:1:\"1\";s:7:\"Testing\";s:1:\"1\";s:10:\"evaluation\";s:1:\"1\";s:4:\"Task\";s:1:\"1\";s:7:\"Student\";s:1:\"1\";s:9:\"Emergency\";s:1:\"1\";s:4:\"Qual\";s:1:\"1\";s:9:\"Clearance\";s:1:\"1\";s:3:\"CAP\";s:1:\"1\";s:4:\"Memo\";s:1:\"1\";s:6:\"Report\";s:1:\"1\";s:10:\"Discipline\";s:1:\"1\";s:6:\"Start0\";s:1:\"0\";s:8:\"Datapage\";s:1:\"0\";s:3:\"CTP\";s:1:\"0\";s:9:\"Newcourse\";s:1:\"0\";s:13:\"sidebar_phase\";s:1:\"0\";s:4:\"Quiz\";s:1:\"1\";s:13:\"select_Course\";s:1:\"0\";s:22:\"select_student_details\";s:1:\"1\";s:14:\"course_details\";s:1:\"1\";s:12:\"landing_page\";s:1:\"1\";s:15:\"checklist_pages\";s:1:\"1\";s:12:\"clone_delete\";s:1:\"0\";s:15:\"askclone_delete\";s:1:\"1\";s:14:\"fill_gradsheet\";s:1:\"0\";s:15:\"reset_gradsheet\";s:1:\"0\";s:16:\"Unlock_gradsheet\";s:1:\"0\";s:19:\"askUnlock_gradsheet\";s:1:\"0\";s:18:\"askreset_gradsheet\";s:1:\"0\";s:18:\"give_per_gradsheet\";s:1:\"0\";s:17:\"ask_per_gradsheet\";s:1:\"0\";s:13:\"give_Acedemic\";s:1:\"0\";s:14:\"Clear_Acedemic\";s:1:\"0\";s:12:\"ask_Acedemic\";s:1:\"1\";s:11:\"delete_task\";s:1:\"0\";s:20:\"give_marks_evalution\";s:1:\"0\";s:20:\"view_marks_evalution\";s:1:\"1\";s:15:\"give_marks_test\";s:1:\"0\";s:11:\"unlock_test\";s:1:\"0\";s:14:\"askunlock_test\";s:1:\"0\";s:19:\"add_attachment_test\";s:1:\"0\";s:16:\"delete_emergance\";s:1:\"0\";s:10:\"assign_Cap\";s:1:\"0\";s:11:\"Create_memo\";s:1:\"0\";s:9:\"Edit_memo\";s:1:\"0\";s:11:\"Delete_memo\";s:1:\"0\";s:13:\"Delete_course\";s:1:\"0\";s:12:\"Edit_landing\";s:1:\"0\";s:14:\"Delete_landing\";s:1:\"0\";s:6:\"alerts\";N;}',NULL),(6,'instructor','a:56:{s:9:\"Dashboard\";s:1:\"1\";s:10:\"phase_page\";s:1:\"0\";s:10:\"class_page\";s:1:\"0\";s:6:\"actual\";s:1:\"1\";s:3:\"sim\";s:1:\"1\";s:8:\"Academic\";s:1:\"1\";s:7:\"Testing\";s:1:\"1\";s:10:\"evaluation\";s:1:\"1\";s:4:\"Task\";s:1:\"1\";s:7:\"Student\";s:1:\"1\";s:9:\"Emergency\";s:1:\"1\";s:4:\"Qual\";s:1:\"1\";s:9:\"Clearance\";s:1:\"1\";s:3:\"CAP\";s:1:\"1\";s:4:\"Memo\";s:1:\"1\";s:6:\"Report\";s:1:\"1\";s:10:\"Discipline\";s:1:\"1\";s:6:\"Start0\";s:1:\"0\";s:8:\"Datapage\";s:1:\"0\";s:3:\"CTP\";s:1:\"0\";s:9:\"Newcourse\";s:1:\"0\";s:13:\"sidebar_phase\";s:1:\"0\";s:4:\"Quiz\";s:1:\"1\";s:13:\"select_Course\";s:1:\"1\";s:22:\"select_student_details\";s:1:\"0\";s:14:\"course_details\";s:1:\"1\";s:12:\"landing_page\";s:1:\"1\";s:15:\"checklist_pages\";s:1:\"1\";s:12:\"clone_delete\";s:1:\"0\";s:15:\"askclone_delete\";s:1:\"1\";s:14:\"fill_gradsheet\";s:1:\"1\";s:15:\"reset_gradsheet\";s:1:\"0\";s:16:\"Unlock_gradsheet\";s:1:\"0\";s:19:\"askUnlock_gradsheet\";s:1:\"1\";s:18:\"askreset_gradsheet\";s:1:\"1\";s:18:\"give_per_gradsheet\";s:1:\"0\";s:17:\"ask_per_gradsheet\";s:1:\"1\";s:13:\"give_Acedemic\";s:1:\"1\";s:14:\"Clear_Acedemic\";s:1:\"0\";s:12:\"ask_Acedemic\";s:1:\"0\";s:11:\"delete_task\";s:1:\"0\";s:20:\"give_marks_evalution\";s:1:\"1\";s:20:\"view_marks_evalution\";s:1:\"0\";s:15:\"give_marks_test\";s:1:\"1\";s:11:\"unlock_test\";s:1:\"0\";s:14:\"askunlock_test\";s:1:\"1\";s:19:\"add_attachment_test\";s:1:\"1\";s:16:\"delete_emergance\";s:1:\"0\";s:10:\"assign_Cap\";s:1:\"1\";s:11:\"Create_memo\";s:1:\"0\";s:9:\"Edit_memo\";s:1:\"0\";s:11:\"Delete_memo\";s:1:\"0\";s:13:\"Delete_course\";s:1:\"0\";s:12:\"Edit_landing\";s:1:\"0\";s:14:\"Delete_landing\";s:1:\"0\";s:6:\"alerts\";N;}',NULL),(7,'super admin','a:56:{s:9:\"Dashboard\";s:1:\"1\";s:10:\"phase_page\";s:1:\"0\";s:10:\"class_page\";s:1:\"0\";s:6:\"actual\";s:1:\"1\";s:3:\"sim\";s:1:\"1\";s:8:\"Academic\";s:1:\"1\";s:7:\"Testing\";s:1:\"1\";s:10:\"evaluation\";s:1:\"1\";s:4:\"Task\";s:1:\"1\";s:7:\"Student\";s:1:\"1\";s:9:\"Emergency\";s:1:\"1\";s:4:\"Qual\";s:1:\"1\";s:9:\"Clearance\";s:1:\"1\";s:3:\"CAP\";s:1:\"1\";s:4:\"Memo\";s:1:\"1\";s:6:\"Report\";s:1:\"1\";s:10:\"Discipline\";s:1:\"1\";s:6:\"Start0\";s:1:\"1\";s:8:\"Datapage\";s:1:\"1\";s:3:\"CTP\";s:1:\"1\";s:9:\"Newcourse\";s:1:\"1\";s:13:\"sidebar_phase\";s:1:\"1\";s:4:\"Quiz\";s:1:\"1\";s:13:\"select_Course\";s:1:\"1\";s:22:\"select_student_details\";s:1:\"0\";s:14:\"course_details\";s:1:\"1\";s:12:\"landing_page\";s:1:\"1\";s:15:\"checklist_pages\";s:1:\"1\";s:12:\"clone_delete\";s:1:\"1\";s:15:\"askclone_delete\";s:1:\"0\";s:14:\"fill_gradsheet\";s:1:\"0\";s:15:\"reset_gradsheet\";s:1:\"1\";s:16:\"Unlock_gradsheet\";s:1:\"1\";s:19:\"askUnlock_gradsheet\";s:1:\"0\";s:18:\"askreset_gradsheet\";s:1:\"0\";s:18:\"give_per_gradsheet\";s:1:\"1\";s:17:\"ask_per_gradsheet\";s:1:\"0\";s:13:\"give_Acedemic\";s:1:\"1\";s:14:\"Clear_Acedemic\";s:1:\"1\";s:12:\"ask_Acedemic\";s:1:\"0\";s:11:\"delete_task\";s:1:\"1\";s:20:\"give_marks_evalution\";s:1:\"0\";s:20:\"view_marks_evalution\";s:1:\"1\";s:15:\"give_marks_test\";s:1:\"1\";s:11:\"unlock_test\";s:1:\"1\";s:14:\"askunlock_test\";s:1:\"0\";s:19:\"add_attachment_test\";s:1:\"1\";s:16:\"delete_emergance\";s:1:\"1\";s:10:\"assign_Cap\";s:1:\"1\";s:11:\"Create_memo\";s:1:\"1\";s:9:\"Edit_memo\";s:1:\"1\";s:11:\"Delete_memo\";s:1:\"1\";s:13:\"Delete_course\";s:1:\"1\";s:12:\"Edit_landing\";s:1:\"1\";s:14:\"Delete_landing\";s:1:\"1\";s:6:\"alerts\";N;}',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `self`
--

DROP TABLE IF EXISTS `self`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `self` (
  `id` int(11) NOT NULL,
  `marks` varchar(255) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `self`
--

LOCK TABLES `self` WRITE;
/*!40000 ALTER TABLE `self` DISABLE KEYS */;
INSERT INTO `self` VALUES (1,'75','29','1');
/*!40000 ALTER TABLE `self` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelf`
--

DROP TABLE IF EXISTS `shelf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shelf` (
  `id` int(11) NOT NULL,
  `shelf` varchar(30) NOT NULL,
  `library_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelf`
--

LOCK TABLES `shelf` WRITE;
/*!40000 ALTER TABLE `shelf` DISABLE KEYS */;
INSERT INTO `shelf` VALUES (1,'shelf 1','1');
/*!40000 ALTER TABLE `shelf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelf_shop`
--

DROP TABLE IF EXISTS `shelf_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shelf_shop` (
  `id` int(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `shelf_id` varchar(30) NOT NULL,
  `shop_id` varchar(30) NOT NULL,
  `lib_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelf_shop`
--

LOCK TABLES `shelf_shop` WRITE;
/*!40000 ALTER TABLE `shelf_shop` DISABLE KEYS */;
INSERT INTO `shelf_shop` VALUES (1,'11','1','2','1'),(2,'11','1','6','1');
/*!40000 ALTER TABLE `shelf_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_folder`
--

DROP TABLE IF EXISTS `shop_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_folder` (
  `id` int(30) NOT NULL,
  `shop_id` varchar(400) DEFAULT NULL,
  `folder_id` varchar(255) DEFAULT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_folder`
--

LOCK TABLES `shop_folder` WRITE;
/*!40000 ALTER TABLE `shop_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `shops` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `ctpId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (2,'shop1','hello1.png',NULL),(3,'shop3','hello.jpg',NULL),(4,'shop8','hello1.png',NULL),(5,'shop10','File management v3.png',NULL),(6,'Shop test','hello.jpg',NULL),(7,'test shop','','6'),(8,'Driving School Advanced','','1');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebar_ctp`
--

DROP TABLE IF EXISTS `sidebar_ctp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sidebar_ctp` (
  `id` int(30) NOT NULL,
  `ctp_id` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebar_ctp`
--

LOCK TABLES `sidebar_ctp` WRITE;
/*!40000 ALTER TABLE `sidebar_ctp` DISABLE KEYS */;
INSERT INTO `sidebar_ctp` VALUES (1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'5'),(6,'6');
/*!40000 ALTER TABLE `sidebar_ctp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sim`
--

DROP TABLE IF EXISTS `sim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sim` (
  `id` int(11) NOT NULL,
  `sim` varchar(255) DEFAULT NULL,
  `shortsim` varchar(255) DEFAULT NULL,
  `ptype` varchar(255) DEFAULT NULL,
  `percentage` int(20) DEFAULT NULL,
  `phase` varchar(255) DEFAULT NULL,
  `ctp` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `days` int(30) DEFAULT NULL,
  `linesRequired` int(255) DEFAULT NULL,
  `studentPerClass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sim`
--

LOCK TABLES `sim` WRITE;
/*!40000 ALTER TABLE `sim` DISABLE KEYS */;
INSERT INTO `sim` VALUES (1,'Front Sim','SDR-2','',100,'1','2','2023-07-17',NULL,NULL,NULL),(2,'Front drive','SDR-1','',100,'1','2','2023-07-17',NULL,NULL,NULL),(3,'Front Sim','SDR-6','',100,'1','2','2023-07-17',NULL,NULL,NULL),(4,'Front Drive','SDR-1','',100,'1','1','2023-07-21',4,NULL,NULL),(5,'Parking ','SDR-2','',100,'1','1','2023-07-21',6,NULL,NULL),(6,'jhgdjhf','SDR-3','',100,'1','1','2023-07-21',NULL,NULL,NULL),(7,'Front Sim','SDR-4','',100,'1','1','2023-07-21',NULL,NULL,NULL),(8,'Front drive','SDR-62','',100,'3','1','2023-08-02',NULL,NULL,NULL),(9,'ghj','SDR-14','',100,'3','1','2023-08-02',NULL,NULL,NULL),(10,'Front drive','SDR-61','',100,'3','1','2023-08-02',NULL,NULL,NULL),(11,'Front drive','SDR-6225','',100,'1','1','2023-08-09',NULL,NULL,NULL),(12,'ghj','SDR-145','',100,'1','1','2023-08-09',NULL,NULL,NULL),(13,'Front drive','SDR-615','',100,'1','1','2023-08-09',NULL,NULL,NULL),(14,'Front Sim','SDR-42','',100,'1','1','2023-08-09',NULL,NULL,NULL),(15,'Front Sim','door','',100,'1','1','2023-08-09',NULL,NULL,NULL),(16,'Front Sim','SDR-60','',100,'1','1','2023-08-09',NULL,NULL,NULL),(17,'ghj','SDR-19','',100,'1','1','2023-08-09',NULL,NULL,NULL),(18,'Parking ','SDR-134','',100,'1','1','2023-08-09',NULL,NULL,NULL),(19,'Front drive','   s  s s','',100,'1','1','2023-08-09',NULL,NULL,NULL),(20,'Front Sim','park','',100,'1','1','2023-08-09',NULL,NULL,NULL),(21,'Front Sim','back','',100,'1','1','2023-08-09',NULL,NULL,NULL),(22,'Front drive','SDR-15','',100,'1','1','2023-08-09',NULL,NULL,NULL),(23,'jhgdjhf','SDR-191','',100,'1','1','2023-08-09',NULL,NULL,NULL),(24,'Parking ','SDR-623','',100,'1','1','2023-08-09',NULL,NULL,NULL),(25,'Front drive','back46','',100,'1','1','2023-08-09',NULL,NULL,NULL),(26,'Parking ','SDR-1p2i','',100,'1','1','2023-08-09',NULL,NULL,NULL),(27,'Front Sim','whio','',100,'1','1','2023-08-09',NULL,NULL,NULL),(28,'Front drive','jeiekwl','',100,'1','1','2023-08-09',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sim_phase`
--

DROP TABLE IF EXISTS `sim_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sim_phase` (
  `id` int(30) NOT NULL,
  `phase` varchar(30) NOT NULL,
  `ctp_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sim_phase`
--

LOCK TABLES `sim_phase` WRITE;
/*!40000 ALTER TABLE `sim_phase` DISABLE KEYS */;
INSERT INTO `sim_phase` VALUES (1,'1','1'),(2,'3','1');
/*!40000 ALTER TABLE `sim_phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `ctp` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `explanation` varchar(255) DEFAULT NULL,
  `progression` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Code','1','Array','Array','Array'),(2,'Code1',NULL,'Description1','Explanantion1','Progression1');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentexam`
--

DROP TABLE IF EXISTS `studentexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentexam` (
  `id` int(255) NOT NULL,
  `examId` varchar(255) NOT NULL,
  `examSubject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentexam`
--

LOCK TABLES `studentexam` WRITE;
/*!40000 ALTER TABLE `studentexam` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_item`
--

DROP TABLE IF EXISTS `sub_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_item` (
  `id` int(30) NOT NULL,
  `subitem` varchar(300) DEFAULT NULL,
  `U` varchar(255) DEFAULT NULL,
  `F` varchar(255) DEFAULT NULL,
  `G` varchar(255) DEFAULT NULL,
  `V` varchar(255) DEFAULT NULL,
  `E` varchar(255) DEFAULT NULL,
  `N` varchar(255) DEFAULT NULL,
  `CTScondition` varchar(255) DEFAULT NULL,
  `CTSstandards` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_item`
--

LOCK TABLES `sub_item` WRITE;
/*!40000 ALTER TABLE `sub_item` DISABLE KEYS */;
INSERT INTO `sub_item` VALUES (1,'subitem-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'subitem-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'subitem-3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'subitem-4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'subitem-5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'subitem-6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'subitem-7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'subitem-8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sub_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subchecklistfiles`
--

DROP TABLE IF EXISTS `subchecklistfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subchecklistfiles` (
  `id` int(11) NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `fileType` varchar(255) DEFAULT NULL,
  `checkId` varchar(255) DEFAULT NULL,
  `subCheckId` varchar(255) DEFAULT NULL,
  `ctpId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subchecklistfiles`
--

LOCK TABLES `subchecklistfiles` WRITE;
/*!40000 ALTER TABLE `subchecklistfiles` DISABLE KEYS */;
INSERT INTO `subchecklistfiles` VALUES (1,'Django Task (1).docx',NULL,'docx','4','1','1'),(2,'Python Probation Task.docx',NULL,'docx','4','1','1'),(3,'checklist page','<p>subchecklist</p>\r\n','editorData','4','1','1'),(4,'checklist page','<p>subchecklist</p>\r\n','editorData','4','1','1'),(5,'checklist page','<p>subchecklist</p>\r\n','editorData','4','1','1'),(8,'checklist page','<p>subchecklist</p>\r\n','editorData','4','1','1'),(9,'checklist page','<p>subchecklist</p>\r\n','editorData','4','1','1');
/*!40000 ALTER TABLE `subchecklistfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcheclist`
--

DROP TABLE IF EXISTS `subcheclist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcheclist` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `main_checklist_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcheclist`
--

LOCK TABLES `subcheclist` WRITE;
/*!40000 ALTER TABLE `subcheclist` DISABLE KEYS */;
INSERT INTO `subcheclist` VALUES (1,'subchecklist1','4',NULL,NULL,NULL,NULL,NULL),(2,'subchecklist2','4',NULL,NULL,NULL,NULL,NULL),(3,'checklist 3','4',NULL,NULL,NULL,NULL,NULL),(4,'checklist4','4',NULL,NULL,NULL,NULL,NULL),(5,'Checklist 1','5',NULL,NULL,NULL,NULL,NULL),(6,'subchecklist 77','5',NULL,NULL,NULL,NULL,NULL),(7,'subchecklist 88','5',NULL,NULL,NULL,NULL,NULL),(8,'subchecklist 0','5',NULL,NULL,NULL,NULL,NULL),(9,'subchecklist 10','5',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `subcheclist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subitem`
--

DROP TABLE IF EXISTS `subitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subitem` (
  `id` int(30) NOT NULL,
  `item` varchar(30) DEFAULT NULL,
  `subitem` varchar(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `class_id` varchar(30) DEFAULT NULL,
  `phase_id` varchar(30) DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL,
  `CTS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subitem`
--

LOCK TABLES `subitem` WRITE;
/*!40000 ALTER TABLE `subitem` DISABLE KEYS */;
INSERT INTO `subitem` VALUES (1,'1','2','1','9','1','actual',NULL),(2,'1','3','1','9','1','actual',NULL),(3,'1','2','1','8','1','actual',NULL),(4,'1','3','1','8','1','actual',NULL),(5,'2','5','1','8','1','actual',NULL),(6,'2','6','1','8','1','actual',NULL);
/*!40000 ALTER TABLE `subitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subitem_cloned_gradesheet`
--

DROP TABLE IF EXISTS `subitem_cloned_gradesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subitem_cloned_gradesheet` (
  `id` int(30) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `subitem_id` varchar(30) DEFAULT NULL,
  `grade` varchar(30) DEFAULT NULL,
  `cloned_id` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subitem_cloned_gradesheet`
--

LOCK TABLES `subitem_cloned_gradesheet` WRITE;
/*!40000 ALTER TABLE `subitem_cloned_gradesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `subitem_cloned_gradesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subitem_gradesheet`
--

DROP TABLE IF EXISTS `subitem_gradesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subitem_gradesheet` (
  `id` int(30) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `subitem_id` varchar(30) DEFAULT NULL,
  `grade` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subitem_gradesheet`
--

LOCK TABLES `subitem_gradesheet` WRITE;
/*!40000 ALTER TABLE `subitem_gradesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `subitem_gradesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_golas`
--

DROP TABLE IF EXISTS `table_golas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_golas` (
  `id` int(11) NOT NULL,
  `goalTable` varchar(255) DEFAULT NULL,
  `goalName` varchar(255) DEFAULT NULL,
  `goalClassId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_golas`
--

LOCK TABLES `table_golas` WRITE;
/*!40000 ALTER TABLE `table_golas` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_golas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_cat`
--

DROP TABLE IF EXISTS `temp_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_cat` (
  `id` int(255) NOT NULL,
  `cat_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_cat`
--

LOCK TABLES `temp_cat` WRITE;
/*!40000 ALTER TABLE `temp_cat` DISABLE KEYS */;
INSERT INTO `temp_cat` VALUES (1,'2'),(2,'5');
/*!40000 ALTER TABLE `temp_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempbrief`
--

DROP TABLE IF EXISTS `tempbrief`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempbrief` (
  `id` int(11) NOT NULL,
  `briefId` varchar(255) DEFAULT NULL,
  `folderId` varchar(255) DEFAULT NULL,
  `shopId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempbrief`
--

LOCK TABLES `tempbrief` WRITE;
/*!40000 ALTER TABLE `tempbrief` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempbrief` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `test` varchar(255) DEFAULT NULL,
  `shorttest` varchar(255) DEFAULT NULL,
  `ptype` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `phase` varchar(255) DEFAULT NULL,
  `ctp` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `days` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'test','T01','','100','1','1','2023-07-17',NULL),(2,'Parking','T02','','100','1','1','2023-07-17',NULL),(3,'Parking','TOS-16','','100','1','1','2023-08-09',NULL),(4,'test','TOS-1','','100','1','1','2023-08-09',NULL),(5,'test5','TOS-2','','100','1','1','2023-08-09',NULL),(6,'test5','TOS-3','','100','1','1','2023-08-09',NULL),(7,'Parking','TOS-4','','100','1','1','2023-08-09',NULL),(8,'test','TOS-5','','100','1','1','2023-08-09',NULL),(9,'Parking','TOS-6','','100','1','1','2023-08-09',NULL),(10,'test','TOS-7','','100','1','1','2023-08-09',NULL),(11,'Parking','TOS-8','','100','1','1','2023-08-09',NULL),(12,'test','TOS-9','','100','1','1','2023-08-09',NULL),(13,'Parking','TOS-10','','100','1','1','2023-08-09',NULL),(14,'test5','TOS-11','','100','1','1','2023-08-09',NULL),(15,'Parking','TOS-12','','100','1','1','2023-08-09',NULL),(16,'test','TOS-13','','100','1','1','2023-08-09',NULL),(17,'Parking','TOS-14','','100','1','1','2023-08-09',NULL),(18,'test','TOS-15','','100','1','1','2023-08-09',NULL),(19,'Parking','TOS-17','','100','1','1','2023-08-09',NULL),(20,'test','TOS-18','','100','1','1','2023-08-09',NULL),(21,'Parking','TOS-19','','100','1','1','2023-08-09',NULL),(22,'Parking','TOS-20','','100','1','1','2023-08-09',NULL),(23,'Test on Introduction to Medicinal Plants and Soil Types','T03','','100','1','1','2023-08-31',NULL),(24,'Parking','T04','','100','1','1','2023-08-31',NULL),(25,'Test on Introduction to Medicinal Plants and Soil Types','T05','','100','1','1','2023-08-31',NULL),(26,'Planting Techniques','T06','','100','1','1','2023-08-31',NULL),(27,'test','T07','','100','1','1','2023-08-31',NULL),(28,'Test on Watering Techniques and Fertilization Methods','T08','','100','1','1','2023-08-31',NULL),(29,'test5','T09','','100','1','1','2023-08-31',NULL),(30,'Parking','T010','','100','1','1','2023-08-31',NULL);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_cloned_data`
--

DROP TABLE IF EXISTS `test_cloned_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_cloned_data` (
  `id` int(11) NOT NULL,
  `test_id` int(30) NOT NULL,
  `student_id` int(30) DEFAULT NULL,
  `course_id` int(30) DEFAULT NULL,
  `clone_id` varchar(30) NOT NULL,
  `marks` varchar(30) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_cloned_data`
--

LOCK TABLES `test_cloned_data` WRITE;
/*!40000 ALTER TABLE `test_cloned_data` DISABLE KEYS */;
INSERT INTO `test_cloned_data` VALUES (1,2,29,1,'1','86','12');
/*!40000 ALTER TABLE `test_cloned_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_course`
--

DROP TABLE IF EXISTS `test_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_course` (
  `id` int(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_description` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_course`
--

LOCK TABLES `test_course` WRITE;
/*!40000 ALTER TABLE `test_course` DISABLE KEYS */;
INSERT INTO `test_course` VALUES (1,'HTML New','Markup language hello','0000-00-00'),(2,'CSS','cascading stylesheet','0000-00-00'),(3,'Bootstrap','Use for responsive website','0000-00-00'),(4,'PHP','High speed language','0000-00-00'),(5,'MYSQL','Database to store data','0000-00-00'),(6,'Javascript','scripting language','0000-00-00'),(7,'Jquery','scripting language 2','0000-00-00'),(8,'Ajax','scripting language 3','0000-00-00'),(9,'driving','bdjkshfkjsrhks','2023-10-12'),(10,'Nature diagram','Nature related photos here','2023-10-12');
/*!40000 ALTER TABLE `test_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data`
--

DROP TABLE IF EXISTS `test_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_data` (
  `id` int(30) NOT NULL,
  `test_id` int(30) DEFAULT NULL,
  `student_id` int(30) DEFAULT NULL,
  `course_id` varchar(30) DEFAULT NULL,
  `marks` varchar(30) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `userId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data`
--

LOCK TABLES `test_data` WRITE;
/*!40000 ALTER TABLE `test_data` DISABLE KEYS */;
INSERT INTO `test_data` VALUES (1,1,29,'1','86','2023-11-21 10:42:20.000000','1','12'),(2,2,29,'1','0','2023-11-21 11:29:49.000000','1','12');
/*!40000 ALTER TABLE `test_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_phase`
--

DROP TABLE IF EXISTS `test_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_phase` (
  `id` int(30) NOT NULL,
  `phase` varchar(30) NOT NULL,
  `ctp_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_phase`
--

LOCK TABLES `test_phase` WRITE;
/*!40000 ALTER TABLE `test_phase` DISABLE KEYS */;
INSERT INTO `test_phase` VALUES (1,'1','1');
/*!40000 ALTER TABLE `test_phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_updates`
--

DROP TABLE IF EXISTS `test_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_updates` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `exam_id` varchar(255) DEFAULT NULL,
  `status_start` varchar(255) DEFAULT '0',
  `start_time` datetime(6) DEFAULT NULL,
  `status_end` varchar(255) DEFAULT '0',
  `end_time` datetime(6) DEFAULT NULL,
  `repeat_id` int(255) DEFAULT NULL,
  `exam_status` varchar(255) DEFAULT NULL,
  `correct_answer` varchar(255) DEFAULT NULL,
  `marks_got` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_updates`
--

LOCK TABLES `test_updates` WRITE;
/*!40000 ALTER TABLE `test_updates` DISABLE KEYS */;
INSERT INTO `test_updates` VALUES (1,'14','9','1','2023-11-15 10:56:38.000000','0',NULL,8,NULL,NULL,NULL),(2,'14','11','1','2023-11-15 14:34:05.000000','1','2023-11-15 14:34:58.000000',8,'failed','0','0'),(3,'16','12','1','2023-11-22 10:22:24.000000','0',NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `test_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testcatfil`
--

DROP TABLE IF EXISTS `testcatfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testcatfil` (
  `id` int(11) NOT NULL,
  `courseId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testcatfil`
--

LOCK TABLES `testcatfil` WRITE;
/*!40000 ALTER TABLE `testcatfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `testcatfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_category_data`
--

DROP TABLE IF EXISTS `type_category_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_category_data` (
  `id` int(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `category_phase` varchar(30) DEFAULT NULL,
  `category_value` varchar(30) DEFAULT NULL,
  `percent` decimal(11,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_category_data`
--

LOCK TABLES `type_category_data` WRITE;
/*!40000 ALTER TABLE `type_category_data` DISABLE KEYS */;
INSERT INTO `type_category_data` VALUES (10,'2','sim','0','6',100.00000),(12,'3','test','0','all',100.00000),(13,'4','discipline','0','0',50.00000),(14,'5','self','0','0',50.00000),(15,'6','quiz','0','0',50.00000),(16,'1','actual','0','2',50.00000);
/*!40000 ALTER TABLE `type_category_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_data`
--

DROP TABLE IF EXISTS `type_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_data` (
  `id` int(30) NOT NULL,
  `type_name` varchar(30) DEFAULT NULL,
  `marks` decimal(11,2) DEFAULT NULL,
  `ctp` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_data`
--

LOCK TABLES `type_data` WRITE;
/*!40000 ALTER TABLE `type_data` DISABLE KEYS */;
INSERT INTO `type_data` VALUES (1,'actual',40.00,'1'),(2,'sim',20.00,'1'),(3,'test1',7.50,'1'),(4,'discipline',5.00,'1'),(5,'self',5.00,'1'),(6,'quiz',5.00,'1');
/*!40000 ALTER TABLE `type_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typegradefilter`
--

DROP TABLE IF EXISTS `typegradefilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typegradefilter` (
  `id` int(11) NOT NULL,
  `ctpId` varchar(255) DEFAULT NULL,
  `gradeValue` varchar(255) DEFAULT NULL,
  `filterStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typegradefilter`
--

LOCK TABLES `typegradefilter` WRITE;
/*!40000 ALTER TABLE `typegradefilter` DISABLE KEYS */;
INSERT INTO `typegradefilter` VALUES (7,'1','80','Active');
/*!40000 ALTER TABLE `typegradefilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updatehide`
--

DROP TABLE IF EXISTS `updatehide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updatehide` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updatehide`
--

LOCK TABLES `updatehide` WRITE;
/*!40000 ALTER TABLE `updatehide` DISABLE KEYS */;
INSERT INTO `updatehide` VALUES (0,'16'),(2,'14'),(3,'12'),(4,'11');
/*!40000 ALTER TABLE `updatehide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_briefcase`
--

DROP TABLE IF EXISTS `user_briefcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_briefcase` (
  `id` int(11) NOT NULL,
  `briefcase_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `folderId` varchar(255) DEFAULT NULL,
  `shopid` varchar(30) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `classId` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_briefcase`
--

LOCK TABLES `user_briefcase` WRITE;
/*!40000 ALTER TABLE `user_briefcase` DISABLE KEYS */;
INSERT INTO `user_briefcase` VALUES (1,'brief 1',11,'2','2',NULL,'super admin','red',NULL,NULL),(2,'brief 1',11,'0','2',NULL,'super admin','red',NULL,NULL),(3,'brief 1',11,'9','6',NULL,'super admin','red',NULL,NULL),(4,'Ad',11,'2','2',NULL,'super admin','red',NULL,NULL),(5,'brief 3',11,'2','2',NULL,'super admin','red',NULL,NULL),(6,'Briefcase 1aaa',11,'0','0',NULL,'super admin','red',NULL,NULL),(7,'brief testaaaa',11,'0','0',NULL,'super admin','red',NULL,NULL),(8,'brief 6aaaa',11,'2','2',NULL,'super admin','red',NULL,NULL),(9,'brief test11',11,'0','0',NULL,'super admin','red',NULL,NULL),(10,'11111brie',11,'0','0',NULL,'super admin','red',NULL,NULL),(11,'newFolClass',11,'12','7',NULL,'super admin','red','30',NULL),(12,'newFolClass',11,'12','7',NULL,'super admin','red','31',NULL),(13,'Front Drive',11,'13','8',NULL,'super admin','red','1','actual'),(14,'Front Drive',11,'13','8',NULL,'super admin','red','4','sim');
/*!40000 ALTER TABLE `user_briefcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_event`
--

DROP TABLE IF EXISTS `user_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_event` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileType` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_event`
--

LOCK TABLES `user_event` WRITE;
/*!40000 ALTER TABLE `user_event` DISABLE KEYS */;
INSERT INTO `user_event` VALUES (1,'11','Graduation Ceremony','offer.png','png','2023-07-20'),(2,'11','Graduation Ceremony','sced.png','png','2023-07-20'),(3,'11','Graduation Ceremony','time.jpg','jpg','2023-07-20'),(4,'11','Graduation Ceremony','Asset 3.png','png','2023-07-20'),(5,'11','Graduation Ceremony','BF42337D.png','png','2023-07-20'),(6,'11','Graduation Ceremony','Flower_11.jpg','jpg','2023-07-20'),(7,'11','MCA Ceremony','MicrosoftTeams-image (48).png','png','2023-08-02'),(8,'11','MCA Ceremony','GS.png','png','2023-08-02'),(9,'11','MCA Ceremony','MicrosoftTeams-image (43).png','png','2023-08-02'),(10,'11','MCA Ceremony','MicrosoftTeams-image (41).png','png','2023-08-02'),(11,'11','MCA Ceremony','MicrosoftTeams-image (31).png','png','2023-08-02'),(12,'11','Msarii Unite','MicrosoftTeams-image (11).png','png','2023-08-02'),(13,'11','Msarii Unite','agesearch v3_1.png','png','2023-08-02'),(14,'11','Msarii Unite','MicrosoftTeams-image (6).png','png','2023-08-02'),(15,'11','Msarii Unite','time.jpg','jpg','2023-08-02'),(16,'11','Msarii Unite','kudos.jpg','jpg','2023-08-02'),(17,'11','Gathering Function','MicrosoftTeams-image (11).png','png','2023-08-02'),(18,'11','Gathering Function','MicrosoftTeams-image (28).png','png','2023-08-02'),(19,'11','Gathering Function','MicrosoftTeams-image (27).png','png','2023-08-02'),(20,'11','Gathering Function','time.jpg','jpg','2023-08-02'),(21,'11','Gathering Function','Asset 3.png','png','2023-08-02');
/*!40000 ALTER TABLE `user_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_files`
--

DROP TABLE IF EXISTS `user_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_files` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `briefId` varchar(255) DEFAULT NULL,
  `admin_delete` varchar(30) DEFAULT NULL,
  `folderId` varchar(255) DEFAULT NULL,
  `shopid` varchar(30) NOT NULL DEFAULT '0',
  `user_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `fileBriefcase` varchar(255) DEFAULT NULL,
  `menu_type` varchar(30) DEFAULT NULL,
  `type_id` int(30) NOT NULL DEFAULT 0,
  `fileLocation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_files`
--

LOCK TABLES `user_files` WRITE;
/*!40000 ALTER TABLE `user_files` DISABLE KEYS */;
INSERT INTO `user_files` VALUES (1,'Data Analyst Questions (5).docx',NULL,'docx','11',NULL,'12','7','11','super admin','red','2023-07-06','2023-07-06','A4','A4',NULL,'menu',10,NULL),(2,'new plan (2).xlsx',NULL,'xlsx','1',NULL,'2','0','11','super admin','blue','2023-07-06','2023-07-06','A4','A4',NULL,'menu',10,NULL),(3,'New Page.pdf',NULL,'pdf','7',NULL,'0','0','11','super admin','blue','2023-07-06','2023-07-06','A4','A4',NULL,'megmenu',4,NULL),(4,'Briefcase v2.png',NULL,'png','0',NULL,'2','2','11','super admin','blue','2023-07-06','2023-07-06','A4','A4',NULL,'NULL',0,NULL),(5,'C:\\xampp2\\htdocs\\latest\\TOS\\includes\\Pages\\files','links','offline','0',NULL,'2','2','11','super admin','red','2023-07-06','2023-07-06','A4','A4','','files',5,NULL),(6,'https://www.facebook.com/','linkhiuh9i','online','6',NULL,'0','0','11','super admin','red','2023-07-06','2023-07-06','A4','A4','','megmenu',4,NULL),(12,'new plan (2) (1).xlsx',NULL,'xlsx','3',NULL,'2','2','15','instructor','yellow','2023-07-06','2023-07-06','inst1','inst1','user','files',4,NULL),(13,'archana pages (1).pdf',NULL,'pdf','3',NULL,'2','2','15','instructor','yellow','2023-07-06','2023-07-06','inst1','inst1','user','files',4,NULL),(14,'new plan (9) (1) (2) (5) (3) (1).xlsx',NULL,'xlsx','3',NULL,'2','2','15','instructor','yellow','2023-07-06','2023-07-06','inst1','inst1','user',NULL,0,NULL),(15,'C:\\xampp2\\htdocs\\latest\\TOS\\includes\\Pages\\files','links','offline','3',NULL,'2','2','15','instructor','red','2023-07-06','2023-07-06','inst1','inst1','user','NULL',0,NULL),(16,'C:\\xampp2\\htdocs\\latest\\TOS\\includes\\Pages\\files','links','offline','0',NULL,'2','2','13','student','red','2023-07-06','2023-07-06','inst','inst','','NULL',0,NULL),(17,'google.com','zae','offline','1',NULL,'2','2','13','super admin','red','2023-07-07','2023-07-07','A4','A4','user','NULL',0,NULL),(18,'C:\\xampp\\htdocs','C:xampph','offline','5',NULL,'2','2','11','super admin','red','2023-07-07','2023-07-07','A4','A4','user',NULL,0,NULL),(20,'1.mp4',NULL,'mp4','1',NULL,'2','2','11','super admin','red','2023-07-11','2023-07-11','A4','A4','user',NULL,0,NULL),(21,'bzdfb.pdf',NULL,'pdf','6',NULL,'0','0','11','super admin','red','2023-07-12','2023-07-12','A4','A4',NULL,'NULL',0,NULL),(22,'folder page varun.pdf',NULL,'pdf','7',NULL,'0','0','11','super admin','red','2023-07-12','2023-07-12','A4','A4',NULL,'NULL',0,NULL),(23,'WhatsApp Video 2022-12-23 at 21.02.06.mp4',NULL,'mp4','7',NULL,'0','0','11','super admin','red','2023-07-19','2023-07-19','A4','A4',NULL,NULL,0,NULL),(25,'MicrosoftTeams-image (12).png',NULL,'png','0',NULL,'0','0','11','super admin','red','2023-07-19','2023-07-19','A4','A4',NULL,NULL,0,NULL),(26,'MicrosoftTeams-image (11).png',NULL,'png','0',NULL,'0','0','11','super admin','blue','2023-07-19','2023-07-19','A4','A4',NULL,NULL,0,NULL),(27,'MicrosoftTeams-image (10).png',NULL,'png','0',NULL,'0','0','11','super admin','blue','2023-07-19','2023-07-19','A4','A4',NULL,NULL,0,NULL),(28,'MicrosoftTeams-image (9).png',NULL,'png','0',NULL,'0','0','11','super admin','blue','2023-07-19','2023-07-19','A4','A4',NULL,NULL,0,NULL),(30,'ayushi.pdf',NULL,'pdf','1',NULL,'2','2','11','super admin','red','2023-07-24','2023-07-24','A4','A4','user',NULL,0,NULL),(31,'01.pdf',NULL,'pdf','0',NULL,'2','2','11','super admin','red','2023-07-24','2023-07-24','A4','A4','',NULL,0,NULL),(32,'MicrosoftTeams-image (32).png',NULL,'png','1',NULL,'2','2','11','super admin','red','2023-07-26','2023-07-26','A4','A4','user',NULL,0,NULL),(33,'MicrosoftTeams-image (35).png',NULL,'png','2',NULL,'2','2','11','super admin','red','2023-07-26','2023-07-26','A4','A4','user',NULL,0,NULL),(34,'Python Probation Task (1).docx',NULL,'docx','0',NULL,'0','0','11','super admin','red','2023-09-01','2023-09-01','A4','A4',NULL,'files',3,NULL),(35,'C:\\Users\\Lenovo\\Desktop\\Im','checking','online','0',NULL,'0','0','11','super admin','red','2023-09-01','2023-09-01','A4','A4','',NULL,0,NULL),(36,'Resume--Munavar.pdf',NULL,'pdf','0',NULL,'2','2','11','super admin','red','2023-10-10','2023-10-10','A4','A4','',NULL,0,NULL),(37,'Shivani_Sharma.pdf',NULL,'pdf',NULL,NULL,NULL,'0','11','super admin','red','2023-10-31','2023-10-31','A4','A4',NULL,NULL,0,'chat'),(38,'success.jpg',NULL,'jpg',NULL,NULL,NULL,'0','11','super admin','red','2023-10-31','2023-10-31','A4','A4',NULL,NULL,0,'chat'),(39,'C:\\\\xampp\\\\htdocs\\\\latest\\\\TOS','C:\\xampp\\h','offline',NULL,NULL,NULL,'0','11','super admin','red','2023-10-31','2023-10-31','A4','A4',NULL,NULL,0,'chat'),(40,'arudantech.com/','arudantech','online',NULL,NULL,NULL,'0','11','super admin','red','2023-10-31','2023-10-31','A4','A4',NULL,NULL,0,NULL),(42,'Shivani_Sharma.pdf',NULL,'pdf',NULL,NULL,NULL,'0','11','super admin','red','2023-11-01','2023-11-01','A4','A4',NULL,NULL,0,'chat'),(43,'76895-shivamcv-2.pdf',NULL,'pdf',NULL,NULL,NULL,'0','11','super admin','red','2023-11-01','2023-11-01','A4','A4',NULL,NULL,0,'academic'),(44,'Shivani_Sharma.pdf',NULL,'pdf',NULL,NULL,NULL,'0','11','super admin','red','2023-11-02','2023-11-02','A4','A4',NULL,NULL,0,'chat'),(45,'Django Task (1).docx',NULL,'docx',NULL,NULL,NULL,'0','11','super admin','red','2023-11-02','2023-11-02','A4','A4',NULL,NULL,0,'chat'),(46,'C:\\xampp\\\\htdocs\\latest\\TOS','C:xampph','offline',NULL,NULL,NULL,'0','11','super admin','red','2023-11-02','2023-11-02','A4','A4',NULL,NULL,0,'chat'),(47,'D:\\xampp','D:xampp','online',NULL,NULL,NULL,'0','11','super admin','red','2023-11-02','2023-11-02','A4','A4',NULL,NULL,0,NULL),(48,'Shivani_Sharma.pdf',NULL,'pdf',NULL,NULL,NULL,'0','11','super admin','red','2023-11-02','2023-11-02','A4','A4',NULL,NULL,0,'chat'),(49,'Python Probation Task (1).docx',NULL,'docx',NULL,NULL,NULL,'0','11','super admin','red','2023-11-02','2023-11-02','A4','A4',NULL,NULL,0,'chat'),(51,'C:\\xampp\\htdocs','C:xampph','offline',NULL,NULL,NULL,'0','11','super admin','red','2023-11-02','2023-11-02','A4','A4',NULL,NULL,0,'chat'),(52,'D:\\xampp\\htdocs','D:xampph','online',NULL,NULL,NULL,'0','11','super admin','red','2023-11-02','2023-11-02','A4','A4',NULL,NULL,0,'chat'),(53,'VarunPicture.jpeg',NULL,'jpeg',NULL,NULL,NULL,'0','11','super admin','red','2023-11-03','2023-11-03','A4','A4',NULL,NULL,0,'chat'),(54,'check.jpg',NULL,'jpg',NULL,NULL,NULL,'0','11','super admin','red','2023-11-03','2023-11-03','A4','A4',NULL,NULL,0,'chat'),(55,'C:\\\\xampp\\\\htdocs','C:\\xampp\\h','offline',NULL,NULL,NULL,'0','11','super admin','red','2023-11-06','2023-11-06','A4','A4',NULL,NULL,0,'academic'),(56,'http://arudantech.com/','http://aru','online',NULL,NULL,NULL,'0','11','super admin','red','2023-11-06','2023-11-06','A4','A4',NULL,NULL,0,'academic'),(57,'C:\\\\xampp\\\\htdocs\\\\latest\\\\TOS','C:\\xampp\\h','offline',NULL,NULL,NULL,'0','12','instructor','yellow','2023-11-06','2023-11-06','Bharti','Bharti',NULL,NULL,0,'chat'),(58,'81660-shivani_sharma.pdf',NULL,'',NULL,NULL,NULL,'0','11','super admin','red','2023-11-06','2023-11-06','A4','A4',NULL,NULL,0,'academic'),(60,'admin test.html',NULL,'html',NULL,NULL,NULL,'0','11','super admin','red','2023-11-07','2023-11-07','A4','A4',NULL,NULL,0,'testDoc'),(61,'D:\\xampp\\htdocs/latest','D:xampph','offline',NULL,NULL,NULL,'0','11','super admin','red','2023-11-07','2023-11-07','A4','A4',NULL,NULL,0,'testDoc'),(62,'http://arudantech.com/services','http://aru','online',NULL,NULL,NULL,'0','11','super admin','red','2023-11-07','2023-11-07','A4','A4',NULL,NULL,0,'testDoc'),(63,'C:\\\\xampp\\\\htdocs\\\\latest\\\\TOS\'s','C:\\xampp\\h','offline',NULL,NULL,NULL,'0','11','super admin','red','2023-11-07','2023-11-07','A4','A4',NULL,NULL,0,'chat'),(64,'C:\\\\xampp','C:\\xampp','offline',NULL,NULL,NULL,'0','12','instructor','yellow','2023-11-07','2023-11-07','Bharti','Bharti',NULL,NULL,0,'chat'),(65,'webrun: D:\\xampp\\htdocs','webrun: D:','online','5',NULL,'2','2','11','super admin','red','2023-11-09','2023-11-09','A4','A4','user',NULL,0,NULL),(66,'https://www.google.com/search?q=what+are+the+macros+conditions&rlz=1C1ONGR_enIN1030IN1030&oq=what+are+the+macros+conditions&aqs=chrome..69i57j0i22i30j0i8i13i30j0i390i650l4.11772j0j7&sourceid=chrome&ie=UTF-8','https://ww','online','5',NULL,'2','2','11','super admin','red','2023-11-09','2023-11-09','A4','A4','user','files',6,NULL),(67,'https://chat.openai.com/c/41263fe5-77a6-4829-90dc-6c379b032851','https://ch','online','5',NULL,'2','2','11','super admin','red','2023-11-14','2023-11-14','A4','A4','user','files',7,NULL),(69,'C:\\\\xampp\\\\htdocs\\\\latest\\\\TOS\'s','C:\\xampp\\h','offline',NULL,NULL,NULL,'0','11','super admin','red','2023-11-16','2023-11-16','A4','A4',NULL,NULL,0,NULL),(70,'C:\\\\xampp/Tos','C:xampp','offline',NULL,NULL,NULL,'0','11','super admin','red','2023-11-16','2023-11-17','A4','Bharti',NULL,NULL,0,NULL),(71,'D:\\\\xampp\\\\htdocs','D:\\xampp\\h','online',NULL,NULL,NULL,'0','11','super admin','red','2023-11-16','2023-11-16','A4','A4',NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `user_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdepartment`
--

DROP TABLE IF EXISTS `userdepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdepartment` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `departmentId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdepartment`
--

LOCK TABLES `userdepartment` WRITE;
/*!40000 ALTER TABLE `userdepartment` DISABLE KEYS */;
INSERT INTO `userdepartment` VALUES (1,'12','1'),(2,'12','2'),(3,'13','2');
/*!40000 ALTER TABLE `userdepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdocumnet`
--

DROP TABLE IF EXISTS `userdocumnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdocumnet` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `fileType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdocumnet`
--

LOCK TABLES `userdocumnet` WRITE;
/*!40000 ALTER TABLE `userdocumnet` DISABLE KEYS */;
INSERT INTO `userdocumnet` VALUES (1,'13','1','Shahid_Akhtar_Resume (3-yrs Exp.pdf','pdf');
/*!40000 ALTER TABLE `userdocumnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `file_name` varchar(233) DEFAULT NULL,
  `uploaded_on` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(70) DEFAULT NULL,
  `initial` varchar(30) DEFAULT NULL,
  `studid` varchar(30) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `ins_id` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `seen_status` int(255) DEFAULT NULL,
  `departmentId` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (11,'850_6727-PRINT.jpg','2023-08-24 12:50:42','A4','A4','HA','admin','super admin','2147483647','gender','A4','11','ayushi2@gmail.com1','25d55ad283aa400af464c76d713c07ad','2022-06-06 10:31:19',0,NULL,'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAADICAYAAADGFbfiAAAAAXNSR0IArs4c6QAAFLVJREFUeF7t3QfsBEUdhuFPRAERbIiKWBJsqBgQFRuCaASsKGJXbNg7oogoICoWQCn2bizYFVGwE7EHey8RO6IgShFsaL5kz0yGubu9vZvd2bl3EkK4292ZeWa533932mVEQgABBBBAoIPAZTqcwykIIIAAAgiIAMJNgAACCCDQSYAA0omNkxBAAAEECCDcAwgggAACnQQIIJ3YOAkBBBBAgADCPYAAAggg0EmAANKJjZMQQAABBAgg3AMIIIAAAp0ECCCd2DgJAQQQQIAAwj2AAAIIINBJgADSiY2TEEAAAQQIINwDCCCAAAKdBAggndg4CQEEEECAAMI9gAACCCDQSYAA0omNkxBAAAEECCDcAwgggAACnQQIIJ3YOAkBBBBAgADCPYAAAggg0EmAANKJjZMQQAABBAgg3AMIIIAAAp0ECCCd2DgJAQQQQIAAwj2AAAIIINBJgADSiY2TEEAAAQQIINwDCCCAAAKdBAggndg4CQEEEECAAMI9gAACCCDQSYAA0omNkxBAAAEECCDcAwgggAACnQQIIJ3YOAkBBBBAgADCPYAAAggg0EmAANKJjZMQQAABBAgg3AMIIIAAAp0ECCCd2DgJAQQQQIAAwj2AAAIIINBJgADSiY2TEEAAAQQIINwDCCCAAAKdBAggndg4CQEEEECAAMI9gAACCCDQSYAA0omNkxBAAAEECCDcAwgggAACnQQIIJ3YVnrSVSVdRdK5kv6y0itzMQQQQCCjAAEkI26LS99R0mnBcTtL+lKL8zgEAQQQGFyAADJsE3xY0n2DIpwu6dbDFoncEUAAgXYCBJB2TrmOeqekhwcX/6+kG0v6ea4MuS4CCCCwKgECyKoku13nW5J2aE69SNImkj4oaZ9ul+MsBBBAoD8BAkh/1nFOG0o6X9LGki5unjq2aw7aS9LHhisaOSOAAALzBQgg841yHXGHoMP8+03AOFCSA4ufRm4j6Qe5Mue6CCCAwLICBJBlBbuf/xZJj25O/4Ck50n6iqQtm89+K8mjtH7TPQvORAABBPIJEEDy2c668uaS/izp8s1Br5T0HEnfkzR5jeWvfMwkoAxTUnJFAAEEpggQQIa5Nfy08dIg62dLOkrSKZJ2j4r0FEmvGaaY5IoAAghMFyCADHN3eMa5Z59P0hMkvUHScZIcMML0V0nbSvrjMEUlVwQQQCAtQADp/87YuxmqG+Z8uKQXStqq6fO4bFSsoyXt339RyREBBBDgCaSke+C1kp4YFej5wSutR0l6a/S918m6XjPst6S6UBYEEFhjAZ5A+m98zzYP09mSbijJr6qc3CbfjTrT/fl+kt7cf3HJEQEEEEgLEED6vTN2lfSFKEv3ezwt+mwnSZ+XdIXgcw/x9dwREgIIIFCEAAGk32Z4f2KZkjtLOjVRDA/t9eisMN0pWr23benvJ+mpkg6bklfb63AcAggg8H8BAki/N4MXSbxBkKUDhwNIKvk4L2dy0+BLv9rafoEi+4nnEEn+9yTt2QwXXuAyHIoAAghcWoAA0t9dcS1Jv4heS017+piUynNCPtIssjj5bN45k+P8xHFsononSHpwf9UmJwQQqFWAANJfyz4pmhD46cSkwVRp/ARxaPCFlz15wJRiX1HSvs2ILs92TyUPI/Y+JCQEEEBgKQECyFJ8C53szvPwVZL7I8LAMO1iDgR+lRWem1qtN/W6Kr6mhxA/eaFSczACCCAwRYAA0t+tEQeQtq+iXELvD+IO+EkK+07cp+G5I7P2EPmypGMk+emFhAACCKxEgACyEsZWFzkrWhhxEfvNJH1V0s2CnE6UtJskv7aals5pJi0SOFo1EQchgMAiAov8iC1yXY69tMB5khwInC6c88Of8oufQuYZf07S/YMJivOO53sEEEBgIYGhA8hVm9J6ccHaUzwDva29X1E9V9I/JN1tDpIdPTHRr7t+VDso9UMAgWEF2v6I5SilN0s6rbnwnyR5g6XjJf0hR2YFXDMMIN+UdKsZZfLw3QdJuoekq7cou1fq9Wq+R0q6oMXxHIIAAggsLTBkAPmopPvMqMGXJL2t+Sf+633pivd8AT9puT8iTLH9Rs2ThjeW2nSB8h0h6aAFjudQBBBAYCUCQwYQb5LkuRHzkvsLPILIK9aONe0o6fSg8N7rPNx5MNzedlYdvfCi0xbBQe+V9JCxwlBuBBAYr8CQAeRkSXssQOc9wj3y6F2SvrbAeSUcGgcQl8kr8O4QDc9NldXb2r5T0qckfabZcMr9HJN0iaQbN7PcS6grZUAAgTURGDKArOK11N8kva7pP/EyIaWmVADxpL5ZT2BnSnqjpPdI+llQMa/I69d7Yfq+pFs3He2lGlAuBBCoTGDIAOJXOv5hnSS/qnKnumdUb9zR+SJJ7pB3J7WX6/ikJG/GNHSKh+B6RJX7PKald0t62Izvz5B0/ej7xyQ2ohq63uSPAAIVCwwZQPwDf9/I1n9de9+LDZohq97m9XZL+P9e0ickfajpgxhquLAXNfTihpP0L0mXS9TLE/78ZJJa3j08fJtm06mws91PYDeStIonuyXIORUBBNZFYMgAEi8uaHN3rD8lwPcP5IGSDl5Bg/hH2T/kXt227+Qhto+bk6kXSFxkxvgBkl4RXdOj2txPREIAAQSyCwwZQPxXdNxv4VdQWybmMtxc0tOjvTT8WTgaqS3W95rXQ+436CvF62DF+XrorjeQWiT5Kc1PcfdutsH1uexauIggxyKAwFICQwYQF9z7gF8pqsEzmmG7bSq2rST/c4vg4P9I8rIhD4/6WMLruV/ETzXugO/jlU+8JHtYlrc3iyG2qW98jNfCOinaL+RFzSZSXa7HOQgggEBrgaEDiCcKPjIq7a+aJw0HgmWTO+Q9VNYdzOFChJPrfqsJNLmX/XjxlHkss/b2aFN3t5/3FblrcPAvJfnpjoQAAghkFRg6gDh4OIjEadH+gFlIGzZLfPgVWCp56Q8/iXg2978zaXs5kp9KukpzfT8hub9iXmd5m+J4i1sHwrAtnd9k0mGba3AMAgggsLDA0AHE+33/MFHqXyeGqS5cueaEj0u6Z4uTPaz4idGM8RantT7EP/R3aY72SrnfaX3m/APdlxQ+dSyy18j8q3MEAgggkBAYOoC4SO6PuHKibP5B9OuYZZL/yveaW3Hya7J4HoWPcSe+h9t6Ndvzl8m453PjV4Geqf60nstAdgggsGYCJQSQH0u6ScJ9P0lvXqI9vNGSnyq8zEeYPAnPfSMPbIYIT5aUD4/xqyVvObuKV0xLVKH1qa6PR3pNkp9IvFQKCQEEEMgmUEIAmTZHYtm/ol8v6fGRnCcWulPd60s5bS3pfZJuP0W47b7l2Rqo5YVTS6WU0LYti89hCCAwRoESfmReLsnzIOLkBRO7zkL3UNYXRBf8uyTvQfLt6PPNm+1i3R+TSn7F5ldhk71LSmznVF+S9xvxki4kBBBAIItACQHkoc0Ku3EF/YPvH/dFh/N6fwzPXo+TN6sKlxOJv/cGTvvP2Oip9KcRB9ydgkqVXt4sNzQXRQCB/gRKCCCp1y8TAa8wG+6jMU/Ge4Z4zkWcfiNpr8TTR+p6h86YiFfyj3K8v4r7bzwai4QAAghkESghgLhiHv2UWoF3kRVmry3pdwklr/Lr1XC9/0jb5OPdge8noDgtO/mvbRkWPS4ViK8zxWTRa3M8AgggcCmBUgLIWc0aWHEBvVjgc1u2m9eSenZ0rIfi+hWZ54IsmjzM1yObUsN9S30SiZfI9yAC7ylCQgABBFYuUEoA8V/7ftqIk3fi27dlrT0hMewI96zyXZoFBlteInmY54T4iSROXmr+8GUunOFc79bogDlJNvGikyQEEEBg5QKlBBAvM/LqRO28Ym64UOI0AO8r4pVpw/QqSc9akVgqiHhPj5dKcp9JKclzWs4JCuMnL6/WS0IAAQRWLlBKAPHoodQ+596yNjVLPYZILZe+6rp5vojX6IpTaX0iezb7nrjPh9noK/9fhgsigMBEYNU/sl1lvTufdwv07PE43bLF6Kl4SfZcP+reS2S7RBlL7RPp2h6chwACCMwVKCWAuKDev9x/PcfJEw1T8zomx3mo7zeik3LuzBcPl51k7c7+eIfAuQ3AAQgggMBYBUoKIN7K1suXxMlDc687Y+OnVP+J9wb/ecZGSS2/8k9JG2XMk0sjgAACRQmUFEBuMONH35tBTdv0yXuA3ytS7aNeX5d0myhfXmUVdXtTGAQQyCnQxw/tIuV3P8hk06XwvGdOGaUVr0Lrc94k6XGLZLrEsX+QdK0BgtcSReZUBBBAYDUCpQWQR0h6R6Jq0zrFU6+S7rCCuR9tdVPrePEU0laP4xBAYNQCpQWQaTsUehl2L70epvtJ+lD0Wa7RV7Ma+SvRqsF+irraqO8KCo8AAgi0ECgtgLjIP5DkPo84eWOonzUfOtB8TJL7TcI0xFaufuLwrPQwefJel+VTWjQZhyCAAAJlCJQYQLyelde1itOjJXnrVqd4C1d/dqakrQZg9fDdl0X5sgbVAA1Blggg0K9AiQHEe6F7S9Y4eb0sb3O7qaSfJF5pedZ1ahhwbtF4+RDnd8qUOS25y8L1EUAAgd4ESgwgrnw8s9yfecST54M4kDwyEvKKs/H2tb0hNqv2ekRYmIZ4ndZnnckLAQTWXKDUAJJa28pN5b4Gb1cbJ88DOWnAtvSwYY8IC9OPo9WBByweWSOAAAKrFyg1gPgJY9LfEdba+5LvHDEMMfIq1RKpp6ZjJD1j9c3GFRFAAIHhBUoNIF6B99wEj/e3CEdoeSfDu0vy9q1DJ09gfGyiEF7B10GOhAACCFQlUGoAMfLZifkU/myLoAU86TDuDxmqgRz0fiXpSgSRoZqAfBFAoE+BkgOIg4NnpofpEkkbNB/4qcMd1SWl1NIqk/LxJFJSS1EWBBBYWqDkAHJ1SZ9vOqInQSOscKk/yN6h8JBEy7xW0pOXbjEugAACCBQiUHIAMdE9Jb1VkoNJmP4sactCDFPFSG2Be5QkT5IkIYAAAlUIlB5AXL4vR2tNGf4ISQcV3gL7SPIs9R0lufPfwcMTDEkIIIBAFQKlBxAj7yvp7ZG29yd/0EhawP0iJYwSGwkXxUQAgbEIjCGAbN4soniNBtXzLa4g6eKxIFNOBBBAoEaBMQQQu3udK0/Km6SvJV5r1dg+1AkBBBAoVmAsAcQLKJ4RdKZfKOkmkrxfOgkBBBBAYACBsQQQ07gDevfAqNRhvAM0I1kigAAC/QuMKYAcIOkVAVGJEwn7b0FyRAABBAYSGFMA2UmS+z7CtAmd6QPdOWSLAAJrLzCmAOJ9xr0WVpi8vPvha9+KACCAAAIDCIwpgJjnT9GsdO9MuO0AbmSJAAIIrL3A2ALIZyXdJWq160v69dq3JAAIIIBAzwJjCyBHS3pmZHSwpJf07EZ2CCCAwNoLjC2APEnSa6JWY+vYtb+NAUAAgSEExhZAbt8srhhb3VbS14cAJE8EEEBgXQXGFkCuKOk8SXG5x7A677reY9QbAQQqFRhbAHEzePmSa0ft8R1JO1TaRlQLAQQQKFJgjAHkZEl7JDS3knRmkcoUCgEEEKhQYIwB5PgpW8PuLenDFbYRVUIAAQSKFBhjAPGQ3dRuhMc1y74XCU2hEEAAgdoExhhAvEXs6YmGOF+SN58iIYAAAgj0IDDGAGIW70qYSttL+m4PbmSBAAIIrL1AbQHk5ZIOXPtWBQABBBDoQWCsAcSjra6Z8PmlpG16cCMLBBBAYO0FxhpA3N/hSYWpdENJv1j7lgUAAQQQyCww1gAyrQ/EXA+WdEJmNy6PAAIIrL3AWAPIFyTtOqX1jpX09LVvWQAQQACBzAI1BpAvStolsxuXRwABBNZeYKwB5FBJh0xpvXMlefvbWa+51r7hAUAAAQSWFRhrAPHrK7/GmpZYF2vZO4PzEUAAgTkCYw0g3sb2jBl1221OgOHGQAABBBBYUmCsAcTVvkDSplPqf5gkv+YiIYAAAghkEhhzADlS0v5TXB4v6Y2ZzLgsAggggEBiZ78xodxU0g95AhlTk1FWBBCoSWDMTyBuhxMl3SvRILzCqukupS4IIFCkwNgDyD0knZSQvZWkbxYpTqEQQACBSgTGHkA2k/QWSfsE7fF7SVtX0j5UAwEEEChWYOwBZAL7VUm3bf6DnQmLvd0oGAII1CRQSwBxm0zWxjq1pgaiLggggECpAjUFkFKNKRcCCCBQpQABpMpmpVIIIIBAfgECSH5jckAAAQSqFCCAVNmsVAoBBBDIL0AAyW9MDggggECVAgSQKpuVSiGAAAL5BQgg+Y3JAQEEEKhSgABSZbNSKQQQQCC/AAEkvzE5IIAAAlUKEECqbFYqhQACCOQXIIDkNyYHBBBAoEoBAkiVzUqlEEAAgfwCBJD8xuSAAAIIVClAAKmyWakUAgggkF+AAJLfmBwQQACBKgUIIFU2K5VCAAEE8gsQQPIbkwMCCCBQpQABpMpmpVIIIIBAfgECSH5jckAAAQSqFCCAVNmsVAoBBBDIL0AAyW9MDggggECVAgSQKpuVSiGAAAL5BQgg+Y3JAQEEEKhSgABSZbNSKQQQQCC/AAEkvzE5IIAAAlUKEECqbFYqhQACCOQXIIDkNyYHBBBAoEoBAkiVzUqlEEAAgfwCBJD8xuSAAAIIVClAAKmyWakUAgggkF+AAJLfmBwQQACBKgUIIFU2K5VCAAEE8gsQQPIbkwMCCCBQpQABpMpmpVIIIIBAfgECSH5jckAAAQSqFCCAVNmsVAoBBBDIL0AAyW9MDggggECVAgSQKpuVSiGAAAL5BQgg+Y3JAQEEEKhSgABSZbNSKQQQQCC/AAEkvzE5IIAAAlUKEECqbFYqhQACCOQXIIDkNyYHBBBAoEoBAkiVzUqlEEAAgfwCBJD8xuSAAAIIVClAAKmyWakUAgggkF+AAJLfmBwQQACBKgUIIFU2K5VCAAEE8gsQQPIbkwMCCCBQpQABpMpmpVIIIIBAfgECSH5jckAAAQSqFCCAVNmsVAoBBBDIL0AAyW9MDggggECVAgSQKpuVSiGAAAL5BQgg+Y3JAQEEEKhS4H8ksw7nKJVYXgAAAABJRU5ErkJggg=='),(12,'agesearch v3_1.png','2023-07-20 13:01:00','Ayushi bharti','Bharti',NULL,'inst1','instructor','7021364749','male',NULL,'11','archana@msarii.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,'1',NULL),(13,'Donna.png','2023-09-11 17:21:31','student1','Archana',NULL,'inst2','instructor','7021364749','male',NULL,'11','archana@msarii.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL),(14,'Donna.png','2023-07-19 15:28:57','student2','archi','AR','std1','student','7021364749','male',NULL,'11','archana@msarii.com','25d55ad283aa400af464c76d713c07ad','2022-05-10 10:31:19',NULL,NULL,NULL),(15,'pngtree-a-small-pink-white-flower-png-image_2664964.png',NULL,'varun mishra','varun',NULL,'inst33','instructor','7021364749','male',NULL,'11','archana@msarii.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL),(16,'Donna.png','2023-03-08 13:58:47','archana guthale','inst',NULL,'studen4','student','7021364749','male',NULL,'11','archana@msarii.com','25d55ad283aa400af464c76d713c07ad','2022-04-05 10:31:19',NULL,NULL,NULL),(17,'Donna.png',NULL,'jhvbsrf','stu','in','studen48','student','7021364749','male',NULL,'11','archana@msarii.com','25d55ad283aa400af464c76d713c07ad','2022-06-06 10:31:19',NULL,NULL,NULL),(18,'Donna.png',NULL,'archana guthale','archi3','ar','archana','student','0702136474','male',NULL,'11','archana@msarii.com','cf65e9e5920cda080f7903a968ad9744','2022-06-06 10:31:19',NULL,NULL,NULL),(19,'Donna.png',NULL,'archana guthale','archi1','','studen9','student','0702136474','male',NULL,'11','archana@msarii.com','827ccb0eea8a706c4c34a16891f84e7b','2022-01-12 10:31:19',NULL,NULL,NULL),(20,'Donna.png',NULL,'archana','archi4','st','std20','student','0702136474','female',NULL,'11','archana@msarii.com','25d55ad283aa400af464c76d713c07ad','2022-07-13 10:31:19',NULL,NULL,NULL),(21,'Donna.png',NULL,'student','stu','AR','std10','student','0702136474','male',NULL,'11','archana@msarii.com','26bca7d18fac41f574d34da8d6df4170','2022-08-18 10:31:19',NULL,NULL,NULL),(22,'Donna.png',NULL,'student','inst','ar','std11','student','0702136474','male',NULL,'11','archana@msarii.com','26bca7d18fac41f574d34da8d6df4170','2023-09-13 00:00:00',NULL,NULL,NULL),(23,'Donna.png',NULL,'testing user','user1','AR','std103','student','7021364749','female',NULL,'11','archana@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','2023-10-19 00:00:00',NULL,NULL,NULL),(24,'Donna.png',NULL,'archana guthale','user4','AR','STD09','student','+919474512','female',NULL,'11','archana@gmail.com','26bca7d18fac41f574d34da8d6df4170','2023-12-14 00:00:00',NULL,NULL,NULL),(25,'Donna.png',NULL,'abcd','abcd','AB','std7','student','0876543219','female',NULL,'11','ayushi2@gmail.com','25d55ad283aa400af464c76d713c07ad','2023-02-21 00:00:00',NULL,NULL,NULL),(26,'Donna.png',NULL,'Ayushi Bharti','ayu','ayu','std44','IT people','0883012547','female',NULL,'11','ayushi260395@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL),(27,'Donna.png',NULL,'student1','std1','SD','std0','student','8765432190','female',NULL,'11','ayushi2@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL),(28,'Donna.png',NULL,'student2','std2','SA','std9','student','8765432190','female',NULL,'11','ayushi2@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL),(29,'Donna.png','2023-08-08 10:41:40','student3','std3','SG','std8','student','0876543219','female',NULL,'11','ayushi2@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL),(30,'Donna.png',NULL,'abcdefgh','abcd','MA','sti9','student','8765432190','male',NULL,'11','ayushi2@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL),(31,'Donna.png',NULL,'ayushi','ayu','MAA','std66','student','0876543219','female',NULL,'11','ayushi2@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL),(32,'Donna.png',NULL,'Varun Mishra','varun','VV','std88','student','0876543219','male',NULL,'11','jack@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL),(33,'Donna.png',NULL,'Archana Nair','Archana','AA','std55','student','0876543219','female',NULL,'11','ayushi2@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL),(34,'Donna.png',NULL,'Anchit ','anchit','AN','std99','student','0876543219','male',NULL,'11','ayushi2@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `VehicleName` varchar(255) DEFAULT NULL,
  `VehicleType` varchar(255) DEFAULT NULL,
  `VehicleNumber` varchar(255) DEFAULT NULL,
  `VehicleSpot` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,NULL,'1','hsdjsd','dsmd');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicletype`
--

DROP TABLE IF EXISTS `vehicletype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicletype` (
  `vehid` int(11) NOT NULL,
  `vehicletype` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicletype`
--

LOCK TABLES `vehicletype` WRITE;
/*!40000 ALTER TABLE `vehicletype` DISABLE KEYS */;
INSERT INTO `vehicletype` VALUES (1,'Car'),(2,'SUV ');
/*!40000 ALTER TABLE `vehicletype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warning_category_data`
--

DROP TABLE IF EXISTS `warning_category_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warning_category_data` (
  `id` int(30) NOT NULL,
  `warning` varchar(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `category_phase` varchar(30) DEFAULT NULL,
  `category_value` varchar(30) DEFAULT NULL,
  `grade` varchar(30) DEFAULT NULL,
  `count` int(30) DEFAULT NULL,
  `threshold` int(30) DEFAULT NULL,
  `group_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warning_category_data`
--

LOCK TABLES `warning_category_data` WRITE;
/*!40000 ALTER TABLE `warning_category_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `warning_category_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warning_data`
--

DROP TABLE IF EXISTS `warning_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warning_data` (
  `id` int(11) NOT NULL,
  `warning_name` varchar(30) DEFAULT NULL,
  `ctp` varchar(30) DEFAULT NULL,
  `file_name` varchar(299) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  `uploaded_on` varchar(30) DEFAULT NULL,
  `bgColor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warning_data`
--

LOCK TABLES `warning_data` WRITE;
/*!40000 ALTER TABLE `warning_data` DISABLE KEYS */;
INSERT INTO `warning_data` VALUES (1,'Yellow Warninig','1',NULL,NULL,NULL,NULL,'#401cf2'),(2,'Red Warning','1',NULL,NULL,NULL,NULL,'brown'),(3,'green warning','2',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `warning_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warning_permission`
--

DROP TABLE IF EXISTS `warning_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warning_permission` (
  `id` int(30) NOT NULL,
  `std_id` varchar(30) DEFAULT NULL,
  `warning_id` varchar(30) DEFAULT NULL,
  `permission` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warning_permission`
--

LOCK TABLES `warning_permission` WRITE;
/*!40000 ALTER TABLE `warning_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `warning_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-01 12:05:13
