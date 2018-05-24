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
-- Table structure for table `assistente`
--

DROP TABLE IF EXISTS `assistente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assistente` (
  `matricola_assistente` varchar(6) NOT NULL,
  `codice_fiscale` varchar(20) NOT NULL,
  `nome` varchar(12) NOT NULL,
  `cognome` varchar(12) NOT NULL,
  `indirizzo` varchar(45) DEFAULT NULL,
  `data_nascita` varchar(45) NOT NULL,
  `numero_telefonico` varchar(10) DEFAULT NULL,
  `sesso` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`matricola_assistente`,`codice_fiscale`),
  UNIQUE KEY `matricola_assistente_UNIQUE` (`matricola_assistente`),
  UNIQUE KEY `codice_fiscale_UNIQUE` (`codice_fiscale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistente`
--

LOCK TABLES `assistente` WRITE;
/*!40000 ALTER TABLE `assistente` DISABLE KEYS */;
INSERT INTO `assistente` VALUES ('612534','PZZVTR90L65C351F','Vittoria','Piazza','via Liberta,144','1990-07-25','3207263145','Femmina'),('642150','MRCSFO81P54F158V','Sofia','Marcia','via Cavour,201','1981-09-14','3309078612','Femmina'),('653124','MNGFNC90R30L063B','Francesco','Mungo','via Cola,37','1990-10-30','3346521907','Maschio'),('761241','MGNNTN81T27E506N','Antonio','Magno','via Fiume,89','1981-12-27','3496412890','Maschio'),('791205','GRNFRC83S01I725L','Federico','Grande','via Vittoria,92','1983-11-01','3334195021','Maschio');
/*!40000 ALTER TABLE `assistente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-19 19:32:42
