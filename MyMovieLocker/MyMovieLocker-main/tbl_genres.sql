-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 06:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movielocker`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genres`
--

CREATE TABLE `tbl_genres` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_genres`
--

INSERT INTO `tbl_genres` (`id`, `name`, `description`, `date`) VALUES
(1, 'Comedy', 'Comedy is a genre of fiction that consists of discourses or works intended to be humorous or amusing by inducing laughter, especially in theatre, film, stand-up comedy, television, radio, books, or any other entertainment medium.', '2023-04-07 16:27:19'),
(2, 'Action', 'Action film is a film genre in which the protagonist is thrust into a series of events that typically involve violence and physical feats.', '2023-04-07 16:27:19'),
(3, 'Adventure', 'An adventure film is a form of adventure fiction, and is a genre of film. Subgenres of adventure films include swashbuckler films, pirate films, and survival films. ', '2023-04-07 16:27:19'),
(4, 'Drama', 'Drama is the specific mode of fiction represented in performance: a play, opera, mime, ballet, etc., performed in a theatre, or on radio or television.', '2023-04-07 16:27:19'),
(5, 'Fantasy', 'Fantasy films are films that belong to the fantasy genre with fantastic themes, usually magic, supernatural events, mythology, folklore, or exotic fantasy worlds. The genre is considered a form of speculative fiction alongside science fiction films and horror films, although the genres do overlap.', '2023-04-07 16:27:19'),
(6, 'Horror', 'Horror is a film genre that seeks to elicit fear or disgust in its audience for entertainment purposes. Horror films often explore dark subject matter and may deal with transgressive topics or themes. Broad elements include monsters, apocalyptic events, and religious or folk beliefs.', '2023-04-07 16:27:19'),
(7, 'Musical', 'Musical film is a film genre in which songs by the characters are interwoven into the narrative, sometimes accompanied by dancing. The songs usually advance the plot or develop the films characters, but in some cases, they serve merely as breaks in the storyline, often as elaborate production numbers.', '2023-04-07 16:27:19'),
(8, 'Mystery', 'Mystery is a fiction genre where the nature of an event, usually a murder or other crime, remains mysterious until the end of the story. Often within a closed circle of suspects, each suspect is usually provided with a credible motive and a reasonable opportunity for committing the crime', '2023-04-07 16:27:19'),
(9, 'Romance', 'Romance films, romance movies, or ship films involve romantic love stories recorded in visual media for broadcast in theatres or on television that focus on passion, emotion, and the affectionate romantic involvement of the main characters. Typically their journey through dating, courtship or marriage is featured.', '2023-04-07 16:27:19'),
(10, 'Science Fiction', 'Science fiction is a film genre that uses speculative, fictional science-based depictions of phenomena that are not fully accepted by mainstream science, such as extraterrestrial lifeforms, spacecraft, robots, cyborgs, dinosaurs, mutants, interstellar travel, time travel, or other technologies.', '2023-04-07 16:27:19'),
(11, 'Sports', 'A sports film is a film genre in which any particular sport plays a prominent role in the film\'s plot or acts as its central theme. It is a production in which a sport or a sports-related topic is prominently featured or is a focus of the plot.', '2023-04-07 16:27:19'),
(12, 'Thriller', 'Thriller is a genre of fiction with numerous, often overlapping, subgenres, including crime, horror and detective fiction. Thrillers are characterized and defined by the moods they elicit, giving their audiences heightened feelings of suspense, excitement, surprise, anticipation and anxiety.', '2023-04-07 16:27:19'),
(13, 'Western', 'The Western is a genre of fiction set in the American frontier and commonly associated with folk tales of the Western United States, particularly the Southwestern United States, as well as Northern Mexico and Western Canada.', '2023-04-07 16:27:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genres`
--
ALTER TABLE `tbl_genres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genres`
--
ALTER TABLE `tbl_genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
