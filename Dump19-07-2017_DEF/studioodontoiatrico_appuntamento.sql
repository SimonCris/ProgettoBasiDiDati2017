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
-- Table structure for table `appuntamento`
--

DROP TABLE IF EXISTS `appuntamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appuntamento` (
  `codice_appuntamento` varchar(6) NOT NULL,
  `codice_matricola_odontoiatra` varchar(6) NOT NULL,
  `codice_fiscale_odontoiatra` varchar(20) NOT NULL,
  `codice_matricola_assistente` varchar(6) NOT NULL,
  `codice_fiscale_assistente` varchar(20) NOT NULL,
  `codice_fiscale_paziente` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `ora_inizio` time NOT NULL,
  `ora_fine` time NOT NULL,
  `tipologia` varchar(45) NOT NULL,
  `è_cancellato` tinyint(4) NOT NULL,
  `periodo_di_visita` int(11) NOT NULL,
  PRIMARY KEY (`codice_appuntamento`),
  UNIQUE KEY `codice_appuntamento_UNIQUE` (`codice_appuntamento`),
  KEY `codice_matricola_odontoiatra_idx` (`codice_matricola_odontoiatra`),
  KEY `codice_fiscale_odontoiatra_idx` (`codice_fiscale_odontoiatra`),
  KEY `codice_matricola_assistente_idx` (`codice_matricola_assistente`),
  KEY `codice_fiscale_assistente_idx` (`codice_fiscale_assistente`),
  KEY `codice_fiscale_paziente_idx` (`codice_fiscale_paziente`),
  CONSTRAINT `codice_fiscale_assistente` FOREIGN KEY (`codice_fiscale_assistente`) REFERENCES `assistente` (`codice_fiscale`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_fiscale_odontoiatra` FOREIGN KEY (`codice_fiscale_odontoiatra`) REFERENCES `odontoiatra` (`codice_fiscale`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_fiscale_paziente` FOREIGN KEY (`codice_fiscale_paziente`) REFERENCES `paziente` (`codice_fiscale`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_matricola_assistente` FOREIGN KEY (`codice_matricola_assistente`) REFERENCES `assistente` (`matricola_assistente`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_matricola_odontoiatra` FOREIGN KEY (`codice_matricola_odontoiatra`) REFERENCES `odontoiatra` (`matricola_odontoiatra`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appuntamento`
--

LOCK TABLES `appuntamento` WRITE;
/*!40000 ALTER TABLE `appuntamento` DISABLE KEYS */;
INSERT INTO `appuntamento` VALUES ('125812','126478','LNTMRZ87R12H501G','612534','PZZVTR90L65C351F','NGSFLC96H15F106X','2017-03-12','17:34:00','18:10:00','Controllo',1,6),('154256','234125','RSSPLA74B21G288O','612534','PZZVTR90L65C351F','SSSLNE71A46H558D','2017-05-15','09:10:00','09:55:00','Controllo',0,106),('313543','126478','LNTMRZ87R12H501G','642150','MRCSFO81P54F158V','SSSLNE71A46H558D','2017-08-28','17:08:00','19:00:00','Preliminare',0,0),('314145','326547','VRDLCU80T52E041S','612534','PZZVTR90L65C351F','BCCMRA89D57G288S','2017-08-15','12:00:00','12:40:00','Preliminare',0,0),('372845','326547','VRDLCU80T52E041S','642150','MRCSFO81P54F158V','NGSFLC96H15F106X','2017-11-26','08:00:00','08:43:00','Controllo',0,21),('429451','546521','SCLRMN85P62F839W','761241','MGNNTN81T27E506N','NGSFLC96H15F106X','2017-12-28','16:45:00','17:12:00','Preliminare',1,0),('432525','546521','SCLRMN85P62F839W','653124','MNGFNC90R30L063B','NGSFLC96H15F106X','2017-10-19','10:00:00','10:25:00','Intervento',1,0),('522901','546521','SCLRMN85P62F839W','761241','MGNNTN81T27E506N','NGSFLC96H15F106X','2017-12-27','12:34:00','13:15:00','Controllo',0,56),('531230','326547','VRDLCU80T52E041S','653124','MNGFNC90R30L063B','SSSLNE71A46H558D','2017-01-25','09:43:00','10:30:00','Intervento',0,0),('542121','341241','CDRCRS93H64E041F','642150','MRCSFO81P54F158V','TVRNNZ84M61L063R','2017-10-09','11:10:00','11:40:00','Preliminare',0,0),('542363','341241','CDRCRS93H64E041F','761241','MGNNTN81T27E506N','NGSFLC96H15F106X','2017-09-08','11:04:00','12:00:00','Controllo',0,16),('543621','126478','LNTMRZ87R12H501G','642150','MRCSFO81P54F158V','BCCMRA89D57G288S','2016-04-11','10:50:00','11:20:00','Intervento',0,0),('632324','126478','LNTMRZ87R12H501G','612534','PZZVTR90L65C351F','SSSLNE71A46H558D','2017-08-27','14:30:00','15:00:00','Intervento',0,0),('653521','326547','VRDLCU80T52E041S','612534','PZZVTR90L65C351F','SSSLNE71A46H558D','2017-11-21','08:00:00','08:34:00','Intervento',1,0);
/*!40000 ALTER TABLE `appuntamento` ENABLE KEYS */;
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
