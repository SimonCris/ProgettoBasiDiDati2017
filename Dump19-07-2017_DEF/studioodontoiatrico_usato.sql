-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: studioodontoiatrico
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `usato`
--

DROP TABLE IF EXISTS `usato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usato` (
  `codice_cura_usata` varchar(6) NOT NULL,
  `codice_farmaco_usato` varchar(6) NOT NULL,
  `nome_farmaco_usato` varchar(45) NOT NULL,
  PRIMARY KEY (`codice_cura_usata`,`codice_farmaco_usato`,`nome_farmaco_usato`),
  KEY `codice_farmaco_usato_idx` (`codice_farmaco_usato`),
  KEY `codice_farmaco_usato_idx1` (`nome_farmaco_usato`),
  CONSTRAINT `codice_cura_usata` FOREIGN KEY (`codice_cura_usata`) REFERENCES `cura` (`codice_cura`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_farmaco_usato` FOREIGN KEY (`codice_farmaco_usato`) REFERENCES `farmaco` (`codice_farmaco`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `nome_farmaco_usato` FOREIGN KEY (`nome_farmaco_usato`) REFERENCES `farmaco` (`nome_farmaco`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usato`
--

LOCK TABLES `usato` WRITE;
/*!40000 ALTER TABLE `usato` DISABLE KEYS */;
INSERT INTO `usato` VALUES ('132452','324252','Aciclovir'),('412345','342512','Sciroppo'),('452124','412354','Xanax'),('452124','542342','Aspirina'),('241567','627123','Fluconazolo'),('324578','683023','Percocet');
/*!40000 ALTER TABLE `usato` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-19 19:32:41
