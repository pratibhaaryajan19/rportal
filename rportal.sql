-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2020 at 08:53 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha`) VALUES
('37ebym'),
('46kDfx'),
('7ca5nk'),
('93e2fz'),
('Ac68sh'),
('AXdsuv'),
('hP86Fd'),
('P4gnrm'),
('QB14sd'),
('W3ijnx');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `uname` varchar(40) NOT NULL,
  `upwd` varchar(30) NOT NULL,
  `utype` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `upwd`, `utype`) VALUES
('40001636', '40001636', 'user'),
('4000000', '4000000', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sob_bookchap`
--

CREATE TABLE `sob_bookchap` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `title_book` varchar(200) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL,
  `rptlink` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sob_conference`
--

CREATE TABLE `sob_conference` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(30) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `conference` text NOT NULL,
  `publisher` text NOT NULL,
  `organiser` varchar(100) NOT NULL,
  `venue` text NOT NULL,
  `confdate` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL,
  `indexing` varchar(10) NOT NULL,
  `funding` varchar(30) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `confwebsite` text,
  `proseedingurl` text NOT NULL,
  `rptlink` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sob_patentdet`
--

CREATE TABLE `sob_patentdet` (
  `sap_id` bigint(20) NOT NULL,
  `title_invention` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `briefexp` text NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `grantdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sob_publication`
--

CREATE TABLE `sob_publication` (
  `sap_id` bigint(9) NOT NULL,
  `title_manu` varchar(600) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `journal` varchar(200) NOT NULL,
  `Publisher` varchar(200) NOT NULL,
  `issn` varchar(70) DEFAULT NULL,
  `indexing` varchar(40) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `issue` varchar(10) NOT NULL,
  `ppno` varchar(50) NOT NULL,
  `doi` varchar(100) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(6) NOT NULL,
  `url_manu` text NOT NULL,
  `rptlink` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sob_savbookchap`
--

CREATE TABLE `sob_savbookchap` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `title_book` varchar(200) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sob_savconf`
--

CREATE TABLE `sob_savconf` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(30) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `conference` text NOT NULL,
  `publisher` text NOT NULL,
  `organiser` varchar(100) NOT NULL,
  `venue` text NOT NULL,
  `confdate` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL,
  `indexing` varchar(10) NOT NULL,
  `funding` varchar(30) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `confwebsite` text,
  `proseedingurl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sob_savpat`
--

CREATE TABLE `sob_savpat` (
  `sap_id` bigint(20) NOT NULL,
  `title_invention` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `briefexp` text NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `grantdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sob_savpub`
--

CREATE TABLE `sob_savpub` (
  `sap_id` bigint(9) NOT NULL,
  `title_manu` varchar(600) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `journal` varchar(200) NOT NULL,
  `Publisher` varchar(200) NOT NULL,
  `issn` varchar(70) DEFAULT NULL,
  `indexing` varchar(40) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `issue` varchar(10) NOT NULL,
  `ppno` varchar(50) NOT NULL,
  `doi` varchar(100) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(6) NOT NULL,
  `url_manu` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sob_targets`
--

CREATE TABLE `sob_targets` (
  `department` text NOT NULL,
  `tenure` text NOT NULL,
  `scopuspub` int(11) NOT NULL,
  `scipub` int(11) NOT NULL,
  `conference` int(11) NOT NULL,
  `patent` int(11) NOT NULL,
  `bookch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socs_bookchap`
--

CREATE TABLE `socs_bookchap` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `title_book` varchar(200) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL,
  `rptlink` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socs_bookchap`
--

INSERT INTO `socs_bookchap` (`sap_id`, `title_manu`, `department`, `authors`, `affiliation`, `title_book`, `publisher`, `isbn`, `pubdate`, `puburl`, `rptlink`) VALUES
(40001636, 'GO', 'Systemics', 'GO   ', 'GO   ', 'GO   ', 'GO   ', '78788', '2019-04-23', '  GO ', '');

-- --------------------------------------------------------

--
-- Table structure for table `socs_conference`
--

CREATE TABLE `socs_conference` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(30) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `conference` text NOT NULL,
  `publisher` text NOT NULL,
  `organiser` varchar(100) NOT NULL,
  `venue` text NOT NULL,
  `confdate` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL,
  `indexing` varchar(10) NOT NULL,
  `funding` varchar(30) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `confwebsite` text,
  `proseedingurl` text NOT NULL,
  `rptlink` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socs_conference`
--

INSERT INTO `socs_conference` (`sap_id`, `title_manu`, `department`, `authors`, `affiliation`, `conference`, `publisher`, `organiser`, `venue`, `confdate`, `status`, `indexing`, `funding`, `amount`, `confwebsite`, `proseedingurl`, `rptlink`) VALUES
(40001530, 'Handwritten Bengali Numeral Recognition using HOG Based Feature Extraction Algorithm', 'Informatics', 'Amitava Choudhury\nSoCS, UPES, Dehradun\n', 'UPES Dehradun', 'Amitava Choudhury', 'ieee', 'Amity University', 'Amity University', '2018-02-22', 'International', 'NA', 'Yes', '7000', 'NA', 'signal Processing and Integrated Networks', 'NA'),
(40001928, 'Classification of Chest Diseases Using Convolutional Neural Network', 'Informatics', ' Anupam Singh\nUPES, Dehradun\nU.K.', 'UPES Dehradun', 'International Conference on Computing, Communication and Cyber- Security(IC4S)', 'NA', 'Southern Federal University', 'Chandigarh', '2019-10-12 ', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'NA', 'NA'),
(40001928, 'Formal Development of Fault-Tolerant Majority Based Replica Control Protocol using Event-B', 'Informatics', 'Anupam Singh\n\nComputer Science\n\nUPES Dehradun', 'UPES Dehradun', 'ICCS 2019', 'Blue Eyes Intelligence Engineering & Sciences Publication', 'CEC Chandigarh', 'Chnadigarh', '2019-07-26', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'ICCS 2019', 'NA'),
(40001616, 'Statistical Analysis of Cloud Based Scheduling Heuristics   ', 'Systemics', 'Narang S., Department of Computer Science and Engineering,\r\nSRM University, Sonipat, Haryana, India         ', 'UPES Dehradun         ', '      ', 'Springer, Singapore         ', 'JAGAN', 'Sector-5, Rohini, Delhi-110085.         ', '2019-05-11', 'National', 'Yes', 'Funded', '000', 'NA         ', 'Information, Communication and Computing Technology         ', ''),
(40001616, 'Study and implementation of various load balancing approaches for cloud computing using cloudsim', 'Virtualization', 'Jain A., Virtualization Department, School of Computer Science, University of Petroleum and Energy Studies, Bidholi, Dehradun, India', 'UPES Dehradun', 'in International conference on recent trends in computer application and information technology', 'NA', 'M. M. Institute of Computer Technology and Business Management, Maharishi Markandeshwar ', 'Mullana, Ambala, Haryana, India', '2019-04-19', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'NA', 'NA'),
(40001511, 'Traffic Management using Logistic Regression with Fuzzy Logic', 'Virtualization', 'Anurag Singh Tomar, School of Computer Science, University of Petroleum and Energy Studies, Dehradun, India', 'UPES Dehradun', 'International Conference on Computational Intelligence and Data Science (ICCIDS 2018)', 'Procedia Computer Science(Elsevier) Volume 132', 'Northcap University, Gurgaon', 'Gurgaon', '2018-04-19', 'International', 'NA', 'Yes', '11000', 'NA', 'International Conference on Computational Intelligence and Data Science (ICCIDS 2018)', 'NA'),
(40001469, 'DevOps: Bridging the gap between Development and Operations', 'Virtualization', 'Avita Katal;University of Petroleum and Energy Studies', 'UPES Dehradun', '3rd International Conference on Computing Methodologies and Communication (ICCMC), 2019', 'IEEE', 'University of Petroleum and Energy Studies', 'Erode, Tamil Nadu', '2019-03-27', 'International', 'NA', 'Yes', '6750', 'NA', '2019 3rd International Conference on Computing Methodologies and Communication (ICCMC)', 'NA'),
(40001469, 'Cloud Container Placement Policies: A study and Comparison', 'Virtualization', 'Avita  Katal; University of Petroleum and Energy Studies', 'UPES Dehradun', '2nd International Conference on Computer Networks and Inventive Communication Technologies (ICCNCT - 2019)', 'Springer', 'RVS Technical Campus, Coimbatore, Tamil Nadu, India', 'Coimbatore, Tamil Nadu', '2019-05-23', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'Springer Lecture Notes on Data Engineering and Communications Technologies', 'NA'),
(40001116, 'Future Prospects and Challenges in Geospatial Database for Handling of Big Data Concept: A Review', 'Informatics', 'Mr. Bhagwant Singh, University of Petroleum and Energy Studies, Dehradun\n\n', 'UPES Dehradun', 'ICFCCT-2018', 'BEIESP', 'Meerut Institute of Engineering and Technology', 'Meerut, UP', '2018-12-22', 'International', 'NA', 'Yes', '11260', 'NA', 'International Journal of Recent Technology and Engineering(TM)', 'NA'),
(40001272, 'A Survey of Current Aids for Visually Impaired Persons', 'Informatics', 'Bhupendra Singh\nUniversity of Petroleum and Energy Studies', 'UPES Dehradun', '2018 3rd International Conference On Internet of Things: Smart Innovation and Usages (IoT-SIU)', 'IEEE', 'Birla Institute of Applied Science Bhimtal', 'Bhimtal', '2018-02-23', 'International', 'NA', 'Yes', '15000', 'NA', '2018 3rd International Conference On Internet of Things: Smart Innovation and Usages (IoT-SIU)', 'NA'),
(40001785, 'Designing an Expert System For Online Shopping Cart Management', 'Virtualization', 'Deepshikha Bhargava, University of Petroleum and Energy\nStudies, Dehradun, India; Pratikshya Mishra; Anjali Mishra', 'UPES Dehradun', 'IEEE International Conference on Artificial Intelligence (AICAI’2019)', 'IEEE', 'Amity University Dubai', 'Dubai', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'IEEE DIGITAL LIBRARY (Scopus Indexed)', 'NA'),
(40001785, 'Gamification in Education: A Cognitive Psychology Approach to Cooperative and Fun Learning', 'Virtualization', 'Mangeshkumar Demkah; Deepshikha Bhargava', 'UPES Dehradun', 'IEEE International Conference on Artificial Intelligence (AICAI’2019)', 'IEEE', 'Amity University Dubai', 'Dubai', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'IEEE DIGITAL LIBRARY (Scopus Indexed)', 'NA'),
(40001785, 'A Penalty Method Based-Spring Design Optimization Using Bio-inspired Computation Approach', 'Virtualization', 'Chinwe Peace Igiri; Deepshikha Bhargava; Yudhveer Singh', 'UPES Dehradun', 'IEEE International Conference on Artificial Intelligence (AICAI’2019)', 'IEEE', 'Amity University Dubai', 'Duai', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'IEEE DIGITAL LIBRARY', 'NA'),
(40000016, 'A visionary roadmap in applications of Robotics for Emerging India', 'Applications', 'Gagan Deep Singh; Anil Kumar; Dr. Ajay Prasad; Dr. Manish Prateek;\nUPES, Dehradun', 'UPES Dehradun', 'Application of Indian Languages in Robotics', 'MHRD, Government of India', 'UPES along with Commission For Scientific & Technical Terminology, MHRD, GoI', 'Dehradun', 'NA', 'National', 'NA', 'No/Self Funded', 'NA', 'NA', 'Vigyan Garima Sindhu', 'NA'),
(40001286, 'A New Framework for Collecting Implicit User Feedback for Movie and Video Recommender System', 'Cybernetics', 'Sahu H., University of Petroleum and Energy Studies ', 'UPES Dehradun', 'IC3E Allahabad', 'Springer Nature Singapore Pte Ltd. 2019', 'J.K institute of Applied Physics, University of Allahabad', 'Allahabad', '2018-04-13', 'International', 'NA', 'Yes', '9700', 'NA', 'Recent Trends in Communication, Computing, and Electronics, Lecture Notes in Electrical Engineering 524', 'NA'),
(40001286, 'A Personalized Context-Aware Recommender System Based on User-Item Preferences', 'Cybernetics', 'Sahu H., University of Petroleum and Energy Studies \n', 'UPES Dehradun', 'ICDMAI 2018', 'Springer Nature Singapore Pte Ltd. 2019', 'IICMR Pune', 'Pune', '2018-01-19', 'International', 'NA', 'Yes', '20962', 'NA', '`', 'NA'),
(40000950, 'i-Doctor an IOT Based Self Patient’s Health Monitoring System', 'Cybernetics', 'Hitesh Kumar Sharma, University of Petroleum and Energy Studies\n\n', 'UPES Dehradun', 'CISCT-2019', 'IEEE', 'Graphic Era University', 'Dehradun', '2019-10-11', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'IEEE', 'NA'),
(40001058, 'PsyHeal: An Approach to Remote Mental Health Monitoring System', 'Virtualization', 'Jagdish Chandra Patni', 'UPES Dehradun', '2018 International Conference on Advances in Computing and Communication Engineering (ICACCE)', 'IEEE', 'ECE Paris', 'Paris', '2018-06-22', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', '2018 International Conference on Advances in Computing and Communication Engineering (ICACCE)', 'NA'),
(40001058, 'IMAGE QUALITY ENHANCEMENT USING C PROGRAMMING', 'Virtualization', 'Jagdish Chandra Patni\nUPES Dehradun', 'UPES Dehradun', 'Amity International Conference on Artificial Intelligence (AICAI\'2019)', 'IEEE', 'University of Petroleum and Energy Studies, Dehradun', 'Dubai', '2019-02-05', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'Amity University Dubai', 'NA'),
(40001058, 'Air Quality Prediction using Artificial Neural Networks', 'Virtualization', 'Jagdish Chandra Patni\nUPES Dehradun', 'UPES Dehradun', 'International Conference on Automation, Computational and Technology Management', 'IEEE', 'Amity University London', 'London', '2018-01-01', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', '2019 International Conference on Automation, Computational and Technology Management (ICACTM)', 'NA'),
(40001058, 'Real Time Linguistic Analysis using Natural Language Processing', 'Virtualization', 'Jagdish Chandra Patni\nUPES Dehradun', 'UPES Dehradun', 'ICMAE', 'NA', 'International Conference on Materials, Applied Physics & Engineering', 'Indore', '2018-06-15', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'NA', 'NA'),
(40001058, 'Natural Language Processing based Analysis Engine', 'Virtualization', 'Jagdish Chandra Patni\nUPES Dehradun', 'UPES Dehradun', 'ICMAE-2018', 'NA', 'International Conference on Materials, Applied Physics & Engineering', 'Indore', '2018-06-15', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'NA', 'NA'),
(40001058, 'USER AUTHENTICATION USING KEYSTROKE DYNAMICS', 'Virtualization', 'Jagdish Chandra Patni\nUPES Dehradun', 'UPES Dehradun', 'International Conference on Recent Trends in Science, Technology, Management and Social Development 2018', 'IJCA', 'SRD Society', 'Bali Indonesia', '2018-08-04', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'IJCA Proceedings on International Conference on Recent Trends in Science, Technology, Management and Social Development', 'NA'),
(40001058, 'Dynamic Task Migration Mechanisms in Cloud Environment: Literature Review and Future Trends', 'Virtualization', 'Jagdish Chandra Patni\nUPES Dehradun', 'UPES Dehradun', 'International Conference on Recent Trends in Science, Technology, Management and Social Development 2018', 'IJCA', 'SRD Society', 'Bali Indonesia', '2018-08-04', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'IJCA Proceedings on International Conference on Recent Trends in Science, Technology, Management and Social Development', 'NA'),
(40001058, 'Playing Doom with Deep Reinforcement Learning', 'Virtualization', 'Jagdish Chandra Patni\nUPES Dehradun', 'UPES Dehradun', 'ICRTSTMSD 2018', 'IJCA', 'SRD Society', 'Bali Indonesia', '2018-08-04', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'IJCA Proceedings on International Conference on Recent Trends in Science, Technology, Management and Social Development', 'NA'),
(40001058, 'Advancement on High Performance Computing for Artificial Intelligence and Machine learning Applications', 'Virtualization', 'Jagdish Chandra Patni; UPES Dehradun', 'UPES Dehradun', 'iCon-MESSSh\'19', 'NA', 'SRD Society', 'Phuket, Thailand', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'NA', 'NA'),
(40001557, 'Security and Privacy in IoT based E-Business and Retail', 'Systemics', 'Keshav Kaushik; School of Computer Science;University of Petroleum & Energy Studies;\nSusheela Dahiya; School of Computer Science;University of Petroleum & Energy Studies', 'UPES Dehradun', 'System Modelling & Advancement on Research Trends', 'Excel India Publishers', 'Teerthankar Mahaveer University', 'Moradabad', 'NA', 'International', 'NA', 'Yes', '11500', 'NA', 'IEEE Xplore', 'NA'),
(40001898, 'A Realistic Configurable Level Triggered Flip-Flop in Quantum-Dot Cellular Automata', 'Systemics', 'Mrinal Goswami, University of Petroleum and Energy Studies, Dehradun, India', 'UPES Dehradun', '23rd International Symposium on VLSI Design and Test (VDAT 2019)', 'Springer', 'IIT Indore', 'Indore, India', '2019-07-04', 'International', 'NA', 'Yes', '6500', 'NA', 'Communications in Computer and Information Science book series (CCIS, volume 1066) Pages 455-467', 'NA'),
(40000043, 'BRIEF SURVEY REPORT ON PRIMARY EXPERIMENTAL DATA BASED ON REGIONAL SPECIFIC TARGET GROUP', 'Systemics', 'Thapliyal M, University of Petroleum and Energy Studies', 'UPES Dehradun', '2nd Doctoral Colloquium 2019', 'NA', 'University of Petroleum and Energy Studies', 'University of Petroleum and Energy Studies, Kandoli campus, Dehradun', '2019-05-24', 'National', 'NA', 'No/Self Funded', 'NA', 'NA', 'NA', 'NA'),
(40000043, 'AN ADAPTIVE INTELLIGENT TUTORING SYSTEM FOR LEARNING DISABILITY', 'Systemics', 'Bisht A, University of Petroleum and Energy Studies', 'UPES Dehradun', '2nd Doctoral Colloquium 2019', 'NA', 'University of Petroleum and Energy Studies', 'University of Petroleum and Energy Studies, Bidholi campus, Dehradun', '2019-05-24', 'National', 'NA', 'No/Self Funded', 'NA', 'NA', 'NA', 'NA'),
(40000043, 'A FRAMEWORK OF LEARNER PROFILING IN INTELLIGENT TUTORING SYSTEM FOR LEARNING DISABLED', 'Systemics', 'Thapliyal M, University of Petroleum and Energy Studies', 'UPES Dehradun', '4th International Conference on Next Generation Computing Technologies (NGCT 2018)', 'In process', 'University of Petroleum and Energy Studies', 'University of Petroleum and Energy Studies, Bidholi campus, Dehradun', '2018-11-21', 'International', 'NA', 'Yes', '3000', 'NA', 'In process', 'NA'),
(40000043, 'ASSISTIVE LEARNING TECHNOLOGIES (ALT) FOR INDIVIDUALS WITH SPECIAL NEEDS WITH EMPHASIS ON USER INTERFACE DESIGN: A CRITICAL REVIEW.', 'Systemics', 'Malav A, University of Petroleum and Energy Studies', 'UPES Dehradun', 'International  Conference on AAC 2018', 'In process', 'HNB Garhwal (Central) University Srinagar Uttarakhand', 'Srinagar, Uttarakhand', '2018-11-21', 'International', 'NA', 'Yes', '2600', 'NA', 'In process', 'NA'),
(40000043, 'AN INSTRUCTIVE FRAMEWORK OF INTELLIGENT TUTORING SYSTEM FOR LEARNING DISABILITY', 'Systemics', 'Bisht A, University of Petroleum and Energy Studies', 'UPES Dehradun', 'International Conference on Future Computing and Communication Technology (ICFCCT-2018)', 'Blue Eyes Intelligence Engineering and Sciences Publication (BEIESP)', 'Meerut Institute of Engineering and Technology', 'Meerut', '2018-12-21', 'International', 'NA', 'Yes', '11442', 'NA', 'International Journal of Recent Technology and Engineering (IJRTE)', 'NA'),
(40001179, 'DNA Sequence alignment using Dynamic Programming', 'Informatics', 'Niharika Singh,UPES', 'UPES Dehradun', 'ICICC-2019', 'NA', 'Dayanand Sagar university,', 'bangalore', '2018-01-01', 'International', 'NA', 'Yes', '8000', 'NA', 'NA', 'NA'),
(40001179, 'Short Term Forecasting of Market Clearing Price for an electricity bid on various algorithms using R', 'Informatics', 'Niharika Singh,UPES', 'UPES Dehradun', 'ICICCT-2019', 'NA', 'CHRIST University', 'bangalore', '2018-01-01', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'NA', 'NA'),
(40001179, 'Identification of Influence Propagation Metrics in Social Networks', 'Informatics', 'Niharika Singh, University of Petroleum and Energy Studies', 'UPES Dehradun', 'ICACTM-2019', 'IEEE', 'Amity University', 'London', '2019-04-24', 'International', 'NA', 'Yes', '7000', 'NA', 'ICACTM-2019', 'NA'),
(40001326, 'Formal Verification of Secure Authentication in Wireless Mesh Network (SAWMN)', 'Informatics', 'Ninni Singh, Jaypee University of Information Technology', 'UPES Dehradun', 'Proceedings of the Second International Conference on Computer and Communication Technologies', 'Springer India 2016', 'Proceedings of the Second International Conference on Computer and Communication Technologies', 'Hyderabad', '2018-01-01', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'Proceedings of the Second International Conference on Computer and Communication Technologies', 'NA'),
(40001326, 'Missing value imputation with unsupervised kohonen self organizing map', 'Informatics', 'Ninni Singh, Jaypee University of Information Technology', 'UPES Dehradun', 'Emerging Research in Computing, Information, Communication and Applications', 'Springer,', 'Nitte Meenakshi Institute of TechnologyBangaloreIndia', 'Banglore', '2018-01-01', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'Emerging Research in Computing, Information, Communication and Applications', 'NA'),
(40001326, 'Image data-deduplication using the block truncation coding technique.', 'Informatics', 'Anum Zargar, Jaypee University of Information technology', 'UPES Dehradun', '2015 International Conference on Futuristic Trends on Computational Analysis and Knowledge Management (ABLAZE)', 'IEEE Exploral', 'Amity University Noida', 'Noida', '2018-01-01', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', '2015 International Conference on Futuristic Trends on Computational Analysis and Knowledge Management (ABLAZE)', 'NA'),
(40001326, 'A secure authentication scheme in multi-operator domain (SAMD) for wireless mesh network', 'Informatics', 'Ninni Singh, University of Petroleum and Energy Studies', 'UPES Dehradun', 'International Conference on Data Engineering and Communication Technology (pp. 343-357). Springer, Singapore.', 'Springer,', 'First International Conference on Data Engineering and Communication Technology (ICDECT) ', 'PUNE', '2018-01-01', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'International Conference on Data Engineering and Communication Technology (pp. 343-357). Springer, Singapore.', 'NA'),
(40001054, 'Enhancing the Study of Landslide Prone Area through Supervised Analysis: A Case Study of Varunavat Parvat, Uttarkashi, India', 'Informatics', 'Poonam Kainthura , Banasthali University', 'UPES Dehradun', 'International Conference on Advances in Computing and Communication Engineering (ICACCE-2018)', 'IEEE', 'ECE Graduate School of Engineering Paris', 'Paris, France', '2018-06-22', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', '2018 International Conference on Advances in Computing and Communication Engineering', 'NA'),
(40001059, 'Information Delivery System for Early Forest Fire Detection Using Internet of Things', 'Informatics', 'Ravi Tomar, University of Petroleum and Energy Studies, Dehradun', 'UPES Dehradun', 'ICACDS 2019', 'Springer Singapore', 'Inderprastha Engineering College, Ghaziabad, Uttar Pradesh, India', 'Ghaziabad, Uttar Pradesh, India', '2018-04-12', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'Advances in Computing and Data Sciences', 'NA'),
(40001059, 'Low-Voltage Multi-input High Trans-conductance Amplifier using Flipped Voltage Follower and its application in High Pass Filter', 'Informatics', 'Ravi Tomar, University of Petroleum and Energy Studies', 'UPES Dehradun', '2019 International Conference on Automation, Computational and Technology Management (ICACTM)', 'IEEE Xplore', 'Amity University, London', 'London', '2018-04-27', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', '2019 International Conference on Automation, Computational and Technology Management (ICACTM)', 'NA'),
(40001059, 'Comparative Analysis and Implementation of Popular Sorting Algorithm', 'Informatics', 'Ravi Tomar, University of Petroleum and Energy Studies\n, Dehradun, India', 'UPES Dehradun', 'International Conference on Advances in Engineering Science Management & Technology (ICAESMT) - 2019', 'SSRN', 'Uttaranchal University', 'Dehradun, India', '2018-03-15', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'International Conference on Advances in Engineering Science Management & Technology (ICAESMT) - 2019', 'NA'),
(40001059, 'Integration of Wit API with Python Coded Terminal Bot', 'Informatics', 'Ravi Tomar, UPES, Dehradun, India', 'UPES Dehradun', 'IEMIS 2018', 'Springer Singapore', 'UNIVERSITY OF ENGINEERING & MANAGEMENT (UEM), West Bengal, Kolkata.', 'West Bengal, Kolkata', '2018-02-23', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'Emerging Technologies in Data Mining and Information Security', 'NA'),
(40001671, 'A Comparative Analysis of various Palm print Methods for validation of human', 'Cybernetics', 'Rohit Srivastava, Sir Padampat Singhania University, Udaipur', 'UPES Dehradun', 'Second International Conference on Inventive Communication and Computational Technologies (ICICCT)', 'IEEE', 'Gnanamani Educational Group of Institutions', 'Coimbatore', '2018-04-20', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'Second International Conference on Inventive Communication and Computational Technologies (ICICCT)', 'NA'),
(40001237, 'Deep Learning based Brain MRI Segmentation Algorithms', 'Systemics', 'Roohi Sille; Dr. Piyush Chauhan; Dr. Durgansh Sharma\n\nUniversity of Petroleum & Energy Studies,\nDehradun, Uttarakhand\n', 'UPES Dehradun', 'NGCT', 'Springer CCIS', 'School of Computer Sscience, UPES, Dehradun', 'UPES', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'Communications in Computer and Information Science', 'NA'),
(40001611, 'Proof of Game (PoG): A Game Theory based Consensus Model', 'Systemics', 'Dr Adarsh Kumar,School of Computer Science, University of Petroleum and Energy Studies, Bidholi, Dehradun, India\nMr Saurabh Jain, School of Computer Science, University of Petroleum and Energy Studies, Bidholi, Dehradun, India', 'UPES Dehradun', 'International Conference on Sustainable Communication Networks and Application', 'Springer', 'Surya Engineering College', 'Erode,Tamilnadu India', 'NA', 'International', 'NA', 'Yes', '49500', 'NA', 'Springer Lecture Notes on Data Engineering and Communications Technologies. Series Editor.: Xhafa, Fatos', 'NA'),
(40001463, 'A Comprehensive Review on Face Recognition Methods and Factors Affecting Facial Recognition Accuracy', 'Systemics', 'Shahina Anwarul, UPES\nSusheela dahiya, UPES', 'UPES Dehradun', 'Second International Conference on Recent Innovations in Computing', 'LECTURE NOTES IN ELECTRICAL ENGINEERING (LNEE), SPRINGER', 'Central University of Jammu', 'Jammu & Kashmir', 'NA', 'International', 'NA', 'Yes', '3000', 'NA', 'ISI Proceedings, EI-Compendex, SCOPUS, MetaPress, Web of Science and Springerlink.', 'NA'),
(40001641, 'A Blur Classification Approach using Convolution Neural Network', 'Virtualization', 'Shamik Tiwari, University of Petroleum and Energy Studies', 'UPES Dehradun', 'Next Generation Computing Technologies, (NGCT’ 2018)', 'NA', 'School of Computer Science, UPES', 'Dehradun', '2018-11-21', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'NA', 'NA'),
(40001931, 'Impact of Assistive Technologies in Addressing Challenges in Indoor Farming: A Review', 'Informatics', 'Mongia S, University of Petroleum and Energy Studies', 'UPES Dehradun', '6 th AGRO - HORTICULTURE SUPPLY CHAIN CONFERENCE- FOOD SECURITY AND SUSTAINABLE SUPPLY CHAIN IN AGRICULTURE & HORTICULTURE', 'NA', 'University of Petroleum and Energy Studies', 'Kandoli, Dehradun', '2019-10-04', 'National', 'NA', 'No/Self Funded', 'NA', 'NA', 'NA', 'NA'),
(40001517, 'Enhanced Secure Transmission of Data in Wireless Body Area Network for Health Care Applications', 'Systemics', 'Sumit Kumar (School of Computer Science and Engineering, College of Engineering Studies University of Petroleum and Energy Studies Dehradun India)', 'UPES Dehradun', 'International Conference on Next Generation Computing Technologies', 'Springer, Singapore', 'University of Petroleum and Energy Studies', 'Dehradun', '2018-01-01', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'Smart and Innovative Trends in Next Generation Computing Technologies', 'NA'),
(40001471, 'UNMANNED AERIAL VEHICLE: VULNERABILITY TO CYBER ATTACKS', 'Applications', 'Susheela Dahiya, School of Computer Science, \nUniversity of Petroleum & Energy Studies, Dehradun\n', 'UPES Dehradun', 'International Conference on Unmanned Aerial System in Geomatics - 2019', 'Not published till now', 'IIT Roorkee', 'Greater Noida', '2019-04-06', 'International', 'NA', 'Yes', '6730', 'NA', 'Not published till now', 'NA'),
(40001714, 'Customer Segmentation using K-means Clustering', 'Informatics', 'Tushar Kansal ; Suraj Bahuguna ; Vishal Singh ; Tanupriya Choudhury', 'UPES Dehradun', '2018 International Conference on Computational Techniques, Electronics and Mechanical Systems (CTEMS)', 'IEEE', 'K.L.S. Gogte Institute of Technology,Belagavi, Karnataka, India', 'Belagavi', '2018-12-21', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', '2018 International Conference on Computational Techniques, Electronics and Mechanical Systems (CTEMS)', 'NA'),
(40001714, 'Detecting Malware & Analysing Using Sandbox Evasion', 'Informatics', 'Sajal Jain; Tanupriya Choudhury; Vivek Kumar; Praveen Kumar', 'UPES Dehradun', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'IEEE', 'SRI SAI RAM ENGINEERING COLLEGE', '\"SRI SAI RAM ENGINEERING COLLEGE Sai Leo Nagar, West Tambaram, Chennai - 600 044 Tamil Nadu. India\"', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'NA'),
(40001714, 'An efficient method for security measurement in internet of things', 'Informatics', 'Sahil Narang; Tarun Nalwa; Tanupriya Choudhury; Nirbhay Kashyap', 'UPES Dehradun', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'IEEE', 'SRI SAI RAM ENGINEERING COLLEGE', '\"SRI SAI RAM ENGINEERING COLLEGE Sai Leo Nagar, West Tambaram, Chennai - 600 044 Tamil Nadu. India\"', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'NA'),
(40001714, 'A framework for Security and protection in Internet of things (IoT) devices', 'Informatics', 'Komal Jaswal; Nirbhay Kashyap; Manmohan Singla; Tanupriya Choudhury', 'UPES Dehradun', 'Tanupriya Choudhury', 'IEEE', 'SRI SAI RAM ENGINEERING COLLEGE', '\"SRI SAI RAM ENGINEERING COLLEGE Sai Leo Nagar, West Tambaram, Chennai - 600 044 Tamil Nadu. India\"', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'NA'),
(40001714, 'A Recent Trends and Techniques of Big Data Management', 'Informatics', 'Palak Makkar; Tanupriya Choudhury; Akash Nigam; Praveen Kumar', 'UPES Dehradun', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'IEEE', 'SRI SAI RAM ENGINEERING COLLEGE', '\"SRI SAI RAM ENGINEERING COLLEGE Sai Leo Nagar, West Tambaram, Chennai - 600 044 Tamil Nadu. India\"', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'NA'),
(40001714, 'Smart Sentimental Agent Analysis through Live Streaming Data', 'Informatics', 'Pratham Sharma; Tanupriya Choudhury; A Sai Sabitha; Gaurav Raj', 'UPES Dehradun', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'IEEE', 'SRI SAI RAM ENGINEERING COLLEGE', '\"SRI SAI RAM ENGINEERING COLLEGE Sai Leo Nagar, West Tambaram, Chennai - 600 044 Tamil Nadu. India\"', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'NA'),
(40001714, 'Classification of swine flu patients using gene expression : “For a safer future”', 'Informatics', 'Jalendu Dhamija; Tanupriya Choudhury; Praveen Kumar; Arushi Tetarbe', 'UPES Dehradun', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'IEEE', 'SRI SAI RAM ENGINEERING COLLEGE', '\"SRI SAI RAM ENGINEERING COLLEGE Sai Leo Nagar, West Tambaram, Chennai - 600 044 Tamil Nadu. India\"', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'NA'),
(40001714, 'Addressing Challenges of Hadoop for BIG Data Analysis', 'Informatics', 'Rahul Khullar; Tushar Sharma; Tanupriya Choudhury; Rajat Mittal', 'UPES Dehradun', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'IEEE', 'SRI SAI RAM ENGINEERING COLLEGE', '\"SRI SAI RAM ENGINEERING COLLEGE Sai Leo Nagar, West Tambaram, Chennai - 600 044 Tamil Nadu. India\"', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'NA'),
(40001714, 'Study on H.265/HEVC against VP9 and H.264 : On Space and Time Complexity for Codecs', 'Informatics', 'Jay Sharma; Tanupriya Choudhury; Suresh Chandra Satapathy; A Sai Sabitha', 'UPES Dehradun', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'IEEE', 'SRI SAI RAM ENGINEERING COLLEGE', '\"SRI SAI RAM ENGINEERING COLLEGE Sai Leo Nagar, West Tambaram, Chennai - 600 044 Tamil Nadu. India\"', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'NA'),
(40001714, 'Classification of brain simulation using artificial intelligence, cognitive science and neuroscience', 'Informatics', 'Mohit Sharma; Rajat Mittal; Tanupriya Choudhury; Kamaraju Vishnu', 'UPES Dehradun', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'IEEE', 'SRI SAI RAM ENGINEERING COLLEGE', 'SRI SAI RAM ENGINEERING COLLEGE Sai Leo Nagar, West Tambaram, Chennai - 600 044 Tamil Nadu. India', 'NA', 'International', 'NA', 'No/Self Funded', 'NA', 'NA', 'International Conference on Communication, Computing and Internet of Things (IC3IoT)', 'NA'),
(40001714, 'Data Mining in Healthcare and Predicting Obesity.', 'Informatics', 'Dr. Tanupriya Choudhury\nDr. A Sai Sabitha\nAnant', 'UPES Dehradun', 'Tanupriya Choudhury', 'Springer AISC Series', 'JNTU Hyderabad', 'Hyderabad', 'NA', 'International', 'NA', 'Yes', '10000', 'NA', 'International Conference on Computational Intelligence and Informatics-2018(ICCII-2018)', 'NA'),
(40001714, 'Simulation of Cloud Services with Help of Storage Virtualization', 'Informatics', 'Irin Solomon, Parveen Mor, Tanupriya Choudhury and Archit Aggarwal', 'UPES Dehradun', 'Tanupriya Choudhury', 'Springer CCIS', 'UPES Dehradun', 'UPES Dehradun', 'NA', 'International', 'NA', 'Yes', '3000', 'NA', 'NGCT-2018', 'NA'),
(40001567, 'Challenges of Cyber Security in the current scenario: A Review', 'Systemics', 'Misra T., c', 'UPES Dehradun', 'International Conference on Future Computing and Communication Technology', 'NA', 'Meerut Institute of Engineering & Technology, Meerut', 'Meerut, Uttar Pradesh', '2018-12-22', 'International', 'NA', 'Yes', '11000', 'NA', 'NA', 'NA'),
(40001460, 'On Analysis and Discussion of Various Performance Parameters of Omega and Advance Omega Interconnection Network', 'Cybernetics', 'Ved Prakash Bhardwaj,\nUPES, Dehradun', 'UPES Dehradun', 'International Conference on Computing Communication and Automation (ICCCA)', 'IEEE', 'Galgotiyas University', 'Greater Noida', '2018-12-14', 'International', 'NA', 'Yes', '6000', 'NA', '2018 4th International Conference on Computing Communication and Automation (ICCCA 2018', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `socs_loginnew`
--

CREATE TABLE `socs_loginnew` (
  `sap_id` int(11) NOT NULL,
  `password` int(11) DEFAULT NULL,
  `name` varchar(28) CHARACTER SET utf8 DEFAULT NULL,
  `designation` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `school` varchar(4) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socs_loginnew`
--

INSERT INTO `socs_loginnew` (`sap_id`, `password`, `name`, `designation`, `department`, `school`) VALUES
(40000016, 40000016, 'GAGAN DEEP SINGH', 'Faculty', 'Computer Application', 'SOCS'),
(40000043, 40000043, 'NEELU JYOTI AHUJA', 'HOD', 'Systemics', 'SOCS'),
(40000095, 40000095, 'INDER SINGH', 'Faculty', 'Computer Application', 'SOCS'),
(40000118, 40000118, 'VINAY AVASTHI', 'Faculty', 'Computer Application', 'SOCS'),
(40000453, 40000453, 'NEERAJ CHUGH', 'Faculty', 'Systemics', 'SOCS'),
(40000627, 40000627, 'MANISH PRATEEK', 'Dean', '', 'SOCS'),
(40000628, 40000628, 'VISHAL KAUSHIK', 'Faculty', 'Systemics', 'SOCS'),
(40000667, 40000667, 'PRAKASH GL', 'Faculty', 'Virtualization', 'SOCS'),
(40000730, 40000730, 'HANUMAT SASTRY G', 'Faculty', 'Systemics', 'SOCS'),
(40000816, 40000816, 'AJAY RAWAT', 'Faculty', 'Informatics', 'SOCS'),
(40000843, 40000843, 'MONIT KAPOOR', 'HOD', 'Cybernetics', 'SOCS'),
(40000920, 40000920, 'SUNIL KUMAR', 'Faculty', 'Cybernetics', 'SOCS'),
(40000943, 40000943, 'ANIL KUMAR', 'Faculty', 'Informatics', 'SOCS'),
(40000950, 40000950, 'HITESH KUMAR SHARMA', 'Faculty', 'Cybernetics', 'SOCS'),
(40000987, 40000987, 'RAJEEV TIWARI', 'Faculty', 'Virtualization', 'SOCS'),
(40000993, 40000993, 'HUKAM SINGH RANA', 'Faculty', 'Informatics', 'SOCS'),
(40001054, 40001054, 'POONAM KAINTHURA', 'Faculty', 'Informatics', 'SOCS'),
(40001058, 40001058, 'JAGDISH CHANDRA PATNI', 'Faculty', 'Virtualization', 'SOCS'),
(40001059, 40001059, 'RAVI TOMAR', 'Faculty', 'Informatics', 'SOCS'),
(40001062, 40001062, 'RAVI PRAKASH', 'Faculty', 'Informatics', 'SOCS'),
(40001082, 40001082, 'PREMKUMAR CHITHARULU', 'Faculty', 'Systemics', 'SOCS'),
(40001084, 40001084, 'P SRIKANTH', 'Faculty', 'Systemics', 'SOCS'),
(40001097, 40001097, 'PANKAJ BADONI', 'Faculty', 'Virtualization', 'SOCS'),
(40001100, 40001100, 'ANKIT KHARE', 'Faculty', 'Cybernetics', 'SOCS'),
(40001107, 40001107, 'ANKIT VISHNOI', 'Faculty', 'Systemics', 'SOCS'),
(40001112, 40001112, 'AJAY PRASAD', 'HOD', 'Computer Application', 'SOCS'),
(40001116, 40001116, 'BHAGWANT SINGH', 'Faculty', 'Informatics', 'SOCS'),
(40001134, 40001134, 'KINGSHUK SRIVASTAVA', 'Faculty', 'Informatics', 'SOCS'),
(40001160, 40001160, 'AMIT AGARWAL', 'Faculty', 'Virtualization', 'SOCS'),
(40001179, 40001179, 'NIHARIKA SINGH', 'Faculty', 'Informatics', 'SOCS'),
(40001189, 40001189, 'GUNJAN CHHABRA', 'Faculty', 'Systemics', 'SOCS'),
(40001191, 40001191, 'PIYUSH CHAUHAN', 'Faculty', 'Informatics', 'SOCS'),
(40001192, 40001192, 'RASHMI SHARMA', 'Faculty', 'Systemics', 'SOCS'),
(40001198, 40001198, 'CHRISTALIN NELSON  S', 'Faculty', 'Systemics', 'SOCS'),
(40001211, 40001211, 'ABHISHEK PANDEY', 'Faculty', 'Cybernetics', 'SOCS'),
(40001237, 40001237, 'ROOHI SILLE', 'Faculty', 'Systemics', 'SOCS'),
(40001272, 40001272, 'BHUPENDRA SINGH', 'Faculty', 'Virtualization', 'SOCS'),
(40001275, 40001275, 'ALIND', 'Faculty', 'Virtualization', 'SOCS'),
(40001281, 40001281, 'JUHI AGARWAL', 'Faculty', 'Informatics', 'SOCS'),
(40001284, 40001284, 'SACHI CHOUDHARY', 'Faculty', 'Virtualization', 'SOCS'),
(40001285, 40001285, 'NILIMA SALANKAR FULMARE', 'Faculty', 'Virtualization', 'SOCS'),
(40001286, 40001286, 'HIMANSHU SAHU', 'Faculty', 'Cybernetics', 'SOCS'),
(40001287, 40001287, 'AMIT VERMA', 'Faculty', 'Informatics', 'SOCS'),
(40001308, 40001308, 'HARVINDER SINGH', 'Faculty', 'Virtualization', 'SOCS'),
(40001310, 40001310, 'KAMALPREET SINGH', 'Faculty', 'Cybernetics', 'SOCS'),
(40001326, 40001326, 'NINNI SINGH', 'Faculty', 'Informatics', 'SOCS'),
(40001334, 40001334, 'ARADHANA KUMARI SINGH', 'Faculty', 'Informatics', 'SOCS'),
(40001371, 40001371, 'DEEPAK KUMAR SHARMA', 'Faculty', 'Informatics', 'SOCS'),
(40001372, 40001372, 'ARJUN ARORA', 'Faculty', 'Cybernetics', 'SOCS'),
(40001388, 40001388, 'RICHA CHOUDHARY', 'Faculty', 'Informatics', 'SOCS'),
(40001397, 40001397, 'RAVI SHANKER SINGHAL', 'Faculty', 'Informatics', 'SOCS'),
(40001442, 40001442, 'SAURABH SHANU', 'Faculty', 'Virtualization', 'SOCS'),
(40001443, 40001443, 'AMAR SHUKLA', 'Faculty', 'Virtualization', 'SOCS'),
(40001449, 40001449, 'APURVA GUPTA', 'Faculty', 'Informatics', 'SOCS'),
(40001460, 40001460, 'VED PRAKASH BHARDWAJ', 'Faculty', 'Cybernetics', 'SOCS'),
(40001461, 40001461, 'ALOK JHALDIYAL', 'Faculty', 'Systemics', 'SOCS'),
(40001463, 40001463, 'SHAHINA ANWARUL', 'Faculty', 'Systemics', 'SOCS'),
(40001464, 40001464, 'DEEPA JOSHI', 'Faculty', 'Systemics', 'SOCS'),
(40001469, 40001469, 'AVITA KATAL', 'Faculty', 'Virtualization', 'SOCS'),
(40001470, 40001470, 'VIDYANAND MISHRA', 'Faculty', 'Systemics', 'SOCS'),
(40001471, 40001471, 'SUSHEELA DAHIYA', 'Faculty', 'Computer Application', 'SOCS'),
(40001472, 40001472, 'ANUSHREE SAH', 'Faculty', 'Virtualization', 'SOCS'),
(40001473, 40001473, 'ABHIJIT KUMAR', 'Faculty', 'Informatics', 'SOCS'),
(40001485, 40001485, 'SANDIP KUMAR CHAURASIYA', 'Faculty', 'Cybernetics', 'SOCS'),
(40001500, 40001500, 'KALPANA RANGRA', 'Faculty', 'Cybernetics', 'SOCS'),
(40001504, 40001504, 'AMBIKA AGGARWAL', 'Faculty', 'Virtualization', 'SOCS'),
(40001511, 40001511, 'ANURAG SINGH TOMAR', 'Faculty', 'Systemics', 'SOCS'),
(40001517, 40001517, 'SUMIT KUMAR', 'Faculty', 'Systemics', 'SOCS'),
(40001519, 40001519, 'SHELLY', 'Faculty', 'Virtualization', 'SOCS'),
(40001520, 40001520, 'AMBER HAYAT', 'Faculty', 'Systemics', 'SOCS'),
(40001524, 40001524, 'PARDEEP SINGH', 'Faculty', 'Cybernetics', 'SOCS'),
(40001526, 40001526, 'DHIVIYA ROSE J', 'Faculty', 'Computer Application', 'SOCS'),
(40001530, 40001530, 'AMITAVA CHOUDHURY', 'Faculty', 'Informatics', 'SOCS'),
(40001533, 40001533, 'MITALI CHUGH', 'Faculty', 'Computer Application', 'SOCS'),
(40001545, 40001545, 'SANDEEP PRATAP SINGH', 'Faculty', 'Virtualization', 'SOCS'),
(40001555, 40001555, 'DHARANI KUMAR TALAPULA', 'Faculty', 'Virtualization', 'SOCS'),
(40001557, 40001557, 'KESHAV KAUSHIK', 'Faculty', 'Systemics', 'SOCS'),
(40001567, 40001567, 'TRIPTI MISRA', 'Faculty', 'Systemics', 'SOCS'),
(40001607, 40001607, 'AMRENDRA NATH TRIPATHI', 'Faculty', 'Virtualization', 'SOCS'),
(40001611, 40001611, 'SAURABH JAIN', 'Faculty', 'Systemics', 'SOCS'),
(40001612, 40001612, 'DURGANSH SHARMA', 'Faculty', 'Cybernetics', 'SOCS'),
(40001616, 40001616, 'ANURAG JAIN', 'Faculty', 'Virtualization', 'SOCS'),
(40001617, 40001617, 'BHUPESH KUMAR DEWANGAN', 'Faculty', 'Informatics', 'SOCS'),
(40001621, 40001621, 'GAYTRI', 'Faculty', 'Cybernetics', 'SOCS'),
(40001622, 40001622, 'THIPENDRA PAL SINGH', 'HOD', 'Informatics', 'SOCS'),
(40001623, 40001623, 'PRASHANT RAWAT', 'Faculty', 'Systemics', 'SOCS'),
(40001636, 40001636, 'VARUN SAPRA', 'Faculty', 'Systemics', 'SOCS'),
(40001641, 40001641, 'SHAMIK TIWARI', 'Faculty', 'Virtualization', 'SOCS'),
(40001657, 40001657, 'SHUBHI SHARMA', 'Faculty', 'Informatics', 'SOCS'),
(40001671, 40001671, 'ROHIT SRIVASTAVA', 'Faculty', 'Cybernetics', 'SOCS'),
(40001672, 40001672, 'AMIT SINGH', 'Faculty', 'Informatics', 'SOCS'),
(40001684, 40001684, 'AHATSHAM', 'Faculty', 'Informatics', 'SOCS'),
(40001685, 40001685, 'PRAVIN DAGDEE', 'Faculty', 'Virtualization', 'SOCS'),
(40001713, 40001713, 'PUSHPENDRA KUMAR RAJPUT', 'Faculty', 'Cybernetics', 'SOCS'),
(40001714, 40001714, 'TANUPRIYA CHOUDHURY', 'Faculty', 'Informatics', 'SOCS'),
(40001724, 40001724, 'KIRAN KUMAR RAVULAKOLLU', 'Assistant Dean', '', 'SOCS'),
(40001735, 40001735, 'ADARSH KUMAR', 'Faculty', 'Systemics', 'SOCS'),
(40001740, 40001740, 'ALOK AGGARWAL', 'Faculty', 'Systemics', 'SOCS'),
(40001765, 40001765, 'LALIT KANE', 'Faculty', 'Virtualization', 'SOCS'),
(40001785, 40001785, 'DEEPSHIKHA BHARGAVA', 'Faculty', 'Informatics', 'SOCS'),
(40001793, 40001793, 'NITIKA GOENKA', 'Faculty', 'Cybernetics', 'SOCS'),
(40001799, 40001799, 'ROHIT TANWAR', 'Faculty', 'Systemics', 'SOCS'),
(40001803, 40001803, 'RAHUL KUMAR SINGH', 'Faculty', 'Informatics', 'SOCS'),
(40001814, 40001814, 'AVIRAL SHARMA', 'Faculty', 'Informatics', 'SOCS'),
(40001815, 40001815, 'CHANDRA MANI SHARMA', 'Faculty', 'Informatics', 'SOCS'),
(40001819, 40001819, 'VIVEK LOKCHAND SHAHARE', 'Faculty', 'Informatics', 'SOCS'),
(40001823, 40001823, 'BHAVANA KAUSHIK', 'Faculty', 'Systemics', 'SOCS'),
(40001824, 40001824, 'ANUJ KUMAR', 'Faculty', 'Informatics', 'SOCS'),
(40001825, 40001825, 'BIKRAM PRATIM BHUYAN', 'Faculty', 'Informatics', 'SOCS'),
(40001833, 40001833, 'ASHISH KAILASHCHANDRA SHARMA', 'Faculty', 'Informatics', 'SOCS'),
(40001855, 40001855, 'GOUTAM DATTA', 'Faculty', 'Informatics', 'SOCS'),
(40001857, 40001857, 'DHIRENDRA KUMAR SHARMA', 'Faculty', 'Cybernetics', 'SOCS'),
(40001878, 40001878, 'AKASHDEEP BHARDWAJ', 'Faculty', 'Systemics', 'SOCS'),
(40001898, 40001898, 'MRINAL GOSWAMI', 'Faculty', 'Systemics', 'SOCS'),
(40001920, 40001920, 'PRATEEK GUPTA', 'Faculty', 'Systemics', 'SOCS'),
(40001928, 40001928, 'ANUPAM SINGH', 'Faculty', 'Informatics', 'SOCS'),
(40001931, 40001931, 'SHWETA MONGIA', 'Faculty', 'Informatics', 'SOCS'),
(40001932, 40001932, 'KAUSHIK GHOSH', 'Faculty', 'Computer Application', 'SOCS'),
(40001934, 40001934, 'SUGANDHA SHARMA', 'Faculty', 'Informatics', 'SOCS'),
(40001938, 40001938, 'EKTA MANOJ UPADHYAY', 'Faculty', 'Virtualization', 'SOCS'),
(40001941, 40001941, 'SONALI VYAS', 'Faculty', 'Computer Application', 'SOCS'),
(40001952, 40001952, 'ABHIRUP KHANNA', 'Faculty', 'Virtualization', 'SOCS'),
(40001953, 40001953, 'SUDHANSHU SRIVASTAVA', 'Faculty', 'Informatics', 'SOCS'),
(40002035, 40002035, 'SUNIL GUPTA', 'Faculty', 'Systemics', 'SOCS'),
(40002037, 40002037, 'DEEPIKA KOUNDAL', 'Faculty', 'Virtualization', 'SOCS'),
(40002039, 40002039, 'SILKY GOEL', 'Faculty', 'Cybernetics', 'SOCS'),
(40002380, 40002380, 'VIRENDER KADYAN', 'Faculty', 'Informatics', 'SOCS'),
(40002381, 40002381, 'SONIA', 'Faculty', 'Systemics', 'SOCS'),
(40002388, 40002388, 'SHIV NARESH SHIVHARE', 'Faculty', 'Informatics', 'SOCS'),
(40002391, 40002391, 'GOURAV BATHLA', 'Faculty', 'Cybernetics', 'SOCS');

-- --------------------------------------------------------

--
-- Table structure for table `socs_patentdet`
--

CREATE TABLE `socs_patentdet` (
  `sap_id` bigint(20) NOT NULL,
  `title_invention` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `briefexp` text NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `grantdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socs_patentdet`
--

INSERT INTO `socs_patentdet` (`sap_id`, `title_invention`, `department`, `authors`, `affiliation`, `briefexp`, `pubdate`, `grantdate`, `puburl`) VALUES
(40001616, 'EGG', 'Systemics', 'EGG', 'EGG   ', 'EGG EGG EGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGGEGG EGG   ', '2019-04-23', '2020-04-20', '  EGG EGG '),
(40001636, 'LOL', 'Systemics', 'LOL   ', 'LOL   ', 'LOL LOL   ', '2019-04-20', 'NA', 'LOL');

-- --------------------------------------------------------

--
-- Table structure for table `socs_publication`
--

CREATE TABLE `socs_publication` (
  `sap_id` bigint(9) NOT NULL,
  `title_manu` varchar(600) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `journal` varchar(200) NOT NULL,
  `Publisher` varchar(200) NOT NULL,
  `issn` varchar(70) DEFAULT NULL,
  `indexing` varchar(40) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `issue` varchar(10) NOT NULL,
  `ppno` varchar(50) NOT NULL,
  `doi` varchar(100) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(6) NOT NULL,
  `url_manu` text NOT NULL,
  `rptlink` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socs_publication`
--

INSERT INTO `socs_publication` (`sap_id`, `title_manu`, `department`, `authors`, `affiliation`, `journal`, `Publisher`, `issn`, `indexing`, `volume`, `issue`, `ppno`, `doi`, `month`, `year`, `url_manu`, `rptlink`) VALUES
(40001179, 'Identification of Influence Propagation Metrics in Social Networks', 'Informatics', 'Niharika Singh ; Aakash Malik ; Oshin Maini ; Gaurav Rajput', 'UPES Dehradun', 'ICACTM, IEEE Explore', 'Conference', 'NA', 'SCOPUS', '0', '0', '.', '10.1109/ICACTM.2019.8776752', 'April', 2019, 'https://ieeexplore.ieee.org/abstract/document/8776752', 'NA'),
(40001878, 'Framework for Effective Threat Hunting              ', 'Systemics', 'Dr. Akashdeep Bhardwaj\r\nDr. Sam Goundar                  ', 'UPES Dehradun                        ', 'Elsevier Network Secruity Journal            ', 'Research Article', 'NA                        ', 'SCOPUS', '2019      ', ' NA    ', '15-19                                    ', '1353-4858/10                        ', 'January', 2019, 'https://www.sciencedirect.com/journal/network-security/vol/2019/issue/5                        ', ''),
(0, 'A Comparative Study of different types of CNN and highway CNN Techniques', 'Informatics', 'Aditya Kakde, Nitin Arora, Durgansh Sharma', 'UPES Dehradun', 'Global Journal of Engineering Science & Researches', 'Research Article', 'NA', 'UGC', '6', 'NA', '18-31', '10.5281/zenodo.2639265', 'April', 2019, 'https://zenodo.org/record/2639265#.XVPqn-gzbIU', 'NA'),
(40000043, 'A critical review on learning disabilities with specific reference to India: Challenges, Research Advances and Government Policies', 'Systemics', 'Monika Thapliyal, Neelu Jyothi Ahuja', 'UPES Dehradun', 'International Journal of Scientific Research in Computer Science Applications and Management Studies (IJSRCSAMS)', 'Research Article', 'NA', 'UGC', '7', 'NA', '15-20', '1', 'July', 2019, 'http://www.ijsrcsams.com/images/stories/Past_Issue_Docs/ijsrcsamsv7i4p76.pdf', 'NA'),
(40001714, 'A Gentle Review on Medical Image Processing', 'Informatics', 'Sarita\nTanupriya Choudhury\nSaurabh Mukherjee\nAnkur Sharma', 'UPES Dehradun', 'Journal of Advanced Research in Dynamical and Control Systems', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', '0', '22', 'May', 2019, 'http://jardcs.org/archivesview.php?volume=1&issue=8&page=2', 'NA'),
(40001442, 'A graph theoretic approach for modelling tiger corridor network in Central India-Eastern Ghats landscape complex, India', 'Virtualization', 'Saurabh Shanu\nJobin Idiculla\nQamar Qureshi\nYadvendradev Jhala\nAmit Aggarwal\nPriti Dimri\nSudeepto Bhattacharya', 'UPES Dehradun', 'Ecological Informatics', 'Research Article', 'NA', 'SCI', '50', 'NA', '76-85', 'ecoinf.2019.01.002', 'March', 2019, 'https://www.sciencedirect.com/science/article/pii/S1574954118301444', 'NA'),
(40001735, 'A Novel and Efficient Reader-to-Reader and Tag-to-Tag Anti-Collision Protocol', 'Systemics', 'Adarsh Kumar, Alok Aggarwal, Krishna Gopal', 'UPES Dehradun', 'IETE Journal of Research', 'Research Article', 'NA', 'SCI', '0', 'NA', 'NA', '10.1080/03772063.2018.1537815', 'NA', 0, 'https://www.tandfonline.com/doi/full/10.1080/03772063.2018.1537815', 'NA'),
(40001524, 'A Novel Approach of Virtual Machine Consolidation for Energy Efficiency and Reducing Sla Violation in Data Centers', 'Cybernetics', 'Pardeep Singh\nJyotsna Sengupta\nP.K. Suri', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '547-555', 'ISSN: 22783075', 'March', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i5/E3210038519.pdf', 'NA'),
(40001928, 'A Novel Architecture for Predicting Pneumonia Patients by using LSTM, GRU and CNN', 'Systemics', 'Nitin Arora\r\nAnupam Singh\r\nAhatsham\r\nVivek Lokchand Shahare', 'UPES Dehradun    ', 'IJEAT  ', 'Research Article', '22498958    ', 'SCOPUS', '9      ', 'NA', '4120-4126      ', '10.35940/ijeat.A1353.109119    ', 'January', 2019, 'https://www.ijeat.org/wp-content/uploads/papers/v9i1/A1353109119.pdf    ', ''),
(40001785, 'A Penalty Method Based-Spring Design optimization Using Bio-inspired Computation Approach', 'Virtualization', 'Bhargava, D.,  University of Petroleum and Energy Studies, Dehradun, India\n\nIgiri, C.P.,  Singh, Y.\nAmity University, Rajasthan, India\n', 'UPES Dehradun', 'Proceedings - 2019 Amity International Conference on Artificial Intelligence, AICAI 2019', 'Conference', 'NA', 'SCOPUS', '8701248', 'NA', '183-187', '10.1109/AICAI.2019.8701248', 'April', 2019, 'https://www.scopus.com/record/display.uri?eid=2-s2.0-85065610664&origin=resultslist&sort=plfdt-f&listId=4179132&src=s&imp=t&sid=05f2fccd8f3c589d33ebdf7fe25ffadf&sot=sl&sdt=sl&sl=0&relpos=2&citeCnt=0&searchTerm=', 'NA'),
(40001617, 'A Self-Optimization Based Virtual Machine  Scheduling to Workloads in Cloud Computing  Environment', 'Informatics', 'Bhupesh Kumar Dewangan \nAmit Agarwal \nVenkatadri M\nAshutosh Pasricha', 'UPES Dehradun', 'IJEAT', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '91-96', 'https://www.ijeat.org/download/volume-8-issue-4c/', 'March', 2019, 'https://www.ijeat.org/download/volume-8-issue-4c/', 'NA'),
(0, 'Achieving Security in Medical Scanned Images using Extended Image Steganography', 'Informatics', 'Nitin Arora, Ahatsham, Kamal Preet Singh', 'UPES Dehradun', 'International Journal of Research and Analytical Reviews', 'Research Article', 'NA', 'UGC', '5', 'NA', '362-364', 'http://doi.one/10.1729/Journal.19053', 'NA', 0, 'http://ijrar.com/upload_issue/ijrar_issue_1649.pdf', 'NA'),
(40000987, 'Air Pollution Level Prediction System', 'Virtualization', 'Rajeev Tiwari, Shuchi Upadhyay, Parv Singhal, Ujla Garg, Shefali Bisht', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE) ,ISSN: 2278-3075', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', '8-Jan', 'F12100486C19/19©BEIESP', 'April', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i6c/F12100486C19.pdf', 'NA'),
(40001058, 'Air Quality Prediction using Artificial Neural Networks', 'Virtualization', 'Jagdish Chandra Patni ; Hitesh Kumar Sharma', 'UPES Dehradun', 'IEEE', 'Conference', 'NA', 'SCOPUS', '9', 'NA', '568-572', '10.1109/ICACTM.2019.8776774', 'July', 2019, 'https://ieeexplore.ieee.org/document/8776774', 'NA'),
(40001287, 'Am-Multiplication: A Novel Multiplication Algorithm Based Binary Multiplexer', 'Informatics', 'Amit Verma\nDr. Manish Prateek', 'UPES Dehradun', 'International Journal of Recent Technology and Engineering, india', 'Research Article', '2277-3878', 'SCOPUS', '7', 'NA', '772-778', 'F2410037619/19', 'March', 2019, 'https://www.ijrte.org/download/volume-7-issue-6/ Am-Multiplication: A Novel Multiplication Algorithm Based Binary Multiplexer', 'NA'),
(40001641, 'An Analysis in Tissue Classification for Colorectal Cancer Histology Using Convolution Neural Network and Colour Models', 'Virtualization', 'shamik tiwari', 'UPES Dehradun', 'International Journal of Information System Modeling and Design (IJISMD)', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', '19-Jan', '10.4018/IJISMD.2018100101', 'November', 2018, 'https://www.igi-global.com/article/an-analysis-in-tissue-classification-for-colorectal-cancer-histology-using-convolution-neural-network-and-colour-models/220454', 'NA'),
(40001684, 'An Approach towards Real Time Smart Vehicular System Using Internet of Things', 'Informatics', '1) Ahatsham\n2) Nitin Arora\n3) Kamal Preet Singh', 'UPES Dehradun', 'International Journal of Research in Engineering, IT and Social Sciences', 'Research Article', 'NA', 'UGC', '8', 'NA', '52-56', 'http://indusedu.org/pdfs/IJREISS/IJREISS_2296_55184.pdf', 'NA', 2018, 'http://indusedu.org/pdfs/IJREISS/IJREISS_2296_55184.pdf', 'NA'),
(40001100, 'An Efficient Algorithm for Detecting and Measure the Properties of Pothole', 'Cybernetics', 'Amitava Choudhury\nRohit Ramchandani\nMohammad Shamoon\nAnkit Khare\nKeshav Kaushik', 'UPES Dehradun', 'Emerging Technology in Modelling and Graphics. Advances in Intelligent Systems and Computing', 'Conference', 'NA', 'SCOPUS', '937', 'NA', '447-457', 'https://doi.org/10.1007/978-981-13-7403-6_40', 'July', 2019, 'https://link.springer.com/chapter/10.1007/978-981-13-7403-6_40#citeas', 'NA'),
(40001898, 'An Efficient Inverter Logic in Quantum-Dot Cellular Automata for Emerging Nanocircuits', 'Systemics', 'Mrinal Goswami, Mayukh Roychoudhury, Joydeb Sarkar, Bibhash Sen and Biplab K. Sikdar', 'UPES Dehradun', 'Arabian Journal for Science and Engineering', 'Research Article', '2191-4281', 'SCI', '0', 'NA', '12-Jan', '10.1007/s13369-019-04103-2', 'September', 2019, 'https://link.springer.com/article/10.1007/s13369-019-04103-2', '1.518'),
(40001819, 'An Efficient Memory Utilization for Path Construction of a de Bruijn Graph', 'Informatics', 'VIVEK SHAHARE\nAHATSHAM\nNITIN ARORA\nNIDHI MOUJE', 'UPES Dehradun', 'Journal Advanced Science, Engineering and Medicine', 'Research Article', '2164-6627', 'SCOPUS', '0', 'NA', '-', 'Accepted but Not yet Publish', 'November', 2019, 'Accepted but Not yet Publish', 'NA'),
(40001735, 'An Efficient Simulated Annealing based Constrained Optimization Approach for Outlier Detection Mechanism in RFID-Sensor Integrated MANET', 'Systemics', 'Adarsh Kumar and Alok Aggarwal', 'UPES Dehradun', '#NAME?', 'Research Article', 'NA', 'SCOPUS', '11', 'NA', '1', '2', 'May', 2019, 'http://www.mirlabs.org/ijcisim/regular_papers_2019/IJCISIM_6.pdf', 'NA'),
(40001684, 'An Efficient System for Early Diagnosis of Breast Cancer using Support Vector Machine', 'Informatics', 'Ahatsham\nAnupam Singh\nVivek Shahare\nNitin Arora', 'UPES Dehradun', 'International Journal of Engineering and Advanced Technology', 'Research Article', '2249-8958', 'SCOPUS', '9', 'NA', '7029-7035', '10.35940/ijeat.A1626.109119', 'November', 2019, 'https://www.ijeat.org/wp-content/uploads/papers/v9i1/A1626109119.pdf', 'NA'),
(40001785, 'An Improved African Buffalo Optimization Algorithm using Chaotic Map and Chaotic-Levy flight', 'Virtualization', 'Deepshikha Bhargava\nChinwe Peace Igiri\nYudhveer Singh', 'UPES Dehradun', 'International Journal of Engineering & Technology', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', '4570-4576', '10.14419/ijet.v7i4.22726', 'NA', 0, 'https://www.sciencepubco.com/index.php/ijet/article/view/22726/13263', 'NA'),
(40001735, 'An Improved Outlier Detection Mechanism for Hierarchical Key Management in Hierarchical Mobile Ad-hoc Networks (MANETs)', 'Systemics', 'Neeraj Chugh, Saurabh Jain, Adarsh Kumar, Alok Aggarwal, Neelu Jyoti Ahuja', 'UPES Dehradun', 'International Journal of Recent Technology and Engineering (IJRTE)', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', 'NA', '3', 'August', 2019, 'https://www.ijrte.org/archive/', 'NA'),
(40001714, 'An Improved Vehicle Parking Mechanism to Reduce Parking Space Searching Time Using Firefly Algorithm and Feed Forward Back Propagation Method', 'Informatics', 'Ruby Singh, Chiranjit Dutta, Niraj Singhal and\nTanupriya Choudhury\n', 'UPES Dehradun', 'https://www.journals.elsevier.com/procedia-computer-science', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', 'N.A', '23', 'November', 2019, 'Accepted', 'NA'),
(40000043, 'An Instructive Framework of Intelligent Tutoring System for Learning Disability', 'Systemics', 'Akanksha Bisht, Anuraj Malav, Neelu Jyothi Ahuja', 'UPES Dehradun', 'International Journal of Recent Technology and Engineering (IJRTE)', 'Research Article', 'NA', 'SCOPUS', '7', 'NA', '60-66', 'https://www.ijrte.org/wp-content/uploads/papers/v7i6C/F90310476C19.pdf', 'April', 2019, 'https://www.ijrte.org/wp-content/uploads/papers/v7i6C/F90310476C19.pdf', 'NA'),
(40001799, 'An Optimized Approach for Secure Data Transmission Using Spread Spectrum Audio Steganography, Chaos Theory, and Social Impact Theory Optimizer', 'Systemics', 'Rohit Tanwar, Kulvinder Singh, Mazdak Zamani, Amit Verma, and Prashant Kumar', 'UPES Dehradun', 'Journal of Computer Networks and Communications', 'Research Article', '2090-715X', 'SCOPUS', '2019', 'NA', '1', '10.1155/2019/5124364', 'September', 2019, 'https://www.hindawi.com/journals/jcnc/2019/5124364/', 'NA'),
(40001617, 'Analysis of cardiovascular diseases using artificial neural network', 'Informatics', 'Bhupesh Kumar Dewangan \nJyotismita Talukdar \n', 'UPES Dehradun', 'IEEEXplore', 'Conference', 'NA', 'SCOPUS', '0', 'NA', '132-137', '10.1109/PDGC.2018.8745900', 'June', 2019, 'https://ieeexplore.ieee.org/document/8745900', 'NA'),
(40000043, 'Analysis of Various Light Weight Protocols in Internet of Things-A Comparative Study', 'Systemics', 'Ankit Khare, Rashmi Sharma, Neelu Jyoti Ahuja', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE)', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '138-143', 'https://www.ijitee.org/wp-content/uploads/papers/v8i6c/F12320486C19.pdf', 'April', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i6c/F12320486C19.pdf', 'NA'),
(40001082, 'AREOR:Adaptive ranking based energy efficient opportunistic routing scheme in Wireless Sensor Network', 'Systemics', 'PremkumarChithaluru\nRajeevTiwari\nKamalKumar', 'UPES Dehradun', 'COMNET', 'Research Article', 'NA', 'SCI', '162', 'NA', '13-Jan', 'https://doi.org/10.1016/j.comnet.2019.106863', 'October', 2019, 'https://www.sciencedirect.com/science/article/pii/S138912861930430X', 'NA'),
(40000043, 'Assessment of Learning Style of Learner using I2A2 Learning Style Model', 'Systemics', 'Amit Kumar, Neelu Jyothi Ahuja ', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE)', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '154-159', 'https://www.ijitee.org/wp-content/uploads/papers/v8i6c/F12350486C19.pdf', 'April', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i6c/F12350486C19.pdf', 'NA'),
(0, 'Automated Optimum Route Generator and Data Analyzer', 'Informatics', 'Nitin Arora, Somansh Garg, Varad Sant and Rohit Goyal', 'UPES Dehradun', 'International Journal of Computer Applications', 'Research Article', 'NA', 'UGC', '181', 'NA', '17-21', '10.5120/ijca2019918654', 'April', 2019, 'https://www.ijcaonline.org/archives/volume181/number48/30479-2019918654', 'NA'),
(40000987, 'Automated Parking System-Cloud and IoT based Technique', 'Virtualization', 'Rajeev Tiwari,\nHitesh Sharma', 'UPES Dehradun', 'International Journal of Engineering and Advanced Technology (IJEAT), , ISSN: 2249-8958,', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '116-123', 'D24310484C1919©BEIESP', 'April', 2019, '1.	https://www.ijeat.org/wp-content/uploads/papers/v8i4c/D24310484C19.pdf', 'NA'),
(40000987, 'AUTOMATION AND DETAILED ANALYSIS OF SUBNETTING PROBLEMS USING MATHEMATICAL MODELING', 'Virtualization', '1Deepank Dixit, 2Gautam Kumar, 3Rajeev Tiwari, 4Abhineet Anand', 'UPES Dehradun', 'International Journal of Pure and Applied Mathematics', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', '807-814', 'https://acadpubl.eu/jsi/2018-118-20/articles/20b/20.pdf', 'August', 2018, 'https://acadpubl.eu/jsi/2018-118-20/articles/20b/20.pdf', 'NA'),
(40001617, 'Autonomic Cloud Resource Management', 'Informatics', 'Bhupesh Kumar Dewangan\nAmit Agarwal\nVenkatadri M\nAshutosh Pasricha', 'UPES Dehradun', 'IEEEXplore', 'Conference', 'NA', 'SCOPUS', '0', 'NA', '138-143', '10.1109/PDGC.2018.8745977', 'June', 2019, 'https://ieeexplore.ieee.org/document/8745977', 'NA'),
(40001641, 'Blur Classification Using Segmentation Based Fractal Texture Analysis', 'Virtualization', 'shamik tiwari', 'UPES Dehradun', 'Indonesian Journal of Electrical Engineering and Informatics (IJEEI)', 'Research Article', 'NA', 'SCOPUS', '6', 'NA', '373-384', '10.11591/ijeei.v6i4.463', 'December', 2018, 'http://section.iaesonline.com/index.php/IJEEI/article/view/463', 'NA'),
(40001326, 'Bug Model Based Intelligent Recommender System with Exclusive Curriculum Sequencing for Learner-Centric Tutoring', 'Informatics', 'Ninni Singh\nNeelu Jyothi Ahuja', 'UPES Dehradun', 'International Journal of Web-Based Learning and Teaching Technologies (IJWLTT)', 'Research Article', '1548-1093', 'SCOPUS', '14', 'NA', 'NA', '10.4018/IJWLTT.2019100101', 'September', 2019, 'https://www.igi-global.com/article/bug-model-based-intelligent-recommender-system-with-exclusive-curriculum-sequencing-for-learner-centric-tutoring/234369', 'NA'),
(40001714, 'Chronic Kidney Disease using Fuzzy C-Means Clustering Analysis', 'Informatics', 'Tanupriya Choudhury\nA Sai Sabitha\nArchit Aggarwal', 'UPES Dehradun', 'IJBAN: Volume 6, Issue 3, Article 4. Special Issue Submission: Big Data and Computational Intelligence', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', '0', '24', 'March', 2019, 'Accepted', 'NA'),
(40000043, 'Cloud Computing in Libraries and Higher Education: An Innovative User-Centric Quality of Service Model', 'Systemics', 'Jolly Upadhyaya, Neelu Jyoti Ahuja, Kapil Dev Sharma ', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE)', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '160-165', 'https://www.ijitee.org/wp-content/uploads/papers/v8i6c/F12360486C19.pdf', 'April', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i6c/F12360486C19.pdf', 'NA'),
(40001189, 'Comparison and performance evaluation of human bio-field visualization algorithm', 'Systemics', 'Gunjan Chhabra, \nAjay Prasad,\nVenkatadri Marriboyina', 'UPES Dehradun', 'Archives of Physiology and Biochemistry', 'Research Article', '1381-3455 (Print) 1744-4160 (Online)', 'SCI', '125', 'NA', '12-Jan', '10.1080/13813455.2019.1680699', 'November', 2019, 'https://www.tandfonline.com/doi/full/10.1080/13813455.2019.1680699', '2.11'),
(40001530, 'Computer vision approach for phase identification from steel microstructure', 'Informatics', 'Amitava Choudhury\nRuchira Naskar\nSnehanshu Pal\nAmitava Basu mallick', 'UPES Dehradun', 'Engineering Computations', 'Research Article', 'NA', 'SCI', '36', 'NA', '1913-1933', 'https://doi.org/10.1108/EC-11-2018-0498', 'July', 2019, 'https://www.emerald.com/insight/content/doi/10.1108/EC-11-2018-0498/full/html', 'NA'),
(40001308, 'Crow Search based Load Balancing Optimization Technique in Cloud Computing Environment', 'Virtualization', 'Harvinder Singh, Sanjay Tyagi, Pardeep Kumar', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE)', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '1058-1064', 'https://www.ijitee.org/wp-content/uploads/papers/v8i9/I7787078919.pdf', 'July', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i9/I7787078919.pdf', 'NA'),
(40001878, 'Cyber security attacks on robotic platforms', 'Systemics', '1. Dr. Akashdeep Bhardwaj\n2. Dr. Sam Goundar\n3. Dr. Vinay Avasthi\n', 'UPES Dehradun', 'Elsevier Network Secruity Journal', 'Research Article', '1353-4858', 'SCOPUS', '2019', 'NA', '13-19', '10.1016/S1353-4858(19)30122-9', 'October', 2019, 'https://www.sciencedirect.com/science/article/pii/S1353485819301229', 'NA'),
(40001612, 'Data security measures using hybrid encryption technique', 'Cybernetics', 'Mr. Ankit Vishnoi\nDr. Durgansh Sharma\nDr. Manish Prateek', 'UPES Dehradun', 'IJITEE', 'Research Article', '2278-3075', 'SCOPUS', '8', 'NA', '323-325', '2278-3075', 'August', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i10S/J105808810S19.pdf', 'NA'),
(40001765, 'Depth matrix and adaptive Bayes classifier based dynamic hand gesture recognition', 'Virtualization', 'Lalit Kane, Pritee Khanna', 'UPES Dehradun', 'Pattern Recognition Letters', 'Research Article', 'NA', 'SCI', '120', 'NA', '24-30', 'https://doi.org/10.1016/j.patrec.2019.01.003', 'January', 2019, 'https://www.sciencedirect.com/science/article/abs/pii/S0167865519300042', 'NA'),
(40001617, 'Design of Self-Management Aware Autonomic Resource Scheduling Scheme in Cloud', 'Informatics', 'Bhupesh Kumar Dewangan\nAmit Agarwal\nVenkatadri M\nAshutosh Pasricha', 'UPES Dehradun', 'International Journal of Computer Information Systems and Industrial Management Applications', 'Research Article', 'NA', 'SCOPUS', '11', 'NA', '170-177', 'http://www.mirlabs.net/ijcisim/volume_11.html', 'July', 2019, 'http://www.mirlabs.net/ijcisim/volume_11.html', 'NA'),
(40001785, 'Designing an Expert System for Online Shopping Cart Management', 'Virtualization', 'Bhargava, D.\nMishra, P.\nMishra, A.\n\nUniversity of Petroleum and Energy Studies, Dehradun, India', 'UPES Dehradun', 'Proceedings - 2019 Amity International Conference on Artificial Intelligence, AICAI 2019', 'Conference', 'NA', 'SCOPUS', '8701264', 'NA', '235-238', '10.1109/AICAI.2019.8701306', 'April', 2019, 'https://www.scopus.com/record/display.uri?eid=2-s2.0-85065614355&origin=resultslist&sort=plfdt-f&listId=4179132&src=s&imp=t&sid=05f2fccd8f3c589d33ebdf7fe25ffadf&sot=sl&sdt=sl&sl=0&relpos=1&citeCnt=0&searchTerm=', 'NA'),
(40001714, 'DMAPS: An Effective and Efficient Way for the Air Purification of the Outdoors', 'Informatics', 'Tanupriya Choudhury\nPranavi Vashishtha\n', 'UPES Dehradun', 'https://www.journals.elsevier.com/procedia-computer-science', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', 'N.A', '25', 'November', 2019, 'https://www.journals.elsevier.com/procedia-computer-science', 'NA'),
(40001179, 'DNA Sequence Alignment using Dynamic Programming', 'Informatics', 'Niharika Singh ; Gaurav rajput, Yash Dixit, Aastha Sehghal', 'UPES Dehradun', 'ICICC 2019, Springer AISC', 'Conference', 'NA', 'SCOPUS', '0', 'NA', '.', '.', 'June', 2019, '.', 'NA'),
(40001567, 'Document title	Authors	Year	Source	Cited by Challenges of information security in the contemporary cyber threat perception', 'Systemics', 'Tripti Misra\nDr. Kingshuk Srivastava\nProf. Rajeshwari', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering', 'Review Article', '2278-3075', 'SCOPUS', '0', 'NA', 'Issue 10S', '10.35940/ijitee.J1060.08810S19', 'August', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i10S/J106008810S19.pdf', 'NA'),
(40001714, 'E-Commerce Delivery Routing System Using Bellman-Held-Karp Algorithm', 'Informatics', 'Sugandh Agarwal, Naman Jain, Tanupriya Choudhury, Utkarsh Vikram Singh and Ravi Tomar', 'UPES Dehradun', 'Springer', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', 'NA', '26', 'October', 2019, 'Accepted and presented', 'NA'),
(40001545, 'EARMGA and Apriori Algorithm Performance Evaluation for Association Rule Mining', 'Virtualization', 'Sandeep Pratap Singh & Dharani Kumar Talapula(Department of Virtualization,SoCS)', 'UPES Dehradun', 'IJEAT', 'Research Article', '22498958', 'SCOPUS', '0', 'NA', '6982-6987', '10.35940/ijeat.A2144.109119', 'October', 2019, 'https://www.ijeat.org/wp-content/uploads/papers/v9i1/A2144109119.pdf', 'NA'),
(40001533, 'Effect of knowledge management on software product experience with mediating effect of perceived software process improvement: An empirical study for Indian software industry', 'Applications', '1. Mitali Chugh, School of Computer Science, The University of Petroleum & Energy Studies, India.\n 2.Nitin Chanderwal, Indian Institute of Management (IIM) Shillong, India\n3. Rajesh Upadhyay, Department of Management, College of Engineering Roorkee, India\n4. Devendra Kumar Punia\nManagement Development Institute, India', 'UPES Dehradun', 'Journal of Information Science', 'Research Article', 'NA', 'SCI', '0', 'NA', 'published online', 'https://doi.org/10.1177/0165551519833610', 'NA', 0, 'https://journals.sagepub.com/eprint/ribM8PICvdrBpPKtPUY9/full', 'NA'),
(40001714, 'Effective E-Healthcare System- Cache Invalidation Mechanisms for Wireless Data Access in Mobile Cloud Computing (010218-092911)', 'Informatics', 'Harshit Sinha\nTanupriya Choudhury\nPraveen Kumar\nGaurav Raj\n', 'UPES Dehradun', 'International Journal of Big Data and Analytics in Healthcare Volume 3 • Issue 2 • July-December 2018', 'Research Article', 'NA', 'UGC', '0', 'NA', '0', 'DOI: 10.4018/IJBDAH.2018070102', 'January', 2019, 'https://www.igi-global.com/article/effective-e-healthcare-system/223164', 'NA'),
(0, 'Efficient Image Retrieval through Hybrid Feature Set and Neural Network', 'Informatics', 'Nitin Arora, Alaknanda Ashok, Shamik Tiwari', 'UPES Dehradun', 'International Journal of Image, Graphics and Signal Processing', 'Research Article', 'NA', 'SCOPUS', '11', 'NA', '44-53', '10.5815/ijigsp.2019.01.05', 'January', 2019, 'http://www.mecs-press.org/ijigsp/ijigsp-v11-n1/IJIGSP-V11-N1-5.pdf', 'NA'),
(0, 'Efficiently Data Management using modified B-Tree Algorithm', 'Informatics', 'Nitin Arora, Nikhil Srivastava, Sai Sagar Peri, Sumit Kumar, Alaknanda Ashok', 'UPES Dehradun', 'Global Journal of Engineering Science & Researches', 'Research Article', 'NA', 'UGC', '6', 'NA', '158-163', '10.5281/zenodo.2548927', 'January', 2019, 'http://www.gjesr.com/Issues%20PDF/Archive-2019/January-2019/15.pdf', 'NA'),
(40001326, 'Empirical Analysis of Explicating the Tacit Knowledge Background, Challenges and Experimental findings', 'Informatics', 'Ninni Singh\nNeelu Jyothi Ahuja', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '4559-4568', '10.35940/ijitee.J9850.0881019', 'August', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i10/J98500881019.pdf', 'NA'),
(40001617, 'Energy-Aware Autonomic Resource Scheduling Framework for Cloud', 'Informatics', 'Bhupesh Kumar Dewangan\nAmit Agarwal\nVenkatadari M\nAshutosh Pasricha', 'UPES Dehradun', 'International Journal of Mathematical, Engineering and Management Sciences', 'Research Article', 'NA', 'SCOPUS', '4', 'NA', '41-55', 'https://doi.org/10.26438/ijmems', 'NA', 0, 'http://www.ijmems.in/assets/4-ijmems-18-234-vol.-4%2c-no.-1%2c-41%e2%80%9355%2c-2019.pdf', 'NA'),
(40001281, 'Energy-Efficient Clustering with Multiple Sink (Eecms) in Wireless Body Area Network', 'Informatics', 'Juhi Agrawal, Shelly and Dr. Monit Kapoor', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE)', 'Research Article', '2278-3075', 'SCOPUS', '8', 'NA', '2363-2370', '10.35940/ijitee.L3403.1081219', 'October', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i12/L34031081219.pdf', 'NA'),
(40001517, 'Enhanced secure transmission of data in WBAN with predictive model for health care applications', 'Systemics', 'Sumit Kumar*, Anurag Singh Tomar, Sandip K. Chaurasiya', 'UPES Dehradun', 'Intelligent Decision Technologies', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', '8-Jan', '10.3233/IDT-170182', 'March', 2019, 'https://content.iospress.com/articles/intelligent-decision-technologies/idt170182', 'NA'),
(40000043, 'Evaluating User Expectations and Quality of Service: A Novel Approach to Understanding Cloud Services', 'Systemics', 'Jolly Upadhyaya, Neelu Jyothi Ahuja, Kapil Dev Sharma', 'UPES Dehradun', 'International Journal of Recent Technology and Engineering (IJRTE)', 'Research Article', 'NA', 'SCOPUS', '7', 'NA', '382-385', 'ES206 9017519/19©BEIESP', 'January', 2019, 'https://www.ijrte.org/wp-content/uploads/papers/v7i5s2/ES2069017519.pdf', 'NA'),
(40001616, 'Evolution of Computing-Mainframe to Cloud: A Systematic Study', 'Virtualization', 'Anurag Jain\nBhupesh Kumar Dewangan\nNitin Arora\nPrashant Rawat\nRajneesh Kumar', 'UPES Dehradun', 'International Journal of Scientific Research in Computer Science Applications and Management Studies', 'Review Paper', 'NA', 'UGC', '7', 'NA', '6-Jan', '2319-1953', 'NA', 0, 'http://www.ijsrcsams.com/images/stories/Past_Issue_Docs/ijsrcsamsv7i4p143.pdf', 'NA'),
(40001713, 'Exploration in adaptiveness to achieve automated fault recovery in self-healing software systems: A review', 'Cybernetics', 'Pushpendra Kumar Rajput and Geeta Sikkaa', 'UPES Dehradun', 'Intelligent Decision Technologies', 'Research Article', '1875-8843', 'SCOPUS', '13', 'NA', '329-341', '10.3233/IDT-180114', 'September', 2019, 'https://content.iospress.com/articles/intelligent-decision-technologies/idt180114', 'NA'),
(0, 'Facial Recognition System for Class Room Attendance using Convolutional Neural Network Technique', 'Informatics', 'Nitin Arora, Prashant Rawat, Bhupesh Kumar Dewangan, Anurag Jain', 'UPES Dehradun', '” International Journal of Research in Engineering, IT and Social Science', 'Research Article', 'NA', 'UGC', '8', 'NA', '39-42', 'http://indusedu.org/pdfs/IJREISS/IJREISS_2261_22923.pdf', 'NA', 0, 'http://indusedu.org/pdfs/IJREISS/IJREISS_2261_22923.pdf', 'NA'),
(40001878, 'Framework to Define the Relationship between Cyber Security and Cloud Performanc', 'Systemics', 'Dr. Akashdeep Bhardwaj,\nUniversity of Petroleum and Energy Studies, Dehradun, India\nDr. Sam Goundar\nThe University of the South Pacific, Suva, Fiji Islands', 'UPES Dehradun', 'Elsevier Computer Fraud & Security', 'Research Article', 'NA', 'SCOPUS', '2019', 'NA', '12', 'https://doi.org/10.1016/S1361-3723(19)30020-X', 'NA', 0, 'https://www.sciencedirect.com/science/article/pii/S136137231930020X', 'NA'),
(40001189, 'Future Trends of Artificial Intelligence in Human Biofield', 'Systemics', 'GUNJAN CHHABRA, \nAJAY PRASAD, \nVENKATADRI MARRIBOYINA', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE)', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', 'NA', '4', 'August', 2019, 'NA', 'NA'),
(40001785, 'Gamification in Education: A Cognitive Psychology Approach to Cooperative and Fun Learning', 'Virtualization', 'Bhargava, D.\nUniversity of Petroleum and Energy Studies, Dehradun, India\n\nDemkah, M.\nFaculty of Sustainable Development and Engineering, Universite des Mascareignes, Mauritius\n\n', 'UPES Dehradun', 'Proceedings - 2019 Amity International Conference on Artificial Intelligence, AICAI 2019', 'Conference', 'NA', 'SCOPUS', '8701264', 'NA', '170-174', '10.1109/AICAI.2019.8701264', 'April', 2019, 'https://www.scopus.com/record/display.uri?eid=2-s2.0-85065623919&origin=resultslist&sort=plfdt-f&listId=4179132&src=s&imp=t&sid=05f2fccd8f3c589d33ebdf7fe25ffadf&sot=sl&sdt=sl&sl=0&relpos=0&citeCnt=0&searchTerm=', 'NA'),
(40001058, 'Hierarchical Load Balancing Model by Optimal Resource Utilization', 'Virtualization', 'Jagdish Chandra Patni', 'UPES Dehradun', 'International Journal of Business Analytics', 'Research Article', 'NA', 'SCI', '0', 'NA', 'NA', '1', 'June', 2019, 'igiglobal.com', 'NA'),
(40000987, 'Homomorphic Encryption over Databases.', 'Virtualization', 'Jayakrishnan Ashok, K. N. Dheeraj, Chaitanya Subhedar, Rajeev Tiwari (UPES)', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE), ISSN: 2278-3075', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '1983-1090', 'G5854058719 & Sciences Publication /19©BEIESP', 'June', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i8/G5854058719.pdf', 'NA'),
(40001815, 'Human Action Recognition using Rule based Fuzzy Motion Feature Templates', 'Informatics', 'Chandra Mani Sharma, Alaknanda Ashok, Alok Kumar Singh Kushwaha', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering', 'Research Article', '2278-3075', 'SCOPUS', '9', 'NA', '4695-4700', '10.35940/ijitee', 'November', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v9i1/A4855119119.pdf', 'NA'),
(40001058, 'Image Quality Enhancement in C Programming', 'Virtualization', 'Shishir Goyal ; Shivansh Thapliyal ; Siddharth Sharma ; Souradeep Banerjee ; Jagdish Chandra Patni', 'UPES Dehradun', 'IEEE', 'Conference', 'NA', 'SCOPUS', '1', 'NA', '637-641', '10.1109/AICAI.2019.8701235', 'February', 2019, 'https://ieeexplore.ieee.org/document/8701235', 'NA'),
(0, 'Image to Text conversion in Foreign Language using Document Image Processing Technique', 'Informatics', 'Rishabh Jain, Satyam Gupta, Shahzeb Rizvi, Nitin Arora', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering', 'Review Article', '2278-3075', 'SCOPUS', '9', 'NA', 'NA', '5', 'November', 2019, 'Not published yet', 'NA'),
(40001326, 'Implementation and Evaluation of Intelligence Incorporated Tutoring System', 'Informatics', 'Ninni Singh\nNeelu Jyothi Ahuja', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '4548-4558', '10.35940/ijitee.J9849.0881019', 'August', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i10/J98490881019.pdf', 'NA'),
(40000043, 'Implementation and Evaluation of Personalized Intelligent Tutoring System', 'Systemics', 'Ninni Singh, Amit Kumar, Neelu Jyothi Ahuja ', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE)', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '46-55', 'https://www.ijitee.org/wp-content/uploads/papers/v8i6c/F12180486C19.pdf', 'April', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i6c/F12180486C19.pdf', 'NA'),
(40001189, 'IMPLEMENTATION OF AURA COLORSPACE VISUALIZER TO DETECT HUMAN BIOFIELD USING IMAGE PROCESSING TECHNIQUE', 'Systemics', 'Mr. GUNJAN CHHABRA,\nDr. AJAY PRASAD, \nDr. VENKATADRI MARRIBOYINA', 'UPES Dehradun', 'Journal of Engineering Science and Technology', 'Research Article', 'NA', 'SCOPUS', '14', 'NA', '892-908', '6', 'April', 2019, 'http://jestec.taylors.edu.my/Vol%2014%20issue%202%20April%202019/14_2_26.pdf', 'NA'),
(40000095, 'Implementation of Feature Based Object Identification in Bipedal Walking Robot', 'Applications', 'Rashmi Sharma , Dr. Inder Singh , Dr. Manish Prateek, Dr, Ashutosh Pasricha', 'UPES Dehradun', 'International Journal of Engineering and Advanced Technology (IJEAT)', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', '110', 'https://www.ijeat.org/wp-content/uploads/papers/v8i5', 'June', 2019, 'https://www.ijeat.org/wp-content/uploads/papers/v8i5/D6716048419.pdf', 'NA'),
(40001616, 'Implementation of Various Load-Balancing Approaches for Cloud Computing Using CloudSim', 'Virtualization', 'Minakshi Sharma\nRajneesh Kumar\nAnurag Jain', 'UPES Dehradun', 'Journal of Computational and Theoretical Nanoscience', 'Research Article', '1546-1955', 'SCOPUS', '16', 'NA', '3974-3980', '10.1166/jctn.2019.8280', 'September', 2019, 'http://www.aspbs.com/ctn/', 'NA'),
(40000095, 'Incorporating Forgetting Mechanism in Q-learning Algorithm for Locomotion of Bipedal Walking Robot', 'Applications', 'Rashmi Sharma , Dr. Inder Singh , Deepak Bharadwaj , Dr. Manish Prateek', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering(IJITEE)Volume-8 Issue-7', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', '1782', 'https://www.ijitee.org/wp-content/uploads/papers/v8i7/G5312058719', 'May', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i7/G5312058719.pdf', 'NA'),
(40000043, 'Integration of Hypermedia in e-learning environment: The impact, characteristics based categorization and Recommendations', 'Systemics', 'Akanksha Bisht, Neelu Jyothi Ahuja', 'UPES Dehradun', 'International Journal of Modern Electronics and Communication Engineering (IJMECE)', 'Research Article', 'NA', 'UGC', '6', 'NA', '48-51', 'http://www.ijmece.org/current_issue/IJMECE180913.pdf', 'September', 2018, 'http://www.ijmece.org/current_issue/IJMECE180913.pdf', 'NA'),
(40001308, 'IoT based real time road traffic monitoring and tracking system for hilly regions', 'Virtualization', 'Harvinder Singh, Dharani Kumar Talapula, Alind', 'UPES Dehradun', 'International Journal of Engineering and Advanced Technology (IJEAT)', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '2199-2205', 'https://www.ijeat.org/wp-content/uploads/papers/v8i5/E7447068519.pdf', 'June', 2019, 'https://www.ijeat.org/wp-content/uploads/papers/v8i5/E7447068519.pdf', 'NA'),
(40000043, 'Machine Learning Techniques for Effective Facilitation of Teaching and Learning: A narrative review', 'Systemics', 'Anuraj Malav, Neelu Jyothi Ahuja\n', 'UPES Dehradun', 'i-manager\'s Journal on Computer Science', 'Research Article', 'NA', 'UGC', '6', 'NA', '33-38A', 'https://doi.org/10.26634/jcom.6.2.15032', 'August', 2019, 'http://www.imanagerpublications.com/article/15032/', 'NA'),
(40001617, 'Macro: Cost-Oriented Autonomic Resource Management for Cloud Computing', 'Informatics', 'Bhupesh Kumar Dewangan\nAmit Agarwal\nVenkatadri M\nAshutosh Pasricha', 'UPES Dehradun', 'VJR', 'Research Article', 'NA', 'SCOPUS', '8', '1', '106-115', 'http://vips.edu/wp-content/uploads/2019/07/9.pdf', 'July', 2019, 'http://vips.edu/wp-content/uploads/2019/07/9.pdf', 'NA'),
(40001714, 'Modification of Weiler-Atherton Algorithm to Address Loose Polygons', 'Informatics', 'Pankaj Badoni,Tanuj Joshi,Tanupriya Choudhury.', 'UPES Dehradun', 'Journal of Scientific and Industrial Research (JSIR)', 'Research Article', 'NA', 'SCI', '0', 'NA', 'N.A', '27', 'November', 2019, 'Accepted', 'NA'),
(0, 'Modified Local Binary Pattern Scheme using Row, Column and Diagonally aligned Pixel’s Intensity Pattern', 'Informatics', 'Nitin Arora, Alaknanda Ashok, Shamik Tiwari', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '771-779', 'https://www.ijitee.org/wp-content/uploads/papers/v8i5/D2797028419.pdf', 'March', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i5/D2797028419.pdf', 'NA'),
(0, 'Multi Spectral Classification and Recognition of Breast Cancer and Pneumonia', 'Informatics', 'Aditya Kakde, Nitin Arora, Durgansh Sharma', 'UPES Dehradun', 'Polish Journal of Medical Physics and Engineering', 'Research Article', '1898-0309', 'SCOPUS', '4', 'NA', 'NA', '7', 'December', 2019, 'not generated yet', 'NA'),
(40001607, 'Multi-Focus Image Fusion using Non-Local Mean Filtering and Stationary Wavelet Transform', 'Virtualization', 'Kapil Joshi, N.K.Joshi, Manoj Diwakar, A.N. Tripathi, Himanshu Gupta', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE)', 'Research Article', '2278-3075', 'SCOPUS', '9', '1', '344-350', '10.35940/ijitee.A4123.119119', 'November', 2019, 'http://www.ijitee.org/download/volume-9-issue-1/', 'NA'),
(40001612, 'Optimal Predictive Model for FIFA WorldCup', 'Cybernetics', 'Dr. Durgansh Sharma\nMr. Vaibhava Sharma', 'UPES Dehradun', 'IJRTE', 'Research Article', '2277-3878', 'SCOPUS', '7', 'NA', '118-123', '2277-3878', 'April', 2019, 'https://www.ijrte.org/wp-content/uploads/papers/v7i6C/F90410476C19.pdf', 'NA'),
(40001928, 'Path Finder: An Artificial Intelligence Based Shortest Path', 'Informatics', 'Anupam Singh\nVivek Lokchand Shahare\nNitin Arora\nAhatsham\n\n', 'UPES Dehradun', 'IJRTE', 'Research Article', '22773878', 'SCOPUS', '8', 'NA', 'NA', '8', 'November', 2019, 'not generated yet', 'NA'),
(40000987, 'Performance Analysis of Energy Efficient Opportunistic Routing Protocols in Wireless Sensor Network', 'Virtualization', 'Premkumar Chithaluru \nRajeev Tiwari* \nand Kamal Kumar', 'UPES Dehradun', 'International Journal of Sensors, Wireless Communications and Control', 'Research Article', '2210-3287', 'SCOPUS', '9', 'NA', 'NA', '10.2174/2210327909666191026092311', 'October', 2019, 'https://benthamscience.com/journals/international-journal-of-sensors-wireless-communications-and-control/upcoming-articles/', 'NA'),
(40000987, 'Project Workflow Management: A Cloud based Solution-Scrum Console', 'Virtualization', 'Rajeev Tiwari', 'UPES Dehradun', 'International Journal of Engineering & Technology', 'Research Article', 'NA', 'SCOPUS', '7', 'NA', '2457-2462', '10.14419/ijet.v7i4.15799', 'December', 2018, 'https://www.sciencepubco.com/index.php/ijet/article/view/15799/9292', 'NA'),
(40001735, 'Proof of Game (PoG): A Game Theory based Consensus Model', 'Systemics', 'Adarsh Kumar, Saurabh Jain', 'UPES Dehradun', 'International Conference on Sustainable Communication Networks and Applications', 'Conference', 'NA', 'SCOPUS', '0', 'NA', 'NA', '9', 'September', 2019, 'NA', 'NA'),
(0, 'Randomization Technique for Designing of Substitution Box in Data Encryption Standard Algorithm', 'Informatics', 'Nilima S., Alind, Nitin Arora\n', 'UPES Dehradun', 'International Journal of Mathematical Sciences and Computing', 'Research Article', 'NA', 'SCOPUS', '3', 'NA', '27-36', '10.5815/ijmsc.2019.03.03', 'July', 2019, 'http://mecs-press.org/ijmsc/v5n3.html', 'NA'),
(40000950, 'Real Time Activity Logger: a User Activity Detection System', 'Cybernetics', 'Hitesh Kumar Sharma\nIshu Khanchi', 'UPES Dehradun', 'IJEAT', 'Research Article', '2249 – 8958', 'SCOPUS', '0', 'NA', 'NA', 'https://www.ijeat.org/download/volume-9-issue-1/', 'October', 2019, 'https://www.ijeat.org/download/volume-9-issue-1/', 'NA'),
(40001684, 'Real Time Human Activity Recognition using Smart Phone', 'Informatics', 'Ahatsham\nShubhi Jain\nVivek Shahare\nNitin Arora\nShanay Rab', 'UPES Dehradun', 'Advanced Science, Engineering and Medicine', 'Research Article', '2164-6627', 'SCOPUS', '0', 'NA', 'NA', '10', 'December', 2019, 'NA', 'NA'),
(40001714, 'Real-Time Recognition of Malignant Skin Lesions using Ensemble Modeling', 'Informatics', 'Tanupriya Choudhury\nVikas kumar', 'UPES Dehradun', 'Journal of Scientific and Industrial Research (JSIR)', 'Research Article', 'NA', 'SCI', '0', 'NA', '148-153', '28', 'March', 2019, 'http://nopr.niscair.res.in/handle/123456789/45947', 'NA'),
(40001714, 'Redundant Iaas Cloud Selection With Consideration Of Multi Criteria Decision Analysis', 'Informatics', 'Tanupriya Choudhury\nNaveen Chauhan\nRajeev Agrawal\nKanika Garg', 'UPES Dehradun', 'https://www.journals.elsevier.com/procedia-computer-science', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', 'N.A', '29', 'November', 2019, 'Accepted', 'NA'),
(40001938, 'Research on Engineering Students behavioral analysis for focused aspirations', 'Virtualization', 'Dr. Ekta Upadhyay', 'UPES Dehradun', 'International Journal of Engineering and Advanced Technology (IJEAT)', 'Research Article', '2249 – 8958', 'SCOPUS', '9', 'NA', '227-231', '1)	https://www.ijeat.org/wp-content/uploads/papers/v9i1/A1127109119.pdf', 'October', 2019, '1)	https://www.ijeat.org/wp-content/uploads/papers/v9i1/A1127109119.pdf', 'NA'),
(40001785, 'Rock Hyrax intelligent optimisation algorithm: an exploration for Web 3.0 domain selection', 'Virtualization', 'B. Suresh Kumar\nDeepshikha Bhargava\nArpan Kumar Kar\nChinwe Peace Igiri', 'UPES Dehradun', 'Int. J. Advanced Intelligence Paradigms', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', '-', '10.1504/IJAIP.2018.10015437', 'NA', 0, 'http://www.inderscience.com/info/ingeneral/forthcoming.php?jcode=ijaip', 'NA'),
(40001308, 'Scheduling in Cloud Computing Environment using Metaheuristic Techniques: A Survey', 'Virtualization', 'Harvinder Singh, Sanjay Tyagi, Pardeep Kumar', 'UPES Dehradun', 'Advances in Intelligent Systems and Computing book series (AISC)', 'Research Article', 'NA', 'SCOPUS', '937', 'NA', '753-763', 'https://link.springer.com/chapter/10.1007/978-981-13-7403-6_66', 'July', 2019, 'https://link.springer.com/chapter/10.1007/978-981-13-7403-6_66', 'NA'),
(40001617, 'Self-characteristics based Energy-efficient Resource scheduling for Cloud', 'Informatics', 'Bhupesh Kumar Dewangan\nAmit Agarwal\nVenkatadri M\nAshutosh Pasricha', 'UPES Dehradun', 'Procedia Compter Science ELSEVIER', 'Conference', 'NA', 'SCOPUS', '152', 'NA', '204-211', 'https://doi.org/10.1016/j.procs.2019.05.044', 'May', 2019, 'https://www.sciencedirect.com/science/article/pii/S1877050919306969', 'NA'),
(40000950, 'Sentiment Analysis using Python', 'Cybernetics', 'Hitesh Kumar Sharma', 'UPES Dehradun', 'IJRAR', 'Research Article', '2348-1269', 'UGC', '0', 'NA', 'NA', '11', 'October', 2019, 'www.ijrar.org', 'NA'),
(0, 'Similar image retrieval based on texture feature vector using Local Octal and Local Hexadecimal Pattern and comparison with Local Binary Pattern', 'Informatics', 'Nitin Arora, Alaknanda Ashok, Shamik Tiwari', 'UPES Dehradun', 'JOURNAL OF MECHANICS OF CONTINUA AND MATHEMATICAL SCIENCES', 'Review Article', '2454 -7190', 'SCOPUS', '14', 'NA', '558-570', 'https://doi.org/10.26782/jmcms.2019.08.00046', 'August', 2019, 'http://www.journalimcms.org/journal/similar-imageretrieval-based-on-texture-feature-vector-using-local-octal-and-local-hexadecimal-pattern-and-comparison-with-local-binary-pattern/', 'NA'),
(40001617, 'SLA-BASED AUTONOMIC CLOUD RESOURCE MANAGEMENT FRAMEWORK BY ANTLION OPTIMIZATION ALGORITHM', 'Informatics', 'Bhupesh Kumar Dewangan\nAmit Agarwal\nVenkatadri M\nAshutosh Pasricha', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE)', 'Research Article', 'NA', 'SCOPUS', '8', '4', '119-123', 'https://www.ijitee.org/wp-content/uploads/papers/v8i4/D2659028419.pdf', 'February', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i4/D2659028419.pdf', 'NA'),
(40001819, 'Smart Home Automation Tool for Energy Conservation', 'Informatics', 'VIVEK SHAHARE\nNITIN ARORA\nAHATSHAM\nANUPAM SINGH\nNIDHI MOUJE', 'UPES Dehradun', 'International Journal of Recent Technology and Engineering (IJRTE)', 'Research Article', ':2277-3878', 'SCOPUS', '8', 'NA', 'NA', 'Accepted but Not yet Publish', 'November', 2019, 'http://ijrte.org/download/volume-8-issue-4/', 'NA'),
(40001928, 'Smart Home Automation Tool for Energy Conversation', 'Informatics', 'Vivek Lokchand Shahare\nAnupam Singh\nAhatsham \nNitin Arora', 'UPES Dehradun', 'IJRTE', 'Research Article', '2277-3878', 'SCOPUS', '8', 'NA', 'not yet', '12', 'November', 2019, 'not yet generated', 'NA'),
(40001724, 'State-of-the-Art: A Systematic Literature Review on Image Segmentation in Latent Fingerprint Forensics', 'Informatics', 'Megha Chhabra*, Manoj Kumar Shukla and Kiran Kumar Ravulakollu', 'UPES Dehradun', 'Recent Patents on Computer Science', 'Research Article', 'NA', 'SCOPUS', '12', 'NA', '1', 'https://doi.org/10.2174/2213275912666190429153952', 'March', 2019, 'http://www.eurekaselect.com/171900', 'NA'),
(40001524, 'Study of various approaches for VM Placement optimization in Data Centers', 'Cybernetics', 'Pardeep Singh, Research Scholar, Department of Computer science, Punjabi University, Patiala, Punjab, India.\nJyotsna Sengupta, Professor, Department of Computer science, Punjabi University, Patiala, Punjab, India.\nP.K. Suri,Ex. Professor, Department of Computer Science, Kurukshetra University, Kurukshetra, India.', 'UPES Dehradun', 'International Journal of Scientific Research in Computer Science Applications and Management Studies', 'Review Paper', 'NA', 'UGC', '7', 'NA', 'NA', 'http://www.ijsrcsams.com/images/stories/Past_Issue_Docs/ijsrcsamsv7i6p130.pdf', 'November', 2018, 'http://www.ijsrcsams.com/images/stories/Past_Issue_Docs/ijsrcsamsv7i6p130.pdf', 'NA'),
(40001724, 'Surface Corrosion Grade Classification using Convolution Neural Network', 'Informatics', 'Sanjay Kumar Ahuja, Manoj Kumar Shukla, Kiran Kumar Ravulakollu', 'UPES Dehradun', 'International Journal of Recent Technology and Engineering', 'Blue Eyes Intell', '2277-3878', 'SCOPUS', '8', '3', '7645-7649', '10.35940/ijrte.C6196.098319', 'Sep', 2019, 'http://dx.doi.org/10.35940/ijrte.C6196.098319', 'NA'),
(40001504, 'Survey on Scheduling Algorithms for Multiple Workflows in Cloud Computing Environment', 'Virtualization', '1. Ms. Ambika Aggarwal\n2. Dr. Priti Dimri\n3. Dr. Amit Agarwal\n\n\n\n', 'UPES Dehradun', 'International Journal of Computer Sciences and Engineering', 'Review Paper', 'NA', 'UGC', '7', 'NA', '565-570', 'https://doi.org/10.26438/ijcse/v7i6.565570', 'June', 2019, 'https://www.ijcseonline.org/ijcse_search.php?txtsearch=Survey+on+Scheduling+Algorithms+for+Multiple+Workflows+in+Cloud+Computing+Environment&submit=Search', 'NA'),
(40000016, 'Swarm Intelligence based efficient routing algorithm for platooning in VANET through Ant Colony Optimization', 'Applications', 'Gagan Deep Singh;\nDr. Manish Prateek;\nDr. Hanumat Sastry G', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering(TM)', 'Research Article', 'NA', 'SCOPUS', '8', 'NA', '1238-1244', 'I7888078919/19©BEIESP', 'July', 2019, 'https://www.scopus.com/record/display.uri?eid=2-s2.0-85070199351&origin=resultslist&sort=plf-f&src=s&sid=d408de076b28245eeaebd8913b2c82f9&sot=autdocs&sdt=autdocs&sl=18&s=AU-ID%2857199952347%29&relpos=0&citeCnt=0&searchTerm=', 'NA'),
(40001287, 'T-NOT Gate : A Novel Circuit based on', 'Informatics', 'Amit Verma\nDr. Manish Prateek', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering, India', 'Research Article', '2278-3075', 'SCOPUS', '8', 'NA', '666-671', 'D2823028419/19', 'February', 2019, 'https://www.ijitee.org/download/volume-8-issue-4/ T-NOT Gate : A Novel Circuit based on Ternary Logic', 'NA'),
(40001281, 'Temperature Aware Routing Protocol in the field of Wireless Body Sensor Network', 'Informatics', 'Juhi Agrawal,Shelly', 'UPES Dehradun', 'International Journal of Engineering and Advanced Technology', 'Research Article', '2249 – 8958', 'SCOPUS', '9', 'NA', '2980-2987', '10.35940/ijeat.A1340.109119', 'October', 2019, 'https://www.ijeat.org/wp-content/uploads/papers/v9i1/A1340109119.pdf', 'NA'),
(40001533, 'The effect of knowledge management on perceived software process improvement Mediating effects of critical success factors and moderating effect of the use of information technology', 'Applications', 'Chugh, M., Chanderwal, N., Mishra, A. and Punia, D.', 'UPES Dehradun', 'Vine Journal of Information and Knowledge Management Systems', 'Research Article', '2059-5891', 'ABDC', '49', 'NA', '546-567', '10.1108/VJIKMS-11-2018-0106', 'November', 2019, 'https://www.emerald.com/insight/content/doi/10.1108/VJIKMS-11-2018-0106/full/html', 'NA'),
(40001189, 'Track Your Parking Lot with the help of Sensors', 'Systemics', 'Parul Madan, Satya Prakash Upadhyay, Paravjot Singh, Rashmi Sharma and Gunjan Chhabra ', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering', 'Research Article', '2278-3075', 'SCOPUS', '8', 'NA', '4269-4274', '10.35940/ijitee.K2467.0981119', 'September', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i11/K24670981119.pdf', 'NA');
INSERT INTO `socs_publication` (`sap_id`, `title_manu`, `department`, `authors`, `affiliation`, `journal`, `Publisher`, `issn`, `indexing`, `volume`, `issue`, `ppno`, `doi`, `month`, `year`, `url_manu`, `rptlink`) VALUES
(40001735, 'Trends in Existing and Emerging Cyber Threat Intelligence Platforms', 'Systemics', 'Adarsh Kumar\nKriti Sharma\nSaurabh Jain\nDeepak Sharma\nAlok Aggarwal', 'UPES Dehradun', 'International Journal of Innovative Technology and Exploring Engineering (IJITEE)', 'Research Article', '22783075', 'SCOPUS', '8', 'NA', '12', '10.35940/ijitee.L3188.1081219', 'October', 2019, 'https://www.ijitee.org/wp-content/uploads/papers/v8i12/L31881081219.pdf', 'NA'),
(40001714, 'Use of ‘A light weight secure image encryption scheme based on chaos and DNA computing’ for encrypted audio watermarking', 'Informatics', 'Bhaskar Mondal\nTanupriya Choudhury\nTarini Mondal\nDanish Ali Khan', 'UPES Dehradun', 'Int. J. Advanced Intelligence Paradigms, Vol. 13, Nos. 1/2, 2019 67', 'Research Article', 'NA', 'SCOPUS', '0', 'NA', '0', '30', 'May', 2019, 'https://www.inderscience.com/info/ingeneral/forthcoming.php?jcode=ijaip', 'NA'),
(40001310, 'User Choice-Based Secure Password Generator using Python', 'Cybernetics', 'Kamal Preet Singh1\n, Nitin Arora2\n, and Ahatsham3\n', 'UPES Dehradun', 'International Journal of Research in Engineering, IT and Social Science', 'Case Study', 'Case Study', 'UGC', '0', 'NA', '203-205', '2250-0588', 'NA', 0, 'http://www.indusedu.org/pdfs/IJREISS/IJREISS_2150_62614.pdf', 'NA'),
(40001179, '‘An Efficient Path Planning Algorithm for Networked Robots using Modified Optimization Algorithm’', 'Informatics', 'niharika singh\nmanish prateek\npoiyush chauhan', 'UPES Dehradun', 'in ‘International Journal of Innovative Technology and Exploring Engineering (IJITEE)’,', 'Research Article', '2278–3075', 'SCOPUS', '8', 'NA', '2738-2743.', '.', 'October', 2019, 'https://www.ijitee.org/download/volume-8-issue-12/', 'NA'),
(0, '“A Technique for Generating Secure Password based on Real Time Components', 'Informatics', 'Nitin Arora, Kamal Preet Singh, Ahatsham', 'UPES Dehradun', 'International Journal of Research in Engineering, IT and Social Science', 'Research Article', 'NA', 'UGC', '8', 'NA', '280-283', 'http://indusedu.org/pdfs/IJREISS/IJREISS_2116_41265.pdf', 'NA', 0, 'http://indusedu.org/pdfs/IJREISS/IJREISS_2116_41265.pdf', 'NA'),
(40001636, 'ABC', 'Systemics', 'ABD   ', 'ABC   ', 'ABC   ', 'ABC', '7777   ', 'SCI', 'ABC   ', 'ABC   ', '77   ', '77   ', 'January', 2020, 'ABC   ', 'Ensemble method for identification of Coronary Artery Disease using non (1).docx');

-- --------------------------------------------------------

--
-- Table structure for table `socs_savbookchap`
--

CREATE TABLE `socs_savbookchap` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `title_book` varchar(200) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socs_savconf`
--

CREATE TABLE `socs_savconf` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(30) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `conference` text NOT NULL,
  `publisher` text NOT NULL,
  `organiser` varchar(100) NOT NULL,
  `venue` text NOT NULL,
  `confdate` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL,
  `indexing` varchar(10) NOT NULL,
  `funding` varchar(30) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `confwebsite` text,
  `proseedingurl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socs_savpat`
--

CREATE TABLE `socs_savpat` (
  `sap_id` bigint(20) NOT NULL,
  `title_invention` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `briefexp` text NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `grantdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socs_savpub`
--

CREATE TABLE `socs_savpub` (
  `sap_id` bigint(9) NOT NULL,
  `title_manu` varchar(600) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `journal` varchar(200) NOT NULL,
  `Publisher` varchar(200) NOT NULL,
  `issn` varchar(70) DEFAULT NULL,
  `indexing` varchar(40) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `issue` varchar(10) NOT NULL,
  `ppno` varchar(50) NOT NULL,
  `doi` varchar(100) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(6) NOT NULL,
  `url_manu` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `socs_targets`
--

CREATE TABLE `socs_targets` (
  `department` text NOT NULL,
  `tenure` text NOT NULL,
  `scopuspub` int(11) NOT NULL,
  `scipub` int(11) NOT NULL,
  `conference` int(11) NOT NULL,
  `patent` int(11) NOT NULL,
  `bookch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socs_targets`
--

INSERT INTO `socs_targets` (`department`, `tenure`, `scopuspub`, `scipub`, `conference`, `patent`, `bookch`) VALUES
('Systemics', '2019', 30, 5, 5, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `soe_bookchap`
--

CREATE TABLE `soe_bookchap` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `title_book` varchar(200) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL,
  `rptlink` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soe_conference`
--

CREATE TABLE `soe_conference` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(30) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `conference` text NOT NULL,
  `publisher` text NOT NULL,
  `organiser` varchar(100) NOT NULL,
  `venue` text NOT NULL,
  `confdate` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL,
  `indexing` varchar(10) NOT NULL,
  `funding` varchar(30) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `confwebsite` text,
  `proseedingurl` text NOT NULL,
  `rptlink` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soe_patentdet`
--

CREATE TABLE `soe_patentdet` (
  `sap_id` bigint(20) NOT NULL,
  `title_invention` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `briefexp` text NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `grantdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soe_publication`
--

CREATE TABLE `soe_publication` (
  `sap_id` bigint(9) NOT NULL,
  `title_manu` varchar(600) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `journal` varchar(200) NOT NULL,
  `Publisher` varchar(200) NOT NULL,
  `issn` varchar(70) DEFAULT NULL,
  `indexing` varchar(40) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `issue` varchar(10) NOT NULL,
  `ppno` varchar(50) NOT NULL,
  `doi` varchar(100) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(6) NOT NULL,
  `url_manu` text NOT NULL,
  `rptlink` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soe_savbookchap`
--

CREATE TABLE `soe_savbookchap` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `title_book` varchar(200) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soe_savconf`
--

CREATE TABLE `soe_savconf` (
  `sap_id` bigint(10) NOT NULL,
  `title_manu` varchar(300) NOT NULL,
  `department` varchar(30) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `conference` text NOT NULL,
  `publisher` text NOT NULL,
  `organiser` varchar(100) NOT NULL,
  `venue` text NOT NULL,
  `confdate` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL,
  `indexing` varchar(10) NOT NULL,
  `funding` varchar(30) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `confwebsite` text,
  `proseedingurl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soe_savpat`
--

CREATE TABLE `soe_savpat` (
  `sap_id` bigint(20) NOT NULL,
  `title_invention` varchar(300) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `briefexp` text NOT NULL,
  `pubdate` varchar(10) NOT NULL,
  `grantdate` varchar(10) NOT NULL,
  `puburl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soe_savpub`
--

CREATE TABLE `soe_savpub` (
  `sap_id` bigint(9) NOT NULL,
  `title_manu` varchar(600) NOT NULL,
  `department` varchar(20) NOT NULL,
  `authors` text NOT NULL,
  `affiliation` text NOT NULL,
  `journal` varchar(200) NOT NULL,
  `Publisher` varchar(200) NOT NULL,
  `issn` varchar(70) DEFAULT NULL,
  `indexing` varchar(40) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `issue` varchar(10) NOT NULL,
  `ppno` varchar(50) NOT NULL,
  `doi` varchar(100) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(6) NOT NULL,
  `url_manu` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soe_targets`
--

CREATE TABLE `soe_targets` (
  `department` text NOT NULL,
  `tenure` text NOT NULL,
  `scopuspub` int(11) NOT NULL,
  `scipub` int(11) NOT NULL,
  `conference` int(11) NOT NULL,
  `patent` int(11) NOT NULL,
  `bookch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `sob_bookchap`
--
ALTER TABLE `sob_bookchap`
  ADD PRIMARY KEY (`title_manu`);

--
-- Indexes for table `sob_conference`
--
ALTER TABLE `sob_conference`
  ADD PRIMARY KEY (`title_manu`);

--
-- Indexes for table `sob_patentdet`
--
ALTER TABLE `sob_patentdet`
  ADD PRIMARY KEY (`title_invention`);

--
-- Indexes for table `sob_publication`
--
ALTER TABLE `sob_publication`
  ADD PRIMARY KEY (`title_manu`);

--
-- Indexes for table `sob_savbookchap`
--
ALTER TABLE `sob_savbookchap`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `sob_savconf`
--
ALTER TABLE `sob_savconf`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `sob_savpat`
--
ALTER TABLE `sob_savpat`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `sob_savpub`
--
ALTER TABLE `sob_savpub`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `sob_targets`
--
ALTER TABLE `sob_targets`
  ADD PRIMARY KEY (`department`(50),`tenure`(30));

--
-- Indexes for table `socs_bookchap`
--
ALTER TABLE `socs_bookchap`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `socs_conference`
--
ALTER TABLE `socs_conference`
  ADD PRIMARY KEY (`title_manu`);

--
-- Indexes for table `socs_loginnew`
--
ALTER TABLE `socs_loginnew`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `socs_patentdet`
--
ALTER TABLE `socs_patentdet`
  ADD PRIMARY KEY (`title_invention`);

--
-- Indexes for table `socs_publication`
--
ALTER TABLE `socs_publication`
  ADD PRIMARY KEY (`title_manu`);

--
-- Indexes for table `socs_savbookchap`
--
ALTER TABLE `socs_savbookchap`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `socs_savconf`
--
ALTER TABLE `socs_savconf`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `socs_savpat`
--
ALTER TABLE `socs_savpat`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `socs_savpub`
--
ALTER TABLE `socs_savpub`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `socs_targets`
--
ALTER TABLE `socs_targets`
  ADD PRIMARY KEY (`department`(50),`tenure`(30));

--
-- Indexes for table `soe_bookchap`
--
ALTER TABLE `soe_bookchap`
  ADD PRIMARY KEY (`title_manu`);

--
-- Indexes for table `soe_conference`
--
ALTER TABLE `soe_conference`
  ADD PRIMARY KEY (`title_manu`);

--
-- Indexes for table `soe_patentdet`
--
ALTER TABLE `soe_patentdet`
  ADD PRIMARY KEY (`title_invention`);

--
-- Indexes for table `soe_publication`
--
ALTER TABLE `soe_publication`
  ADD PRIMARY KEY (`title_manu`);

--
-- Indexes for table `soe_savbookchap`
--
ALTER TABLE `soe_savbookchap`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `soe_savconf`
--
ALTER TABLE `soe_savconf`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `soe_savpat`
--
ALTER TABLE `soe_savpat`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `soe_savpub`
--
ALTER TABLE `soe_savpub`
  ADD PRIMARY KEY (`sap_id`);

--
-- Indexes for table `soe_targets`
--
ALTER TABLE `soe_targets`
  ADD PRIMARY KEY (`department`(50),`tenure`(30));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
