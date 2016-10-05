-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 05. Okt 2016 um 15:05
-- Server-Version: 10.1.16-MariaDB
-- PHP-Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Datenbank: `angular`
--
CREATE DATABASE IF NOT EXISTS `angular` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `angular`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`id`, `name`, `country`, `email`) VALUES
(1, 'Cronus Ltd.', 'Germany', 'info@cronus.ltd'),
(2, 'Hybis GmbH', 'Switzerland', 'info@hybis.ch'),
(3, 'Julius AG', 'Austria', 'info@juliusag.ag');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;