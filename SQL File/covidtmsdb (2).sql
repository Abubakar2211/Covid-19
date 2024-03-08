-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2024 at 03:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covidtmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `image` varchar(400) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` varchar(500) NOT NULL,
  `dt` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `image`, `name`, `content`, `dt`) VALUES
(4, 'images/cef72fb6-5016-4545-b881-38d1c67f38ed.jpg', 'DR. Farah Gul', 'she say meeting the moment, to leave no one behind. medicines cure disease, but only docter can cure patients', '2024-02-15 11:52:29'),
(5, 'images/f8968a9b-25e1-451a-b1b2-a9932847bead.jpg', 'DR. Fateh Ali Tippu', 'The NHS is offering some people boosters because protection from the COVID-19 vaccine fades over time', '2024-02-15 16:01:32'),
(6, 'images/c3c0d3ba-362b-487f-9fdf-a6dfa517599b.jpg', 'Dr. Sadat shah', 'His saying people aged 75 and over are now eligible for there spring COVID-19 booster vaccineHis saying people aged 75 and over are now eligible for there spring COVID-19 booster vaccine', '2024-02-16 11:09:55'),
(9, 'images/256a3f81-7147-4755-91d4-ce244fc2f8ec.jpg', 'DR. Farhat Abbas', 'He say they will have heard something.silence and secrets do not protect our children. Honestly and openness do. Think about how many they will understand. you know them best', '2024-02-16 23:50:22'),
(10, 'images/ab38e335-db7e-4246-83b3-09c2e6dbd27e.jpg', 'DR. Nasir Rehman', 'He say. Robust health system are a first line of defence against age_old public challenges such as malaria, and new onces like COVID-19,', '2024-02-16 23:53:00'),
(12, 'images/2f12c86e-602e-4ebe-8582-eef19d063c09.jpg', '	Dr. Uzma chishti', ' There should be a minimum intervel of 14 days between the administration of the COVID-19 vaccine and any other vaccine against other disease', '2024-03-08 18:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'Admin', 'Admin', '1234567890', 'admin@gmail.com', '1234', '2021-04-19 18:30:00'),
(3, 'Abubakar', 'Abubakar', '312208235', 'Abubakar192005@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-02-14 15:39:27'),
(5, 'Admin', 'Abubakar Baig', '6564665655', 'abubakar192005@gmail.com', '757575', '2024-02-14 15:42:35'),
(6, 'Admin', 'Abubakar Baig', '2147483647', 'abubakar192005@gmail.com', '1515151', '2024-02-14 15:45:47'),
(9, 'Admin', 'Mehmood Baig', '3122856545', 'mehmood2010@gmail.com', '5454', '2024-02-16 15:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatients`
--

CREATE TABLE `tblpatients` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `GovtIssuedIdNo` varchar(150) DEFAULT NULL,
  `FullAddress` varchar(255) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatients`
--

INSERT INTO `tblpatients` (`id`, `FullName`, `MobileNumber`, `DateOfBirth`, `GovtIssuedIdNo`, `FullAddress`, `State`, `RegistrationDate`) VALUES
(1, 'Abubakar Baig', 3122082355, '2005-04-13', '424019456585', 'Sector 1/D orangi town karachi', 'Sindh', '2024-03-08 13:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblphlebotomist`
--

CREATE TABLE `tblphlebotomist` (
  `id` int(11) NOT NULL,
  `EmpID` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblphlebotomist`
--

INSERT INTO `tblphlebotomist` (`id`, `EmpID`, `FullName`, `MobileNumber`, `RegDate`) VALUES
(9, '4545454585', 'Jinnah Hospital Karachi', 2199201300, '2024-02-16 08:24:27'),
(10, '525865414', 'Abbassi Shaheed Hospital', 262190400, '2024-02-16 10:14:50'),
(11, '4562158333', 'Aga Khan University Hospital', 21111911911, '2024-02-16 10:15:39'),
(12, '789658', 'Ziauddin Hospital', 2136648237, '2024-02-16 10:19:28'),
(13, '454575', 'Ruth KM Pfau Civil Hospital Karachi', 2199215740, '2024-02-16 10:20:37'),
(14, '8545845', 'A.O. Hospital', 2136685560, '2024-02-16 10:21:32'),
(15, '454545212', 'Burhani Hospital', 2132212572, '2024-02-16 10:22:20'),
(16, '78745451', 'Bahria Hospital Karachi', 2132212572, '2024-02-16 10:22:49'),
(17, '4512512', 'Hill Park Hospital Karachi', 2132212572, '2024-02-16 10:26:10'),
(18, '45421215212', 'SIUT', 21111000313, '2024-02-16 10:27:32'),
(19, '48454212', 'LIAQUAT NATIONAL ALI HOSPITAL', 21111456456, '2024-02-16 10:29:51'),
(20, '4562158354', 'Mehmood Baig', 2132212572, '2024-02-16 15:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblreporttracking`
--

CREATE TABLE `tblreporttracking` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(40) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `PostingTime` timestamp NULL DEFAULT current_timestamp(),
  `RemarkBy` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblreporttracking`
--

INSERT INTO `tblreporttracking` (`id`, `OrderNumber`, `Remark`, `Status`, `PostingTime`, `RemarkBy`) VALUES
(1, 337863069, 'On the way ', 'On the Way for Collection', '2024-03-08 13:30:33', 3),
(2, 337863069, 'sample cellacted', 'Sample Collected', '2024-03-08 13:31:00', 3),
(3, 337863069, 'Send the lab', 'Sent to Lab', '2024-03-08 13:31:28', 3),
(4, 337863069, 'complete ', 'Delivered', '2024-03-08 13:33:16', 3),
(5, 997629764, 'ont the way', 'On the Way for Collection', '2024-03-08 13:55:16', 3),
(6, 997629764, 'Collected the sample', 'Sample Collected', '2024-03-08 13:55:41', 3),
(7, 997629764, 'send to lab', 'Sent to Lab', '2024-03-08 13:56:00', 3),
(8, 997629764, 'Completed', 'Delivered', '2024-03-08 13:56:34', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbltestrecord`
--

CREATE TABLE `tbltestrecord` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(14) DEFAULT NULL,
  `PatientMobileNumber` bigint(14) DEFAULT NULL,
  `TestType` varchar(100) DEFAULT NULL,
  `TestTimeSlot` varchar(120) DEFAULT NULL,
  `ReportStatus` varchar(100) DEFAULT NULL,
  `FinalReport` varchar(150) DEFAULT NULL,
  `ReportUploadTime` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NULL DEFAULT current_timestamp(),
  `AssignedtoEmpId` varchar(150) DEFAULT NULL,
  `AssigntoName` varchar(180) DEFAULT NULL,
  `AssignedTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestrecord`
--

INSERT INTO `tbltestrecord` (`id`, `OrderNumber`, `PatientMobileNumber`, `TestType`, `TestTimeSlot`, `ReportStatus`, `FinalReport`, `ReportUploadTime`, `RegistrationDate`, `AssignedtoEmpId`, `AssigntoName`, `AssignedTime`) VALUES
(1, 997629764, 3122082355, 'Covid-19', '2024-03-08T18:53', 'Delivered', 'e561e8f389abdf2a45c4f7eee133c2411709906194.pdf', '08-03-2024 06:56:34 PM', '2024-03-08 13:54:00', '45421215212', 'SIUT', '08-03-2024 06:54:57 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatients`
--
ALTER TABLE `tblpatients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblphlebotomist`
--
ALTER TABLE `tblphlebotomist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpatients`
--
ALTER TABLE `tblpatients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblphlebotomist`
--
ALTER TABLE `tblphlebotomist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
