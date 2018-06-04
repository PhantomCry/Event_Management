-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: events_management
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.32-MariaDB

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
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elements` (
  `elementID` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(5000) DEFAULT NULL,
  `pathToDocument` varchar(100) DEFAULT NULL,
  `pathToMedia` varchar(100) DEFAULT NULL,
  `fieldID` int(11) NOT NULL,
  `eventID` int(11) NOT NULL,
  PRIMARY KEY (`elementID`),
  KEY `fieldID` (`fieldID`),
  KEY `eventID` (`eventID`),
  CONSTRAINT `eventID` FOREIGN KEY (`eventID`) REFERENCES `events` (`idevents`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fieldID` FOREIGN KEY (`fieldID`) REFERENCES `fields` (`idfield`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements`
--

LOCK TABLES `elements` WRITE;
/*!40000 ALTER TABLE `elements` DISABLE KEYS */;
INSERT INTO `elements` VALUES (1,NULL,NULL,'../Elements/Media/1.jpg',1,1),(2,NULL,NULL,'../Elements/Media/2.jpg',1,1),(3,NULL,NULL,'../Elements/Media/3.jpg',1,1),(4,NULL,NULL,'../Elements/Media/4.jpg',1,1),(6,NULL,'../Elements/Document/OfferedSubjects.pdf',NULL,1,1),(7,'Attached herein is the list of offered subjects and is inclusive of the course number, descriptive title, equivalent units, time schedule, and the assigned\nroom for each.',NULL,NULL,1,1),(8,NULL,'../Elements/Document/OfferedSubjects.pdf',NULL,3,1),(9,'Attatched herein is the table of enrollment schedule as announced in the iSLU student portal',NULL,NULL,3,1),(10,'Attached herein are the photos taken during the event proper. Credits to Migz Ramirez Photography',NULL,NULL,4,3),(11,NULL,NULL,'../Elements/Media/SCISNIGHT1.jpg',4,3),(12,NULL,NULL,'../Elements/Media/SCISNIGHT2.jpg',4,3),(13,NULL,NULL,'../Elements/Media/SCISNIGHT3.jpg',4,3),(14,NULL,NULL,'../Elements/Media/SCISNIGHT4.jpg',4,3),(15,NULL,NULL,'../Elements/Media/SCISNIGHT5.jpg',4,3),(16,NULL,NULL,'../Elements/Media/SCISNIGHT.mp4',5,3),(17,NULL,NULL,'../Elements/Media/SCISNIGHTTRAILER.mp4',5,3),(18,'Since the news of the new merger \'SAMCIS\' spread like wildfire to both the School of Accountancy and Business Management and the School of Computing\nand Information Sciences, the remaining days as independent schools were treasured by theirs constituents - be it faculty, staff, or student. Exhausting their\npatriotism to their school, the SCIS Supreme Student Council Assembly has conducted the event named as the SCIS Night. This is a social event that builds\non the very identity of the SCIS students. SCIS talents are exposed, the bond was closer than ever, inside jokes were cracked, and of course, speeches from\nbeloved faculty members were given to remind SCIS students of their roots.',NULL,NULL,6,3),(19,'For the first time in SLU History, enrollments for SAMCIS students commenced during the Short Term 2018. Students from the BSIT, BSCS, BLIS, BSAc, BSMA, BSBA FinMan,\nBSBA HTM, and other degree programs enroll under the School of Accountancy, Managament, and Computing and Information Studies. Although both the Deans and Associate Deans\nwere present during the enrollment, the school stand as one under the yellow flag.',NULL,NULL,6,1),(20,'Attached herein is a photo of the majorit of the students who passed the certiication on the first try.',NULL,NULL,4,4),(21,NULL,NULL,'../Elements/Media/GDGMSCPassers.jpg',4,4),(22,'The Google Developer Group has visited Saint Louis University\'s School of Computing and Information Sciences to conduct a Mobile Site Certification\nExamination as well as a seminar regarding the examination. Tackled in the seminar are the practices and technologies used in Mobile Web Development which includes\nProgressive Web Applications, Accelerated Pages, the use of Google applications such as Google Analytics, and many more. After the seminar, the examination for the certification\ncommenced in the same room the seminar was conducted which is the D522 Computer Lab. With approximately 3 blocks of students attending the seminar, there were select few\nwho passed on their first try.',NULL,NULL,6,4),(23,NULL,NULL,'../Elements/Media/SCSDAYPoster.jpg',7,5),(24,'The SCIS Day, for the first and last time, is a celebratory day for SCIS students, staff and faculty members. Serving as the mother event of 4 subevent which\ninclude a Career Talk for Freshmen, Alumni Talk for bona fide SCIS students, Thanksgiving Mass, and GAWAD SCIS Awards, the event ran from 10 in the morning to 8 in\nthe afternoon.',NULL,NULL,6,5),(26,'This officially marks the beginning of the SCIS Day. The Career Talk is a seminar for incmoing freshmen students of SAMCIS and covered the different degree programs\r previously offered in SCIS, and now in SAMCIS. The four Department Heads of the IT/CS, Computer Applications, BLIS, and the Mathematics Departments presented to the students\r not only the descriptions of the degree programs, but also the future professions, projected salaries, and the unique aspects of the degree programs under their departments',NULL,NULL,8,5),(27,'The Alumni Talk gathers all bona fide students of SCIS in the Devesse AVR for a seminar/casual talkshow with the SLU Alumni who are working in Trend Micro, AWS, and Nokia.\nThe talk generally revolves around the experiences of the alumni upon stepping out of the university, experiences with their companies, struggles as fresh graduates, and\nkey principles to remember when entering the real world',NULL,NULL,9,5),(28,'The thanksgiving mass was conducted at the Maryheights Campus Amphitheater, right after the Alumni Talk was concluded. This also served as a window of preparation\nfor SSC Officers and the Committee on Events Organization to set up the Devesse AVR for the next portion of the program',NULL,NULL,10,5),(29,'GAWAD SCIS is an awarding program that recognizes both co-curricular and extra-curricular talents and knowledge. The Awarding started from the recognition\nof Dean\'s Listers from current Third and Fourth Year students, progressed to the recognition of participants in national competitions and finally to the winners in\nthe 2017 Intramural Games. Throughout the awarding, ice breakers were rendered by Mr. Miguel Paolo Del Rosaio and Ms. Maureen Geraldez.',NULL,NULL,11,5),(40,NULL,NULL,'../Elements/Media/SPORTSFEST1.jpg',4,6),(41,NULL,NULL,'../Elements/Media/SPORTSFEST2.jpg',4,6),(42,NULL,NULL,'../Elements/Media/SPORTSFEST3.jpg',4,6),(43,NULL,NULL,'../Elements/Media/SPORTSFESTPoster.jpg',7,6);
/*!40000 ALTER TABLE `elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `idevents` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(45) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime DEFAULT NULL,
  `venue` varchar(200) NOT NULL,
  `managedBy` varchar(500) NOT NULL,
  `pathToDispImg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idevents`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'SAMCIS Short Term Enrollment','2018-05-29 07:00:00','2018-06-02 17:00:00','Prince Bernhard Gym, Main Campus','Dr. Gerry Paul Genove, Ms. April Gumnad',NULL),(3,'SCIS Night 2018: #OneLastSCIS','2018-03-10 17:00:00','2018-03-10 21:00:00','Fr. Decaestecker Hall, Navy Base Campus','KASAMA/SSC - SCIS Assembly',NULL),(4,'GDG Baguio Mobile Site Certification','2018-04-05 10:00:00','2018-04-05 16:00:00','D522 Computer Lab','Dr. Gerry Paul Genove',NULL),(5,'SCIS Day','2018-04-21 10:00:00','2018-04-21 20:00:00','Maryheights Campus','Dr. Gerry Paul Genove, Dr. Cecilia Mercado, Mr. Benedick Bacani',NULL),(6,'SCIS Sportsfest 2018','2018-04-17 16:00:00','2018-05-06 20:00:00','Maryheights Campus Basketball Court','KASAMA/SSC - SCIS Assembly',NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldofevent`
--

DROP TABLE IF EXISTS `fieldofevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldofevent` (
  `eID` int(11) NOT NULL,
  `fID` int(11) NOT NULL,
  PRIMARY KEY (`eID`,`fID`),
  KEY `fID_idx` (`fID`),
  CONSTRAINT `eID` FOREIGN KEY (`eID`) REFERENCES `events` (`idevents`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fID` FOREIGN KEY (`fID`) REFERENCES `fields` (`idfield`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldofevent`
--

LOCK TABLES `fieldofevent` WRITE;
/*!40000 ALTER TABLE `fieldofevent` DISABLE KEYS */;
INSERT INTO `fieldofevent` VALUES (1,1),(1,3),(3,4),(3,5),(3,6),(4,4),(4,6),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(6,4),(6,7);
/*!40000 ALTER TABLE `fieldofevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `idfield` int(11) NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(45) NOT NULL,
  `status` enum('pending','saved') DEFAULT NULL,
  PRIMARY KEY (`idfield`),
  UNIQUE KEY `fieldname_UNIQUE` (`fieldname`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,'Offered Subjects',NULL),(3,'Schedule of Enrollment',NULL),(4,'Event Photos',NULL),(5,'Event Videos',NULL),(6,'Description',NULL),(7,'Official Posters',NULL),(8,'Career Talk for Freshmen',NULL),(9,'Alumni Talk',NULL),(10,'Thanksgiving Mass',NULL),(11,'GAWAD SCIS',NULL);
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagofevent`
--

DROP TABLE IF EXISTS `tagofevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagofevent` (
  `idevents` int(11) NOT NULL,
  `tagID` int(11) NOT NULL,
  PRIMARY KEY (`idevents`,`tagID`),
  KEY `tag_idx` (`tagID`),
  CONSTRAINT `event` FOREIGN KEY (`idevents`) REFERENCES `events` (`idevents`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tag` FOREIGN KEY (`tagID`) REFERENCES `tags` (`tagID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagofevent`
--

LOCK TABLES `tagofevent` WRITE;
/*!40000 ALTER TABLE `tagofevent` DISABLE KEYS */;
INSERT INTO `tagofevent` VALUES (1,1),(1,2),(3,3),(4,4),(4,5),(5,2),(5,3),(5,5),(5,6),(5,7),(6,8);
/*!40000 ALTER TABLE `tagofevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `tagID` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` varchar(45) NOT NULL,
  PRIMARY KEY (`tagID`),
  UNIQUE KEY `tagname_UNIQUE` (`tagname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (6,'Awarding'),(4,'Certification'),(1,'Enrollment'),(7,'Mass Sponsorship'),(2,'No classes'),(5,'Seminar'),(3,'Social Event'),(8,'Sportsfest');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 10:48:13
