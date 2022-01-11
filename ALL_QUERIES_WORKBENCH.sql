-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 05:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacyproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMIN_ID` int(11) NOT NULL,
  `ADMIN_USERNAME` varchar(20) DEFAULT NULL,
  `ADMIN_FNAME` varchar(20) DEFAULT NULL,
  `ADMIN_LNAME` varchar(20) DEFAULT NULL,
  `ADMIN_PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `ADMIN_USERNAME`, `ADMIN_FNAME`, `ADMIN_LNAME`, `ADMIN_PASSWORD`) VALUES
(101, 'MUNEEB0408', 'MUHAMMAD', 'MUNEEB', 'TEST123'),
(102, 'DANISH0270', 'MUHAMMAD', 'DANISH', 'TEST123'),
(103, 'ASAD0480', 'ASAD', 'ALI', 'TEST123'),
(104, 'HASAAN0296', 'HASAAN', 'NADEEM', 'TEST123');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CATEGORY_NAME` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CATEGORY_NAME`) VALUES
(301, 'Liquid/Syrup'),
(302, 'Tablet'),
(303, 'Capsules'),
(304, 'Drops'),
(305, 'Inhaler'),
(306, 'Injection'),
(307, 'Implants/Patches'),
(308, 'Soluble');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `COMPANY_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(100) DEFAULT NULL,
  `COMPANY_OFFICE` int(11) DEFAULT NULL,
  `COMPANY_BLOCK` varchar(3) DEFAULT NULL,
  `COMPANY_AREA` varchar(50) DEFAULT NULL,
  `COMPANY_CITY` varchar(50) DEFAULT NULL,
  `COMPANY_COUNTRY` varchar(50) DEFAULT NULL,
  `COMPANY_PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`COMPANY_ID`, `COMPANY_NAME`, `COMPANY_OFFICE`, `COMPANY_BLOCK`, `COMPANY_AREA`, `COMPANY_CITY`, `COMPANY_COUNTRY`, `COMPANY_PHONE`) VALUES
(9001, 'Getz Pharma', 98, 'K', 'KORANGI', 'KARACHI', 'PAKISTAN', '09284357286'),
(9002, 'Abbott Laboratories', 2, 'A', 'LANDHI', 'KARACHI', 'PAKISTAN', '09284787236'),
(9003, 'Ferozsons Laboratories', 650, 'Z', 'SITE', 'KARACHI', 'PAKISTAN', '09284759027'),
(9004, 'Searle Pakistan Limited', 600, 'A', 'SUNDAR', 'LAHORE', 'PAKISTAN', '09284756387'),
(9005, 'Pfizer Pakistan', 250, 'A', 'INDUSTRIAL ESTATE', 'FAISLABAD', 'PAKISTAN', '09284569757'),
(9006, 'Bayer Pharma', 1, 'A', 'SITE', 'KARACHI', 'PAKISTAN', '09285029337'),
(9007, 'SAMI Pharmaceuticals', 97, 'F7', 'BLUE AREA', 'ISLAMABAD', 'PAKISTAN', '01288739337'),
(9008, 'Hilton Pharma', 20, 'B', 'MODEL TOWN', 'LAHORE', 'PAKISTAN', '04288895337'),
(9009, 'Wyeth Pakistan', 624, 'H', 'JOHAR TOWN', 'LAHORE', 'PAKISTAN', '04288720947'),
(9010, 'GlaxoSmithKline', 104, 'D', 'MODEL TOWN', 'LAHORE', 'PAKISTAN', '04288790230'),
(9011, 'Novartis', 87, 'Z', 'KORANGI', 'KARACHI', 'PAKISTAN', '04288827380'),
(9012, 'Hamdard Laboratories', 1, 'A', 'NAZIMABAD', 'KARACHI', 'PAKISTAN', '04288092080'),
(9013, 'Delta Pharma', 2, 'A', 'FAKHAR-E-ALAM ROAD', 'PESHAWAR', 'PAKISTAN', '042888923230'),
(9014, 'Platinum Pharmaceuticals', 20, 'A', 'BIN QASIM', 'KARACHI', 'PAKISTAN', '04288800092'),
(9015, 'Hilton Pharma', 8, 'A', 'PROGRESSIVE PLAZA', 'KARACHI', 'PAKISTAN', '04280428302'),
(9016, 'Pharmagen', 27, '6', 'SHAHRA-E-FAISAL', 'KARACHI', 'PAKISTAN', '04280402039'),
(9017, 'Schazoo Lbaoratories', 57, 'H', 'GULBERG 3', 'LAHORE', 'PAKISTAN', '04280092292'),
(9018, 'Reckitt Benckiser', 15, 'C', 'CLIFTON', 'KARACHI', 'PAKISTAN', '04280092102'),
(9019, 'Paramount Pharmaceuticals', 209, 'A', 'BLUE AREA', 'ISLAMABAD', 'PAKISTAN', '01280409213'),
(9020, 'Qarshi Laboratories', 37, 'E', 'SHADMAN', 'LAHORE', 'PAKISTAN', '04209210213'),
(9021, 'Stanley Pharmaceuticals', 20, 'X', 'DHA COMERCIAL AREA', 'LAHORE', 'PAKISTAN', '04209209013'),
(9022, 'McOLSON LABORATORIES', 21, 'X', 'BIN QASIM', 'KARACHI', 'PAKISTAN', '04209209203'),
(9023, 'SHANGXI GUANGSHENG PHARMACEUTICALS', 201, 'Z21', 'NORTH STREET 21', 'SHANGHAI', 'CHINA', '08718281782'),
(9024, 'MERCK LTD.', 7, 'A', 'JAIL ROAD', 'QUETTA', 'PAKISTAN', '04209290753'),
(9025, 'PHARMIX LABORATORIES', 21, 'A', 'FEROZPUR ROAD', 'LAHORE', 'PAKISTAN', '04209209103'),
(9026, 'BATALA PHARMACEUTICALS', 23, 'B', 'INDUSTRIAL ESTATE', 'GUGRANWALA', 'PAKISTAN', '04209202113'),
(9027, 'FYNK PHARMACEUTICALS', 19, 'A', 'GT ROAD', 'KAKASHA KAKU', 'PAKISTAN', '04209290129'),
(9028, 'MACTER INTERNATIONAL', 216, 'F', 'SITE', 'KARACHI', 'PAKISTAN', '04209209103'),
(9029, 'NABIQASIM INDUSTRIES', 17, '21', 'KORANGI', 'KARACHI', 'PAKISTAN', '04209999203'),
(9030, 'SHAWAN PHARMACEUTICALS', 37, '1', 'NATIONAL INDUSTRIAL ZONE', 'RAWALPINDI', 'PAKISTAN', '04209091203'),
(9031, 'HIGHNOON LABORATORIES', 17, 'A', 'MULTAN ROAD', 'LAHORE', 'PAKISTAN', '04208711003'),
(9032, 'LABORATORIOS ALMIRALL', 515, 'A', 'Ronda del General Mitre', 'BARCELONA', 'SAPIN', '06081628123'),
(9033, 'LABORATORIOS ALMIRALL', 9364, 'A', 'INDUSTRIAL ESTATE SAHAB', 'AMMAN', 'JORDAN', '003081609123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `CUSTOMER_USERNAME` varchar(20) DEFAULT NULL,
  `CUSTOMER_FNAME` varchar(20) DEFAULT NULL,
  `CUSTOMER_LNAME` varchar(20) DEFAULT NULL,
  `CUSTOMER_DOB` date DEFAULT NULL,
  `CUSTOMER_GENDER` char(1) DEFAULT NULL,
  `CUSTOMER_HOUSE` int(11) DEFAULT NULL,
  `CUSTOMER_BLOCK` varchar(3) DEFAULT NULL,
  `CUSTOMER_AREA` varchar(50) DEFAULT NULL,
  `CUSTOMER_CITY` varchar(50) DEFAULT NULL,
  `CUSTOMER_COUNTRY` varchar(50) DEFAULT NULL,
  `CUSTOMER_PHONE` varchar(20) DEFAULT NULL,
  `CUSTOMER_PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `CUSTOMER_USERNAME`, `CUSTOMER_FNAME`, `CUSTOMER_LNAME`, `CUSTOMER_DOB`, `CUSTOMER_GENDER`, `CUSTOMER_HOUSE`, `CUSTOMER_BLOCK`, `CUSTOMER_AREA`, `CUSTOMER_CITY`, `CUSTOMER_COUNTRY`, `CUSTOMER_PHONE`, `CUSTOMER_PASSWORD`) VALUES
(2001, 'atifshfiq94', 'Atif', 'Shafiq', '1994-12-12', 'M', 10, 'K10', 'Railway Town', 'Karachi', 'Pakistan', '0345-4515215', 'nicefruit17'),
(2002, 'teseen995', 'Tehseen', 'Mohsin', '1995-11-23', 'M', 11, 'Y9', 'Garden Town', 'Karachi', 'Pakistan', '0315-1245152', 'redfood53'),
(2003, 'ahmadraza96', 'Ahmad', 'Raza', '1996-08-15', 'M', 15, 'E6', 'Model Town', 'Karachi', 'Pakistan', '0305-1312152', 'lushboo12'),
(2004, 'yasinali1992', 'Yasin', 'Khalid', '1992-05-16', 'M', 15, 'Y89', 'Gulberg Town', 'Karachi', 'Pakistan', '0309-15241524', 'wildgazelle70'),
(2005, 'hammadayyub', 'Hammad', 'ayyub', '1996-08-15', 'M', 19, 'O71', 'Garden Town', 'Karachi', 'Pakistan', '0303-1524875', 'bravetime56'),
(2006, 'tameem1992', 'Tameem', 'Hassan', '1992-09-15', 'M', 16, 'K18', 'Wapda Town', 'Karachi', 'Pakistan', '0310-5421548', 'lumpytooth10'),
(2007, 'ahsan1975', 'Ahsan', 'Ali', '1998-10-15', 'M', 13, 'K10', 'Gulberg Town', 'Karachi', 'Pakistan', '0312-1232154', 'jadebook57'),
(2008, 'hassanmeh990', 'Hassan', 'Mehmood', '1995-05-19', 'M', 15, 'J10', 'satellite Town', 'Karachi', 'Pakistan', '0325-3212541', 'quietbean28'),
(2009, 'Tariq1992', 'Tariq', 'gillani', '1992-02-15', 'M', 12, 'Z10', 'Wapda Town', 'Karachi', 'Pakistan', '0315-5484512', 'slowink91'),
(2010, 'mshakil', 'Shakil', 'Raza', '1994-03-16', 'M', 13, 'K10', 'Railway Town', 'Karachi', 'Pakistan', '0312-1524356', 'happybread25'),
(2011, 'StarShahid', 'Shahid', 'Abbas', '1999-04-12', 'M', 23, 'E10', 'Gulberg Town', 'Karachi', 'Pakistan', '03423-9875845', 'hotwombat57'),
(2012, 'ikarmali89', 'Ikram', 'Ali', '2000-01-19', 'M', 15, 'R10', 'Garden Town', 'Karachi', 'Pakistan', '0347-1215459', 'newcard59'),
(2013, 'Riwan12ali', 'Rizwan', 'Ali', '1995-11-15', 'M', 18, 'T10', 'Garden Town', 'Karachi', 'Pakistan', '0345-1932532', 'superwood78'),
(2014, 'husnain47', 'Husnain', 'Talat', '1993-12-11', 'M', 21, 'B10', 'Model Town', 'Karachi', 'Pakistan', '0342-2465885', 'darkbell54'),
(2015, 'talat98', 'Talat', 'Yasin', '1991-08-18', 'F', 23, 'N10', 'Model Town', 'Karachi', 'Pakistan', '0305-2536523', 'goodbrick72'),
(2016, 'yasin1999', 'Yasmin', 'Hafeez', '1999-06-15', 'F', 30, 'M10', 'satellite Town', 'Karachi', 'Pakistan', '0308-5225451', 'zanyqueen19'),
(2017, 'sidra1999', 'Sidra', 'Nabeel', '1997-05-14', 'F', 20, 'U10', 'Wapda Town', 'Karachi', 'Pakistan', '0303-5412125', 'blackpail75'),
(2018, 'khushbo1999', 'Khushbo', 'Liaqat', '1999-10-15', 'F', 48, 'Y10', 'Model Town', 'Karachi', 'Pakistan', '0301-4545854', 'murkygnu59'),
(2019, 'Sara1993', 'Sara', 'Khalid', '1993-05-12', 'F', 8, 'U10', 'Railway Town', 'Karachi', 'Pakistan', '0310-1212152', 'luckyrose97'),
(2020, 'Maryam1999', 'Maryam', 'Khalid', '1999-01-15', 'F', 16, 'I10', 'Garden Town', 'Karachi', 'Pakistan', '0323-3232123', 'dizzywire43'),
(2021, 'saira1992', 'Hafiza', 'Saira', '1992-12-16', 'F', 12, 'O10', 'Wapda Town', 'Karachi', 'Pakistan', '0322-9565596', 'hotcoral28'),
(2022, 'Farah1995', 'Farah', 'Asghar', '1995-11-18', 'F', 13, 'K10', 'Railway Town', 'Karachi', 'Pakistan', '0344-4518452', 'crazycurve61');

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `DESCRIPTION_ID` int(11) NOT NULL,
  `DESCRIPTION_DETAILS` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `description`
--

INSERT INTO `description` (`DESCRIPTION_ID`, `DESCRIPTION_DETAILS`) VALUES
(501, 'PAINKILLER'),
(502, 'DIGESTIVE TRACT'),
(503, 'ANTI-DEPRESSANT'),
(504, 'DIGESTIVE TRACT'),
(505, 'ANTIBIOTIC'),
(506, 'TONSILLITIS'),
(507, 'BRONCHITIS'),
(508, 'PNEUMONIA'),
(509, 'GONORRHEA'),
(510, 'EAR INFECTIONS'),
(511, 'NOSE INFECTIONS'),
(512, 'THROAT INFECTIONS'),
(513, 'SKIN INFECTIONS'),
(514, 'URINARY TRACT INFECTIONS'),
(515, 'BACTERIAL INFECTIONS'),
(516, 'INTESTINAL INFECTIONS'),
(517, 'RESPIRATORY INFECTIONS'),
(518, 'EYE INFECTIONS'),
(519, 'SYPHILIS'),
(520, 'PERIODONTITIS'),
(521, 'HEADACHE'),
(522, 'TOOTHACHE'),
(523, 'BACK PAIN'),
(524, 'ARTHRITIS'),
(525, 'MENSTRUAL CRAMPS'),
(526, 'FEVER'),
(527, 'INFLAMMATION');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `EMPLOYEE_FNAME` varchar(20) DEFAULT NULL,
  `EMPLOYEE_LNAME` varchar(20) DEFAULT NULL,
  `EMPLOYEE_DOB` date DEFAULT NULL,
  `EMPLOYEE_GENDER` char(1) DEFAULT NULL,
  `EMPLOYEE_HOUSE` int(11) DEFAULT NULL,
  `EMPLOYEE_BLOCK` varchar(3) DEFAULT NULL,
  `EMPLOYEE_AREA` varchar(50) DEFAULT NULL,
  `EMPLOYEE_CITY` varchar(50) DEFAULT NULL,
  `EMPLOYEE_COUNTRY` varchar(50) DEFAULT NULL,
  `EMPLOYEE_PHONE` varchar(20) DEFAULT NULL,
  `ADMIN_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `EMPLOYEE_FNAME`, `EMPLOYEE_LNAME`, `EMPLOYEE_DOB`, `EMPLOYEE_GENDER`, `EMPLOYEE_HOUSE`, `EMPLOYEE_BLOCK`, `EMPLOYEE_AREA`, `EMPLOYEE_CITY`, `EMPLOYEE_COUNTRY`, `EMPLOYEE_PHONE`, `ADMIN_ID`) VALUES
(7001, 'ali', 'murtaza', '1997-12-22', 'M', 23, 'X', 'johar town', 'lahore', 'pakistan', '0321234567', 103),
(7002, 'shah', 'ali', '1998-12-22', 'M', 22, 'X', 'wapda town', 'lahore', 'pakistan', '0321234568', 101),
(7003, 'muhammad', 'raza', '1996-12-22', 'M', 21, 'Y', 'johar town', 'lahore', 'pakistan', '0321234569', 101),
(7004, 'shumail', 'khan', '1996-11-22', 'M', 20, 'X', 'izmir town', 'lahore', 'pakistan', '0321234510', 101),
(7005, 'bilal', 'khan', '1993-12-18', 'M', 19, 'X', 'izmir town', 'lahore', 'pakistan', '0321234511', 101),
(7006, 'asad', 'bukhari', '1992-09-22', 'M', 18, 'Z', 'johar town', 'lahore', 'pakistan', '0321234512', 101),
(7007, 'haroon', 'rafaqat', '1998-04-14', 'M', 17, 'X', 'bella vista', 'lahore', 'pakistan', '0321234513', 102),
(7008, 'zeeshan', 'naeem', '1999-01-02', 'M', 16, 'R', 'bahria town', 'lahore', 'pakistan', '0321234514', 102),
(7009, 'shamraiz', 'ahmad', '1996-06-01', 'M', 15, 'S', 'bahria town', 'lahore', 'pakistan', '0321234515', 102),
(7010, 'hasaan', 'ali', '1991-12-12', 'M', 14, 'N', 'al_rehman town', 'lahore', 'pakistan', '0321234516', 102),
(7011, 'shadab', 'khan', '1989-11-08', 'M', 13, 'M', 'johar town', 'lahore', 'pakistan', '0321234517', 102),
(7012, 'muhammad', 'hafeez', '1980-12-12', 'M', 12, 'X', 'green valley', 'lahore', 'pakistan', '0321234518', 103),
(7013, 'fatima', 'khan', '1995-11-11', 'F', 11, 'X', 'bella vista', 'lahore', 'pakistan', '0321234519', 103),
(7014, 'saadia', 'khan', '1992-09-22', 'F', 10, 'Y', 'izmir town', 'lahore', 'pakistan', '0321234520', 103),
(7015, 'maham', 'ali', '1993-11-22', 'M', 9, 'X', 'johar town', 'lahore', 'pakistan', '0321234521', 103),
(7016, 'fakhar', 'zaman', '1997-12-22', 'M', 8, 'D', 'green valley', 'lahore', 'pakistan', '0321234522', 101),
(7017, 'imam ul haq', 'qureshi', '1988-05-12', 'M', 7, 'Z', 'bahria town', 'lahore', 'pakistan', '0321234523', 104),
(7018, 'babar', 'azam', '1994-03-13', 'M', 6, 'M', 'bahria town', 'lahore', 'pakistan', '0321234524', 101),
(7019, 'ali', 'sehran', '1998-11-19', 'M', 5, 'X', 'johar town', 'lahore', 'pakistan', '0321234525', 104),
(7020, 'muhammad', 'muneeb', '1994-02-17', 'M', 4, 'X', 'green valley', 'lahore', 'pakistan', '0321234526', 104);

-- --------------------------------------------------------

--
-- Table structure for table `formula`
--

CREATE TABLE `formula` (
  `FORMULA_ID` int(11) NOT NULL,
  `FORMULA_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formula`
--

INSERT INTO `formula` (`FORMULA_ID`, `FORMULA_NAME`) VALUES
(701, 'Acetaminophen'),
(702, 'Adderall'),
(703, 'Alprazolam'),
(704, 'Amitriptyline'),
(705, 'Amlodipine'),
(706, 'Amoxicillin'),
(707, 'Ativan'),
(708, 'Atorvastatin'),
(709, 'Azithromycin'),
(710, 'Ciprofloxacin'),
(711, 'Citalopram'),
(712, 'Clindamycin'),
(713, 'Clonazepam'),
(714, 'Codeine'),
(715, 'Cyclobenzaprine'),
(716, 'Cymbalta'),
(717, 'Doxycycline'),
(718, 'Gabapentin'),
(719, 'Hydrochlorothiazide'),
(720, 'Ibuprofen'),
(721, 'Lexapro'),
(722, 'Lisinopril'),
(723, 'Loratadine'),
(724, 'Lorazepam'),
(725, 'Losartan'),
(726, 'Lyrica'),
(727, 'Meloxicam'),
(728, 'Metformin'),
(729, 'Metoprolol'),
(730, 'Naproxen'),
(731, 'Omeprazole'),
(732, 'Oxycodone'),
(733, 'Pantoprazole'),
(734, 'Paracetamol'),
(735, 'Prednisone'),
(736, 'Tramadol'),
(737, 'Trazodone'),
(738, 'Viagra'),
(739, 'Wellbutrin'),
(740, 'Xanax'),
(741, 'Zoloft'),
(742, 'Febuxostat'),
(743, 'Mecobalamin'),
(744, 'Diclofenac potassium'),
(745, 'Tizanide'),
(746, 'Bromazepam'),
(747, 'Aspirin'),
(748, 'Flubiprofen'),
(749, 'Ebastine'),
(750, 'Thiocolchicoside'),
(751, 'Zoloft'),
(752, 'Diclofenac sodium'),
(753, 'Bismuth Subsalicylate'),
(754, 'Esomeparazole'),
(755, 'Clarithromycin'),
(756, 'Hyoscine Butylbromide'),
(757, 'Orphenadrine Citrate'),
(758, 'Lornoxicam'),
(759, 'Nimesulide'),
(760, 'Pseudophedrine'),
(761, 'Acetylsalicylic Acid'),
(762, 'ASPIRIN');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `INVOICE_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) DEFAULT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  `INVOICE_DATE` date DEFAULT NULL,
  `TAX` decimal(5,2) DEFAULT NULL,
  `SHIPPING_FEE` decimal(5,2) DEFAULT NULL,
  `TOTAL_AMOUNT` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`INVOICE_ID`, `ORDER_ID`, `CUSTOMER_ID`, `INVOICE_DATE`, `TAX`, `SHIPPING_FEE`, `TOTAL_AMOUNT`) VALUES
(4001, 5001, 2001, '2019-01-29', '12.66', '125.00', '200.00'),
(4002, 5002, 2002, '2019-02-03', '12.77', '135.99', '300.11'),
(4003, 5003, 2003, '2019-03-30', '12.88', '155.88', '400.22'),
(4004, 5004, 2004, '2019-04-20', '13.99', '165.77', '500.33'),
(4005, 5005, 2019, '2019-05-25', '14.00', '175.66', '600.44'),
(4006, 5006, 2006, '2019-06-24', '15.11', '185.55', '700.55'),
(4007, 5007, 2007, '2019-01-23', '16.22', '195.44', '800.66'),
(4008, 5008, 2008, '2019-02-22', '17.33', '105.33', '900.77'),
(4009, 5009, 2009, '2019-03-21', '18.44', '120.22', '100.88'),
(4010, 5010, 2022, '2019-04-20', '19.55', '121.11', '200.99'),
(4011, 5011, 2011, '2019-05-10', '20.66', '122.00', '300.00'),
(4012, 5012, 2012, '2019-06-19', '21.77', '123.99', '400.11'),
(4013, 5013, 2013, '2019-01-27', '20.88', '124.88', '500.12'),
(4014, 5014, 2014, '2019-02-05', '11.99', '125.77', '600.13'),
(4015, 5015, 2015, '2019-03-17', '12.00', '126.66', '700.14'),
(4016, 5016, 2016, '2019-04-29', '13.11', '127.55', '800.15'),
(4017, 5017, 2017, '2019-05-24', '14.22', '128.44', '900.17'),
(4018, 5018, 2018, '2019-06-21', '15.33', '129.22', '100.18'),
(4019, 5019, 2019, '2019-01-19', '16.44', '224.33', '200.16'),
(4020, 5020, 2020, '2019-02-11', '17.55', '225.11', '300.19'),
(4021, 5021, 2021, '2019-03-02', '19.66', '226.00', '400.10'),
(4022, 5022, 2022, '2019-04-01', '18.77', '227.12', '500.21');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `MEDICINE_ID` int(11) NOT NULL,
  `MEDICINE_NAME` varchar(50) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `BATCH_ID` varchar(10) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `PRICE` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`MEDICINE_ID`, `MEDICINE_NAME`, `COMPANY_ID`, `BATCH_ID`, `CATEGORY_ID`, `PRICE`) VALUES
(1001, 'PANADOL', 9010, 'AB001', 302, '15.08'),
(1002, 'LORNEX 8MG', 9022, '1091X', 302, '50.43'),
(1003, 'SANID 100MG', 9021, '90334', 302, '25.00'),
(1004, 'MOVAX 4MG', 9007, '98A20', 302, '23.98'),
(1005, 'NIMS 100MG', 9007, '97N10', 302, '44.89'),
(1006, 'DISPRIN', 9018, 'B0089', 308, '12.13'),
(1007, 'DOXY 100MG', 9023, 'SH981', 303, '32.00'),
(1008, 'VOVERON SR', 9027, 'FN13A', 302, '22.00'),
(1009, 'KESTINE', 9032, 'LA9A2', 302, '91.22'),
(1010, 'ARINAC 200MG', 9002, 'AB081', 302, '25.98'),
(1011, 'MYOSOFT 4MG', 9025, 'PM563', 303, '54.00'),
(1012, 'BEFLAM 75MG', 9026, 'BPX19', 302, '63.91'),
(1013, 'BUSCOPAN', 9024, 'B0345', 302, '28.18'),
(1014, 'SHAEZ 20MG', 9030, 'SH2A9', 303, '82.00'),
(1015, 'BISMOL', 9028, 'MIL98', 302, '82.01'),
(1016, 'BRUFEN', 9002, 'AB980', 302, '44.50'),
(1017, 'NUBEROL FORTE', 9004, 'NB934', 302, '35.82'),
(1018, 'LOPRIN', 9031, 'HN98L', 302, '52.12'),
(1019, 'ZURIG 40MG', 9001, 'GT09A', 302, '180.98'),
(1020, 'MYOGESIC', 9033, 'JODA2', 302, '103.30'),
(1021, 'LEXOTANIL 3MG', 9010, 'AB001', 302, '80.32'),
(1022, 'MECOBAL 500MG', 9029, 'NB102', 302, '73.00');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_description`
--

CREATE TABLE `medicine_description` (
  `MEDICINE_ID` int(11) NOT NULL,
  `DESCRIPTION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_description`
--

INSERT INTO `medicine_description` (`MEDICINE_ID`, `DESCRIPTION_ID`) VALUES
(1001, 501),
(1001, 521),
(1002, 505),
(1002, 527),
(1003, 521),
(1003, 523),
(1003, 526),
(1004, 501),
(1005, 501),
(1005, 521),
(1005, 526),
(1006, 526),
(1007, 501),
(1007, 505),
(1008, 501),
(1009, 505),
(1009, 512),
(1010, 501),
(1010, 505),
(1010, 526),
(1011, 527),
(1012, 501),
(1012, 524),
(1013, 501),
(1013, 505),
(1013, 512),
(1013, 526),
(1014, 504),
(1014, 515),
(1014, 516),
(1015, 504),
(1015, 505),
(1016, 501),
(1016, 505),
(1016, 515),
(1016, 526),
(1016, 527),
(1017, 501),
(1017, 515),
(1018, 501),
(1018, 521),
(1019, 504),
(1019, 505),
(1019, 515),
(1019, 527),
(1020, 501),
(1020, 526),
(1020, 527),
(1021, 503),
(1022, 503),
(1022, 527);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_formula`
--

CREATE TABLE `medicine_formula` (
  `MEDICINE_ID` int(11) NOT NULL,
  `FORMULA_ID` int(11) NOT NULL,
  `FORMULA_MG` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_formula`
--

INSERT INTO `medicine_formula` (`MEDICINE_ID`, `FORMULA_ID`, `FORMULA_MG`) VALUES
(1001, 734, 500),
(1002, 758, 8),
(1003, 748, 100),
(1004, 745, 4),
(1005, 759, 100),
(1006, 761, 300),
(1007, 717, 1000),
(1008, 752, 100),
(1009, 749, 10),
(1010, 720, 200),
(1010, 760, 30),
(1011, 750, 4),
(1012, 744, 75),
(1013, 734, 500),
(1013, 756, 10),
(1014, 754, 20),
(1015, 753, 265),
(1016, 720, 400),
(1017, 734, 650),
(1017, 757, 50),
(1018, 762, 75),
(1019, 742, 40),
(1020, 734, 450),
(1020, 757, 35),
(1021, 746, 3),
(1022, 743, 500);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ORDERS_ID` int(11) NOT NULL,
  `ORDERS_EMP_ID` int(11) DEFAULT NULL,
  `ORDERS_CUS_ID` int(11) DEFAULT NULL,
  `ORDERS_SHIP_HOUSE` int(11) DEFAULT NULL,
  `ORDERS_SHIP_BLOCK` varchar(3) DEFAULT NULL,
  `ORDERS_SHIP_AREA` varchar(50) DEFAULT NULL,
  `ORDERS_SHIP_CITY` varchar(50) DEFAULT NULL,
  `ORDERS_SHIP_COUNTRY` varchar(50) DEFAULT NULL,
  `ORDERS_DATE` date DEFAULT NULL,
  `ORDERS_SHIP_DATE` date DEFAULT NULL,
  `ORDERS_PAYMENT_TYPE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ORDERS_ID`, `ORDERS_EMP_ID`, `ORDERS_CUS_ID`, `ORDERS_SHIP_HOUSE`, `ORDERS_SHIP_BLOCK`, `ORDERS_SHIP_AREA`, `ORDERS_SHIP_CITY`, `ORDERS_SHIP_COUNTRY`, `ORDERS_DATE`, `ORDERS_SHIP_DATE`, `ORDERS_PAYMENT_TYPE`) VALUES
(5001, 7001, 2001, 10, 'K', 'Model Town', 'Lahore', 'Pakistan', '2017-11-19', '2017-11-21', 802),
(5002, 7002, 2002, 11, 'K', 'satellite Town', 'Lahore', 'Pakistan', '2017-10-11', '2017-10-15', 806),
(5003, 7003, 2003, 12, 'C', 'Garden Town', 'Lahore', 'Pakistan', '2017-10-16', '2017-10-19', 802),
(5004, 7004, 2004, 13, 'V', 'satellite Town', 'Lahore', 'Pakistan', '2017-10-19', '2017-10-22', 805),
(5005, 7005, 2019, 14, 'B', 'Gulberg Town', 'Lahore', 'Pakistan', '2017-10-10', '2017-10-13', 802),
(5006, 7006, 2006, 16, 'F', 'Wapda Town', 'Lahore', 'Pakistan', '2017-11-11', '2017-11-13', 801),
(5007, 7007, 2007, 18, 'T', 'Railway Town', 'Lahore', 'Pakistan', '2017-10-15', '2017-10-23', 801),
(5008, 7008, 2008, 12, 'Y', 'Johar Town', 'Lahore', 'Pakistan', '2017-01-15', '2017-01-23', 806),
(5009, 7009, 2009, 15, 'S', 'Wapda Town', 'Lahore', 'Pakistan', '2017-05-25', '2017-05-27', 805),
(5010, 7010, 2022, 52, 'J', 'satellite Town', 'Lahore', 'Pakistan', '2017-06-21', '2017-06-24', 802),
(5011, 7011, 2011, 19, 'S', 'Garden Town', 'Lahore', 'Pakistan', '2017-07-21', '2017-07-25', 805),
(5012, 7008, 2012, 23, 'L', 'Gulberg Town', 'Lahore', 'Pakistan', '2017-08-12', '2017-08-15', 802),
(5013, 7013, 2013, 20, 'I', 'Johar Town', 'Lahore', 'Pakistan', '2017-09-12', '2017-09-10', 804),
(5014, 7003, 2014, 54, 'K', 'Wapda Town', 'Lahore', 'Pakistan', '2017-03-15', '2017-03-20', 805),
(5015, 7015, 2015, 51, 'M', 'satellite Town', 'Lahore', 'Pakistan', '2017-05-12', '2017-05-11', 806),
(5016, 7016, 2016, 62, 'K', 'Railway Town', 'Lahore', 'Pakistan', '2018-01-13', '2017-01-15', 805),
(5017, 7017, 2017, 55, 'N', 'Wapda Town', 'Lahore', 'Pakistan', '2017-11-25', '2017-11-21', 801),
(5018, 7018, 2018, 52, 'G', 'Gulberg Town', 'Lahore', 'Pakistan', '2017-12-25', '2017-12-26', 805),
(5019, 7016, 2019, 56, 'K', 'Wapda Town', 'Lahore', 'Pakistan', '2017-11-10', '2017-12-11', 804),
(5020, 7020, 2020, 41, 'J', 'satellite Town', 'Lahore', 'Pakistan', '2018-12-11', '2018-12-11', 801),
(5021, 7009, 2021, 56, 'U', 'Railway Town', 'Lahore', 'Pakistan', '2017-10-10', '2017-10-12', 803),
(5022, 7002, 2022, 54, 'Z', 'Garden Town', 'Lahore', 'Pakistan', '2019-01-10', '2019-01-12', 802);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `ORDER_DETAIL_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) DEFAULT NULL,
  `MEDICINE_ID` int(11) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `UNIT_PRICE` decimal(5,2) DEFAULT NULL,
  `DISCOUNT` decimal(5,2) DEFAULT NULL,
  `STATUS` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`ORDER_DETAIL_ID`, `ORDER_ID`, `MEDICINE_ID`, `QUANTITY`, `UNIT_PRICE`, `DISCOUNT`, `STATUS`) VALUES
(6001, 5001, 1001, 100, '599.15', '135.32', 'Pending'),
(6002, 5002, 1002, 101, '899.15', '225.22', 'Delivered'),
(6003, 5003, 1019, 102, '522.15', '125.12', 'Delivered'),
(6004, 5004, 1004, 103, '800.15', '105.22', 'Delivered'),
(6005, 5005, 1005, 104, '700.50', '105.52', 'Delivered'),
(6006, 5006, 1006, 105, '400.50', '101.12', 'Delivered'),
(6007, 5007, 1007, 108, '800.50', '125.59', 'Delivered'),
(6008, 5008, 1008, 109, '900.50', '135.55', 'Delivered'),
(6009, 5009, 1009, 110, '550.50', '115.51', 'Pending'),
(6010, 5010, 1010, 111, '510.50', '111.32', 'Delivered'),
(6011, 5011, 1020, 112, '410.50', '110.10', 'Delivered'),
(6012, 5012, 1012, 113, '311.20', '110.12', 'Pending'),
(6013, 5013, 1013, 114, '512.21', '123.14', 'Delivered'),
(6014, 5014, 1014, 115, '611.32', '132.15', 'Delivered'),
(6015, 5015, 1015, 116, '911.23', '142.19', 'Delivered'),
(6016, 5016, 1005, 117, '521.23', '100.19', 'Delivered'),
(6017, 5017, 1017, 118, '621.23', '102.19', 'Delivered'),
(6018, 5018, 1018, 119, '511.23', '123.19', 'Pending'),
(6019, 5019, 1019, 120, '540.52', '100.19', 'Delivered'),
(6020, 5020, 1020, 121, '541.23', '123.19', 'Delivered'),
(6021, 5021, 1020, 122, '611.23', '135.19', 'Pending'),
(6022, 5022, 1022, 123, '911.53', '186.19', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `PAYMENT_ID` int(11) NOT NULL,
  `PAYMENT` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`PAYMENT_ID`, `PAYMENT`) VALUES
(801, 'Credit Card'),
(802, 'Jazz Cash'),
(803, 'Easy Paisa'),
(804, 'Debit Card'),
(805, 'Online Transfer'),
(806, 'PayPal');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `PHARMACIST_ID` int(11) NOT NULL,
  `PHARMACIST_FNAME` varchar(20) DEFAULT NULL,
  `PHARMACIST_LNAME` varchar(20) DEFAULT NULL,
  `PHARMACIST_DOB` date DEFAULT NULL,
  `PHARMACIST_GENDER` char(1) DEFAULT NULL,
  `PHARMACIST_HOUSE` int(11) DEFAULT NULL,
  `PHARMACIST_BLOCK` varchar(3) DEFAULT NULL,
  `PHARMACIST_AREA` varchar(50) DEFAULT NULL,
  `PHARMACIST_CITY` varchar(50) DEFAULT NULL,
  `PHARMACIST_COUNTRY` varchar(50) DEFAULT NULL,
  `PHARMACIST_PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`PHARMACIST_ID`, `PHARMACIST_FNAME`, `PHARMACIST_LNAME`, `PHARMACIST_DOB`, `PHARMACIST_GENDER`, `PHARMACIST_HOUSE`, `PHARMACIST_BLOCK`, `PHARMACIST_AREA`, `PHARMACIST_CITY`, `PHARMACIST_COUNTRY`, `PHARMACIST_PHONE`) VALUES
(3001, 'MUHAMMAD', 'SAHIR', '1993-03-15', 'M', 100, 'N', 'SABZAZAR', 'LAHORE', 'PAKISTAN', '03249826374'),
(3002, 'MUHAMMAD', 'TAHIR', '1999-04-11', 'M', 2, 'M', 'JOHAR TOWN', 'LAHORE', 'PAKISTAN', '03249826000'),
(3003, 'MUHAMMAD', 'FARHAN', '1994-03-13', 'M', 20, 'I', 'FAISAL TOWN', 'LAHORE', 'PAKISTAN', '03299826374'),
(3004, 'MUHAMMAD', 'AMIR', '1987-09-25', 'M', 200, 'P', 'ALLAMA IQBAL TOWN', 'LAHORE', 'PAKISTAN', '03449826374'),
(3005, 'MUHAMMAD', 'MAJID', '1982-01-11', 'M', 9, 'A', 'SABZAZAR', 'LAHORE', 'PAKISTAN', '03249826374'),
(3006, 'MUHAMMAD', 'FAYYAZ', '1984-02-25', 'M', 27, 'B', 'FAISAL TOWN', 'LAHORE', 'PAKISTAN', '03249826374'),
(3007, 'MUHAMMAD', 'SARFARAZ', '1985-03-29', 'M', 72, 'C', 'SABZAZAR', 'LAHORE', 'PAKISTAN', '03249125674'),
(3008, 'MUHAMMAD', 'SOHAIL', '1988-04-09', 'M', 12, 'D', 'FAISAL TOWN', 'LAHORE', 'PAKISTAN', '03249820987'),
(3009, 'MUHAMMAD', 'ADNAN', '1989-05-18', 'M', 9, 'E', 'SABZAZAR', 'LAHORE', 'PAKISTAN', '03349826374'),
(3010, 'MUHAMMAD', 'SHADAB', '1988-09-25', 'M', 2, 'F', 'FAISAL TOWN', 'LAHORE', 'PAKISTAN', '03279826374'),
(3011, 'SOHAIB', 'MALIK', '1987-06-07', 'M', 22, 'G', 'SABZAZAR', 'LAHORE', 'PAKISTAN', '03240826374'),
(3012, 'MUHAMMAD', 'HAFEEZ', '1986-07-05', 'M', 234, 'H', 'FAISAL TOWN', 'LAHORE', 'PAKISTAN', '03249820987'),
(3013, 'AHMAD', 'KAHN', '1985-08-04', 'M', 123, 'I', 'SABZAZAR', 'LAHORE', 'PAKISTAN', '03249123484'),
(3014, 'OMER', 'FAROOQ', '1984-09-03', 'M', 999, 'J', 'FAISAL TOWN', 'LAHORE', 'PAKISTAN', '032123826374'),
(3015, 'HASSAN', 'ALI', '1983-10-02', 'F', 888, 'L', 'SABZAZAR', 'LAHORE', 'PAKISTAN', '032498098374'),
(3016, 'SAADIA', 'KAHN', '1994-05-20', 'F', 777, 'M', 'FAISAL TOWN', 'LAHORE', 'PAKISTAN', '03249826374'),
(3017, 'SAIMA', 'AMIR', '1993-03-15', 'F', 666, 'N', 'SABZAZAR', 'LAHORE', 'PAKISTAN', '032490000374'),
(3018, 'ANEELA', 'MUKHTAIR', '1997-07-29', 'F', 555, 'O', 'FAISAL TOWN', 'LAHORE', 'PAKISTAN', '03249825684'),
(3019, 'FARIHA', 'IQBAL', '1989-12-15', 'F', 444, 'P', 'SABZAZAR', 'LAHORE', 'PAKISTAN', '03249821200'),
(3020, 'QANDEEL', 'BALOCH', '1987-09-15', 'F', 333, 'Q', 'JOHAR TOWN', 'LAHORE', 'PAKISTAN', '03249826374'),
(3021, 'FAIZA', 'FATIMA', '1998-11-25', 'F', 222, 'R', 'ALLAMA IBAL', 'LAHORE', 'PAKISTAN', '03241256374'),
(3022, 'RABIA', 'ANUM', '1996-05-14', 'F', 111, 'S', 'SABZAZAR', 'LAHORE', 'PAKISTAN', '03249821234'),
(3023, 'SUNDAS', 'JAMEEL', '1992-01-11', 'F', 290, 'T', 'JOHAR TOWN', 'LAHORE', 'PAKISTAN', '03249826374'),
(3024, 'HINA', 'AHMAD', '1994-04-05', 'F', 229, 'U', 'SABZAZAR', 'LAHORE', 'PAKISTAN', '03249826004'),
(3025, 'FATIMA', 'ARIF', '1999-02-12', 'F', 212, 'V', 'SAMNABAD', 'LAHORE', 'PAKISTAN', '03249826356');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `PRESCRIPTION_ID` int(11) NOT NULL,
  `STRENGTH` int(11) DEFAULT NULL,
  `DOSE` int(11) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `MEDICINE_ID` int(11) DEFAULT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  `PHARMACIST_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`PRESCRIPTION_ID`, `STRENGTH`, `DOSE`, `AGE`, `MEDICINE_ID`, `CUSTOMER_ID`, `PHARMACIST_ID`) VALUES
(601, 8, 1, 10, 1001, 2001, 3001),
(602, 250, 2, 10, 1002, 2002, 3025),
(603, 4, 3, 30, 1003, 2003, 3003),
(604, 45, 4, 40, 1004, 2004, 3004),
(605, 45, 5, 50, 1021, 2005, 3011),
(606, 85, 6, 60, 1006, 2006, 3006),
(607, 500, 7, 70, 1001, 2007, 3011),
(608, 100, 8, 80, 1008, 2008, 3008),
(609, 100, 9, 90, 1009, 2007, 3017),
(610, 100, 2, 90, 1010, 2010, 3025),
(611, 250, 1, 80, 1011, 2002, 3011),
(612, 100, 2, 70, 1012, 2012, 3012),
(613, 25, 3, 60, 1001, 2018, 3013),
(614, 50, 4, 50, 1014, 2014, 3014),
(615, 45, 5, 40, 1015, 2015, 3017),
(616, 95, 6, 30, 1016, 2016, 3025),
(617, 35, 7, 20, 1017, 2017, 3017),
(618, 500, 8, 10, 1001, 2018, 3018),
(619, 20, 9, 20, 1019, 2019, 3019),
(620, 8, 3, 30, 1020, 2020, 3020),
(621, 4, 1, 40, 1021, 2021, 3011),
(622, 20, 2, 50, 1022, 2022, 3022),
(623, 100, 3, 60, 1020, 2022, 3023),
(624, 45, 4, 70, 1001, 2001, 3011),
(625, 50, 5, 80, 1009, 2004, 3025);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `STOCK_ID` int(11) NOT NULL,
  `MEDICINE_ID` int(11) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `SUPPLY_DATE` date DEFAULT NULL,
  `BATCH_ID` varchar(10) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`STOCK_ID`, `MEDICINE_ID`, `COMPANY_ID`, `SUPPLIER_ID`, `SUPPLY_DATE`, `BATCH_ID`, `QUANTITY`) VALUES
(201, 1001, 9010, 8001, '2019-01-23', 'ab001', 90023),
(202, 1002, 9022, 8002, '2019-01-23', '1091X', 13020),
(203, 1003, 9021, 8016, '2019-01-23', '90334', 12024),
(204, 1004, 9007, 8004, '2019-01-23', '98A20', 87364),
(205, 1005, 9007, 8005, '2019-01-23', '97N10', 93847),
(206, 1006, 9018, 8019, '2019-01-23', 'B0089', 76532),
(207, 1007, 9023, 8007, '2019-01-23', 'SH981', 87423),
(208, 1008, 9027, 8008, '2019-01-23', 'FN13A', 12423),
(209, 1009, 9032, 8009, '2019-01-23', 'LA9A2', 18472),
(210, 1010, 9002, 8010, '2019-01-23', 'AB081', 94823),
(211, 1011, 9025, 8011, '2019-01-23', 'PM563', 93462),
(212, 1012, 9026, 8012, '2019-01-23', 'BPX19', 86463),
(213, 1013, 9024, 8012, '2019-01-23', 'B0345', 67382),
(214, 1014, 9030, 8012, '2019-01-23', 'SH2A9', 51013),
(215, 1015, 9028, 8015, '2019-01-23', 'MIL98', 40721),
(216, 1016, 9002, 8016, '2019-01-23', 'AB980', 30823),
(217, 1017, 9004, 8017, '2019-01-23', 'NB934', 90029),
(218, 1018, 9031, 8005, '2019-01-23', 'HN98L', 10023),
(219, 1019, 9001, 8019, '2019-01-23', 'GT09A', 40023),
(220, 1020, 9033, 8020, '2019-01-23', 'JODA2', 93002),
(221, 1021, 9010, 8020, '2019-01-23', 'AB001', 93002),
(222, 1022, 9029, 8020, '2019-01-23', 'NB102', 93002);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `SUPPLIER_NAME` varchar(100) DEFAULT NULL,
  `SUPPLIER_OFFICE` int(11) DEFAULT NULL,
  `SUPPLIER_BLOCK` varchar(3) DEFAULT NULL,
  `SUPPLIER_AREA` varchar(50) DEFAULT NULL,
  `SUPPLIER_CITY` varchar(50) DEFAULT NULL,
  `SUPPLIER_COUNTRY` varchar(50) DEFAULT NULL,
  `SUPPLIER_PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `SUPPLIER_NAME`, `SUPPLIER_OFFICE`, `SUPPLIER_BLOCK`, `SUPPLIER_AREA`, `SUPPLIER_CITY`, `SUPPLIER_COUNTRY`, `SUPPLIER_PHONE`) VALUES
(8001, 'nordi herbal', 98, 'K', 'KORANGI', 'KARACHI', 'PAKISTAN', '09284357286'),
(8002, 'unisa pvt limited', 2, 'A', 'LANDHI', 'KARACHI', 'PAKISTAN', '09284787236'),
(8003, 'gb pharma', 650, 'Z', 'SITE', 'KARACHI', 'PAKISTAN', '09284759027'),
(8004, 'united pharma', 600, 'A', 'SUNDAR', 'LAHORE', 'PAKISTAN', '09284756387'),
(8005, 'abbasi pharaceutical', 250, 'A', 'INDUSTRIAL ESTATE', 'FAISLABAD', 'PAKISTAN', '09284569757'),
(8006, 'shahzeb pharmacuetical', 1, 'A', 'SITE', 'KARACHI', 'PAKISTAN', '09285029337'),
(8007, 'Saifran logistices', 97, 'F7', 'BLUE AREA', 'ISLAMABAD', 'PAKISTAN', '01288739337'),
(8008, 'ysv group', 20, 'B', 'MODEL TOWN', 'LAHORE', 'PAKISTAN', '04288895337'),
(8009, 'lahore medical', 624, 'H', 'JOHAR TOWN', 'LAHORE', 'PAKISTAN', '04288720947'),
(8010, 'batla pharma', 104, 'D', 'MODEL TOWN', 'LAHORE', 'PAKISTAN', '04288790230'),
(8011, 'muller & phippes', 87, 'Z', 'KORANGI', 'KARACHI', 'PAKISTAN', '04288827380'),
(8012, 'spencer distribution', 1, 'A', 'NAZIMABAD', 'KARACHI', 'PAKISTAN', '04288092080'),
(8013, 'aftab lifecare', 2, 'A', 'FAKHAR-E-ALAM ROAD', 'PESHAWAR', 'PAKISTAN', '042888923230'),
(8014, 'akbar brothers', 20, 'A', 'BIN QASIM', 'KARACHI', 'PAKISTAN', '04288800092'),
(8015, 'bon pharma', 8, 'A', 'PROGRESSIVE PLAZA', 'KARACHI', 'PAKISTAN', '04280428302'),
(8016, 'pharma international', 27, '6', 'SHAHRA-E-FAISAL', 'KARACHI', 'PAKISTAN', '04280402039'),
(8017, 'alhabib pharmacuetical', 57, 'H', 'GULBERG 3', 'LAHORE', 'PAKISTAN', '04280092292'),
(8018, 'progressive associates', 15, 'C', 'CLIFTON', 'KARACHI', 'PAKISTAN', '04280092102'),
(8019, 'al waqar trading', 209, 'A', 'BLUE AREA', 'ISLAMABAD', 'PAKISTAN', '01280409213'),
(8020, 'irza pharma', 37, 'E', 'SHADMAN', 'LAHORE', 'PAKISTAN', '04209210213');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`),
  ADD UNIQUE KEY `ADMIN_USERNAME` (`ADMIN_USERNAME`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`COMPANY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUSTOMER_ID`),
  ADD UNIQUE KEY `CUSTOMER_USERNAME` (`CUSTOMER_USERNAME`);

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`DESCRIPTION_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD KEY `E_AID_FK` (`ADMIN_ID`);

--
-- Indexes for table `formula`
--
ALTER TABLE `formula`
  ADD PRIMARY KEY (`FORMULA_ID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`INVOICE_ID`),
  ADD KEY `I_CID_FK` (`CUSTOMER_ID`),
  ADD KEY `I_OID_FK` (`ORDER_ID`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`MEDICINE_ID`),
  ADD KEY `M_COID_FK` (`COMPANY_ID`),
  ADD KEY `M_CATID_FK` (`CATEGORY_ID`);

--
-- Indexes for table `medicine_description`
--
ALTER TABLE `medicine_description`
  ADD PRIMARY KEY (`MEDICINE_ID`,`DESCRIPTION_ID`),
  ADD KEY `MD_DID_FK` (`DESCRIPTION_ID`);

--
-- Indexes for table `medicine_formula`
--
ALTER TABLE `medicine_formula`
  ADD PRIMARY KEY (`MEDICINE_ID`,`FORMULA_ID`),
  ADD KEY `MF_FID_FK` (`FORMULA_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ORDERS_ID`),
  ADD KEY `O_EID_FK` (`ORDERS_EMP_ID`),
  ADD KEY `O_CID_FK` (`ORDERS_CUS_ID`),
  ADD KEY `O_PID_FK` (`ORDERS_PAYMENT_TYPE`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`ORDER_DETAIL_ID`),
  ADD KEY `OD_OID_FK` (`ORDER_ID`),
  ADD KEY `OD_MID_FK` (`MEDICINE_ID`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`PAYMENT_ID`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`PHARMACIST_ID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`PRESCRIPTION_ID`),
  ADD KEY `P_PID_FK` (`PHARMACIST_ID`),
  ADD KEY `P_MID_FK` (`MEDICINE_ID`),
  ADD KEY `P_CID_FK` (`CUSTOMER_ID`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`STOCK_ID`),
  ADD KEY `S_MID_FK` (`MEDICINE_ID`),
  ADD KEY `S_SID_FK` (`SUPPLIER_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `E_AID_FK` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `I_CID_FK` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `I_OID_FK` FOREIGN KEY (`ORDER_ID`) REFERENCES `orders` (`ORDERS_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `M_CATID_FK` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `M_COID_FK` FOREIGN KEY (`COMPANY_ID`) REFERENCES `company` (`COMPANY_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicine_description`
--
ALTER TABLE `medicine_description`
  ADD CONSTRAINT `MD_DID_FK` FOREIGN KEY (`DESCRIPTION_ID`) REFERENCES `description` (`DESCRIPTION_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MD_MID_FK` FOREIGN KEY (`MEDICINE_ID`) REFERENCES `medicines` (`MEDICINE_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicine_formula`
--
ALTER TABLE `medicine_formula`
  ADD CONSTRAINT `MF_FID_FK` FOREIGN KEY (`FORMULA_ID`) REFERENCES `formula` (`FORMULA_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MF_MID_FK` FOREIGN KEY (`MEDICINE_ID`) REFERENCES `medicines` (`MEDICINE_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `O_CID_FK` FOREIGN KEY (`ORDERS_CUS_ID`) REFERENCES `customer` (`CUSTOMER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `O_EID_FK` FOREIGN KEY (`ORDERS_EMP_ID`) REFERENCES `employee` (`EMPLOYEE_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `O_PID_FK` FOREIGN KEY (`ORDERS_PAYMENT_TYPE`) REFERENCES `payment_type` (`PAYMENT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `OD_MID_FK` FOREIGN KEY (`MEDICINE_ID`) REFERENCES `medicines` (`MEDICINE_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `OD_OID_FK` FOREIGN KEY (`ORDER_ID`) REFERENCES `orders` (`ORDERS_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `P_CID_FK` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `P_MID_FK` FOREIGN KEY (`MEDICINE_ID`) REFERENCES `medicines` (`MEDICINE_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `P_PID_FK` FOREIGN KEY (`PHARMACIST_ID`) REFERENCES `pharmacist` (`PHARMACIST_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `S_MID_FK` FOREIGN KEY (`MEDICINE_ID`) REFERENCES `medicines` (`MEDICINE_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `S_SID_FK` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
