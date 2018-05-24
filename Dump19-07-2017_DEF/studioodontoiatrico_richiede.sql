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
-- Table structure for table `richiede`
--

DROP TABLE IF EXISTS `richiede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `richiede` (
  `codice_intervento_richiesto` varchar(6) NOT NULL,
  `codice_appuntamento_per_intervento` varchar(6) NOT NULL,
  PRIMARY KEY (`codice_intervento_richiesto`,`codice_appuntamento_per_intervento`),
  KEY `codice_appuntamento_per_intervento_idx` (`codice_appuntamento_per_intervento`),
  CONSTRAINT `codice_appuntamento_per_intervento` FOREIGN KEY (`codice_appuntamento_per_intervento`) REFERENCES `appuntamento` (`codice_appuntamento`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_intervento_richiesto` FOREIGN KEY (`codice_intervento_richiesto`) REFERENCES `intervento` (`codice_intervento`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `richiede`
--

LOCK TABLES `richiede` WRITE;
/*!40000 ALTER TABLE `richiede` DISABLE KEYS */;
INSERT INTO `richiede` VALUES ('323565','531230'),('323565','543621'),('412654','632324'),('214463','653521');
/*!40000 ALTER TABLE `richiede` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-19 19:32:40
