-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2019 at 03:32 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bee`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branchid` int(11) NOT NULL,
  `branchname` varchar(100) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branchid`, `branchname`, `description`) VALUES
(10, 'Medan Kota', 'Testing Medan Kota'),
(11, 'Medan Baru', 'Medan Baru'),
(12, 'Medan Baru aja', 'Medan Baru'),
(13, 'Tarutung', 'Tapanuli UTara');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `divisionid` int(11) NOT NULL,
  `divisionname` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`divisionid`, `divisionname`, `description`) VALUES
(1, 'DIVISI HUMAS', 'Divisi untuk hubungan masyarakat'),
(2, 'DIVISI KETENAGAKERJAAN', 'Entah apalah ini');

-- --------------------------------------------------------

--
-- Table structure for table `employeetrainings`
--

CREATE TABLE `employeetrainings` (
  `employeetrainingid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text,
  `camefrom` text,
  `entrydate` date NOT NULL,
  `lenghtofwork` int(11) NOT NULL DEFAULT '1',
  `createdon` datetime NOT NULL,
  `createdby` varchar(100) NOT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeetrainings`
--

INSERT INTO `employeetrainings` (`employeetrainingid`, `name`, `email`, `address`, `camefrom`, `entrydate`, `lenghtofwork`, `createdon`, `createdby`, `updatedby`, `updatedon`) VALUES
(2, 'jack', 'jack@gmail.com', 'Medan', 'LP3I', '2019-01-17', 2, '0000-00-00 00:00:00', '', 'admin', '2019-01-28 14:30:49'),
(14, 'Fauzi', 'fauzi@gmail.com', 'Medan Belawan', 'LP3I Medan', '2018-12-01', 3, '2019-01-29 13:07:53', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expenseid` int(11) NOT NULL,
  `expensename` varchar(255) NOT NULL,
  `expensevalue` decimal(10,0) DEFAULT NULL,
  `description` text,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `expensetypeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expensetypes`
--

CREATE TABLE `expensetypes` (
  `expensetypeid` int(11) NOT NULL,
  `expensetypename` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expensetypes`
--

INSERT INTO `expensetypes` (`expensetypeid`, `expensetypename`, `description`) VALUES
(1, 'Training 2019', 'ini deskripsi training 2019');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleid` int(11) NOT NULL,
  `rolename` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleid`, `rolename`, `description`) VALUES
(1, 'Admin', 'only for admin'),
(2, 'User', 'For Spesific User');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `trainingid` int(11) NOT NULL,
  `employeetrainingid` int(11) NOT NULL,
  `description` text,
  `createdby` varchar(255) NOT NULL,
  `createdon` datetime NOT NULL,
  `trainingdate` datetime NOT NULL,
  `trainingtypeid` int(11) NOT NULL,
  `trainer` varchar(100) NOT NULL,
  `trainingtitle` varchar(255) NOT NULL,
  `divisionid` int(11) NOT NULL,
  `branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`trainingid`, `employeetrainingid`, `description`, `createdby`, `createdon`, `trainingdate`, `trainingtypeid`, `trainer`, `trainingtitle`, `divisionid`, `branchid`) VALUES
(1, 2, 'this is description', 'admin', '2019-01-29 14:27:28', '2018-12-01 00:00:00', 4, 'jack', 'Test Save Training', 1, 13),
(2, 14, 'ini Test Kedua', 'admin', '2019-01-29 14:28:33', '2018-11-02 00:00:00', 4, 'sdasd', 'Tes Training Kedua', 2, 13),
(3, 14, 'TEst ketiga', 'admin', '2019-01-29 14:44:07', '2019-01-01 00:00:00', 4, 'sdasd', 'Tes Training Ketiga', 2, 13);

-- --------------------------------------------------------

--
-- Table structure for table `trainingtypes`
--

CREATE TABLE `trainingtypes` (
  `trainingtypeid` int(11) NOT NULL,
  `trainingtypename` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainingtypes`
--

INSERT INTO `trainingtypes` (`trainingtypeid`, `trainingtypename`, `description`) VALUES
(4, 'Type three', 'description type three');

-- --------------------------------------------------------

--
-- Table structure for table `userinformations`
--

CREATE TABLE `userinformations` (
  `userinformationid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nipp` varchar(50) NOT NULL,
  `branchid` int(11) NOT NULL,
  `phonenumber` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinformations`
--

INSERT INTO `userinformations` (`userinformationid`, `username`, `nipp`, `branchid`, `phonenumber`) VALUES
(5, 'jack2', '0d0d0001em', 11, NULL),
(6, 'sdasd', 'aSDASFfsdfsd', 12, '08123123'),
(8, 'admin', 'admin00000', 10, '08123123123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `issuspend` varchar(1) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `roleid` varchar(45) NOT NULL DEFAULT '0',
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `fullname`, `email`, `password`, `issuspend`, `token`, `roleid`, `createdby`, `createdon`) VALUES
('admin', 'admin super', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', '0', NULL, '1', 'admin', '2019-01-29 12:52:52'),
('jack', 'jack mamba2', 'jackmamba2gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0', NULL, '2', 'admin', '2019-01-27 12:52:52'),
('sdasd', 'asdas awdwd', 'asdadsa@gmail.com', '6c0cbf5029aed0af395ac4b864c6b095', '0', NULL, '2', 'admin', '2019-01-27 12:58:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branchid`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`divisionid`);

--
-- Indexes for table `employeetrainings`
--
ALTER TABLE `employeetrainings`
  ADD PRIMARY KEY (`employeetrainingid`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expenseid`),
  ADD KEY `fk_expenses_1_idx` (`createdby`),
  ADD KEY `fk_expenses_2_idx` (`expensetypeid`);

--
-- Indexes for table `expensetypes`
--
ALTER TABLE `expensetypes`
  ADD PRIMARY KEY (`expensetypeid`),
  ADD UNIQUE KEY `expensetypeid_UNIQUE` (`expensetypeid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`trainingid`),
  ADD UNIQUE KEY `trainingid_UNIQUE` (`trainingid`);

--
-- Indexes for table `trainingtypes`
--
ALTER TABLE `trainingtypes`
  ADD PRIMARY KEY (`trainingtypeid`),
  ADD UNIQUE KEY `trainingtypeid_UNIQUE` (`trainingtypeid`);

--
-- Indexes for table `userinformations`
--
ALTER TABLE `userinformations`
  ADD PRIMARY KEY (`userinformationid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branchid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `divisionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employeetrainings`
--
ALTER TABLE `employeetrainings`
  MODIFY `employeetrainingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expenseid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `expensetypes`
--
ALTER TABLE `expensetypes`
  MODIFY `expensetypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `trainingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `trainingtypes`
--
ALTER TABLE `trainingtypes`
  MODIFY `trainingtypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `userinformations`
--
ALTER TABLE `userinformations`
  MODIFY `userinformationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
