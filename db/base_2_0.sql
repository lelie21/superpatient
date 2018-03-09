-- MySQL dump 10.13  Distrib 5.6.25, for osx10.10 (x86_64)
--
-- Host: localhost    Database: basicpatient
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `consultations`
--

DROP TABLE IF EXISTS `consultations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultations` (
  `id_consult` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(9) DEFAULT NULL,
  `date_consult` date DEFAULT NULL,
  `MC` text,
  `EG` text,
  `APT_thorax` text,
  `APT_abdomen` text,
  `APT_tete` text,
  `APT_MS` text,
  `APT_MI` text,
  `APT_system` text,
  `A_osteo` text,
  `exam_phys` text,
  `traitement` text,
  `divers` text,
  `exam_pclin` text,
  `paye` text,
  `therapeute` varchar(20) DEFAULT NULL,
  `prix_cts` int(11) DEFAULT NULL,
  `majoration_cts` int(11) DEFAULT NULL,
  `paye_par` varchar(20) DEFAULT NULL,
  `paye_le` date DEFAULT NULL,
  `MC_accident` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_consult`),
  KEY `id_consult_id` (`id`,`id_consult`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medical`
--

DROP TABLE IF EXISTS `medical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Salutations` varchar(15) NOT NULL DEFAULT '',
  `Titre` varchar(50) DEFAULT NULL,
  `Prénom` varchar(50) NOT NULL DEFAULT '',
  `Nom` varchar(50) NOT NULL DEFAULT '',
  `NomSociété` varchar(50) DEFAULT NULL,
  `Adresse` varchar(200) NOT NULL DEFAULT '',
  `CodePostal` varchar(20) DEFAULT NULL,
  `Ville` varchar(50) NOT NULL DEFAULT '',
  `NuméroTéléphone` varchar(30) DEFAULT NULL,
  `NuméroPortable` varchar(30) DEFAULT NULL,
  `NuméroFax` varchar(30) DEFAULT NULL,
  `AdresseEmail` varchar(50) DEFAULT NULL,
  `Notes` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `id` mediumint(9) NOT NULL DEFAULT '0',
  `date_ouverture` date DEFAULT NULL,
  `therapeute` varchar(20) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `date_naiss` date DEFAULT NULL,
  `ATCD_perso` text,
  `ATCD_fam` text,
  `medecin` text,
  `autre_medecin` text,
  `phone` varchar(30) DEFAULT NULL,
  `portable` varchar(30) DEFAULT NULL,
  `profes_phone` varchar(30) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `adresse` text,
  `ass_compl` varchar(30) DEFAULT NULL,
  `profes` varchar(30) DEFAULT NULL,
  `etat` varchar(30) DEFAULT NULL,
  `envoye` varchar(30) DEFAULT NULL,
  `divers` text,
  `important` text,
  PRIMARY KEY (`id`),
  KEY `nom_prenom` (`nom`(15),`prenom`(15))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tarifs`
--

DROP TABLE IF EXISTS `tarifs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifs` (
  `description` text,
  `prix_cts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `therapeutes`
--

DROP TABLE IF EXISTS `therapeutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `therapeutes` (
  `therapeute` varchar(20) DEFAULT NULL,
  `entete` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `therapeutes`
--


