-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 29, 2018 at 05:15 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventsmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
CREATE TABLE IF NOT EXISTS `elements` (
  `elementID` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(5000) DEFAULT NULL,
  `pathToDocument` varchar(100) DEFAULT NULL,
  `pathToMedia` varchar(100) DEFAULT NULL,
  `fieldID` int(11) NOT NULL,
  `eventID` int(11) NOT NULL,
  PRIMARY KEY (`elementID`),
  KEY `fieldID` (`fieldID`),
  KEY `eventID` (`eventID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`elementID`, `text`, `pathToDocument`, `pathToMedia`, `fieldID`, `eventID`) VALUES
(1, NULL, NULL, '../Elements/Media/1.jpg', 1, 1),
(2, NULL, NULL, '../Elements/Media/2.jpg', 1, 1),
(3, NULL, NULL, '../Elements/Media/3.jpg', 1, 1),
(4, NULL, NULL, '../Elements/Media/4.jpg', 1, 1),
(6, NULL, '../Elements/Document/OfferedSubjects.pdf', NULL, 1, 1),
(7, 'Attached herein is the list of offered subjects and is inclusive of the course number, descriptive title, equivalent units, time schedule, and the assigned\nroom for each.', NULL, NULL, 1, 1),
(8, NULL, '../Elements/Document/OfferedSubjects.pdf', NULL, 3, 1),
(9, 'Attatched herein is the table of enrollment schedule as announced in the iSLU student portal', NULL, NULL, 3, 1),
(10, 'Attached herein are the photos taken during the event proper. Credits to Migz Ramirez Photography', NULL, NULL, 4, 3),
(11, NULL, NULL, '../Elements/Media/SCISNIGHT1.jpg', 4, 3),
(12, NULL, NULL, '../Elements/Media/SCISNIGHT2.jpg', 4, 3),
(13, NULL, NULL, '../Elements/Media/SCISNIGHT3.jpg', 4, 3),
(14, NULL, NULL, '../Elements/Media/SCISNIGHT4.jpg', 4, 3),
(15, NULL, NULL, '../Elements/Media/SCISNIGHT5.jpg', 4, 3),
(16, NULL, NULL, '../Elements/Media/SCISNIGHT.mp4', 5, 3),
(17, NULL, NULL, '../Elements/Media/SCISNIGHTTRAILER.mp4', 5, 3),
(18, 'Since the news of the new merger \'SAMCIS\' spread like wildfire to both the School of Accountancy and Business Management and the School of Computing\nand Information Sciences, the remaining days as independent schools were treasured by theirs constituents - be it faculty, staff, or student. Exhausting their\npatriotism to their school, the SCIS Supreme Student Council Assembly has conducted the event named as the SCIS Night. This is a social event that builds\non the very identity of the SCIS students. SCIS talents are exposed, the bond was closer than ever, inside jokes were cracked, and of course, speeches from\nbeloved faculty members were given to remind SCIS students of their roots.', NULL, NULL, 6, 3),
(19, 'For the first time in SLU History, enrollments for SAMCIS students commenced during the Short Term 2018. Students from the BSIT, BSCS, BLIS, BSAc, BSMA, BSBA FinMan,\nBSBA HTM, and other degree programs enroll under the School of Accountancy, Managament, and Computing and Information Studies. Although both the Deans and Associate Deans\nwere present during the enrollment, the school stand as one under the yellow flag.', NULL, NULL, 6, 1),
(20, 'Attached herein is a photo of the majorit of the students who passed the certiication on the first try.', NULL, NULL, 4, 4),
(21, NULL, NULL, '../Elements/Media/GDGMSCPassers.jpg', 4, 4),
(22, 'The Google Developer Group has visited Saint Louis University\'s School of Computing and Information Sciences to conduct a Mobile Site Certification\nExamination as well as a seminar regarding the examination. Tackled in the seminar are the practices and technologies used in Mobile Web Development which includes\nProgressive Web Applications, Accelerated Pages, the use of Google applications such as Google Analytics, and many more. After the seminar, the examination for the certification\ncommenced in the same room the seminar was conducted which is the D522 Computer Lab. With approximately 3 blocks of students attending the seminar, there were select few\nwho passed on their first try.', NULL, NULL, 6, 4),
(23, NULL, NULL, '../Elements/Media/SCSDAYPoster.jpg', 7, 5),
(24, 'The SCIS Day, for the first and last time, is a celebratory day for SCIS students, staff and faculty members. Serving as the mother event of 4 subevent which\ninclude a Career Talk for Freshmen, Alumni Talk for bona fide SCIS students, Thanksgiving Mass, and GAWAD SCIS Awards, the event ran from 10 in the morning to 8 in\nthe afternoon.', NULL, NULL, 6, 5),
(26, 'This officially marks the beginning of the SCIS Day. The Career Talk is a seminar for incmoing freshmen students of SAMCIS and covered the different degree programs\r previously offered in SCIS, and now in SAMCIS. The four Department Heads of the IT/CS, Computer Applications, BLIS, and the Mathematics Departments presented to the students\r not only the descriptions of the degree programs, but also the future professions, projected salaries, and the unique aspects of the degree programs under their departments', NULL, NULL, 8, 5),
(27, 'The Alumni Talk gathers all bona fide students of SCIS in the Devesse AVR for a seminar/casual talkshow with the SLU Alumni who are working in Trend Micro, AWS, and Nokia.\nThe talk generally revolves around the experiences of the alumni upon stepping out of the university, experiences with their companies, struggles as fresh graduates, and\nkey principles to remember when entering the real world', NULL, NULL, 9, 5),
(28, 'The thanksgiving mass was conducted at the Maryheights Campus Amphitheater, right after the Alumni Talk was concluded. This also served as a window of preparation\nfor SSC Officers and the Committee on Events Organization to set up the Devesse AVR for the next portion of the program', NULL, NULL, 10, 5),
(29, 'GAWAD SCIS is an awarding program that recognizes both co-curricular and extra-curricular talents and knowledge. The Awarding started from the recognition\nof Dean\'s Listers from current Third and Fourth Year students, progressed to the recognition of participants in national competitions and finally to the winners in\nthe 2017 Intramural Games. Throughout the awarding, ice breakers were rendered by Mr. Miguel Paolo Del Rosaio and Ms. Maureen Geraldez.', NULL, NULL, 11, 5),
(40, NULL, NULL, '../Elements/Media/SPORTSFEST1.jpg', 4, 6),
(41, NULL, NULL, '../Elements/Media/SPORTSFEST2.jpg', 4, 6),
(42, NULL, NULL, '../Elements/Media/SPORTSFEST3.jpg', 4, 6),
(43, NULL, NULL, '../Elements/Media/SPORTSFESTPoster.jpg', 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `idevents` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(45) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime DEFAULT NULL,
  `venue` varchar(200) NOT NULL,
  `managedBy` varchar(500) NOT NULL,
  PRIMARY KEY (`idevents`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`idevents`, `eventname`, `startdate`, `enddate`, `venue`, `managedBy`) VALUES
(1, 'SAMCIS Short Term Enrollment', '2018-05-29 07:00:00', '2018-06-02 17:00:00', 'Prince Bernhard Gym, Main Campus', 'Dr. Gerry Paul Genove, Ms. April Gumnad'),
(3, 'SCIS Night 2018: #OneLastSCIS', '2018-03-10 17:00:00', '2018-03-10 21:00:00', 'Fr. Decaestecker Hall, Navy Base Campus', 'KASAMA/SSC - SCIS Assembly'),
(4, 'GDG Baguio Mobile Site Certification', '2018-04-05 10:00:00', '2018-04-05 16:00:00', 'D522 Computer Lab', 'Dr. Gerry Paul Genove'),
(5, 'SCIS Day', '2018-04-21 10:00:00', '2018-04-21 20:00:00', 'Maryheights Campus', 'Dr. Gerry Paul Genove, Dr. Cecilia Mercado, Mr. Benedick Bacani'),
(6, 'SCIS Sportsfest 2018', '2018-04-17 16:00:00', '2018-05-06 20:00:00', 'Maryheights Campus Basketball Court', 'KASAMA/SSC - SCIS Assembly');

-- --------------------------------------------------------

--
-- Table structure for table `fieldofevent`
--

DROP TABLE IF EXISTS `fieldofevent`;
CREATE TABLE IF NOT EXISTS `fieldofevent` (
  `eID` int(11) NOT NULL,
  `fID` int(11) NOT NULL,
  PRIMARY KEY (`eID`,`fID`),
  KEY `fID_idx` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fieldofevent`
--

INSERT INTO `fieldofevent` (`eID`, `fID`) VALUES
(1, 1),
(1, 3),
(3, 4),
(4, 4),
(6, 4),
(3, 5),
(3, 6),
(4, 6),
(5, 6),
(5, 7),
(6, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
CREATE TABLE IF NOT EXISTS `fields` (
  `idfield` int(11) NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(45) NOT NULL,
  PRIMARY KEY (`idfield`),
  UNIQUE KEY `fieldname_UNIQUE` (`fieldname`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`idfield`, `fieldname`) VALUES
(9, 'Alumni Talk'),
(8, 'Career Talk for Freshmen'),
(6, 'Description'),
(4, 'Event Photos'),
(5, 'Event Videos'),
(11, 'GAWAD SCIS'),
(1, 'Offered Subjects'),
(7, 'Official Posters'),
(3, 'Schedule of Enrollment'),
(10, 'Thanksgiving Mass');

-- --------------------------------------------------------

--
-- Table structure for table `tagofevent`
--

DROP TABLE IF EXISTS `tagofevent`;
CREATE TABLE IF NOT EXISTS `tagofevent` (
  `idevents` int(11) NOT NULL,
  `tagID` int(11) NOT NULL,
  PRIMARY KEY (`idevents`,`tagID`),
  KEY `tag_idx` (`tagID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tagofevent`
--

INSERT INTO `tagofevent` (`idevents`, `tagID`) VALUES
(1, 1),
(1, 2),
(5, 2),
(3, 3),
(5, 3),
(4, 4),
(4, 5),
(5, 5),
(5, 6),
(5, 7),
(6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `tagID` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` varchar(45) NOT NULL,
  PRIMARY KEY (`tagID`),
  UNIQUE KEY `tagname_UNIQUE` (`tagname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tagID`, `tagname`) VALUES
(6, 'Awarding'),
(4, 'Certification'),
(1, 'Enrollment'),
(7, 'Mass Sponsorship'),
(2, 'No classes'),
(5, 'Seminar'),
(3, 'Social Event'),
(8, 'Sportsfest');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `eventID` FOREIGN KEY (`eventID`) REFERENCES `events` (`idevents`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fieldID` FOREIGN KEY (`fieldID`) REFERENCES `fields` (`idfield`) ON UPDATE CASCADE;

--
-- Constraints for table `fieldofevent`
--
ALTER TABLE `fieldofevent`
  ADD CONSTRAINT `eID` FOREIGN KEY (`eID`) REFERENCES `events` (`idevents`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fID` FOREIGN KEY (`fID`) REFERENCES `fields` (`idfield`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tagofevent`
--
ALTER TABLE `tagofevent`
  ADD CONSTRAINT `event` FOREIGN KEY (`idevents`) REFERENCES `events` (`idevents`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tag` FOREIGN KEY (`tagID`) REFERENCES `tags` (`tagID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
