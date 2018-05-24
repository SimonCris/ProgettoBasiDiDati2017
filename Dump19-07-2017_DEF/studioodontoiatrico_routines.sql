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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-19 19:32:42
