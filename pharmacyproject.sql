-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2019 at 04:10 PM
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
  `ADMIN_USERNAME` varchar(15) DEFAULT NULL,
  `ADMIN_FNAME` varchar(15) DEFAULT NULL,
  `ADMIN_LNAME` varchar(15) DEFAULT NULL,
  `ADMIN_PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CATEGORY_NAME` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `COMPANY_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(20) DEFAULT NULL,
  `COMPANY_OFFICE` int(11) DEFAULT NULL,
  `COMPANY_BLOCK` varchar(3) DEFAULT NULL,
  `COMPANY_AREA` varchar(30) DEFAULT NULL,
  `COMPANY_CITY` varchar(30) DEFAULT NULL,
  `COMPANY_COUNTRY` varchar(30) DEFAULT NULL,
  `COMPANY_PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `CUSTOMER_USERNAME` varchar(15) DEFAULT NULL,
  `CUSTOMER_FNAME` varchar(15) DEFAULT NULL,
  `CUSTOMER_LNAME` varchar(15) DEFAULT NULL,
  `CUSTOMER_DOB` date DEFAULT NULL,
  `CUSTOMER_GENDER` char(1) DEFAULT NULL,
  `CUSTOMER_HOUSE` int(11) DEFAULT NULL,
  `CUSTOMER_BLOCK` varchar(3) DEFAULT NULL,
  `CUSTOMER_AREA` varchar(30) DEFAULT NULL,
  `CUSTOMER_CITY` varchar(30) DEFAULT NULL,
  `CUSTOMER_COUNTRY` varchar(30) DEFAULT NULL,
  `CUSTOMER_PHONE` varchar(20) DEFAULT NULL,
  `CUSTOMER_PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `DESCRIPTION_ID` int(11) NOT NULL,
  `DESCRIPTION_DETAILS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `EMPLOYEE_FNAME` varchar(15) DEFAULT NULL,
  `EMPLOYEE_LNAME` varchar(15) DEFAULT NULL,
  `EMPLOYEE_DOB` date DEFAULT NULL,
  `EMPLOYEE_GENDER` char(1) DEFAULT NULL,
  `EMPLOYEE_HOUSE` int(11) DEFAULT NULL,
  `EMPLOYEE_BLOCK` varchar(3) DEFAULT NULL,
  `EMPLOYEE_AREA` varchar(30) DEFAULT NULL,
  `EMPLOYEE_CITY` varchar(30) DEFAULT NULL,
  `EMPLOYEE_COUNTRY` varchar(30) DEFAULT NULL,
  `EMPLOYEE_PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `formula`
--

CREATE TABLE `formula` (
  `FORMULA_ID` int(11) NOT NULL,
  `FORMULA_NAME` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `MEDICINE_ID` int(11) NOT NULL,
  `MEDICINE_NAME` varchar(20) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `BATCH_ID` varchar(10) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `PRICE` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_description`
--

CREATE TABLE `medicine_description` (
  `MEDICINE_ID` int(11) NOT NULL,
  `DESCRIPTION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_formula`
--

CREATE TABLE `medicine_formula` (
  `MEDICINE_ID` int(11) NOT NULL,
  `FORMULA_ID` int(11) NOT NULL,
  `FORMULA_MG` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `ORDERS_SHIP_AREA` varchar(30) DEFAULT NULL,
  `ORDERS_SHIP_CITY` varchar(30) DEFAULT NULL,
  `ORDERS_SHIP_COUNTRY` varchar(30) DEFAULT NULL,
  `ORDERS_DATE` date DEFAULT NULL,
  `ORDERS_SHIP_DATE` date DEFAULT NULL,
  `ORDERS_PAYMENT_TYPE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `PAYMENT_ID` int(11) NOT NULL,
  `PAYMENT_TYPE` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `PHARMACIST_ID` int(11) NOT NULL,
  `PHARMACIST_FNAME` varchar(15) DEFAULT NULL,
  `PHARMACIST_LNAME` varchar(15) DEFAULT NULL,
  `PHARMACIST_DOB` date DEFAULT NULL,
  `PHARMACIST_GENDER` char(1) DEFAULT NULL,
  `PHARMACIST_HOUSE` int(11) DEFAULT NULL,
  `PHARMACIST_BLOCK` varchar(3) DEFAULT NULL,
  `PHARMACIST_AREA` varchar(30) DEFAULT NULL,
  `PHARMACIST_CITY` varchar(30) DEFAULT NULL,
  `PHARMACIST_COUNTRY` varchar(30) DEFAULT NULL,
  `PHARMACIST_PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `CUSTOMER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `SUPPLIER_NAME` varchar(20) DEFAULT NULL,
  `SUPPLIER_OFFICE` int(11) DEFAULT NULL,
  `SUPPLIER_BLOCK` varchar(3) DEFAULT NULL,
  `SUPPLIER_AREA` varchar(30) DEFAULT NULL,
  `SUPPLIER_CITY` varchar(30) DEFAULT NULL,
  `SUPPLIER_COUNTRY` varchar(30) DEFAULT NULL,
  `SUPPLIER_PHONE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD PRIMARY KEY (`EMPLOYEE_ID`);

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
  ADD PRIMARY KEY (`MEDICINE_ID`,`DESCRIPTION_ID`);

--
-- Indexes for table `medicine_formula`
--
ALTER TABLE `medicine_formula`
  ADD PRIMARY KEY (`MEDICINE_ID`,`FORMULA_ID`);

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
  MODIFY `ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
  ADD CONSTRAINT `P_MID_FK` FOREIGN KEY (`MEDICINE_ID`) REFERENCES `medicines` (`MEDICINE_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
