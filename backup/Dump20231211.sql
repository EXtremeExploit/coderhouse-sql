/* Tablas exportadas: 
Comentarios
ComentariosBorrados
ComentariosVotos
Fics
FicsFavs
FicsVotos
Generos
Usuarios
UsuariosLog
VW_Fics_By_User_id_8
VW_Fics_friendship
VW_Fics_in_2013
VW_Usuarios_Anon
VW_Usuarios_Genero_Hombre
*/

-- MariaDB dump 10.19-11.2.2-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: fimfiction
-- ------------------------------------------------------
-- Server version	11.2.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `Comentarios`
--

LOCK TABLES `Comentarios` WRITE;
/*!40000 ALTER TABLE `Comentarios` DISABLE KEYS */;
INSERT INTO `Comentarios` VALUES
(3,8,1,'Muy bueno.','2023-12-06 22:53:07'),
(4,5,1,'Twilight como siempre la GOAT.','2023-12-06 22:53:07'),
(5,8,2,'Basadisimo el que hizo esto.','2023-12-06 22:53:07'),
(6,5,2,'All my homies love the everfree forest.','2023-12-06 22:53:07'),
(7,8,3,'No te puedo creer que le paso toda la responsabilidad a Cozy Glow.','2023-12-06 22:53:07');
/*!40000 ALTER TABLE `Comentarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`pedro`@`localhost`*/ /*!50003 TRIGGER `TRG_DEL_COMM`
BEFORE DELETE ON `Comentarios`
FOR EACH ROW
BEGIN
    INSERT INTO `ComentariosBorrados` (id_comentario, id_usuario, id_fic, text, time, time_borrado) VALUES(OLD.id,OLD.id_usuario, OLD.id_fic, OLD.text, OLD.time, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `ComentariosBorrados`
--

LOCK TABLES `ComentariosBorrados` WRITE;
/*!40000 ALTER TABLE `ComentariosBorrados` DISABLE KEYS */;
INSERT INTO `ComentariosBorrados` VALUES
(1,1,18,1,'Primero','2023-12-06 22:53:07','2023-12-06 22:53:07'),
(2,2,19,1,'Segundo','2023-12-06 22:53:07','2023-12-06 22:53:07'),
(3,8,5,3,'Re vieja twilight.','2023-12-06 22:53:07','2023-12-06 22:53:07');
/*!40000 ALTER TABLE `ComentariosBorrados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CommentariosVotos`
--

LOCK TABLES `CommentariosVotos` WRITE;
/*!40000 ALTER TABLE `CommentariosVotos` DISABLE KEYS */;
/*!40000 ALTER TABLE `CommentariosVotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Fics`
--

LOCK TABLES `Fics` WRITE;
/*!40000 ALTER TABLE `Fics` DISABLE KEYS */;
INSERT INTO `Fics` VALUES
(1,8,'Equestrian Enigma: The Mystery of the Missing Elements','When the Elements of Harmony vanish without a trace, Ponyville is plunged into chaos. Twilight Sparkle and her friends must unravel the mysterious disappearance, facing challenges that test the very essence of their friendship. Can they solve the enigma and restore peace to their beloved land?','2013-12-02 14:22:11'),
(2,5,'Beyond the Everfree: Exploring the Unknown in Ponyville','An ancient legend awakens curiosity in Ponyville, leading Twilight Sparkle and her friends to explore the mysterious realms beyond the Everfree Forest. As they encounter new creatures and face unforeseen challenges, the ponies learn valuable lessons about trust, bravery, and the magic that lies beyond their familiar borders.','2013-09-28 04:17:47'),
(3,5,'Twilight\'s Legacy: Passing the Torch of Friendship','Twilight Sparkle, now a wise and experienced ruler, contemplates her legacy as the Princess of Friendship. When a new generation of ponies emerges, Twilight must pass on the torch of friendship, guiding the young ones through their own adventures. Together, they discover the timeless values that make Equestria a land of everlasting harmony.','2021-03-16 18:31:31');
/*!40000 ALTER TABLE `Fics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FicsFavs`
--

LOCK TABLES `FicsFavs` WRITE;
/*!40000 ALTER TABLE `FicsFavs` DISABLE KEYS */;
/*!40000 ALTER TABLE `FicsFavs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `FicsVotos`
--

LOCK TABLES `FicsVotos` WRITE;
/*!40000 ALTER TABLE `FicsVotos` DISABLE KEYS */;
/*!40000 ALTER TABLE `FicsVotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Generos`
--

LOCK TABLES `Generos` WRITE;
/*!40000 ALTER TABLE `Generos` DISABLE KEYS */;
INSERT INTO `Generos` VALUES
(1,'Hombre'),
(2,'Hombre'),
(4,'Hombre'),
(5,'Hombre'),
(7,'Hombre'),
(8,'Mujer'),
(9,'Hombre'),
(10,'caos'),
(11,'Hombre'),
(12,'Yegua'),
(13,'Hombre'),
(14,'Hombre'),
(15,'Mujer'),
(17,'Hombre');
/*!40000 ALTER TABLE `Generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES
(1,'x','e5fa44f2b31c1fb553b6021e7360d07d5d91ff5e','b026324c6'),
(2,'queso','7448d8798a4380162d4b56f9b452e2f6f9e24e7a','26ab0db90'),
(4,'TheLegend27','9c6b057a2b9d96a4067a749ee3b3b0158d390cf1','48a24b70a'),
(5,'EXtremeExploit','5d9474c0309b7ca09a182d888f73b37a8fe1362c','1dcca2335'),
(7,'pedrito','d3964f9dad9f60363c81b688324d95b4ec7c8038','84bc3da1b'),
(8,'flutterbat','136571b41aa14adc10c5f3c987d43c02c8f5d498','c30f74727'),
(9,'discord','b6abd567fa79cbe0196d093a067271361dc6ca8b','7c5aba41f'),
(10,'jesse','4143d3a341877154d6e95211464e1df1015b74bd','31d30eea8'),
(11,'heisenberg','dd71038f3463f511ee7403dbcbc87195302d891c','166d77ac1'),
(12,'twi_twi','ad552e6dc057d1d825bf49df79d6b98eba846ebe','2737b4925'),
(13,'nico','feee44ad365b6b1ec75c5621a0ad067371102854','aa6ed9e0f'),
(14,'littleshy','030514d80869744a4e2f60d2fd37d6081f5ed01a','367764329'),
(15,'sunshine','587b596f04f7db9c2cad3d6b87dd2b3a05de4f35','8c9eb686b'),
(17,'coaster','ad48103e4fc71796e9708cafc43adeed0d1076b7','4d095eeac'),
(18,'Anon','24b9c1f3fddff79893e5304f998f2f95ebebd149','0d07d5d91'),
(19,'AnonFilly','ba9f376fa71904ccde2a756a24a4e47ec014ee0a','6f9e24e7a'),
(20,'john','c15f47cace1e4948ac3ccdd3489d249b99a1b026','cf6a52053'),
(21,'capcom','745d8d7470846da22a9cc096dc19671b16215df5','5aa8301da'),
(22,'illinois','fbea1350da5283f2e89cc2669635731281202371','ff7f2c85a'),
(23,'enderman','468749f28902b501d9b00d76b32562ac7f9e14b8','929ad9494'),
(24,'snek','592d58131f564a5ecc4fdf0eeb530a1dd0786d34','4df969991');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`pedro`@`localhost`*/ /*!50003 TRIGGER `TRG_NEW_USER`
AFTER INSERT ON `Usuarios`
FOR EACH ROW
BEGIN
    INSERT INTO `UsuariosLog` (id_user, username, time) VALUES(NEW.id,NEW.username, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `UsuariosLog`
--

LOCK TABLES `UsuariosLog` WRITE;
/*!40000 ALTER TABLE `UsuariosLog` DISABLE KEYS */;
INSERT INTO `UsuariosLog` VALUES
(1,20,'john','2023-12-06 22:53:07'),
(2,21,'capcom','2023-12-06 22:53:07'),
(3,22,'illinois','2023-12-06 22:53:07'),
(4,23,'enderman','2023-12-06 22:53:07'),
(5,24,'snek','2023-12-06 22:53:07');
/*!40000 ALTER TABLE `UsuariosLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'fimfiction'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `CantFicsPorAño` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`pedro`@`localhost` FUNCTION `CantFicsPorAño`(año INT) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE cant INT;

    SELECT COUNT(*) INTO cant FROM `Fics` WHERE year(`time`) = año;

    return cant;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `CantFicsPorUsuarioId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`pedro`@`localhost` FUNCTION `CantFicsPorUsuarioId`(id INT) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE cant INT;

    SELECT COUNT(*) INTO cant FROM Fics WHERE id_creador = id;

    return cant;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CREAR_FIC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`pedro`@`localhost` PROCEDURE `SP_CREAR_FIC`(
    IN id_creador INT, -- ID del usuario que creo el fic
    IN title TEXT, -- Titulo del fic
    IN text TEXT)
BEGIN
    INSERT INTO Fics (`id_creador`, `title`,`text`,`time`) VALUES (id_creador, title,text, NOW() );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_USUARIOS_ORDENADOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`pedro`@`localhost` PROCEDURE `SP_USUARIOS_ORDENADOS`(
    IN CampoOrdenamiento VARCHAR(100), -- Por que campo de la tabla ordenar
    IN OrdenAscendente BOOLEAN)
BEGIN
    SET @query = CONCAT('SELECT * FROM Usuarios ORDER BY ', CampoOrdenamiento, IF(OrdenAscendente, 'ASC', 'DESC'));

    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 21:33:21
