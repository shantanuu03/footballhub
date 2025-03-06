-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 06, 2025 at 08:10 AM
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
-- Database: `footballhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `coach_id` varchar(50) NOT NULL,
  `coach_name` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `contact_info` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`coach_id`, `coach_name`, `experience`, `contact_info`) VALUES
('1234', 'Sujit', '25', '9730405529'),
('3456', 'Sankalp', '10', '8451036341'),
('5678', 'Roshan', '20', '9975084778'),
('7890', 'Jay', '05', '9820448346'),
('9012', 'Dhiraj', '15', '7507504491');

-- --------------------------------------------------------

--
-- Table structure for table `coach_player_history`
--

CREATE TABLE `coach_player_history` (
  `coach_player_history_id` varchar(50) NOT NULL,
  `coach_id` varchar(50) NOT NULL,
  `player_id` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coach_player_history`
--

INSERT INTO `coach_player_history` (`coach_player_history_id`, `coach_id`, `player_id`, `start_date`, `end_date`) VALUES
('01', '1234', '12345', '2014-07-01', '2024-07-10'),
('02', '5678', '67890', '2018-07-18', '2024-07-10'),
('03', '9012', '65165', '2018-07-25', '2024-07-08'),
('04', '3456', '51656', '2017-07-12', '2024-07-03'),
('05', '7890', '646154', '2016-07-06', '2024-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `coach_team_history`
--

CREATE TABLE `coach_team_history` (
  `coach_team_history_id` varchar(50) NOT NULL,
  `coach_id` varchar(50) NOT NULL,
  `team_id` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coach_team_history`
--

INSERT INTO `coach_team_history` (`coach_team_history_id`, `coach_id`, `team_id`, `start_date`, `end_date`) VALUES
('01', '1234', 'PUFC', '2019-07-25', '2024-07-10'),
('02', '5678', 'CFCI', '2014-07-01', '2024-07-10'),
('03', '9012', 'PDFC', '2017-07-05', '2024-07-10'),
('04', '3456', 'MCFC', '2016-07-13', '2024-07-06'),
('05', '7890', 'VVFC', '2020-07-25', '2024-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

CREATE TABLE `goal` (
  `goal_id` varchar(50) NOT NULL,
  `match_id` varchar(50) NOT NULL,
  `player_id` varchar(50) NOT NULL,
  `against_team_id` varchar(50) NOT NULL,
  `goalkeeper_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goal`
--

INSERT INTO `goal` (`goal_id`, `match_id`, `player_id`, `against_team_id`, `goalkeeper_id`) VALUES
('12', '10', '12345', 'CFCI', '01'),
('34', '12', '51656', 'PUFC', '02'),
('56', '34', '62165', 'MCFC', '03'),
('78', '56', '67890', 'PDFC', '04'),
('90', '78', '65165', 'VVFC', '05');

-- --------------------------------------------------------

--
-- Table structure for table `goalkeeper`
--

CREATE TABLE `goalkeeper` (
  `goalkeeper_id` varchar(50) NOT NULL,
  `goalkeeper_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `current_team_id` varchar(50) NOT NULL,
  `contact_info` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goalkeeper`
--

INSERT INTO `goalkeeper` (`goalkeeper_id`, `goalkeeper_name`, `date_of_birth`, `current_team_id`, `contact_info`) VALUES
('01', 'Ritesh', '2014-08-05', 'PUFC', '9137771808'),
('02', 'Harsh', '2004-08-11', 'CFCI', '9029481232'),
('03', 'Samarth', '2006-05-09', 'MCFC', '9833511347'),
('04', 'Lucky', '2017-08-09', 'PDFC', '8601151536'),
('05', 'Krish', '2010-11-10', 'VVFC', '9198940098');

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE `league` (
  `league_id` varchar(50) NOT NULL,
  `league_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `league`
--

INSERT INTO `league` (`league_id`, `league_name`) VALUES
('DSO12', 'District Sports Office'),
('IL34', 'I-League'),
('ISL98', 'Indian Super League'),
('MDFA78', 'Mumbai District Football Association'),
('MFA12', 'Mumbai Football Association'),
('N01', 'National'),
('PDFA56', 'Palghar District Football Association'),
('S07', 'State'),
('SD21', 'Super Division');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `manager_id` varchar(50) NOT NULL,
  `manager_name` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `current_team_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager_id`, `manager_name`, `experience`, `current_team_id`) VALUES
('1234', 'Deepak', '10', 'PUFC'),
('3456', 'Pradeep', '05', 'VVFC'),
('5678', 'Ajit', '20', 'MCFC'),
('7890', 'Arya', '15', 'PDFC'),
('9012', 'Shyam', '25', 'CFCI');

-- --------------------------------------------------------

--
-- Table structure for table `manager_team_history`
--

CREATE TABLE `manager_team_history` (
  `manager_history_id` varchar(50) NOT NULL,
  `manager_id` varchar(50) NOT NULL,
  `team_id` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager_team_history`
--

INSERT INTO `manager_team_history` (`manager_history_id`, `manager_id`, `team_id`, `start_date`, `end_date`) VALUES
('01', '1234', 'PUFC', '2010-07-01', '2024-07-22'),
('02', '5678', 'CFCI', '2018-07-11', '2024-07-17'),
('03', '9012', 'PDFC', '2021-07-21', '2024-07-10'),
('04', '3456', 'MCFC', '2020-07-22', '2024-07-03'),
('05', '7890', 'VVFC', '2021-07-04', '2024-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `match_id` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `stadium_id` varchar(50) NOT NULL,
  `home_team_id` varchar(50) NOT NULL,
  `away_team_id` varchar(50) NOT NULL,
  `referee_id` varchar(50) NOT NULL,
  `match_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`match_id`, `date`, `stadium_id`, `home_team_id`, `away_team_id`, `referee_id`, `match_type`) VALUES
('10', '2024-07-02', 'VV78', 'VVFC', 'CFCI', '7890', '16'),
('12', '2024-07-01', 'ND34', 'CFCI', 'PUFC', '1234', '32'),
('34', '2024-07-03', 'AI12', 'PUFC', 'MCFC', '5678', 'Quarter'),
('56', '2024-07-10', 'MC78', 'MCFC', 'VVFC', '9012', 'Semi'),
('78', '2024-07-09', 'PD56', 'PUFC', 'CFCI', '3456', 'Final');

-- --------------------------------------------------------

--
-- Table structure for table `matches_played`
--

CREATE TABLE `matches_played` (
  `matches_played_id` varchar(50) NOT NULL,
  `player_id` varchar(50) NOT NULL,
  `match_id` varchar(50) NOT NULL,
  `against_team_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matches_played`
--

INSERT INTO `matches_played` (`matches_played_id`, `player_id`, `match_id`, `against_team_id`) VALUES
('01', '12345', '10', 'CFCI'),
('02', '67890', '12', 'MCFC');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` varchar(50) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `position_id` varchar(50) NOT NULL,
  `current_team_id` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `player_contact` varchar(10) NOT NULL,
  `player_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `player_name`, `position_id`, `current_team_id`, `date_of_birth`, `player_contact`, `player_address`) VALUES
('1111', 'demo', 'CF11', 'PUFC', '0000-00-00', '8888sdf', ' sdfs'),
('12345', 'Akshat', 'CF11', 'PUFC', '2004-03-25', '', ''),
('51656', 'Tushar', 'MF14', 'PDFC', '2004-07-12', '', ''),
('62165', 'Prashant', 'LW27', 'VVFC', '2004-07-14', '', ''),
('646154', 'Vedant', 'RW21', 'CFCI', '2004-07-14', '', ''),
('65165', 'Rohan', 'CB04', 'MCFC', '2004-05-01', '', ''),
('6519', 'kjebj', 'CF11', 'PUFC', '0000-00-00', '', ''),
('67890', 'Aayan', 'GK01', 'PUFC', '2003-06-14', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `player_position_history`
--

CREATE TABLE `player_position_history` (
  `position_history_id` varchar(50) NOT NULL,
  `player_id` varchar(50) NOT NULL,
  `match_id` varchar(50) NOT NULL,
  `position_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_position_history`
--

INSERT INTO `player_position_history` (`position_history_id`, `player_id`, `match_id`, `position_id`) VALUES
('01', '12345', '34', 'CF11'),
('02', '646154', '12', 'RW21'),
('03', '65165', '56', 'CB04');

-- --------------------------------------------------------

--
-- Table structure for table `player_team_history`
--

CREATE TABLE `player_team_history` (
  `player_history_id` varchar(50) NOT NULL,
  `player_id` varchar(50) NOT NULL,
  `team_id` varchar(50) NOT NULL,
  `coach_id` varchar(50) NOT NULL,
  `manager_id` varchar(50) NOT NULL,
  `against_team_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_team_history`
--

INSERT INTO `player_team_history` (`player_history_id`, `player_id`, `team_id`, `coach_id`, `manager_id`, `against_team_id`) VALUES
('01', '12345', 'PUFC', '5678', '1234', 'CFCI'),
('02', '67890', 'PUFC', '5678', '5678', 'MCFC'),
('03', '51656', 'PDFC', '7890', '9012', 'PUFC'),
('04', '646154', 'CFCI', '9012', '3456', 'MCFC'),
('05', '65165', 'MCFC', '1234', '7890', 'PDFC'),
('06', '6519', 'VVFC', '1234', '7890', 'MCFC');

-- --------------------------------------------------------

--
-- Table structure for table `points_table`
--

CREATE TABLE `points_table` (
  `table_id` varchar(50) NOT NULL,
  `team_id` varchar(50) NOT NULL,
  `league_id` varchar(50) NOT NULL,
  `matches_played` varchar(50) NOT NULL,
  `wins` varchar(50) NOT NULL,
  `draws` varchar(50) NOT NULL,
  `losses` varchar(50) NOT NULL,
  `goals_for` varchar(50) NOT NULL,
  `goals_against` varchar(50) NOT NULL,
  `goal_difference` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` varchar(50) NOT NULL,
  `position_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `position_name`) VALUES
('AMF01', 'Attacking Mid-Fielder'),
('CB04', 'Centre Back'),
('CF11', 'Centre Forward'),
('DMF02', 'Defending Mid-Fielder'),
('GK01', 'Goal Keeper'),
('LB07', 'Left Back'),
('LW27', 'Left Wing'),
('LWF05', 'Left Wing Forward'),
('MF14', 'Mid-Fielder'),
('RB06', 'Right Back'),
('RW21', 'Right Wing'),
('RWF03', 'Right Wing Forward'),
('SS08', 'Second Striker');

-- --------------------------------------------------------

--
-- Table structure for table `referee`
--

CREATE TABLE `referee` (
  `referee_id` varchar(50) NOT NULL,
  `referee_name` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referee`
--

INSERT INTO `referee` (`referee_id`, `referee_name`, `experience`) VALUES
('1234', 'Shubham', '10'),
('3456', 'Rakesh', '25'),
('5678', 'Ritesh', '05'),
('7890', 'Shanky', '20'),
('9012', 'Prakash', '20');

-- --------------------------------------------------------

--
-- Table structure for table `stadium`
--

CREATE TABLE `stadium` (
  `stadium_id` varchar(50) NOT NULL,
  `stadium_name` varchar(50) NOT NULL,
  `capacity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stadium`
--

INSERT INTO `stadium` (`stadium_id`, `stadium_name`, `capacity`) VALUES
('AI12', 'Air India Stadium', '20000'),
('MC78', 'Mumbai City Stadium', '25000'),
('ND34', 'Neville Dsouza Stadium', '15000'),
('PD56', 'Palghar District Stadium', '10000'),
('VV78', 'Vasai Virar Stadium', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` varchar(50) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `stadium_id` varchar(50) NOT NULL,
  `manager_id` varchar(50) NOT NULL,
  `league_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`, `stadium_id`, `manager_id`, `league_id`) VALUES
('CFCI', 'Community Football Committee India', 'ND34', '1234', 'IL34'),
('MCFC', 'Mumbai City Football Club', 'MC78', '5678', 'ISL98'),
('PDFC', 'Palghar District Football Association', 'PD56', '9012', 'PDFA56'),
('PUFC', 'Passion Up Football Club', 'AI12', '3456', 'MFA12'),
('VVFC', 'Vasai Virar Football Club', 'VV78', '7890', 'MDFA78');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `training_id` varchar(50) NOT NULL,
  `player_id` varchar(50) NOT NULL,
  `coach_id` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`training_id`, `player_id`, `coach_id`, `start_date`, `end_date`) VALUES
('12', '12345', '5678', '2014-07-01', '2024-07-22'),
('34', '67890', '1234', '2021-07-01', '2024-07-31'),
('56', '62165', '3456', '2022-07-05', '2024-07-01'),
('78', '65165', '7890', '2023-07-18', '2024-07-11'),
('90', '646154', '9012', '2017-07-05', '2024-07-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`coach_id`);

--
-- Indexes for table `coach_player_history`
--
ALTER TABLE `coach_player_history`
  ADD PRIMARY KEY (`coach_player_history_id`),
  ADD KEY `fk` (`coach_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `coach_team_history`
--
ALTER TABLE `coach_team_history`
  ADD PRIMARY KEY (`coach_team_history_id`),
  ADD KEY `fk1` (`coach_id`),
  ADD KEY `fk2` (`team_id`);

--
-- Indexes for table `goal`
--
ALTER TABLE `goal`
  ADD PRIMARY KEY (`goal_id`),
  ADD KEY `demo_2` (`player_id`),
  ADD KEY `Match ID` (`match_id`),
  ADD KEY `fk26` (`against_team_id`),
  ADD KEY `fk27` (`goalkeeper_id`);

--
-- Indexes for table `goalkeeper`
--
ALTER TABLE `goalkeeper`
  ADD PRIMARY KEY (`goalkeeper_id`),
  ADD KEY `fk25` (`current_team_id`);

--
-- Indexes for table `league`
--
ALTER TABLE `league`
  ADD PRIMARY KEY (`league_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager_id`),
  ADD KEY `fk3` (`current_team_id`);

--
-- Indexes for table `manager_team_history`
--
ALTER TABLE `manager_team_history`
  ADD PRIMARY KEY (`manager_history_id`),
  ADD KEY `fk4` (`manager_id`),
  ADD KEY `fk5` (`team_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`match_id`),
  ADD KEY `fk6` (`home_team_id`),
  ADD KEY `fk7` (`away_team_id`),
  ADD KEY `fk8` (`referee_id`),
  ADD KEY `fk9` (`stadium_id`);

--
-- Indexes for table `matches_played`
--
ALTER TABLE `matches_played`
  ADD PRIMARY KEY (`matches_played_id`),
  ADD KEY `fk10` (`match_id`),
  ADD KEY `fk11` (`player_id`),
  ADD KEY `fk12` (`against_team_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `CurrentTeam_ID` (`current_team_id`),
  ADD KEY `demo_1` (`position_id`);

--
-- Indexes for table `player_position_history`
--
ALTER TABLE `player_position_history`
  ADD PRIMARY KEY (`position_history_id`),
  ADD KEY `fk28` (`match_id`),
  ADD KEY `fk29` (`player_id`),
  ADD KEY `fk30` (`position_id`);

--
-- Indexes for table `player_team_history`
--
ALTER TABLE `player_team_history`
  ADD PRIMARY KEY (`player_history_id`),
  ADD KEY `fk13` (`player_id`),
  ADD KEY `fk14` (`coach_id`),
  ADD KEY `fk15` (`team_id`),
  ADD KEY `fk16` (`manager_id`),
  ADD KEY `fk23` (`against_team_id`);

--
-- Indexes for table `points_table`
--
ALTER TABLE `points_table`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `referee`
--
ALTER TABLE `referee`
  ADD PRIMARY KEY (`referee_id`);

--
-- Indexes for table `stadium`
--
ALTER TABLE `stadium`
  ADD PRIMARY KEY (`stadium_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `fk17` (`league_id`),
  ADD KEY `fk18` (`stadium_id`),
  ADD KEY `fk22` (`manager_id`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`training_id`),
  ADD KEY `fk19` (`player_id`),
  ADD KEY `fk20` (`coach_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coach_player_history`
--
ALTER TABLE `coach_player_history`
  ADD CONSTRAINT `coach_player_history_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `fk` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`coach_id`);

--
-- Constraints for table `coach_team_history`
--
ALTER TABLE `coach_team_history`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`coach_id`),
  ADD CONSTRAINT `fk2` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `goal`
--
ALTER TABLE `goal`
  ADD CONSTRAINT `demo_2` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `fk26` FOREIGN KEY (`against_team_id`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `fk27` FOREIGN KEY (`goalkeeper_id`) REFERENCES `goalkeeper` (`goalkeeper_id`),
  ADD CONSTRAINT `goal_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `matches` (`Match_ID`);

--
-- Constraints for table `goalkeeper`
--
ALTER TABLE `goalkeeper`
  ADD CONSTRAINT `fk25` FOREIGN KEY (`current_team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`current_team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `manager_team_history`
--
ALTER TABLE `manager_team_history`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`),
  ADD CONSTRAINT `fk5` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `fk6` FOREIGN KEY (`home_team_id`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `fk7` FOREIGN KEY (`away_team_id`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `fk8` FOREIGN KEY (`referee_id`) REFERENCES `referee` (`referee_id`),
  ADD CONSTRAINT `fk9` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`stadium_id`);

--
-- Constraints for table `matches_played`
--
ALTER TABLE `matches_played`
  ADD CONSTRAINT `fk10` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`),
  ADD CONSTRAINT `fk11` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `fk12` FOREIGN KEY (`against_team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `demo_1` FOREIGN KEY (`position_id`) REFERENCES `position` (`Position_ID`),
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`current_team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `player_position_history`
--
ALTER TABLE `player_position_history`
  ADD CONSTRAINT `fk28` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`),
  ADD CONSTRAINT `fk29` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `fk30` FOREIGN KEY (`position_id`) REFERENCES `position` (`Position_ID`);

--
-- Constraints for table `player_team_history`
--
ALTER TABLE `player_team_history`
  ADD CONSTRAINT `fk13` FOREIGN KEY (`player_id`) REFERENCES `player` (`Player_ID`),
  ADD CONSTRAINT `fk14` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`coach_id`),
  ADD CONSTRAINT `fk15` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `fk16` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`),
  ADD CONSTRAINT `fk23` FOREIGN KEY (`against_team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `fk17` FOREIGN KEY (`league_id`) REFERENCES `league` (`league_id`),
  ADD CONSTRAINT `fk18` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`stadium_id`),
  ADD CONSTRAINT `fk22` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`);

--
-- Constraints for table `training`
--
ALTER TABLE `training`
  ADD CONSTRAINT `fk19` FOREIGN KEY (`player_id`) REFERENCES `player` (`Player_ID`),
  ADD CONSTRAINT `fk20` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`coach_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
