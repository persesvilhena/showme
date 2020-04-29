-- MySQL dump 10.16  Distrib 10.2.16-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u289875908_show
-- ------------------------------------------------------
-- Server version	10.2.16-MariaDB

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
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_ar` int(255) NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `hora` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rev` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` VALUES (1,1,'Show São Paulo','2013-09-20','23:55','arena anhenbi','',1),(2,1,'Show Rock In Rio','2013-09-22','00:05','Rio de Janeiro','',1),(3,1,'Show Em Curitiba','2013-09-24','23:55','curitiba','http://www.ironmaiden.com',1),(5,4,'showw','2014-11-05','23:30','muzambinhu','lin',0),(6,2,'aaaa','2014-11-21','sdfsdf','sdfsdf','sdf',0);
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `us` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (2,'sadsaad','1','d4afa7aaff109dfd3e0636e78e7c59c7.JPG'),(3,'','1','caff60058ea8ef9b1918304ead8bc068.bmp'),(4,'','1','3adbdf658e27455af635ccd9ec1a855c.jpg'),(5,'','1','f1e4ea3e3328c11679a81fccd259a6ff.jpg'),(16,'','1','3ab05dddc9628f7b29f77fbc2ae0544a.jpg'),(9,'','6','e5cb00e719f86e6642a27362f31e2d1a.jpg'),(10,'','6','546d7e2c5ae0a3e12c419d3450f51d01.jpg'),(12,'','6','2dd58aa0185c3f4b9acff1bd6ba5b407.jpg'),(17,'','1','2c4bc149e82e378b6ab14428842a7094.png'),(18,'','1','c392bf4f0f978f620fe84a5fb7c66a79.jpg'),(19,'','1','13dc5b58999c8d18544d4b9168a337c7.JPG'),(20,'narigudo','1','b59c53d2969284d764fa36c5ce093be6.jpg'),(21,'','1','e529de1aed9e26f0efa0ae38cb3fd5a1.jpg');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;

--
-- Table structure for table `album_ar`
--

DROP TABLE IF EXISTS `album_ar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_ar` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `us` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_ar`
--

/*!40000 ALTER TABLE `album_ar` DISABLE KEYS */;
INSERT INTO `album_ar` VALUES (7,'sdcfsdfs','1','517f4ab192dfa686fc5cfe625e3c6888.jpg'),(8,'','1','76b5c7dc96a780044c5992e14d046057.jpg'),(10,'','4','c3534d05f6fc5f23f88a8b31ee36a064.jpg'),(11,'','1','47b630e2ad5ef8f85401ad112916a7ba.jpg'),(12,'','1','1c3c3de3130ba37e8ccebe1f20619111.jpg'),(13,'','1','aa6db88926faab87bac76fe904065836.jpg'),(14,'','1','32e59b5d28497dd01718a3865c762ce0.jpg');
/*!40000 ALTER TABLE `album_ar` ENABLE KEYS */;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` longtext COLLATE utf8_unicode_ci NOT NULL,
  `est_musical` int(255) NOT NULL,
  `musicas` int(255) NOT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rev` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Iron Maiden','Iron Maiden é uma banda britânica de heavy metal, formada em 19751 pelo baixista Steve Harris, ex-integrante das bandas Gypsy\'s Kiss e Smiler. Originária de Londres, foi uma das principais bandas do movimento musical que ficou conhecido como NWOBHM (New Wave of British Heavy Metal). O nome \"Iron Maiden\", homônimo de um instrumento de tortura medieval que aparece no filme O Homem da Máscara de Ferro, foi baseado na obra de Alexandre Dumas.  Com quase quatro décadas de existência, quinze álbuns de estúdio, seis álbuns ao vivo, quatorze vídeos e diversos compactos, o Iron Maiden é uma das mais importantes e bem sucedidas bandas de toda a história do heavy metal, tendo vendido mais de 100 milhões de álbuns registrados em todo o mundo.2 Seu trabalho influenciou diversas bandas de rock e metal. São citados como influência por diversas bandas, antigas e modernas.  Em 2002, a banda recebeu o prêmio Ivor Novello em reconhecimento às realizações em um parâmetro internacional como uma das mais bem-sucedidas parcerias de composição da Inglaterra. Durante a turnê americana de 2005, foi adicionada à Calçada da Fama do Rock de Hollywood.3 Em 2011, ganharam seu primeiro Grammy por \"El Dorado\".4 A banda também está presente nas principais listas de maiores bandas de rock de todos os tempos, assim, sendo considerada pela MTV a maior banda de heavy metal de todos os tempos.5  O Maiden já encabeçou diversos grandes eventos, entre eles Rock in Rio, Monsters of Rock em Donington, Ozzfest, Wacken Open Air, Gods of Metal, Download Festival e os Festivais de Reading e Leeds.6',1,1,'Londres','SP','fbc9bafdc8b5b7a0418fb15d49162e75.jpg',1),(2,'AC DC','ac dc',3,1,'muzambinho','MG','02404bf64748e155ff4084e6cfc5a9e0.jpg',1),(4,'Perses','perses',2,3,'muzambinho','MG','2497c20f7ce258763382f52de023f359.bmp',0),(5,'Willy Pete','bandinha do leu',4,1,'Muzambinho','MG','f6c57000068cfadbd7f7da9e35f85bb9.jpg',0),(6,'The Rivers','asdasd',4,3,'Muzambinho','MG','95d52507bc0c1b457ca46591405c69f1.jpg',0),(7,'Exodus','exodus',2,1,'Muzambinho','MG','3ae40eedab44e04d63a61a535c8c9652.JPG',0);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;

--
-- Table structure for table `com`
--

DROP TABLE IF EXISTS `com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_tipo` int(255) NOT NULL,
  `id_subtipo` int(255) NOT NULL,
  `id_us` int(255) DEFAULT NULL,
  `id_ar` int(255) DEFAULT NULL,
  `id_post` int(255) DEFAULT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arquivo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com`
--

/*!40000 ALTER TABLE `com` DISABLE KEYS */;
INSERT INTO `com` VALUES (1,1,1,1,NULL,NULL,'blu',NULL,'2014-11-01 00:00:00'),(3,1,1,NULL,1,1,'ssdf',NULL,'2014-11-06 00:00:00'),(6,1,1,1,NULL,1,'rfghfgh',NULL,'2014-11-14 17:11:51'),(7,1,1,NULL,4,1,'aaaaaaa',NULL,'2014-11-15 14:11:40'),(8,1,1,NULL,4,NULL,'asdasd',NULL,'2014-11-01 00:00:00'),(9,1,1,NULL,4,8,'dsafsf',NULL,'2014-11-16 21:11:52'),(10,1,1,1,NULL,8,'dfgdfg',NULL,'2014-11-17 02:11:43'),(11,1,1,1,NULL,NULL,'as',NULL,'2014-11-17 22:11:14'),(12,1,1,1,NULL,NULL,'as',NULL,'2014-11-17 22:11:56'),(13,1,1,1,NULL,NULL,'erteqrtw',NULL,'2014-11-17 22:11:02'),(14,1,1,1,NULL,13,'dfgdfg',NULL,'2014-11-17 22:11:13'),(15,5,10,1,NULL,NULL,'asdasd',NULL,'2014-11-17 23:11:57'),(16,5,10,NULL,4,NULL,'yjuikyui',NULL,'2014-11-17 23:11:23'),(17,5,10,NULL,4,16,'sdfsdf',NULL,'2014-11-17 23:11:45'),(18,5,10,NULL,2,16,'dfsdf',NULL,'2014-11-17 23:11:50'),(19,4,8,1,NULL,NULL,'werwer',NULL,'2014-11-18 00:11:41'),(20,4,8,1,NULL,19,'werwer',NULL,'2014-11-18 00:11:45'),(21,4,8,NULL,4,19,'yaya',NULL,'2014-11-18 00:11:55'),(22,5,9,1,NULL,NULL,'uuull',NULL,'2014-11-18 00:11:08'),(23,5,9,1,NULL,22,'sadfdf',NULL,'2014-11-18 00:11:10'),(24,4,12,1,NULL,NULL,'asdasdasd',NULL,'2014-11-18 00:11:26'),(25,4,12,1,NULL,24,'aa',NULL,'2014-11-18 00:11:30'),(26,8,15,1,NULL,NULL,'dsfsdfsdf',NULL,'2014-11-18 00:11:02'),(27,8,15,1,NULL,26,'sdfsdf',NULL,'2014-11-18 00:11:06'),(28,9,2,1,NULL,NULL,'ertrte',NULL,'2014-11-18 00:11:28'),(29,9,2,1,NULL,28,'ertert',NULL,'2014-11-18 00:11:29'),(30,11,4,1,NULL,NULL,'fdvsdfd',NULL,'2014-11-18 00:11:06'),(31,11,4,1,NULL,30,'dfsdf',NULL,'2014-11-18 00:11:49'),(32,10,9,1,NULL,NULL,'foto de viadinhu',NULL,'2014-11-18 00:11:39'),(33,10,9,1,NULL,NULL,'gay',NULL,'2014-11-18 00:11:43'),(34,12,5,1,NULL,NULL,'sdfsdf',NULL,'2014-11-18 00:11:01'),(35,12,5,1,NULL,34,'sdfsdf',NULL,'2014-11-18 00:11:03'),(36,12,5,1,NULL,NULL,'haha',NULL,'2014-11-18 00:11:07'),(37,13,1,1,NULL,NULL,'bla',NULL,'2014-11-18 00:11:17'),(38,13,1,1,NULL,37,'aaa',NULL,'2014-11-18 00:11:20'),(39,12,2,1,NULL,NULL,'eu fui',NULL,'2014-11-19 20:11:45'),(40,2,2,1,NULL,NULL,'sdfasdf',NULL,'2014-11-20 18:11:10'),(41,2,2,1,NULL,40,'dfgdfg',NULL,'2014-11-20 18:11:30'),(42,3,5,1,NULL,NULL,'ulll',NULL,'2014-11-23 15:11:38'),(43,2,2,1,NULL,40,'o leo é gay',NULL,'2014-11-25 13:11:55'),(44,5,11,1,NULL,NULL,'nossa. q bosta',NULL,'2014-11-25 13:11:59'),(45,4,11,1,NULL,NULL,'sdfsdf',NULL,'2014-11-25 16:11:09'),(46,7,10,1,NULL,NULL,'dfgdfg',NULL,'2014-11-25 19:11:17'),(47,5,6,1,NULL,NULL,'56f45',NULL,'2016-05-17 18:05:57'),(48,5,6,NULL,4,47,'Perses ',NULL,'2016-11-01 23:11:59'),(49,5,6,NULL,4,47,'Perses ',NULL,'2016-11-01 23:11:59'),(50,5,6,NULL,4,47,'Perses ',NULL,'2016-11-01 23:11:59');
/*!40000 ALTER TABLE `com` ENABLE KEYS */;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contato` (
  `deid` int(255) NOT NULL,
  `cotid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (1,1),(4,1),(1,3),(1,0),(1,4),(1,5),(6,6),(6,1),(1,6),(3,3),(2,3),(2,5),(5,1),(5,2),(3,1),(1,1),(4,1),(1,3),(1,0),(1,4),(1,5),(6,6),(6,1),(1,6),(3,3),(2,3),(2,5),(5,1),(5,2),(3,1);
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;

--
-- Table structure for table `convite_membro`
--

DROP TABLE IF EXISTS `convite_membro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convite_membro` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_us` int(255) NOT NULL,
  `id_ar` int(255) NOT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convite_membro`
--

/*!40000 ALTER TABLE `convite_membro` DISABLE KEYS */;
INSERT INTO `convite_membro` VALUES (1,5,2,'sdfsdf'),(2,3,4,'gay');
/*!40000 ALTER TABLE `convite_membro` ENABLE KEYS */;

--
-- Table structure for table `disc`
--

DROP TABLE IF EXISTS `disc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disc` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_ar` int(255) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime DEFAULT NULL,
  `capa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duracao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disc`
--

/*!40000 ALTER TABLE `disc` DISABLE KEYS */;
INSERT INTO `disc` VALUES (15,4,'Highway To Hell','2014-10-20 21:10:01','2405ef617019e398cbd1e9b58ed0a281.jpg','sdfsdf','AC DC'),(16,4,'Dirty Deeds Done Dirt Cheap','1976-10-20 21:10:01','0a728c9491fd9ac38f56271f95a28ae5.jpg','dfg','ACDC'),(17,4,'dsdfsdf','1976-10-20 21:10:01','4558648f52b74fdad50c54002f9e30ce.jpg','edfdsf','sdfsdf'),(18,4,'Back In Black','1976-10-20 21:10:01','aa6e342770ea760683b2d062175b4782.jpg','10','dfdfgdfg'),(19,2,'sdfsdf','2014-11-10 00:00:00','b7e4f47f6a1d604d54d71ad688f4c8fa.jpg','sdfsdf','sfasdf'),(20,5,'Coexistencia Fundamentalista','2009-01-01 00:00:00','36be51b78bc9617dea83e25fdf1c8d20.jpg','sdfsdf','sdfsdf');
/*!40000 ALTER TABLE `disc` ENABLE KEYS */;

--
-- Table structure for table `disc_musicas`
--

DROP TABLE IF EXISTS `disc_musicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disc_musicas` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_album` int(255) NOT NULL,
  `numero` int(255) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `composicao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duracao` time DEFAULT NULL,
  `letras` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `musica` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disc_musicas`
--

/*!40000 ALTER TABLE `disc_musicas` DISABLE KEYS */;
INSERT INTO `disc_musicas` VALUES (2,15,1,'Highway To Hell','angus','06:06:06','highway to hell','2ebaccf3b4c7ab410847e755687671ac.mp3','highway to hell'),(3,18,6,'Back In Black','eu','04:15:00','sdfsdf','618930ae91fa7187cd4ee98a03ef77a0.mp3','sdfsdf'),(4,18,4,'Given The Dog A Bone','eu','01:15:20','dsfsdf','e08f9c91095c82aabadb5e94ef38b1db.mp3','sdfsdf'),(5,20,1,'Lista Capitalista','sdfsd','01:15:30','sdfsd','c9ff156ada2f99153ed6e3c409b7c697.mp3','sdfsdf');
/*!40000 ALTER TABLE `disc_musicas` ENABLE KEYS */;

--
-- Table structure for table `est_musical`
--

DROP TABLE IF EXISTS `est_musical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `est_musical` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `est_musical`
--

/*!40000 ALTER TABLE `est_musical` DISABLE KEYS */;
INSERT INTO `est_musical` VALUES (1,'Heavy Metal'),(2,'Thrash Metal'),(3,'Hard Rock'),(4,'Rock');
/*!40000 ALTER TABLE `est_musical` ENABLE KEYS */;

--
-- Table structure for table `gostar`
--

DROP TABLE IF EXISTS `gostar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gostar` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_post` int(255) DEFAULT NULL,
  `id_repost` int(255) DEFAULT NULL,
  `id_us` int(255) NOT NULL,
  `gostei` tinyint(1) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gostar`
--

/*!40000 ALTER TABLE `gostar` DISABLE KEYS */;
INSERT INTO `gostar` VALUES (1,18,NULL,1,1,'2014-10-02 21:10:26'),(2,NULL,1,1,1,'2014-09-24 07:25:21'),(3,NULL,2,1,1,'2014-09-26 01:09:41'),(4,17,NULL,1,1,'2014-09-25 19:09:29'),(5,18,NULL,6,0,'2014-09-26 01:09:32'),(6,NULL,5,1,1,'2014-09-25 19:09:37'),(7,NULL,4,1,1,'2014-09-25 19:09:39'),(8,16,NULL,1,1,'2014-09-28 20:09:59'),(9,NULL,3,1,1,'2014-09-25 20:09:43'),(10,NULL,7,1,0,'2014-09-25 23:09:28'),(11,NULL,5,6,0,'2014-09-26 01:09:30'),(12,NULL,7,6,0,'2014-09-26 01:09:11'),(13,NULL,8,1,0,'2014-09-26 01:09:58'),(14,NULL,11,6,0,'2014-09-26 02:09:42'),(15,NULL,13,1,1,'2014-09-26 02:09:37'),(16,NULL,14,1,0,'2014-09-26 02:09:59'),(17,NULL,10,1,0,'2014-10-03 15:10:19'),(18,19,NULL,1,1,'2014-09-30 16:09:07'),(19,NULL,16,1,1,'2014-09-26 02:09:56'),(20,NULL,6,1,0,'2014-09-28 20:09:58'),(21,14,NULL,1,1,'2014-09-28 20:09:04'),(22,NULL,15,1,0,'2014-09-28 22:09:14'),(23,31,NULL,1,1,'2014-09-30 16:09:26'),(24,32,NULL,1,1,'2014-09-30 15:09:20'),(25,NULL,18,1,1,'2014-09-30 16:09:02'),(26,49,NULL,1,0,'2014-10-01 23:10:22'),(27,50,NULL,1,1,'2014-10-02 22:10:37'),(28,NULL,4,6,1,'2014-10-03 14:10:37'),(29,NULL,26,1,1,'2014-10-03 15:10:18'),(30,NULL,46,1,1,'2014-10-03 16:10:52'),(31,51,NULL,1,1,'2014-10-03 17:10:47'),(32,52,NULL,1,1,'2014-10-03 18:10:35'),(33,13,NULL,1,1,'2014-10-03 18:10:48'),(35,NULL,47,2,1,'2014-10-03 19:10:21'),(36,NULL,47,6,1,'2014-10-03 19:10:54'),(37,53,NULL,2,1,'2014-10-04 17:10:26'),(38,NULL,47,1,1,'2014-10-05 21:10:12'),(39,NULL,17,1,1,'2014-10-06 18:10:41'),(40,19,NULL,6,0,'2014-10-06 20:10:26'),(41,NULL,49,1,0,'2014-10-17 19:10:51'),(42,NULL,48,2,1,'2014-10-09 14:10:39'),(43,53,NULL,1,1,'2014-10-19 20:10:12'),(44,8,NULL,5,1,'2014-10-19 22:10:39'),(45,8,NULL,1,1,'2014-10-19 22:10:42'),(46,10,NULL,1,0,'2014-10-21 18:10:26'),(47,12,NULL,1,1,'2014-10-21 18:10:30'),(48,57,NULL,1,0,'2014-10-21 19:10:07'),(49,NULL,60,1,0,'2014-10-21 19:10:24'),(50,NULL,70,1,1,'2014-10-25 15:10:48'),(51,NULL,78,1,1,'2014-10-30 01:10:48'),(52,NULL,74,1,1,'2014-11-10 21:11:59'),(53,NULL,80,1,1,'2014-11-10 21:11:13'),(54,62,NULL,1,0,'2014-11-12 13:11:40'),(55,NULL,27,1,0,'2014-11-12 13:11:43'),(56,NULL,24,1,1,'2014-11-12 13:11:06'),(57,NULL,63,1,1,'2014-11-12 13:11:44'),(58,NULL,64,1,1,'2014-11-12 13:11:45'),(59,1,NULL,1,1,'2014-11-14 21:11:32'),(60,63,NULL,1,1,'2016-05-17 18:05:02'),(61,64,NULL,1,0,'2016-05-17 18:05:02'),(62,55,NULL,1,1,'2016-05-16 06:05:39'),(63,NULL,82,1,0,'2017-03-06 17:03:07');
/*!40000 ALTER TABLE `gostar` ENABLE KEYS */;

--
-- Table structure for table `gostar_ar`
--

DROP TABLE IF EXISTS `gostar_ar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gostar_ar` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_post` int(255) DEFAULT NULL,
  `id_repost` int(255) DEFAULT NULL,
  `id_us` int(255) NOT NULL,
  `gostei` tinyint(1) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gostar_ar`
--

/*!40000 ALTER TABLE `gostar_ar` DISABLE KEYS */;
INSERT INTO `gostar_ar` VALUES (1,5,NULL,1,1,'2014-10-03 19:10:41'),(2,NULL,1,1,1,'2014-10-03 19:10:52'),(3,NULL,1,6,1,'2014-10-03 19:10:41'),(4,5,NULL,6,1,'2014-10-03 19:10:57'),(5,12,NULL,1,0,'2014-11-12 13:11:48'),(6,13,NULL,5,0,'2014-10-21 23:10:21'),(7,NULL,29,1,1,'2014-11-12 13:11:56'),(8,NULL,63,1,1,'2014-11-12 13:11:23'),(9,NULL,25,1,1,'2014-11-12 13:11:05'),(10,NULL,24,1,1,'2014-11-12 13:11:37'),(11,NULL,30,1,1,'2014-11-17 14:11:00'),(12,NULL,31,1,1,'2014-11-17 14:11:06'),(13,NULL,4,1,1,'2016-05-17 18:05:42'),(14,8,NULL,1,1,'2016-05-17 18:05:22'),(15,14,NULL,1,1,'2017-03-06 17:03:17');
/*!40000 ALTER TABLE `gostar_ar` ENABLE KEYS */;

--
-- Table structure for table `gt`
--

DROP TABLE IF EXISTS `gt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gt` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_post` int(255) NOT NULL,
  `id_us` int(255) DEFAULT NULL,
  `id_ar` int(255) DEFAULT NULL,
  `gostei` int(255) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gt`
--

/*!40000 ALTER TABLE `gt` DISABLE KEYS */;
INSERT INTO `gt` VALUES (1,4,1,NULL,1,'2014-11-01 00:00:00'),(2,1,NULL,1,0,'2014-11-02 00:00:00'),(3,2,1,NULL,1,'2014-11-14 22:11:38'),(5,5,1,NULL,1,'2014-11-14 22:11:50'),(6,6,1,NULL,1,'2014-11-14 22:11:54'),(7,6,NULL,1,0,'2014-11-14 22:11:24'),(8,5,NULL,1,1,'2014-11-14 22:11:28'),(9,6,NULL,4,1,'2014-11-16 21:11:26'),(10,8,NULL,4,1,'2014-11-16 21:11:47'),(14,8,1,NULL,1,'2014-11-16 22:11:37'),(16,10,1,NULL,1,'2014-11-17 02:11:46'),(17,1,1,NULL,1,'2014-11-17 21:11:41'),(18,20,1,NULL,1,'2014-11-18 00:11:01'),(19,21,1,NULL,0,'2014-11-18 00:11:03'),(20,23,1,NULL,1,'2014-11-18 00:11:12'),(21,28,3,NULL,1,'2014-11-19 18:11:29'),(22,39,1,NULL,1,'2014-11-19 20:11:48'),(23,39,NULL,4,1,'2014-11-19 20:11:51'),(24,39,NULL,2,1,'2014-11-19 20:11:53'),(25,40,1,NULL,1,'2014-11-23 01:11:31'),(26,41,1,NULL,1,'2014-11-23 01:11:57'),(27,42,1,NULL,1,'2014-11-23 15:11:45'),(28,44,3,NULL,0,'2014-11-25 13:11:17'),(29,46,1,NULL,1,'2014-11-25 19:11:21'),(30,47,1,NULL,1,'2016-05-16 15:05:15');
/*!40000 ALTER TABLE `gt` ENABLE KEYS */;

--
-- Table structure for table `instrumentos`
--

DROP TABLE IF EXISTS `instrumentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrumentos` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrumentos`
--

/*!40000 ALTER TABLE `instrumentos` DISABLE KEYS */;
INSERT INTO `instrumentos` VALUES (1,'Guitarra'),(2,'Baixo'),(3,'Bateria'),(4,'Vocal'),(5,'Violinista');
/*!40000 ALTER TABLE `instrumentos` ENABLE KEYS */;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_us` int(255) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (6,1,'www.ironmaiden.com/','Iron Maiden');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;

--
-- Table structure for table `membro_instrumento`
--

DROP TABLE IF EXISTS `membro_instrumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membro_instrumento` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_us` int(255) NOT NULL,
  `id_ar` int(255) NOT NULL,
  `id_ins` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membro_instrumento`
--

/*!40000 ALTER TABLE `membro_instrumento` DISABLE KEYS */;
INSERT INTO `membro_instrumento` VALUES (2,1,1,1),(3,5,1,2),(4,2,1,1),(5,1,4,1),(10,2,1,2),(11,2,4,3),(12,1,4,4),(13,4,4,1),(14,5,4,2),(16,6,4,5),(17,1,2,1);
/*!40000 ALTER TABLE `membro_instrumento` ENABLE KEYS */;

--
-- Table structure for table `membros`
--

DROP TABLE IF EXISTS `membros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membros` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_us` int(255) NOT NULL,
  `id_ar` int(255) NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adm` tinyint(1) NOT NULL,
  `rev` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membros`
--

/*!40000 ALTER TABLE `membros` DISABLE KEYS */;
INSERT INTO `membros` VALUES (2,1,4,NULL,1,0),(3,5,1,NULL,1,1),(6,1,2,'so foda',1,1),(7,1,1,NULL,0,0),(10,4,4,NULL,0,0),(12,5,4,NULL,0,0),(13,2,4,NULL,0,0),(14,3,5,'sdfsdf',1,1),(15,3,6,NULL,1,0),(16,1,7,NULL,1,0);
/*!40000 ALTER TABLE `membros` ENABLE KEYS */;

--
-- Table structure for table `msg`
--

DROP TABLE IF EXISTS `msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `deid` int(255) NOT NULL,
  `paraid` int(255) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime DEFAULT NULL,
  `nw` tinyint(1) NOT NULL,
  `nwus` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg`
--

/*!40000 ALTER TABLE `msg` DISABLE KEYS */;
INSERT INTO `msg` VALUES (8,1,3,'gay','gay','2014-09-15 00:00:00',0,1),(10,6,1,'gordo burro','gordo burro','2014-09-20 00:00:00',1,1),(13,1,6,'baitolaaa','boiolaaa','2014-09-23 00:00:00',1,1);
/*!40000 ALTER TABLE `msg` ENABLE KEYS */;

--
-- Table structure for table `musicas`
--

DROP TABLE IF EXISTS `musicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musicas` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_us` int(255) DEFAULT NULL,
  `id_ar` int(255) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicas`
--

/*!40000 ALTER TABLE `musicas` DISABLE KEYS */;
INSERT INTO `musicas` VALUES (8,1,NULL,'5f8a23c489b1e19a0d1e64a5839ed273.mp3','aaaa','aaa'),(9,1,NULL,'eb08338777daa6d60118593240620b59.mp3','bbb','bbb'),(10,1,NULL,'1b29eafa7f4aa43622db3b515fbc0d2f.mp3','sdfsdfsdf','fsdfsdf'),(11,NULL,4,'dc6bbd8ae2906093c531917b6c1acb1e.mp3','aaaaa','aaaaaa'),(12,NULL,2,'55d34f086d855ec998b5d71c128fe847.mp3','Dirty Deeds Done Dirt Cheap','ac dc'),(13,NULL,4,'b65dd0f57d36f0eada3df872c885b280.mp3','asdasd','asdasd'),(14,NULL,4,'f0d35d39da242bc781c37a77d2862afc.mp3','asdasd','asdasd');
/*!40000 ALTER TABLE `musicas` ENABLE KEYS */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `autor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conteudo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `rev` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'perses','silas viado','silas viadaoooo','2014-01-24',0),(2,'perses','Iron Maiden','Iron Maiden > Megadeth','2014-01-24',0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_ar` int(255) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `hora` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rev` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,4,'aaaa','asdasdasd','2014-05-06','01:05:05',0);
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `id` int(255) NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regiao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1,'1995-07-09','03535711201','03591608827','acentuaÃ§Ã£o','fghfg','Muzambinho','MG','Nenhuma','Merda'),(2,'2014-02-04','telefone teste','tel2','descricao1','descricap2','cid','ewst','reg','pais'),(3,'1985-05-24','fghf','fghf','hfghfgh','fghfghfg','hfghf','ghfgh','fghfh','gfhhfg'),(5,'0000-00-00','','','maiden','','','','',''),(6,'0000-00-00','','','','','Muzambinho','RO','Vicenzia','Luxemburgo');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `id_us` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arquivo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (13,'2','coisa',NULL,NULL,'0000-00-00 00:00:00'),(12,'2','aaaaaaaaaaaaaa',NULL,NULL,'0000-00-00 00:00:00'),(16,'0','Versão 1.2',NULL,NULL,'0000-00-00 00:00:00'),(18,'1','bbbbbbb',NULL,NULL,'0000-00-00 00:00:00'),(19,'6','sou Gayzinho',NULL,NULL,'2014-09-26 02:09:39'),(55,'5','hhffhgfujhyf','','','2014-10-20 21:10:01'),(53,'3','sou gay','','','2014-10-04 17:10:44'),(56,'1','dfgdfgdfg','','','2014-10-21 15:10:52'),(63,'1','bbbbbbb','','','2014-11-12 13:11:55'),(64,'2','Perses Ã© Gay\r\n','','','2016-05-17 18:05:28');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

--
-- Table structure for table `post_ar`
--

DROP TABLE IF EXISTS `post_ar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_ar` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `id_ar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arquivo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_ar`
--

/*!40000 ALTER TABLE `post_ar` DISABLE KEYS */;
INSERT INTO `post_ar` VALUES (4,'4','novo post',NULL,NULL,'0000-00-00 00:00:00'),(5,'4','sdfvsdfsvcs',NULL,NULL,'0000-00-00 00:00:00'),(9,'4','fgdfgdfgdfg','','','2014-10-21 16:10:35'),(8,'1','aaaaaaaaaaa','','','2014-10-15 01:10:07'),(10,'4','dfgdfgdfg\r\n','','','2014-10-21 16:10:40'),(11,'4','aaaaaaaaaa','','','2014-10-21 18:10:29'),(12,'4','ççlçl\r\n','','','2014-10-21 18:10:40'),(14,'2','dsfsdfsdffff','','','2014-10-25 15:10:23'),(15,'4','easdasd','','','2016-11-01 21:11:55');
/*!40000 ALTER TABLE `post_ar` ENABLE KEYS */;

--
-- Table structure for table `pt_musica`
--

DROP TABLE IF EXISTS `pt_musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pt_musica` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_mus` int(255) NOT NULL,
  `id_us` int(255) NOT NULL,
  `nota` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pt_musica`
--

/*!40000 ALTER TABLE `pt_musica` DISABLE KEYS */;
INSERT INTO `pt_musica` VALUES (1,2,1,1),(2,3,1,1),(3,2,3,0),(4,5,3,1);
/*!40000 ALTER TABLE `pt_musica` ENABLE KEYS */;

--
-- Table structure for table `repost`
--

DROP TABLE IF EXISTS `repost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repost` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_post` int(255) NOT NULL,
  `id_us` int(255) DEFAULT NULL,
  `id_ar` int(255) DEFAULT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repost`
--

/*!40000 ALTER TABLE `repost` DISABLE KEYS */;
INSERT INTO `repost` VALUES (1,11,1,NULL,'sdfsdffs','0000-00-00 00:00:00'),(4,18,6,NULL,'sou gay','0000-00-00 00:00:00'),(5,18,1,NULL,'sabia','0000-00-00 00:00:00'),(7,17,1,NULL,'sdfsdfsdfsdf\r\nsdfsdf','2014-09-25 23:09:53'),(8,18,6,NULL,'porq q oce ta me manipulando \r\neu nao sou gay \r\n','2014-09-26 01:09:00'),(10,18,6,NULL,'CENSURADO','2014-09-26 01:09:45'),(11,18,6,NULL,'imagina se esse site bomba \ncomo q eu vo poder ter intimidade nele \n','2014-09-26 02:09:34'),(14,18,6,NULL,'CENSURADO\r\n','2014-09-26 02:09:02'),(15,18,6,NULL,'CENSURADO','2014-09-26 02:09:09'),(17,18,1,NULL,'viadinhu','2014-09-26 17:09:26'),(25,16,1,NULL,'aaaaaaaaaaa','2014-09-29 10:09:02'),(27,13,1,NULL,'bsdjfbsdf','2014-09-30 18:09:49'),(28,13,1,NULL,'fdgklmdfgjkdfg','2014-09-30 18:09:11'),(29,13,1,NULL,'jnxcjkdfjndfs','2014-09-30 18:09:56'),(45,13,1,NULL,'vdfgdfg','2014-10-02 00:10:36'),(46,18,1,NULL,'bixa','2014-10-03 16:10:49'),(47,18,2,NULL,'lucas daniel viado','2014-10-03 19:10:17'),(48,53,2,NULL,'sabia','2014-10-04 17:10:24'),(51,55,5,NULL,'gjhghjg','2014-10-20 21:10:07'),(53,55,NULL,1,'sdfsdf','2014-10-20 22:10:56'),(54,55,NULL,1,'werwerwerwer','2014-10-20 22:10:02'),(55,55,5,NULL,'sdfsfddsf','2014-10-20 22:10:50'),(56,8,5,NULL,'asdasdas','2014-10-20 22:10:23'),(57,8,5,NULL,'sdfsdfsdf','2014-10-20 22:10:27'),(58,8,NULL,1,'sdfsdfsdf','2014-10-20 22:10:24'),(59,55,5,NULL,'sdasdasd','2014-10-21 02:10:31'),(62,55,1,NULL,'dfsdfsdf','2014-10-21 22:10:39'),(63,56,NULL,1,'aaaaaaaaaaa','2014-10-21 23:10:32'),(64,56,5,NULL,'dfsdfsdf','2014-10-21 23:10:54'),(66,56,NULL,4,'sddfsdfsdf','2014-10-24 19:10:46'),(69,56,1,NULL,'dsfsdf','2014-10-24 19:10:38'),(70,56,NULL,2,'asdasdasd','2014-10-24 19:10:57'),(71,56,1,NULL,'jkkjh','2014-10-25 18:10:43'),(72,56,NULL,4,'fgdfgdg','2014-10-25 18:10:48'),(73,56,NULL,2,'dfgdfgdfg','2014-10-25 20:10:40'),(74,56,1,NULL,'erfwsdfsdf','2014-10-26 16:10:37'),(75,56,NULL,4,'sdfsdfsdf','2014-10-26 16:10:42'),(76,56,NULL,4,'iau','2014-10-27 00:10:49'),(78,19,NULL,2,'kkkk','2014-10-28 01:10:39'),(79,56,1,NULL,'adsasdas','2014-10-30 01:10:56'),(80,56,NULL,4,'xcfgvxcvxc','2014-11-10 21:11:09'),(82,63,1,NULL,'aaaaa','2014-11-12 13:11:05'),(83,1,1,NULL,'dfsfsd','2014-11-14 16:11:59'),(84,56,1,NULL,'dfgdfg','2014-11-17 15:11:02'),(85,56,1,NULL,'dfgdfg','2014-11-17 15:11:05'),(86,64,1,NULL,'larga de viadagem seu merda','2016-05-17 18:05:53');
/*!40000 ALTER TABLE `repost` ENABLE KEYS */;

--
-- Table structure for table `repost_ar`
--

DROP TABLE IF EXISTS `repost_ar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repost_ar` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_post` int(255) NOT NULL,
  `id_us` int(255) DEFAULT NULL,
  `id_ar` int(255) DEFAULT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repost_ar`
--

/*!40000 ALTER TABLE `repost_ar` DISABLE KEYS */;
INSERT INTO `repost_ar` VALUES (1,5,NULL,1,'aaaaaaaaaaaaaaaaaaa','2014-10-03 19:10:32'),(2,5,1,NULL,'sdffsdfsdf','2014-10-03 19:10:40'),(3,8,5,NULL,'rwefwef','2014-10-20 22:10:17'),(4,8,NULL,1,'sdasdas','2014-10-20 22:10:08'),(5,8,NULL,1,'dfsdfsdf','2014-10-20 22:10:22'),(6,8,5,NULL,'dfsdfsdfsdf','2014-10-20 22:10:50'),(7,8,NULL,1,'sdfsdf','2014-10-20 22:10:05'),(8,8,5,NULL,'sdfsdfsdf','2014-10-21 02:10:39'),(9,8,NULL,1,'dfxsdfsdf','2014-10-21 02:10:17'),(10,8,NULL,1,'dsdfsdf','2014-10-21 02:10:26'),(12,8,NULL,1,'xvsdfgsdfs','2014-10-21 03:10:12'),(13,8,1,NULL,'asdasdasd','2014-10-21 03:10:22'),(14,5,NULL,1,'xdsdfsdf','2014-10-21 15:10:45'),(15,10,1,NULL,'sdsdfsdf','2014-10-21 16:10:42'),(16,10,NULL,4,'sdfsdfsdf','2014-10-21 16:10:48'),(17,8,NULL,1,'xcdvsdf','2014-10-21 19:10:55'),(21,8,NULL,1,'dfdsfsdf','2014-10-21 23:10:50'),(22,10,NULL,4,'sfsdfsdf','2014-10-25 18:10:03'),(23,9,NULL,4,'fnsdbsdjnsdf','2014-10-25 18:10:07'),(24,14,1,NULL,'zxczxczc','2014-10-25 19:10:46'),(25,14,NULL,4,'zxczxczxc','2014-10-25 19:10:11'),(26,12,NULL,4,'aaaaa','2014-10-25 19:10:33'),(27,14,1,NULL,'aaaaaa','2014-10-25 19:10:44'),(29,14,NULL,4,'aaaaaaaa','2014-10-26 16:10:56'),(30,11,1,NULL,'sdfsdfsd','2014-11-17 14:11:39'),(31,11,1,NULL,'asasas','2014-11-17 14:11:57'),(32,12,1,NULL,'fdgfdg','2014-11-17 15:11:48'),(33,12,1,NULL,'dfgdfgd','2014-11-17 15:11:52');
/*!40000 ALTER TABLE `repost_ar` ENABLE KEYS */;

--
-- Table structure for table `rmsg`
--

DROP TABLE IF EXISTS `rmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rmsg` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `deid` int(255) NOT NULL,
  `idpert` int(255) NOT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rmsg`
--

/*!40000 ALTER TABLE `rmsg` DISABLE KEYS */;
INSERT INTO `rmsg` VALUES (1,1,4,'dsfsdfasdfasdfsdadfasdfsadfsadfsadfdsadf','2014-09-11 00:00:00'),(2,1,4,'esddsdfsd','2014-09-11 00:00:00'),(3,1,4,'dfsdfsdfsdf','2014-09-11 00:00:00'),(4,1,4,'sdfsdfsdf','2014-09-11 00:00:00'),(5,1,7,'sdasdad','2014-09-11 00:00:00'),(6,2,7,'dfsfsddcv','2014-09-11 00:00:00'),(7,1,7,'sdfsdf','2014-09-11 00:00:00'),(8,1,6,'sdadad','2014-09-11 00:00:00'),(9,1,9,'viadinho','2014-09-20 00:00:00'),(10,1,10,'gordo viado','2014-09-20 00:00:00'),(11,1,11,'gordo viado','2014-09-20 00:00:00'),(12,6,9,'agora q eu to entendendo esssa bosta','2014-09-20 00:00:00'),(13,6,9,'https://www.youtube.com/watch?vfDa9DVuwRDc','2014-09-20 00:00:00'),(14,6,9,'mais ainda num abre link nessa bagaça','2014-09-20 00:00:00'),(15,1,9,'é por causa do sistema de seguranca anti sql injection , o sinal de igual poderia atrapalhar o sql','2014-09-20 00:00:00'),(16,1,8,'sdfsdfsdfsdf','2014-09-23 00:00:00'),(17,1,13,'wserfsdfsdf','2014-09-23 00:00:00'),(18,6,13,'ddfgdfgdfg','2014-09-23 00:00:00'),(19,6,12,'cxccvxcvcxv','2014-09-23 00:00:00'),(20,1,10,'rertert','2014-09-23 00:00:00'),(21,6,12,'sdfsdfsf','2014-09-23 00:00:00'),(22,1,10,'sdfsdfsdf','2014-09-24 00:09:16'),(23,1,12,'gay','2014-09-24 00:09:01'),(24,1,13,'zczxczxc','2014-09-24 01:09:14'),(25,1,13,'sadasdasd','2014-09-25 22:09:38'),(26,1,13,'dssdfsdfs','2014-09-25 22:09:42'),(27,1,13,'https://www.youtube.com/watch?v=uF8u65YPMz8','2014-09-25 22:09:47'),(28,1,13,'\"; delete from rmsg where id = \'20\';','2014-09-25 22:09:12'),(29,6,13,'viado d\r\n\r\n','2014-09-26 02:09:50'),(30,1,13,'sadasdasd','2014-09-26 02:09:03'),(31,6,13,'perses, codinome gay \r\n','2014-09-26 02:09:23'),(32,6,13,'perses, codinome gay \r\n','2014-09-26 02:09:52'),(33,6,13,'perses bv ','2014-09-26 02:09:01'),(34,1,13,'lucas, codinome bombom','2014-09-26 02:09:35'),(35,1,13,'viadao','2014-09-29 10:09:08'),(36,1,13,'bixona','2014-09-29 10:09:12'),(37,1,10,'bixa','2014-10-01 23:10:24'),(38,6,10,'gordo b','2014-10-06 20:10:57'),(39,1,10,'viadao','2014-10-06 20:10:15');
/*!40000 ALTER TABLE `rmsg` ENABLE KEYS */;

--
-- Table structure for table `seguir`
--

DROP TABLE IF EXISTS `seguir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguir` (
  `deid` int(255) NOT NULL,
  `artid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguir`
--

/*!40000 ALTER TABLE `seguir` DISABLE KEYS */;
INSERT INTO `seguir` VALUES (1,4),(1,2),(2,1),(3,1),(1,1),(3,2),(3,5),(1,7),(1,4),(1,2),(2,1),(3,1),(1,1),(3,2),(3,5),(1,7),(1,5);
/*!40000 ALTER TABLE `seguir` ENABLE KEYS */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sobrenome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idart` int(255) DEFAULT NULL,
  `epp` int(10) NOT NULL,
  `rev` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (0,'showme','Show','Me','admin','admin@admin','new/new.png',NULL,30,1),(1,'perses','Perses','Viadao','teste','persesvilhena@gmail.com','6f349571b4ee8bef70c5dec40b560362.jpg',2,10,1),(2,'teste','Eddie','The Head','teste','ironmaiden@ironmaiden.com','b073301a16975c6b8f4b5f7444744eed.jpg',NULL,30,0),(3,'leo','leonardo','guida','sougay','leuu_bjinhss@aiai.com','ca61c5c8596bcaafb3dee66425b238fb.jpg',NULL,30,1),(4,'testee','teste','teseteee','testee','teste','07cb522bafa3965d412d3f526d04ff83.jpg',NULL,30,0),(5,'steveharris','Steve','Harris','maiden','maiden','b7e1b8b75631a904fea65cfb85e47142.jpg',1,30,0),(6,'lucasdanielsalomao@gmail.com','Lucas Daniel','Dias Salomão','211194','lucasdanielsalomao@gmail.com','c91521fba6966bed84868be84ad98542.jpg',NULL,30,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_us` int(255) DEFAULT NULL,
  `id_ar` int(255) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (6,1,NULL,'d6b35a4115b083dbb02fc2073150c994.mp4','dfsdfsdf','sdfsdf'),(8,NULL,2,'9bc736c0c6b59d29dd92f7f46a269bca.mp4','werewer','werwer'),(9,NULL,2,'0b3c40baff59e41a62783bcac7fd00cc.mp4','highway to hell','ac dc'),(10,NULL,4,'7d45e1d71ca65044cfda2416cb6fe4ee.mp4','hth','sdfsdf'),(11,NULL,5,'119f1d57697e23ea06fee4733ffce8d4.mp4','fosforo branco','dfsdfsadfad');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;

--
-- Dumping routines for database 'u289875908_show'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-08 19:30:52
