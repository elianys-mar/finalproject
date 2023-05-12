-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.1

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
-- Table structure for table `Classrooms`
--

DROP TABLE IF EXISTS `Classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Classrooms` (
  `RoomNum` int NOT NULL AUTO_INCREMENT,
  `Grade` varchar(200) DEFAULT NULL,
  `TeacherName` varchar(200) DEFAULT NULL,
  `NumStudents` varchar(200) DEFAULT NULL,
  `AvgGrade` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`RoomNum`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classrooms`
--

LOCK TABLES `Classrooms` WRITE;
/*!40000 ALTER TABLE `Classrooms` DISABLE KEYS */;
INSERT INTO `Classrooms` VALUES (201,'12','Mrs.Martinez','13','A'),(202,'12','Ms.Lawrence','22','B'),(203,'11','Mr.Soto','18','C'),(204,'12','Mr.Feliz','17','B+'),(205,'11','Mrs.Adiba','17','A-'),(206,'11','Mr.Torres','19','B-'),(305,'11','Mr. S','12','B+'),(306,'11','Mr. Lions','12','A+'),(309,'11','Ms.Fun','15','C'),(310,'12','Mr.Wang','18','A');
/*!40000 ALTER TABLE `Classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `RoomNum` int NOT NULL AUTO_INCREMENT,
  `Grade` varchar(200) DEFAULT NULL,
  `TeacherName` varchar(200) DEFAULT NULL,
  `NumStudents` varchar(200) DEFAULT NULL,
  `AvgGrade` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`RoomNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-12 15:03:29
