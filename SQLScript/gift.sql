-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: project2015
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `gift`
--

DROP TABLE IF EXISTS `gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift` (
  `name` varchar(45) NOT NULL,
  `pic` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  `about` varchar(45) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift`
--

LOCK TABLES `gift` WRITE;
/*!40000 ALTER TABLE `gift` DISABLE KEYS */;
INSERT INTO `gift` VALUES ('gift1','01.jpg','www.taobao.com','desc1',4),('gift2','02.jpg','www.taobao.com','desc2',5),('gift3','03.jpg','www.taobao.com','desc3',6),('gift4','04.jpg','www.taobao.com','desc4',9),('gift5','05.jpg','www.taobao.com','desc5',6),('gift6','06.jpg','www.taobao.com','desc6',8),('gift7','07.jpg','www.taobao.com','desc7',10),('gift8','08.jpg','www.taobao.com','desc8',5);
/*!40000 ALTER TABLE `gift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giftPraise`
--

DROP TABLE IF EXISTS `giftPraise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftPraise` (
  `gName` varchar(45) DEFAULT NULL,
  `uName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftPraise`
--

LOCK TABLES `giftPraise` WRITE;
/*!40000 ALTER TABLE `giftPraise` DISABLE KEYS */;
INSERT INTO `giftPraise` VALUES ('gift5','Jerry'),('gift1','Jerry'),('gift2','Jerry'),('gift3','Jerry'),('gift8','Jerry'),('gift7','Jerry'),('gift6','Jerry'),('gift4','Jerry');
/*!40000 ALTER TABLE `giftPraise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giftTags`
--

DROP TABLE IF EXISTS `giftTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftTags` (
  `name` varchar(45) NOT NULL,
  `tag1` varchar(45) DEFAULT NULL,
  `tag2` varchar(45) DEFAULT NULL,
  `tag3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftTags`
--

LOCK TABLES `giftTags` WRITE;
/*!40000 ALTER TABLE `giftTags` DISABLE KEYS */;
INSERT INTO `giftTags` VALUES ('gift1','old','spring','cute'),('gift2','old','spring','cute'),('gift3','old','spring','cute'),('gift4','old','spring','cute'),('gift5','old','spring','cute'),('gift6','old','spring','cute'),('gift7','old','spring','cute'),('gift8','old','spring','cute');
/*!40000 ALTER TABLE `giftTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `name` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `tag` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Jerry','123123','male','young','tech');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-09 16:23:20
