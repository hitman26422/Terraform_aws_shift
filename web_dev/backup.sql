-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: timetable
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `allotment`
--

DROP TABLE IF EXISTS `allotment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allotment` (
  `u_pref` int NOT NULL AUTO_INCREMENT,
  `preference` int NOT NULL,
  `alloted` varchar(100) NOT NULL,
  `courseid` varchar(30) NOT NULL,
  `date` year NOT NULL,
  PRIMARY KEY (`u_pref`),
  UNIQUE KEY `date` (`date`,`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allotment`
--

LOCK TABLES `allotment` WRITE;
/*!40000 ALTER TABLE `allotment` DISABLE KEYS */;
INSERT INTO `allotment` VALUES (98,0,'c1503','19i205',2021),(99,0,'c1503','D19I204',2021),(100,0,'c1503','15i402',2021),(101,0,'c5678','15i403',2021),(102,0,'c5555','15i404',2021),(103,0,'c5555','15i405',2021),(104,0,'c5555','15i604',2021),(105,0,'c5678','15i603',2021),(106,0,'c7777','15i602',2021),(107,0,'c5678','D19i210',2020),(108,0,'c5555','19i211',2020),(109,0,'c5678','15i410',2020),(110,0,'c5555','15i411',2020),(111,0,'c5555','15i610',2020);
/*!40000 ALTER TABLE `allotment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choosetime`
--

DROP TABLE IF EXISTS `choosetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choosetime` (
  `userid` varchar(10) NOT NULL,
  `settime` varchar(10) NOT NULL,
  `publish` int NOT NULL,
  `selectperiod` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choosetime`
--

LOCK TABLES `choosetime` WRITE;
/*!40000 ALTER TABLE `choosetime` DISABLE KEYS */;
INSERT INTO `choosetime` VALUES ('c9999','EVEN',0,'2018-00-00');
/*!40000 ALTER TABLE `choosetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `userid` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `Designation` varchar(30) NOT NULL,
  `verify` int NOT NULL,
  `ugopen` int NOT NULL DEFAULT '0',
  `ug` int NOT NULL DEFAULT '0',
  `pg` int NOT NULL DEFAULT '0',
  `pgopen` int NOT NULL DEFAULT '0',
  `alias` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('c1999','default','STAFF',1,0,0,0,0,'fffff'),('c8812','default','STAFF',1,0,0,0,0,'nav'),('c9999','admin','ADMIN',1,0,0,0,0,'ADM');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgcourses`
--

DROP TABLE IF EXISTS `pgcourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pgcourses` (
  `courseid` varchar(10) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `semno` int NOT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgcourses`
--

LOCK TABLES `pgcourses` WRITE;
/*!40000 ALTER TABLE `pgcourses` DISABLE KEYS */;
/*!40000 ALTER TABLE `pgcourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgcourseslab`
--

DROP TABLE IF EXISTS `pgcourseslab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pgcourseslab` (
  `courseid` varchar(10) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `semno` int NOT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgcourseslab`
--

LOCK TABLES `pgcourseslab` WRITE;
/*!40000 ALTER TABLE `pgcourseslab` DISABLE KEYS */;
/*!40000 ALTER TABLE `pgcourseslab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgopenelective`
--

DROP TABLE IF EXISTS `pgopenelective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pgopenelective` (
  `courseid` varchar(10) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `semno` int NOT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgopenelective`
--

LOCK TABLES `pgopenelective` WRITE;
/*!40000 ALTER TABLE `pgopenelective` DISABLE KEYS */;
/*!40000 ALTER TABLE `pgopenelective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preference`
--

DROP TABLE IF EXISTS `preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preference` (
  `UNid` varchar(50) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `courseid` varchar(50) NOT NULL,
  `coursename` varchar(100) NOT NULL,
  `preference` int NOT NULL,
  `type` varchar(20) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `date` year NOT NULL,
  `Unique_Prefrenece_no` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`UNid`,`date`),
  UNIQUE KEY `pno` (`Unique_Prefrenece_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preference`
--

LOCK TABLES `preference` WRITE;
/*!40000 ALTER TABLE `preference` DISABLE KEYS */;
INSERT INTO `preference` VALUES ('c150315i403','c1503','15i403','operating systems',1,'UGTHEORY','EVEN',2020,1),('c150315i601','c1503','D15i601','advanced data structures',3,'UGTHEORY','EVEN',2020,2),('c150319I204','c1503','D19I204','communication systems',2,'UGTHEORY','EVEN',2018,3),('c150319I204','c1503','D19I204','communication systems',2,'UGTHEORY','EVEN',2020,4),('c150419i211','c1504','19i211','Engineering Practices',3,'UGLAB','EVEN',2021,8);
/*!40000 ALTER TABLE `preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `userid` varchar(20) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ugcourses`
--

DROP TABLE IF EXISTS `ugcourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ugcourses` (
  `courseid` varchar(10) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `semno` int NOT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ugcourses`
--

LOCK TABLES `ugcourses` WRITE;
/*!40000 ALTER TABLE `ugcourses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ugcourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ugcourseslab`
--

DROP TABLE IF EXISTS `ugcourseslab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ugcourseslab` (
  `courseid` varchar(10) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `semno` int NOT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ugcourseslab`
--

LOCK TABLES `ugcourseslab` WRITE;
/*!40000 ALTER TABLE `ugcourseslab` DISABLE KEYS */;
/*!40000 ALTER TABLE `ugcourseslab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ugopenelective`
--

DROP TABLE IF EXISTS `ugopenelective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ugopenelective` (
  `courseid` varchar(10) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `semno` int NOT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ugopenelective`
--

LOCK TABLES `ugopenelective` WRITE;
/*!40000 ALTER TABLE `ugopenelective` DISABLE KEYS */;
/*!40000 ALTER TABLE `ugopenelective` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-14 11:24:34
