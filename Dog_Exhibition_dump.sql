-- MySQL dump 10.13  Distrib 5.5.12, for Win64 (x86)
--
-- Host: localhost    Database: Dog_Exhibition
-- ------------------------------------------------------
-- Server version	5.5.12

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
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `club` (
  `id_club` int(5) NOT NULL AUTO_INCREMENT,
  `name_club` varchar(30) NOT NULL,
  `phone_club` varchar(20) NOT NULL,
  `email_club` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_club`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (1,'BEAR LAYK','8-811-297-87-15','pgv50@mail.ru'),(2,'GLORIYA','8-905-260-03-60','d@club-gloria.com'),(3,'DEVIL','8-812-444-34-81','muhina@zin.ru'),(4,'KENTAVR','8-812-730-07-02','ssii27@mail.ru'),(5,'KREDO','8-911-911-03-84','byrri@yandex.ru'),(6,'LESSI','8-901-372-23-60',NULL);
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dog`
--

DROP TABLE IF EXISTS `dog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dog` (
  `id_dog` int(5) NOT NULL AUTO_INCREMENT,
  `name_dog` varchar(20) NOT NULL,
  `breed` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `class_dog` varchar(20) NOT NULL,
  `name_mother_dog` varchar(20) DEFAULT NULL,
  `name_father_dog` varchar(20) DEFAULT NULL,
  `num_birth_doc` varchar(30) NOT NULL,
  `date_last_vac` date NOT NULL,
  `id_own` int(5) NOT NULL,
  `id_club` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_dog`),
  UNIQUE KEY `num_birth_doc` (`num_birth_doc`),
  KEY `id_own` (`id_own`),
  KEY `id_club` (`id_club`),
  CONSTRAINT `dog_ibfk_1` FOREIGN KEY (`id_own`) REFERENCES `owner` (`id_own`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dog_ibfk_2` FOREIGN KEY (`id_club`) REFERENCES `club` (`id_club`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dog`
--

LOCK TABLES `dog` WRITE;
/*!40000 ALTER TABLE `dog` DISABLE KEYS */;
INSERT INTO `dog` VALUES (1,'Jack','Siberian husky',4,'Breed','Irma','Barbos','AFLP-2444-8653-7865-4678','2018-10-29',26,2),(2,'Bella','Zwergpinscher',5,'Pet','Ava','Robert','YDFH-2345-6482-9165-6378','2018-01-23',32,NULL),(3,'Jan Clon K','Zwergpinscher',7,'Breed','Willow','Mark','BSDT-3466-4568-9124-4523','2018-12-14',27,1),(4,'Chloe','Zwergpinscher',2,'Show','Mia','George','AVDE-5667-9966-9203-1133','2018-05-24',2,2),(5,'Rocky','Zwergpinscher',1,'Pet','Cleo','Brian','AFEQ-9811-8305-8288-9358','2018-03-06',40,3),(6,'Bentley','Zwergpinscher',7,'Breed','Mia','Scott','BFSA-9374-0103-2890-2754','2018-07-31',1,1),(7,'Beautiful Girl','Zwergpinscher',9,'Pet','Daisy','Raymond','GTJD-2820-4707-4689-8994','2018-03-04',41,NULL),(8,'Toby','Zwergpinscher',4,'Breed','Daisy','Henry','KYTF-4388-5739-1058-5360','2018-09-25',42,3),(9,'Charlie','Zwergpinscher',2,'Show','Willow','Jeffrey','BCXD-8225-4859-2659-4003','2018-06-26',43,NULL),(10,'Snow Day','Zwergpinscher',4,'Show','Daisy','Dennis','JYTG-4179-3830-6142-9204','2018-03-03',11,3),(11,'Big Boss','Zwergpinscher',6,'Show','Belle','Carl','IUHG-8071-1944-8664-0847','2018-10-21',14,3),(12,'Cat','Zwergpinscher',1,'Breed','Belle','Benjamin','BVCF-5549-4056-9496-2497','2018-08-12',18,NULL),(13,'Kyzya','Zwergpinscher',4,'Pet','Willow','Willie','GFER-1274-2671-3342-2935','2018-03-03',28,1),(14,'Space','Zwergpinscher',6,'Show','Daisy','Aaron','HGTD-5970-2683-7211-7634','2018-02-02',54,NULL),(15,'Small','Zwergpinscher',1,'Pet','Ava','Philip','RYFD-7927-1262-7995-9410','2018-07-05',4,2),(16,'Ponchick','Zwergpinscher',6,'Show','Belle','Charles','GRTW-3976-4993-5654-4821','2018-06-23',3,1),(17,'Valera','Zwergpinscher',14,'Breed','Belle','Louis','FGTY-6566-4760-5819-5041','2018-03-05',12,NULL),(18,'Igor','Zwergpinscher',13,'Show','Mia','Mark','FGDS-3190-7490-3656-7041','2018-01-23',15,NULL),(19,'Valera','Zwergpinscher',2,'Pet','Hazel','Todd','AWER-6024-5577-2862-8416','2018-06-26',15,NULL),(20,'Gaduk','Zwergpinscher',14,'Breed','Hazel','Jimmy','GFRT-6818-4108-9996-4293','2018-08-27',31,1),(21,'Bentley','Zwergpinscher',12,'Show','Roxy','Justin','SDGR-8868-2401-5266-1448','2018-05-02',5,NULL),(22,'Last Samurai','Zwergpinscher',5,'Show','Willow','Aaron','SDGE-9515-7324-8211-9738','2018-03-03',21,NULL),(23,'Sadie','Zwergpinscher',2,'Pet','Ava',NULL,'SGCX-8241-9906-5374-5338','2018-06-01',22,1),(24,'Sosiska','Zwergpinscher',7,'Show','Daisy','Larry','BGFD-9583-3111-8583-1364','2018-07-03',21,1),(25,'Viper','Zwergpinscher',9,'Breed','Willow','Benjamin','GTJY-3742-1433-7814-6785','2018-01-09',29,3),(26,'Love Poison','Zwergpinscher',14,'Show','Ava','Douglas','HTRE-8203-4055-7601-2214','2018-11-23',34,NULL),(27,'Butterfly','Pharaon hound',12,'Pet','Daisy','Jeffrey','GRTE-3496-2495-3331-4801','2018-04-23',28,2),(28,'Toby','Pharaon hound',3,'Breed',NULL,'Justin','DBVC-8388-1782-1009-3762','2018-03-05',25,4),(29,'Innokenty','Pharaon hound',1,'Pet','Hazel','Scott','SERT-4764-0919-5960-6937','2018-05-03',30,3),(30,'Bentley','Pharaon hound',3,'Show','Adriana','Jimmy','AWET-6854-2245-3965-4978','2019-06-01',44,NULL),(31,'Charlie','Pharaon hound',9,'Show','Barbara','Juan','QWER-6631-9865-8595-8541','2019-01-04',34,NULL),(32,'Lola','Pharaon hound',11,'Pet','Daisy','Philip','ZCGF-7264-6345-2201-4057','2019-01-06',51,1),(33,'Rocky','Pharaon hound',5,'Breed','Mia','George','ETYU-4647-9198-6277-0237','2019-01-02',36,1),(34,'Snowflake','Pharaon hound',7,'Show',NULL,'Joshua','QTGF-6537-5583-3730-9814','2019-01-05',2,5),(35,'Chloe','Pharaon hound',12,'Pet','Hazel','Larry','GFJY-4847-1171-8515-9749','2019-01-02',33,3),(36,'Bella','Pharaon hound',14,'Breed','Cleo','Brian','VBNH-3940-8253-1939-5043','2019-01-21',6,1),(37,'Inkling','Pharaon hound',3,'Breed','Ester','Benjamin','SFRY-2463-7094-8014-1569','2019-01-04',45,2),(38,'Kerby','Pharaon hound',1,'Show','Daisy','Carl','GJKU-1040-0579-3360-3932','2019-01-15',10,4),(39,'Jet','Pharaon hound',3,'Breed','Willow','Douglas','BHYF-7597-5170-6702-0706','2019-01-03',46,2),(40,'Tasha','Pharaon hound',4,'Pet','Ava','Henry','ZXGD-3622-3881-3291-5543','2019-01-06',7,4),(41,'Layaway','Pharaon hound',5,'Show','Grace',NULL,'ETFG-6919-1348-6706-7156','2019-01-07',11,4),(42,'Kipper','Pharaon hound',1,'Show','Kelly','Robert','CGDE-5427-0586-4022-9532','2019-01-03',41,NULL),(43,'Link','Pharaon hound',11,'Show','Cleo','Thomas','SGRW-3923-3597-2514-6978','2019-01-01',43,1),(44,'Lion','Pharaon hound',10,'Show','Willow','Joshua','SWTU-2088-5859-8174-2188','2019-01-03',47,NULL),(45,'Rocky','Pharaon hound',1,'Show','Jean','Raymond','YTRG-1598-7415-8850-4987','2019-01-05',38,5),(46,'Toby','Pharaon hound',4,'Breed','Ava','Juan','KMBT-5371-9396-4102-9199','2019-01-06',27,NULL),(47,'Leonid','Pharaon hound',15,'Pet','Valerie','Aaron','FJRM-3738-9500-9598-8612','2019-01-21',12,3),(48,'Penyok','Pharaon hound',3,'Breed','Tara','Jeffrey','LUIR-1954-1078-9879-1384','2019-01-02',17,3),(49,'Isis','Pharaon hound',2,'Show',NULL,NULL,'PWCH-7064-0567-1172-3643','2019-03-01',31,4),(50,'Lola','Pharaon hound',5,'Pet','Willow','Todd','KXJE-4462-6542-4281-3044','2019-01-02',17,1),(51,'Jujutsu','Pharaon hound',6,'Show','Jasmine','Dennis','NCSC-6186-4287-6978-4505','2019-08-04',17,NULL),(52,'Chloe','Pharaon hound',1,'Pet','Whitney','Jimmy','SBSD-7760-9411-6540-7114','2019-10-12',8,5),(53,'Lippi','Pharaon hound',5,'Show','Jean','Benjamin','DFHR-7660-6686-8932-2927','2019-11-03',47,5),(54,'Toby','Afghan hound',1,'Breed','Daisy','Mark','SDGE-1453-6940-9639-1669','2019-12-15',9,NULL),(55,'Bentley','Alaskan malamute',6,'Pet','Ester','Justin','MHGD-3450-5730-6884-8652','2019-04-23',11,2),(56,'Limited','Alaskan malamute',9,'Show','Ava','Willie','SHRS-7303-6166-2947-4872','2019-02-05',23,NULL),(57,'Charlie','Bassador',11,'Show','Valerie','Ryan','NTGD-7885-0166-4557-4414','2019-06-07',44,1),(58,'Chloe','Bassador',14,'Breed','Willow','Brian','GFDR-3240-8791-4476-4215','2019-08-03',38,6),(59,'Toby','Bassador',12,'Show',NULL,NULL,'SDGR-9806-2048-6526-2286','2019-04-12',48,NULL),(60,'Kosmic','Boxer',4,'Pet','Cleo','Charles','HJYF-2337-9932-8841-9610','2019-02-04',41,NULL),(61,'Bella','Boxer',13,'Breed','Daisy','Arthur','KUHT-4515-5502-1584-2459','2019-06-12',10,1),(62,'Yang','Boxer',12,'Show','Hazel','Thomas','HYRG-9982-3627-9332-4861','2019-08-11',27,NULL),(63,'Toby','Boxer',10,'Breed','Ava','Philip','HYKH-3332-9927-7234-3326','2019-03-04',25,6),(64,'Jo','Beagle',9,'Show','Willow','George','DJTG-6141-7085-9779-1105','2019-01-02',34,5),(65,'Charlie','Beagle',3,'Breed','Cleo','Scott','DFHR-2963-0773-1327-4368','2019-04-04',49,NULL),(66,'Rocky','Great dane',1,'Breed','Daisy','Benjamin','ASEW-7864-7199-1136-1854','2019-07-21',49,2),(67,'Lola','Great dane',2,'Pet','Grace','Douglas','SDFG-5673-8506-1881-9240','2019-09-05',13,NULL),(68,'Saga Begins','Great dane',10,'Show','Ava','Brian','YTGT-6951-6831-2755-8126','2019-06-07',13,5),(69,'Bentley','Great dane',12,'Show','Connie','Ryan','RGEF-2109-7893-3961-3822','2019-02-04',23,NULL),(70,'Jabberwocky','Schnauzer',5,'Breed','Mia','Joshua','HDFG-2195-3011-2878-0399','2019-01-02',13,6),(71,'Bella','Schnauzer',3,'Show','Catherine','Larry','XCVB-8579-0467-1423-4589','2019-01-01',16,6),(72,'Toby','Schnauzer',7,'Breed','Cleo','Scott','SDGE-4104-8809-1046-8191','2019-05-03',50,5),(73,'Arabian Jasmine','Schnauzer',1,'Show','Sally','Joe','KJJH-3646-2291-6625-8331','2019-07-05',50,1),(74,'Snop','Chow-chow',2,'Show','Kelly','Keith','DFHT-5256-5641-7617-6942','2019-01-03',24,NULL),(75,'Sadie','Chow-chow',5,'Pet','Mia','Willie','DFHY-6943-9858-9966-5703','2019-01-12',39,1),(76,'Rocky','Chow-chow',9,'Breed','Willow','Louis','DFH5-8071-6670-9251-1264','2019-01-14',51,NULL),(77,'Chloe','Chow-chow',7,'Show','Ava','Jimmy','HTDR-3114-1190-1615-8981','2017-01-15',51,NULL),(78,'Lager','Chow-chow',11,'Pet',NULL,NULL,'HFDV-5309-4959-1136-2203','2017-01-16',49,5),(79,'Charlie','Russian wolfhound',15,'Show','Ella','Benjamin','IHGV-5827-5436-7037-3756','2017-01-04',38,NULL),(80,'Lanai','Russian wolfhound',1,'Pet','Cleo','Jeffrey','FDHT-8879-6018-9686-9102','2017-01-03',21,NULL),(81,'Toby','Russian wolfhound',2,'Breed','Sally','Brian','NBVC-3391-4120-8284-6401','2017-01-07',48,1),(82,'Kay','Russian wolfhound',7,'Breed','Alyssa','Aaron','DFHT-4883-8316-4679-8264','2017-01-04',52,5),(83,'Jeffrey','Russian wolfhound',4,'Show','Connie','Thomas','ADFE-7375-8309-2098-8571','2017-01-01',26,NULL),(84,'Lola','German shepherd',5,'Pet','Hazel','Brian','XVVC-9047-3803-1721-4976','2017-01-03',32,6),(85,'Kirya','German shepherd',12,'Breed','Ava','Robert','GERT-3116-2025-9205-1029','2017-01-14',33,5),(86,'Winter Storm','German shepherd',5,'Show','Margie','Billy','DSGR-7373-3659-4143-7292','2017-01-24',47,NULL),(87,'Leeza','German shepherd',7,'Show','Nancy','Todd','BVFR-2211-6578-2385-9506','2017-01-12',43,NULL),(88,'Josie','Rottweiler',4,'Pet',NULL,NULL,'HYKT-5512-3882-2560-4201','2017-01-21',53,6),(89,'Liable','Rottweiler',10,'Show','Mia','Justin','DFGT-3785-9119-4674-9873','2017-01-24',23,5),(90,'Lenin','Rottweiler',3,'Breed','Ava','Philip','BVCD-2982-0088-8697-1809','2017-01-25',50,6),(91,'Rocky','Rottweiler',5,'Show','Cleo','Charles','DFHR-4199-1752-9280-7690','2017-01-26',22,6),(92,'Bentley','Cairn terrier',2,'Breed','Nancy','Douglas','RYUI-8583-1479-3629-2450','2017-01-12',9,6),(93,'Liam','Cairn terrier',6,'Breed','Daisy','Benjamin','UHGT-7198-3584-8481-7233','2017-01-14',7,1),(94,'Bella','Cairn terrier',8,'Show',NULL,NULL,'OLMB-1394-2433-5103-8705','2017-01-05',13,NULL),(95,'Sadie','Cairn terrier',1,'Pet','Daisy','Mark','DFHT-5805-3036-3254-8924','2017-01-23',6,NULL),(96,'Cheesecake','Cairn terrier',14,'Show','Daisy','Scott','ZAED-3746-8235-3970-1514','2017-01-05',15,NULL),(97,'Chloe','English setter',8,'Breed','Ava','Arthur','SDGE-8463-7674-5769-0903','2017-01-02',16,2),(98,'Toby','English setter',12,'Show','Melissa','Dennis','ZASD-5516-0791-6471-7629','2017-01-12',19,NULL),(99,'Charlie','English setter',10,'Breed','Pat','Keith','EWTE-2839-8117-7315-0668','2017-01-04',14,NULL),(100,'Arabian Jasmine','English setter',5,'Show','Adriana','Raymond','SETE-4850-6914-8014-6138','2017-01-27',3,NULL),(101,'Sun Dance','English setter',13,'Show','Melissa','Joe','SDGG-4110-5991-1606-4798','2017-01-29',37,6),(102,'Barbos','Canes',10,'Breed','Cleo','Brian','ASFE-8673-6585-6025-5320','2017-01-31',41,6),(103,'Rocky','Canes',3,'Show','Willow','Larry','GFRH-3539-7806-7559-1295','2017-01-20',16,NULL),(104,'Toby','Canes',4,'Pet','Ava','Robert','CBRF-6904-9275-3191-7626','2017-01-04',20,5),(105,'Puzir','Canes',3,'Breed','Ella','Juan','SDGE-1315-1909-6325-9358','2017-01-12',36,NULL),(106,'Bentley','Canes',1,'Show','Willow','George','SDGR-2621-0253-4587-6892','2016-01-04',35,1),(107,'Lightning','Border terrier',2,'Breed','Diane','Benjamin','VCFB-7730-8661-4268-1679','2016-01-03',51,NULL),(108,'Charlie','Border terrier',6,'Pet','Hazel','Thomas','NGVV-4352-0643-9869-0335','2016-01-06',54,NULL),(109,'Rockstar','Border terrier',11,'Pet','Connie','Benjamin','JFJF-4417-8731-5964-4355','2016-01-04',45,5),(110,'Rainy Day','Border terrier',10,'Show','Mia','Louis','LGKN-4094-9325-5074-9614','2016-01-07',26,NULL),(111,'Lint','Border terrier',4,'Breed','Daisy','Mark','DKRK-4170-3198-7141-7282','2016-01-01',17,5),(112,'Bella','Welsh terrier',6,'Pet','Catherine','Keith','MFJF-4257-3603-2145-5131','2016-01-03',52,NULL),(113,'Esminets','Welsh terrier',2,'Show','Kelly','Joe','PFOM-3823-6332-1141-7513','2016-01-05',39,NULL),(114,'Apollo','Welsh terrier',3,'Bread','Whitney','George','NFHC-9934-5070-4899-1285','2016-01-06',5,NULL),(115,'Toby','Welsh terrier',3,'Show','Alisa','Dennis','MBNC-2455-0139-4550-4267','2016-01-07',18,3),(116,'Rocky','Welsh terrier',3,'Pet','Margie','Brian','DFJE-4405-7801-2253-9274','2016-01-08',53,3),(117,'Voyager','Welsh terrier',3,'Breed','Barbara','Charles','JFJE-5041-5434-3826-2830','2016-01-06',37,NULL);
/*!40000 ALTER TABLE `dog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dog_reg`
--

DROP TABLE IF EXISTS `dog_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dog_reg` (
  `id_dog_reg` int(5) NOT NULL AUTO_INCREMENT,
  `num_part` int(3) NOT NULL,
  `status_part` varchar(20) NOT NULL,
  `date_reg_dog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_pay` varchar(20) NOT NULL,
  `status_med` varchar(20) NOT NULL,
  `date_med` date NOT NULL,
  `id_dog` int(5) NOT NULL,
  `id_exh` int(5) NOT NULL,
  PRIMARY KEY (`id_dog_reg`),
  UNIQUE KEY `id_dog` (`id_dog`,`id_exh`),
  UNIQUE KEY `num_part` (`num_part`,`id_exh`),
  KEY `id_exh` (`id_exh`),
  CONSTRAINT `dog_reg_ibfk_1` FOREIGN KEY (`id_dog`) REFERENCES `dog` (`id_dog`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dog_reg_ibfk_2` FOREIGN KEY (`id_exh`) REFERENCES `exhibition` (`id_exh`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dog_reg`
--

LOCK TABLES `dog_reg` WRITE;
/*!40000 ALTER TABLE `dog_reg` DISABLE KEYS */;
INSERT INTO `dog_reg` VALUES (1,1,'Take part','2017-08-01 09:45:39','Paid','Passed','2016-12-23',38,1),(2,2,'Take part','2017-08-07 10:38:24','Paid','Passed','2017-06-03',97,1),(3,3,'Take part','2017-07-30 06:33:31','Paid','Passed','2017-05-21',75,1),(4,4,'Not allowed','2017-07-28 10:05:53','Not paid','Not passed','2017-04-03',4,1),(5,5,'Suspended','2017-08-03 14:48:21','Paid','Passed','2017-06-21',57,1),(6,6,'Take part','2017-08-03 16:21:43','Paid','Passed','2017-01-14',66,1),(7,7,'Take part','2017-07-12 09:34:32','Paid','Passed','2017-04-12',58,1),(8,8,'Absence','2017-07-15 13:48:23','Paid','Passed','2017-05-21',108,1),(9,9,'Absence','2017-07-28 10:13:42','Paid','Passed','2016-10-18',2,1),(10,10,'Take part','2017-08-06 18:45:35','Paid','Passed','2017-04-24',41,1),(11,11,'Take part','2017-08-07 19:38:21','Paid','Passed','2017-03-19',80,1),(12,12,'Not allowed','2017-07-13 07:45:50','Paid','Not passed','2016-07-23',98,1),(13,13,'Suspended','2017-07-18 09:23:49','Paid','Passed','2017-01-30',36,1),(14,14,'Take part','2017-07-23 03:34:23','Paid','Passed','2017-03-24',82,1),(15,15,'Take part','2017-07-12 01:45:32','Paid','Passed','2017-07-21',109,1),(16,16,'Take part','2017-08-09 16:27:25','Paid','Passed','2017-05-21',56,1),(17,17,'Take part','2017-07-17 18:58:27','Paid','Passed','2017-02-12',102,1),(18,18,'Absence','2017-07-19 10:43:21','Paid','Passed','2016-09-30',60,1),(19,19,'Not allowed','2017-08-26 12:38:52','Not paid','Not passed','2017-02-12',63,1),(20,1,'Take part','2019-09-17 17:15:08','Paid','Passed','2019-04-02',22,2),(21,2,'Not allowed','2019-09-14 18:03:52','Not paid','Passed','2019-09-03',13,2),(22,3,'Take part','2019-09-12 03:37:29','Paid','Passed','2019-04-12',2,2),(23,4,'Take part','2019-09-29 02:57:16','Paid','Passed','2019-07-28',23,2),(24,5,'Take part','2019-09-03 15:08:07','Paid','Passed','2019-06-13',12,2),(25,6,'Not allowed','2019-09-25 02:16:45','Paid','Not passed','2018-10-14',17,2),(26,7,'Take part','2019-09-29 14:05:08','Paid','Passed','2019-06-11',3,2),(27,8,'Take part','2019-09-02 23:42:52','Paid','Passed','2018-10-24',24,2),(28,9,'Not allowed','2019-09-22 13:39:44','Paid','Not passed','2019-09-03',7,2),(29,10,'Take part','2019-09-07 23:08:14','Paid','Passed','2019-07-24',21,2),(30,11,'Take part','2019-09-05 01:52:14','Paid','Passed','2019-07-01',14,2),(31,12,'Absence','2019-09-17 09:48:11','Paid','Passed','2019-03-08',5,2),(32,13,'Take part','2019-09-09 02:22:32','Paid','Passed','2018-10-22',19,2),(33,14,'Not allowed','2019-09-15 04:23:58','Not paid','Not passed','2019-05-02',4,2),(34,15,'Take part','2019-09-17 08:45:06','Paid','Passed','2019-03-07',11,2),(35,16,'Take part','2019-09-27 13:06:41','Not paid','Passed','2019-05-07',26,2),(36,17,'Take part','2019-09-12 05:05:05','Paid','Passed','2018-09-29',15,2),(37,18,'Take part','2019-09-09 22:27:41','Paid','Passed','2018-11-12',9,2),(38,19,'Take part','2019-09-21 10:48:25','Paid','Passed','2019-04-09',18,2),(39,20,'Take part','2019-09-19 08:01:08','Paid','Passed','2018-10-27',10,2),(40,21,'Absence','2019-09-20 20:42:57','Paid','Passed','2019-01-04',16,2),(41,22,'Take part','2019-09-04 06:49:46','Paid','Passed','2018-12-13',8,2),(42,23,'Take part','2019-09-14 23:57:48','Paid','Passed','2019-08-04',6,2),(43,24,'Take part','2019-09-05 05:00:30','Paid','Passed','2019-08-01',20,2),(44,1,'Take part','2020-01-21 07:36:08','Paid','Passed','2019-11-18',46,3),(45,2,'Suspended','2020-01-27 20:05:31','Paid','Passed','2019-07-23',58,3),(46,3,'Take part','2020-01-18 04:40:56','Paid','Passed','2020-01-26',92,3),(47,4,'Take part','2020-02-09 11:07:19','Paid','Passed','2019-02-15',103,3),(48,5,'Take part','2020-01-29 05:03:05','Paid','Passed','2019-07-29',79,3),(49,6,'Take part','2020-01-21 15:19:31','Paid','Passed','2019-11-10',107,3),(50,7,'Take part','2020-01-28 14:05:38','Paid','Passed','2019-03-01',106,3),(51,8,'Not allowed','2020-01-22 20:30:34','Not paid','Passed','2019-05-16',13,3),(52,9,'Take part','2020-02-05 03:22:19','Paid','Passed','2019-07-16',88,3),(53,10,'Absence','2020-02-03 22:34:30','Paid','Passed','2019-05-13',1,3),(54,11,'Take part','2020-02-04 17:44:49','Paid','Passed','2019-04-13',63,3),(55,12,'Take part','2020-02-10 11:17:57','Paid','Passed','2020-01-07',50,3),(56,13,'Take part','2020-01-20 05:25:07','Paid','Passed','2019-06-17',112,3),(57,14,'Take part','2020-01-23 16:41:27','Paid','Passed','2019-04-20',62,3),(58,15,'Take part','2020-01-26 17:34:25','Paid','Passed','2019-10-03',11,3),(59,16,'Not allowed','2020-01-31 12:23:24','Not paid','Not passed','2019-09-15',77,3),(60,17,'Take part','2020-02-06 19:07:04','Paid','Passed','2019-12-16',3,3),(61,18,'Absence','2020-01-27 00:35:59','Paid','Passed','2019-12-26',10,3),(62,19,'Take part','2020-01-25 11:07:22','Paid','Passed','2020-01-11',41,3),(63,20,'Take part','2020-02-02 10:02:41','Paid','Passed','2019-03-14',26,3),(64,21,'Take part','2020-01-30 23:02:06','Paid','Passed','2019-03-16',69,3),(65,22,'Not allowed','2020-01-17 22:56:16','Not paid','Not passed','2019-11-27',39,3),(66,23,'Take part','2020-01-20 16:13:01','Paid','Passed','2019-11-03',54,3),(67,24,'Take part','2020-02-02 05:45:03','Paid','Passed','2019-07-11',40,3),(68,25,'Take part','2020-01-16 00:04:48','Paid','Passed','2019-08-17',21,3),(69,1,'Take part','2012-04-21 16:32:18','Paid','Passed','2011-09-17',11,4),(70,2,'Take part','2012-04-29 21:12:12','Paid','Passed','2011-07-10',52,4),(71,3,'Take part','2012-04-23 15:55:08','Paid','Passed','2011-05-23',14,4),(72,4,'Take part','2012-04-24 18:02:45','Paid','Passed','2011-11-14',114,4),(73,5,'Absence','2012-04-14 02:12:37','Paid','Passed','2011-07-23',86,4),(74,6,'Take part','2012-04-29 16:24:42','Paid','Passed','2012-01-09',59,4),(75,7,'Take part','2012-04-20 05:36:03','Paid','Passed','2011-10-05',92,4),(76,8,'Take part','2012-04-27 13:30:05','Paid','Passed','2011-11-29',13,4),(77,9,'Take part','2012-04-26 17:17:47','Paid','Passed','2011-07-04',77,4),(78,10,'Take part','2012-04-13 03:39:00','Paid','Passed','2012-05-01',33,4),(79,11,'Take part','2012-04-16 09:50:25','Paid','Passed','2012-02-04',8,4),(80,12,'Not allowed','2012-04-20 20:08:01','Not paid','Passed','2011-06-18',32,4),(81,13,'Not allowed','2012-04-10 09:06:50','Paid','Not passed','2011-12-27',68,4),(82,14,'Take part','2012-04-15 08:47:52','Paid','Passed','2012-05-04',29,4),(83,15,'Take part','2012-05-04 14:26:51','Paid','Passed','2011-05-15',83,4),(84,16,'Take part','2012-04-16 16:30:33','Paid','Passed','2011-11-24',100,4),(85,17,'Take part','2012-04-18 00:11:25','Paid','Passed','2012-01-16',89,4),(86,18,'Not allowed','2012-04-13 17:35:33','Paid','not passed','2011-08-25',22,4),(87,19,'Take part','2012-04-19 19:26:55','Paid','Passed','2011-08-14',42,4),(88,20,'Take part','2012-04-12 09:31:20','Paid','Passed','2011-10-12',73,4),(89,1,'Take part','2018-07-15 05:13:41','Paid','Passed','2017-08-21',27,5),(90,2,'Not allowed','2018-07-13 22:47:25','Not paid','Passed','2017-11-03',41,5),(91,3,'Take part','2018-07-15 01:35:36','Paid','Passed','2018-03-15',47,5),(92,4,'Absence','2018-07-27 22:11:25','Paid','Passed','2018-04-08',42,5),(93,5,'Take part','2018-07-31 06:34:12','Paid','Passed','2017-09-03',33,5),(94,6,'Not allowed','2018-07-28 14:40:05','Paid','Not passed','2017-10-31',51,5),(95,7,'Suspended','2018-07-25 10:36:49','Paid','Passed','2018-04-28',50,5),(96,8,'Take part','2018-07-30 03:48:20','Paid','Passed','2017-11-15',35,5),(97,9,'Take part','2018-07-18 07:31:19','Paid','Passed','2017-10-09',53,5),(98,10,'Take part','2018-07-18 21:34:50','Paid','Passed','2018-01-07',49,5),(99,11,'Not allowed','2018-07-16 10:06:50','Paid','Not passed','2018-06-06',29,5),(100,12,'Take part','2018-07-27 23:20:39','Paid','Passed','2018-03-15',44,5),(101,13,'Absence','2018-07-19 05:51:42','Paid','Passed','2017-09-07',46,5),(102,14,'Take part','2018-07-15 17:31:29','Paid','Passed','2018-05-06',28,5),(103,15,'Take part','2018-07-29 21:18:57','Paid','Passed','2018-05-16',40,5),(104,16,'Absence','2018-07-19 17:07:14','Paid','Passed','2017-09-20',38,5),(105,17,'Take part','2018-07-13 21:54:12','Paid','Passed','2017-09-11',31,5),(106,18,'Absence','2018-07-20 10:18:35','Paid','Passed','2017-08-27',45,5),(107,19,'Not allowed','2018-07-18 08:37:37','Paid','Not passed','2017-10-27',36,5),(108,20,'Take part','2018-08-01 01:31:13','Paid','Passed','2018-06-22',30,5);
/*!40000 ALTER TABLE `dog_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation` (
  `id_evl` int(5) NOT NULL AUTO_INCREMENT,
  `id_sch` int(5) NOT NULL,
  `id_dog_reg` int(5) NOT NULL,
  `id_exp_reg` int(5) NOT NULL,
  `grade_1` int(3) DEFAULT NULL,
  `grade_2` int(3) DEFAULT NULL,
  `grade_3` int(3) DEFAULT NULL,
  PRIMARY KEY (`id_evl`),
  UNIQUE KEY `id_dog_reg` (`id_dog_reg`,`id_exp_reg`),
  KEY `id_sch` (`id_sch`),
  KEY `id_exp_reg` (`id_exp_reg`),
  CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`id_sch`) REFERENCES `schedule` (`id_sch`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`id_dog_reg`) REFERENCES `dog_reg` (`id_dog_reg`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `evaluation_ibfk_3` FOREIGN KEY (`id_exp_reg`) REFERENCES `expert_reg` (`id_exp_reg`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (1,2,2,5,9,10,8),(2,4,5,7,2,5,3),(3,6,11,5,3,8,NULL),(4,5,6,5,10,9,10),(5,1,13,10,5,1,6),(6,7,17,7,7,4,5),(7,1,1,10,1,2,8),(8,4,7,7,7,1,9),(9,9,16,5,7,NULL,6),(10,8,15,10,6,1,2),(11,3,3,3,3,5,6),(12,6,14,3,1,9,2),(13,1,10,10,6,1,8),(14,10,29,3,6,10,6),(15,11,36,8,8,5,7),(16,12,43,9,3,6,2),(17,13,23,6,6,1,5),(18,10,27,3,1,9,7),(19,11,32,8,10,10,10),(20,12,39,9,3,9,6),(21,13,41,6,6,7,5),(22,10,34,3,7,5,3),(23,11,42,8,1,1,10),(24,12,24,9,3,9,4),(25,13,20,6,6,10,3),(26,10,35,3,3,5,5),(27,11,26,8,4,5,4),(28,12,38,9,5,2,1),(29,13,22,6,7,7,7),(30,10,30,3,2,5,5),(31,11,37,8,4,1,2),(32,20,60,7,9,5,NULL),(33,15,45,2,NULL,3,NULL),(34,22,57,2,1,7,2),(35,26,66,7,2,5,4),(36,23,56,4,5,1,6),(37,14,44,4,2,7,8),(38,24,52,7,8,3,2),(39,14,67,4,4,8,3),(40,17,50,7,1,2,8),(41,20,58,7,6,9,NULL),(42,17,47,7,5,6,10),(43,20,63,7,2,9,2),(44,18,48,2,2,5,6),(45,25,64,9,8,1,8),(46,16,46,9,5,5,3),(47,20,68,7,5,4,7),(48,14,55,4,1,2,2),(49,22,54,2,8,10,10),(50,14,62,4,6,8,4),(51,19,49,9,4,4,4),(52,27,76,4,6,10,6),(53,36,88,8,7,7,1),(54,27,79,4,2,3,8),(55,28,78,3,6,1,4),(56,29,72,7,8,5,1),(57,31,75,3,4,6,9),(58,34,84,4,10,10,NULL),(59,28,87,3,10,10,10),(60,32,77,7,1,7,9),(61,27,69,4,5,5,8),(62,27,71,4,5,10,3),(63,30,74,8,6,8,10),(64,28,70,3,6,8,9),(65,28,82,3,5,6,7),(66,33,83,8,1,3,3),(67,35,85,7,6,1,NULL),(68,37,91,1,8,9,8),(69,38,102,2,6,4,7),(70,39,105,3,3,4,2),(71,37,95,1,NULL,6,8),(72,38,89,2,1,10,2),(73,39,97,3,5,7,NULL),(74,37,98,1,8,8,1),(75,38,93,2,5,8,5),(76,39,103,3,1,6,8),(77,37,108,1,4,1,NULL),(78,38,96,2,6,2,7),(79,39,100,3,10,10,10);
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibition`
--

DROP TABLE IF EXISTS `exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exhibition` (
  `id_exh` int(5) NOT NULL AUTO_INCREMENT,
  `name_exh` varchar(30) NOT NULL,
  `date_beg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `address_exh` varchar(40) NOT NULL,
  `type_exh` varchar(20) NOT NULL,
  PRIMARY KEY (`id_exh`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibition`
--

LOCK TABLES `exhibition` WRITE;
/*!40000 ALTER TABLE `exhibition` DISABLE KEYS */;
INSERT INTO `exhibition` VALUES (1,'Chetyre lapy 2017','2017-08-12 05:00:00','2017-08-14 17:00:00','Moscow, Sokolniki park','Multi-breed'),(2,'Pinscher defile','2019-10-01 07:00:00','2019-10-01 19:00:00','Saint-Petersburg, Gagarina st., 8','Mono Zwergpinscher'),(3,'Evrazia 2020','2020-02-14 09:00:00','2020-02-16 17:00:00','Moscow, Krasnaya Presnya park','Multi-breed'),(4,'Petshop Days','2012-05-13 07:00:00','2012-05-14 17:00:00','Moscow, Sokolniki park','Multi-breed'),(5,'Legenda kosmosa 2018','2018-08-10 06:00:00','2018-08-10 17:00:00','Vyborg, Monrepo park','Mono Pharaon hound');
/*!40000 ALTER TABLE `exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expert`
--

DROP TABLE IF EXISTS `expert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expert` (
  `id_exp` int(5) NOT NULL AUTO_INCREMENT,
  `name_exp` varchar(60) NOT NULL,
  `email_exp` varchar(30) DEFAULT NULL,
  `phone_exp` varchar(20) NOT NULL,
  `passport_exp` varchar(20) NOT NULL,
  `id_club` int(5) NOT NULL,
  PRIMARY KEY (`id_exp`),
  UNIQUE KEY `passport_exp` (`passport_exp`),
  KEY `id_club` (`id_club`),
  CONSTRAINT `expert_ibfk_1` FOREIGN KEY (`id_club`) REFERENCES `club` (`id_club`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expert`
--

LOCK TABLES `expert` WRITE;
/*!40000 ALTER TABLE `expert` DISABLE KEYS */;
INSERT INTO `expert` VALUES (1,'Vasily','LocalHero@yandex.ru','8-234-432-34-64','43 13 368543',1),(2,'Jack','JJ_48@mail.com','8-68-907-56-26','45 45 980805',1),(3,'John','JohnySPb@gmail.com','8-618-212-13-55','48 78 685812',2),(4,'Annabella',NULL,'8-750-141-10-06','15 67 284712',3),(5,'Dinah','Din_12031989@mail.com','8-654-132-22-95','68 97 121194',3),(6,'Richard','GoldenRichi@gmail.com','8-964-315-81-89','36 57 613349',4),(7,'Alfred','Al_me@mail.com','8-963-860-21-78','41 15 507706',4),(8,'Jeffery','JefferyStivenson@gmail.com','8-321-311-73-94','41 56 907679',4),(9,'Eustacia','Rose29011998@yandex.ru','8-897-538-22-13','67 89 475138',5),(10,'Darleen',NULL,'8-978-598-01-06','36 98 475138',6);
/*!40000 ALTER TABLE `expert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expert_reg`
--

DROP TABLE IF EXISTS `expert_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expert_reg` (
  `id_exp_reg` int(5) NOT NULL AUTO_INCREMENT,
  `num_ref` int(3) NOT NULL,
  `status_ref` varchar(20) NOT NULL,
  `date_reg_exp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_exp` int(5) NOT NULL,
  `id_exh` int(5) NOT NULL,
  PRIMARY KEY (`id_exp_reg`),
  UNIQUE KEY `id_exp` (`id_exp`,`id_exh`),
  UNIQUE KEY `num_ref` (`num_ref`,`id_exh`),
  KEY `id_exh` (`id_exh`),
  CONSTRAINT `expert_reg_ibfk_1` FOREIGN KEY (`id_exp`) REFERENCES `expert` (`id_exp`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expert_reg_ibfk_2` FOREIGN KEY (`id_exh`) REFERENCES `exhibition` (`id_exh`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expert_reg`
--

LOCK TABLES `expert_reg` WRITE;
/*!40000 ALTER TABLE `expert_reg` DISABLE KEYS */;
INSERT INTO `expert_reg` VALUES (1,1,'Take part','2017-07-27 15:05:31',10,1),(2,2,'Take part','2017-08-02 01:25:17',7,1),(3,3,'Take part','2017-08-06 03:23:32',3,1),(4,4,'Take part','2017-07-31 11:32:58',5,1),(5,5,'Not allowed','2017-08-06 18:09:44',1,1),(6,1,'Take part','2019-10-05 20:12:38',8,2),(7,2,'Absence','2019-10-01 14:29:28',4,2),(8,3,'Take part','2019-09-27 08:16:43',6,2),(9,4,'Take part','2019-10-25 14:23:49',9,2),(10,5,'Take part','2019-09-30 06:22:43',3,2),(11,1,'Take part','2020-01-09 11:24:01',2,3),(12,2,'Take part','2020-02-05 02:07:26',7,3),(13,3,'Take part','2020-01-13 14:33:49',4,3),(14,4,'Take part','2020-01-07 11:08:00',9,3),(15,1,'Take part','2012-05-04 19:28:34',8,4),(16,2,'Take part','2012-04-21 23:37:18',7,4),(17,3,'Take part','2012-04-11 10:04:30',3,4),(18,4,'Take part','2012-04-27 06:07:06',4,4),(19,1,'Take part','2018-07-27 00:29:34',1,5),(20,2,'Take part','2018-07-31 10:42:39',4,5),(21,3,'Not allowed','2018-07-25 09:54:11',7,5),(22,4,'Take part','2018-07-17 05:08:15',3,5);
/*!40000 ALTER TABLE `expert_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `id_own` int(5) NOT NULL AUTO_INCREMENT,
  `passport_own` varchar(20) NOT NULL,
  `name_own` varchar(60) NOT NULL,
  `email_own` varchar(30) DEFAULT NULL,
  `phone_own` varchar(20) NOT NULL,
  PRIMARY KEY (`id_own`),
  UNIQUE KEY `passport_own` (`passport_own`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'31 13 475424','Jake','Getra@gmail.com','8-812-345-32-45'),(2,'42 16 235463','Georgiy','Gesha2342@yandex.ru','8-812-246-74-13'),(3,'40 12 168532','Michael','Mic.Sir@gmail.com','8-981-643-34-64'),(4,'35 15 334575','Ivan','124321@mail.ru','8-952-245-24-75'),(5,'12 10 345321','Dmitry','Dimko_The_Best@gmail.com','8-981-422-22-34'),(6,'29 13 234552','Anna',NULL,'8-812-321-34-59'),(7,'23 17 543432','Grigory','GriGri333@gmail.com','8-323-353-23-34'),(8,'31 18 457421','Oleg','OlegReznov@yandex.ru','8-453-345-56-64'),(9,'45 19 153355','Leonid','LeoKing12041987@yandex.ru','8-453-134-53-21'),(10,'46 21 595320','Valery','Valerian_ka@gmail.com','8-981-432-57-83'),(11,'32 34 424421','Ivan','WrumWrumCar@yandex.ru','8-911-464-75-64'),(12,'40 12 395969','Egor','Gorik777@mail.ru','8-453-432-45-63'),(13,'14 32 456970','Anatoly','Tolya_RUS_198@gmail.com','8-952-432-96-30'),(14,'23 31 408742','Dmitry',NULL,'8-453-567-32-09'),(15,'42 57 754325','Mariya','AmericanDream@mail.ru','8-911-345-62-00'),(16,'35 43 456321','Vasilisa','I_LOVE_dogs@yandex.ru','8-812-467-97-24'),(17,'13 53 425770','Alla','Allocka23122008@gmail.com','8-453-345-63-14'),(18,'28 94 466784','Iosif','245724@niuitmo.ru','8-981-344-55-12'),(19,'35 52 353070','Tatyana',NULL,'8-952-573-09-43'),(20,'29 64 920501','Evgeny','UnknownManN@mail.ru','8-812-685-35-74'),(21,'12 54 374865','Albert','AlBert_333@mail.ru','8-824-251-00-54'),(22,'13 54 466433','Grigory','GarGer@gmail.com','8-03-443-38-64'),(23,'23 34 345633','Leonty','Karas@mail.com','8-33-966-69-10'),(24,'43 35 555245','Rostislav','Rostishka1254@gmail.com','8-1592-894-14-01'),(25,'56 43 457754','Vyacheslav','Vyachik_myachik@mail.com','8-129-352-78-67'),(26,'34 65 356743','Vladimir','VolodimirFromMoscow@yandex.com','8-234-425-02-70'),(27,'35 69 060640','Svyatoslav','SvyatoslavA@mail.com','8-74-254-77-67'),(28,'47 86 967476','Maksim','_Zhelezobeton_@gmail.com','8-303-836-68-98'),(29,'45 88 685375','Fyodor',NULL,'8-361-300-62-88'),(30,'57 66 557445','Pavel','PaskaAnisimov@yandex.com','8-35-267-60-89'),(31,'12 85 458661','Anton','ToshaHoroshiy@gmail.com','8-6332-216-68-76'),(32,'65 24 958157','Ruslan','FromSPbWithLove@gmail.com','8-86-046-17-23'),(33,'24 84 245681','Mihail',NULL,'8-8059-555-99-82'),(34,'32 48 218348','Danila','Jeep_Trrr@mail.com','8-08-865-04-18'),(35,'31 12 332188','Denis','DenisIzOmska@yandex.com','8-557-703-51-94'),(36,'62 10 024830','Fyodor','FyodorPavlovich@yandex.com','8-50-404-63-45'),(37,'75 25 310842','Kirill',NULL,'8-31-369-12-56'),(38,'32 29 023710','Lev','BoseLowe@yandex.com','8-9402-114-17-57'),(39,'32 01 031726','Vitaly','Vitalik1410@gmail.com','8-62-974-20-60'),(40,'85 25 350466','Stepan','GoldenStep_yo@yandex.com','8-396-525-47-57'),(41,'21 55 222014','Yuliya','Yulecka_vishenka@yandex.com','8-6918-768-39-63'),(42,'38 95 452628','Marya','MarusFromRUS@mail.com','8-1677-106-76-10'),(43,'35 84 484842','Innokenty','777_Kent@gmail.com','8-67-343-36-19'),(44,'50 20 254297','Edward','EdwardNumbless@yandex.com','8-877-414-57-13'),(45,'62 85 328952','Darya','DarinkaMandarinka@yandex.com','8-340-021-18-97'),(46,'62 04 828425','Irina','diamond_nice@gmail.com','8-40-025-40-22'),(47,'64 85 256128','Gavriil','GAVRIILgavrysha@yandex.com','8-6322-364-70-48'),(48,'48 54 541541','Elena','ElenaShelehova@yandex.com','8-79-599-83-04'),(49,'63 24 895247','Nicolay','Nic1532@yandex.com','8-398-101-84-41'),(50,'62 57 140258','Oksana',NULL,'8-779-743-81-20'),(51,'62 54 854031','Maksim','o0_Max_0o@mail.com','8-1065-093-97-71'),(52,'62 48 248147','Daniil','Danko_1234@yandex.com','8-65-836-85-00'),(53,'18 20 548286','Arkadiy','Arkasha_zdes@yandex.com','8-22-913-50-32'),(54,'10 85 121068','Kristina','Kristina.Titova@gmail.com','8-119-058-18-91');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id_sch` int(5) NOT NULL AUTO_INCREMENT,
  `breed` varchar(20) NOT NULL,
  `time_perf` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `num_ring` int(3) NOT NULL,
  `id_exh` int(5) NOT NULL,
  PRIMARY KEY (`id_sch`),
  KEY `id_exh` (`id_exh`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`id_exh`) REFERENCES `exhibition` (`id_exh`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'Pharaon hound','2017-08-12 05:00:00',1,1),(2,'English setter','2017-08-12 05:00:00',2,1),(3,'Chow-chow','2017-08-12 05:00:00',3,1),(4,'Bassador','2017-08-12 05:00:00',4,1),(5,'Great dane','2017-08-13 05:00:00',2,1),(6,'Russian wolfhound','2017-08-13 05:00:00',3,1),(7,'Canes','2017-08-13 05:00:00',4,1),(8,'Border terrier','2017-08-14 05:00:00',1,1),(9,'Alaskan malamute','2017-08-14 05:00:00',2,1),(10,'Zwergpinscher','2019-10-01 07:00:00',1,2),(11,'Zwergpinscher','2019-10-01 07:00:00',2,2),(12,'Zwergpinscher','2019-10-01 07:00:00',3,2),(13,'Zwergpinscher','2019-10-01 07:00:00',4,2),(14,'Pharaon hound','2020-02-14 09:00:00',1,3),(15,'Bassador','2020-02-14 09:00:00',2,3),(16,'Cairn terrier','2020-02-14 09:00:00',3,3),(17,'Canes','2020-02-14 09:00:00',4,3),(18,'Russian wolfhound','2020-02-15 09:00:00',2,3),(19,'Border terrier','2020-02-15 09:00:00',3,3),(20,'Zwergpinscher','2020-02-15 09:00:00',4,3),(21,'Siberian husky','2020-02-15 12:00:00',1,3),(22,'Boxer','2020-02-15 14:00:00',2,3),(23,'Welsh terrier','2020-02-16 09:00:00',1,3),(24,'Rottweiler','2020-02-15 15:00:00',4,3),(25,'Great dane','2020-02-16 09:00:00',3,3),(26,'Afghan hound','2020-02-16 13:00:00',4,3),(27,'Zwergpinscher','2012-05-13 07:00:00',1,4),(28,'Pharaon hound','2012-05-13 07:00:00',2,4),(29,'Welsh terrier','2012-05-13 07:00:00',3,4),(30,'Bassador','2012-05-13 07:00:00',4,4),(31,'Cairn terrier','2012-05-14 07:00:00',2,4),(32,'Chow-chow','2012-05-13 16:00:00',3,4),(33,'Russian wolfhound','2012-05-14 07:00:00',4,4),(34,'English setter','2012-05-14 07:00:00',1,4),(35,'Rottweiler','2012-05-14 11:00:00',3,4),(36,'Schnauzer','2012-05-14 12:00:00',4,4),(37,'Pharaon hound','2019-10-01 07:00:00',1,5),(38,'Pharaon hound','2019-10-01 07:00:00',2,5),(39,'Pharaon hound','2019-10-01 07:00:00',3,5);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor` (
  `id_spnr` int(5) NOT NULL AUTO_INCREMENT,
  `name_spnr` varchar(30) NOT NULL,
  `phone_spnr` varchar(20) NOT NULL,
  `email_spnr` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_spnr`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (1,'Lemurrr','8-812-448-70-90','info@lemurrr.com'),(2,'Pedigree','8-800-100-08-00',NULL),(3,'Filya','8-812-363-47-17',NULL),(4,'Purina','8-865-897-56-64','contact@ru.nestle.com');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsorship`
--

DROP TABLE IF EXISTS `sponsorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsorship` (
  `id_spns` int(5) NOT NULL AUTO_INCREMENT,
  `num_cont` varchar(20) NOT NULL,
  `date_concl` date NOT NULL,
  `id_spnr` int(5) NOT NULL,
  `id_exh` int(5) NOT NULL,
  PRIMARY KEY (`id_spns`),
  UNIQUE KEY `id_spnr` (`id_spnr`,`id_exh`),
  KEY `id_exh` (`id_exh`),
  CONSTRAINT `sponsorship_ibfk_1` FOREIGN KEY (`id_spnr`) REFERENCES `sponsor` (`id_spnr`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sponsorship_ibfk_2` FOREIGN KEY (`id_exh`) REFERENCES `exhibition` (`id_exh`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsorship`
--

LOCK TABLES `sponsorship` WRITE;
/*!40000 ALTER TABLE `sponsorship` DISABLE KEYS */;
INSERT INTO `sponsorship` VALUES (1,'RT-GR-1343-2237','2017-07-07',1,1),(2,'TE-FW-5437-2495','2017-07-15',2,1),(3,'UG-VR-6532-8620','2019-08-11',2,2),(4,'BE-JR-6493-7646','2019-09-18',4,2),(5,'RG-WE-9635-2763','2020-01-06',4,3),(6,'GE-KT-0673-8643','2020-01-17',2,3),(7,'LY-OW-8743-1104','2020-02-01',3,3),(8,'JG-WF-9556-3525','2012-04-15',3,4),(9,'LW-IV-9064-5535','2012-04-26',4,4),(10,'WF-YY-0673-4595','2018-06-30',3,5);
/*!40000 ALTER TABLE `sponsorship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-30  0:00:34
