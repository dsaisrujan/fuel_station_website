-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2020 at 03:49 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pump`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail_entry`
--

CREATE TABLE `bill_detail_entry` (
  `bill_seq_no` int(11) NOT NULL,
  `bill_no` int(10) NOT NULL,
  `vehicle_code` int(11) NOT NULL,
  `vehicle_driver_name` varchar(50) NOT NULL,
  `item_code` int(11) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `item_quantity` double(11,2) DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `bill_date` datetime NOT NULL,
  `c_user` varchar(50) NOT NULL,
  `c_date` datetime NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_detail_entry`
--

INSERT INTO `bill_detail_entry` (`bill_seq_no`, `bill_no`, `vehicle_code`, `vehicle_driver_name`, `item_code`, `price`, `item_quantity`, `amount`, `bill_date`, `c_user`, `c_date`, `status`) VALUES
(137, 97, 8, 'shafi', 4, 40.00, 5.00, 200.00, '2020-09-02 23:47:00', 'suresh', '2020-09-05 23:48:18', 'A'),
(162, 98, 8, 'shfi', 1, 75.89, 10.00, 758.90, '2020-09-03 14:22:00', 'suresh', '2020-09-06 14:22:44', 'A'),
(163, 96, 8, 'shafi', 3, 35.00, 4.00, 140.00, '2020-09-01 23:47:00', 'suresh', '2020-09-06 14:45:54', 'A'),
(164, 96, 8, 'shafi', 5, 40.00, 4.00, 160.00, '2020-09-01 23:47:00', 'suresh', '2020-09-06 14:45:54', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `bill_entry`
--

CREATE TABLE `bill_entry` (
  `bill_no` int(11) NOT NULL,
  `bill_number` varchar(50) NOT NULL,
  `bill_type` varchar(10) NOT NULL,
  `cardholder_name` varchar(100) NOT NULL,
  `credit_customer_code` int(11) DEFAULT NULL,
  `bill_amount` double(20,2) DEFAULT NULL,
  `cc_payment_type` varchar(2) NOT NULL,
  `bill_date` datetime NOT NULL,
  `total_amount_bal` double(20,2) DEFAULT NULL,
  `cc_payment_id` int(11) NOT NULL,
  `bill_created_user_id` varchar(50) DEFAULT NULL,
  `c_date` datetime NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_entry`
--

INSERT INTO `bill_entry` (`bill_no`, `bill_number`, `bill_type`, `cardholder_name`, `credit_customer_code`, `bill_amount`, `cc_payment_type`, `bill_date`, `total_amount_bal`, `cc_payment_id`, `bill_created_user_id`, `c_date`, `status`) VALUES
(94, '39', 'CREDIT', '', 4, 1000.00, 'Ad', '2020-09-01 22:37:00', 2200.00, 0, 'suresh', '2020-09-05 22:37:09', 'A'),
(95, '40', 'CREDIT', '', 5, 1000.00, 'Ad', '2020-09-02 22:38:02', 2250.00, 0, 'suresh', '2020-09-05 22:38:45', 'A'),
(96, '001', 'CREDIT', 'shafi', 2, 300.00, 'Su', '2020-09-01 23:47:00', 750.00, 0, 'suresh', '2020-09-06 14:45:54', 'A'),
(97, '002', 'CREDIT', 'shafi', 2, 200.00, 'Su', '2020-09-02 23:47:00', 900.00, 0, 'suresh', '2020-09-05 23:48:18', 'A'),
(98, '003', 'CREDIT', 'shfi', 2, 758.90, 'Su', '2020-09-03 14:22:00', 900.00, 0, 'suresh', '2020-09-06 14:22:44', 'A'),
(99, '43', 'GEN', 'advance', 0, 100.00, 'Ad', '2020-09-02 18:32:32', 200.00, 0, 'suresh', '2020-09-06 18:32:41', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `calibration_master`
--

CREATE TABLE `calibration_master` (
  `s_id` int(11) NOT NULL,
  `tank_diameter` int(11) DEFAULT NULL,
  `tank_length` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `oil_type` varchar(15) DEFAULT NULL,
  `c_user` varchar(50) DEFAULT NULL,
  `c_date` datetime DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calibration_master`
--

INSERT INTO `calibration_master` (`s_id`, `tank_diameter`, `tank_length`, `capacity`, `oil_type`, `c_user`, `c_date`, `status`) VALUES
(1, 100, 450, 10000, '2', 'suresh', '2016-12-30 12:12:48', 'A'),
(2, 194, 550, 15000, '1', 'suresh', '2016-12-30 12:15:26', 'A'),
(3, 220, 750, 20000, '1', 'suresh', '2016-12-30 12:15:53', 'A'),
(4, 300, 1000, 70000, '1', 'suresh', '2016-12-30 12:16:20', 'A'),
(5, 100, 450, 10000, '1', 'suresh', '2016-12-30 12:12:32', 'A'),
(6, 210, 625, 15000, '2', 'suresh', '2016-12-30 12:16:50', 'A'),
(7, 300, 750, 20000, '2', 'suresh', '2016-12-30 12:17:03', 'A'),
(8, 450, 950, 70000, '2', 'suresh', '2016-12-30 12:17:23', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `cc_payment_trans`
--

CREATE TABLE `cc_payment_trans` (
  `cc_credit_customer_id` int(11) NOT NULL,
  `cc_sq_no` int(11) NOT NULL,
  `cc_payment_type` int(2) NOT NULL,
  `cc_payment_desc` varchar(200) NOT NULL,
  `cc_payment_amt` double(20,2) NOT NULL,
  `cc_bank_name` varchar(100) NOT NULL,
  `cc_card_no` int(16) NOT NULL,
  `cc_chq_dd_date` date NOT NULL,
  `cc_created_user_id` int(11) NOT NULL,
  `cc_payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cc_payment_trans`
--

INSERT INTO `cc_payment_trans` (`cc_credit_customer_id`, `cc_sq_no`, `cc_payment_type`, `cc_payment_desc`, `cc_payment_amt`, `cc_bank_name`, `cc_card_no`, `cc_chq_dd_date`, `cc_created_user_id`, `cc_payment_date`) VALUES
(0, 62, 0, '', 0.00, '', 0, '0000-00-00', 0, '0000-00-00'),
(22, 63, 1, '12131', 22.00, 'fgdfg', 5345345, '2014-12-13', 0, '2014-12-13'),
(0, 64, 0, '', 0.00, '', 0, '0000-00-00', 0, '0000-00-00'),
(21, 65, 1, 'gdgdfg', 200.00, 'mbnm', 6464, '2014-12-12', 0, '2014-12-12'),
(21, 67, 1, 'hhfghfgh', 2000.00, '', 0, '2014-12-12', 0, '2014-12-12'),
(21, 69, 1, 'ghfghfg', 3000.00, 'narsimhabankofindia', 0, '2014-12-12', 0, '2014-12-12'),
(21, 70, 1, '', 200.00, 'narsimhabankofindia', 0, '2014-12-12', 0, '2014-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `creditcustomer_vechicle_master`
--

CREATE TABLE `creditcustomer_vechicle_master` (
  `cc_s_id` int(11) NOT NULL,
  `credit_customer_id` int(11) NOT NULL,
  `cc_vehicle_no` varchar(15) NOT NULL,
  `cc_vehicle_model` varchar(50) NOT NULL,
  `cc_start_date` datetime NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creditcustomer_vechicle_master`
--

INSERT INTO `creditcustomer_vechicle_master` (`cc_s_id`, `credit_customer_id`, `cc_vehicle_no`, `cc_vehicle_model`, `cc_start_date`, `user_id`, `status`) VALUES
(7, 1, '1450', 'vft', '2016-12-12 00:00:00', 'suresh', 'A'),
(8, 2, '1980', 'heavy vehilcle', '2020-09-05 18:08:40', 'suresh', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `credit_customer_master`
--

CREATE TABLE `credit_customer_master` (
  `credit_customer_code` int(11) NOT NULL,
  `credit_customer_name` varchar(50) NOT NULL,
  `cc_address1` varchar(50) NOT NULL,
  `cc_address2` varchar(50) NOT NULL,
  `cc_agency_name` varchar(50) NOT NULL,
  `category` varchar(25) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `cc_credit_limit` double(20,2) NOT NULL,
  `cc_register_date` date NOT NULL,
  `cc_id_proof_type_code` int(11) NOT NULL,
  `id_proof_image` varchar(50) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `cc_mobile_no` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_customer_master`
--

INSERT INTO `credit_customer_master` (`credit_customer_code`, `credit_customer_name`, `cc_address1`, `cc_address2`, `cc_agency_name`, `category`, `email_id`, `cc_credit_limit`, `cc_register_date`, `cc_id_proof_type_code`, `id_proof_image`, `user_id`, `cc_mobile_no`, `role_id`, `status`) VALUES
(1, 'ramesh', 'qqqqqq', 'eeeeee', 'aaaaaa', '1', 'ramesh@gmailcom', 12300.00, '2016-12-08', 9, 'img/user_data/14825716822270.jpg', 'suresh', 123456789, 4, 'A'),
(2, 'shaffi', 'eeeee', 'hhhhh', 'ccccc', '', 'shaffi@gmail.com', 1000.00, '2016-12-13', 7, 'img/user_data/148256319426656.jpg', 'suresh', 1234567890, 4, 'A'),
(4, 'jyo', 'ftft', 'ghfh', 'jio', '1', 'jyo@gmail.com', 1200.00, '2016-12-27', 1, 'img/user_data/14828370516378.jpg', 'suresh', 124567890, 4, 'A'),
(5, 'daruck', '11,ramanthapur', 'hyd', 'suresh', 'cuser', 'sur@gmail.com', 1250.00, '2016-12-28', 1, 'img/user_data/1482909171559.jpg', 'suresh', 1234567890, 4, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `customer_card`
--

CREATE TABLE `customer_card` (
  `bill_no` int(11) NOT NULL,
  `card_type` int(11) NOT NULL,
  `card_number` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `no_of_units` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_card`
--

INSERT INTO `customer_card` (`bill_no`, `card_type`, `card_number`, `name`, `no_of_units`, `price`, `amount`, `date`, `user_id`) VALUES
(1, 2, 34534636, 'dsst', 33, 88, 2234, '2014-10-29', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `daily_invoice`
--

CREATE TABLE `daily_invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_date` datetime NOT NULL,
  `invoice_total_amount` double(20,2) NOT NULL,
  `invoice_entered_by` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_invoice`
--

INSERT INTO `daily_invoice` (`invoice_id`, `invoice_date`, `invoice_total_amount`, `invoice_entered_by`, `status`) VALUES
(1, '0000-00-00 00:00:00', 0.00, '', ''),
(75757, '0000-00-00 00:00:00', 2667579.00, '', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `daily_pump_allotment`
--

CREATE TABLE `daily_pump_allotment` (
  `s_id` int(11) NOT NULL,
  `emp_code` varchar(100) DEFAULT NULL,
  `shift_code` varchar(25) NOT NULL,
  `allotment_date` datetime NOT NULL,
  `allotment_pumps` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `c_date` datetime NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_pump_allotment`
--

INSERT INTO `daily_pump_allotment` (`s_id`, `emp_code`, `shift_code`, `allotment_date`, `allotment_pumps`, `user_id`, `c_date`, `status`) VALUES
(10, '3', '4', '2016-12-16 16:12:22', '19,20', 'suresh', '2016-12-31 18:01:04', 'A'),
(13, '4', '4', '2016-12-21 13:12:18', '17,19,20', 'suresh', '2016-12-31 18:01:33', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `daily_transactions`
--

CREATE TABLE `daily_transactions` (
  `s_id` int(11) NOT NULL,
  `bill_number` varchar(50) NOT NULL,
  `inter_trans` varchar(15) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `amount_type` varchar(20) DEFAULT NULL,
  `date_of_received` datetime DEFAULT NULL,
  `type_of_customer` varchar(20) DEFAULT NULL,
  `credit_customer_no` varchar(25) DEFAULT NULL,
  `payment_mode` varchar(25) DEFAULT NULL,
  `dd_cq_date` datetime DEFAULT NULL,
  `bank` varchar(25) DEFAULT NULL,
  `branch` varchar(25) DEFAULT NULL,
  `ifsc_code` varchar(20) DEFAULT NULL,
  `cc_no` varchar(25) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `c_date` datetime DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_transactions`
--

INSERT INTO `daily_transactions` (`s_id`, `bill_number`, `inter_trans`, `description`, `amount`, `amount_type`, `date_of_received`, `type_of_customer`, `credit_customer_no`, `payment_mode`, `dd_cq_date`, `bank`, `branch`, `ifsc_code`, `cc_no`, `user_id`, `c_date`, `status`) VALUES
(39, '', 'no', 'advance paid', 1000.00, 'Credit', '2020-09-01 22:37:00', 'CREDIT', '4', '1', '0000-00-00 00:00:00', '', '', '', '', 'suresh', '2020-09-05 22:37:09', 'A'),
(40, '', 'no', 'advance', 1000.00, 'Credit', '2020-09-02 22:38:02', 'CREDIT', '5', '2', '2020-09-02 22:38:25', 'andb', 'kmm', 'andb009', '9080', 'suresh', '2020-09-05 22:38:45', 'A'),
(41, '', 'no', 'shaffi paid', 400.00, 'Credit', '2020-09-02 08:48:27', 'CREDIT', '2', '1', '0000-00-00 00:00:00', '', '', '', '', 'suresh', '2020-09-06 08:48:35', 'A'),
(42, '003', 'no', 'amount paid', 758.90, 'Credit', '2020-09-03 14:22:00', 'CREDIT', '2', '1', '0000-00-00 00:00:00', '', '', '', '', 'suresh', '2020-09-06 14:22:44', 'A'),
(44, '', 'yes', 'repair', 100.00, 'Debit', '2020-09-02 18:09:17', 'GEN', '', '', '0000-00-00 00:00:00', '', '', '', '', 'suresh', '2020-09-06 18:34:31', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `dip_tank_trans`
--

CREATE TABLE `dip_tank_trans` (
  `dip_tank_seqno` int(11) NOT NULL,
  `tank_id` int(11) DEFAULT NULL,
  `type_of_dip` int(11) NOT NULL,
  `dip_reading` int(11) DEFAULT NULL,
  `dip_date` date DEFAULT NULL,
  `dip_user_id` varchar(50) DEFAULT NULL,
  `c_date` datetime NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dip_tank_trans`
--

INSERT INTO `dip_tank_trans` (`dip_tank_seqno`, `tank_id`, `type_of_dip`, `dip_reading`, `dip_date`, `dip_user_id`, `c_date`, `status`) VALUES
(3, 8, 1, 12900, '2017-01-08', 'suresh', '2017-01-23 15:27:48', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `employee_master`
--

CREATE TABLE `employee_master` (
  `emp_code` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `category` varchar(25) DEFAULT NULL,
  `contact_no` varchar(25) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `id_proof_type_code` int(11) NOT NULL,
  `id_proof_image` varchar(100) NOT NULL,
  `id_marks1` varchar(40) NOT NULL,
  `id_marks2` varchar(40) NOT NULL,
  `role_id` int(11) NOT NULL,
  `s_id_user` varchar(50) NOT NULL,
  `c_date` datetime DEFAULT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_master`
--

INSERT INTO `employee_master` (`emp_code`, `emp_name`, `address1`, `address2`, `category`, `contact_no`, `email_id`, `id_proof_type_code`, `id_proof_image`, `id_marks1`, `id_marks2`, `role_id`, `s_id_user`, `c_date`, `status`) VALUES
(3, 'ram', '123,ramanthapur', 'hydr', 'emp', '1478523690', 'ram@gmail.com', 1, 'img/user_data/14829138396858.jpg', 'tttttttt', 'yyyyyyyyyyy', 2, 'suresh', '2016-12-28 00:00:00', 'A'),
(4, 'pavan', '121-12,Ramanthapur', 'Hyd', 'emp', '1234567899', 'pavan@gmaail.com', 1, 'img/user_data/148317812813972.jpg', 'dddddd', 'cccccccccccc', 1, 'suresh', '2016-12-31 15:25:28', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `sno` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `relation` int(1) NOT NULL,
  `wife/husband` varchar(40) NOT NULL,
  `occuption` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `location` varchar(200) NOT NULL,
  `details` varchar(500) NOT NULL,
  `parentid` int(11) NOT NULL,
  `image` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`sno`, `name`, `relation`, `wife/husband`, `occuption`, `phone`, `location`, `details`, `parentid`, `image`) VALUES
(25, 'chiramjeevi', 0, 'surekha', 'hero', '123654789', 'hyderabad', 'xxxxxxxxxxxxxxxxxxxxxxxx', 0, '0Untitled.png'),
(26, 'ramcheran', 1, 'upasanna', 'hero', '9866556202', 'hyderabad', 'xxxxxxxxxxxxxxxxxxxxxxxx', 25, '0vlcsnap-10557.png'),
(27, 'sweety', 2, '', 'student', '659865822', 'hyderabad', 'xxxxxxxxxxxxxxxxxxxxxxxx', 26, '0monster.png'),
(28, 'laxmi', 2, 'vaibhav', 'business', '9866556202', 'hyderabad', 'xxxxxxxxxxxxxxxxxxxxxxxx', 25, '0Untitled.png'),
(29, 'narayana', 2, 'narayanamma', 'business', '6456456', 'hyderabad', 'xxxxxxxxxxxxxxxxxxxxxxxx', 28, '0monster.png'),
(30, 'rekha', 2, 'varun', 'business', '6456456', 'hyderabad', 'xxxxxxxxxxxxxxxxxxxxxxxx', 28, '0Untitled.png'),
(31, 'mahesh', 1, 'namurtha', 'hero', '64577', 'hyderabad', 'xxxxxxxxxxxxxxxxxxxxxxxx', 26, '0monster.png'),
(32, 'giuthambabu', 1, '', 'student', '534535', 'hyderabad', 'xxxxxxxxxxxxxxxxxxxxxxxx', 31, '0Hindu-God-Yashoda-And-Krishna-Beautiful-Janmashtmi-1024x709.jpg'),
(33, 'narthaki', 2, 'arjun', 'hero', '5345345', 'hyderabad', 'xxxxxxxxxxxxxxxxxxxxxxxx', 26, '0Untitled.png'),
(34, 'menann', 1, '', 'student', '56456', 'hyderabad', 'xxxxxxxxxxxxxxxxxxxxxxxx', 33, '0monster.png'),
(35, 'subaiah', 1, 'savithri', 'farmer', '6456456', 'kamamm', 'xxxxxxxxxxxxxxxxxxxxxxxx', 34, '0vlcsnap-10557.png'),
(36, 'sfsdfs', 2, 'fgdfgd', 'gdfgdfgdfgdf', '6456457', 'hdhfgh', 'xxxxxxxxxxxxxxxxxxxxxxxx', 26, '0monster.png');

-- --------------------------------------------------------

--
-- Table structure for table `id_proof_type_master`
--

CREATE TABLE `id_proof_type_master` (
  `id_proof_type_code` int(11) NOT NULL,
  `id_proof_name` varchar(30) NOT NULL,
  `c_user` varchar(50) NOT NULL,
  `c_date` datetime NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_proof_type_master`
--

INSERT INTO `id_proof_type_master` (`id_proof_type_code`, `id_proof_name`, `c_user`, `c_date`, `status`) VALUES
(1, 'Driving license', '', '0000-00-00 00:00:00', 'A'),
(4, 'pan card', '', '0000-00-00 00:00:00', 'A'),
(7, 'VOTER CARD', '', '0000-00-00 00:00:00', 'A'),
(9, 'Adharr', '', '2016-12-31 15:29:34', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `	invoice_item_seq_no` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `item_code` int(11) DEFAULT NULL,
  `no_of_units` int(11) DEFAULT NULL,
  `item_price` double(20,2) DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`	invoice_item_seq_no`, `invoice_id`, `item_code`, `no_of_units`, `item_price`, `amount`) VALUES
(0, -1, -2, 3, -23.30, -42.40);

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE `item_master` (
  `item_code` int(11) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `invoice_item_id` varchar(100) NOT NULL,
  `invoice_units` int(11) NOT NULL,
  `no_of_units` int(11) NOT NULL,
  `status` text NOT NULL,
  `item_date` date DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`item_code`, `item_name`, `invoice_id`, `invoice_item_id`, `invoice_units`, `no_of_units`, `status`, `item_date`, `user_id`) VALUES
(0, '', 75757, '214', 56757, 0, '', '2014-11-24', ''),
(214, 'xtra premium', 0, '', 0, -619824, 'A', '2014-10-22', 'shashidhar'),
(5345, 'gfgdgdf', 0, '', 0, 6456286, 'A', '2014-11-21', ''),
(46464, '2t oil', 0, '', 0, 6557191, 'A', '2014-10-21', 'shashidhar'),
(436436, 'lubricant', 0, '', 0, 765, 'A', '2014-10-22', 'shashidhar'),
(21435345, 'disel', 0, '', 0, 333, 'A', '2014-10-05', 'shashidhar'),
(2147483647, 'petrol', 0, '', 0, 546, 'A', '2014-10-30', 'shashidhar');

-- --------------------------------------------------------

--
-- Table structure for table `leaveapplications`
--

CREATE TABLE `leaveapplications` (
  `id` int(10) NOT NULL,
  `emp_code` varchar(20) NOT NULL,
  `department` varchar(50) NOT NULL,
  `office` varchar(50) NOT NULL,
  `applicant_name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `pay` varchar(50) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `date_of_age_55` varchar(12) DEFAULT NULL,
  `date_of_age_60` varchar(12) DEFAULT NULL,
  `nature_of_leave` varchar(50) DEFAULT NULL,
  `leave_period` varchar(50) DEFAULT NULL,
  `start_date_leave` date NOT NULL,
  `end_date_leave` date DEFAULT NULL,
  `datefchk` varchar(1) DEFAULT NULL,
  `datetchk` varchar(1) DEFAULT NULL,
  `purpose_of_leave` varchar(100) DEFAULT NULL,
  `period_of_extension` varchar(21) DEFAULT NULL,
  `period_of_extensiont` varchar(21) DEFAULT NULL,
  `medical_certificate` varchar(100) DEFAULT NULL,
  `address_whileon_leave` varchar(100) DEFAULT NULL,
  `salary_pay_on_above_address` varchar(50) DEFAULT NULL,
  `life_certificate` varchar(100) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `cdesignation` varchar(50) DEFAULT NULL,
  `cstation` varchar(50) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `csignature` blob,
  `status` varchar(50) NOT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `Forward_to` varchar(50) DEFAULT NULL,
  `cuser` varchar(20) DEFAULT NULL,
  `type` varchar(5) NOT NULL DEFAULT 'A',
  `refid` int(11) DEFAULT NULL,
  `imeiNo` varchar(30) NOT NULL,
  `imsiNo` varchar(50) NOT NULL,
  `simSerialNo` varchar(50) NOT NULL,
  `simNo` varchar(50) NOT NULL,
  `androidId` varchar(50) NOT NULL,
  `macAddress` varchar(50) NOT NULL,
  `atype` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaveapplications`
--

INSERT INTO `leaveapplications` (`id`, `emp_code`, `department`, `office`, `applicant_name`, `designation`, `pay`, `service`, `date_of_age_55`, `date_of_age_60`, `nature_of_leave`, `leave_period`, `start_date_leave`, `end_date_leave`, `datefchk`, `datetchk`, `purpose_of_leave`, `period_of_extension`, `period_of_extensiont`, `medical_certificate`, `address_whileon_leave`, `salary_pay_on_above_address`, `life_certificate`, `cname`, `cdesignation`, `cstation`, `cdate`, `csignature`, `status`, `comments`, `Forward_to`, `cuser`, `type`, `refid`, `imeiNo`, `imsiNo`, `simSerialNo`, `simNo`, `androidId`, `macAddress`, `atype`) VALUES
(8064, '01113422', '01', 'SC', 'K SREE RAMKUMAR', '', '5400', '35 Years     1 Months    8 Days', '02/04/2013', '02/04/2018', '2', '1', '2017-09-25', '2017-09-25', ' ', ' ', 'yeah', NULL, NULL, ' ', ' ', ' ', ' ', 'K SREE RAMKUMAR', 'AC10400', 'SC', '2017-07-26', 0x20, 'P', ' ', '01201006', '01113422', 'A', NULL, '911500750217587', '404490191849790', '89914901900018497906', '917995165264', 'eb02c7b1626798e8', ' ', 'm'),
(8065, '01113422', '01', 'SC', 'K SREE RAMKUMAR', '', '5400', '35 Years     1 Months    8 Days', '02/04/2013', '02/04/2018', '2', '1', '2017-09-26', '2017-09-26', ' ', ' ', 'yeah', NULL, NULL, ' ', ' ', ' ', ' ', 'K SREE RAMKUMAR', 'AC10400', 'SC', '2017-07-26', 0x20, 'P', ' ', '01201006', '01113422', 'A', NULL, '911500750217587', '404490191849790', '89914901900018497906', '917995165264', 'eb02c7b1626798e8', ' ', 'm'),
(8066, '01113422', '01', 'SC', 'K SREE RAMKUMAR', '', '5400', '35 Years     1 Months    8 Days', '02/04/2013', '02/04/2018', '2', '1', '2017-09-27', '2017-09-27', ' ', ' ', 'yeah', NULL, NULL, ' ', ' ', ' ', ' ', 'K SREE RAMKUMAR', 'AC10400', 'SC', '2017-07-26', 0x20, 'P', ' ', '01201006', '01113422', 'A', NULL, '911500750217587', '404490191849790', '89914901900018497906', '917995165264', 'eb02c7b1626798e8', ' ', 'm'),
(8067, '01113422', '01', 'SC', 'K SREE RAMKUMAR', '', '5400', '35 Years     1 Months    8 Days', '02/04/2013', '02/04/2018', '2', '1', '2017-09-28', '2017-09-28', ' ', ' ', 'yeah', NULL, NULL, ' ', ' ', ' ', ' ', 'K SREE RAMKUMAR', 'AC10400', 'SC', '2017-07-26', 0x20, 'P', ' ', '01201006', '01113422', 'A', NULL, '911500750217587', '404490191849790', '89914901900018497906', '917995165264', 'eb02c7b1626798e8', ' ', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(10) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `user_id`, `time`) VALUES
(6, 'ram', '2020-07-21 12:46:25.000000'),
(7, 'suresh', '2020-07-21 01:16:51.000000'),
(8, 'suresh', '2020-07-24 10:42:21.000000'),
(9, 'suresh', '2020-08-25 10:20:18.000000');

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `s_id` int(10) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_head` int(10) NOT NULL,
  `menu_url` varchar(100) DEFAULT NULL,
  `orderlevel` int(11) NOT NULL,
  `c_date` datetime NOT NULL,
  `c_user` varchar(50) NOT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_master`
--

INSERT INTO `menu_master` (`s_id`, `menu_name`, `menu_head`, `menu_url`, `orderlevel`, `c_date`, `c_user`, `status`) VALUES
(1, 'MASTER', 0, '0', 0, '2014-10-25 00:00:00', '', 'A'),
(129, 'TRANSACTION', 0, '0', 0, '2014-10-25 00:00:00', '', 'A'),
(130, 'REPORTS', 0, '0', 0, '2014-10-25 00:00:00', '', 'A'),
(132, 'Employee Master', 1, 'employeemaster.php', 0, '2014-10-10 00:00:00', '', 'A'),
(134, 'Vehicle Master', 1, 'vehiclemaster.php', 0, '2014-10-10 00:00:00', '', 'A'),
(135, 'ID Proof Master', 1, 'idproof.php', 0, '2014-10-10 00:00:00', '', 'A'),
(137, 'Pump Master', 1, 'pumpmaster.php', 0, '2014-10-10 00:00:00', '', 'A'),
(138, 'Tank Master', 1, 'tankmaster.php', 0, '2016-12-31 17:25:31', 'suresh', 'A'),
(139, 'Shift Master', 1, 'shiftmaster.php', 0, '2014-10-10 00:00:00', '', 'A'),
(141, 'Pump Transaction', 129, 'pumptransemaster.php', 0, '2016-12-31 17:29:16', 'suresh', 'A'),
(142, 'Price Master', 1, 'pricemaster.php', 0, '2016-12-31 17:22:33', 'suresh', 'A'),
(143, 'Role Master', 1, 'rolemaster.php', 0, '2014-10-10 00:00:00', '', 'A'),
(144, 'Menu Master', 1, 'menumaster1.php', 0, '2017-01-12 15:58:19', 'suresh', 'A'),
(145, 'Product  Master', 1, 'productmaster.php', 0, '2016-12-31 17:23:38', 'suresh', 'A'),
(146, 'Pump Allotment', 129, 'pumpallotement.php', 0, '2016-12-31 17:26:13', 'suresh', 'A'),
(150, 'Calibration Chart  Master', 1, 'petroldip.php', 0, '2016-12-31 17:22:15', 'suresh', 'A'),
(151, 'Calibration Master', 1, 'calibrationmaster.php', 0, '2016-12-31 17:18:37', 'suresh', 'A'),
(152, 'Credit Customer Master', 1, 'creditcustomer.php', 0, '2016-12-31 17:19:33', 'suresh', 'A'),
(153, 'Credit Customer Bill', 129, 'creditcustomerbill1.php', 0, '2020-09-06 18:40:09', 'suresh', 'A'),
(154, 'Dip Entry', 129, 'dipentry.php', 0, '2016-12-31 17:32:16', 'suresh', 'A'),
(155, 'Product Sales Report', 130, 'a.php', 0, '2020-09-06 18:38:35', 'suresh', 'A'),
(156, 'Daily Transactions', 129, 'dailytransactionmaster.php', 0, '2017-01-12 15:57:47', 'suresh', 'A'),
(157, 'Vender Master', 1, 'vendermaster.php', 0, '2017-01-20 15:31:40', 'suresh', 'A'),
(158, 'Purchase Master', 1, 'finvoce.php', 0, '2017-01-23 13:37:14', 'suresh', 'A'),
(159, 'credit sales report', 130, 'a2new.php', 0, '2020-09-06 18:36:18', 'suresh', 'A'),
(160, 'Daily Sales Report', 130, 'a3.php', 0, '2020-09-06 18:39:11', 'suresh', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `petrol_dip`
--

CREATE TABLE `petrol_dip` (
  `sno` int(11) NOT NULL,
  `dip` varchar(10) NOT NULL,
  `dip_type` varchar(20) NOT NULL,
  `pd_tank` varchar(20) NOT NULL,
  `volume` varchar(10) NOT NULL,
  `diff` varchar(10) NOT NULL,
  `c_user` varchar(50) NOT NULL,
  `c_date` datetime NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petrol_dip`
--

INSERT INTO `petrol_dip` (`sno`, `dip`, `dip_type`, `pd_tank`, `volume`, `diff`, `c_user`, `c_date`, `status`) VALUES
(1, '1', '1', '2', '10.12', '1.01', '', '0000-00-00 00:00:00', 'A'),
(2, '2', '1', '2', '28.63', '1.85', '', '0000-00-00 00:00:00', 'A'),
(3, '3', '1', '2', '52.58', '2.39', '', '0000-00-00 00:00:00', 'A'),
(4, '4', '1', '2', '4.80.87', '2.83', '', '0000-00-00 00:00:00', 'A'),
(5, '5', '1', '2', '112.90', '3.20', '', '0000-00-00 00:00:00', 'A'),
(6, '6', '1', '2', '148.22', '3.53', '', '0000-00-00 00:00:00', 'A'),
(7, '7', '1', '2', '186.53', '3.83', '', '0000-00-00 00:00:00', 'A'),
(8, '8', '1', '2', '227.57', '4.10', '', '0000-00-00 00:00:00', 'A'),
(9, '9', '1', '2', '271.16', '4.36', '', '0000-00-00 00:00:00', 'A'),
(10, '10', '1', '2', '317.12', '4.60', '', '0000-00-00 00:00:00', 'A'),
(11, '11', '1', '2', '365.321', '4.82', '', '0000-00-00 00:00:00', 'A'),
(12, '12', '1', '2', '415.62', '5.03', '', '0000-00-00 00:00:00', 'A'),
(13, '13', '1', '2', '467.93', '5.23', '', '0000-00-00 00:00:00', 'A'),
(14, '14', '1', '2', '522.14', '5.42', '', '0000-00-00 00:00:00', 'A'),
(15, '15', '1', '2', '578.18', '5.60', '', '0000-00-00 00:00:00', 'A'),
(16, '16', '1', '2', '635.95', '5.78', '', '0000-00-00 00:00:00', 'A'),
(17, '17', '1', '2', '695.39', '5.94', '', '0000-00-00 00:00:00', 'A'),
(18, '18', '1', '2', '756.44', '6.10', '', '0000-00-00 00:00:00', 'A'),
(19, '19', '1', '2', '819.03', '6.26', '', '0000-00-00 00:00:00', 'A'),
(20, '20', '1', '2', '883.11', '6.41', '', '0000-00-00 00:00:00', 'A'),
(21, '21', '1', '2', '948.63', '6.55', '', '0000-00-00 00:00:00', 'A'),
(22, '22', '1', '2', '1015.53', '6.69', '', '0000-00-00 00:00:00', 'A'),
(23, '23', '1', '2', '1083.77', '6.82', '', '0000-00-00 00:00:00', 'A'),
(24, '24', '1', '2', '1153.32', '6.95', '', '0000-00-00 00:00:00', 'A'),
(25, '25', '1', '2', '1224.12', '7.08', '', '0000-00-00 00:00:00', 'A'),
(26, '26', '1', '2', '1296.13', '7.20', '', '0000-00-00 00:00:00', 'A'),
(27, '27', '1', '2', '1369.34', '7.32', '', '0000-00-00 00:00:00', 'A'),
(28, '28', '1', '2', '1443.68', '7.43', '', '0000-00-00 00:00:00', 'A'),
(29, '29', '1', '2', '1519.14', '7.55', '', '0000-00-00 00:00:00', 'A'),
(30, '30', '1', '2', '1595.68', '7.65', '', '0000-00-00 00:00:00', 'A'),
(31, '31', '1', '2', '1673.28', '7.76', '', '0000-00-00 00:00:00', 'A'),
(32, '32', '1', '2', '1751.89', '7.86', '', '0000-00-00 00:00:00', 'A'),
(33, '33', '1', '2', '1831.50', '7.96', '', '0000-00-00 00:00:00', 'A'),
(34, '34', '1', '2', '1912.07', '8.06', '', '0000-00-00 00:00:00', 'A'),
(35, '35', '1', '2', '1993.58', '8.15', '', '0000-00-00 00:00:00', 'A'),
(36, '36', '1', '2', '2076.01', '8.24', '', '0000-00-00 00:00:00', 'A'),
(37, '37', '1', '2', '2159.33', '8.33', '', '0000-00-00 00:00:00', 'A'),
(38, '38', '1', '2', '2243.51', '8.42', '', '0000-00-00 00:00:00', 'A'),
(39, '39', '1', '2', '2328.54', '8.50', '', '0000-00-00 00:00:00', 'A'),
(40, '40', '1', '2', '2414.38', '8.58', '', '0000-00-00 00:00:00', 'A'),
(41, '41', '1', '2', '2501.03', '8.66', '', '0000-00-00 00:00:00', 'A'),
(42, '42', '1', '2', '2588.45', '8.74', '', '0000-00-00 00:00:00', 'A'),
(43, '43', '1', '2', '2676.63', '8.89', '', '0000-00-00 00:00:00', 'A'),
(44, '44', '1', '2', '2765.55', '8.89', '', '0000-00-00 00:00:00', 'A'),
(45, '45', '1', '2', '2855.18', '8.96', '', '0000-00-00 00:00:00', 'A'),
(46, '46', '1', '2', '2945.52', '9.03', '', '0000-00-00 00:00:00', 'A'),
(47, '47', '1', '2', '3036.53', '9.10', '', '0000-00-00 00:00:00', 'A'),
(48, '48', '1', '2', '3128.21', '9.17', '', '0000-00-00 00:00:00', 'A'),
(49, '49', '1', '2', '3220.53', '9.10', '', '0000-00-00 00:00:00', 'A'),
(50, '50', '1', '2', '3313.47', '9.29', '', '0000-00-00 00:00:00', 'A'),
(51, '51', '1', '2', '3407.03', '9.36', '', '0000-00-00 00:00:00', 'A'),
(52, '52', '1', '2', '3501.17', '9.41', '', '0000-00-00 00:00:00', 'A'),
(53, '53', '1', '2', '3595.90', '9.47', '', '0000-00-00 00:00:00', 'A'),
(54, '54', '1', '2', '3691.18', '9.53', '', '0000-00-00 00:00:00', 'A'),
(55, '55', '1', '2', '3787.01', '9.58', '', '0000-00-00 00:00:00', 'A'),
(56, '56', '1', '2', '3883.36', '9.64', '', '0000-00-00 00:00:00', 'A'),
(57, '57', '1', '2', '3980.23', '9.69', '', '0000-00-00 00:00:00', 'A'),
(58, '58', '1', '2', '4077.60', '9.74', '', '0000-00-00 00:00:00', 'A'),
(59, '59', '1', '2', '4175.45', '9.78', '', '0000-00-00 00:00:00', 'A'),
(60, '60', '1', '2', '4273.77', '9083', '', '0000-00-00 00:00:00', 'A'),
(61, '61', '1', '2', '4372.54', '9.88', '', '0000-00-00 00:00:00', 'A'),
(62, '62', '1', '2', '4471.75', '9.92', '', '0000-00-00 00:00:00', 'A'),
(63, '63', '1', '2', '4571.75', '9.96', '', '0000-00-00 00:00:00', 'A'),
(64, '64', '1', '2', '4671.75', '10.00', '', '0000-00-00 00:00:00', 'A'),
(65, '65', '1', '2', '4771.88', '10.04', '', '0000-00-00 00:00:00', 'A'),
(66, '66', '1', '2', '4872.71', '10.08', '', '0000-00-00 00:00:00', 'A'),
(67, '67', '1', '2', '4973.92', '10.12', '', '0000-00-00 00:00:00', 'A'),
(68, '68', '1', '2', '5075.48', '10.16', '', '0000-00-00 00:00:00', 'A'),
(69, '69', '1', '2', '5177.38', '10.19', '', '0000-00-00 00:00:00', 'A'),
(70, '70', '1', '2', '5279.62', '10.22', '', '0000-00-00 00:00:00', 'A'),
(71, '71', '1', '2', '5382.17', '10.26', '', '0000-00-00 00:00:00', 'A'),
(72, '72', '1', '2', '5485.03', '10.29', '', '0000-00-00 00:00:00', 'A'),
(73, '73', '1', '2', '5588.19', '10.32', '', '0000-00-00 00:00:00', 'A'),
(74, '74', '1', '2', '5691.62', '10.34', '', '0000-00-00 00:00:00', 'A'),
(75, '75', '1', '2', '5795.33', '10.37', '', '0000-00-00 00:00:00', 'A'),
(76, '76', '1', '2', '5899.29', '10.40', '', '0000-00-00 00:00:00', 'A'),
(77, '77', '1', '2', '6003.49', '10.42', '', '0000-00-00 00:00:00', 'A'),
(78, '78', '1', '2', '6107.93', '10.44', '', '0000-00-00 00:00:00', 'A'),
(79, '79', '1', '2', '6212.58', '10.47', '', '0000-00-00 00:00:00', 'A'),
(80, '80', '1', '2', '6317.45', '10.49', '', '0000-00-00 00:00:00', 'A'),
(81, '81', '1', '2', '6422.51', '10.51', '', '0000-00-00 00:00:00', 'A'),
(82, '82', '1', '2', '2588.45', '8.74', '', '0000-00-00 00:00:00', 'A'),
(83, '83', '1', '2', '6633.16', '10.52', '', '0000-00-00 00:00:00', 'A'),
(84, '84', '1', '2', '6738.74', '10.56', '', '0000-00-00 00:00:00', 'A'),
(85, '85', '1', '2', '6844.46', '10.57', '', '0000-00-00 00:00:00', 'A'),
(86, '86', '1', '2', '6950.33', '10.59', '', '0000-00-00 00:00:00', 'A'),
(87, '87', '1', '2', '7056.31', '10.60', '', '0000-00-00 00:00:00', 'A'),
(89, '88', '1', '2', '7162.41', '10.61', '', '0000-00-00 00:00:00', 'A'),
(90, '89', '1', '2', '7268.62', '10.62', '', '0000-00-00 00:00:00', 'A'),
(91, '90', '1', '2', '7374.91', '10.63', '', '0000-00-00 00:00:00', 'A'),
(92, '91', '1', '2', '7481.29', '10.64', '', '0000-00-00 00:00:00', 'A'),
(93, '92', '1', '2', '7587.73', '10.64', '', '0000-00-00 00:00:00', 'A'),
(94, '93', '1', '2', '7694.23', '10.65', '', '0000-00-00 00:00:00', 'A'),
(95, '94', '1', '2', '7800.77', '10.65', '', '0000-00-00 00:00:00', 'A'),
(96, '95', '1', '2', '7907.35', '10.66', '', '0000-00-00 00:00:00', 'A'),
(97, '96', '1', '2', '8013.95', '10.66', '', '0000-00-00 00:00:00', 'A'),
(98, '97', '1', '2', '8120.56', '10.66', '', '0000-00-00 00:00:00', 'A'),
(99, '98', '1', '2', '8227.18', '10.66', '', '0000-00-00 00:00:00', 'A'),
(100, '99', '1', '2', '8333.78', '10.66', '', '0000-00-00 00:00:00', 'A'),
(101, '100', '1', '2', '8440.36', '10.66', '', '0000-00-00 00:00:00', 'A'),
(102, '101', '1', '2', '8546.90', '10.65', '', '0000-00-00 00:00:00', 'A'),
(103, '102', '1', '2', '8653.40', '10.65', '', '0000-00-00 00:00:00', 'A'),
(104, '103', '1', '2', '8759.84', '10.64', '', '0000-00-00 00:00:00', 'A'),
(105, '104', '1', '2', '8866.22', '10.64', '', '0000-00-00 00:00:00', 'A'),
(106, '105', '1', '2', '8972.51', '10.63', '', '0000-00-00 00:00:00', 'A'),
(107, '106', '1', '2', '9078.72', '10.62', '', '0000-00-00 00:00:00', 'A'),
(108, '107', '1', '2', '9184.82', '10.61', '', '0000-00-00 00:00:00', 'A'),
(109, '108', '1', '2', '9290.80', '10.60', '', '0000-00-00 00:00:00', 'A'),
(110, '109', '1', '2', '9396.67', '10.59', '', '0000-00-00 00:00:00', 'A'),
(111, '110', '1', '2', '9502.39', '10.57', '', '0000-00-00 00:00:00', 'A'),
(112, '111', '1', '2', '9607.97', '10.56', '', '0000-00-00 00:00:00', 'A'),
(113, '112', '1', '2', '9713.38', '10.54', '', '0000-00-00 00:00:00', 'A'),
(114, '113', '1', '2', '9818.62', '10.52', '', '0000-00-00 00:00:00', 'A'),
(115, '114', '1', '2', '9923.68', '10.51', '', '0000-00-00 00:00:00', 'A'),
(116, '115', '1', '2', '10028.5', '10.49', '', '0000-00-00 00:00:00', 'A'),
(117, '116', '1', '2', '10133.20', '10.47', '', '0000-00-00 00:00:00', 'A'),
(118, '117', '1', '2', '10237.64', '10.44', '', '0000-00-00 00:00:00', 'A'),
(119, '118', '1', '2', '10341.84', '10.42', '', '0000-00-00 00:00:00', 'A'),
(120, '119', '1', '2', '10445.80', '10.40', '', '0000-00-00 00:00:00', 'A'),
(121, '120', '1', '2', '10549.51', '10.37', '', '0000-00-00 00:00:00', 'A'),
(122, '121', '1', '2', '10652.94', '10.34', '', '0000-00-00 00:00:00', 'A'),
(123, '122', '1', '2', '10756.10', '10.32', '', '0000-00-00 00:00:00', 'A'),
(124, '123', '1', '2', '10858.96', '10.29', '', '0000-00-00 00:00:00', 'A'),
(125, '124', '1', '2', '10961.51', '10.26', '', '0000-00-00 00:00:00', 'A'),
(126, '125', '1', '2', '11063.75', '10.22', '', '0000-00-00 00:00:00', 'A'),
(127, '126', '1', '2', '11165.65', '10.19', '', '0000-00-00 00:00:00', 'A'),
(128, '127', '1', '2', '11267.21', '10.16', '', '0000-00-00 00:00:00', 'A'),
(129, '128', '1', '2', '11368.42', '10.12', '', '0000-00-00 00:00:00', 'A'),
(130, '129', '1', '2', '11469.25', '10.08', '', '0000-00-00 00:00:00', 'A'),
(131, '130', '1', '2', '11569.69', '10.04', '', '0000-00-00 00:00:00', 'A'),
(132, '131', '1', '2', '11669.74', '10.00', '', '0000-00-00 00:00:00', 'A'),
(133, '132', '1', '2', '11769.38', '9.96', '', '0000-00-00 00:00:00', 'A'),
(134, '133', '1', '2', '11868.59', '9.92', '', '0000-00-00 00:00:00', 'A'),
(135, '134', '1', '2', '11967.36', '9.88', '', '0000-00-00 00:00:00', 'A'),
(136, '135', '1', '2', '12065.68', '9.83', '', '0000-00-00 00:00:00', 'A'),
(137, '136', '1', '2', '12163.53', '9.78', '', '0000-00-00 00:00:00', 'A'),
(138, '137', '1', '2', '12260.90', '9.74', '', '0000-00-00 00:00:00', 'A'),
(139, '138', '1', '2', '12357.77', '9.69', '', '0000-00-00 00:00:00', 'A'),
(140, '139', '1', '2', '12454.12', '9.64', '', '0000-00-00 00:00:00', 'A'),
(141, '140', '1', '2', '12549.59', '9.58', '', '0000-00-00 00:00:00', 'A'),
(142, '141', '1', '2', '12645.23', '9.53', '', '0000-00-00 00:00:00', 'A'),
(143, '142', '1', '2', '12739.96', '9.47', '', '0000-00-00 00:00:00', 'A'),
(144, '143', '1', '2', '12834.10', '9.41', '', '0000-00-00 00:00:00', 'A'),
(145, '144', '1', '2', '12927.66', '9.36', '', '0000-00-00 00:00:00', 'A'),
(146, '145', '1', '2', '13020.60', '9.29', '', '0000-00-00 00:00:00', 'A'),
(147, '146', '1', '2', '13112.92', '9.23', '', '0000-00-00 00:00:00', 'A'),
(148, '147', '1', '2', '13204.60', '9.17', '', '0000-00-00 00:00:00', 'A'),
(149, '148', '1', '2', '13295.61', '9.10', '', '0000-00-00 00:00:00', 'A'),
(150, '149', '1', '2', '13385.95', '9.03', '', '0000-00-00 00:00:00', 'A'),
(151, '150', '1', '2', '13475.58', '8.96', '', '0000-00-00 00:00:00', 'A'),
(152, '151', '1', '2', '13564.50', '8.89', '', '0000-00-00 00:00:00', 'A'),
(153, '152', '1', '2', '13652.68', '8.82', '', '0000-00-00 00:00:00', 'A'),
(154, '153', '1', '2', '13740.10', '8.74', '', '0000-00-00 00:00:00', 'A'),
(155, '154', '1', '2', '13826.75', '8.66', '', '0000-00-00 00:00:00', 'A'),
(156, '155', '1', '2', '13912.59', '8.58', '', '0000-00-00 00:00:00', 'A'),
(157, '156', '1', '2', '13997.62', '8.50', '', '0000-00-00 00:00:00', 'A'),
(158, '157', '1', '2', '14081.80', '8.42', '', '0000-00-00 00:00:00', 'A'),
(159, '158', '1', '2', '14165.12', '8.33', '', '0000-00-00 00:00:00', 'A'),
(160, '159', '1', '2', '14247.54', '8.24', '', '0000-00-00 00:00:00', 'A'),
(161, '160', '1', '2', '14329.06', '8.15', '', '0000-00-00 00:00:00', 'A'),
(162, '161', '1', '2', '14409.63', '8.06', '', '0000-00-00 00:00:00', 'A'),
(163, '162', '1', '2', '14489.24', '7.96', '', '0000-00-00 00:00:00', 'A'),
(164, '163', '1', '2', '14567.85', '7.86', '', '0000-00-00 00:00:00', 'A'),
(165, '164', '1', '2', '14645.85', '7.76', '', '0000-00-00 00:00:00', 'A'),
(166, '165', '1', '2', '14721.99', '7.65', '', '0000-00-00 00:00:00', 'A'),
(167, '166', '1', '2', '14797.45', '7.55', '', '0000-00-00 00:00:00', 'A'),
(169, '167', '1', '2', '14871.45', '7.55', '', '0000-00-00 00:00:00', 'A'),
(170, '168', '1', '2', '14944.99', '7.32', '', '0000-00-00 00:00:00', 'A'),
(171, '169', '1', '2', '15017.01', '7.20', '', '0000-00-00 00:00:00', 'A'),
(172, '170', '1', '2', '15087.81', '7.08', '', '0000-00-00 00:00:00', 'A'),
(173, '171', '1', '2', '15157.36', '6.95', '', '0000-00-00 00:00:00', 'A'),
(174, '172', '1', '2', '15225.60', '6.82', '', '0000-00-00 00:00:00', 'A'),
(175, '173', '1', '2', '15292.50', '6.69', '', '0000-00-00 00:00:00', 'A'),
(176, '174', '1', '2', '15358.02', '6.55', '', '0000-00-00 00:00:00', 'A'),
(177, '175', '1', '2', '15422.10', '6.41', '', '0000-00-00 00:00:00', 'A'),
(178, '176', '1', '2', '15484.69', '6.26', '', '0000-00-00 00:00:00', 'A'),
(179, '177', '1', '2', '15545.74', '6.10', '', '0000-00-00 00:00:00', 'A'),
(180, '178', '1', '2', '15605.18', '5.94', '', '0000-00-00 00:00:00', 'A'),
(181, '179', '1', '2', '15662.95', '5.78', '', '0000-00-00 00:00:00', 'A'),
(182, '180', '1', '2', '15718.99', '5.60', '', '0000-00-00 00:00:00', 'A'),
(183, '181', '1', '2', '15773.20', '5.42', '', '0000-00-00 00:00:00', 'A'),
(184, '182', '1', '2', '15825.51', '5.23', '', '0000-00-00 00:00:00', 'A'),
(185, '183', '1', '2', '15875.81', '5.03', '', '0000-00-00 00:00:00', 'A'),
(187, '184', '1', '2', '15924.01', '4.82', '', '0000-00-00 00:00:00', 'A'),
(188, '185', '1', '2', '15969.97', '4.60', '', '0000-00-00 00:00:00', 'A'),
(189, '186', '1', '2', '16013.56', '4.36', '', '0000-00-00 00:00:00', 'A'),
(190, '187', '1', '2', '16054.60', '4.10', '', '0000-00-00 00:00:00', 'A'),
(191, '188', '1', '2', '16092.91', '3.83', '', '0000-00-00 00:00:00', 'A'),
(192, '189', '1', '2', '16128.23', '3.53', '', '0000-00-00 00:00:00', 'A'),
(193, '190', '1', '2', '16160.26', '3.20', '', '0000-00-00 00:00:00', 'A'),
(194, '191', '1', '2', '16188.55', '2.83', '', '0000-00-00 00:00:00', 'A'),
(195, '192', '1', '2', '16212.49', '2.39', '', '0000-00-00 00:00:00', 'A'),
(196, '193', '1', '2', '16231.01', '1.85', '', '0000-00-00 00:00:00', 'A'),
(197, '194', '1', '2', '16241.13', '1.01', '', '0000-00-00 00:00:00', 'A'),
(198, '1', '2', '6', '11.98', '1.20', '', '0000-00-00 00:00:00', 'A'),
(199, '2', '2', '6', '33.91', '2.19', '', '0000-00-00 00:00:00', 'A'),
(200, '3', '2', '6', '62.25', '2.83', '', '0000-00-00 00:00:00', 'A'),
(201, '4', '2', '6', '95.75', '3.35', '', '0000-00-00 00:00:00', 'A'),
(202, '5', '2', '6', '133.66', '3.79', '', '0000-00-00 00:00:00', 'A'),
(203, '6', '2', '6', '175.49', '4.18', '', '0000-00-00 00:00:00', 'A'),
(204, '7', '2', '6', '220.86', '4.54', '', '0000-00-00 00:00:00', 'A'),
(205, '8', '2', '6', '269.49', '4.86', '', '0000-00-00 00:00:00', 'A'),
(206, '9', '2', '6', '321.14', '5.16', '', '0000-00-00 00:00:00', 'A'),
(207, '10', '2', '6', '375.61', '5.45', '', '0000-00-00 00:00:00', 'A'),
(208, '11', '2', '6', '432.73', '5.71', '', '0000-00-00 00:00:00', 'A'),
(209, '12', '2', '6', '492.37', '5.96', '', '0000-00-00 00:00:00', 'A'),
(210, '13', '2', '6', '554.40', '6.20', '', '0000-00-00 00:00:00', 'A'),
(211, '14', '2', '6', '618.70', '6.43', '', '0000-00-00 00:00:00', 'A'),
(212, '15', '2', '6', '685.17', '6.65', '', '0000-00-00 00:00:00', 'A'),
(213, '16', '2', '6', '753.72', '6.86', '', '0000-00-00 00:00:00', 'A'),
(214, '17', '2', '6', '824.27', '7.05', '', '0000-00-00 00:00:00', 'A'),
(215, '18', '2', '6', '896.74', '7.25', '', '0000-00-00 00:00:00', 'A'),
(216, '19', '2', '6', '971.06', '7.43', '', '0000-00-00 00:00:00', 'A'),
(217, '20', '2', '6', '1047.16', '7.61', '', '0000-00-00 00:00:00', 'A'),
(218, '21', '2', '6', '1124.99', '7.78', '', '0000-00-00 00:00:00', 'A'),
(219, '22', '2', '6', '1204.49', '7.95', '', '0000-00-00 00:00:00', 'A'),
(220, '23', '2', '6', '1285.60', '8.11', '', '0000-00-00 00:00:00', 'A'),
(221, '24', '2', '6', '1368.27', '8.27', '', '0000-00-00 00:00:00', 'A'),
(222, '25', '2', '6', '1452.46', '8.42', '', '0000-00-00 00:00:00', 'A'),
(223, '26', '2', '6', '1538.12', '8.57', '', '0000-00-00 00:00:00', 'A'),
(224, '27', '2', '6', '1625.20', '8.71', '', '0000-00-00 00:00:00', 'A'),
(225, '28', '2', '6', '1713.68', '8.85', '', '0000-00-00 00:00:00', 'A'),
(226, '29', '2', '6', '1803.50', '8.98', '', '0000-00-00 00:00:00', 'A'),
(227, '30', '2', '6', '1894.63', '9.11', '', '0000-00-00 00:00:00', 'A'),
(228, '31', '2', '6', '1987.04', '9.24', '', '0000-00-00 00:00:00', 'A'),
(229, '32', '2', '6', '2080.69', '9.37', '', '0000-00-00 00:00:00', 'A'),
(230, '33', '2', '6', '2175.55', '9.49', '', '0000-00-00 00:00:00', 'A'),
(231, '34', '2', '6', '2271.59', '9.60', '', '0000-00-00 00:00:00', 'A'),
(232, '35', '2', '6', '2368.78', '9.72', '', '0000-00-00 00:00:00', 'A'),
(233, '36', '2', '6', '2467.08', '9.83', '', '0000-00-00 00:00:00', 'A'),
(234, '37', '2', '6', '2566.47', '9.94', '', '0000-00-00 00:00:00', 'A'),
(235, '38', '2', '6', '2686.93', '10.05', '', '0000-00-00 00:00:00', 'A'),
(236, '39', '2', '6', '2768.42', '10.15', '', '0000-00-00 00:00:00', 'A'),
(237, '40', '2', '6', '2870.92', '10.25', '', '0000-00-00 00:00:00', 'A'),
(238, '41', '2', '6', '2974.41', '10.35', '', '0000-00-00 00:00:00', 'A'),
(239, '42', '2', '6', '3078.86', '10.44', '', '0000-00-00 00:00:00', 'A'),
(240, '43', '2', '6', '3184.24', '10.54', '', '0000-00-00 00:00:00', 'A'),
(241, '44', '2', '6', '3290.54', '10.63', '', '0000-00-00 00:00:00', 'A'),
(242, '45', '2', '6', '3397.74', '10.72', '', '0000-00-00 00:00:00', 'A'),
(243, '46', '2', '6', '3505.80', '10.81', '', '0000-00-00 00:00:00', 'A'),
(244, '47', '2', '6', '3614.71', '10.89', '', '0000-00-00 00:00:00', 'A'),
(245, '48', '2', '6', '3724.45', '10.97', '', '0000-00-00 00:00:00', 'A'),
(246, '49', '2', '6', '3835.00', '11.05', '', '0000-00-00 00:00:00', 'A'),
(247, '50', '2', '6', '3946.34', '11.13', '', '0000-00-00 00:00:00', 'A'),
(248, '51', '2', '6', '4058.44', '11.21', '', '0000-00-00 00:00:00', 'A'),
(249, '52', '2', '6', '4171.30', '11.29', '', '0000-00-00 00:00:00', 'A'),
(250, '53', '2', '6', '4284.88', '11.36', '', '0000-00-00 00:00:00', 'A'),
(251, '54', '2', '6', '4399.18', '11.43', '', '0000-00-00 00:00:00', 'A'),
(252, '55', '2', '6', '4514.17', '11.50', '', '0000-00-00 00:00:00', 'A'),
(253, '56', '2', '6', '4629.84', '11.57', '', '0000-00-00 00:00:00', 'A'),
(254, '57', '2', '6', '4746.17', '11.63', '', '0000-00-00 00:00:00', 'A'),
(255, '58', '2', '6', '4863.14', '11.70', '', '0000-00-00 00:00:00', 'A'),
(256, '59', '2', '6', '4980.74', '11.76', '', '0000-00-00 00:00:00', 'A'),
(257, '60', '2', '6', '5098.95', '11.82', '', '0000-00-00 00:00:00', 'A'),
(258, '61', '2', '6', '5217.75', '11.88', '', '0000-00-00 00:00:00', 'A'),
(259, '62', '2', '6', '5337.12', '11.94', '', '0000-00-00 00:00:00', 'A'),
(260, '63', '2', '6', '5457.06', '11.99', '', '0000-00-00 00:00:00', 'A'),
(261, '64', '2', '6', '5577.55', '12.05', '', '0000-00-00 00:00:00', 'A'),
(262, '65', '2', '6', '5698.56', '12.10', '', '0000-00-00 00:00:00', 'A'),
(263, '66', '2', '6', '5820.09', '12.15', '', '0000-00-00 00:00:00', 'A'),
(264, '67', '2', '6', '5942.12', '12.20', '', '0000-00-00 00:00:00', 'A'),
(265, '68', '2', '6', '6064.63', '12.25', '', '0000-00-00 00:00:00', 'A'),
(266, '69', '2', '6', '6187.61', '12.30', '', '0000-00-00 00:00:00', 'A'),
(267, '70', '2', '6', '6311.06', '12.34', '', '0000-00-00 00:00:00', 'A'),
(268, '71', '2', '6', '6434.94', '12.39', '', '0000-00-00 00:00:00', 'A'),
(269, '72', '2', '6', '6559.25', '12.43', '', '0000-00-00 00:00:00', 'A'),
(270, '73', '2', '6', '6683.97', '12.47', '', '0000-00-00 00:00:00', 'A'),
(271, '74', '2', '6', '6809.10', '12.51', '', '0000-00-00 00:00:00', 'A'),
(272, '75', '2', '6', '6934.61', '12.55', '', '0000-00-00 00:00:00', 'A'),
(273, '76', '2', '6', '7060.49', '12.59', '', '0000-00-00 00:00:00', 'A'),
(274, '77', '2', '6', '7186.73', '12.62', '', '0000-00-00 00:00:00', 'A'),
(275, '78', '2', '6', '7313.32', '12.66', '', '0000-00-00 00:00:00', 'A'),
(276, '79', '2', '6', '7440.24', '12.69', '', '0000-00-00 00:00:00', 'A'),
(277, '80', '2', '6', '7567.48', '12.72', '', '0000-00-00 00:00:00', 'A'),
(278, '81', '2', '6', '7695.03', '12.75', '', '0000-00-00 00:00:00', 'A'),
(279, '82', '2', '6', '7822.87', '12.78', '', '0000-00-00 00:00:00', 'A'),
(280, '83', '2', '6', '7950.99', '12.81', '', '0000-00-00 00:00:00', 'A'),
(281, '84', '2', '6', '8079.38', '12.84', '', '0000-00-00 00:00:00', 'A'),
(282, '85', '2', '6', '8208.02', '12.86', '', '0000-00-00 00:00:00', 'A'),
(283, '86', '2', '6', '8336.91', '12.89', '', '0000-00-00 00:00:00', 'A'),
(284, '87', '2', '6', '8466.03', '12.91', '', '0000-00-00 00:00:00', 'A'),
(285, '88', '2', '6', '8535.36', '12.93', '', '0000-00-00 00:00:00', 'A'),
(286, '89', '2', '6', '8724.90', '12.95', '', '0000-00-00 00:00:00', 'A'),
(287, '90', '2', '6', '8854.54', '12.97', '', '0000-00-00 00:00:00', 'A'),
(288, '91', '2', '6', '8984.54', '12.97', '', '0000-00-00 00:00:00', 'A'),
(289, '92', '2', '6', '9114.62', '13.01', '', '0000-00-00 00:00:00', 'A'),
(290, '93', '2', '6', '9244.86', '13.02', '', '0000-00-00 00:00:00', 'A'),
(291, '94', '2', '6', '9375.24', '13.04', '', '0000-00-00 00:00:00', 'A'),
(292, '95', '2', '6', '9505.75', '13.05', '', '0000-00-00 00:00:00', 'A'),
(293, '96', '2', '6', '9636.38', '13.06', '', '0000-00-00 00:00:00', 'A'),
(294, '97', '2', '6', '9767.12', '13.07', '', '0000-00-00 00:00:00', 'A'),
(295, '98', '2', '6', '9897.96', '13.08', '', '0000-00-00 00:00:00', 'A'),
(296, '99', '2', '6', '10028.87', '13.09', '', '0000-00-00 00:00:00', 'A'),
(297, '100', '2', '6', '10159.86', '13.10', '', '0000-00-00 00:00:00', 'A'),
(298, '101', '2', '6', '10290.91', '13.10', '', '0000-00-00 00:00:00', 'A'),
(299, '102', '2', '6', '10422.01', '13.11', '', '0000-00-00 00:00:00', 'A'),
(300, '103', '2', '6', '10553.14', '13.11', '', '0000-00-00 00:00:00', 'A'),
(301, '104', '2', '6', '10684.30', '13.12', '', '0000-00-00 00:00:00', 'A'),
(302, '105', '2', '6', '10815.47', '13.12', '', '0000-00-00 00:00:00', 'A'),
(303, '106', '2', '6', '10946.63', '13.12', '', '0000-00-00 00:00:00', 'A'),
(304, '107', '2', '6', '11077.79', '13.12', '', '0000-00-00 00:00:00', 'A'),
(305, '108', '2', '6', '11208.92', '13.11', '', '0000-00-00 00:00:00', 'A'),
(306, '109', '2', '6', '11340.02', '13.11', '', '0000-00-00 00:00:00', 'A'),
(307, '110', '2', '6', '11471.07', '13.10', '', '0000-00-00 00:00:00', 'A'),
(308, '111', '2', '6', '11602.06', '13.10', '', '0000-00-00 00:00:00', 'A'),
(309, '112', '2', '6', '11732.98', '13.09', '', '0000-00-00 00:00:00', 'A'),
(310, '113', '2', '6', '11863.81', '13.08', '', '0000-00-00 00:00:00', 'A'),
(311, '114', '2', '6', '11994.55', '13.07', '', '0000-00-00 00:00:00', 'A'),
(312, '115', '2', '6', '12125.18', '13.06', '', '0000-00-00 00:00:00', 'A'),
(313, '116', '2', '6', '12255.69', '13.05', '', '0000-00-00 00:00:00', 'A'),
(314, '117', '2', '6', '12386.31', '13.02', '', '0000-00-00 00:00:00', 'A'),
(315, '118', '2', '6', '12516.31', '13.02', '', '0000-00-00 00:00:00', 'A'),
(316, '119', '2', '6', '12646.39', '13.01', '', '0000-00-00 00:00:00', 'A'),
(317, '120', '2', '6', '12776.30', '12.99', '', '0000-00-00 00:00:00', 'A'),
(318, '121', '2', '6', '12906.03', '12.97', '', '0000-00-00 00:00:00', 'A'),
(319, '122', '2', '6', '13035.57', '12.95', '', '0000-00-00 00:00:00', 'A'),
(320, '123', '2', '6', '13164.91', '12.93', '', '0000-00-00 00:00:00', 'A'),
(321, '124', '2', '6', '13294.02', '12.91', '', '0000-00-00 00:00:00', 'A'),
(322, '125', '2', '6', '13422.91', '12.89', '', '0000-00-00 00:00:00', 'A'),
(323, '126', '2', '6', '13551.55', '12.86', '', '0000-00-00 00:00:00', 'A'),
(324, '127', '2', '6', '13679.94', '12.84', '', '0000-00-00 00:00:00', 'A'),
(325, '128', '2', '6', '13808.06', '12.81', '', '0000-00-00 00:00:00', 'A'),
(326, '129', '2', '6', '13935.90', '12.78', '', '0000-00-00 00:00:00', 'A'),
(327, '130', '2', '6', '14063.45', '12.75', '', '0000-00-00 00:00:00', 'A'),
(328, '131', '2', '6', '14190.69', '12.72', '', '0000-00-00 00:00:00', 'A'),
(329, '132', '2', '6', '14317.61', '12.69', '', '0000-00-00 00:00:00', 'A'),
(330, '133', '2', '6', '14444.20', '12.66', '', '0000-00-00 00:00:00', 'A'),
(331, '134', '2', '6', '14570.44', '12.62', '', '0000-00-00 00:00:00', 'A'),
(332, '135', '2', '6', '14696.32', '12.59', '', '0000-00-00 00:00:00', 'A'),
(333, '136', '2', '6', '14821.83', '12.55', '', '0000-00-00 00:00:00', 'A'),
(334, '137', '2', '6', '14946.96', '12.51', '', '0000-00-00 00:00:00', 'A'),
(335, '138', '2', '6', '15071.68', '12.47', '', '0000-00-00 00:00:00', 'A'),
(336, '139', '2', '6', '15195.99', '12.43', '', '0000-00-00 00:00:00', 'A'),
(337, '140', '2', '6', '15319.88', '12.39', '', '0000-00-00 00:00:00', 'A'),
(338, '141', '2', '6', '15443.32', '12.34', '', '0000-00-00 00:00:00', 'A'),
(339, '142', '2', '6', '45566.30', '12.30', '', '0000-00-00 00:00:00', 'A'),
(340, '143', '2', '6', '15688.81', '12.25', '', '0000-00-00 00:00:00', 'A'),
(341, '144', '2', '6', '15810.84', '12.20', '', '0000-00-00 00:00:00', 'A'),
(342, '145', '2', '6', '15932.37', '12.15', '', '0000-00-00 00:00:00', 'A'),
(343, '146', '2', '6', '16053.39', '12.10', '', '0000-00-00 00:00:00', 'A'),
(344, '147', '2', '6', '16173.87', '12.05', '', '0000-00-00 00:00:00', 'A'),
(345, '148', '2', '6', '16293.81', '11.99', '', '0000-00-00 00:00:00', 'A'),
(346, '149', '2', '6', '16413.18', '11.94', '', '0000-00-00 00:00:00', 'A'),
(347, '150', '2', '6', '16531.98', '11.88', '', '0000-00-00 00:00:00', 'A'),
(348, '151', '2', '6', '16650.19', '11.82', '', '0000-00-00 00:00:00', 'A'),
(349, '152', '2', '6', '16767.79', '11.76', '', '0000-00-00 00:00:00', 'A'),
(350, '153', '2', '6', '16884.76', '11.70', '', '0000-00-00 00:00:00', 'A'),
(351, '154', '2', '6', '17001.09', '11.63', '', '0000-00-00 00:00:00', 'A'),
(352, '155', '2', '6', '17116.76', '11.57', '', '0000-00-00 00:00:00', 'A'),
(353, '156', '2', '6', '17231.75', '11.50', '', '0000-00-00 00:00:00', 'A'),
(354, '157', '2', '6', '17346.05', '11.43', '', '0000-00-00 00:00:00', 'A'),
(355, '158', '2', '6', '17459.63', '11.36', '', '0000-00-00 00:00:00', 'A'),
(356, '159', '2', '6', '17572.49', '11.29', '', '0000-00-00 00:00:00', 'A'),
(357, '160', '2', '6', '17684.59', '11.21', '', '0000-00-00 00:00:00', 'A'),
(358, '161', '2', '6', '17795.93', '11.13', '', '0000-00-00 00:00:00', 'A'),
(359, '162', '2', '6', '17906.48', '11.05', '', '0000-00-00 00:00:00', 'A'),
(360, '163', '2', '6', '18016.22', '10.97', '', '0000-00-00 00:00:00', 'A'),
(361, '164', '2', '6', '18125.13', '10.89', '', '0000-00-00 00:00:00', 'A'),
(362, '165', '2', '6', '18233.19', '10.89', '', '0000-00-00 00:00:00', 'A'),
(363, '166', '2', '6', '18340.39', '10.72', '', '0000-00-00 00:00:00', 'A'),
(364, '167', '2', '6', '18446.69', '10.63', '', '0000-00-00 00:00:00', 'A'),
(365, '168', '2', '6', '18552.07', '10.54', '', '0000-00-00 00:00:00', 'A'),
(366, '169', '2', '6', '18656.52', '10.44', '', '0000-00-00 00:00:00', 'A'),
(367, '170', '2', '6', '18760.01', '10.35', '', '0000-00-00 00:00:00', 'A'),
(368, '171', '2', '6', '18862.51', '10.25', '', '0000-00-00 00:00:00', 'A'),
(369, '172', '2', '6', '18964.00', '10.15', '', '0000-00-00 00:00:00', 'A'),
(370, '173', '2', '6', '19064.46', '10.05', '', '0000-00-00 00:00:00', 'A'),
(371, '174', '2', '6', '19163.85', '9.94', '', '0000-00-00 00:00:00', 'A'),
(372, '175', '2', '6', '19262.15', '9.83', '', '0000-00-00 00:00:00', 'A'),
(373, '176', '2', '6', '19359.34', '9.72', '', '0000-00-00 00:00:00', 'A'),
(374, '177', '2', '6', '13455.38', '9.60', '', '0000-00-00 00:00:00', 'A'),
(375, '178', '2', '6', '19550.24', '9.49', '', '0000-00-00 00:00:00', 'A'),
(376, '179', '2', '6', '19643.89', '9.37', '', '0000-00-00 00:00:00', 'A'),
(377, '180', '2', '6', '19736.30', '9.24', '', '0000-00-00 00:00:00', 'A'),
(378, '181', '2', '6', '19827.43', '9.11', '', '0000-00-00 00:00:00', 'A'),
(379, '182', '2', '6', '19917.25', '8.98', '', '0000-00-00 00:00:00', 'A'),
(380, '183', '2', '6', '20005.73', '8.85', '', '0000-00-00 00:00:00', 'A'),
(381, '184', '2', '6', '20092.81', '8.71', '', '0000-00-00 00:00:00', 'A'),
(382, '185', '2', '6', '20178.47', '8.57', '', '0000-00-00 00:00:00', 'A'),
(383, '186', '2', '6', '20262.66', '8.42', '', '0000-00-00 00:00:00', 'A'),
(384, '187', '2', '6', '20345.33', '8.27', '', '0000-00-00 00:00:00', 'A'),
(385, '188', '2', '6', '20426.44', '8.11', '', '0000-00-00 00:00:00', 'A'),
(386, '189', '2', '6', '20505.94', '7.95', '', '0000-00-00 00:00:00', 'A'),
(387, '190', '2', '6', '20583.77', '7.78', '', '0000-00-00 00:00:00', 'A'),
(388, '191', '2', '6', '20659.87', '7.61', '', '0000-00-00 00:00:00', 'A'),
(389, '192', '2', '6', '20734.19', '7.43', '', '0000-00-00 00:00:00', 'A'),
(390, '193', '2', '6', '20806.66', '7.25', '', '0000-00-00 00:00:00', 'A'),
(391, '194', '2', '6', '20945.76', '7.05', '', '0000-00-00 00:00:00', 'A'),
(392, '195', '2', '6', '20945.76', '6.86', '', '0000-00-00 00:00:00', 'A'),
(393, '196', '2', '6', '21012.23', '6.65', '', '0000-00-00 00:00:00', 'A'),
(394, '197', '2', '6', '21076.53', '6.43', '', '0000-00-00 00:00:00', 'A'),
(395, '198', '2', '6', '21138.56', '6.20', '', '0000-00-00 00:00:00', 'A'),
(396, '199', '2', '6', '21198.20', '5.96', '', '0000-00-00 00:00:00', 'A'),
(397, '200', '2', '6', '21255.32', '5.71', '', '0000-00-00 00:00:00', 'A'),
(398, '201', '2', '6', '21309.79', '5.45', '', '0000-00-00 00:00:00', 'A'),
(399, '202', '2', '6', '21361.44', '', '', '0000-00-00 00:00:00', 'A'),
(400, '203', '2', '6', '21410.07', '', '', '0000-00-00 00:00:00', 'A'),
(401, '204', '2', '6', '21455.44', '', '', '0000-00-00 00:00:00', 'A'),
(402, '205', '2', '6', '21497.27', '', '', '0000-00-00 00:00:00', 'A'),
(403, '206', '2', '6', '21535.18', '', '', '0000-00-00 00:00:00', 'A'),
(404, '207', '2', '6', '21568.68', '', '', '0000-00-00 00:00:00', 'A'),
(405, '208', '2', '6', '21597.03', '', '', '0000-00-00 00:00:00', 'A'),
(406, '209', '2', '6', '21618.38', '', '', '0000-00-00 00:00:00', 'A'),
(407, '210', '2', '6', '21630.93', '', '', '0000-00-00 00:00:00', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `price_master`
--

CREATE TABLE `price_master` (
  `s_id` int(11) NOT NULL,
  `item_code` int(11) NOT NULL,
  `price` double(20,2) NOT NULL,
  `price_date` datetime NOT NULL,
  `c_user` varchar(50) NOT NULL,
  `c_date` datetime NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price_master`
--

INSERT INTO `price_master` (`s_id`, `item_code`, `price`, `price_date`, `c_user`, `c_date`, `status`) VALUES
(1, 2, 123.00, '2016-12-14 00:00:06', 'suresh', '2017-01-03 17:09:19', 'A'),
(2, 1, 121.00, '2017-01-03 15:01:39', 'suresh', '2017-01-03 17:39:24', 'A'),
(3, 3, 50.00, '2016-12-23 15:12:00', 'suresh', '2017-01-04 13:04:26', 'A'),
(4, 2, 70.00, '2017-01-01 00:00:01', 'suresh', '2017-01-03 17:36:14', 'A'),
(5, 1, 120.00, '2017-01-03 00:00:00', 'suresh', '2017-01-03 17:36:58', 'A'),
(6, 3, 35.00, '2017-01-05 13:04:00', 'suresh', '2017-01-04 13:04:50', 'A'),
(7, 1, 15.00, '2017-07-24 17:24:00', 'suresh', '2017-07-24 04:55:13', 'A'),
(8, 2, 45.89, '2020-07-18 02:05:00', 'suresh', '2020-07-18 02:05:13', 'A'),
(9, 1, 75.89, '2020-07-23 22:47:00', 'suresh', '2020-07-23 22:47:13', 'A'),
(10, 2, 80.87, '2020-07-27 23:38:00', 'suresh', '2020-07-28 23:38:38', 'A'),
(12, 4, 40.00, '2020-08-10 00:31:00', 'suresh', '2020-08-14 00:31:52', 'A'),
(13, 5, 40.00, '2020-08-10 00:32:00', 'suresh', '2020-08-14 00:32:04', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `s_id` int(11) NOT NULL,
  `produt_name` varchar(100) DEFAULT NULL,
  `product_quantity` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `order_level` int(11) NOT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `c_date` date DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`s_id`, `produt_name`, `product_quantity`, `description`, `order_level`, `user_id`, `c_date`, `status`) VALUES
(1, 'petrol', 14887, 'ccccc', 0, 'suresh', '2017-01-04', 'A'),
(2, 'disel', 12341, 'jjjjjjjjjjjjjjjj', 0, 'suresh', '2017-01-04', 'A'),
(3, '2toil', 1383, 'oooooooo', 5, 'suresh', '2020-08-15', 'A'),
(4, 'LPG', 4959, 'gggggggg', 0, 'suresh', '2020-08-14', 'A'),
(5, 'castrol oil', 459, 'llllllll', 0, 'suresh', '2020-08-14', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `pump_master`
--

CREATE TABLE `pump_master` (
  `pump_id` int(11) NOT NULL,
  `pump_name` varchar(50) NOT NULL,
  `tank_id` int(11) NOT NULL,
  `item_code` varchar(25) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `pump_date` date NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pump_master`
--

INSERT INTO `pump_master` (`pump_id`, `pump_name`, `tank_id`, `item_code`, `user_id`, `pump_date`, `status`) VALUES
(17, 'pump1', 7, '2', 'suresh', '0000-00-00', 'A'),
(19, 'pump2', 8, '1', 'suresh', '0000-00-00', 'A'),
(20, 'pump3', 9, '1', 'suresh', '0000-00-00', 'A'),
(21, 'pump4', 10, '2', 'suresh', '0000-00-00', 'A'),
(22, 'pump5', 9, '1', 'suresh', '0000-00-00', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `pump_trans`
--

CREATE TABLE `pump_trans` (
  `s_id` int(11) NOT NULL,
  `pump_id` int(11) NOT NULL,
  `pump_reading` int(11) NOT NULL,
  `pump_date` datetime NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `c_date` datetime NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pump_trans`
--

INSERT INTO `pump_trans` (`s_id`, `pump_id`, `pump_reading`, `pump_date`, `user_id`, `c_date`, `status`) VALUES
(35, 19, 0, '2020-08-31 01:07:54', 'suresh', '2020-09-06 01:08:02', 'A'),
(36, 17, 0, '2020-08-31 01:08:07', 'suresh', '2020-09-06 01:08:09', 'A'),
(37, 17, 100, '2020-09-01 01:08:18', 'suresh', '2020-09-06 01:08:22', 'A'),
(38, 19, 100, '2020-09-01 01:08:28', 'suresh', '2020-09-06 01:08:32', 'A'),
(39, 19, 200, '2020-09-02 01:08:41', 'suresh', '2020-09-06 01:08:49', 'A'),
(40, 17, 200, '2020-09-02 01:08:56', 'suresh', '2020-09-06 01:08:58', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `purches_master`
--

CREATE TABLE `purches_master` (
  `s_id` int(11) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `procure_date` datetime NOT NULL,
  `date_of_authorised` datetime NOT NULL,
  `authorized_by` varchar(50) NOT NULL,
  `invoice_amount` double(20,2) NOT NULL,
  `description` varchar(11) NOT NULL,
  `USER_ID` varchar(20) NOT NULL,
  `created_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purches_master`
--

INSERT INTO `purches_master` (`s_id`, `invoice_id`, `procure_date`, `date_of_authorised`, `authorized_by`, `invoice_amount`, `description`, `USER_ID`, `created_date`, `status`) VALUES
(8, '101', '2020-09-01 21:47:00', '2020-09-01 21:46:00', 'testing', 1000.00, 'abcd', 'suresh', '2020-09-05', 'A'),
(9, '0029', '2020-09-01 09:09:00', '2020-09-01 09:09:00', 'ram', 1000.00, 'buyed', 'suresh', '2020-09-06', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `purches_master_items`
--

CREATE TABLE `purches_master_items` (
  `purch_item_id` int(11) NOT NULL,
  `purch_mast_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `product_qty` varchar(11) NOT NULL,
  `model` varchar(11) NOT NULL,
  `product_price` varchar(11) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purches_master_items`
--

INSERT INTO `purches_master_items` (`purch_item_id`, `purch_mast_id`, `product_id`, `vender_id`, `product_qty`, `model`, `product_price`, `USER_ID`, `created_date`, `status`) VALUES
(15, 8, 5, 4, '100', 'model2', '50', 'suresh', '2020-09-05 21:47:32', 'A'),
(14, 8, 1, 4, '100', 'model', '100', 'suresh', '2020-09-05 21:47:32', 'A'),
(16, 9, 1, 4, '100', 'modelname', '10', 'suresh', '2020-09-06 09:10:06', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE `role_master` (
  `s_id` int(10) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `accept_screens` varchar(400) NOT NULL,
  `permission` varchar(1) DEFAULT NULL,
  `c_date` date NOT NULL,
  `c_user` varchar(50) NOT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_master`
--

INSERT INTO `role_master` (`s_id`, `role_name`, `accept_screens`, `permission`, `c_date`, `c_user`, `status`) VALUES
(1, 'admin', '150,151,152,132,135,144,142,145,137,158,143,139,138,134,157,153,156,154,146,141,159,160,155', 'P', '2020-09-06', 'suresh', 'A'),
(2, 'employee', '142,145,137,139,153,156,146,141', 'P', '2020-09-06', 'suresh', 'A'),
(3, 'owner', '152,144,145,137,153,141,159,160,155', 'P', '2020-09-06', 'suresh', 'A'),
(4, 'creditcustomer', '159', 'P', '2020-09-06', 'suresh', 'A'),
(5, 'manager', '150,152,132,135,142,145,137,158,139,138,134,153,156,146,141,159,160,155', 'P', '2020-09-06', 'suresh', 'A'),
(6, 'assistant manager', '150,152,132,135,142,145,137,158,138,134,153,156,146,141,159,160,155', 'P', '2020-09-06', 'suresh', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `shift_master`
--

CREATE TABLE `shift_master` (
  `shift_code` int(11) NOT NULL,
  `shift_name` varchar(25) DEFAULT NULL,
  `shift_start_time` time DEFAULT NULL,
  `shift_end_time` time DEFAULT NULL,
  `shift_created_user_id` varchar(50) DEFAULT NULL,
  `shift_created_date` datetime DEFAULT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift_master`
--

INSERT INTO `shift_master` (`shift_code`, `shift_name`, `shift_start_time`, `shift_end_time`, `shift_created_user_id`, `shift_created_date`, `status`) VALUES
(4, 'genral shift', '09:00:00', '09:00:00', 'suresh', '2016-12-31 17:52:56', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tank_master`
--

CREATE TABLE `tank_master` (
  `tank_id` int(11) NOT NULL,
  `tank_name` varchar(50) NOT NULL,
  `oil_type` varchar(20) NOT NULL,
  `calibration_id` int(11) DEFAULT NULL,
  `tank_created_user_id` varchar(50) DEFAULT NULL,
  `tank_created_date` datetime DEFAULT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tank_master`
--

INSERT INTO `tank_master` (`tank_id`, `tank_name`, `oil_type`, `calibration_id`, `tank_created_user_id`, `tank_created_date`, `status`) VALUES
(7, 'tank1', '1', 2, 'suresh', '2016-12-31 12:47:35', 'A'),
(8, 'tank2', '1', 2, 'suresh', '2016-12-28 18:15:33', 'A'),
(9, 'tank3', '2', 7, 'suresh', '2016-12-29 14:45:28', 'A'),
(10, 'tank4', '2', 8, 'suresh', '2016-12-30 12:31:00', 'A'),
(11, 'tank5', '2', 6, 'suresh', '2016-12-30 18:00:56', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `sno` int(11) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `PASSWORD` varchar(500) NOT NULL,
  `REFERENCE_CODE` int(8) NOT NULL,
  `USER_CATG` varchar(15) DEFAULT NULL,
  `email_id` varchar(100) NOT NULL,
  `DATE_CREATED` date DEFAULT NULL,
  `salt` varchar(300) DEFAULT NULL,
  `STATUS_FLAG` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`sno`, `USER_ID`, `PASSWORD`, `REFERENCE_CODE`, `USER_CATG`, `email_id`, `DATE_CREATED`, `salt`, `STATUS_FLAG`) VALUES
(29, 'shashidhar', 'a3a5a140ad76783d6d5e9880ea13330876fc524397a7daf907d3a71e0f88177c35f5f53414cca8fe786301ff7d8dcadc74cc7c28cc1f68e821cd1441bcf4c9a4', 46, 'emp', '1234@gmail.com', '2014-10-22', '5e4cd853d24954ad16e38e911b068c58e43b631770869898d3f814c832f9af91d899c38a0752fcc661f9cfa829f7f3f83524695f5f3d36f9b8e80f3472f3dcec', 'A'),
(47, 'suresh', 'ba4eb68eed8cc61d094039c1de86b068b91c9278698eb8a290c152f18c428be68ea03e43f64e11259b04f559f4713b24c3474fd4d56584e75053a7fedaa870d6', 51, 'adm', 'suresh@aryatechnologies.net', '2015-11-12', 'f85d6170db549b6e3081fb88946494ba07f9fc4905fef669672b5a6e6126da6671e998176f9e4625f13f911d98e84c54241c7dbc64ad9face564230f001c973b', 'A'),
(48, 'ramesh', '9aecaf5d18168e5c1f785689783aca96b885a86ead9e8049602c00f699064037778b9ca17fbefb69dd5b02929fb545d91a1ec3b1538030aa60b6fa8278b39e49', 1, 'cuser', 'ramesh@gmailcom', '2016-12-24', '85847449faa19118edae1e2867101addc453568abf1ffa4febc694b29daa0f3c63d88a68d625e6fed476e119798ffae82a04b72067edd373445a961211cdd15c', 'A'),
(49, 'shaffi', '751c99ddbb9799c9115b5f9605d86a0ecca1541264a5ffd13cfd659b704deba756be02b7653d89162ec43a52aebe2a3b2ee8e2514b1e036d4ed96ac1906b51e2', 2, 'cuser', 'shaffi@gmail.com', '2016-12-24', 'f6511d05dc3440b6c8642bd52a589849f4264e41cde782d35de2b12dce06f086120ea191b66af9756f489659eb6241290f0e10ff97eb1c7783503cb6f23b3869', 'A'),
(50, 'chanti', '70ea3879c714271dba1370ea1ede807ffb078b4c1654b9685e30e86a17394d459afce9994c7fecef0fe84d183e82ebfb51a75df506ddeb874c8541e85b3347cb', 1, 'emp', 'chanti@gmail.com', '2016-12-24', 'cb6c8f4597971d53dd117fd4b4e5e8f845a9362ccfc5434f136ffc9b60e380ad4a53c9f77a4f18992f9458adfa2139d167cb8931fd2f415bd426893fa2172d4e', 'A'),
(52, 'jyo', 'a44044cab0fc30ed84cf5d1165a0044d96126b8934d6652369a0bcde5d305e7d3add758c3a928428d101bc8e67f8400954856e07ad49387c52bcd6633f23fdb5', 4, 'cuser', 'jyo@gmail.com', '2016-12-27', 'ed16603164b731ea0e017600fcd04a9fe13a6956277feb132d26e13091c48fa8feb451573e83525343d7c469cd8e27a3aea2a196bdb4025a26cde1122b4ae580', 'A'),
(53, 'daruck', 'be71cef4ab88e2dd43f9245b55bb8ac32558de5d50449a988157bfd3b4871c2855e6a800cfc0cd8f768d71bb0cf6c413200917372eb850f6aec7909cbd2ccf74', 5, 'cuser', 'sur@gmail.com', '2016-12-28', '5c6edb3213266d5d7f2556e6b7ba36c6a5cb45b571e5a4678863c1bf0387f013daed21741f977c7e1c745b715ab93c75f43b8090d3a25f75f37efdeb390237b6', 'A'),
(54, 'ram', 'e04bf4e837ecb352ce7c1d22f851e753583c2504c104f2bd023968da930549bf5d89340ca9832089238c4dbc3931f5cd2eab994d2ff2229a639a1c46199ac714', 3, 'emp', 'ram@gmail.com', '2016-12-28', 'ba1c93faba9a55bca7fc268c3876caf3009d8791008b4fee318ff9f348091e41d154024a04262e924ec7c3d41cee34078a9dd3ad11026235ebee0a3852ac740f', 'A'),
(55, 'ram', '100877c4e83b4cd1a49bc9166125c3b439589812d967751cd788e0026162382d2464fe3610b46cfcee32573e7093b2db46ac67e49cb665708baf8219e9dd5cd2', 1, 'emp', 'ram@gmail.com', '2016-12-28', 'f1ef289aed130a9fdfc6ae9e26bf3814218f72960365a2f009ba66db27970536b48132560ddf58d715dfd15aee9138d3a2e8900fc96decb666ee2ca0337a5412', 'A'),
(56, 'pavan', '97452e9a79a3c0db3239f29a0cdd7c1e535749b689ba4a30fdcd668bc21dedf06c216730a6ebc9ca30d4e6c291a64cf7527346b6442f8fb3212026ee7830e2e2', 4, 'emp', 'pavan@gmaail.com', '2016-12-31', '5916f42f84fd3f3419b7fb03374cc0607eac0fbe573f828c3dd67b15fc1fd37f0de7d33005dc5d87df444c478f60bd2b9574d1eccacf82e627c81aa346eb059e', 'A'),
(58, 'vig', '6199a647aca6a2c1d07b27df38a1034cb1e6ad4bdb3e391befe584e7275f1b3ea499b22572eec9ba277407fd22f05b7b6c324ebefd2f6678fdacbded6f8dd964', 7, 'cuser', 'dsaisrujan@gmail.com', '2020-07-27', 'b27f722fab661b49bb9132ce0d23080e2a446e341fc0a19704f1d6af49614ed87308a0df24da88797d5fd794909f7f201c073111c11768b865894888c4676cc5', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_master`
--

CREATE TABLE `user_type_master` (
  `user_type_code` int(11) NOT NULL,
  `user_type_name` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type_master`
--

INSERT INTO `user_type_master` (`user_type_code`, `user_type_name`, `status`) VALUES
(1, 'Administrator', 'A'),
(2, 'Employee', 'A'),
(3, 'Owner', 'A'),
(4, 'Credit Customer', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `vender_master`
--

CREATE TABLE `vender_master` (
  `s_id` int(11) NOT NULL,
  `vender_name` varchar(25) NOT NULL,
  `vender_address` varchar(50) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `email_id` varchar(20) NOT NULL,
  `contact_person_name` varchar(25) NOT NULL,
  `c_date` datetime NOT NULL,
  `c_user` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vender_master`
--

INSERT INTO `vender_master` (`s_id`, `vender_name`, `vender_address`, `contact_no`, `email_id`, `contact_person_name`, `c_date`, `c_user`, `status`) VALUES
(4, 'ram', 'ttt', 14785203, 'ramuu@gmail.com', 'chanti', '2017-01-25 18:16:10', '', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_detail_entry`
--
ALTER TABLE `bill_detail_entry`
  ADD PRIMARY KEY (`bill_seq_no`),
  ADD KEY `bill_no` (`bill_no`),
  ADD KEY `bill_no_2` (`bill_no`);

--
-- Indexes for table `bill_entry`
--
ALTER TABLE `bill_entry`
  ADD PRIMARY KEY (`bill_no`),
  ADD UNIQUE KEY `bill_number_2` (`bill_number`),
  ADD UNIQUE KEY `bill_number_3` (`bill_number`),
  ADD KEY `idx_bill_entry` (`credit_customer_code`),
  ADD KEY `idx_bill_entry_0` (`cc_payment_id`);

--
-- Indexes for table `calibration_master`
--
ALTER TABLE `calibration_master`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `cc_payment_trans`
--
ALTER TABLE `cc_payment_trans`
  ADD PRIMARY KEY (`cc_sq_no`);

--
-- Indexes for table `creditcustomer_vechicle_master`
--
ALTER TABLE `creditcustomer_vechicle_master`
  ADD PRIMARY KEY (`cc_s_id`),
  ADD KEY `cc_s_id` (`cc_s_id`);

--
-- Indexes for table `credit_customer_master`
--
ALTER TABLE `credit_customer_master`
  ADD PRIMARY KEY (`credit_customer_code`),
  ADD KEY `credit_customer_code` (`credit_customer_code`),
  ADD KEY `idx_credit_customer_master` (`cc_id_proof_type_code`);

--
-- Indexes for table `customer_card`
--
ALTER TABLE `customer_card`
  ADD PRIMARY KEY (`bill_no`);

--
-- Indexes for table `daily_invoice`
--
ALTER TABLE `daily_invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `daily_pump_allotment`
--
ALTER TABLE `daily_pump_allotment`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `daily_transactions`
--
ALTER TABLE `daily_transactions`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `s_id` (`s_id`);

--
-- Indexes for table `dip_tank_trans`
--
ALTER TABLE `dip_tank_trans`
  ADD PRIMARY KEY (`dip_tank_seqno`);

--
-- Indexes for table `employee_master`
--
ALTER TABLE `employee_master`
  ADD PRIMARY KEY (`emp_code`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `id_proof_type_master`
--
ALTER TABLE `id_proof_type_master`
  ADD PRIMARY KEY (`id_proof_type_code`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`	invoice_item_seq_no`),
  ADD KEY `fk_invoice_details` (`invoice_id`),
  ADD KEY `fk_invoice_details_0` (`item_code`);

--
-- Indexes for table `item_master`
--
ALTER TABLE `item_master`
  ADD PRIMARY KEY (`item_code`);

--
-- Indexes for table `leaveapplications`
--
ALTER TABLE `leaveapplications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaveapplications_emp_code_idx` (`emp_code`) USING BTREE,
  ADD KEY `leaveapplications_cuser_idx` (`cuser`) USING BTREE,
  ADD KEY `leaveapplications_start_date_leave_idx` (`start_date_leave`) USING BTREE;

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `petrol_dip`
--
ALTER TABLE `petrol_dip`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `price_master`
--
ALTER TABLE `price_master`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `pump_master`
--
ALTER TABLE `pump_master`
  ADD PRIMARY KEY (`pump_id`);

--
-- Indexes for table `pump_trans`
--
ALTER TABLE `pump_trans`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `purches_master`
--
ALTER TABLE `purches_master`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `purches_master_items`
--
ALTER TABLE `purches_master_items`
  ADD PRIMARY KEY (`purch_item_id`);

--
-- Indexes for table `role_master`
--
ALTER TABLE `role_master`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `shift_master`
--
ALTER TABLE `shift_master`
  ADD PRIMARY KEY (`shift_code`);

--
-- Indexes for table `tank_master`
--
ALTER TABLE `tank_master`
  ADD PRIMARY KEY (`tank_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user_type_master`
--
ALTER TABLE `user_type_master`
  ADD PRIMARY KEY (`user_type_code`);

--
-- Indexes for table `vender_master`
--
ALTER TABLE `vender_master`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_detail_entry`
--
ALTER TABLE `bill_detail_entry`
  MODIFY `bill_seq_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT for table `bill_entry`
--
ALTER TABLE `bill_entry`
  MODIFY `bill_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `calibration_master`
--
ALTER TABLE `calibration_master`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `creditcustomer_vechicle_master`
--
ALTER TABLE `creditcustomer_vechicle_master`
  MODIFY `cc_s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `credit_customer_master`
--
ALTER TABLE `credit_customer_master`
  MODIFY `credit_customer_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `daily_pump_allotment`
--
ALTER TABLE `daily_pump_allotment`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `daily_transactions`
--
ALTER TABLE `daily_transactions`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `dip_tank_trans`
--
ALTER TABLE `dip_tank_trans`
  MODIFY `dip_tank_seqno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employee_master`
--
ALTER TABLE `employee_master`
  MODIFY `emp_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `leaveapplications`
--
ALTER TABLE `leaveapplications`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8068;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `petrol_dip`
--
ALTER TABLE `petrol_dip`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;
--
-- AUTO_INCREMENT for table `price_master`
--
ALTER TABLE `price_master`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pump_master`
--
ALTER TABLE `pump_master`
  MODIFY `pump_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `pump_trans`
--
ALTER TABLE `pump_trans`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `purches_master`
--
ALTER TABLE `purches_master`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `purches_master_items`
--
ALTER TABLE `purches_master_items`
  MODIFY `purch_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `role_master`
--
ALTER TABLE `role_master`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `shift_master`
--
ALTER TABLE `shift_master`
  MODIFY `shift_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tank_master`
--
ALTER TABLE `tank_master`
  MODIFY `tank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `user_type_master`
--
ALTER TABLE `user_type_master`
  MODIFY `user_type_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `vender_master`
--
ALTER TABLE `vender_master`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
