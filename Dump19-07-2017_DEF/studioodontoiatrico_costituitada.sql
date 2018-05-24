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
-- Table structure for table `costituitada`
--

DROP TABLE IF EXISTS `costituitada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costituitada` (
  `codice_terapia_costituita` varchar(6) NOT NULL,
  `codice_farmaco_costituisce` varchar(6) NOT NULL,
  `nome_farmaco_costuisce` varchar(45) NOT NULL,
  `dose_farmaco` float NOT NULL,
  PRIMARY KEY (`codice_terapia_costituita`,`codice_farmaco_costituisce`,`nome_farmaco_costuisce`),
  KEY `codice_farmaco_costituisce_idx` (`codice_farmaco_costituisce`),
  KEY `nome_farmaco_costituisce_idx` (`nome_farmaco_costuisce`),
  CONSTRAINT `codice_farmaco_costituisce` FOREIGN KEY (`codice_farmaco_costituisce`) REFERENCES `farmaco` (`codice_farmaco`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_terapia_costituita` FOREIGN KEY (`codice_terapia_costituita`) REFERENCES `terapiafarmacologica` (`codice_terapia`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `nome_farmaco_costituisce` FOREIGN KEY (`nome_farmaco_costuisce`) REFERENCES `farmaco` (`nome_farmaco`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costituitada`
--

LOCK TABLES `costituitada` WRITE;
/*!40000 ALTER TABLE `costituitada` DISABLE KEYS */;
INSERT INTO `costituitada` VALUES ('153257','324252','Aciclovir',20),('321658','542342','Aspirina',15),('326757','412354','Xanax',5),('346213','683023','Percocet',25),('643512','627123','Fluconazolo',50);
/*!40000 ALTER TABLE `costituitada` ENABLE KEYS */;
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
