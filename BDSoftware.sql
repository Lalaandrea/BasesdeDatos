-- MySQL dump 10.13  Distrib 5.7.22, for Linux (i686)
--
-- Host: localhost    Database: BDSoftware
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
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente` (
  `DNI` int(5) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Edad` int(2) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'Pepe Pérez',45),(2,'Juan Gonzalez',45),(3,'Maria Gomez',33),(4,'Javier Casado',18),(5,'Nuria Sanchez',29),(6,'Antonio Navarro',58);
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;











DROP TABLE IF EXISTS `Fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fabricante` (
  `ID_Fab` int(5) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Pais` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_Fab`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fabricante`
--

LOCK TABLES `Fabricante` WRITE;
/*!40000 ALTER TABLE `Fabricante` DISABLE KEYS */;
INSERT INTO `Fabricante` VALUES (1,'Oracle','Estados Unidos'),(2,'Microsoft','Estados Unidos'),(3,'IBM','Estados Unidos'),(4,'Dinamic','España'),(5,'Borland','Estados Unidos'),(6,'Symantec','Estados Unidos');
/*!40000 ALTER TABLE `Fabricante` ENABLE KEYS */;
UNLOCK TABLES;













DROP TABLE IF EXISTS `Programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Programa` (
  `Codigo` int(5) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Version` varchar(50) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Programa`
--

LOCK TABLES `Programa` WRITE;
/*!40000 ALTER TABLE `Programa` DISABLE KEYS */;
INSERT INTO `Programa` VALUES (1,'Application Server','9i'),(2,'Database','9i'),(3,'Database','9i'),(4,'Database','10g'),
(5,'Developer','8i'),(6,'Access','97'),(7,'Access','2000'),(8,'Access','XP'),(9,'Windows','98'),(10,'Windows','XP Professional'),
(11,'Windows','XP Home Edition'),(12,'Windows','2003 Server'),(13,'Norton Internet Securiy','2004'),(14,'Fredy Hardest','-'),(15,'Paradox','2');
/*!40000 ALTER TABLE `Programa` ENABLE KEYS */;
UNLOCK TABLES;















--
-- Table structure for table `Comercio`
--

DROP TABLE IF EXISTS `Comercio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comercio` (
  `CIF` int(5) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  PRIMARY KEY (`CIF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comercio`
--

LOCK TABLES `Comercio` WRITE;
/*!40000 ALTER TABLE `Comercio` DISABLE KEYS */;
INSERT INTO `Comercio` VALUES (1,'El corte ingles','Sevilla'),(2,'El corte ingles','Madrid'),(3,'Jump','Valencia'),(4,'Centro mail','Sevilla'),(5,'FNAC','Barcelona');
/*!40000 ALTER TABLE `Comercio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MATRIM`
--


/*Dependientes*/



DROP TABLE IF EXISTS `Registra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Registra` (
  `CIF` int(5) NOT NULL,
  `Codigo` int(5) NOT NULL,
  `DNI` int(5) NOT NULL,
  `Medio` varchar(25) NOT NULL,
  PRIMARY KEY (`CIF`,`Codigo`,`DNI`),
  KEY `FKRegCodigo` (`Codigo`),
  CONSTRAINT `FKRegCIF` FOREIGN KEY (`CIF`) REFERENCES `Comercio` (`CIF`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKRegDNI` FOREIGN KEY (`DNI`) REFERENCES `Cliente` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKRegCodigo` FOREIGN KEY (`Codigo`) REFERENCES `Programa` (`Codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registra`
--

LOCK TABLES `Registra` WRITE;
/*!40000 ALTER TABLE `Registra` DISABLE KEYS */;
INSERT INTO `Registra` VALUES (1,1,1,'Internet'),(1,3,4,'Tarjeta Postal'),(4,2,10,'Teléfono'),(4,1,10,'Tarjeta Postal'),(5,2,12,'Internet'),(2,4,15,'Internet');
/*!40000 ALTER TABLE `Registra` ENABLE KEYS */;
UNLOCK TABLES;











DROP TABLE IF EXISTS `Distribuye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Distribuye` (
  `CIF` int(5) NOT NULL,
  `Codigo` int(5) NOT NULL,
  `Cantidad` int(7) NOT NULL,
  PRIMARY KEY (`CIF`,`Codigo`),
  KEY `FKDisCodigo` (`Codigo`),
  CONSTRAINT `FKDisCIF` FOREIGN KEY (`CIF`) REFERENCES `Comercio` (`CIF`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKDisCodigo` FOREIGN KEY (`Codigo`) REFERENCES `Programa` (`Codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Distribuye`
--

LOCK TABLES `Distribuye` WRITE;
/*!40000 ALTER TABLE `Distribuye` DISABLE KEYS */;
INSERT INTO `Distribuye` VALUES (1,1,10),(1,2,11),(1,6,5),(1,7,3),(1,10,7),(1,13,7),(2,1,6),(2,2,6),(2,6,4),
(2,7,7),(3,10,8),(3,13,5),(4,14,3);
/*!40000 ALTER TABLE `Distribuye` ENABLE KEYS */;
UNLOCK TABLES;







DROP TABLE IF EXISTS `Desarrolla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Desarrolla` (
  `ID_Fab` int(5) NOT NULL,
  `Codigo` int(5) NOT NULL,
  
  PRIMARY KEY (`ID_Fab`,`Codigo`),
  KEY `FKDesCodigo` (`Codigo`),
  CONSTRAINT `FKDesID_Fab` FOREIGN KEY (`ID_Fab`) REFERENCES `Fabricante` (`ID_Fab`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKDesCodigo` FOREIGN KEY (`Codigo`) REFERENCES `Programa` (`Codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Desarrolla`
--

LOCK TABLES `Desarrolla` WRITE;
/*!40000 ALTER TABLE `Desarrolla` DISABLE KEYS */;
INSERT INTO `Desarrolla` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),
(6,13),(4,14),(5,15);
/*!40000 ALTER TABLE `Desarrolla` ENABLE KEYS */;
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
