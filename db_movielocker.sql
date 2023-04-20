-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 12:03 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locker`
--

CREATE TABLE `tbl_locker` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `user id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movie key` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `release date` year(4) NOT NULL,
  `director` text NOT NULL,
  `genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie key`, `name`, `description`, `release date`, `director`, `genre`) VALUES
(1, 'Se7en', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', 1995, 'David Fincher', 8),
(2, 'The Game', 'After a wealthy San Francisco banker is given an opportunity to participate in a mysterious game, his life is turned upside down as he begins to question if it might really be a concealed conspiracy to destroy him.', 1997, 'David Fincher', 8),
(3, 'Minority Report', 'In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', 2002, 'Steven Spielberg', 8),
(4, 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', 2010, 'Christopher Nolan', 8),
(5, 'The Bourne Identity', 'A man is picked up by a fishing boat, bullet-riddled and suffering from amnesia, before racing to elude assassins and attempting to regain his memory.', 2002, 'Doug Liman', 8),
(6, 'Eyes Wide Shut', 'A Manhattan doctor embarks on a bizarre, night-long odyssey after his wife\'s admission of unfulfilled longing.', 1999, 'Stanley Kubrick', 8),
(7, 'Rope', 'Two men attempt to prove they committed the perfect crime by hosting a dinner party after strangling their former classmate to death.', 1948, 'Alfred Hitchcock', 8),
(8, 'The Lady from Shanghai', 'Fascinated by gorgeous Mrs. Bannister, seaman Michael O\'Hara joins a bizarre yachting cruise, and ends up mired in a complex murder plot.', 1947, 'Orson Welles', 8),
(9, 'Vertigo', 'A former San Francisco police detective juggles wrestling with his personal demons and becoming obsessed with the hauntingly beautiful woman he has been hired to trail, who may be deeply disturbed.', 1958, 'Alfred Hitchcock', 8),
(10, 'The Third Man', 'Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.', 1949, 'Carol Reed', 8),
(11, 'The Bourne Supremacy', 'When Jason Bourne is framed for a CIA operation gone awry, he is forced to resume his former life as a trained assassin to survive.', 2004, 'Paul Greengrass', 8),
(12, 'The Silence of the Lambs', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 1991, 'Jonathan Demme', 8),
(13, 'The Bourne Ultimatum', 'Jason Bourne dodges a ruthless C.I.A. official and his Agents from a new assassination program while searching for the origins of his life as a trained killer.', 2007, 'Paul Greengrass', 8),
(14, 'Contact', 'Dr. Ellie Arroway, after years of searching, finds conclusive radio proof of extraterrestrial intelligence, sending plans for a mysterious machine.', 1997, 'Robert Zemeckis', 8),
(15, 'The Conversation', 'A paranoid, secretive surveillance expert has a crisis of conscience when he suspects that the couple he is spying on will be murdered.', 1974, 'Francis Ford Coppola', 8),
(16, 'The Lives of Others', 'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.', 2006, 'Florian Henckel von Donnersmarck', 8),
(17, 'Oldboy', 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.', 2003, 'Park Chan-wook', 8),
(18, 'Angel Heart', 'A private investigator is hired by a man who calls himself Louis Cyphre to track down a singer named Johnny Favorite. But the investigation takes an unexpected and somber turn.', 1987, 'Alan Parker', 8),
(19, 'The Sixth Sense', 'A frightened, withdrawn Philadelphia boy who communicates with spirits seeks the help of a disheartened child psychologist.', 1999, 'M. Night Shyamalan', 8),
(20, 'Apocalypse Now', 'A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.', 1979, 'Francis Ford Coppola', 8),
(21, 'Murder on the Orient Express', 'In December 1935, when his transcontinental luxury train is stranded by deep snow, detective Hercule Poirot is called on to solve a murder that occurred in his car the night before, with a multitude of suspects.', 1974, 'Sidney Lumet', 8),
(22, 'Chinatown', 'A private detective hired to expose an adulterer in 1930s Los Angeles finds himself caught up in a web of deceit, corruption, and murder.', 1974, 'Roman Polanski', 8),
(23, 'Rashomon', 'The rape of a bride and the murder of her samurai husband are recalled from the perspectives of a bandit, the bride, the samurai\'s ghost and a woodcutter.', 1950, 'Akira Kurosawa', 8),
(24, 'In a Lonely Place', 'A potentially violent screenwriter is a murder suspect until his lovely neighbor clears him. However, she soon starts to have her doubts.', 1950, 'Nicholas Ray', 8),
(25, 'The Maltese Falcon', 'San Francisco private detective Sam Spade takes on a case that involves him with three eccentric criminals, a gorgeous liar and their quest for a priceless statuette, with the stakes rising after his partner is murdered.', 1941, 'John Huston', 8),
(26, 'The Wrong Man', 'In 1953, an innocent man named Christopher Emanuel \'Manny\' Balestrero is arrested after being mistaken for an armed robber.', 1956, 'Alfred Hitchcock', 8),
(27, 'High and Low', 'An executive of a Yokohama shoe company becomes a victim of extortion when his chauffeur\'s son is kidnapped by mistake and held for ransom.', 1963, 'Akira Kurosawa', 8),
(28, 'Psycho', 'A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run and checks into a remote motel run by a young man under the domination of his mother.', 1960, 'Alfred Hitchcock', 8),
(29, 'Diabolique', 'The wife and mistress of a loathed school principal plan to murder him with what they believe is the perfect alibi.', 1955, 'Henri-Georges Clouzot', 8),
(30, 'Witness for the Prosecution', 'A veteran British barrister must defend his client in a murder trial that has surprise after surprise.', 1957, 'Billy Wilder', 8),
(31, 'Blade Runner 2049', 'Young Blade Runner K\'s discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who\'s been missing for thirty years.', 2017, 'Denis Villeneuve', 8),
(32, 'Shutter Island', 'In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.', 2010, 'Martin Scorsese', 8),
(33, 'Prisoners', 'When Keller Dover\'s daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.', 2013, 'Denis Villeneuve', 8),
(34, 'Tinker Tailor Soldier Spy', 'In the bleak days of the Cold War, espionage veteran George Smiley is forced from semi-retirement to uncover a Soviet Agent within MI6.', 2011, 'Bong Joon Ho', 8),
(35, 'Memories of Murder', 'In a small Korean province in 1986, two detectives struggle with the case of multiple young women being found raped and murdered by an unknown culprit.', 2003, 'John Huston', 8),
(36, 'Gone Girl', 'With his wife\'s disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it\'s suspected that he may not be innocent.', 2014, 'David Fincher', 8),
(37, 'Sicario', 'An idealistic FBI agent is enlisted by a government task force to aid in the escalating war against drugs at the border area between the U.S. and Mexico.', 2015, 'Denis Villeneuve', 8),
(38, 'Incendies', 'Twins journey to the Middle East to discover their family history and fulfill their mother\'s last wishes.', 2010, 'Denis Villeneuve', 8),
(39, 'Marshland', 'Two cops lost in the deep south of Spain. One serial killer to catch. A lot of secrets and lies to disclose.', 2014, 'Alberto Rodríguez', 8),
(40, 'The Treatment', 'A police inspector haunted by the childhood abduction of his brother becomes obsessed with the disturbing case of a dangerous serial kidnapper', 2014, 'Hans Herbots', 8),
(41, 'Arrival', 'A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecraft appear around the world.', 2016, 'Denis Villeneuve', 8),
(42, 'The Orphanage', 'A woman brings her family back to her childhood home, which used to be an orphanage for handicapped children. Before long, her son starts to communicate with an invisible new friend.', 2007, 'J.A. Bayona', 8),
(43, 'The Witch', 'A family in 1630s New England is torn apart by the forces of witchcraft, black magic and possession.', 2015, 'Robert Eggers', 8),
(44, 'Mother', 'A mother desperately searches for the killer who framed her son for a girl\'s horrific murder.', 2009, 'Bong Joon Ho', 8),
(45, 'Atonement', 'Thirteen-year-old fledgling writer Briony Tallis irrevocably changes the course of several lives when she accuses her older sister\'s lover of a crime he did not commit.', 2007, 'Joe Wright', 8),
(46, 'North by Northwest ', 'A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies, and falls for a woman whose loyalties he begins to doubt.', 1959, 'Alfred Hitchcock', 8),
(47, 'In the Heat of the Night', 'A black Philadelphia police detective is mistakenly suspected of a local murder while passing through a racially hostile Mississippi town, and after being cleared is reluctantly asked by the police chief to investigate the case.', 1967, 'Norman Jewison', 8),
(48, 'Dial M for Murder', 'A former tennis star arranges the murder of his adulterous wife.', 1954, 'Alfred Hitchcock', 8),
(49, 'The Night of the Generals', 'In 1942, a Polish prostitute and German Agent is murdered in Warsaw. Suspicion falls on three Generals, and Major Grau of German Intelligence seeks justice which ends up taking decades.', 1954, 'Anatole Litvak', 8),
(50, 'Audition', 'A widower takes an offer to screen girls at a special audition, arranged for him by a friend to find him a new wife. The one he fancies is not who she appears to be after all.', 1999, 'Takashi Miike', 8),
(51, 'The Hateful Eight', 'In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.', 2015, 'Quentin Tarantino', 8),
(52, 'Presumed Innocent', 'As a lawyer investigates the murder of a colleague, he finds himself more connected to the crime than anyone else.', 1990, 'Alan J. Pakula', 8),
(53, 'Inside Man', 'A police detective, a bank robber, and a high-power broker enter high-stakes negotiations after the criminal\'s brilliant heist spirals into a hostage situation.', 2006, 'Spike Lee', 8),
(54, 'Strangers on a Train', 'A psychopath forces a tennis star to comply with his theory that two strangers can get away with murder.', 1951, 'Alfred Hitchcock', 8),
(55, 'The White Ribbon', 'Strange events happen in a small village in the north of Germany during the years before World War I, which seem to be ritual punishment. Who is responsible?', 2009, 'Michael Haneke', 8),
(56, 'The Thing', 'A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims.', 1982, 'John Carpenter', 8),
(57, 'The Prestige', 'After a tragic accident, two stage magicians in 1890s London engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.', 2006, 'Christopher Nolan', 8),
(58, 'Unbreakable', 'A man learns something extraordinary about himself after a devastating accident.', 2000, 'M. Night Shyamalan', 8),
(59, 'The Fugitive', 'Dr. Richard Kimble, unjustly accused of murdering his wife, must find the real killer while being the target of a nationwide manhunt led by a seasoned U.S. Marshal.', 1993, 'Anatole Litvak', 8),
(60, 'Mystic River', 'The lives of three men who were childhood friends are shattered when one of them has a family tragedy.', 2003, 'Clint Eastwood', 8),
(61, 'Blue Velvet', 'The discovery of a severed human ear found in a field leads a young man on an investigation related to a beautiful, mysterious nightclub singer and a group of psychopathic criminals who have kidnapped her child.', 1986, 'David Lynch', 8),
(62, 'Anatomy of a Murder', 'An upstate Michigan lawyer defends a soldier who claims he killed an innkeeper due to temporary insanity after the victim raped his wife. What is the truth, and will he win his case?', 1959, 'Otto Preminger', 8),
(63, '8MM', 'A private investigator is hired to discover if a \"snuff film\" is authentic or not.', 1999, 'Joel Schumacher', 8),
(64, 'Don\'t Look Now', 'A married couple grieving the recent death of their young daughter are in Venice when they encounter two elderly sisters, one of whom is psychic and brings a warning from beyond.', 1973, 'Nicolas Roeg', 8),
(65, 'Rear Window', 'A wheelchair-bound photographer spies on his neighbors from his Greenwich Village courtyard apartment window, and becomes convinced one of them has committed murder, despite the skepticism of his fashion-model girlfriend.', 1954, 'Alfred Hitchcock', 8),
(66, 'Rebecca', 'A self-conscious woman juggles adjusting to her new role as an aristocrat\'s wife and avoiding being intimidated by his first wife\'s spectral presence.', 1940, 'Alfred Hitchcock', 8),
(67, 'Mulholland Drive', 'After a car wreck on the winding Mulholland Drive renders a woman amnesiac, she and a perky Hollywood-hopeful search for clues and answers across Los Angeles in a twisting venture beyond dreams and reality.', 2001, 'David Lynch', 8),
(68, 'Moon', 'Astronaut Sam Bell has a quintessentially personal encounter toward the end of his three-year stint on the Moon, where he, working alongside his computer, GERTY, sends back to Earth parcels of a resource that has helped diminish our planet\'s power problems.', 2009, 'Duncan Jones', 8),
(69, 'Under the Skin', 'A mysterious young woman seduces lonely men in the evening hours in Scotland. However, events lead her to begin a process of self-discovery.', 2013, 'Jonathan Glazer', 8),
(70, 'Ex Machina', 'A young programmer is selected to participate in a ground-breaking experiment in synthetic intelligence by evaluating the human qualities of a highly advanced humanoid A.I.', 2014, 'Alex Garland', 8),
(71, 'The Others', 'A woman who lives in her darkened old family house with her two photosensitive children becomes convinced that the home is haunted.', 2001, 'Alejandro Amenábar', 8),
(72, 'Enemy', 'A man seeks out his exact look-alike after spotting him in a movie.', 2013, 'Denis Villeneuve', 8),
(73, 'Cure', 'A frustrated detective deals with the case of several gruesome murders committed by people who have no recollection of what they\'ve done.', 1997, 'Kiyoshi Kurosawa', 8),
(74, 'The Girl with the Dragon Tattoo', 'Journalist Mikael Blomkvist is aided in his search for a woman who has been missing for 40 years by young computer hacker Lisbeth Salander.', 2011, 'David Fincher', 8),
(75, 'Zodiac', 'Between 1968 and 1983, a San Francisco cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer, an unidentified individual who terrorizes Northern California with a killing spree.', 2007, 'David Fincher', 8),
(76, 'Rosemary\'s Baby', 'A young couple trying for a baby moves into an aging, ornate apartment building on Central Park West, where they find themselves surrounded by peculiar neighbors.', 1968, 'Roman Polanski', 8),
(77, 'Open Your Eyes', 'A very handsome man finds the love of his life, but he suffers an accident and needs to have his face rebuilt by surgery after it is severely disfigured.', 1997, 'Alejandro Amenábar', 8),
(78, 'Caché (Hidden)', 'A married couple is terrorized by a series of surveillance videotapes left on their front porch.', 2005, 'Michael Haneke', 8),
(79, 'Tell No One', 'An accidental discovery near a doctor\'s estate stirs up some painful memories eight years after his wife\'s hideous murder, and now, things are bound to take a turn for the unexpected. Does the good doctor know more than he\'s letting on?', 2006, 'Guillaume Canet', 8),
(80, 'Memento', 'A man with short-term memory loss attempts to track down his wife\'s murderer.', 2000, 'Christopher Nolan', 8),
(81, 'The Vanishing', 'Rex and Saskia, a young couple in love, are on vacation. They stop at a busy service station and Saskia is abducted. After three years and no sign of Saskia, Rex begins receiving letters from the abductor.', 1988, 'George Sluizer', 8),
(82, 'Suddenly, Last Summer', 'A surgeon is assigned the case of a young woman whose aunt wants her lobotomized to cover up a family secret.', 1959, 'Joseph L. Mankiewicz', 8),
(83, 'Sleuth', 'A man who loves games and theater invites his wife\'s lover to meet him, setting up a battle of wits with potentially deadly results.', 1972, 'Joseph L. Mankiewicz', 8),
(84, 'Three Days of the Condor', 'A bookish CIA researcher in Manhattan finds all his co-workers dead, and must outwit those responsible until he figures out who he can really trust.', 1975, 'Sydney Pollack', 8),
(85, 'Klute', 'A small-town detective searching for a missing man has only one lead: a connection with a New York prostitute.', 1971, 'Alan J. Pakula', 8),
(86, 'All the President\'s Men', '\"The Washington Post\" reporters Bob Woodward and Carl Bernstein uncover the details of the Watergate scandal that leads to President Richard Nixon\'s resignation.', 1976, 'Alan J. Pakula', 8),
(87, 'Basic Instinct', 'A violent police detective investigates a brutal murder that might involve a manipulative and seductive novelist.', 1992, 'Paul Verhoeven', 8),
(88, 'Personal Shopper', 'A personal shopper in Paris refuses to leave the city until she makes contact with her twin brother who previously died there. Her life becomes more complicated when a mysterious person contacts her via text message.', 2016, 'Olivier Assayas', 8),
(89, 'Scream', 'A year after the murder of her mother, a teenage girl is terrorized by a masked killer who targets her and her friends by using scary movies as part of a deadly game.', 1996, 'Wes Craven', 8),
(90, 'The Lighthouse', 'Two lighthouse keepers try to maintain their sanity while living on a remote and mysterious New England island in the 1890s.', 2019, 'Robert Eggers', 8),
(91, 'Seconds', 'An unhappy middle-aged banker agrees to a procedure that will fake his death and give him a completely new look and identity - one that comes with its own price.', 1966, 'John Frankenheimer', 8),
(92, 'Jacob\'s Ladder', 'Mourning his dead child, a haunted Vietnam War veteran attempts to uncover his past while suffering from a severe case of dissociation. To do so, he must decipher reality and life from his own dreams, delusions, and perceptions of death.', 1990, 'Adrian Lyne', 8),
(93, 'Dark City', 'A man struggles with memories of his past, which include a wife he cannot remember and a nightmarish world no one else ever seems to wake up from.', 1998, 'Alex Proyas', 8),
(94, 'Donnie Darko', 'After narrowly escaping a bizarre accident, a troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes.', 2001, 'Richard Kelly', 8),
(95, 'The Invisible Man', 'When Cecilia\'s abusive ex takes his own life and leaves her his fortune, she suspects his death was a hoax. As a series of coincidences turn lethal, Cecilia works to prove that she is being hunted by someone nobody can see.', 2020, 'Leigh Whannell', 8),
(96, 'Thelma', 'A confused religious girl tries to deny her feelings for a female friend who\'s in love with her. This causes her suppressed subconsciously-controlled psychokinetic powers to reemerge with devastating results.', 2017, 'Joachim Trier', 8),
(97, 'Upstream Color', 'A man and woman are drawn together, entangled in the life cycle of an ageless organism. Identity becomes an illusion as they struggle to assemble the loose fragments of wrecked lives.', 2013, 'Shane Carruth', 8),
(98, 'The Killing of a Sacred Deer', 'Steven, a charismatic surgeon, is forced to make an unthinkable sacrifice after his life starts to fall apart, when the behavior of a teenage boy he has taken under his wing turns sinister.', 2017, 'Yorgos Lanthimos', 8),
(99, 'Identity', 'Stranded at a desolate Nevada motel during a nasty rain storm, ten strangers become acquainted with each other when they realize that they\'re being killed off one by one.', 2003, 'James Mangold', 8),
(100, 'Black Swan', 'A committed dancer struggles to maintain her sanity after winning the lead role in a production of Tchaikovsky\'s \"Swan Lake\".', 2010, 'Darren Aronofsky', 8),
(101, 'The Bridges of Madison County', 'Photographer Robert Kincaid wanders into the life of housewife Francesca Johnson for four days in the 1960s.', 1995, 'Clint Eastwood', 9),
(102, 'Jerry Maguire', 'When a sports agent has a moral epiphany and is fired for expressing it, he decides to put his new philosophy to the test as an independent agent with the only athlete who stays with him and his former colleague.', 1996, 'Cameron Crowe', 9),
(103, 'A Room With a View', 'Lucy Honeychurch (Helena Bonham-Carter) shares a brief romance with George Emerson in Florence. Yet as she tries to move on with her life and look for marriage elsewhere, can she truly forget the events of that summer?', 1985, 'James Ivory', 9),
(104, 'From Here to Eternity', 'At a U.S. Army base in 1941 Hawaii, a private is cruelly punished for not boxing on his unit\'s team, while his commanding officer\'s wife and top aide begin a tentative affair.', 1953, 'Fred Zinnemann', 9),
(105, 'Monster\'s Ball', 'After a family tragedy, a racist prison guard re-examines his attitudes while falling in love with the African-American wife of the last prisoner he executed.', 2001, 'Marc Forster', 9),
(106, 'Witness', 'When a young Amish boy is sole witness to a murder while visiting Philadelphia with his mother, police detective John Book tries to protect the boy until an attempt on Book\'s life forces him into hiding in Amish country.', 1985, 'Peter Weir', 9),
(107, 'Grease', 'Good girl Sandy Olsson and greaser Danny Zuko fell in love over the summer. When they unexpectedly discover they\'re now in the same high school, will they be able to rekindle their romance?', 1978, 'Randal Kleiser', 9),
(108, 'Amélie ', 'Amélie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.', 2001, 'Jean-Pierre Jeunet', 9),
(109, 'Love Actually', 'Follows the lives of eight very different couples in dealing with their love lives in various loosely interrelated tales all set during a frantic month before Christmas in London, England.', 2003, 'Richard Curtis', 9),
(110, 'In the Mood For Love', 'Two neighbors form a strong bond after both suspect extramarital activities of their spouses. However, they agree to keep their bond platonic so as not to commit similar wrongs.', 2000, 'Kar-Wai Wong', 9),
(111, 'An American In Paris', 'Three friends struggle to find work in Paris. Things become more complicated when two of them fall in love with the same woman.', 1951, 'Vincente Minnelli', 9),
(112, 'On Golden Pond', 'Norman is a curmudgeon with an estranged relationship with his daughter Chelsea. At Golden Pond, he and his wife nevertheless agree to care for Billy, the son of Chelsea\'s new boyfriend, and a most unexpected relationship blooms.', 1981, 'Mark Rydell', 9),
(113, 'Gone With the Wind', 'American motion picture classic in which a manipulative woman and a roguish man conduct a turbulent romance during the Civil War and Reconstruction periods.', 1939, 'Victor Fleming', 9),
(114, 'The Apartment', 'A Manhattan insurance clerk tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.', 1960, 'Billy Wilder', 9),
(115, 'The Shape of Watert', 'At a top secret research facility in the 1960s, a lonely janitor forms a unique relationship with an amphibious creature that is being held in captivity.', 2017, 'Guillermo del Toro', 9),
(116, 'La La Land', 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.', 2016, 'Damien Chazelle', 9),
(117, 'Guess Who\'s Coming to Dinner?', 'A couple\'s attitudes are challenged when their daughter introduces them to her African-American fiancé.', 1967, 'Stanley Kramer', 9),
(118, 'Atonement', 'Thirteen-year-old fledgling writer Briony Tallis irrevocably changes the course of several lives when she accuses her older sister\'s lover of a crime he did not commit.', 2007, 'Joe Wright', 9),
(119, 'Brooklyn', 'An Irish immigrant lands in 1950s Brooklyn, where she quickly falls into a romance with a local. When her past catches up with her, however, she must choose between two countries and the lives that exist within.', 2015, 'John Crowley', 9),
(120, 'The English Patient', 'At the close of World War II, a young nurse tends to a badly-burned plane crash victim. His past is shown in flashbacks, revealing an involvement in a fateful love affair.', 1996, 'Anthony Minghella', 9),
(121, 'Phantom Thread', 'Set in 1950s London, Reynolds Woodcock is a renowned dressmaker whose fastidious life is disrupted by a young, strong-willed woman, Alma, who becomes his muse and lover.', 2017, 'Paul Thomas Anderson', 9),
(122, 'The African Queen', 'In WWI East Africa, a gin-swilling Canadian riverboat captain is persuaded by a strait-laced English missionary to undertake a trip up a treacherous river and use his boat to attack a German gunship.', 1951, 'John Huston', 9),
(124, 'Shakespeare in Love', 'The world\'s greatest ever playwright, William Shakespeare, is young, out of ideas and short of cash, but meets his ideal woman and is inspired to write one of his most famous plays.', 1998, 'John Madden', 9),
(125, 'Romeo & Juliet', 'When two young members of feuding families meet, forbidden love ensues.', 1968, 'Franco Zeffirelli', 9),
(126, 'Ninotchka', 'A stern Soviet woman sent to Paris to supervise the sale of jewels seized from Russian nobles finds herself attracted to a man who represents everything she is supposed to detest.', 1939, 'Ernst Lubitsch', 9),
(127, 'Bonnie & Clyde', 'Bored waitress Bonnie Parker falls in love with an ex-con named Clyde Barrow and together they start a violent crime spree through the country, stealing cars and robbing banks.', 1967, 'Arthur Penn', 9),
(128, 'His Girl Friday', 'A newspaper editor uses every trick in the book to keep his ace reporter ex-wife from remarrying.', 1940, 'Howard Hawks', 9),
(129, 'Manhattan', 'The life of a divorced television writer dating a teenage girl is further complicated when he falls in love with his best friend\'s mistress.', 1979, 'Woody Allen', 9),
(130, 'King Kong', 'A film crew goes to a tropical island for a location shoot, where they capture a colossal ape who takes a shine to their blonde starlet, and bring him back to New York City.', 1933, 'Merian C. Cooper', 9),
(131, 'Double Indemnity', 'A Los Angeles insurance representative lets an alluring housewife seduce him into a scheme of insurance fraud and murder that arouses the suspicion of his colleague, an insurance investigator.', 1944, 'Billy Wilder', 9),
(132, 'Sense & Sensibility', 'Rich Mr. Dashwood dies, leaving his second wife and her three daughters poor by the rules of inheritance. The two eldest daughters are the title opposites.', 1995, 'Ang Lee', 9),
(133, 'The Shop Around the Corner', 'Two employees at a gift shop can barely stand each other, without realizing that they are falling in love through the post as each other\'s anonymous pen pal.', 1940, 'Ernst Lubitsch', 9),
(134, 'Harold and Mauder', 'Young, rich, and obsessed with death, Harold finds himself changed forever when he meets lively septuagenarian Maude at a funeral.', 1971, 'Hal Ashby', 9),
(135, 'An Affair to Remember', 'A couple falls in love and agrees to meet in six months at the Empire State Building - but will it happen?', 1957, 'Leo McCarey', 9),
(136, 'An Officer and a Gentleman', 'A young man must complete his work at a Navy Officer Candidate School to become an aviator, with the help of a tough Gunnery Sergeant and his new girlfriend.', 1982, 'Taylor Hackford', 9),
(137, 'Moulin Rouge!', 'A poor Bohemian poet in 1890s Paris falls for a beautiful courtesan and nightclub star coveted by a jealous duke.', 2001, 'Baz Luhrmann', 9),
(138, 'Ghost', 'After a young man is murdered, his spirit stays behind to warn his lover of impending danger, with the help of a reluctant psychic.', 1990, 'Jerry Zucker', 9),
(139, 'Breakfast at Tiffany’s', 'A young New York socialite becomes interested in a young man who has moved into her apartment building, but her past threatens to get in the way.', 1961, 'Blake Edwards', 9),
(140, 'Moulin Rouge!', 'A poor Bohemian poet in 1890s Paris falls for a beautiful courtesan and nightclub star coveted by a jealous duke.', 2001, 'Baz Luhrmann', 9),
(141, 'Ghost', 'After a young man is murdered, his spirit stays behind to warn his lover of impending danger, with the help of a reluctant psychic.', 1990, 'Jerry Zucker', 9),
(142, 'Breakfast at Tiffany’s', 'A young New York socialite becomes interested in a young man who has moved into her apartment building, but her past threatens to get in the way.', 1961, 'Blake Edwards', 9),
(143, 'Dirty Dancing', 'Spending the summer at a Catskills resort with her family, Frances \"Baby\" Houseman falls in love with the camp\'s dance instructor, Johnny Castle.', 1987, 'Emile Ardolino', 9),
(144, 'Sleepless in Seattle', 'A recently widowed man\'s son calls a radio talk-show in an attempt to find his father a partner.', 1993, 'Nora Ephron', 9),
(145, 'The Way We Were', 'During pre-WWII McCarthyism, a diametrically opposed couple come together only to find out that genuine friendship and physical attraction is not enough to overcome fundamental societal beliefs.', 1973, 'Sydney Pollack', 9),
(146, 'Carol', 'An aspiring photographer develops an intimate relationship with an older woman in 1950s New York.', 2015, 'Todd Haynes', 9),
(147, 'A Star is Born', 'A musician helps a young singer find fame as age and alcoholism send his own career into a downward spiral.', 2018, 'Bradley Cooper', 9),
(148, 'A Star is Born', 'A film star helps a young singer and actress find fame, even as age and alcoholism send his own career on a downward spiral.', 1954, 'George Cukor', 9),
(149, 'The Lady Eve', 'A trio of classy card sharks targets a socially awkward brewery heir, until one of them falls in love with him.', 1941, 'Preston Sturges', 9),
(150, 'The Philadelphia Story', 'When a rich woman\'s ex-husband and a tabloid-type reporter turn up just before her planned remarriage, she begins to learn the truth about herself.', 1940, 'George Cukor', 9),
(151, 'Written on the Wind', 'Alcoholic playboy Kyle Hadley marries the woman secretly loved by his poor but hard-working best friend, who in turn is pursued by Kyle\'s nymphomaniac sister.', 1956, 'Douglas Sirk', 9),
(152, 'Annie Hall', 'Alvy Singer, a divorced Jewish comedian, reflects on his relationship with ex-lover Annie Hall, an aspiring nightclub singer, which ended abruptly just like his previous marriages.', 1977, 'Woody Allen', 9),
(153, 'Brief Encounter', 'Meeting a stranger in a railway station, a woman is tempted to cheat on her husband.S', 1945, 'David Lean', 9),
(154, 'Trouble in Paradise', 'A gentleman thief and a lady pickpocket join forces to con a beautiful perfume company owner. Romantic entanglements and jealousies confuse the scheme.', 1932, 'Ernst Lubitsch', 9),
(155, 'The Graduate', 'A disillusioned college graduate finds himself torn between his older lover and her daughter.', 1967, 'Mike Nichols', 9),
(156, 'Pretty Woman', 'A man in a legal but hurtful business needs an escort for some social events, and hires a beautiful prostitute he meets... only to fall in love.', 1990, 'Garry Marshall', 9),
(157, 'Love Story', 'A boy and a girl from different backgrounds fall in love regardless of their upbringing - and then tragedy strikes.', 1970, 'Arthur Hiller', 9),
(158, 'The Princess Bride', 'A bedridden boy\'s grandfather reads him the story of a farmboy-turned-pirate who encounters numerous obstacles, enemies and allies in his quest to be reunited with his true love.', 1987, 'Rob Reiner', 9),
(159, 'The Sound of Music', 'A young novice is sent by her convent in 1930s Austria to become a governess to the seven children of a widowed naval officer.', 1965, 'Robert Wise', 9),
(160, 'It Happened One Night', 'A renegade reporter trailing a young runaway heiress for a big story joins her on a bus heading from Florida to New York, and they end up stuck with each other when the bus leaves them behind at one of the stops.', 1934, 'Frank Capra', 9),
(161, 'Notorious', 'The daughter of a convicted Nazi spy is asked by American agents to gather information on a ring of Nazi scientists in South America. How far will she have to go to ingratiate herself with them?', 1946, 'Alfred Hitchcock', 9),
(162, 'My Fair Lady', 'In 1910s London, snobbish phonetics professor Henry Higgins agrees to a wager that he can make crude flower girl, Eliza Doolittle, presentable in high society', 1964, 'George Cukor', 9),
(163, 'Moonstruck', 'Loretta Castorini, a bookkeeper from Brooklyn, New York, finds herself in a difficult situation when she falls for the brother of the man she has agreed to marry.', 1987, 'Norman Jewison', 9),
(164, 'Eternal Sunshine of the Spotless Mind', 'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories for ever.', 2004, 'Michel Gondry', 9),
(166, 'My Fair Lady', 'In 1910s London, snobbish phonetics professor Henry Higgins agrees to a wager that he can make crude flower girl, Eliza Doolittle, presentable in high society', 1964, 'George Cukor', 9),
(167, 'Moonstruck', 'Loretta Castorini, a bookkeeper from Brooklyn, New York, finds herself in a difficult situation when she falls for the brother of the man she has agreed to marry.', 1987, 'Norman Jewison', 9),
(168, 'Eternal Sunshine of the Spotless Mind', 'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories for ever.', 2004, 'Michel Gondry', 9),
(169, 'Doctor Zhivago', 'The life of a Russian physician and poet who, although married to another, falls in love with a political activist\'s wife and experiences hardship during World War I and then the October Revolution.', 1965, 'David Lean', 9),
(170, 'Beauty and the Beast', 'A prince cursed to spend his days as a hideous monster sets out to regain his humanity by earning a young woman\'s love.', 1991, 'Gary Trousdale', 9),
(171, 'Singin\' in the Rain', 'A silent film star falls for a chorus girl just as he and his delusionally jealous screen partner are trying to make the difficult transition to talking pictures in 1920s Hollywood.', 1952, 'Stanley Donen', 9),
(172, 'Silver Linings Playbook', 'After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.', 2012, 'David O. Russell', 9),
(173, 'When Harry Met Sally', 'Harry and Sally have known each other for years, and are very good friends, but they fear sex would ruin the friendship.', 1989, 'Rob Reiner', 9),
(174, 'Moonlight', 'A young African-American man grapples with his identity and sexuality while experiencing the everyday struggles of childhood, adolescence, and burgeoning adulthood.', 2016, 'Barry Jenkins', 9),
(175, 'Brokeback Mountain', 'Ennis and Jack are two shepherds who develop a sexual and emotional relationship. Their relationship becomes complicated when both of them get married to their respective girlfriends.', 2005, 'Ang Lee', 9),
(176, 'The Notebook', 'A poor yet passionate young man (Ryan Gosling) falls in love with a rich young woman (Rachel McAdams), giving her a sense of freedom, but they are soon separated because of their social differences.', 2004, 'Nick Cassavetes', 9),
(177, 'Titanic', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 1997, 'James Cameron', 9),
(178, 'West Side Story', 'Two youngsters from rival New York City gangs fall in love, but tensions between their respective friends build toward tragedy.', 1961, 'Jerome Robbins', 9),
(179, 'Roman Holiday', 'A bored and sheltered princess escapes her guardians and falls in love with an American newsman in Rome.', 1953, 'William Wyler', 9),
(180, 'City Lights', 'With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.', 1931, 'Charles Chaplin', 9),
(181, 'Casablanca', 'A cynical expatriate American cafe owner struggles to decide whether or not to help his former lover and her fugitive husband escape the Nazis in French Morocco.', 1942, 'Michael Curtiz', 9),
(182, 'Silent Running', 'In a future where all flora is extinct on Earth, an astronaut is given orders to destroy the last of Earth\'s botany, kept in a greenhouse aboard a spacecraft.', 1972, 'Douglas Trumbull', 10),
(183, 'High Life', 'A father and his daughter struggle to survive in deep space where they live in isolation.', 2018, 'Claire Denis', 10),
(184, 'Snowpiercer', 'In a future where a failed climate change experiment has killed all life except for the survivors who boarded the Snowpiercer (a train that travels around the globe), a new class system emerges.', 2013, 'Bong Joon Ho', 10),
(185, 'District 9', 'Violence ensues after an extraterrestrial race forced to live in slum-like conditions on Earth finds a kindred spirit in a government agent exposed to their biotechnology.', 2009, 'Neill Blomkamp', 10),
(186, 'The Abyss', 'A civilian diving team is enlisted to search for a lost nuclear submarine and faces danger while encountering an alien aquatic species.', 1989, 'James Cameron', 10),
(187, 'Children Of Men', 'In 2027, in a chaotic world in which women have somehow become infertile, a former activist agrees to help transport a miraculously pregnant woman to a sanctuary at sea.', 2006, 'Alfonso Cuarón', 10),
(189, 'Eternal Sunshine Of The Spotless Mind', 'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories for ever.', 2004, 'Michel Gondry', 10),
(190, 'Predator', 'A team of commandos on a mission in a Central American jungle find themselves hunted by an extraterrestrial warrior.', 1987, 'John McTiernan', 10),
(191, 'Stalker', 'A guide leads two men through an area known as the Zone to find a room that grants wishes.', 1979, 'Andrei Tarkovsky', 10),
(192, 'Invasion Of The Body Snatchers', 'When strange seeds drift to earth from space, mysterious pods begin to grow and invade San Francisco, replicating the city\'s residents one body at a time.', 1978, 'Philip Kaufman', 10),
(193, '12 Monkeys', 'In a future world devastated by disease, a convict is sent back in time to gather information about the man-made virus that wiped out most of the human population on the planet.', 1995, 'Terry Gilliam', 10),
(194, 'Akira', 'A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psychic psychopath who can only be stopped by a teenager, his gang of biker friends and a group of psychics.', 1988, 'Katsuhiro Ôtomo', 10),
(195, 'Under The Skin', 'A mysterious young woman seduces lonely men in the evening hours in Scotland. However, events lead her to begin a process of self-discovery.', 2013, 'Katsuhiro Ôtomo', 10),
(196, 'Sunshine', 'A team of international astronauts is sent on a dangerous mission to reignite the dying Sun with a nuclear fission bomb in 2057.', 2007, 'Danny Boyle', 10),
(197, 'A.I. Artificial Intelligence', 'A highly advanced robotic boy longs to become \"real\" so that he can regain the love of his human mother.', 2001, 'Steven Spielberg', 10),
(198, 'Avatar', 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 2009, 'James Cameron', 10),
(199, 'The Day The Earth Stood Still', 'An alien lands in Washington, D.C. and tells the people of Earth that they must live peacefully or be destroyed as a danger to other planets.', 1951, 'Robert Wise', 10),
(200, 'Minority Report', 'In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', 2002, 'Steven Spielberg', 10),
(201, 'The Fly', 'A brilliant but eccentric scientist begins to transform into a giant man/fly hybrid after one of his experiments goes horribly wrong.', 1986, 'David Cronenberg', 10),
(202, 'Wall-E', 'In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.', 2008, 'Andrew Stanton', 10),
(203, 'Star Trek II: The Wrath Of Khan', 'With the assistance of the Enterprise crew, Admiral Kirk must stop an old nemesis, Khan Noonien Singh, from using the life-generating Genesis Device as the ultimate weapon.', 1982, 'Nicholas Meyer', 10),
(204, 'Dune', 'A noble family becomes embroiled in a war for control over the galaxy\'s most valuable asset while its heir becomes troubled by visions of a dark future.', 2021, 'Denis Villeneuve', 10),
(205, 'Blade Runner 2049', 'Young Blade Runner K\'s discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who\'s been missing for thirty years.', 2017, 'Denis Villeneuve', 10),
(206, 'Ghost In The Shell', 'A cyborg policewoman and her partner hunt a mysterious and powerful hacker called the Puppet Master.', 1995, 'Mamoru Oshii', 10),
(207, 'Solaris', 'A psychologist is sent to a station orbiting a distant planet in order to discover what has caused the crew to go insane.', 1972, 'Andrei Tarkovsky', 10),
(208, 'Planet Of The Apes', 'An astronaut crew crash-lands on a planet where highly intelligent non-human ape species are dominant and humans are enslaved.', 1968, 'Franklin J. Schaffner', 10),
(209, 'Guardians Of The Galaxy', 'A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe.', 2014, 'James Gunn', 10),
(210, 'Jurassic Park', 'A pragmatic paleontologist touring an almost complete theme park on an island in Central America is tasked with protecting a couple of kids after a power failure causes the park\'s cloned dinosaurs to run loose.', 1993, 'Steven Spielberg', 10),
(211, 'Interstellar', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 2014, 'Christopher Nolan', 10),
(212, 'RoboCop', 'In a dystopic and crime-ridden Detroit, a terminally wounded cop returns to the force as a powerful cyborg haunted by submerged memories.', 1987, 'Paul Verhoeven', 10),
(213, 'Metropolis', 'In a futuristic city sharply divided between the working class and the city planners, the son of the city\'s mastermind falls in love with a working-class prophet who predicts the coming of a savior to mediate their differences.', 1927, 'Fritz Lang', 10),
(214, 'Ex_Machina', 'A young programmer is selected to participate in a ground-breaking experiment in synthetic intelligence by evaluating the human qualities of a highly advanced humanoid A.I.', 2014, 'Alex Garland', 10),
(215, 'Moon', 'Astronaut Sam Bell has a quintessentially personal encounter toward the end of his three-year stint on the Moon, where he, working alongside his computer, GERTY, sends back to Earth parcels of a resource that has helped diminish our planet\'s power problems.', 2009, 'Duncan Jones', 10),
(216, 'Close Encounters Of The Third Kind', 'Roy Neary, an Indiana electric lineman, finds his quiet and ordinary daily life turned upside down after a close encounter with a UFO, spurring him to an obsessed cross-country quest for answers as a momentous event approaches.', 1977, 'Steven Spielberg', 10),
(217, 'The Terminator', 'A human soldier is sent from 2029 to 1984 to stop an almost indestructible cyborg killing machine, sent from the same year, which has been programmed to execute a young woman whose unborn son is the key to humanity\'s future salvation.', 1984, 'James Cameron', 10),
(218, 'Arrival', 'A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecraft appear around the world.', 2016, 'Denis Villeneuve', 10),
(219, 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', 2010, 'Christopher Nolan', 10),
(220, 'The Thing', 'A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims.', 1982, 'John Carpenter', 10),
(221, 'Looper', 'In 2074, when the mob wants to get rid of someone, the target is sent into the past, where a hired gun awaits - someone like Joe - who one day learns the mob wants to close the loop by sending back Joe\'s future self for assassination.', 2012, 'Rian Johnson', 10),
(222, 'E.T. The Extra Terrestrial', 'A troubled child summons the courage to help a friendly alien escape from Earth and return to his home planet.', 1982, 'Steven Spielberg', 10),
(223, 'Aliens', 'Decades after surviving the Nostromo incident, Ellen Ripley is sent out to re-establish contact with a terraforming colony but finds herself battling the Alien Queen and her offspring.', 1986, 'James Cameron', 10),
(224, 'Back to The Future', 'Marty McFly, a 17-year-old high school student, is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.', 1985, 'Robert Zemeckis', 10),
(225, 'Terminator 2: Judgment Day', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her 10-year old son John from an even more advanced and powerful cyborg.', 1991, 'James Cameron', 10),
(226, 'Star Wars', 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire\'s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 1977, 'George Lucas', 10),
(227, '2001: A Space Odyssey', 'After uncovering a mysterious artifact buried beneath the Lunar surface, a spacecraft is sent to Jupiter to find its origins - a spacecraft manned by two men and the supercomputer H.A.L. 9000.', 1968, 'Stanley Kubrick', 10),
(228, 'The Matrix', 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.', 1999, 'Lana Wachowski', 10),
(229, 'Star Wars: The Empire Strikes Back', 'After the Rebels are overpowered by the Empire, Luke Skywalker begins his Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett.', 1980, 'Irvin Kershner', 10),
(230, 'Alien', 'The crew of a commercial spacecraft encounter a deadly lifeform after investigating an unknown transmission.', 1979, 'Ridley Scott', 10),
(231, 'Blade Runner', 'A blade runner must pursue and terminate four replicants who stole a ship in space and have returned to Earth to find their creator.', 1982, 'Ridley Scott', 10),
(232, 'The Natural', 'Using a bat carved from a lightning-struck tree, a mysterious middle-aged player comes out of nowhere to become a big-time baseball slugger. With Glenn Close, Kim Basinger.', 1984, 'Barry Levinson', 11),
(233, 'The Way Back', 'Jack Cunningham was a high school basketball phenom who walked away from the game, forfeiting his future. Years later, when he reluctantly accepts a coaching job at his alma mater, he may get one last shot at redemption.', 2020, 'Gavin O\'Connor', 11),
(234, 'Without Limits', 'The life of renowned runner Steve Prefontaine and his relationship with legendary coach Bill Bowerman.', 1998, 'Robert Towne', 11),
(235, 'Personal Best', 'The intertwined lives and loves of three highly ranked athletes striving for the national team; Chris bounces between the beds of male coach Terry and her female friend, competitor, and role model Tory.', 1982, 'Robert Towne', 11),
(236, 'Bang the Drum Slowly', 'The story of the friendship between a worldly-wise star pitcher and a half-wit catcher as they cope with the catcher\'s terminal illness through a baseball season.', 1973, 'John D. Hancock', 11),
(237, 'Goon', 'Labeled an outcast by his brainy family, a bouncer overcomes long odds to lead a team of under performing misfits to semi-pro hockey glory, beating the crap out of everything that stands in his way.', 2011, 'Michael Dowse', 11),
(238, 'Senna', 'A documentary on Brazilian Formula One racing driver Ayrton Senna, who won the F1 world championship three times before his death at age 34.', 2010, 'Asif Kapadia', 11),
(239, 'King Richard', 'A look at how tennis superstars Venus and Serena Williams became who they are after the coaching from their father Richard Williams.', 2021, 'Reinaldo Marcus Green', 11),
(240, 'I, Tonya', 'Competitive ice skater Tonya Harding rises amongst the ranks at the U.S. Figure Skating Championships, but her future in the activity is thrown into doubt when her ex-husband intervenes.', 2017, 'Craig Gillespie', 11),
(241, 'The Longest Yard', 'A sadistic warden asks a former pro quarterback, now serving time in his prison, to put together a team of inmates to take on (and get pummeled by) the guards.', 1974, 'Robert Aldrich', 11),
(242, 'The Boxer', 'Young Danny Flynn is released from prison 14 years after \"taking the rap\" for the IRA and tries to rebuild his life in his old Belfast neighborhood.', 1997, 'Jim Sheridan', 11);
INSERT INTO `tbl_movies` (`movie key`, `name`, `description`, `release date`, `director`, `genre`) VALUES
(243, 'White Men Can’t Jump', 'Black and white basketball hustlers join forces to double their chances of winning money on the street courts and in a basketball tournament.', 1992, 'Ron Shelton', 11),
(244, 'Major League', 'The new owner of the Cleveland Indians puts together a purposely horrible team so they\'ll lose and she can move the team. But when the plot is uncovered, they start winning just to spite her.', 1989, 'David S. Ward', 11),
(245, 'Dodgeball', 'A group of misfits enter a Las Vegas dodgeball tournament in order to save their cherished local gym from the onslaught of a corporate health fitness chain.', 2004, 'Rawson Marshall Thurber', 11),
(246, 'Talladega Nights', 'Number one NASCAR driver Ricky Bobby stays atop the heap thanks to a pact with his best friend and teammate, Cal Naughton, Jr. But when a French Formula One driver, makes his way up the ladder, Ricky Bobby\'s talent and devotion are put to the test.', 2006, 'Adam McKay', 11),
(247, 'Rudy', 'Rudy has always been told that he was too small to play college football. But he is determined to overcome the odds and fulfill his dream of playing for Notre Dame.', 1993, 'David Anspaugh', 11),
(248, 'Bend It Like Beckham', 'Two ambitious girls, despite their parents\' wishes, have their hearts set on careers in professional football.', 2002, 'Gurinder Chadha', 11),
(249, 'The Karate Kid', 'A martial arts master agrees to teach karate to a bullied teenager.', 1984, 'John G. Avildsen', 11),
(250, 'Eight Men Out', 'A dramatization of the Black Sox scandal when the underpaid Chicago White Sox accepted bribes to deliberately lose the 1919 World Series.', 1988, 'John Sayles', 11),
(251, 'The Fighter', 'Based on the story of Micky Ward, a fledgling boxer who tries to escape the shadow of his more famous but troubled older boxing brother and get his own shot at greatness.', 2010, 'David O. Russell', 11),
(252, 'Happy Gilmore', 'A rejected hockey player puts his skills to the golf course to save his grandmother\'s house.', 1996, 'Dennis Dugan', 11),
(253, 'The Color of Money', 'Fast Eddie Felson teaches a cocky but immensely talented protégé the ropes of pool hustling, which in turn inspires him to make an unlikely comeback.', 1986, 'Martin Scorsese', 11),
(254, 'Creed', 'The former World Heavyweight Champion Rocky Balboa serves as a trainer and mentor to Adonis Johnson, the son of his late friend and former rival Apollo Creed.', 2015, 'Ryan Coogler', 11),
(255, 'The Bad News Bears', 'An aging, down-on-his-luck ex-minor leaguer coaches a team of misfits in an ultra-competitive California little league.', 1976, 'Michael Ritchie', 11),
(256, 'Sugar', 'Dominican baseball star Miguel \"Sugar\" Santos is recruited to play in the U.S. minor-leagues.', 2008, 'Anna Boden', 11),
(257, 'Rush', 'The merciless 1970s rivalry between Formula One rivals James Hunt and Niki Lauda.', 2013, 'Ron Howard', 11),
(258, 'Tin Cup', 'A washed-up golf pro working at a driving range tries to qualify for the U.S. Open in order to win the heart of his successful rival\'s girlfriend.', 1996, 'Ron Shelton', 11),
(259, 'Caddyshack', 'An exclusive golf course has to deal with a brash new member and a destructive dancing gopher.', 1980, 'Harold Ramis', 11),
(260, 'Hoosiers', 'A coach with a checkered past and a local drunk train a small town high school basketball team to become a top contender for the championship.', 1986, 'David Anspaugh', 11),
(261, 'Love and Basketball', 'Monica and Quincy love and play basketball together through many life challenges from childhood to adulthood.', 2000, 'Gina Prince-Bythewood', 11),
(267, 'Moneyball', 'Oakland A\'s general manager Billy Beane\'s successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players.', 2011, 'Bennett Miller', 11),
(268, 'The Damned United', 'The story of the controversial Brian Clough\'s 44-day reign as the coach of the English football club Leeds United.', 2009, 'Tom Hooper', 11),
(269, 'Miracle', 'The true story of Herb Brooks, the player-turned-coach who led the 1980 U.S. Olympic hockey team to victory over the seemingly invincible Soviet squad.', 2004, 'Gavin O\'Connor', 11),
(270, 'Chariots of Fire', 'Two British track athletes, one a determined Jew and the other a devout Christian, are driven to win in the 1924 Olympics as they wrestle with issues of pride and conscience.', 1981, 'Hugh Hudson', 11),
(271, 'He Got Game', 'A basketball player\'s father must try to convince him to go to a college so he can get a shorter sentence.', 1998, 'Spike Lee', 11),
(272, 'Murderball', 'Quadriplegics, who play full-contact rugby in wheelchairs, overcome unimaginable obstacles to compete in the Paralympic Games in Athens, Greece.', 2005, 'Henry Alex Rubin', 11),
(273, 'When We Were Kings', 'Boxing documentary on the 1974 world heavyweight championship bout between defending champion, George Foreman, and the underdog challenger, Muhammad Ali.', 1996, 'Leon Gast', 11),
(274, 'Field of Dreams', 'Iowa farmer Ray Kinsella is inspired by a voice he can\'t ignore to pursue a dream he can hardly believe. Supported by his wife, Ray begins the quest by turning his ordinary cornfield into a place where dreams can come true.', 1989, 'Phil Alden Robinson', 11),
(275, 'Breaking Away', 'A working-class Indiana teen obsessed with the Italian cycling team vies for the affections of a college girl while searching for life goals with his friends.', 1979, 'Peter Yates', 11),
(276, 'Million Dollar Baby', 'A determined woman works with a hardened boxing trainer to become a professional.', 2004, 'Clint Eastwood', 11),
(277, 'Slap Shot', 'A failing ice hockey team finds success with outrageously violent hockey goonery.', 1977, 'George Roy Hill', 11),
(278, 'A League of Their Own', 'Two sisters join the first female professional baseball league and struggle to help it succeed amid their own growing rivalry.', 1992, 'Penny Marshall', 11),
(279, 'Ali', 'A biography of sports legend Muhammad Ali, focusing on his triumphs and controversies between 1964 and 1974.', 2001, 'Michael Mann', 11),
(280, 'The Wrestler', 'A faded professional wrestler must retire, but finds his quest for a new life outside the ring a dispiriting struggle.', 2008, 'Darren Aronofsky', 11),
(281, 'Pride of the Yankees', 'The story of the life and career of famed baseball player Lou Gehrig.', 1942, 'Sam Wood', 11),
(282, 'Foxcatcher', 'U.S. Olympic wrestling champions and brothers Mark Schultz and Dave Schultz join \"Team Foxcatcher\", led by eccentric multi-millionaire John du Pont, as they train for the 1988 Olympic Games in Seoul, South Korea, but John\'s self-destructive behavior threatens to consume them all.', 2014, 'Bennett Miller', 11),
(283, 'Bull Durham', 'A fan who has an affair with one minor-league baseball player each season meets an up-and-coming pitcher and the experienced catcher assigned to him.', 1988, 'Ron Shelton', 11),
(284, 'Rocky', 'A small-time Philadelphia boxer gets a supremely rare chance to fight the world heavyweight champion in a bout in which he strives to go the distance for his self-respect.', 1976, 'John G. Avildsen', 11),
(285, 'Raging Bull', 'The life of boxer Jake LaMotta, whose violence and temper that led him to the top in the ring destroyed his life outside of it.', 1980, 'Martin Scorsese', 11),
(286, 'Hoop Dreams', 'A film following the lives of two inner-city Chicago boys who struggle to become college basketball players on the road to going professional.', 1994, 'Steve James', 11),
(287, 'American Psycho', 'A wealthy New York City investment banking executive, Patrick Bateman, hides his alternate psychopathic ego from his co-workers and friends as he delves deeper into his violent, hedonistic fantasies.', 2000, 'Mary Harron', 12),
(288, 'Animal Kingdom', 'A seventeen-year-old navigates his survival amongst an explosive criminal family and the detective who thinks he can save him.', 2010, 'David Michôd', 12),
(289, 'Basic Instinct', 'A violent police detective investigates a brutal murder that might involve a manipulative and seductive novelist.', 1992, 'Paul Verhoeven', 12),
(290, 'The Big Heat', 'Tough cop Dave Bannion takes on a politically powerful crime syndicate.', 1953, 'Fritz Lang', 12),
(291, 'The Big Sleep', 'Private detective Philip Marlowe is hired by a wealthy family. Before the complex case is over, he\'s seen murder, blackmail and what might be love.', 1946, 'Howard Hawks', 12),
(293, 'Blood Simple', 'The owner of a seedy small-town Texas bar discovers that one of his employees is having an affair with his wife. A chaotic chain of misunderstandings, lies, and mischief ensues after he devises a plot to have them murdered.', 1984, 'Joel Coen', 12),
(294, 'Blue Velvet', 'The discovery of a severed human ear found in a field leads a young man on an investigation related to a beautiful, mysterious nightclub singer and a group of psychopathic criminals who have kidnapped her child.', 1986, 'David Lynch', 12),
(295, 'Le Boucher', 'An unlikely friendship between a dour, working class butcher and a repressed schoolteacher coincides with a grisly series of Ripper-type murders in a provincial French town.', 1970, 'Claude Chabrol', 12),
(296, 'Cape Fear', 'A lawyer\'s family is stalked by a man he once helped put in jail.', 1962, 'J. Lee Thompson', 12),
(297, 'To Catch a Thief', 'A retired jewel thief sets out to prove his innocence after being suspected of returning to his former occupation.', 1955, 'Alfred Hitchcock', 12),
(299, 'Collateral', 'A cab driver finds himself the hostage of an engaging contract killer as he makes his rounds from hit to hit during one night in Los Angeles.', 2004, 'Michael Mann', 12),
(300, 'The Conversation', 'A paranoid, secretive surveillance expert has a crisis of conscience when he suspects that the couple he is spying on will be murdered.', 1974, 'Francis Ford Coppola', 12),
(301, 'Dead Calm', 'After a tragedy, John Ingram and his wife Rae are spending some time isolated at sea, when they come across a stranger who has abandoned a sinking ship.', 1989, 'Phillip Noyce', 12),
(302, 'The Departed', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 2001, 'Martin Scorsese', 12),
(303, 'Deliverance', 'Intent on seeing the Cahulawassee River before it\'s dammed and turned into a lake, outdoor fanatic Lewis Medlock takes his friends on a canoeing trip they\'ll never forget into the dangerous American back-country.', 1972, 'John Boorman', 12),
(305, 'Dressed to Kill', 'A mysterious blonde woman kills one of a psychiatrist\'s patients, and then goes after the high-class call girl who witnessed the murder.', 1980, 'Brian De Palma', 12),
(306, 'Drive', 'A mysterious Hollywood action film stuntman gets in trouble with gangsters when he tries to help his neighbor\'s husband rob a pawn shop while serving as his getaway driver.', 2011, 'Nicolas Winding Refn', 12),
(308, 'Fatal Attraction', 'A married man\'s one-night stand comes back to haunt him when that lover begins to stalk him and his family.', 1987, 'Adrian Lyne', 12),
(309, 'Fargo', 'Minnesota car salesman Jerry Lundegaard\'s inept crime falls apart due to his and his henchmen\'s bungling and the persistent police work of the quite pregnant Marge Gunderson.', 1996, 'Joel Coen', 12),
(310, 'Fight Club', 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.', 1999, 'David Fincher', 12),
(311, 'Frailty', 'A mysterious man arrives at the offices of an FBI agent and recounts his childhood: how his religious fanatic father received visions telling him to destroy people who were in fact \"demons.\"', 2001, 'Bill Paxton', 12),
(312, 'The Fugitive', 'Dr. Richard Kimble, unjustly accused of murdering his wife, must find the real killer while being the target of a nationwide manhunt led by a seasoned U.S. Marshal.', 1993, 'Andrew Davis', 12),
(313, 'The Game', 'After a wealthy San Francisco banker is given an opportunity to participate in a mysterious game, his life is turned upside down as he begins to question if it might really be a concealed conspiracy to destroy him.', 1997, 'David Fincher', 12),
(314, 'Gaslight', 'Ten years after her aunt was murdered in their London home, a woman returns from Italy in the 1880s to resume residence with her new husband. His obsessive interest in the home rises from a secret that may require driving his wife insane.', 1944, 'George Cukor', 12),
(315, 'Gattaca', 'A genetically inferior man assumes the identity of a superior one in order to pursue his lifelong dream of space travel.', 1997, 'Andrew Niccool', 12),
(316, 'Get Out', 'A young African-American visits his White girlfriend\'s parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.', 2017, 'Jordan Peele', 12),
(317, 'Good Time', 'After a botched bank robbery lands his younger brother in prison, Connie Nikas embarks on a twisted odyssey through New York City\'s underworld to get his brother Nick out of jail.', 2017, 'Josh Safdie', 12),
(318, 'The Handmaiden', 'A woman is hired as a handmaiden to a Japanese heiress, but secretly she is involved in a plot to defraud her.', 2016, 'Park Chan-wook', 12),
(319, 'High and Low', 'An executive of a Yokohama shoe company becomes a victim of extortion when his chauffeur\'s son is kidnapped by mistake and held for ransom.', 1963, 'Akira Kurosowa', 12),
(320, 'A History Of Violence', 'A mild-mannered man becomes a local hero through an act of violence, which sets off repercussions that will shake his family to its very core.', 2005, 'David Cronenberg', 12),
(321, 'In a Lonely Place', 'A potentially violent screenwriter is a murder suspect until his lovely neighbor clears him. However, she soon starts to have her doubts.', 1950, 'Nicholas Ray', 12),
(322, 'The Innocents', 'A young governess for two children becomes convinced that the house and grounds are haunted.', 1961, 'Jack Clayton', 12),
(323, 'The Insider', 'A research chemist comes under personal and professional attack when he decides to appear in a 60 Minutes exposé on Big Tobacco.', 1999, 'Michael Mann', 12),
(324, 'I Saw the Devil', 'A secret agent exacts revenge on a serial killer through a series of captures and releases.', 2010, 'Jee-woon Kim', 12),
(325, 'Jaws', 'When a killer shark unleashes chaos on a beach community off Cape Cod, it\'s up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.', 1975, 'Steven Spielberg', 12),
(326, 'The Killing', 'Crook Johnny Clay assembles a five-man team to plan and execute a daring racetrack robbery.', 1956, 'Stanley Kubrick', 12),
(327, 'Knife in the Water', 'A couple pick up a hitchhiker on the way to their yacht. The husband invites the young man to come along for their day\'s sailing. As the voyage progresses, the antagonism between the two men grows. A violent confrontation is inevitable.', 1962, 'Roman Polanski', 12),
(328, 'Knives Out', 'A detective investigates the death of the patriarch of an eccentric, combative family.', 2019, 'Rian Johnson', 12),
(329, 'The Lady Vanishes', 'While travelling in continental Europe, a rich young playgirl realizes that an elderly lady seems to have disappeared from the train.', 1938, 'Alfred Hitchcock', 12),
(330, 'The Lighthouse', 'Two lighthouse keepers try to maintain their sanity while living on a remote and mysterious New England island in the 1890s.', 2019, 'Robert Eggers', 12),
(331, 'M', 'When the police in a German city are unable to catch a child-murderer, other criminals join in the manhunt.', 1931, 'Fritz Lang', 12),
(332, 'The Machinist', 'An industrial worker who hasn\'t slept in a year begins to doubt his own sanity.', 2004, 'Brad Anderson', 12),
(333, 'The Maltese Falcon', 'San Francisco private detective Sam Spade takes on a case that involves him with three eccentric criminals, a gorgeous liar and their quest for a priceless statuette, with the stakes rising after his partner is murdered.', 1941, 'John Huston', 12),
(334, 'Martyrs', 'A young woman\'s quest for revenge against the people who kidnapped and tormented her as a child leads her and a friend, who is also a victim of child abuse, on a terrifying journey into a living hell of depravity.', 2008, 'Pascal Laugier', 12),
(335, 'Midsommar', 'A couple travels to Northern Europe to visit a rural hometown\'s fabled Swedish mid-summer festival. What begins as an idyllic retreat quickly devolves into an increasingly violent and bizarre competition at the hands of a pagan cult.', 2019, 'Ari Aster', 12),
(336, 'Misery', 'After a famous author is rescued from a car crash by a fan of his novels, he comes to realize that the care he is receiving is only the beginning of a nightmare of captivity and abuse.', 1990, 'Rob Reiner', 12),
(337, 'Mulholland Drive', 'After a car wreck on the winding Mulholland Drive renders a woman amnesiac, she and a perky Hollywood-hopeful search for clues and answers across Los Angeles in a twisting venture beyond dreams and reality.', 2001, 'David Lynch', 12),
(338, 'Mystic River', 'The lives of three men who were childhood friends are shattered when one of them has a family tragedy.', 2003, 'Rob Reiner', 12),
(339, 'Nightcrawler', 'When Louis Bloom, a con man desperate for work, muscles into the world of L.A. crime journalism, he blurs the line between observer and participant to become the star of his own story.', 2014, 'Dan Gilroy', 12),
(340, 'The Night of the Hunter', 'A religious fanatic marries a gullible widow whose young children are reluctant to tell him where their real daddy hid the $10,000 he\'d stolen in a robbery.', 1955, 'Charles Laughton', 12),
(341, 'No Country for Old Men', 'Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.', 2007, 'Joel Coen', 12),
(342, 'Parasite', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', 2019, 'Bong Joon-Ho', 12),
(343, 'A Perfect Murder', 'A wealthy Wall Street speculator discovers that his wife has a lover. He investigates him and uses the carrot and stick to make him murder his wife. Planned to detail, it seems like a perfect murder.', 1998, 'Andrew Davis', 12),
(344, 'Le Samourai', 'After professional hitman Jef Costello is seen by witnesses his efforts to provide himself an alibi drive him further into a corner.', 1967, 'Jean-Pierre Melville', 12),
(345, 'The Shining', 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.', 1980, 'Stanley Kubrick', 12),
(346, 'Side Effects', 'A young woman\'s world unravels when a drug prescribed by her psychiatrist has unexpected side effects.', 2013, 'Steven Soderbergh', 12),
(347, 'Spellbound', 'A psychiatrist protects the identity of an amnesia patient accused of murder while attempting to recover his memory.', 1945, ' Alfred Hitchcock', 12),
(348, 'The Spy Who Came in from the Cold', 'Instead of coming in from the Cold War, British agent Alec Leamas chooses to face another mission.', 1965, 'Martin Ritt', 12),
(349, 'The Talented Mr. Ripley', 'In late 1950s New York, a young underachiever named Tom Ripley is sent to Italy to retrieve Dickie Greenleaf, a rich and spoiled millionaire playboy. But when the errand fails, Ripley takes extreme measures.', 1999, 'Anthony Minghella', 12),
(350, 'Taxi Driver', 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action.', 1976, 'Martin Scorsese', 12),
(351, 'The 39 Steps', 'A man in London tries to help a counter-espionage agent, but when the agent is killed and the man stands accused, he must go on the run to save himself and stop a spy ring that is trying to steal top-secret information.', 1938, 'Alfred Hitchcock', 12),
(352, 'Total Recall', 'When a man goes in to have virtual vacation memories of the planet Mars implanted in his mind, an unexpected and harrowing series of events forces him to go to the planet for real - or is he?', 1990, 'Andrew Davis', 12),
(353, 'Touch of Evil', 'A stark, perverse story of murder, kidnapping and police corruption in a Mexican border town.', 1958, 'Orson Welles', 12),
(354, 'Uncut Gems', 'With his debts mounting and angry collectors closing in, a fast-talking New York City jeweler risks everything in hope of staying afloat and alive.', 2019, 'Benny Safdie', 12),
(355, 'The Good, the Bad and the Ugly', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', 1966, 'Sergio Leone', 13),
(356, 'Remember the Titans', 'The true story of a newly appointed African-American coach and his high school team on their first season as a racially integrated unit.', 2000, 'Boaz Yakin', 11),
(357, 'Stagecoach', 'A group of people traveling on a stagecoach find their journey complicated by the threat of Geronimo and learn something about each other in the process.', 1939, 'John Ford', 13),
(358, 'Destry Rides Again', 'Deputy sheriff Destry tames the town of Bottle Neck, including saloon singer Frenchy.', 1939, 'George Marshall', 13),
(359, 'The Ox-Bow Incident', 'When a posse captures three men suspected of killing a local farmer, they become strongly divided over whether or not to lynch the men.', 1943, 'William A. Wellman', 13),
(360, 'My Darling Clementine', 'After their cattle are stolen and their brother murdered, the Earp brothers have a score to settle with the Clanton family.', 1946, 'John Ford', 13),
(361, 'Angel and the Badman', 'Quirt Evans, an all round bad guy, is nursed back to health and sought after by Penelope Worth, a Quaker girl. He eventually finds himself having to choose between his world and the world Penelope lives in.', 1947, 'James Edward Grant', 13),
(362, 'Red River', 'Dunson leads a cattle drive, the culmination of over 14 years of work, to its destination in Missouri. But his tyrannical behavior along the way causes a mutiny, led by his adopted son.', 1948, 'Howard Hawks', 13),
(363, 'Stagecoach', 'A group of people traveling on a stagecoach find their journey complicated by the threat of Geronimo and learn something about each other in the process.', 1939, 'John Ford', 13),
(364, 'Destry Rides Again', 'Deputy sheriff Destry tames the town of Bottle Neck, including saloon singer Frenchy.', 1939, 'George Marshall', 13),
(365, 'The Ox-Bow Incident', 'When a posse captures three men suspected of killing a local farmer, they become strongly divided over whether or not to lynch the men.', 1943, 'William A. Wellman', 13),
(366, 'My Darling Clementine', 'After their cattle are stolen and their brother murdered, the Earp brothers have a score to settle with the Clanton family.', 1946, 'John Ford', 13),
(367, 'Angel and the Badman', 'Quirt Evans, an all round bad guy, is nursed back to health and sought after by Penelope Worth, a Quaker girl. He eventually finds himself having to choose between his world and the world Penelope lives in.', 1947, 'James Edward Grant', 13),
(368, 'Red River', 'Dunson leads a cattle drive, the culmination of over 14 years of work, to its destination in Missouri. But his tyrannical behavior along the way causes a mutiny, led by his adopted son.', 1948, 'Howard Hawks', 13),
(369, 'The Gunfighter', 'Notorious gunfighter Jimmy Ringo rides into town to find his true love, who doesn\'t want to see him. He hasn\'t come looking for trouble, but trouble finds him around every corner.', 1950, 'Henry King', 13),
(370, 'Winchester \'73', 'A cowboy\'s obsession with a stolen rifle leads to a bullet-ridden odyssey through the American West.', 1950, 'Anthony Mann', 13),
(371, 'High Noon', 'A town Marshal, despite the disagreements of his newlywed bride and the townspeople around him, must face a gang of deadly killers alone at \"high noon\" when the gang leader, an outlaw he \"sent up\" years ago, arrives on the noon train.', 1952, 'Fred Zinnemann', 13),
(372, 'The Naked Spur', 'A bounty hunter trying to bring a murderer to justice is forced to accept the help of two less-than-trustworthy strangers.', 1953, 'Anthony Mann', 13),
(373, 'Hondo', 'Army dispatch rider Hondo Lane discovers a woman and young son living in the midst of warring Apaches and becomes their protector.', 1953, 'John Farrow', 13),
(374, 'Johnny Guitar', 'After helping a wounded gang member, a strong-willed female saloon owner is wrongly suspected of murder and bank robbery by a lynch mob.', 1954, 'Nicholas Ray', 13),
(375, 'Wichita', 'In 1874, after noticing the total lawlessness in Wichita, Wyatt Earp reluctantly accepts the Marshal\'s job and runs into the worst local troublemakers.', 1955, 'Jacques Tourneur', 13),
(376, 'Jubal', 'A new foreman rejects the sexual advances of a frustrated rancher\'s wife, which leads to conflicts that could get him killed.', 1956, 'Delmer Daves', 13),
(377, 'The Searchers', 'An American Civil War veteran embarks on a years-long journey to rescue his niece from the Comanches after the rest of his brother\'s family is massacred in a raid on their Texas farm.', 1956, 'John Ford', 13),
(378, 'Night Passage', 'A fired railroad man is re-hired and trusted to carry a ten thousand dollar payroll in secret, even though he is suspected of being connected to outlaws.', 1957, 'James Neilson', 13),
(379, 'Gunfight at the O.K. Corral', 'Lawman Wyatt Earp and outlaw Doc Holliday form an unlikely alliance which culminates in their participation in the legendary Gunfight at the O.K. Corral.', 1957, 'John Sturges', 13),
(380, '3:10 to Yuma', 'Broke small-time rancher Dan Evans is hired by the stagecoach line to put big-time captured outlaw leader Ben Wade on the 3:10 train to Yuma but Wade\'s gang tries to free him.', 1957, 'Delmer Daves', 13),
(381, 'Ride Lonesome', 'A bounty hunter (Randolph Scott) escorts a killer (James Best) to be tried for murder, but allows the man\'s outlaw brother (Lee Van Cleef) to catch up with them to have a showdown over a previous shocking murder.', 1959, 'Budd Boetticher', 13),
(382, 'Last Train from Gun Hill', 'A marshal tries to bring the son of an old friend, an autocratic cattle baron, to justice for his role in the rape and murder of the marshal\'s Native American wife.', 1959, 'John Sturges', 13),
(383, 'Rio Bravo', 'A small-town sheriff in the American West enlists the help of a disabled man, a drunk, and a young gunfighter in his efforts to hold in jail the brother of the local bad guy.', 1959, 'Howard Hawks', 13),
(384, 'Yojimbo', 'A crafty ronin comes to a town divided by two criminal gangs and decides to play them against each other to free the town.', 1961, 'Akira Kurosawa', 13),
(385, 'The Man Who Shot Liberty Valance', 'A senator returns to a Western town for the funeral of an old friend and tells the story of his origins.', 1962, 'John Ford', 13),
(386, 'Ride the High Country', 'An ex-union soldier is hired to transport gold from a mining community through dangerous territory. But what he doesn\'t realize is that his partner and old friend is plotting to double-cross him.', 1962, 'JSam Peckinpah', 13),
(387, 'Once Upon a Time in the West', 'A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.', 1968, 'Sergio Leone', 13),
(388, 'The Wild Bunch', 'An aging group of outlaws look for one last big score as the \"traditional\" American West is disappearing around them.', 1969, 'Sam Peckinpah', 13),
(389, 'True Grit', 'A drunken, hard-nosed U.S. Marshal and a Texas Ranger help a stubborn teenager track down her father\'s murderer in Indian Territory.', 1969, 'Henry Hathaway', 13),
(390, 'Jeremiah Johnson', 'A mountain man who wishes to live the life of a hermit becomes the unwilling object of a long vendetta by the Crow tribe and proves to be a match for their warriors in single combat on the early frontier.', 1972, 'Sydney Pollack', 13),
(391, 'The Shootist', 'A dying gunfighter spends his last days looking for a way to die with a minimum of pain and a maximum of dignity.', 1976, 'Don Siegel', 13),
(392, 'Pale Rider', 'A mysterious preacher (Clint Eastwood) protects a humble prospector village from a greedy mining company trying to encroach on their land.', 1985, 'Clint Eastwood', 13),
(393, 'Unforgiven', 'Retired Old West gunslinger William Munny reluctantly takes on one last job, with the help of his old partner Ned Logan and a young man, The \"Schofield Kid.\"', 1992, 'Clint Eastwood', 13),
(394, 'Quigley Down Under', 'Sharpshooter Matt Quigley is hired from Wyoming by an Australian rancher paying a very high price. But when Quigley arrives Down Under, all is not as it seems.', 1990, 'Simon Wincer', 13),
(395, 'Dances with Wolves', 'Lieutenant John Dunbar, assigned to a remote western Civil War outpost, finds himself engaging with a neighbouring Sioux settlement, causing him to question his own purpose.', 1990, 'Kevin Costner', 13),
(396, 'Open Range', 'A former gunslinger is forced to take up arms again when he and his cattle crew are threatened by a corrupt lawman.', 2003, 'Kevin Costner', 13),
(397, 'Hostiles', 'In 1892, a legendary Army Captain reluctantly agrees to escort a Cheyenne chief and his family through dangerous territory.', 2017, 'Scott Cooper', 13),
(398, 'The Harder They Fall', 'When an outlaw discovers his enemy is being released from prison, he reunites his gang to seek revenge.', 2021, 'Jeymes Samuel', 13),
(399, 'Office Space', 'Corporate drone Peter Gibbons (Ron Livingston) hates his soul-killing job at software company Initech. While undergoing hypnotherapy, Peter is left in a blissful state when his therapist dies in the middle of their session. He refuses to work overtime, plays games at his desk and unintentionally charms two consultants into putting him on the management fast-track. When Peter\'s friends learn they\'re about to be downsized, they hatch a revenge plot against the company inspired by \"Superman III.\"', 1999, 'Mike Judge', 1),
(400, 'Clueless', 'Shallow, rich and socially successful Cher (Alicia Silverstone) is at the top of her Beverly Hills high school\'s pecking scale. Seeing herself as a matchmaker, Cher first coaxes two teachers into dating each other. Emboldened by her success, she decides to give hopelessly klutzy new student Tai (Brittany Murphy) a makeover. When Tai becomes more popular than she is, Cher realizes that her disapproving ex-stepbrother (Paul Rudd) was right about how misguided she was -- and falls for him.', 1995, 'Amy Heckerling', 1),
(401, 'Rushmore', 'When a beautiful first-grade teacher (Olivia Williams) arrives at a prep school, she soon attracts the attention of an ambitious teenager named Max (Jason Schwartzman), who quickly falls in love with her. Max turns to the father (Bill Murray) of two of his schoolmates for advice on how to woo the teacher. However, the situation soon gets complicated when Max\'s new friend becomes involved with her, setting the two pals against one another in a war for her attention.', 1998, 'Wes Anderson', 1),
(402, 'Anchorman: The Legend of Ron Burgundy', 'Hotshot television anchorman Ron Burgundy (Will Ferrell) welcomes upstart reporter Veronica Corningstone (Christina Applegate) into the male-dominated world of 1970s broadcast news -- that is, until the talented female journalist begins to outshine Burgundy on air. Soon he grows jealous, begins a bitter feud with Veronica and eventually makes a vulgar slip on live TV that ruins his career. However, when an outrageous story breaks at the San Diego Zoo, Ron may get a chance to redeem himself.', 2004, 'Adam McKay', 1),
(403, 'Wayne\'s World', 'A big screen spin-off of the \"Saturday Night Live\" skit. Rob Lowe plays a producer that wants to take the public access \"Wayne\'s World\" to the world of commercial television. Wayne (Mike Myers) and Garth (Dana Carvey) battle to save their show and Wayne\'s girlfriend from Lowe.', 1992, 'Penelope Spheeris', 1),
(404, 'Pee-wee\'s Big Adventure', 'Pee-wee Herman (Paul Reubens), an eccentric child-like man, loves his red bicycle and will not sell it to his envious neighbor, Francis (Mark Holton). While Pee-wee visits his friend Dottie (Elizabeth Daily), the bike is stolen. Thinking his bike is at the Alamo, Pee-wee sets off on a trip, where he meets many remarkable people, including waitress Simone (Diane Salinger) and a motorcycle gang. Eventually, Pee-wee discovers that his bike is being used in a movie and tries to recover it.', 1985, 'Tim Burton', 1),
(405, 'Ghostbusters', '', 1984, 'Paul Feig', 1),
(406, 'Clueless', 'Harried paleontologist David Huxley (Cary Grant) has to make a good impression on society matron Mrs. Random (May Robson), who is considering donating one million dollars to his museum. On the day before his wedding, Huxley meets Mrs. Random\'s high-spirited young niece, Susan Vance (Katharine Hepburn), a madcap adventuress who immediately falls for the straitlaced scientist. The ever-growing chaos -- including a missing dinosaur bone and a pet leopard -- threatens to swallow him whole.', 1938, 'Howard Hawks', 1),
(407, 'The Great Dictator', 'After dedicated service in the Great War, a Jewish barber (Charles Chaplin) spends years in an army hospital recovering from his wounds, unaware of the simultaneous rise of fascist dictator Adenoid Hynkel (also Chaplin) and his anti-Semitic policies. When the barber, who bears a remarkable resemblance to Hynkel, returns to his quiet neighborhood, he is stunned by the brutal changes and recklessly joins a beautiful girl (Paulette Goddard) and her neighbors in rebelling.', 1980, 'Jim Abrahams', 1),
(408, 'Airplane!', '', 1938, 'Howard Hawks', 1),
(409, 'The Jerk', '', 1979, 'Carl Reiner', 1),
(410, 'Raising Arizona', 'Fast-paced farce about an unlikely pair who go to extreme lengths to have a child. When an incompetent robber marries a policewoman, they discover that they are infertile. In order to appease his wife\'s longings for a child, the man steals one of a set of quintuplets, but mayhem ensues when the child\'s rich father sends a rabbit-shooting bounty hunter after the kidnapper.', 1987, 'Ethan Coen', 1),
(411, 'This Is Spinal Tap', '\"This Is Spinal Tap\" shines a light on the self-contained universe of a metal band struggling to get back on the charts, including everything from its complicated history of ups and downs, gold albums, name changes and undersold concert dates, along with the full host of requisite groupies, promoters, hangers-on and historians, sessions, release events and those special behind-the-scenes moments that keep it all real.', 1984, 'Rob Reiner', 1),
(412, 'Caddyshack', 'Danny Noonan (Michael O\'Keefe), a teen down on his luck, works as a caddy at the snob-infested Bushwood Country Club to raise money for his college education. In an attempt to gain votes for a college scholarship reserved for caddies, Noonan volunteers to caddy for a prominent and influential club member (Ted Knight). Meanwhile, Danny struggles to prepare for the high pressure Caddy Day golf tournament while absorbing New Age advice from wealthy golf guru Ty Webb (Chevy Chase).', 1980, 'Harold Ramis', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genres`
--
ALTER TABLE `tbl_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_locker`
--
ALTER TABLE `tbl_locker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Foreign_Key_user` (`user id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movie key`),
  ADD KEY `Foreign_Key_Genre` (`genre`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genres`
--
ALTER TABLE `tbl_genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_locker`
--
ALTER TABLE `tbl_locker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_locker`
--
ALTER TABLE `tbl_locker`
  ADD CONSTRAINT `Foreign_Key_user` FOREIGN KEY (`user id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD CONSTRAINT `Foreign_Key_Genre` FOREIGN KEY (`genre`) REFERENCES `tbl_genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
