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
-- Table structure for table `sostituitoda`
--

DROP TABLE IF EXISTS `sostituitoda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sostituitoda` (
  `codice_appuntamento_ha_sostituito` varchar(6) NOT NULL,
  `codice_appuntamento_è_sostituito` varchar(6) NOT NULL,
  PRIMARY KEY (`codice_appuntamento_ha_sostituito`,`codice_appuntamento_è_sostituito`),
  KEY `codice_appuntamento_è_sostituito_idx` (`codice_appuntamento_è_sostituito`),
  CONSTRAINT `codice_appuntamento_ha_sostituito` FOREIGN KEY (`codice_appuntamento_ha_sostituito`) REFERENCES `appuntamento` (`codice_appuntamento`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_appuntamento_è_sostituito` FOREIGN KEY (`codice_appuntamento_è_sostituito`) REFERENCES `appuntamento` (`codice_appuntamento`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sostituitoda`
--

LOCK TABLES `sostituitoda` WRITE;
/*!40000 ALTER TABLE `sostituitoda` DISABLE KEYS */;
INSERT INTO `sostituitoda` VALUES ('429451','125812'),('372845','522901'),('531230','632324');
/*!40000 ALTER TABLE `sostituitoda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-19 19:32:39
