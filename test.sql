-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 06:24 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(3) NOT NULL,
  `work` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  `date` varchar(30) NOT NULL,
  `days` varchar(9) NOT NULL,
  `hours` varchar(30) NOT NULL,
  `reg_id` int(3) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `work`, `city`, `name`, `mobile`, `address`, `date`, `days`, `hours`, `reg_id`, `status`) VALUES
(2, 'Cooking', 'Bangalore', 'raju', '8827680221', 'shubhas nager ', '2019-01', '1', '2to4', 2, '2'),
(3, 'Cooking', 'Bangalore', 'navin ', '8745896589', 'ashok vihar', '2019-11-02', '2', '2to4', 1, '2'),
(4, 'Cooking', 'Telangana', 'neetu', '7745990607', 'ashok vihar bhopal', '2019-02-01', '2', '2to4', 3, '2'),
(5, 'Cooking', 'Selam', 'neetu', '7745990607', 'ashok vihar', '2019-02-01', '2', '2to4', 2, '1'),
(6, 'Cooking', 'Bhopal', 'neerendra ', '7412589658', 'khushi nager', '2019-02-01', '2', '6to8', 2, '0'),
(7, '', 'Bangalore', 'shanvi', '09986782689', 'RAJAMMA GARDEN,JP NAGAR', '2021-01-16', '1', '2to4', 0, '0'),
(8, 'Cooking', 'Bhopal', 'siri', '8798764356', 'rajiv road', '2021-01-09', '1', '2to4', 1, '0'),
(9, 'Cooking', 'Bhopal', 'sanjay', '09986782689', 'RAJAMMA GARDEN,JP NAGAR', '2021-01-07', '4', '2to4', 1, '0'),
(10, 'Driver', 'Bangalore', 'siri', '9876789678', 'jp nagar', '2021-01-16', '30', '2to4', 4, '2'),
(11, 'Gardner', 'Bangalore', 'Sanmi', '7896748973', 'bangalore', '2021-01-30', '2', '1to2', 9, '2');

-- --------------------------------------------------------

--
-- Table structure for table `country_state_city`
--

CREATE TABLE `country_state_city` (
  `id` int(11) NOT NULL,
  `country` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_state_city`
--

INSERT INTO `country_state_city` (`id`, `country`, `state`, `city`) VALUES
(1, 'India', 'MP', 'Bhopal'),
(2, 'India', 'AP', 'Telangana'),
(3, 'India', 'Karnataka', 'Bangalore'),
(4, 'India', 'UP', 'Kanpur'),
(5, 'India', 'UP', 'Lucknow'),
(6, 'India', 'TN', 'Selam'),
(7, 'India', 'Rajasthan', 'Jaypur'),
(8, 'India', 'Rajasthan', 'Udaipur'),
(9, 'India', 'Rajasthan', 'Ajmer');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(40) NOT NULL,
  `experience` varchar(9) NOT NULL,
  `id_proof` varchar(30) NOT NULL,
  `id_picture` varchar(45) NOT NULL,
  `work_type` varchar(40) NOT NULL,
  `picture` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `mobile`, `email`, `password`, `city`, `address`, `experience`, `id_proof`, `id_picture`, `work_type`, `picture`) VALUES
(1, 'vishal sharma', '8269966985', 'vishal@gmail.com', '111111', 'Bhopal', 'Arrepet', '2', 'Adhaar', 'pre-printed-aadhar-card-500x500.jpg', 'Cooking', 'person_3.jpg'),
(2, 'manjul khatter', '9874589632', 'manjul@gmail.com', '111111', 'Bhopal', 'shubhas nager bhopal', '4', 'pan', 'pan_card.jpeg', 'Food Service', 'person_4.jpg'),
(3, 'rajesh jain', '8745896589', 'rajesh@gmail.com', '111111', 'Telangana', 'arera colony', '4', 'Pan', 'Pan_card.jpeg', 'cleaning', 'e38b0674dcc0d16caf8200e8b10d0347.jpg'),
(4, 'archana', '9878987678', 'archana@124', '12345', 'Bangalore', 'rajiv gandhi road', '3', 'Pan', 'Pan_card.jpeg', 'Driver', 'person_2.jpg'),
(5, 'amy', '9856789876', 'amy@12', '12345', 'Udaipur', 'plaza', '2', 'Adhaar', 'aadhaar-pvc-card-500x500.png', 'Gardner', 'person_1.jpg'),
(6, 'surabh', '8769432167', 'surabh@12', '12345', 'Telangana', 'rajmundry building', '2', 'Pan', 'Pan_card.jpeg', 'Baby_Sitting', 'manj.jpg.jpg'),
(7, 'siri', '9987656799', 'sirisha@123', '12345', 'Lucknow', 'jp nagar', '2', 'Pan', 'Pan_card.jpeg', 'Car Washing', 'person_2.jpg'),
(9, 'sangeeth seni', '8790367895', 'san@123', '1234', 'Bangalore', 'gandhi road', '2', 'Pan', 'Pan_card.jpeg', 'Gardner', 'person_3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `country_state_city`
--
ALTER TABLE `country_state_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `country_state_city`
--
ALTER TABLE `country_state_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
