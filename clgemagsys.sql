-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 10:51 AM
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
-- Database: `clgemagsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin@gmail.com', '89898989');

-- --------------------------------------------------------

--
-- Table structure for table `assignedevent`
--

CREATE TABLE `assignedevent` (
  `id` int(11) NOT NULL,
  `eventname` varchar(200) NOT NULL,
  `venue` varchar(200) NOT NULL,
  `startdate` varchar(200) NOT NULL,
  `enddate` varchar(200) NOT NULL,
  `starttime` varchar(200) NOT NULL,
  `endtime` varchar(200) NOT NULL,
  `chiefguest` varchar(200) NOT NULL,
  `fees` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `faculty` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignedevent`
--

INSERT INTO `assignedevent` (`id`, `eventname`, `venue`, `startdate`, `enddate`, `starttime`, `endtime`, `chiefguest`, `fees`, `description`, `faculty`) VALUES
(1, 'seminar', 'D2060', '2023-02-01', '2023-02-01', '10:00', '12:00', 'Mr.ABC', '200', 'all come', 'XYZ'),
(2, 'send off', 'D2061', '2023-02-11', '2023-02-12', '11:00', '04:00', 'pqr', '800', 'no', 'XYZ'),
(3, 'seminar', 'D108', '2023-02-01', '2023-02-01', '10:00', '12:00', 'Mr.ABC', '200', 'all come', 'sai');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `eid` int(11) NOT NULL,
  `eventname` varchar(200) NOT NULL,
  `eventfees` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `rollnumber` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `transactionid` varchar(200) NOT NULL,
  `mobilenumber` varchar(200) NOT NULL,
  `flag` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`eid`, `eventname`, `eventfees`, `name`, `rollnumber`, `email`, `class`, `type`, `transactionid`, `mobilenumber`, `flag`) VALUES
(31, 'freshers party', 100, 'Rashmi  Basavaraj Patil', '2262007', 'ruchitapatil@123.com', 'BCA-I', 'G pay', '1234567890', '7769091672', '1'),
(32, 'send off', 800, 'Rashmi  Basavaraj Patil', '2262007', 'ruchitapatil@123.com', 'BCA-I', 'G pay', '789078907890', '7769091672', '1'),
(33, 'seminar', 200, 'Rashmi  Basavaraj Patil', '2262007', 'ruchitapatil@123.com', 'BCA-I', 'G pay', 'h4567', '7769091672', '1');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `eventname` varchar(500) NOT NULL,
  `eventvenue` varchar(500) NOT NULL,
  `eventstartdate` varchar(500) NOT NULL,
  `eventenddate` varchar(500) NOT NULL,
  `starttime` varchar(500) NOT NULL,
  `endtime` varchar(500) NOT NULL,
  `chiefguest` varchar(500) NOT NULL,
  `eventfee` varchar(500) NOT NULL,
  `description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `eventname`, `eventvenue`, `eventstartdate`, `eventenddate`, `starttime`, `endtime`, `chiefguest`, `eventfee`, `description`) VALUES
(3, 'seminar', 'D2060', '2023-02-01', '2023-02-01', '10:00', '12:00', 'Mr.ABC', '200', 'all come'),
(4, 'send off', 'D2061', '2023-02-11', '2023-02-12', '11:00', '04:00', 'pqr', '800', 'no'),
(5, 'seminar', 'D108', '2023-02-01', '2023-02-01', '10:00', '12:00', 'Mr.ABC', '200', 'all come');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `srno` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `ID` varchar(500) NOT NULL,
  `mobile` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `aadhaar` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `pass` varchar(8) NOT NULL,
  `fflag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`srno`, `name`, `ID`, `mobile`, `email`, `aadhaar`, `address`, `pass`, `fflag`) VALUES
(6, 'Nandini', '123456', '9022836919', 'sai@gmailcom', '123412341234', 'solapur', '00000000', '1'),
(7, 'XYZ', '26331', '9088765554', 'x@gmail.com', '123409874567', 'solapur', '12345678', '1'),
(8, 'rohini patil', '98765', '0998776554', 'rohini@gmail.com', '123456567890', 'solapur', '12345678', '1');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `srno` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `rollnumber` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobilenumber` varchar(200) NOT NULL,
  `feedback` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`srno`, `name`, `class`, `rollnumber`, `email`, `mobilenumber`, `feedback`) VALUES
(1, 'Rashmi  Basavaraj Patil', 'BCA-III', 2262007, 'ruchitapatil@123.com', '7769091672', 'So Enjoing');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Name` varchar(50) NOT NULL,
  `Class` varchar(50) NOT NULL,
  `RollNumber` varchar(10) NOT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `AadharNumber` varchar(12) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `Class`, `RollNumber`, `MobileNumber`, `Email`, `AadharNumber`, `Address`, `Password`) VALUES
('shraddha baban jadhav', 'BBA-II', '2163002', '7769091672', 'shraddha@gmail.com', '167209366724', 'hduojndlnejlhdoenec', '15280372'),
('Rashmi  Basavaraj Patil', 'BCA-III', '2262007', '7769091672', 'ruchitapatil@123.com', '666666666666', 'bhkguiubjjjl', '45454545');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignedevent`
--
ALTER TABLE `assignedevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`RollNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignedevent`
--
ALTER TABLE `assignedevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `srno` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
