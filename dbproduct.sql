-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 08:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbproduct`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbcustomer`
--

CREATE TABLE `tbcustomer` (
  `Customer_Number` int(11) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Addres_Line` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Postal_Code` varchar(15) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Sales_Employee_Number` int(11) NOT NULL,
  `Credit_Limit` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbcustomer`
--

INSERT INTO `tbcustomer` (`Customer_Number`, `Customer_Name`, `Phone`, `Addres_Line`, `City`, `State`, `Postal_Code`, `Country`, `Sales_Employee_Number`, `Credit_Limit`) VALUES
(103, 'Atelier graphique', '40.32.2555', '54, rue Royale', 'Nantes', 'Paris', '44000', 'France', 1370, '21000.00'),
(112, 'Signal Gift Stores', '7025551838', '8489 Strong St.', 'Las Vegas', 'NV', '83030', 'United State Of America', 1166, '71800.00'),
(114, 'Australian Collectors, Co.', '03 9520 4555', '636 St Kilda Road.', 'Melbourne', 'Victoria', '3004', 'Australia', 1611, '117300.00'),
(119, 'La Rochelle', '40.67.8555', '67, rue des Cinquante Otages', 'Nantes', 'Paris', '44000', 'France', 1370, '118200.00'),
(121, 'Baane Mini Imports', '07-98 9555', 'Erling Skakkes gate 78', 'Stavern', 'Stavern', '4110', 'Norway', 1504, '81700.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbproducts`
--

CREATE TABLE `tbproducts` (
  `Product_Code` varchar(15) NOT NULL,
  `Product_Name` varchar(70) NOT NULL,
  `Product_Line` varchar(50) NOT NULL,
  `Product_Scale` varchar(10) NOT NULL,
  `Product_Vendor` varchar(50) NOT NULL,
  `Product_Description` text NOT NULL,
  `Quantity_Stock` smallint(6) NOT NULL,
  `Buy_Price` decimal(10,2) NOT NULL,
  `MSRP` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbproducts`
--

INSERT INTO `tbproducts` (`Product_Code`, `Product_Name`, `Product_Line`, `Product_Scale`, `Product_Vendor`, `Product_Description`, `Quantity_Stock`, `Buy_Price`, `MSRP`) VALUES
('S10_1678', '1969 Harley Davidson Ultimate Chopper', 'Motorcycles', '1:10', 'Min Lin Diecast', 'This replica features working kickstand, front suspension, gear-shift lever, footbrake lever, drive chain, wheels and steering. All parts are particularly delicate due to their precise scale and require special care and attention.', 7933, '48.81', '95.70'),
('S10_1949', '1952 Alpine Renault 1300', 'Classic Cars', '1:10', 'Classic Metal Creations', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', 7305, '98.58', '214.30'),
('S10_2016', '1996 Moto Guzzi 1100i', 'Motorcycles', '1:10', 'Highway 66 Mini Classics', 'Official Moto Guzzi logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish', 6625, '68.99', '118.94'),
('S10_4698', '2003 Harley-Davidson Eagle Drag Bike', 'Motorcycles', '1:10', 'Red Start Diecast', 'Model features, official Harley Davidson logos and insignias, detachable rear wheelie bar, heavy diecast metal with resin parts, authentic multi-color tampo-printed graphics, separate engine drive belts, free-turning front fork, rotating tires and rear racing slick, certificate of authenticity, detailed engine, display stand\\r\\n, precision diecast replica, baked enamel finish, 1:10 scale model, removable fender, seat and tank cover piece for displaying the superior detail of the v-twin engine', 5582, '91.02', '193.66'),
('S10_4757', '1972 Alfa Romeo GTA', 'Classic Cars', '1:10', 'Motor City Art Classics', 'Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', 3252, '85.68', '136.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbcustomer`
--
ALTER TABLE `tbcustomer`
  ADD PRIMARY KEY (`Customer_Number`);

--
-- Indexes for table `tbproducts`
--
ALTER TABLE `tbproducts`
  ADD PRIMARY KEY (`Product_Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
