-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2025 at 12:31 PM
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
-- Database: `nodejs-logins`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Email`, `Password`) VALUES
(1, 'minato', 'minato@email.com', '$2b$08$dd8P2mSjexwKSFnvuCsurebpkzDEyGJkCSaH1jWXfyS'),
(2, 'TikuBadmosh', 'TikuBadmosh@email.com', '$2b$08$t6hPaAHh581WIvzeWXtfCOYscRW5MP2k/FJxkJ498Qe'),
(3, 'bunty', 'bunty@email.com', '$2b$08$iGHc9EiiTvwzD4Y6UI2HlOhXDt1647lHcAv5lFherFZ'),
(4, 'rohan', 'rohan@email.com', '$2b$08$.YNPD46dJw/3N.NJtfK6e.5T8eAR3jm/okwNe0ORmqm'),
(5, 'hahaha', 'hahahehe@email.com', '$2b$08$kw4wh52e0jXzas2frocYJeJY4HfvaYcrJCbRvGVlm//'),
(6, 'prachi', 'prachi@email.com', '$2b$08$4FcUJWhA6M3coVYNGgJZAuXAO/w/pRiOXgWZK1MmkSp'),
(7, 'devika', 'devika@email.com', '$2b$08$ev/JVMZI2Uom8UfKakXqYeECakLrEgJvoZvdSCZGqxq'),
(8, '', '', '$2b$08$zR5uBu9RbGiaqGrRacdMUOj/Ng1O/i00YuGNUWBqLqw'),
(9, 'rahul', 'vgvaze@email', '$2b$08$VSAJRSMYvfTuZEMllMpARukEaRi6zvnMnYh1zdsrPz1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
