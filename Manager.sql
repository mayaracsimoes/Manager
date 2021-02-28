-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: manager
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.16-MariaDB

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
-- Table structure for table `tbcafes`
--

DROP TABLE IF EXISTS `tbcafes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcafes` (
  `idcafes` int(11) NOT NULL AUTO_INCREMENT,
  `nomeespaco` varchar(45) COLLATE utf8_bin NOT NULL,
  `lotacaocafe` bigint(20) NOT NULL,
  PRIMARY KEY (`idcafes`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcafes`
--

LOCK TABLES `tbcafes` WRITE;
/*!40000 ALTER TABLE `tbcafes` DISABLE KEYS */;
INSERT INTO `tbcafes` VALUES (1,'Bon Appétit',30),(2,'Golden Hour',40);
/*!40000 ALTER TABLE `tbcafes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbparticipantes`
--

DROP TABLE IF EXISTS `tbparticipantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbparticipantes` (
  `idparticipante` int(11) NOT NULL AUTO_INCREMENT,
  `nomeparticipante` varchar(45) COLLATE utf8_bin NOT NULL,
  `sobrenomeparticipante` varchar(90) COLLATE utf8_bin NOT NULL,
  `fksala1` int(11) DEFAULT NULL,
  `fksala2` int(11) DEFAULT NULL,
  `fkcafe1` int(11) DEFAULT NULL,
  `fkcafe2` int(11) DEFAULT NULL,
  PRIMARY KEY (`idparticipante`),
  KEY `g_idx` (`fksala1`),
  KEY `h_idx` (`fksala2`),
  KEY `i_idx` (`fkcafe1`),
  KEY `j_idx` (`fkcafe2`),
  CONSTRAINT `g` FOREIGN KEY (`fksala1`) REFERENCES `tbsalas` (`idsala`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `h` FOREIGN KEY (`fksala2`) REFERENCES `tbsalas` (`idsala`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `i` FOREIGN KEY (`fkcafe1`) REFERENCES `tbcafes` (`idcafes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `j` FOREIGN KEY (`fkcafe2`) REFERENCES `tbcafes` (`idcafes`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbparticipantes`
--

LOCK TABLES `tbparticipantes` WRITE;
/*!40000 ALTER TABLE `tbparticipantes` DISABLE KEYS */;
INSERT INTO `tbparticipantes` VALUES (1,'Mayara ','Cardoso',1,1,1,2);
/*!40000 ALTER TABLE `tbparticipantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbsalas`
--

DROP TABLE IF EXISTS `tbsalas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbsalas` (
  `idsala` int(11) NOT NULL AUTO_INCREMENT,
  `nomesala` varchar(45) COLLATE utf8_bin NOT NULL,
  `lotacaosala` bigint(20) NOT NULL,
  PRIMARY KEY (`idsala`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbsalas`
--

LOCK TABLES `tbsalas` WRITE;
/*!40000 ALTER TABLE `tbsalas` DISABLE KEYS */;
INSERT INTO `tbsalas` VALUES (1,'Innovatis',20),(2,'Optimus',20),(3,'Motum',30);
/*!40000 ALTER TABLE `tbsalas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'manager'
--

--
-- Dumping routines for database 'manager'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-28 19:12:28
