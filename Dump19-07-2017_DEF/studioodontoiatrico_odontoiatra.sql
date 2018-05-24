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
-- Table structure for table `odontoiatra`
--

DROP TABLE IF EXISTS `odontoiatra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odontoiatra` (
  `matricola_odontoiatra` varchar(6) NOT NULL,
  `codice_fiscale` varchar(20) NOT NULL,
  `nome` varchar(12) NOT NULL,
  `cognome` varchar(12) NOT NULL,
  `specializzazione_medica` varchar(45) NOT NULL,
  `indirizzo` varchar(45) DEFAULT NULL,
  `data_nascita` date NOT NULL,
  `numero_telefonico` varchar(10) DEFAULT NULL,
  `sesso` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`matricola_odontoiatra`,`codice_fiscale`),
  UNIQUE KEY `Matricola_Odontoiatra_UNIQUE` (`matricola_odontoiatra`),
  UNIQUE KEY `Codice_Fiscale_UNIQUE` (`codice_fiscale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odontoiatra`
--

LOCK TABLES `odontoiatra` WRITE;
/*!40000 ALTER TABLE `odontoiatra` DISABLE KEYS */;
INSERT INTO `odontoiatra` VALUES ('126478','LNTMRZ87R12H501G','Maurizio','Lento','Odontoiatria Pediatrica','via Garibaldi,90','1987-10-12','3334512849','Maschio'),('163253','	BFFGNN90D29L219Q','Giovanni','Buffa','Chirurgia Orale','via Roma,192','1990-04-29','3317826102','Maschio'),('234125','RSSPLA74B21G288O','Paolo','Rossi','Chirurgia Orale','via Po, 15','1974-02-21','3315623812','Maschio'),('326547','VRDLCU80T52E041S','Lucia','Verdi','Ortognatodonzia','via Pontevecchio,16','1980-12-21','3331569091','Femmina'),('341241','CDRCRS93H64E041F','Clarissa','Cedro','Odontoiatria Pediatrica','via Libeccio, 44','1993-06-24','3334812094','Femmina'),('546521','SCLRMN85P62F839W','Erminia','Scalzo','Ortognatodonzia','via Torino,191','1985-09-22','3205392321','Femmina');
/*!40000 ALTER TABLE `odontoiatra` ENABLE KEYS */;
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
