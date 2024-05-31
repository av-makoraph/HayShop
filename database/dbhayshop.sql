-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 07:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbhayshops`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladdress`
--

CREATE TABLE `tbladdress` (
  `address_id` int(4) NOT NULL,
  `house_no` int(2) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `customer_id` int(4) DEFAULT NULL,
  `locationcode_id` int(4) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `cart_id` int(4) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `customer_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcartproduct`
--

CREATE TABLE `tblcartproduct` (
  `cartproduct_id` int(4) NOT NULL,
  `vendorprod_id` int(4) DEFAULT NULL,
  `quantity` int(4) DEFAULT NULL,
  `cart_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `category_id` int(4) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `city_id` int(3) NOT NULL,
  `city_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcountry`
--

CREATE TABLE `tblcountry` (
  `country_id` int(3) NOT NULL,
  `country_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcourier`
--

CREATE TABLE `tblcourier` (
  `courier_id` int(4) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `customer_id` int(4) NOT NULL,
  `customer_fname` varchar(100) DEFAULT NULL,
  `customer_lname` varchar(100) DEFAULT NULL,
  `customer_DOB` date DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `customer_password` varchar(100) DEFAULT NULL,
  `customer_contact` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbllocationcode`
--

CREATE TABLE `tbllocationcode` (
  `locationcode_id` int(4) NOT NULL,
  `city_id` int(3) DEFAULT NULL,
  `province_id` int(3) DEFAULT NULL,
  `country_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblorderproduct`
--

CREATE TABLE `tblorderproduct` (
  `orderprod_id` int(4) NOT NULL,
  `vendorprod_id` int(4) DEFAULT NULL,
  `order_id` int(4) DEFAULT NULL,
  `quantity` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `order_id` int(4) NOT NULL,
  `customer_id` int(4) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `address_id` int(4) DEFAULT NULL,
  `vencour_id` int(4) DEFAULT NULL,
  `tracking_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `product_id` int(4) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblprovince`
--

CREATE TABLE `tblprovince` (
  `province_id` int(3) NOT NULL,
  `province_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblreview`
--

CREATE TABLE `tblreview` (
  `review_id` int(4) NOT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `review_comment` text DEFAULT NULL,
  `customer_id` int(4) DEFAULT NULL,
  `orderprod_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblseller`
--

CREATE TABLE `tblseller` (
  `seller_id` int(4) NOT NULL,
  `seller_name` varchar(100) DEFAULT NULL,
  `seller_address` varchar(100) DEFAULT NULL,
  `seller_email` varchar(100) DEFAULT NULL,
  `seller_password` varchar(100) DEFAULT NULL,
  `seller_contact` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblvendorcourier`
--

CREATE TABLE `tblvendorcourier` (
  `vencour_id` int(4) NOT NULL,
  `seller_id` int(4) DEFAULT NULL,
  `courier_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblvendorproduct`
--

CREATE TABLE `tblvendorproduct` (
  `vendorprod_id` int(4) NOT NULL,
  `seller_id` int(4) DEFAULT NULL,
  `product_id` int(4) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `quantity` int(9) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladdress`
--
ALTER TABLE `tbladdress`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `locationcode_id` (`locationcode_id`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tblcartproduct`
--
ALTER TABLE `tblcartproduct`
  ADD PRIMARY KEY (`cartproduct_id`),
  ADD KEY `vendorprod_id` (`vendorprod_id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tblcountry`
--
ALTER TABLE `tblcountry`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tblcourier`
--
ALTER TABLE `tblcourier`
  ADD PRIMARY KEY (`courier_id`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbllocationcode`
--
ALTER TABLE `tbllocationcode`
  ADD PRIMARY KEY (`locationcode_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `province_id` (`province_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `tblorderproduct`
--
ALTER TABLE `tblorderproduct`
  ADD PRIMARY KEY (`orderprod_id`),
  ADD KEY `vendorprod_id` (`vendorprod_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `tracking_id` (`tracking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `vencour_id` (`vencour_id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tblprovince`
--
ALTER TABLE `tblprovince`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `orderprod_id` (`orderprod_id`);

--
-- Indexes for table `tblseller`
--
ALTER TABLE `tblseller`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `tblvendorcourier`
--
ALTER TABLE `tblvendorcourier`
  ADD PRIMARY KEY (`vencour_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `courier_id` (`courier_id`);

--
-- Indexes for table `tblvendorproduct`
--
ALTER TABLE `tblvendorproduct`
  ADD PRIMARY KEY (`vendorprod_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbladdress`
--
ALTER TABLE `tbladdress`
  ADD CONSTRAINT `tbladdress_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tblcustomer` (`customer_id`),
  ADD CONSTRAINT `tbladdress_ibfk_2` FOREIGN KEY (`locationcode_id`) REFERENCES `tbllocationcode` (`locationcode_id`);

--
-- Constraints for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD CONSTRAINT `tblcart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tblcustomer` (`customer_id`);

--
-- Constraints for table `tblcartproduct`
--
ALTER TABLE `tblcartproduct`
  ADD CONSTRAINT `tblcartproduct_ibfk_1` FOREIGN KEY (`vendorprod_id`) REFERENCES `tblvendorproduct` (`vendorprod_id`);

--
-- Constraints for table `tbllocationcode`
--
ALTER TABLE `tbllocationcode`
  ADD CONSTRAINT `tbllocationcode_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `tblcity` (`city_id`),
  ADD CONSTRAINT `tbllocationcode_ibfk_2` FOREIGN KEY (`province_id`) REFERENCES `tblprovince` (`province_id`),
  ADD CONSTRAINT `tbllocationcode_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `tblcountry` (`country_id`);

--
-- Constraints for table `tblorderproduct`
--
ALTER TABLE `tblorderproduct`
  ADD CONSTRAINT `tblorderproduct_ibfk_1` FOREIGN KEY (`vendorprod_id`) REFERENCES `tblvendorproduct` (`vendorprod_id`),
  ADD CONSTRAINT `tblorderproduct_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `tblorders` (`order_id`);

--
-- Constraints for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD CONSTRAINT `tblorders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tblcustomer` (`customer_id`),
  ADD CONSTRAINT `tblorders_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `tbladdress` (`address_id`),
  ADD CONSTRAINT `tblorders_ibfk_3` FOREIGN KEY (`vencour_id`) REFERENCES `tblvendorcourier` (`vencour_id`);

--
-- Constraints for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD CONSTRAINT `tblproduct_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tblcategory` (`category_id`);

--
-- Constraints for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD CONSTRAINT `tblreview_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tblcustomer` (`customer_id`),
  ADD CONSTRAINT `tblreview_ibfk_2` FOREIGN KEY (`orderprod_id`) REFERENCES `tblorderproduct` (`orderprod_id`);

--
-- Constraints for table `tblvendorcourier`
--
ALTER TABLE `tblvendorcourier`
  ADD CONSTRAINT `tblvendorcourier_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `tblseller` (`seller_id`),
  ADD CONSTRAINT `tblvendorcourier_ibfk_2` FOREIGN KEY (`courier_id`) REFERENCES `tblcourier` (`courier_id`);

--
-- Constraints for table `tblvendorproduct`
--
ALTER TABLE `tblvendorproduct`
  ADD CONSTRAINT `tblvendorproduct_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `tblseller` (`seller_id`),
  ADD CONSTRAINT `tblvendorproduct_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tblproduct` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
