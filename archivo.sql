-- MySQL dump 10.13  Distrib 5.7.22, for Linux (i686)
--
-- Host: localhost    Database: Parejas
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `HSIM`
--

DROP TABLE IF EXISTS `HSIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HSIM` (
  `Nomh` varchar(20) NOT NULL,
  `Nomm` varchar(20) NOT NULL,
  PRIMARY KEY (`Nomh`,`Nomm`),
  KEY `FKM` (`Nomm`),
  CONSTRAINT `FKH` FOREIGN KEY (`Nomh`) REFERENCES `Hombre` (`NOMH`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKM` FOREIGN KEY (`Nomm`) REFERENCES `Mujer` (`Nomm`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HSIM`
--

LOCK TABLES `HSIM` WRITE;
/*!40000 ALTER TABLE `HSIM` DISABLE KEYS */;
INSERT INTO `HSIM` VALUES ('ALBERTO','ADRIANA'),('ALEXIS','ADRIANA'),('ARTURO','ADRIANA'),('CARLOS','ADRIANA'),('EDUARDO','ADRIANA'),('LUIS','ADRIANA'),('MARIO','ADRIANA'),('PABLO','ADRIANA'),('VICTOR','ADRIANA'),('ALBERTO','DANIELA'),('ARTURO','LAURA'),('ALBERTO','LETICIA'),('LUIS','LILIANA'),('MARIO','LILIANA'),('ALEXIS','PAOLA'),('CARLOS','PAOLA'),('VICTOR','SANDY'),('PABLO','WENDY');
/*!40000 ALTER TABLE `HSIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hombre`
--

DROP TABLE IF EXISTS `Hombre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hombre` (
  `NOMH` varchar(20) NOT NULL,
  `Edad` int(5) NOT NULL,
  PRIMARY KEY (`NOMH`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hombre`
--

LOCK TABLES `Hombre` WRITE;
/*!40000 ALTER TABLE `Hombre` DISABLE KEYS */;
INSERT INTO `Hombre` VALUES ('ALBERTO',26),('ALEXIS',30),('ARTURO',31),('CARLOS',28),('EDUARDO',27),('ENRIQUE',29),('HECTOR',33),('LUIS',19),('MARIO',33),('PABLO',25),('VICTOR',31);
/*!40000 ALTER TABLE `Hombre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MATRIM`
--

DROP TABLE IF EXISTS `MATRIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MATRIM` (
  `Nomh` varchar(20) NOT NULL,
  `Nomm` varchar(20) NOT NULL,
  PRIMARY KEY (`Nomh`,`Nomm`),
  KEY `FKMMATRIM` (`Nomm`),
  CONSTRAINT `FKHMATRIM` FOREIGN KEY (`Nomh`) REFERENCES `Hombre` (`NOMH`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKMMATRIM` FOREIGN KEY (`Nomm`) REFERENCES `Mujer` (`Nomm`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MATRIM`
--

LOCK TABLES `MATRIM` WRITE;
/*!40000 ALTER TABLE `MATRIM` DISABLE KEYS */;
INSERT INTO `MATRIM` VALUES ('LUIS','ALMA'),('ARTURO','LAURA'),('CARLOS','LILIANA'),('EDUARDO','PAOLA'),('VICTOR','SANDY'),('PABLO','WENDY');
/*!40000 ALTER TABLE `MATRIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MSIM`
--

DROP TABLE IF EXISTS `MSIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MSIM` (
  `Nomh` varchar(20) NOT NULL,
  `Nomm` varchar(20) NOT NULL,
  PRIMARY KEY (`Nomh`,`Nomm`),
  KEY `FKMMSIM` (`Nomm`),
  CONSTRAINT `FKHMSIM` FOREIGN KEY (`Nomh`) REFERENCES `Hombre` (`NOMH`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKMMSIM` FOREIGN KEY (`Nomm`) REFERENCES `Mujer` (`Nomm`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MSIM`
--

LOCK TABLES `MSIM` WRITE;
/*!40000 ALTER TABLE `MSIM` DISABLE KEYS */;
INSERT INTO `MSIM` VALUES ('ALBERTO','ADRIANA'),('ALBERTO','ALMA'),('MARIO','ALMA'),('ALBERTO','DANIELA'),('ARTURO','LAURA'),('MARIO','LAURA'),('ALBERTO','LETICIA'),('MARIO','LILIANA'),('PABLO','LILIANA'),('ALEXIS','PAOLA'),('MARIO','PAOLA'),('MARIO','SANDY'),('VICTOR','SANDY'),('MARIO','WENDY'),('PABLO','WENDY');
/*!40000 ALTER TABLE `MSIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mujer`
--

DROP TABLE IF EXISTS `Mujer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mujer` (
  `Nomm` varchar(20) NOT NULL,
  `Edad` int(5) NOT NULL,
  PRIMARY KEY (`Nomm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mujer`
--

LOCK TABLES `Mujer` WRITE;
/*!40000 ALTER TABLE `Mujer` DISABLE KEYS */;
INSERT INTO `Mujer` VALUES ('ADRIANA',27),('ALMA',19),('DANIELA',25),('LAURA',30),('LETICIA',33),('LILIANA',32),('PAOLA',24),('SANDY',31),('WENDY',25);
/*!40000 ALTER TABLE `Mujer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-21  7:27:44
