-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: bee
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches` (
  `branchid` int(11) NOT NULL AUTO_INCREMENT,
  `branchname` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`branchid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (10,'Medan Kota','Testing Medan Kota'),(11,'Medan Baru','Medan Baru'),(12,'Medan Baru aja','Medan Baru');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeetrainings`
--

DROP TABLE IF EXISTS `employeetrainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeetrainings` (
  `employeetrainingid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text,
  `camefrom` text,
  `entrydate` date NOT NULL,
  `lengthofwork` int(11) NOT NULL DEFAULT '1',
  `createdon` datetime NOT NULL,
  `createdby` varchar(100) NOT NULL,
  PRIMARY KEY (`employeetrainingid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeetrainings`
--

LOCK TABLES `employeetrainings` WRITE;
/*!40000 ALTER TABLE `employeetrainings` DISABLE KEYS */;
INSERT INTO `employeetrainings` VALUES (1,'Jack Mandalu','jack@gmail.com','Medan','Politeknik LP3I Medan','2018-12-12',3,'2019-01-15 20:00:00','admin');
/*!40000 ALTER TABLE `employeetrainings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `expenseid` int(11) NOT NULL AUTO_INCREMENT,
  `expensename` varchar(255) NOT NULL,
  `expensevalue` decimal(10,0) DEFAULT NULL,
  `description` text,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `expensetypeid` int(11) NOT NULL,
  PRIMARY KEY (`expenseid`),
  KEY `fk_expenses_1_idx` (`createdby`),
  KEY `fk_expenses_2_idx` (`expensetypeid`),
  CONSTRAINT `fk_expenses_1` FOREIGN KEY (`createdby`) REFERENCES `users` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_expenses_2` FOREIGN KEY (`expensetypeid`) REFERENCES `expenses` (`expenseid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expensetypes`
--

DROP TABLE IF EXISTS `expensetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expensetypes` (
  `expensetypeid` int(11) NOT NULL AUTO_INCREMENT,
  `expensetypename` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`expensetypeid`),
  UNIQUE KEY `expensetypeid_UNIQUE` (`expensetypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expensetypes`
--

LOCK TABLES `expensetypes` WRITE;
/*!40000 ALTER TABLE `expensetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `expensetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','only for admin'),(2,'User','For Spesific User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainings`
--

DROP TABLE IF EXISTS `trainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainings` (
  `trainingid` int(11) NOT NULL AUTO_INCREMENT,
  `employeetrainingid` int(11) NOT NULL,
  `description` text,
  `createdby` varchar(255) NOT NULL,
  `createdon` datetime NOT NULL,
  `trainingdate` datetime NOT NULL,
  `trainingtypeid` int(11) NOT NULL,
  `trainer` varchar(100) NOT NULL,
  `trainingtitle` varchar(255) NOT NULL,
  PRIMARY KEY (`trainingid`),
  UNIQUE KEY `trainingid_UNIQUE` (`trainingid`),
  KEY `fk_trainings_1_idx` (`employeetrainingid`),
  KEY `fk_trainings_2_idx` (`trainingtypeid`),
  CONSTRAINT `fk_trainings_1` FOREIGN KEY (`employeetrainingid`) REFERENCES `employeetrainings` (`employeetrainingid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trainings_2` FOREIGN KEY (`trainingtypeid`) REFERENCES `trainingtypes` (`trainingtypeid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainings`
--

LOCK TABLES `trainings` WRITE;
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainingtypes`
--

DROP TABLE IF EXISTS `trainingtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainingtypes` (
  `trainingtypeid` int(11) NOT NULL AUTO_INCREMENT,
  `trainingtypename` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`trainingtypeid`),
  UNIQUE KEY `trainingtypeid_UNIQUE` (`trainingtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainingtypes`
--

LOCK TABLES `trainingtypes` WRITE;
/*!40000 ALTER TABLE `trainingtypes` DISABLE KEYS */;
INSERT INTO `trainingtypes` VALUES (4,'Type three','description type three');
/*!40000 ALTER TABLE `trainingtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinformations`
--

DROP TABLE IF EXISTS `userinformations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinformations` (
  `userinformationid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `nipp` varchar(50) NOT NULL,
  `branchid` int(11) NOT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`userinformationid`,`username`),
  UNIQUE KEY `branchid_UNIQUE` (`branchid`),
  KEY `fk_userinformations_1_idx` (`username`),
  CONSTRAINT `fk_userinformations_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinformations`
--

LOCK TABLES `userinformations` WRITE;
/*!40000 ALTER TABLE `userinformations` DISABLE KEYS */;
/*!40000 ALTER TABLE `userinformations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `issuspend` varchar(1) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `roleid` varchar(45) NOT NULL DEFAULT '0',
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','admin super','admin@gmail.com','0192023a7bbd73250516f069df18b500','0','','0',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-16 22:53:29
