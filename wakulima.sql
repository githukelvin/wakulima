-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2023 at 08:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wakulima`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `r_f_no` varchar(50) NOT NULL,
  `r_kg` float NOT NULL,
  `r_dt` timestamp NOT NULL DEFAULT current_timestamp(),
  `r_received_by` varchar(50) NOT NULL,
  `r_deliverer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `r_f_no`, `r_kg`, `r_dt`, `r_received_by`, `r_deliverer`) VALUES
(32, '2301', 15, '2023-03-22 15:20:37', '', 'JOHN'),
(33, '2302', 50, '2023-03-01 11:19:45', '', 'JOHN'),
(34, '2303', 45, '2023-03-03 11:22:37', '', 'JOHN'),
(35, '2304', 80, '2023-03-02 11:24:00', '', 'JULIET'),
(36, '2305', 15, '2023-03-04 11:25:08', '', 'JULIET'),
(37, '2401', 34, '2023-03-05 11:28:15', '', 'JULIET'),
(38, '2402', 80, '2023-03-06 11:29:12', '', 'JAMES'),
(39, '2403', 25, '2023-03-07 11:29:51', '', 'JAMES'),
(40, '2404', 40, '2023-02-28 11:30:28', '', 'JAMES'),
(41, '2405', 32, '2023-02-22 11:31:38', '', 'JAMES'),
(42, '2501', 20, '2023-02-20 11:38:14', '', 'KAMENE'),
(43, '2502', 90, '2023-02-08 11:39:28', '', 'KAMENE'),
(44, '2503', 58, '2023-02-09 11:40:20', '', 'KAMENE'),
(45, '2504', 62, '2023-02-14 11:45:43', '', 'KAMENE'),
(46, '2505', 32, '2023-02-13 11:46:48', '', 'KAMENE');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `e_name` varchar(50) NOT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `e_pass` varchar(50) NOT NULL,
  `e_role` varchar(50) DEFAULT NULL,
  `e_payroll_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `e_name`, `e_mail`, `username`, `e_pass`, `e_role`, `e_payroll_no`) VALUES
(3, 'Catherine Muendi', 'cnmuend@yahoo.com', '', '827ccb0eea8a706c4c34a16891f84e7b', 'Manager', '3456'),
(8, 'Nicole', 'nicole@gmail.com', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Farmer', '847'),
(9, 'Abel Maina', 'mainaabel@gmail.com', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Manager', '241'),
(10, 'JOHN', 'john@wakulima.com', '', '25d55ad283aa400af464c76d713c07ad', 'Clerk', '3844'),
(11, 'Caleb', 'caleb@gmail.com', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Manager', '784'),
(12, 'Juliet', 'juliet@gmail.com', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Clerk', '555'),
(13, 'James', 'james@gmail.com', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Clerk', '260'),
(15, 'Kamene', 'kamene@gmail.com', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Clerk', '800'),
(16, 'KEN', 'kenman@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', 'Manager', '557');

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `f_no` varchar(50) NOT NULL,
  `f_id` text NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `f_locallity` varchar(50) DEFAULT NULL,
  `f_ac` varchar(50) DEFAULT NULL,
  `last_paid` date DEFAULT NULL,
  `f_phone` varchar(20) DEFAULT NULL,
  `f_photo` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`f_no`, `f_id`, `f_name`, `f_locallity`, `f_ac`, `last_paid`, `f_phone`, `f_photo`) VALUES
('2301', '37089746', 'Victor', 'Chinga', '598379085', '2023-03-22', '254709895645', NULL),
('2302', '35912741', 'Ann ', 'Mahiga', '878956123', NULL, '254709445912', NULL),
('2303', '31257841', 'Mwangi', 'Penda', '23568974', NULL, '2547023568923', NULL),
('2304', '45127896', 'Mwangi', 'Karatina', '2354718596', NULL, '2547369852147', NULL),
('2305', '2589634', 'Omondi', 'Nyali', '32659874', NULL, '2547895623852', NULL),
('2401', '52147832', 'Wambura', 'Mukuruini', '5478123698', NULL, '254790236785', NULL),
('2402', '53912781', 'Kanyugo', 'Mahiga west', '9856231423', NULL, '254722069543', NULL),
('2403', '13256941', 'Randu', 'Wenda', '326598741', NULL, '254730568921', NULL),
('2404', '3265987', 'Nganga', 'Uhai', '7412589654', NULL, '254769852321', NULL),
('2405', '2314578', 'Nyathira', 'Sabasaba', '8794563221', '2023-03-24', '254736985285', NULL),
('2501', '87451296', 'Ruhanga', 'Ruiru', '23568974', NULL, '25476589234', NULL),
('2502', '14785232', 'Karimi', 'Tharaka', '258963147', NULL, '25472356897', NULL),
('2503', '23568974', 'Kioko', 'Maziwa', '147852369', NULL, '25479865230', NULL),
('2504', '21457896', 'Donavan', 'Gachima', '235689741', NULL, '254732659801', NULL),
('2505', '31253687', 'Mwaniki', 'Pangani', '12457896', NULL, '254798562147', NULL),
('2601', '56238974', 'Wamai', 'Wema', '124578963', NULL, '254790258963', NULL),
('2602', '32541785', 'Nyambura', 'Area 52', '3214569874', NULL, '254798562147', NULL),
('2603', '258741369', 'Tafari', 'Tharaka', '258741369', NULL, '254789562147', NULL),
('2604', '25874147', 'Nicole', 'Mema', '3256897412', NULL, '254798562378', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `p_to` varchar(50) NOT NULL,
  `p_date` date NOT NULL,
  `p_ac` bigint(20) NOT NULL,
  `p_method` varchar(30) NOT NULL,
  `p_transaction_code` int(11) NOT NULL COMMENT 'Bank or Mpesa confirmation or receipt no',
  `p_transacted_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings_rates`
--

CREATE TABLE `settings_rates` (
  `id` int(11) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `rate` float NOT NULL COMMENT 'sh per kg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings_rates`
--

INSERT INTO `settings_rates` (`id`, `from`, `to`, `rate`) VALUES
(8, '2023-03-01', '2023-03-30', 60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `r_f_no` (`r_f_no`),
  ADD KEY `r_received_by` (`r_received_by`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e_name` (`e_name`),
  ADD UNIQUE KEY `e_payroll_no_2` (`e_payroll_no`),
  ADD KEY `e_payroll_no` (`e_payroll_no`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`f_no`),
  ADD KEY `f_no` (`f_no`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_to` (`p_to`),
  ADD KEY `p_transacted_by` (`p_transacted_by`);

--
-- Indexes for table `settings_rates`
--
ALTER TABLE `settings_rates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `settings_rates`
--
ALTER TABLE `settings_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`r_f_no`) REFERENCES `farmers` (`f_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`p_transacted_by`) REFERENCES `employees` (`e_payroll_no`) ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`p_to`) REFERENCES `farmers` (`f_no`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
