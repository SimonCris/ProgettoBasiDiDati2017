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
-- Table structure for table `diariopaziente`
--

DROP TABLE IF EXISTS `diariopaziente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diariopaziente` (
  `codice_diario_paziente` varchar(6) NOT NULL,
  `codice_terapia_diario` varchar(6) NOT NULL,
  `codice_fiscale_paziente_diario` varchar(20) NOT NULL,
  PRIMARY KEY (`codice_diario_paziente`),
  UNIQUE KEY `codice_diario_paziente_UNIQUE` (`codice_diario_paziente`),
  KEY `codice_terapia_diario_idx` (`codice_terapia_diario`),
  KEY `codice_fiscale_paziente_idx` (`codice_fiscale_paziente_diario`),
  CONSTRAINT `codice_fiscale_paziente_diario` FOREIGN KEY (`codice_fiscale_paziente_diario`) REFERENCES `paziente` (`codice_fiscale`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_terapia_diario` FOREIGN KEY (`codice_terapia_diario`) REFERENCES `terapiafarmacologica` (`codice_terapia`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diariopaziente`
--

LOCK TABLES `diariopaziente` WRITE;
/*!40000 ALTER TABLE `diariopaziente` DISABLE KEYS */;
INSERT INTO `diariopaziente` VALUES ('314523','153257','NGSFLC96H15F106X'),('321412','321658','SSSLNE71A46H558D'),('542413','346213','TVRNNZ84M61L063R'),('631249','326757','SSSLNE71A46H558D'),('731351','321658','BCCMRA89D57G288S');
/*!40000 ALTER TABLE `diariopaziente` ENABLE KEYS */;
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
