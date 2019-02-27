-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 27 feb 2019 om 12:10
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marvalheroes`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hero`
--

CREATE TABLE `hero` (
  `heroId` int(3) NOT NULL COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable',
  `heroName` varchar(50) NOT NULL COMMENT 'the name of the hero, just a string',
  `heroDescription` text NOT NULL COMMENT 'some information of the hero, just a string',
  `heroPower` text NOT NULL,
  `heroImage` varchar(50) NOT NULL COMMENT 'the image of the hero is strored as a string. The actual image is strored on the server. Use the string as the source of the HTML img-tag.',
  `teamId` int(3) NOT NULL COMMENT 'this is the teamId. Used as a referenc to the team table.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hero`
--

INSERT INTO `hero` (`heroId`, `heroName`, `heroDescription`, `heroPower`, `heroImage`, `teamId`) VALUES
(1, 'Black Panther', 'T\'Challa is the Black Panther, king of Wakanda, one of the most technologically advanced nations on Earth. He is among the top intellects and martial artists of the world, a veteran Avenger, and a member of the Illuminati. Using his powers and abilities, he has pledged his fortune, powers, and life to the service of all mankind.', 'advanced technologically,top intellects and martial artists', 'BlackPanther.jpg', 1),
(2, 'Black Widow', 'A former KGB agent Natasha Romanova, better known as Black Widow, is one of the best agents S.H.I.E.L.D. has ever had. She\'s a longtime member of the Avengers as well as the leader of the short-lived Los Angeles-based superhero team called the Champions.', 'physical abilities. She possesses peak-level physiology.', 'BlackWidow.jpg', 1),
(3, 'Bucky Barnes', 'Believed dead near the end of World War II only to have been found and brainwashed by the Soviets for the next 50 years, Captain America\'s former sidekick now continues to defend his country from the shadows against those who would threaten it as legendary spy and assassin, the Winter Soldier. He became the new Captain America to honor his friend Steve and he joined the Avengers. When Steve returned as Captain America, Bucky took on the identity of the Winter Soldier once again.', 'Bucky Barnes also has a left Cybernetic Arm that has a significant amount of strength.', 'BuckyBarnes.jpg', 1),
(4, 'Captain America', 'During World War II, Steve Rogers volunteered to receive the experimental Super-Soldier Serum. Enhanced to the pinnacle of human physical potential and armed with an unbreakable shield, he became Captain America. After a failed mission left him encased in ice for decades, he was found and revived by the Avengers. Later joining their ranks and eventually becoming the team\'s leader.', 'human physical potential and armed with an unbreakable shield.', 'CaptainAmerica.jpg', 1),
(5, 'Cyclops', 'The first X-Man, Scott Summers possesses the mutant ability to draw ambient energy from another dimension through his eyes which are actually portals to the dimension, he usually channels this energy into concussive force blasts. He is visually distinctive for the ruby quartz visor he wears to control his devastating power. A born leader, Cyclops succeeded his mentor Professor X to command the X-Men.', 'the mutant ability to draw ambient energy from another dimension through his eyes', 'Cyclops.jpg', 1),
(6, 'Daredevil', 'As a child, Matt Murdock was blinded by radioactive waste while trying to save an elderly stranger about to get hit by a truck carrying the dangerous material. In turn, his other senses were heightened to superhuman sharpness and he gained a form of \"radar sense\". By day, he is a successful trial lawyer; but by night, he guards Hell\'s Kitchen as Daredevil: the Man Without Fear.', 'his senses were heightened to superhuman sharpness and he gained a form of \"radar sense\". ', 'Daredevil.jpg', 2),
(7, 'Deadpool', 'Wade Wilson is a former test subject of the Weapon X program, where he received his regenerative healing factor through the scientific experiments conducted upon him. Deadpool\'s powers and personality traits combine to make a wild, mentally unstable, and unpredictable mercenary. Deadpool has been a member of X-Force and the Thunderbolts, and a self-professed member of the X-Men and the Avengers. The \"Merc with a Mouth\" is infamous for breaking the fourth wall.', 'Enhanced regeneration/healing factor.', 'Deadpool.jpg', 2),
(8, 'Doctor Strange', 'Dr. Stephen Strange was once a gifted but egotistical surgeon who sought out the Ancient One to heal his hands after they were wounded in a car accident. Instead, the Ancient One trained him to become Master of the Mystic Arts and the Sorcerer Supreme of Earth.', 'Master of the Mystic Arts, Doctor Strange is one of the most powerful sorcerers in the world.', 'DoctorStrange.jpg', 2),
(9, 'Gambit', 'A charming and master thief who joined the X-Men, Gambit possesses the mutant ability to charge inanimate objects with kinetic energy which causes them to explode (in fact, his signature move is throwing kinetically-charged playing cards at his opponents). Gambit is also extremely agile and hypnotically persuasive because of his powers.', 'Gambit is extremely agile and hypnotically persuasive because of his powers.', 'Gambit.jpg', 2),
(10, 'Hulk', 'After being bombarded with a massive dose of gamma radiation while saving a young man\'s life during the testing of an experimental bomb, Dr. Robert Bruce Banner was transformed into the Incredible Hulk: a green behemoth who is the living personification of rage and pure physical strength.', 'a green behemoth who is the living personification of rage and pure physical strength.', 'Hulk.jpg', 2),
(11, 'Human Torch', 'The second most powerful member of the Fantastic Four and the brother of Sue Richards. Due to an accident caused by cosmic radiation in space, he can manipulate fire, turn his entire body into it and fly. While Johnny is known for his impetuous and sometimes reckless nature, he is also a loyal friend and fearless hero.', 'he can manipulate fire, turn his entire body into it and fly.', 'HumanTorch.jpg', 3),
(12, 'Iceman', 'The youngest member of the original X-Men. Bobby is an Omega-level mutant, although it took some help from Emma Frost to realize this. Bobby\'s control of ice is vast; he can create shields, clones, spikes, slides and also freeze others. He currently teaches at the Jean Grey School for Higher Learning.', 'he can create shields, clones, spikes, slides and also freeze others.', 'Iceman.jpg', 3),
(13, 'Invisible Woman', 'Susan Storm is a founding member of the Fantastic Four and later the Future Foundation. She is able to create invisible force fields of any shape she conceives and able to turn herself and anything she\'s in contact with invisible. Sue is the wife of Reed Richards and the mother of their children, Franklin and Valeria.', 'She is able to create invisible force fields of any shape she conceives and able to turn herself and anything she\'s in contact with invisible.', 'InvisibleWoman.jpg', 3),
(14, 'Iron man', 'Tony Stark was the arrogant son of wealthy, weapon manufacturer Howard Stark. Tony cared only about himself, but he would have a change of heart after he was kidnapped by terrorists and gravely injured. Pressured to create a weapon of mass destruction, Stark instead created a suit of armor powerful enough for him to escape. Tony uses his vast resources and intellect to make the world a better place as the invincible Iron Man. Stark\'s super hero identity led him to become a founding member of the Avengers.', 'ressured to create a weapon of mass destruction, Stark instead created a suit of armor powerful enough for him to escape.', 'ironman.jpg', 3),
(15, 'MrFantastic', 'Reed Richards, also known as Mr. Fantastic, is the leader of the Fantastic Four. He can stretch his body to great distances due to his exposure to cosmic rays while in space. He is also considered to be one of the smartest men alive.', 'eed\'s defining quality is his vast intellect; the Intelligentsia considered him one among the eight smartest men in the world. ', 'MrFantastic.jpg', 3),
(16, 'Nick Fury', 'Nicholas Joseph Fury served in World War II as the leader of the Howling Commandos. He later became an agent, and eventually director, of S.H.I.E.L.D. Fury is one of the greatest strategic minds in the world, a born leader and a master of espionage. He currently serves as a replacement Watcher.', 'Though Nick Fury has no real super-human powers, he is in peak physical condition as a human. He is a skilled tactician and an experienced leader.', 'NickFury.jpg', 4),
(17, 'Nova', 'Richard Rider was a young teenager when he was granted the power of a Nova Centurion. He would have many adventures both on his own and with his peers among the New Warriors; Richard even became a member of the Avengers ever so briefly. He eventually became Nova-Prime, leader of the Nova Corps, where he established himself as a universally cosmic hero of immense power.', 'Nova derives his powers from a source known as the Nova Force, which is wielded by all members of the Nova Corps.', 'Nova.jpg', 4),
(18, 'Professor X', 'Professor Charles Xavier is the creator of the X-Men and founder of the Xavier School for Gifted Youngsters. His dream of peaceful coexistence between mutants and humanity has long been the driving force for the X-Men. An immensely powerful telepath and scientific genius, Xavier was among the world\'s greatest masterminds. Killed at the hands of a Phoenix crazed Cyclops, Xavier\'s memory and dream still remains and motivates his X-Men to keep fighting for a world that fears and hates them.', 'Professor X is one of the most powerful telepathic mutants in the world. He is an Omega Class Telepath, equaling Emma Frost\'s abilities.', 'Professor.jpg', 4),
(19, 'Punisher', 'After his family was killed by the mob, U.S. Marine Special Forces veteran Frank Castle vowed to avenge their deaths and became a one-man army in his personal war against the criminal underworld. With a distinct death\'s head skull adorning his chest, Frank Castle became the vigilante known as the Punisher.', 'Adaptive Agility Escape Artist Gadgets Intellect Marksmanship.', 'Punisher.jpg', 4),
(20, 'Silver Surfer', 'Norrin Radd of Zenn-La is the mighty herald of Galactus, the devourer of worlds. Gifted with the Power Cosmic and a trusty board that\'s faster than light speed which he can summon at will whenever needed, Norrin Radd travels to distant stars and throughout the universe as the Silver Surfer.', 'Silver Savage Skyrider Sentinel of the Spaceways Keeper.', 'SilverSurfer.jpg', 4),
(21, 'Spider-man', 'Peter Parker was bitten by a radioactive spider as a teenager, granting him spider-like powers. After the death of his Uncle Ben, which he could have prevented, Peter learned that \"with great power, comes great responsibility.\" Swearing to always protect the innocent from harm, Peter Parker became the Amazing Spider-Man!', 'Spider-Man possesses the proportionate powers of a spider, granted to him from an irradiated Common House Spider.', 'Spider-man.jpg', 5),
(22, 'Storm', 'Ororo Munroe is mutagenically imbued with the potent genetic disposition to manipulate the elemental forces that preside over the weather, in addition to other atmospheric phenomena. Having lived through a tumultuous life replete with successes and hardships, Storm; the thief, the princess, the once and future leader of mutant kind has eked her rightful place as one of the most influential women in the world. Her mandate is focused upon the safeguarding of her people, and the protection of Earth.', 'Multiple times over the years Storm has been called a \"sculptress\".', 'Storm.jpg', 5),
(23, 'Wasp', 'Genetically altered by Dr. Henry Pym, Janet Van Dyne gained the ability to alter her size, fly at rapid speeds and fire bio-electric energy \"stings\". Calling herself \"the Wasp\", she became Pym\'s superhero partner. Later, she became a founding member and the first female member of the Avengers.', 'Making use of sub-atomic Pym particles, the Wasp possesses the power to alter her physical size.', 'Wasp.jpg', 5),
(28, 'Thing', 'Ben Grimm, better known as the Thing, is the original quintessential tough-guy of the Marvel Universe. But, because of his transformation, he\'s also the tragic member of the Fantastic Four. Ben was an ace test-pilot until exposure to intense cosmic radiation mutated him into a rock-skinned monster with immense superhuman strength. Ben\'s exterior is much harder than stone which gives him a rather gruff disposition; but deep down, he has a heart of gold.', 'The Thing has immense superhuman strength. When he was first transformed into the Thing he could only lift 5 tons.', 'Thing.jpg', 5),
(29, 'Thor', 'Thor is the Asgardian God of Thunder, and the son of the All-Father of Asgard Odin and the Elder Earth-Goddess Gaea. Combining the powers of Asgard and Midgard (Earth), Thor is arguably the greatest defender of both worlds. Armed with his enchanted Uru hammer Mjolnir, which can only be lifted by those who are worthy, Thor is the mightiest warrior in all of Asgard. A staunch ally for good and one of the strongest beings on Earth, Thor is also a founding member of the Avengers.', 'Thor’s unique physiology of half-Asgardian and Half Elder God grants him the typical powers of an Asgardian God.', 'Thor.jpg', 5),
(32, 'Max martens', 'rare vogel, geen verstand van websites', 'Kindjes slaan', 'max.jpeg', 2),
(33, 'Teun van Haperen', 'Nog een rare vogel', 'nie veul', 'Teun2.jpg', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(3) NOT NULL COMMENT 'unique rating is, auto incremented',
  `heroId` int(3) NOT NULL COMMENT 'the heroId used as reference to the hero table, can''t be unique in thie table',
  `rating` int(3) NOT NULL COMMENT 'rating is defined as an integer from 0 (min) to 10 (max)',
  `ratingDate` datetime NOT NULL COMMENT 'the date of this rating. Dates are presented as an integer (timestamp) and displayed as a human readable date and time string using the PHP strftime() function',
  `ratingReview` text NOT NULL COMMENT 'a textual review added by the user\\nthe form where the user can rate the hero by using stars (radio-buttons)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `rating`
--

INSERT INTO `rating` (`ratingId`, `heroId`, `rating`, `ratingDate`, `ratingReview`) VALUES
(10, 1, 0, '2019-02-18 19:02:00', 'Great Hero'),
(11, 1, 0, '2019-02-18 19:02:00', 'Great Hero'),
(12, 1, 0, '2019-02-18 19:02:00', 'Great Hero'),
(13, 1, 0, '2019-02-18 19:02:00', 'This is the best hero from marvel'),
(14, 1, 0, '2019-02-18 20:57:24', 'Best Hero!'),
(15, 2, 0, '2019-02-18 20:58:32', 'Helloz1'),
(16, 2, 0, '2019-02-18 21:04:21', 'Helloz1'),
(17, 1, 0, '2019-02-18 21:18:32', 'ewrfsd'),
(18, 1, 0, '2019-02-18 21:18:40', 'sds'),
(19, 1, 0, '2019-02-18 21:19:23', 'sds'),
(20, 1, 0, '2019-02-18 21:19:27', 'Sick'),
(21, 1, 0, '2019-02-18 21:22:25', 'Sick'),
(22, 3, 0, '2019-02-19 08:46:57', 'Great Hero'),
(23, 14, 0, '2019-02-19 08:51:24', 'Steal man, Great!\r\n'),
(24, 1, 0, '2019-02-21 13:13:42', 'zfsdfsdfdsfsdfsadf'),
(25, 28, 0, '2019-02-21 13:24:30', 'Good'),
(26, 28, 4, '2019-02-21 13:31:58', ''),
(27, 28, 4, '2019-02-21 13:32:06', ''),
(28, 28, 4, '2019-02-21 13:33:29', ''),
(29, 28, 4, '2019-02-21 13:33:44', ''),
(30, 28, 4, '2019-02-21 13:34:14', ''),
(31, 28, 4, '2019-02-21 13:34:26', ''),
(32, 28, 4, '2019-02-21 13:34:44', ''),
(33, 28, 4, '2019-02-21 13:35:00', ''),
(34, 28, 4, '2019-02-21 13:35:09', ''),
(35, 28, 4, '2019-02-21 13:35:29', ''),
(36, 28, 4, '2019-02-21 13:35:42', ''),
(37, 28, 4, '2019-02-21 13:37:25', ''),
(38, 28, 4, '2019-02-21 13:40:27', ''),
(39, 21, 2, '2019-02-21 13:40:47', 'Good'),
(40, 21, 2, '2019-02-21 13:41:08', 'Good'),
(41, 21, 2, '2019-02-21 13:41:27', 'Good'),
(42, 21, 1, '2019-02-21 13:41:40', 'd'),
(43, 21, 5, '2019-02-21 13:41:53', 'sd'),
(44, 21, 5, '2019-02-21 13:42:36', 'sd'),
(45, 21, 4, '2019-02-21 13:42:42', 'Bad'),
(46, 21, 1, '2019-02-21 13:42:48', 'Good'),
(47, 23, 5, '2019-02-21 13:42:59', 'Good'),
(48, 32, 1, '2019-02-21 13:43:41', 'slecht'),
(49, 1, 3, '2019-02-21 13:50:06', 'dsfdfasdfd'),
(50, 1, 3, '2019-02-21 13:51:06', 'dsfdfasdfd'),
(51, 6, 4, '2019-02-21 13:53:07', ''),
(52, 6, 4, '2019-02-22 08:47:13', ''),
(53, 6, 3, '2019-02-22 08:48:56', 'NIce'),
(54, 6, 0, '2019-02-22 09:41:42', 'Good'),
(55, 6, 0, '2019-02-22 09:54:56', 'Good'),
(56, 6, 5, '2019-02-22 09:57:10', ''),
(57, 6, 5, '2019-02-22 09:57:23', ''),
(58, 6, 0, '2019-02-22 09:57:32', 'Good'),
(59, 6, 0, '2019-02-22 10:03:32', 'Good'),
(60, 6, 5, '2019-02-22 11:05:11', ''),
(61, 6, 5, '2019-02-22 11:05:35', ''),
(62, 6, 4, '2019-02-22 11:05:40', ''),
(63, 6, 4, '2019-02-22 11:06:22', ''),
(64, 6, 0, '2019-02-22 11:07:04', '\'\'\''),
(65, 6, 3, '2019-02-22 11:08:44', 'Eej'),
(66, 6, 3, '2019-02-22 11:09:09', 'Eej'),
(67, 32, 1, '2019-02-25 11:54:50', 'slecht'),
(68, 32, 2, '2019-02-25 11:55:23', 'goed'),
(69, 2, 5, '2019-02-27 13:05:01', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE `team` (
  `teamId` int(3) NOT NULL COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable',
  `teamName` varchar(50) NOT NULL COMMENT 'team name, just an ordinary string',
  `teamDescription` text NOT NULL COMMENT 'team description, just a string',
  `teamImage` varchar(100) NOT NULL COMMENT 'team image, stored as a string and used with the source of the HTML-tag'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`) VALUES
(1, 'X-Men', 'De filmserie X-Men is een reeks van live-action-verfilmingen van de superheldengroep X-Men van Marvel Comics. De films zijn alle geproduceerd door 20th Century Fox. De elfde film in de reeks kwam uit in 2018.', 'xmen.jpg'),
(2, 'Avengers', '', ''),
(3, 'Super-Heroes', '', ''),
(4, 'Bad Guys', '', ''),
(5, 'Strong People', '', '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`heroId`);

--
-- Indexen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexen voor tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `heroId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable', AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT voor een tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique rating is, auto incremented', AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT voor een tabel `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
