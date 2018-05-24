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
-- Table structure for table `affiancamento`
--

DROP TABLE IF EXISTS `affiancamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiancamento` (
  `codice_appuntamento_affiancamento` varchar(6) NOT NULL,
  `codice_fiscale_assistente_affiancamento` varchar(20) NOT NULL,
  `matricola_assistente_affiancamento` varchar(6) NOT NULL,
  PRIMARY KEY (`codice_appuntamento_affiancamento`,`codice_fiscale_assistente_affiancamento`,`matricola_assistente_affiancamento`),
  KEY `codice_fiscale_assistente_affiancamento_idx` (`codice_fiscale_assistente_affiancamento`),
  KEY `matricola_assistente_affiancamento_idx` (`matricola_assistente_affiancamento`),
  CONSTRAINT `codice_appuntamento_affiancamento` FOREIGN KEY (`codice_appuntamento_affiancamento`) REFERENCES `appuntamento` (`codice_appuntamento`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_fiscale_assistente_affiancamento` FOREIGN KEY (`codice_fiscale_assistente_affiancamento`) REFERENCES `assistente` (`codice_fiscale`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `matricola_assistente_affiancamento` FOREIGN KEY (`matricola_assistente_affiancamento`) REFERENCES `assistente` (`matricola_assistente`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiancamento`
--

LOCK TABLES `affiancamento` WRITE;
/*!40000 ALTER TABLE `affiancamento` DISABLE KEYS */;
INSERT INTO `affiancamento` VALUES ('429451','PZZVTR90L65C351F','612534'),('372845','MRCSFO81P54F158V','642150'),('125812','MGNNTN81T27E506N','761241'),('522901','MGNNTN81T27E506N','761241'),('531230','GRNFRC83S01I725L','791205');
/*!40000 ALTER TABLE `affiancamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `appuntamenti_preliminari_ultimo_anno`
--

DROP TABLE IF EXISTS `appuntamenti_preliminari_ultimo_anno`;
/*!50001 DROP VIEW IF EXISTS `appuntamenti_preliminari_ultimo_anno`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `appuntamenti_preliminari_ultimo_anno` AS SELECT 
 1 AS `codiceFiscalePaziente`,
 1 AS `codiceAppuntamentoUltimoAnno`,
 1 AS `tipologiaAppuntamento`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Temporary view structure for view `appuntamento_e_relativo_intervento_con_costo_intervento`
--

DROP TABLE IF EXISTS `appuntamento_e_relativo_intervento_con_costo_intervento`;
/*!50001 DROP VIEW IF EXISTS `appuntamento_e_relativo_intervento_con_costo_intervento`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `appuntamento_e_relativo_intervento_con_costo_intervento` AS SELECT 
 1 AS `codiceAppuntamentoPerIntervento`,
 1 AS `codiceIntervento`,
 1 AS `costoEffettivoIntervento`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Table structure for table `composta`
--

DROP TABLE IF EXISTS `composta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `composta` (
  `codice_terapia_composta` varchar(6) NOT NULL,
  `codice_cura_composta` varchar(45) NOT NULL,
  PRIMARY KEY (`codice_terapia_composta`,`codice_cura_composta`),
  KEY `codice_cura_composta_idx` (`codice_cura_composta`),
  CONSTRAINT `codice_cura_composta` FOREIGN KEY (`codice_cura_composta`) REFERENCES `cura` (`codice_cura`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_terapia_composta` FOREIGN KEY (`codice_terapia_composta`) REFERENCES `terapiafarmacologica` (`codice_terapia`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composta`
--

LOCK TABLES `composta` WRITE;
/*!40000 ALTER TABLE `composta` DISABLE KEYS */;
INSERT INTO `composta` VALUES ('321658','132452'),('153257','241567'),('346213','324578'),('643512','412345'),('326757','423153');
/*!40000 ALTER TABLE `composta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `conta_visite_per_cura_e_paziente`
--

DROP TABLE IF EXISTS `conta_visite_per_cura_e_paziente`;
/*!50001 DROP VIEW IF EXISTS `conta_visite_per_cura_e_paziente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `conta_visite_per_cura_e_paziente` AS SELECT 
 1 AS `codicePaziente`,
 1 AS `codiceCura`,
 1 AS `numeroVisite`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Table structure for table `cura`
--

DROP TABLE IF EXISTS `cura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cura` (
  `codice_cura` varchar(6) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `durata` int(11) NOT NULL,
  PRIMARY KEY (`codice_cura`),
  UNIQUE KEY `codice_cura_UNIQUE` (`codice_cura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cura`
--

LOCK TABLES `cura` WRITE;
/*!40000 ALTER TABLE `cura` DISABLE KEYS */;
INSERT INTO `cura` VALUES ('132452','Igiene dentale',30),('241567','Protesi dentaria',120),('324578','Protesi dentaria',150),('412345','Parodontologia',90),('423153','Igiene dentale',40),('452124','Parodontologia',60);
/*!40000 ALTER TABLE `cura` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Temporary view structure for view `elencovisitemensili`
--

DROP TABLE IF EXISTS `elencovisitemensili`;
/*!50001 DROP VIEW IF EXISTS `elencovisitemensili`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `elencovisitemensili` AS SELECT 
 1 AS `codiceFiscaleOdontoiatra`,
 1 AS `matricolaOdontoiatra`,
 1 AS `mese`,
 1 AS `numeroVisite`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `farmaco`
--

DROP TABLE IF EXISTS `farmaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `farmaco` (
  `codice_farmaco` varchar(6) NOT NULL,
  `nome_farmaco` varchar(45) NOT NULL,
  `tipologia_farmaco` varchar(45) NOT NULL,
  `costo_farmaco` float NOT NULL,
  PRIMARY KEY (`codice_farmaco`,`nome_farmaco`),
  UNIQUE KEY `codice_farmaco_UNIQUE` (`codice_farmaco`),
  UNIQUE KEY `nome_farmaco_UNIQUE` (`nome_farmaco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmaco`
--

LOCK TABLES `farmaco` WRITE;
/*!40000 ALTER TABLE `farmaco` DISABLE KEYS */;
INSERT INTO `farmaco` VALUES ('324252','Aciclovir','Antibiotico',11),('342512','Sciroppo','Antinfiammatorio',7),('412354','Xanax','Ansiolitico',20),('542342','Aspirina','Antinfiammatorio',10),('627123','Fluconazolo','Antibiotico',38),('683023','Percocet','Antidolorifico',25);
/*!40000 ALTER TABLE `farmaco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fattura`
--

DROP TABLE IF EXISTS `fattura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fattura` (
  `codice_fattura` varchar(6) NOT NULL,
  `codice_pagamento_fattura` varchar(6) NOT NULL,
  PRIMARY KEY (`codice_fattura`),
  UNIQUE KEY `codice_fattura_UNIQUE` (`codice_fattura`),
  KEY `codice_pagamento_fattura_idx` (`codice_pagamento_fattura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fattura`
--

LOCK TABLES `fattura` WRITE;
/*!40000 ALTER TABLE `fattura` DISABLE KEYS */;
INSERT INTO `fattura` VALUES ('235362','313543'),('434222','432141'),('521319','543883'),('653263','543932'),('214123','823412');
/*!40000 ALTER TABLE `fattura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `importo_pagato_per_intervento`
--

DROP TABLE IF EXISTS `importo_pagato_per_intervento`;
/*!50001 DROP VIEW IF EXISTS `importo_pagato_per_intervento`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `importo_pagato_per_intervento` AS SELECT 
 1 AS `codiceInterventoPagato`,
 1 AS `ImportoPagatoPerIntervento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `importocomplessivoappuntamento`
--

DROP TABLE IF EXISTS `importocomplessivoappuntamento`;
/*!50001 DROP VIEW IF EXISTS `importocomplessivoappuntamento`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `importocomplessivoappuntamento` AS SELECT 
 1 AS `codiceAppuntamento`,
 1 AS `importoComplessivo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `intervento`
--

DROP TABLE IF EXISTS `intervento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intervento` (
  `codice_intervento` varchar(6) NOT NULL,
  `tipologia` varchar(45) NOT NULL,
  `costo_di_listino_intervento` float NOT NULL,
  `costo_effettivo_intervento` float NOT NULL,
  PRIMARY KEY (`codice_intervento`),
  UNIQUE KEY `codice_intervento_UNIQUE` (`codice_intervento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervento`
--

LOCK TABLES `intervento` WRITE;
/*!40000 ALTER TABLE `intervento` DISABLE KEYS */;
INSERT INTO `intervento` VALUES ('214463','Impiantologia',500,480),('323565','Ortodonzia',130,120),('359212','Parodontologia',400,380),('412654','Igiene Orale',50,50),('421551','Ortodonzia',150,150),('563478','Chirurgia Orale',100,80);
/*!40000 ALTER TABLE `intervento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `numero_interventi_complessivo`
--

DROP TABLE IF EXISTS `numero_interventi_complessivo`;
/*!50001 DROP VIEW IF EXISTS `numero_interventi_complessivo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `numero_interventi_complessivo` AS SELECT 
 1 AS `numeroInterventiComplessivo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `numero_interventi_pagati`
--

DROP TABLE IF EXISTS `numero_interventi_pagati`;
/*!50001 DROP VIEW IF EXISTS `numero_interventi_pagati`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `numero_interventi_pagati` AS SELECT 
 1 AS `numero_interventi_saldati`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagamento` (
  `codice_pagamento` varchar(6) NOT NULL,
  `codice_appuntamento_pagamento` varchar(6) NOT NULL,
  `data_pagamento` date NOT NULL,
  `importo` float NOT NULL,
  `modalita` varchar(45) NOT NULL,
  `rata` tinyint(4) NOT NULL,
  PRIMARY KEY (`codice_pagamento`),
  UNIQUE KEY `codice_pagamento_UNIQUE` (`codice_pagamento`),
  UNIQUE KEY `codice_appuntamento_pagamento_UNIQUE` (`codice_appuntamento_pagamento`),
  KEY `codice_appuntamento_pagamento_idx` (`codice_appuntamento_pagamento`),
  CONSTRAINT `codice_appuntamento_pagamento` FOREIGN KEY (`codice_appuntamento_pagamento`) REFERENCES `appuntamento` (`codice_appuntamento`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES ('313543','429451','2017-08-16',250,'Contanti',1),('432141','632324','2017-12-20',50,'Contanti',0),('432510','522901','2017-03-22',125,'Bonifico',0),('543521','543621','2017-10-01',60,'Contanti',1),('543883','531230','2017-03-11',60,'Bonifico',1),('823412','542363','2017-11-28',50,'Contanti',0);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paziente`
--

DROP TABLE IF EXISTS `paziente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paziente` (
  `codice_fiscale` varchar(20) NOT NULL,
  `nome` varchar(12) NOT NULL,
  `cognome` varchar(12) NOT NULL,
  `indirizzo` varchar(45) DEFAULT NULL,
  `data_nascita` date NOT NULL,
  `numero_telefonico` varchar(10) DEFAULT NULL,
  `sesso` varchar(8) DEFAULT NULL,
  `eta` int(11) NOT NULL,
  PRIMARY KEY (`codice_fiscale`),
  UNIQUE KEY `codice_fiscale_UNIQUE` (`codice_fiscale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paziente`
--

LOCK TABLES `paziente` WRITE;
/*!40000 ALTER TABLE `paziente` DISABLE KEYS */;
INSERT INTO `paziente` VALUES ('BCCMRA89D57G288S','Maria','Bucca','via Garanta, 98','1989-04-17','3452198201','Femmina',28),('NGSFLC96H15F106X','Felice','Negus','via Sardinia, 81','1996-06-15','3331190762','Maschio',21),('RFFFNC80S25D086W','Francesco','Ruffolo','via Ciro Menotti,54','1980-11-25','3417834124','Maschio',37),('SSSLNE71A46H558D','Elena','Sasso','via Sparo,71','1971-01-06','3207908642','Femmina',46),('TVRNNZ84M61L063R','Annunziata','Taverna','via Medma, 183','1984-08-21','3412412401','Femmina',33);
/*!40000 ALTER TABLE `paziente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pazientehaeliminatopiuappuntamenti`
--

DROP TABLE IF EXISTS `pazientehaeliminatopiuappuntamenti`;
/*!50001 DROP VIEW IF EXISTS `pazientehaeliminatopiuappuntamenti`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pazientehaeliminatopiuappuntamenti` AS SELECT 
 1 AS `codiceFiscalePaziente`,
 1 AS `numeroAppuntamentiCancellati`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pazientenonhamaispostatounappuntamento`
--

DROP TABLE IF EXISTS `pazientenonhamaispostatounappuntamento`;
/*!50001 DROP VIEW IF EXISTS `pazientenonhamaispostatounappuntamento`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pazientenonhamaispostatounappuntamento` AS SELECT 
 1 AS `codiceFiscalePaziente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pazientevisitatoduevolte`
--

DROP TABLE IF EXISTS `pazientevisitatoduevolte`;
/*!50001 DROP VIEW IF EXISTS `pazientevisitatoduevolte`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pazientevisitatoduevolte` AS SELECT 
 1 AS `codfis_odontoiatra`,
 1 AS `codfis_paziente`,
 1 AS `settimana_visita`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `prevede`
--

DROP TABLE IF EXISTS `prevede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prevede` (
  `codice_intevento_previsto` varchar(6) NOT NULL,
  `codice_terapia_prevista` varchar(6) NOT NULL,
  PRIMARY KEY (`codice_intevento_previsto`,`codice_terapia_prevista`),
  KEY `codice_terapia_prevista_idx` (`codice_terapia_prevista`),
  CONSTRAINT `codice_intervento_previsto` FOREIGN KEY (`codice_intevento_previsto`) REFERENCES `intervento` (`codice_intervento`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_terapia_prevista` FOREIGN KEY (`codice_terapia_prevista`) REFERENCES `terapiafarmacologica` (`codice_terapia`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prevede`
--

LOCK TABLES `prevede` WRITE;
/*!40000 ALTER TABLE `prevede` DISABLE KEYS */;
INSERT INTO `prevede` VALUES ('214463','153257'),('323565','321658'),('359212','326757'),('421551','346213'),('563478','643512');
/*!40000 ALTER TABLE `prevede` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Temporary view structure for view `spesamassimasingolavisita`
--

DROP TABLE IF EXISTS `spesamassimasingolavisita`;
/*!50001 DROP VIEW IF EXISTS `spesamassimasingolavisita`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `spesamassimasingolavisita` AS SELECT 
 1 AS `codiceFiscale`,
 1 AS `importo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stabilita`
--

DROP TABLE IF EXISTS `stabilita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stabilita` (
  `codice_appuntamento_per_cura` varchar(6) NOT NULL,
  `codice_cura_stabilita` varchar(6) NOT NULL,
  PRIMARY KEY (`codice_appuntamento_per_cura`,`codice_cura_stabilita`),
  KEY `codice_cura_stabilita_idx` (`codice_cura_stabilita`),
  CONSTRAINT `codice_appuntamento_per_cura` FOREIGN KEY (`codice_appuntamento_per_cura`) REFERENCES `appuntamento` (`codice_appuntamento`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_cura_stabilita` FOREIGN KEY (`codice_cura_stabilita`) REFERENCES `cura` (`codice_cura`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stabilita`
--

LOCK TABLES `stabilita` WRITE;
/*!40000 ALTER TABLE `stabilita` DISABLE KEYS */;
INSERT INTO `stabilita` VALUES ('429451','132452'),('522901','412345'),('542363','412345'),('531230','423153'),('632324','423153'),('653521','423153');
/*!40000 ALTER TABLE `stabilita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terapiafarmacologica`
--

DROP TABLE IF EXISTS `terapiafarmacologica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terapiafarmacologica` (
  `codice_terapia` varchar(6) NOT NULL,
  `pre_intervento` tinyint(4) NOT NULL,
  `post_intervento` tinyint(4) NOT NULL,
  `durata_terapia` int(11) NOT NULL,
  PRIMARY KEY (`codice_terapia`),
  UNIQUE KEY `codice_terapia_UNIQUE` (`codice_terapia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terapiafarmacologica`
--

LOCK TABLES `terapiafarmacologica` WRITE;
/*!40000 ALTER TABLE `terapiafarmacologica` DISABLE KEYS */;
INSERT INTO `terapiafarmacologica` VALUES ('153257',0,1,20),('321658',1,0,10),('326757',0,1,5),('346213',1,0,10),('643512',1,0,7);
/*!40000 ALTER TABLE `terapiafarmacologica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terapie`
--

DROP TABLE IF EXISTS `terapie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terapie` (
  `codice_diario_terapie` varchar(6) NOT NULL,
  `codice_terapia_terapie` varchar(6) NOT NULL,
  PRIMARY KEY (`codice_diario_terapie`,`codice_terapia_terapie`),
  KEY `codice_terapia_terapie_idx` (`codice_terapia_terapie`),
  CONSTRAINT `codice_diario_paziente` FOREIGN KEY (`codice_diario_terapie`) REFERENCES `diariopaziente` (`codice_diario_paziente`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `codice_terapia_terapie` FOREIGN KEY (`codice_terapia_terapie`) REFERENCES `terapiafarmacologica` (`codice_terapia`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terapie`
--

LOCK TABLES `terapie` WRITE;
/*!40000 ALTER TABLE `terapie` DISABLE KEYS */;
INSERT INTO `terapie` VALUES ('314523','153257'),('321412','321658'),('542413','326757'),('631249','346213'),('731351','643512');
/*!40000 ALTER TABLE `terapie` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping events for database 'studioodontoiatrico'
--

--
-- Dumping routines for database 'studioodontoiatrico'
--
/*!50003 DROP FUNCTION IF EXISTS `percentuale_interventi_non_saldati` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `percentuale_interventi_non_saldati`(numeroInterventi INTEGER, numeroInterventiPagati INTEGER) RETURNS int(11)
BEGIN

DECLARE percentuale FLOAT;
SET percentuale = 100 - ((numeroInterventiPagati/numeroInterventi) * 100);

RETURN percentuale;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calcolo_numero_interventi_e_percentuale_non_saldati` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calcolo_numero_interventi_e_percentuale_non_saldati`()
BEGIN

SELECT intCompl.numeroInterventiComplessivo, percentuale_interventi_non_saldati(intCompl.numeroInterventiComplessivo,
intPag.numero_interventi_saldati) AS `percentualeInterventiNonSaldati`
FROM numero_interventi_complessivo AS intCompl, numero_interventi_pagati AS intPag;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `elencoVisite` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `elencoVisite`(codFisPaziente varchar(20), dataInizioIntervallo date, 
dataFineIntervallo date )
BEGIN

SELECT a.codice_appuntamento, a.tipologia, a.data
FROM appuntamento AS a, paziente AS p
WHERE p.codice_fiscale = codFisPaziente and a.è_cancellato = 0 and a.codice_fiscale_paziente = p. codice_fiscale and 
	(data >= dataInizioIntervallo and data <= dataFineIntervallo)
ORDER BY a.data;
		

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `elimina_appuntamenti_preliminari` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `elimina_appuntamenti_preliminari`()
BEGIN

	  DELETE 
      FROM appuntamento
      WHERE è_cancellato = 0 AND codice_appuntamento IN (
      
		SELECT appPre.codiceAppuntamentoUltimoAnno
        FROM appuntamenti_preliminari_ultimo_anno AS appPre
      );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserirePaziente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserirePaziente`(codfis varchar(20), nome varchar(12), cognome varchar(12), 
indirizzo varchar(45), dataNascita date, numTel varchar(10), sesso varchar(8), eta int)
BEGIN

INSERT INTO paziente (codice_fiscale, nome, cognome, indirizzo, data_nascita, numero_telefonico,
sesso,eta) VALUES (codfis, nome, cognome, indirizzo, dataNascita, numTel, sesso, eta);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificaNumEIndirizzoOdontoiatra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificaNumEIndirizzoOdontoiatra`(codFis varchar(20), matr varchar(6), nuovoNumero varchar(10),
nuovoIndirizzo varchar(45))
BEGIN

UPDATE odontoiatra
SET indirizzo = nuovoIndirizzo, numero_telefonico = nuovoNumero
WHERE codice_fiscale = codFis and matricola_odontoiatra = matr;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `numero_visite_e_importo_cura_paziente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `numero_visite_e_importo_cura_paziente`(codFis VARCHAR(20), codCura VARCHAR(6))
BEGIN

SELECT contVisite.codicePaziente, contVisite.codiceCura, contVisite.numeroVisite, SUM(impCompl.importoComplessivo) AS `importoComplessivoVersato`
FROM conta_visite_per_cura_e_paziente AS contVisite, importocomplessivoappuntamento AS impCompl, appuntamento AS app
WHERE app.è_cancellato = 0 AND contVisite.codicePaziente = codFis AND contVisite.codiceCura = codCura AND 
      contVisite.codicePaziente = app.codice_fiscale_paziente AND
      impCompl.codiceAppuntamento = app.codice_appuntamento
GROUP BY contVisite.codicePaziente, contVisite.codiceCura;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `appuntamenti_preliminari_ultimo_anno`
--

/*!50001 DROP VIEW IF EXISTS `appuntamenti_preliminari_ultimo_anno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `appuntamenti_preliminari_ultimo_anno` AS select `app`.`codice_fiscale_paziente` AS `codiceFiscalePaziente`,`app`.`codice_appuntamento` AS `codiceAppuntamentoUltimoAnno`,`app`.`tipologia` AS `tipologiaAppuntamento` from `appuntamento` `app` where ((`app`.`è_cancellato` = 0) and (`app`.`tipologia` = 'Preliminare') and (year(`app`.`data`) = year(curdate())) and (not(`app`.`codice_fiscale_paziente` in (select `appunt`.`codice_fiscale_paziente` from `appuntamento` `appunt` where ((`appunt`.`è_cancellato` = 0) and (`appunt`.`codice_fiscale_paziente` = `app`.`codice_fiscale_paziente`) and (`appunt`.`tipologia` <> 'Preliminare')))))) group by `app`.`codice_fiscale_paziente`,`app`.`codice_appuntamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `appuntamento_e_relativo_intervento_con_costo_intervento`
--

/*!50001 DROP VIEW IF EXISTS `appuntamento_e_relativo_intervento_con_costo_intervento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `appuntamento_e_relativo_intervento_con_costo_intervento` AS select `rich`.`codice_appuntamento_per_intervento` AS `codiceAppuntamentoPerIntervento`,`rich`.`codice_intervento_richiesto` AS `codiceIntervento`,`interv`.`costo_effettivo_intervento` AS `costoEffettivoIntervento` from (`richiede` `rich` join `intervento` `interv`) where (`rich`.`codice_intervento_richiesto` = `interv`.`codice_intervento`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `conta_visite_per_cura_e_paziente`
--

/*!50001 DROP VIEW IF EXISTS `conta_visite_per_cura_e_paziente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `conta_visite_per_cura_e_paziente` AS select `app`.`codice_fiscale_paziente` AS `codicePaziente`,`s`.`codice_cura_stabilita` AS `codiceCura`,count(0) AS `numeroVisite` from (`stabilita` `s` join `appuntamento` `app`) where ((`app`.`è_cancellato` = 0) and (`s`.`codice_appuntamento_per_cura` = `app`.`codice_appuntamento`)) group by `app`.`codice_fiscale_paziente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `elencovisitemensili`
--

/*!50001 DROP VIEW IF EXISTS `elencovisitemensili`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `elencovisitemensili` AS select `a`.`codice_fiscale_odontoiatra` AS `codiceFiscaleOdontoiatra`,`a`.`codice_matricola_odontoiatra` AS `matricolaOdontoiatra`,monthname(`a`.`data`) AS `mese`,count(0) AS `numeroVisite` from `appuntamento` `a` where (`a`.`è_cancellato` = 0) group by `a`.`codice_fiscale_odontoiatra`,`a`.`codice_matricola_odontoiatra`,monthname(`a`.`data`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `importo_pagato_per_intervento`
--

/*!50001 DROP VIEW IF EXISTS `importo_pagato_per_intervento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `importo_pagato_per_intervento` AS select `appeintervento`.`codiceIntervento` AS `codiceInterventoPagato`,sum(`pag`.`importo`) AS `ImportoPagatoPerIntervento` from ((`appuntamento` `app` join `appuntamento_e_relativo_intervento_con_costo_intervento` `appeintervento`) join `pagamento` `pag`) where ((`app`.`è_cancellato` = 0) and (`app`.`codice_appuntamento` = `appeintervento`.`codiceAppuntamentoPerIntervento`) and (`pag`.`codice_appuntamento_pagamento` = `app`.`codice_appuntamento`)) group by `appeintervento`.`codiceIntervento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `importocomplessivoappuntamento`
--

/*!50001 DROP VIEW IF EXISTS `importocomplessivoappuntamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `importocomplessivoappuntamento` AS select `p`.`codice_appuntamento_pagamento` AS `codiceAppuntamento`,`p`.`importo` AS `importoComplessivo` from `pagamento` `p` group by `p`.`codice_appuntamento_pagamento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `numero_interventi_complessivo`
--

/*!50001 DROP VIEW IF EXISTS `numero_interventi_complessivo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `numero_interventi_complessivo` AS select count(0) AS `numeroInterventiComplessivo` from `appuntamento` `app` where ((`app`.`è_cancellato` = 0) and (`app`.`tipologia` = 'Intervento')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `numero_interventi_pagati`
--

/*!50001 DROP VIEW IF EXISTS `numero_interventi_pagati`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `numero_interventi_pagati` AS select count(0) AS `numero_interventi_saldati` from `importo_pagato_per_intervento` `impopag` where `impopag`.`codiceInterventoPagato` in (select `appecostointer`.`codiceIntervento` from `appuntamento_e_relativo_intervento_con_costo_intervento` `appecostointer` where (`impopag`.`ImportoPagatoPerIntervento` = `appecostointer`.`costoEffettivoIntervento`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pazientehaeliminatopiuappuntamenti`
--

/*!50001 DROP VIEW IF EXISTS `pazientehaeliminatopiuappuntamenti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pazientehaeliminatopiuappuntamenti` AS select `a`.`codice_fiscale_paziente` AS `codiceFiscalePaziente`,count(0) AS `numeroAppuntamentiCancellati` from `appuntamento` `a` where (`a`.`è_cancellato` = 1) group by `a`.`codice_fiscale_paziente` having count(0) >= all (select count(0) from `appuntamento` `a1` where (`a1`.`è_cancellato` = 1) group by `a1`.`codice_fiscale_paziente`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pazientenonhamaispostatounappuntamento`
--

/*!50001 DROP VIEW IF EXISTS `pazientenonhamaispostatounappuntamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pazientenonhamaispostatounappuntamento` AS select `a`.`codice_fiscale_paziente` AS `codiceFiscalePaziente` from `appuntamento` `a` where ((`a`.`è_cancellato` = 0) and (not(`a`.`codice_fiscale_paziente` in (select `a1`.`codice_fiscale_paziente` from ((`appuntamento` `a1` join `appuntamento` `a2`) join `sostituitoda` `s`) where ((`a1`.`è_cancellato` = 0) and (`a2`.`è_cancellato` = 0) and (`a1`.`codice_fiscale_paziente` = `a`.`codice_fiscale_paziente`) and (`a2`.`codice_fiscale_paziente` = `a`.`codice_fiscale_paziente`) and (`s`.`codice_appuntamento_ha_sostituito` = `a1`.`codice_appuntamento`) and (`s`.`codice_appuntamento_è_sostituito` = `a2`.`codice_appuntamento`)))))) group by `a`.`codice_fiscale_paziente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pazientevisitatoduevolte`
--

/*!50001 DROP VIEW IF EXISTS `pazientevisitatoduevolte`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pazientevisitatoduevolte` AS select `a`.`codice_fiscale_odontoiatra` AS `codfis_odontoiatra`,`a`.`codice_fiscale_paziente` AS `codfis_paziente`,week(`a`.`data`,0) AS `settimana_visita` from `appuntamento` `a` where ((`a`.`è_cancellato` = 0) and `a`.`codice_fiscale_odontoiatra` in (select `a1`.`codice_fiscale_odontoiatra` from `appuntamento` `a1` where ((`a1`.`codice_appuntamento` <> `a`.`codice_appuntamento`) and (`a1`.`è_cancellato` = 0) and (`a1`.`codice_fiscale_odontoiatra` = `a`.`codice_fiscale_odontoiatra`) and (`a1`.`codice_fiscale_paziente` = `a`.`codice_fiscale_paziente`) and (week(`a1`.`data`,0) = week(`a`.`data`,0))))) group by `a`.`codice_fiscale_odontoiatra` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `spesamassimasingolavisita`
--

/*!50001 DROP VIEW IF EXISTS `spesamassimasingolavisita`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `spesamassimasingolavisita` AS select `a`.`codice_fiscale_paziente` AS `codiceFiscale`,`p`.`importo` AS `importo` from (`appuntamento` `a` join `pagamento` `p`) where ((`a`.`codice_appuntamento` = `p`.`codice_appuntamento_pagamento`) and (`a`.`è_cancellato` = 0) and (`p`.`importo` = (select max(`p1`.`importo`) from `pagamento` `p1`))) group by `a`.`codice_fiscale_paziente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-19 19:39:08
