-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2023 at 01:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Task2`
--

-- --------------------------------------------------------

--
-- Table structure for table `Prodaja`
--

CREATE TABLE `Prodaja` (
  `Id` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `Cena` double NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `ProdavaciD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Prodaja`
--

INSERT INTO `Prodaja` (`Id`, `Datum`, `Cena`, `Kolicina`, `ProdavaciD`) VALUES
(2, '2023-03-14', 10000, 1, 2),
(3, '2023-01-29', 23000, 1, 4),
(4, '2023-03-21', 7000, 1, 3),
(5, '2022-12-20', 5400, 2, 5),
(6, '2023-01-23', 4000, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Prodavac`
--

CREATE TABLE `Prodavac` (
  `IdProdavca` int(11) NOT NULL,
  `Ime` varchar(20) NOT NULL,
  `Prezime` varchar(20) NOT NULL,
  `Automobil` varchar(20) NOT NULL,
  `Boja` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Prodavac`
--

INSERT INTO `Prodavac` (`IdProdavca`, `Ime`, `Prezime`, `Automobil`, `Boja`) VALUES
(1, 'Mina', 'Gmijovic', 'BMW', 'Crna'),
(2, 'Katarina', 'Simonovic', 'Fiat', 'Bela'),
(3, 'Andjela', 'Ljubenkovic', 'Skoda', 'Crvena'),
(4, 'Bosko', 'Josimovic', 'Mercedes', 'Crna'),
(5, 'Ognjen', 'Trifunovic', 'Citroen', 'Bela');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Prodaja`
--
ALTER TABLE `Prodaja`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `prodaja_ibfk_1` (`ProdavaciD`);

--
-- Indexes for table `Prodavac`
--
ALTER TABLE `Prodavac`
  ADD PRIMARY KEY (`IdProdavca`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Prodaja`
--
ALTER TABLE `Prodaja`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Prodavac`
--
ALTER TABLE `Prodavac`
  MODIFY `IdProdavca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Prodaja`
--
ALTER TABLE `Prodaja`
  ADD CONSTRAINT `prodaja_ibfk_1` FOREIGN KEY (`ProdavaciD`) REFERENCES `Prodavac` (`IdProdavca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
