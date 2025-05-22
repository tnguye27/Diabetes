CREATE DATABASE  IF NOT EXISTS `diabetes` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `diabetes`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: diabetes
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `abn_gluc_tol_test`
--

DROP TABLE IF EXISTS `abn_gluc_tol_test`;
/*!50001 DROP VIEW IF EXISTS `abn_gluc_tol_test`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `abn_gluc_tol_test` AS SELECT 
 1 AS `Diabetes_Type`,
 1 AS `Abnormal_Glucose_Tolerance_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_birth_weight`
--

DROP TABLE IF EXISTS `avg_birth_weight`;
/*!50001 DROP VIEW IF EXISTS `avg_birth_weight`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_birth_weight` AS SELECT 
 1 AS `Diabetes_Type`,
 1 AS `Average_Birth_Weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_insulin_level`
--

DROP TABLE IF EXISTS `avg_insulin_level`;
/*!50001 DROP VIEW IF EXISTS `avg_insulin_level`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_insulin_level` AS SELECT 
 1 AS `Diabetes_Type`,
 1 AS `Avg_Insulin_Level`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `env_socio_factors`
--

DROP TABLE IF EXISTS `env_socio_factors`;
/*!50001 DROP VIEW IF EXISTS `env_socio_factors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `env_socio_factors` AS SELECT 
 1 AS `Pres_Low_Type_2`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `environmental`
--

DROP TABLE IF EXISTS `environmental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `environmental` (
  `environmental_id` smallint NOT NULL AUTO_INCREMENT,
  `environmental_factors` varchar(10) DEFAULT NULL,
  `socioeconomic_factors` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`environmental_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environmental`
--

LOCK TABLES `environmental` WRITE;
/*!40000 ALTER TABLE `environmental` DISABLE KEYS */;
INSERT INTO `environmental` VALUES (1,'Absent','Low'),(2,'Present','Medium'),(3,'Absent','High'),(4,'Present','Low'),(5,'Absent','Medium'),(6,'Absent','High'),(7,'Present','Low'),(8,'Absent','Medium'),(9,'Present','Low'),(10,'Absent','Medium'),(11,'Present','Medium'),(12,'Present','Medium'),(13,'Absent','High'),(14,'Present','Low'),(15,'Absent','Low'),(16,'Present','High'),(17,'Present','Low'),(18,'Present','High'),(19,'Present','High'),(20,'Present','High'),(21,'Absent','Medium'),(22,'Present','Low'),(23,'Present','Medium'),(24,'Absent','Low'),(25,'Absent','High'),(26,'Absent','Medium'),(27,'Present','High'),(28,'Absent','Medium'),(29,'Absent','Medium'),(30,'Absent','Low'),(31,'Absent','High'),(32,'Absent','Low'),(33,'Absent','Low'),(34,'Absent','High'),(35,'Absent','Low'),(36,'Absent','Low'),(37,'Present','Low'),(38,'Present','High'),(39,'Absent','Medium'),(40,'Absent','Low'),(41,'Absent','High'),(42,'Absent','Medium'),(43,'Absent','Low'),(44,'Present','Low'),(45,'Absent','Medium'),(46,'Absent','Medium'),(47,'Present','Medium'),(48,'Absent','Low'),(49,'Absent','High'),(50,'Absent','Medium'),(51,'Absent','Low'),(52,'Absent','Low'),(53,'Present','Medium'),(54,'Present','Low'),(55,'Absent','High'),(56,'Absent','Low'),(57,'Absent','Medium'),(58,'Present','Medium'),(59,'Present','Low'),(60,'Present','Medium'),(61,'Absent','High'),(62,'Present','Medium'),(63,'Absent','Medium'),(64,'Present','High'),(65,'Absent','Medium'),(66,'Absent','High'),(67,'Present','High'),(68,'Absent','Medium'),(69,'Absent','Low'),(70,'Present','Low'),(71,'Present','High'),(72,'Absent','Low'),(73,'Absent','Low'),(74,'Present','Medium'),(75,'Absent','Medium'),(76,'Present','Medium'),(77,'Absent','Medium'),(78,'Present','High'),(79,'Present','Low'),(80,'Absent','Medium'),(81,'Absent','High'),(82,'Absent','Medium'),(83,'Present','Low'),(84,'Absent','Low'),(85,'Absent','Low'),(86,'Absent','High'),(87,'Present','Low'),(88,'Present','High'),(89,'Present','Low'),(90,'Absent','Medium'),(91,'Absent','Medium'),(92,'Present','Medium'),(93,'Absent','High'),(94,'Present','High'),(95,'Absent','High'),(96,'Absent','High'),(97,'Absent','High'),(98,'Absent','Low'),(99,'Absent','Medium'),(100,'Absent','Low');
/*!40000 ALTER TABLE `environmental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastro`
--

DROP TABLE IF EXISTS `gastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gastro` (
  `gastro_id` smallint NOT NULL AUTO_INCREMENT,
  `pancreatic_health` tinyint DEFAULT NULL,
  `liver_function` varchar(10) DEFAULT NULL,
  `digestive_enzyme_level` tinyint DEFAULT NULL,
  PRIMARY KEY (`gastro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastro`
--

LOCK TABLES `gastro` WRITE;
/*!40000 ALTER TABLE `gastro` DISABLE KEYS */;
INSERT INTO `gastro` VALUES (1,67,'Abnormal',60),(2,46,'Abnormal',68),(3,30,'Normal',63),(4,55,'Abnormal',43),(5,38,'Normal',49),(6,32,'Abnormal',50),(7,66,'Abnormal',41),(8,34,'Abnormal',30),(9,31,'Abnormal',37),(10,31,'Abnormal',43),(11,77,'Abnormal',65),(12,79,'Abnormal',53),(13,71,'Abnormal',65),(14,38,'Normal',30),(15,47,'Normal',48),(16,64,'Abnormal',35),(17,59,'Abnormal',65),(18,39,'Abnormal',60),(19,48,'Abnormal',56),(20,70,'Abnormal',65),(21,61,'Abnormal',44),(22,77,'Normal',65),(23,69,'Abnormal',44),(24,41,'Abnormal',30),(25,37,'Normal',47),(26,64,'Abnormal',54),(27,31,'Normal',32),(28,62,'Normal',41),(29,60,'Abnormal',43),(30,43,'Abnormal',59),(31,50,'Abnormal',50),(32,33,'Normal',45),(33,78,'Abnormal',38),(34,58,'Abnormal',33),(35,50,'Normal',35),(36,71,'Normal',52),(37,31,'Normal',67),(38,70,'Abnormal',35),(39,30,'Normal',43),(40,64,'Abnormal',63),(41,54,'Normal',51),(42,51,'Normal',52),(43,66,'Abnormal',50),(44,32,'Abnormal',66),(45,53,'Normal',62),(46,73,'Abnormal',36),(47,40,'Abnormal',48),(48,62,'Abnormal',46),(49,77,'Abnormal',61),(50,37,'Normal',60),(51,96,'Normal',42),(52,93,'Abnormal',70),(53,35,'Abnormal',87),(54,25,'Normal',60),(55,34,'Abnormal',69),(56,52,'Abnormal',59),(57,71,'Abnormal',96),(58,66,'Normal',49),(59,67,'Normal',86),(60,31,'Abnormal',57),(61,38,'Normal',95),(62,36,'Normal',42),(63,30,'Abnormal',43),(64,69,'Abnormal',61),(65,21,'Abnormal',68),(66,46,'Abnormal',81),(67,91,'Abnormal',66),(68,31,'Normal',83),(69,21,'Abnormal',56),(70,49,'Normal',69),(71,76,'Abnormal',62),(72,83,'Normal',52),(73,83,'Abnormal',64),(74,47,'Normal',62),(75,60,'Abnormal',85),(76,48,'Normal',90),(77,53,'Normal',58),(78,62,'Abnormal',69),(79,27,'Abnormal',63),(80,73,'Abnormal',96),(81,33,'Normal',50),(82,28,'Abnormal',88),(83,77,'Normal',67),(84,31,'Abnormal',86),(85,71,'Normal',92),(86,47,'Normal',61),(87,67,'Normal',52),(88,70,'Abnormal',95),(89,64,'Normal',42),(90,88,'Abnormal',56),(91,68,'Abnormal',43),(92,22,'Abnormal',90),(93,99,'Abnormal',99),(94,45,'Normal',69),(95,77,'Normal',63),(96,63,'Abnormal',54),(97,29,'Normal',55),(98,33,'Abnormal',52),(99,38,'Normal',77),(100,47,'Abnormal',61);
/*!40000 ALTER TABLE `gastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genetics`
--

DROP TABLE IF EXISTS `genetics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genetics` (
  `genetics_id` smallint NOT NULL AUTO_INCREMENT,
  `genetic_markers` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`genetics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genetics`
--

LOCK TABLES `genetics` WRITE;
/*!40000 ALTER TABLE `genetics` DISABLE KEYS */;
INSERT INTO `genetics` VALUES (1,'Positive'),(2,'Positive'),(3,'Positive'),(4,'Negative'),(5,'Positive'),(6,'Negative'),(7,'Negative'),(8,'Positive'),(9,'Negative'),(10,'Negative'),(11,'Negative'),(12,'Negative'),(13,'Positive'),(14,'Negative'),(15,'Negative'),(16,'Positive'),(17,'Negative'),(18,'Negative'),(19,'Negative'),(20,'Negative'),(21,'Negative'),(22,'Positive'),(23,'Negative'),(24,'Negative'),(25,'Negative'),(26,'Negative'),(27,'Negative'),(28,'Negative'),(29,'Positive'),(30,'Positive'),(31,'Negative'),(32,'Negative'),(33,'Positive'),(34,'Positive'),(35,'Positive'),(36,'Negative'),(37,'Positive'),(38,'Positive'),(39,'Positive'),(40,'Positive'),(41,'Negative'),(42,'Negative'),(43,'Positive'),(44,'Positive'),(45,'Positive'),(46,'Positive'),(47,'Negative'),(48,'Negative'),(49,'Negative'),(50,'Negative'),(51,'Negative'),(52,'Negative'),(53,'Negative'),(54,'Negative'),(55,'Positive'),(56,'Negative'),(57,'Positive'),(58,'Positive'),(59,'Positive'),(60,'Negative'),(61,'Negative'),(62,'Positive'),(63,'Positive'),(64,'Positive'),(65,'Negative'),(66,'Negative'),(67,'Positive'),(68,'Negative'),(69,'Positive'),(70,'Negative'),(71,'Negative'),(72,'Negative'),(73,'Positive'),(74,'Positive'),(75,'Positive'),(76,'Positive'),(77,'Negative'),(78,'Positive'),(79,'Positive'),(80,'Positive'),(81,'Positive'),(82,'Positive'),(83,'Negative'),(84,'Negative'),(85,'Negative'),(86,'Negative'),(87,'Negative'),(88,'Positive'),(89,'Negative'),(90,'Positive'),(91,'Negative'),(92,'Positive'),(93,'Negative'),(94,'Negative'),(95,'Negative'),(96,'Positive'),(97,'Negative'),(98,'Negative'),(99,'Negative'),(100,'Positive');
/*!40000 ALTER TABLE `genetics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glucose_tolerance_test`
--

DROP TABLE IF EXISTS `glucose_tolerance_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `glucose_tolerance_test` (
  `glucose_tol_test_id` smallint NOT NULL AUTO_INCREMENT,
  `glucose_tolerance_test` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`glucose_tol_test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glucose_tolerance_test`
--

LOCK TABLES `glucose_tolerance_test` WRITE;
/*!40000 ALTER TABLE `glucose_tolerance_test` DISABLE KEYS */;
INSERT INTO `glucose_tolerance_test` VALUES (1,'Abnormal'),(2,'Abnormal'),(3,'Normal'),(4,'Abnormal'),(5,'Normal'),(6,'Abnormal'),(7,'Normal'),(8,'Abnormal'),(9,'Normal'),(10,'Normal'),(11,'Normal'),(12,'Normal'),(13,'Normal'),(14,'Abnormal'),(15,'Normal'),(16,'Abnormal'),(17,'Abnormal'),(18,'Normal'),(19,'Abnormal'),(20,'Normal'),(21,'Abnormal'),(22,'Abnormal'),(23,'Normal'),(24,'Normal'),(25,'Abnormal'),(26,'Abnormal'),(27,'Normal'),(28,'Normal'),(29,'Abnormal'),(30,'Normal'),(31,'Normal'),(32,'Abnormal'),(33,'Normal'),(34,'Abnormal'),(35,'Abnormal'),(36,'Abnormal'),(37,'Normal'),(38,'Normal'),(39,'Normal'),(40,'Normal'),(41,'Abnormal'),(42,'Abnormal'),(43,'Normal'),(44,'Abnormal'),(45,'Abnormal'),(46,'Abnormal'),(47,'Abnormal'),(48,'Abnormal'),(49,'Normal'),(50,'Abnormal'),(51,'Normal'),(52,'Abnormal'),(53,'Normal'),(54,'Abnormal'),(55,'Normal'),(56,'Normal'),(57,'Normal'),(58,'Abnormal'),(59,'Normal'),(60,'Normal'),(61,'Normal'),(62,'Normal'),(63,'Abnormal'),(64,'Abnormal'),(65,'Abnormal'),(66,'Abnormal'),(67,'Normal'),(68,'Normal'),(69,'Abnormal'),(70,'Abnormal'),(71,'Normal'),(72,'Abnormal'),(73,'Abnormal'),(74,'Abnormal'),(75,'Abnormal'),(76,'Abnormal'),(77,'Normal'),(78,'Normal'),(79,'Normal'),(80,'Normal'),(81,'Abnormal'),(82,'Normal'),(83,'Normal'),(84,'Abnormal'),(85,'Normal'),(86,'Normal'),(87,'Normal'),(88,'Normal'),(89,'Abnormal'),(90,'Abnormal'),(91,'Abnormal'),(92,'Abnormal'),(93,'Abnormal'),(94,'Abnormal'),(95,'Abnormal'),(96,'Normal'),(97,'Normal'),(98,'Normal'),(99,'Normal'),(100,'Normal');
/*!40000 ALTER TABLE `glucose_tolerance_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metabolic`
--

DROP TABLE IF EXISTS `metabolic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabolic` (
  `metabolic_id` smallint NOT NULL,
  `blood_glucose_level` smallint DEFAULT NULL,
  `insulin_level` tinyint DEFAULT NULL,
  PRIMARY KEY (`metabolic_id`),
  UNIQUE KEY `metabolic_id_UNIQUE` (`metabolic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabolic`
--

LOCK TABLES `metabolic` WRITE;
/*!40000 ALTER TABLE `metabolic` DISABLE KEYS */;
INSERT INTO `metabolic` VALUES (1,114,8),(2,132,6),(3,103,13),(4,111,5),(5,129,12),(6,148,15),(7,105,13),(8,107,7),(9,127,15),(10,122,7),(11,124,12),(12,138,9),(13,101,14),(14,144,5),(15,140,18),(16,104,15),(17,149,15),(18,114,12),(19,123,6),(20,100,6),(21,124,19),(22,120,19),(23,102,13),(24,108,14),(25,123,9),(26,119,19),(27,104,17),(28,146,11),(29,107,18),(30,102,16),(31,111,16),(32,108,16),(33,105,16),(34,101,12),(35,109,5),(36,122,8),(37,141,14),(38,110,14),(39,144,9),(40,116,10),(41,140,17),(42,140,10),(43,100,11),(44,126,11),(45,101,15),(46,114,9),(47,120,15),(48,137,13),(49,131,16),(50,147,13),(51,163,28),(52,172,33),(53,175,41),(54,151,24),(55,199,28),(56,145,13),(57,167,49),(58,162,24),(59,170,31),(60,135,21),(61,163,40),(62,136,22),(63,178,16),(64,158,23),(65,178,33),(66,130,46),(67,167,32),(68,148,11),(69,131,21),(70,171,39),(71,175,18),(72,170,41),(73,170,32),(74,176,20),(75,199,12),(76,134,40),(77,166,49),(78,140,15),(79,173,39),(80,154,24),(81,156,15),(82,166,47),(83,163,24),(84,181,28),(85,168,25),(86,195,39),(87,156,38),(88,199,45),(89,176,23),(90,166,28),(91,189,45),(92,135,38),(93,179,48),(94,198,10),(95,138,29),(96,130,48),(97,169,27),(98,188,45),(99,197,27),(100,136,14);
/*!40000 ALTER TABLE `metabolic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` smallint NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `birth_weight` smallint DEFAULT NULL,
  `genetics_id` smallint NOT NULL,
  `environmental_id` smallint NOT NULL,
  `physical_id` smallint NOT NULL,
  `gastro_id` smallint NOT NULL,
  `target_id` smallint NOT NULL,
  `metabolic_id` smallint NOT NULL,
  PRIMARY KEY (`patient_id`,`genetics_id`,`environmental_id`,`physical_id`,`gastro_id`,`target_id`,`metabolic_id`),
  UNIQUE KEY `patient_id_UNIQUE` (`patient_id`),
  UNIQUE KEY `genetics_id_UNIQUE` (`genetics_id`),
  UNIQUE KEY `environmental_id_UNIQUE` (`environmental_id`),
  UNIQUE KEY `physical_id_UNIQUE` (`physical_id`),
  UNIQUE KEY `gastro_id_UNIQUE` (`gastro_id`),
  UNIQUE KEY `target_id_UNIQUE` (`target_id`),
  UNIQUE KEY `metabolic_id_UNIQUE` (`metabolic_id`),
  KEY `fk_patient_genetics1_idx` (`genetics_id`),
  KEY `fk_patient_environmental1_idx` (`environmental_id`),
  KEY `fk_patient_physical_activity1_idx` (`physical_id`),
  KEY `fk_patient_gastro1_idx` (`gastro_id`),
  KEY `fk_patient_target1_idx` (`target_id`),
  KEY `fk_patient_metabolic1_idx` (`metabolic_id`),
  CONSTRAINT `fk_patient_environmental1` FOREIGN KEY (`environmental_id`) REFERENCES `environmental` (`environmental_id`),
  CONSTRAINT `fk_patient_gastro1` FOREIGN KEY (`gastro_id`) REFERENCES `gastro` (`gastro_id`),
  CONSTRAINT `fk_patient_genetics1` FOREIGN KEY (`genetics_id`) REFERENCES `genetics` (`genetics_id`),
  CONSTRAINT `fk_patient_metabolic1` FOREIGN KEY (`metabolic_id`) REFERENCES `metabolic` (`metabolic_id`),
  CONSTRAINT `fk_patient_physical_activity1` FOREIGN KEY (`physical_id`) REFERENCES `physical_activity` (`physical_id`),
  CONSTRAINT `fk_patient_target1` FOREIGN KEY (`target_id`) REFERENCES `target` (`target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,29,2947,1,1,1,1,1,1),(2,22,2575,2,2,2,2,2,2),(3,28,2846,3,3,3,3,3,3),(4,19,3677,4,4,4,4,4,4),(5,28,3223,5,5,5,5,5,5),(6,28,2798,6,6,6,6,6,6),(7,19,2587,7,7,7,7,7,7),(8,25,2978,8,8,8,8,8,8),(9,24,2630,9,9,9,9,9,9),(10,26,3651,10,10,10,10,10,10),(11,18,3278,11,11,11,11,11,11),(12,26,3846,12,12,12,12,12,12),(13,28,3775,13,13,13,13,13,13),(14,20,3958,14,14,14,14,14,14),(15,20,3153,15,15,15,15,15,15),(16,19,2614,16,16,16,16,16,16),(17,24,3368,17,17,17,17,17,17),(18,27,3841,18,18,18,18,18,18),(19,27,3356,19,19,19,19,19,19),(20,29,3686,20,20,20,20,20,20),(21,23,3324,21,21,21,21,21,21),(22,21,3657,22,22,22,22,22,22),(23,24,2864,23,23,23,23,23,23),(24,18,3850,24,24,24,24,24,24),(25,23,3792,25,25,25,25,25,25),(26,21,2708,26,26,26,26,26,26),(27,27,3601,27,27,27,27,27,27),(28,26,3624,28,28,28,28,28,28),(29,23,3839,29,29,29,29,29,29),(30,26,3813,30,30,30,30,30,30),(31,23,3150,31,31,31,31,31,31),(32,28,2647,32,32,32,32,32,32),(33,19,3671,33,33,33,33,33,33),(34,20,2755,34,34,34,34,34,34),(35,19,3243,35,35,35,35,35,35),(36,29,3189,36,36,36,36,36,36),(37,27,3969,37,37,37,37,37,37),(38,24,3431,38,38,38,38,38,38),(39,27,2612,39,39,39,39,39,39),(40,25,3547,40,40,40,40,40,40),(41,26,2691,41,41,41,41,41,41),(42,20,2629,42,42,42,42,42,42),(43,26,3357,43,43,43,43,43,43),(44,23,2654,44,44,44,44,44,44),(45,21,3172,45,45,45,45,45,45),(46,27,3547,46,46,46,46,46,46),(47,25,3835,47,47,47,47,47,47),(48,21,3955,48,48,48,48,48,48),(49,21,2982,49,49,49,49,49,49),(50,27,3102,50,50,50,50,50,50),(51,72,3940,51,51,51,51,51,51),(52,68,3692,52,52,52,52,52,52),(53,59,3951,53,53,53,53,53,53),(54,32,3103,54,54,54,54,54,54),(55,73,4139,55,55,55,55,55,55),(56,37,2636,56,56,56,56,56,56),(57,71,3125,57,57,57,57,57,57),(58,69,2821,58,58,58,58,58,58),(59,65,2606,59,59,59,59,59,59),(60,30,3170,60,60,60,60,60,60),(61,60,3885,61,61,61,61,61,61),(62,51,3544,62,62,62,62,62,62),(63,57,3539,63,63,63,63,63,63),(64,59,3586,64,64,64,64,64,64),(65,47,4329,65,65,65,65,65,65),(66,59,2794,66,66,66,66,66,66),(67,45,3166,67,67,67,67,67,67),(68,72,3507,68,68,68,68,68,68),(69,67,4104,69,69,69,69,69,69),(70,43,3391,70,70,70,70,70,70),(71,62,4054,71,71,71,71,71,71),(72,62,3608,72,72,72,72,72,72),(73,52,3200,73,73,73,73,73,73),(74,71,3561,74,74,74,74,74,74),(75,64,3851,75,75,75,75,75,75),(76,31,4253,76,76,76,76,76,76),(77,77,2968,77,77,77,77,77,77),(78,48,4319,78,78,78,78,78,78),(79,62,3992,79,79,79,79,79,79),(80,67,2720,80,80,80,80,80,80),(81,60,4464,81,81,81,81,81,81),(82,54,2732,82,82,82,82,82,82),(83,53,3205,83,83,83,83,83,83),(84,32,3079,84,84,84,84,84,84),(85,52,3285,85,85,85,85,85,85),(86,74,2662,86,86,86,86,86,86),(87,39,3651,87,87,87,87,87,87),(88,45,3665,88,88,88,88,88,88),(89,42,4046,89,89,89,89,89,89),(90,70,2830,90,90,90,90,90,90),(91,48,2507,91,91,91,91,91,91),(92,34,3582,92,92,92,92,92,92),(93,58,2516,93,93,93,93,93,93),(94,66,3618,94,94,94,94,94,94),(95,72,3190,95,95,95,95,95,95),(96,44,2778,96,96,96,96,96,96),(97,38,2659,97,97,97,97,97,97),(98,71,3878,98,98,98,98,98,98),(99,75,2812,99,99,99,99,99,99),(100,69,3096,100,100,100,100,100,100);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_gluc_tol`
--

DROP TABLE IF EXISTS `patient_gluc_tol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_gluc_tol` (
  `patient_gluc_tol_id` smallint NOT NULL,
  `glucose_tol_test_id` smallint NOT NULL,
  `patient_id` smallint NOT NULL,
  PRIMARY KEY (`patient_gluc_tol_id`,`glucose_tol_test_id`,`patient_id`),
  KEY `fk_metabolic_glucose_tolerance_test1_idx` (`glucose_tol_test_id`),
  KEY `fk_metabolic_patient1_idx` (`patient_id`),
  CONSTRAINT `fk_metabolic_glucose_tolerance_test1` FOREIGN KEY (`glucose_tol_test_id`) REFERENCES `glucose_tolerance_test` (`glucose_tol_test_id`),
  CONSTRAINT `fk_metabolic_patient1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_gluc_tol`
--

LOCK TABLES `patient_gluc_tol` WRITE;
/*!40000 ALTER TABLE `patient_gluc_tol` DISABLE KEYS */;
INSERT INTO `patient_gluc_tol` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50),(51,51,51),(52,52,52),(53,53,53),(54,54,54),(55,55,55),(56,56,56),(57,57,57),(58,58,58),(59,59,59),(60,60,60),(61,61,61),(62,62,62),(63,63,63),(64,64,64),(65,65,65),(66,66,66),(67,67,67),(68,68,68),(69,69,69),(70,70,70),(71,71,71),(72,72,72),(73,73,73),(74,74,74),(75,75,75),(76,76,76),(77,77,77),(78,78,78),(79,79,79),(80,80,80),(81,81,81),(82,82,82),(83,83,83),(84,84,84),(85,85,85),(86,86,86),(87,87,87),(88,88,88),(89,89,89),(90,90,90),(91,91,91),(92,92,92),(93,93,93),(94,94,94),(95,95,95),(96,96,96),(97,97,97),(98,98,98),(99,99,99),(100,100,100);
/*!40000 ALTER TABLE `patient_gluc_tol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physical_activity`
--

DROP TABLE IF EXISTS `physical_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `physical_activity` (
  `physical_id` smallint NOT NULL AUTO_INCREMENT,
  `physical_activity` varchar(10) DEFAULT NULL,
  `BMI` tinyint DEFAULT NULL,
  PRIMARY KEY (`physical_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physical_activity`
--

LOCK TABLES `physical_activity` WRITE;
/*!40000 ALTER TABLE `physical_activity` DISABLE KEYS */;
INSERT INTO `physical_activity` VALUES (1,'Low',23),(2,'High',22),(3,'Moderate',16),(4,'Low',23),(5,'Moderate',24),(6,'High',16),(7,'Low',23),(8,'Low',23),(9,'Moderate',15),(10,'Moderate',17),(11,'Low',19),(12,'Moderate',21),(13,'High',15),(14,'High',24),(15,'Moderate',23),(16,'Low',23),(17,'Moderate',17),(18,'High',21),(19,'Low',24),(20,'High',18),(21,'Moderate',16),(22,'Low',23),(23,'High',23),(24,'Low',23),(25,'Moderate',19),(26,'High',24),(27,'High',17),(28,'Moderate',22),(29,'Moderate',20),(30,'High',18),(31,'High',23),(32,'Moderate',21),(33,'High',24),(34,'Moderate',19),(35,'High',17),(36,'High',21),(37,'Moderate',19),(38,'Low',17),(39,'Low',19),(40,'High',16),(41,'High',15),(42,'Moderate',18),(43,'Low',21),(44,'High',15),(45,'Low',15),(46,'Moderate',21),(47,'High',22),(48,'High',17),(49,'High',17),(50,'High',24),(51,'Moderate',34),(52,'Moderate',36),(53,'High',28),(54,'High',29),(55,'Moderate',32),(56,'High',25),(57,'Moderate',36),(58,'Moderate',39),(59,'Moderate',35),(60,'Moderate',26),(61,'Moderate',32),(62,'Low',27),(63,'Moderate',30),(64,'Moderate',37),(65,'High',25),(66,'Low',36),(67,'High',26),(68,'Low',35),(69,'Moderate',34),(70,'Low',27),(71,'Moderate',30),(72,'Moderate',29),(73,'High',37),(74,'High',34),(75,'Moderate',38),(76,'Low',30),(77,'Low',28),(78,'Low',26),(79,'Moderate',33),(80,'Low',34),(81,'Low',25),(82,'Low',36),(83,'Low',33),(84,'Low',39),(85,'Moderate',28),(86,'High',35),(87,'High',31),(88,'Low',26),(89,'Low',25),(90,'High',34),(91,'High',27),(92,'High',34),(93,'High',32),(94,'Low',35),(95,'Low',32),(96,'High',39),(97,'High',35),(98,'Moderate',38),(99,'Moderate',36),(100,'Moderate',36);
/*!40000 ALTER TABLE `physical_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pos_gen_mark`
--

DROP TABLE IF EXISTS `pos_gen_mark`;
/*!50001 DROP VIEW IF EXISTS `pos_gen_mark`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pos_gen_mark` AS SELECT 
 1 AS `Positive_Genetics`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `target`
--

DROP TABLE IF EXISTS `target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `target` (
  `target_id` smallint NOT NULL AUTO_INCREMENT,
  `target_diab` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target`
--

LOCK TABLES `target` WRITE;
/*!40000 ALTER TABLE `target` DISABLE KEYS */;
INSERT INTO `target` VALUES (1,'Type 1 Diabetes'),(2,'Type 1 Diabetes'),(3,'Type 1 Diabetes'),(4,'Type 1 Diabetes'),(5,'Type 1 Diabetes'),(6,'Type 1 Diabetes'),(7,'Type 1 Diabetes'),(8,'Type 1 Diabetes'),(9,'Type 1 Diabetes'),(10,'Type 1 Diabetes'),(11,'Type 1 Diabetes'),(12,'Type 1 Diabetes'),(13,'Type 1 Diabetes'),(14,'Type 1 Diabetes'),(15,'Type 1 Diabetes'),(16,'Type 1 Diabetes'),(17,'Type 1 Diabetes'),(18,'Type 1 Diabetes'),(19,'Type 1 Diabetes'),(20,'Type 1 Diabetes'),(21,'Type 1 Diabetes'),(22,'Type 1 Diabetes'),(23,'Type 1 Diabetes'),(24,'Type 1 Diabetes'),(25,'Type 1 Diabetes'),(26,'Type 1 Diabetes'),(27,'Type 1 Diabetes'),(28,'Type 1 Diabetes'),(29,'Type 1 Diabetes'),(30,'Type 1 Diabetes'),(31,'Type 1 Diabetes'),(32,'Type 1 Diabetes'),(33,'Type 1 Diabetes'),(34,'Type 1 Diabetes'),(35,'Type 1 Diabetes'),(36,'Type 1 Diabetes'),(37,'Type 1 Diabetes'),(38,'Type 1 Diabetes'),(39,'Type 1 Diabetes'),(40,'Type 1 Diabetes'),(41,'Type 1 Diabetes'),(42,'Type 1 Diabetes'),(43,'Type 1 Diabetes'),(44,'Type 1 Diabetes'),(45,'Type 1 Diabetes'),(46,'Type 1 Diabetes'),(47,'Type 1 Diabetes'),(48,'Type 1 Diabetes'),(49,'Type 1 Diabetes'),(50,'Type 1 Diabetes'),(51,'Type 2 Diabetes'),(52,'Type 2 Diabetes'),(53,'Type 2 Diabetes'),(54,'Type 2 Diabetes'),(55,'Type 2 Diabetes'),(56,'Type 2 Diabetes'),(57,'Type 2 Diabetes'),(58,'Type 2 Diabetes'),(59,'Type 2 Diabetes'),(60,'Type 2 Diabetes'),(61,'Type 2 Diabetes'),(62,'Type 2 Diabetes'),(63,'Type 2 Diabetes'),(64,'Type 2 Diabetes'),(65,'Type 2 Diabetes'),(66,'Type 2 Diabetes'),(67,'Type 2 Diabetes'),(68,'Type 2 Diabetes'),(69,'Type 2 Diabetes'),(70,'Type 2 Diabetes'),(71,'Type 2 Diabetes'),(72,'Type 2 Diabetes'),(73,'Type 2 Diabetes'),(74,'Type 2 Diabetes'),(75,'Type 2 Diabetes'),(76,'Type 2 Diabetes'),(77,'Type 2 Diabetes'),(78,'Type 2 Diabetes'),(79,'Type 2 Diabetes'),(80,'Type 2 Diabetes'),(81,'Type 2 Diabetes'),(82,'Type 2 Diabetes'),(83,'Type 2 Diabetes'),(84,'Type 2 Diabetes'),(85,'Type 2 Diabetes'),(86,'Type 2 Diabetes'),(87,'Type 2 Diabetes'),(88,'Type 2 Diabetes'),(89,'Type 2 Diabetes'),(90,'Type 2 Diabetes'),(91,'Type 2 Diabetes'),(92,'Type 2 Diabetes'),(93,'Type 2 Diabetes'),(94,'Type 2 Diabetes'),(95,'Type 2 Diabetes'),(96,'Type 2 Diabetes'),(97,'Type 2 Diabetes'),(98,'Type 2 Diabetes'),(99,'Type 2 Diabetes'),(100,'Type 2 Diabetes');
/*!40000 ALTER TABLE `target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `abn_gluc_tol_test`
--

/*!50001 DROP VIEW IF EXISTS `abn_gluc_tol_test`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `abn_gluc_tol_test` AS select `target`.`target_diab` AS `Diabetes_Type`,count(`glucose_tolerance_test`.`glucose_tolerance_test`) AS `Abnormal_Glucose_Tolerance_Count` from (((`glucose_tolerance_test` join `patient_gluc_tol` on((`glucose_tolerance_test`.`glucose_tol_test_id` = `patient_gluc_tol`.`glucose_tol_test_id`))) join `patient` on((`patient_gluc_tol`.`patient_id` = `patient`.`patient_id`))) join `target` on((`patient`.`target_id` = `target`.`target_id`))) where (`glucose_tolerance_test`.`glucose_tolerance_test` = 'Abnormal') group by `target`.`target_diab` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_birth_weight`
--

/*!50001 DROP VIEW IF EXISTS `avg_birth_weight`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_birth_weight` AS select `target`.`target_diab` AS `Diabetes_Type`,round(avg(`patient`.`birth_weight`),2) AS `Average_Birth_Weight` from (`target` join `patient` on((`target`.`target_id` = `patient`.`target_id`))) group by `target`.`target_diab` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_insulin_level`
--

/*!50001 DROP VIEW IF EXISTS `avg_insulin_level`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_insulin_level` AS select `target`.`target_diab` AS `Diabetes_Type`,round(avg(`metabolic`.`insulin_level`),2) AS `Avg_Insulin_Level` from ((`metabolic` join `patient` on((`metabolic`.`metabolic_id` = `patient`.`metabolic_id`))) join `target` on((`patient`.`target_id` = `target`.`target_id`))) group by `target`.`target_diab` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `env_socio_factors`
--

/*!50001 DROP VIEW IF EXISTS `env_socio_factors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `env_socio_factors` AS select count(`target`.`target_id`) AS `Pres_Low_Type_2` from ((`target` join `patient` on((`target`.`target_id` = `patient`.`target_id`))) join `environmental` on((`patient`.`environmental_id` = `environmental`.`environmental_id`))) where ((`target`.`target_diab` = 'Type 2 Diabetes') and (`environmental`.`environmental_factors` = 'Present') and (`environmental`.`socioeconomic_factors` = 'Low')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pos_gen_mark`
--

/*!50001 DROP VIEW IF EXISTS `pos_gen_mark`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pos_gen_mark` AS select count(`genetics`.`genetics_id`) AS `Positive_Genetics` from ((`genetics` join `patient` on((`genetics`.`genetics_id` = `patient`.`genetics_id`))) join `target` on((`patient`.`target_id` = `target`.`target_id`))) where ((`genetics`.`genetic_markers` = 'Positive') and `patient`.`target_id` in (select `target`.`target_id` from `target` where (`target`.`target_diab` = 'Type 1 Diabetes'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-13 18:48:20
