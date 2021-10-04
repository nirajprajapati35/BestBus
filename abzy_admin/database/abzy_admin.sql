-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 23, 2020 at 10:51 AM
-- Server version: 5.6.33
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abzy_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `abzy_social`
--

CREATE TABLE `abzy_social` (
  `id` int(11) NOT NULL,
  `social` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `updated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abzy_social`
--

INSERT INTO `abzy_social` (`id`, `social`, `url`, `image`, `created`, `updated`) VALUES
(1, 'youtube', 'https://www.youtube.com/watch?v=QmNQyyURypU', 'youtube.png', '22-01-2020', '22-01-2020'),
(2, 'instagram', 'https://www.instagram.com/imdb/?hl=en', 'instagram.PNG', '22-01-2020', ''),
(3, 'facebook', 'https://www.facebook.com/AsifDishNetwork/posts/2626633800722221', 'facebook.PNG', '22-01-2020', ''),
(4, 'tiktok', 'https://www.tiktok.com/@piyushnagar77/video/6782116473985879297', 'Tik-Tok-Image (1).png', '22-01-2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `abzy_winner`
--

CREATE TABLE `abzy_winner` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `updated_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abzy_winner`
--

INSERT INTO `abzy_winner` (`id`, `file`, `status`, `created_date`, `updated_date`) VALUES
(2, 'caro-img-09.png', 1, '20-01-2020', '23-01-2020'),
(3, 'Cadbury-Box-image.png', 0, '23-01-2020', '23-01-2020'),
(4, 'Winner-Box-image.png', 0, '22-01-2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `updated` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL,
  `commentflag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `image`, `description`, `created_by`, `created`, `updated`, `flag`, `commentflag`) VALUES
(1, 'Varun Dhawan opens up about his crush on Shraddha Kapoor?', 'caro-img-01.png', '<p>Dancer 3D and also being colleagues, Varun and Shraddha have been childhood friends, and known each other since a long time. Currently, Shraddha and Varun are hectic with the promotions of the movie and during a latest media chat, both disclosed that they had a crush on each other when they were little, but never did anything about it.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Varun revealed that Shraddha and his bachpan ki story was filmy because while initially, there was inter-school rivalry but deep down, there was some hidden fondness as well for each other. Also, Varun Dhawan revealed further that despite being fond of each other, they both never acted on it. When Varun was questioned as to why he not expressed his feelings for Shraddha, he told that at that age, boys don&rsquo;t like girls and since they were all too young, he didn&rsquo;t understand it. Later, when Shraddha was questioned if she would have said yes to him, if Varun would have asked her on a date, Shraddha disclosed that she only liked Varun and at that age, she could not see beyond him.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Now since Varun Dhawan and Shraddha Kapoor didn&rsquo;t express their fondness for each other when they were 8-9 years old, Varun revealed that they ended up becoming great friends.</p>\r\n', '', '18-01-2020', '', 1, 1),
(5, 'What is Movie Reviews?', 'blog-image01.png', 'Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla onsequat massa quis enim. Donec pede justo fringilla vel aliquet nec vulputate eget. Lorem ispum dolore siamet ipsum dolor.\r\nEt harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumquer nihil impedit quo minus id quod maxime placeat facere.\r\nBE THE CHANGE YOU WANT TO SEE IN THE WORLD\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur reprehenderit qui in ea voluptate velit esse quam nihil.\r\nYou will never be happy if you continue to search for what happiness consists of. You will never live if you are looking for the meaning of life.\r\nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', '', '18-01-2020', '', 0, 0),
(8, 'test', 'amul-post.png', 'Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla onsequat massa quis enim. Donec pede justo fringilla vel aliquet nec vulputate eget. Lorem ispum dolore siamet ipsum dolor.\r\nEt harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumquer nihil impedit quo minus id quod maxime placeat facere.\r\nBE THE CHANGE YOU WANT TO SEE IN THE WORLD\r\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur reprehenderit qui in ea voluptate velit esse quam nihil.\r\nYou will never be happy if you continue to search for what happiness consists of. You will never live if you are looking for the meaning of life.\r\nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', 'admin@admin.com', '18-01-2020', '', 19, 2),
(9, 'The End of Filmy Love Story', 'caro-img-12.png', 'Success stories are good to delineate emerging trends during the year. But there also failures that enunciate a big story.\r\n\r\n&nbsp;\r\n\r\nPal Pal Dil Ke Paas&nbsp;hardly made any mark at the Box-office.&nbsp;However, for those searching for successful ideas at the Box-office, it did make a mark. PPDPK&rsquo;s performance beguiled the end of an era in Hindi cinema that had gained momentum in 1960s.\r\n\r\n&nbsp;\r\n\r\nRomantic films have been charting success stories since 1960s. Their success ratio became so high that love story became the&nbsp;de facto&nbsp;launch theme for star kids (Rishi Kapoor, Kumar Gaurav, Sanjay Dutt, Sunny Deol, Amir Khan). Even proven actors like Kamal Hassan chose not to risk other themes.\r\n\r\n&nbsp;\r\n\r\nNo wonder, amongst the most recommended Hindi films on the internet, the share of romantic films is 40-50% for films released during 60s, 70s and 80s. For 90s, this figure is even higher at 70%. It falls to about 25% for 2001-2019 releases. Not surprisingly, average annual production of romantic films has come down from 20-25 (during 60s-90s) to 8 in 2018 and to 5 in 2019.\r\n\r\n&nbsp;\r\n\r\nFilms reflect societal trends and vice versa. In Indian society, during 50s, love story was largely an abstract concept talked about only in&nbsp;folklore and mythology (Heer Ranjha, Laila Majnu, Dhola Maru, Nala Damayanti&nbsp;et al). In real world, romantic relationships existed only post-marriage.', 'admin@admin.com', '18-01-2020', '', 25, 3),
(10, 'Bhumi Pednekar shares her views on gender parity!', 'caro-img-11.png', 'Bollywood star Bhumi Pednekar reveals that she is happy that she is working in times where similar chances have opened up for both male and female actors.\r\n\r\n&nbsp;\r\n\r\n&quot;Gender parity is one topic that&#39;s significant to me. I am glad to be working in times where similar opportunities have opened up for both male and female actors and I hope this spills over to the society as well,&quot; Bhumi revealed during a media chat.\r\n\r\n&nbsp;\r\n\r\n&quot;I am sure this show will help trigger more acceptance towards gender equality,&quot; she further told while speaking about the show, with which she is associated as a cause ambassador.', 'admin@admin.com', '18-01-2020', '', 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_form`
--

CREATE TABLE `blog_form` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `flag` int(11) NOT NULL,
  `created` varchar(255) NOT NULL,
  `blogtime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `blog_form`
--

INSERT INTO `blog_form` (`id`, `blog_id`, `name`, `email`, `comment`, `flag`, `created`, `blogtime`) VALUES
(2, 10, 'deepa', 'umeshp@esskay.in', 'I read this post i am bigfan of madhuri dixit .', 1, '18-01-2020', ''),
(5, 10, 'Sonali Sumedh Kamble', 'deepakamble281@gmail.com', 'nice post', 2, '18-01-2020', ''),
(6, 8, 'sushmar', 'test@test.com', 'good mormning', 1, '18-01-2020', '16:02:45'),
(7, 9, 'kesar', 'kesar@test.com', 'goode eveniong', 0, '18-01-2020', '16:19:01'),
(8, 8, 'test', 'test123@test.com', 'nice post', 0, '18-01-2020', '16:19:34'),
(9, 8, 'test', 'test123@test.com', 'nice post', 0, '18-01-2020', '16:19:44'),
(10, 1, 'Deepika Sumedh Kamble', 'prasad@turtlenode.com', 'nice movie and nice actresss', 0, '18-01-2020', '16:20:26'),
(11, 9, 'dee', 'test@test.com', 'rwsdsd', 0, '23-01-2020', '16:56:24'),
(12, 9, 'deeps', 'test@test.com', 'test', 0, '23-01-2020', '16:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `bollywood_spl`
--

CREATE TABLE `bollywood_spl` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `updated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bollywood_spl`
--

INSERT INTO `bollywood_spl` (`id`, `image`, `created`, `updated`) VALUES
(12, '23-01-2020_carousel-05.png', '22-01-2020', ''),
(13, '23-01-2020_caro-img-03.png', '22-01-2020', ''),
(14, '22-01-2020_caro-img-04.png', '22-01-2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `box_office`
--

CREATE TABLE `box_office` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `update` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `box_office`
--

INSERT INTO `box_office` (`id`, `image`, `title`, `created`, `update`) VALUES
(2, 'Box-office.png', '', '15-01-2020', ''),
(4, 'blog-image01.png', '', '17-01-2020', ''),
(5, 'slider.jpg', '', '17-01-2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `commercial`
--

CREATE TABLE `commercial` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `commercial` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `updated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial`
--

INSERT INTO `commercial` (`id`, `image`, `commercial`, `created`, `updated`) VALUES
(6, '22-01-2020_Amul-banner-Img.png', '1', '22-01-2020', ''),
(7, '22-01-2020_Amul-banner-Block-2.png', '2', '22-01-2020', ''),
(8, '22-01-2020_Cadbury-Box-image.png', '3', '22-01-2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `g_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `updated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`g_id`, `file`, `category`, `created`, `updated`) VALUES
(2, 'caro-img-08.png', 'wallpaper', '20-01-2020', ''),
(3, 'Sleep Away.mp3', 'ringtone', '20-01-2020', ''),
(4, 'SampleVideo_1280x720_1mb.mp4', 'video', '20-01-2020', '20-01-2020'),
(5, 'caro-img-04.png', 'wallpaper', '20-01-2020', ''),
(6, 'Movie-of-the-Week.png', 'wallpaper', '22-01-2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu_category`
--

CREATE TABLE `menu_category` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `manu_url` varchar(255) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `updated_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movie_master`
--

CREATE TABLE `movie_master` (
  `id` int(11) NOT NULL,
  `movie_code` varchar(11) NOT NULL,
  `movie_title` varchar(255) NOT NULL,
  `star_cast` varchar(255) NOT NULL,
  `movie_year` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `movieweek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_master`
--

INSERT INTO `movie_master` (`id`, `movie_code`, `movie_title`, `star_cast`, `movie_year`, `image`, `movieweek`) VALUES
(1, '102', 'PREM TAPASYA', 'Jeetendra, Rekha', '1983', 'download.jpg', 0),
(2, '103', 'PYAR KI KAHANI', 'Amitabh Bachchan, Tanuja, Farida Jalal', '1971', 'download.jpg', 0),
(3, '104', 'SAAT HINDUSTANI', 'Amitabh Bachchan, Madhu, Uttpal Dutt', '1969', 'download.jpg', 0),
(4, '105', 'SHESHNAAG', 'Jeetendra, Rekha, Rishi Kapoor, Anupam Kher ', '1990', 'download.jpg', 0),
(5, '106', 'SUHAAG RAAT', 'Jeetendra, Rajshree, Sulochana Latkar, Tun Tun, Mehmood, Laxmi Chhaya', '1968', 'download.jpg', 0),
(6, '107', 'SUHANA SAFAR', 'Shashi Kapoor, Sharmila Tagore', '1970', 'download.jpg', 0),
(7, '108', 'SURAKSHA', 'Mithun Chakraborty, Ranjeet, Jagdeep', '1979', 'image1.png', 0),
(8, '109', 'TAWAIF', 'Rishi Kapoor, Poonam Dhilon, Rati Agnihotri ', '1985', 'download.jpg', 0),
(9, '110', 'TERI PAYAL MERA GEET', 'Govinda, Meenakshi Shehhadri, Kader Khan', '1993', 'download.jpg', 0),
(10, '111', 'THODI SI BEWAFAI', 'Rajesh Khanna, Shabana, Padmini Kolhapure', '1980', 'download.jpg', 0),
(11, '112', 'WANTED', 'Tina Munim, Mithun Chakraborty', '1983', 'download.jpg', 0),
(12, '113', 'YAADON KI KASAM', 'Mithun Chakraborty, Zeenat Aman', '1985', 'download.jpg', 0),
(13, '114', 'SANGRAM', 'Ajay Devgan, Karisma Kapoor, Ayesha Jhulka', '1993', 'download.jpg', 0),
(14, '115', 'BALMAA', 'Avinash Wadhwan, Ayesha Jhulka', '1992', 'download.jpg', 1),
(15, '116', 'DHAAL', 'Suniel Shetty, Vinod Khanna, Danny Gonzappa, Amresh Puri', '1997', 'dhaal.jpg', 0),
(16, '117', 'ZOR LAGAA KE...HAIYA!', 'Mithun Chakraborty, Riya Sen, Gulshan Grover', '2009', 'download.jpg', 0),
(17, '118', 'APMAAN KI AAG', 'Govinda, Sonam', '1990', 'download.jpg', 0),
(18, '119', 'ANSH: The Deadly Part', 'Om Puri, Ashutosh Rana, Sharba Mukherjee', '2002', 'download.jpg', 0),
(19, '120', 'HAWALAAT', 'Mithun Chakraborty, Mandakini, Padmini Kolhapure, Shatrugan Sinha', '1987', 'download.jpg', 0),
(20, '121', 'KRANTI KSHETRA', 'Pooja Bhatt, Mithun Chakraborty, Shakti Kapoor, Gulshan Grover', '1994', 'kranti-shetr.jpg', 0),
(21, '122', 'PEHLA PEHLA PYAR', 'Rishi Kapoor, Tabu, Anupam Kher', '1994', 'download.jpg', 0),
(22, '123', 'YE AAG KAB BHUJHEGI', 'Sunil Dutt, Rekha, Shiba', '1991', 'download.jpg', 0),
(23, '124', 'SIR UTHA K JIO', 'Naseeruddin Shah, Madhoo, Raza Murad', '1998', 'download.jpg', 0),
(24, '125', 'LAHU KE DO RANG', 'Vinod Khanna, Shabana Azmi, Helen', '1979', 'download.jpg', 0),
(25, '126', 'DIL JALA', 'Jackie Shroff, Farha', '1987', 'diljala.jpg', 0),
(26, '127', 'MAFIA RAAJ', 'Mithun Chakraborty, Ayesha Julka, Kiran Kumar', '1990', 'download.jpg', 0),
(27, '128', 'MERI BIWI KA JAWAB NAHI', 'Akshay Kumar, Sridevi', '2004', 'download.jpg', 0),
(28, '129', 'DULHAN DILWALE KI ', 'Venkatesh, Preity Zinta, Srihari, Brahmanandam', '2001', 'download.jpg', 0),
(29, '130', 'JAAL SAAZ ', 'Ronit Roy, Madhu, Kamal Sadana, Mukesh Khanna', '2000', 'download.jpg', 0),
(30, '131', 'UTTAR DAKSHIN', 'Rajnikant, Jackie Shroff, Madhuri Dixit,Bharathi', '1987', 'download.jpg', 0),
(31, '132', 'AGAR TUM NA HOTE', 'Rajesh Khanna, Rekha, Raj Babbar ', '1983', 'download.jpg', 0),
(32, '133', 'HAATHI MERA SAATHI', 'Rajesh Kanna, Tanuja, Madan Puri, Sujit, David, K.N Singh', '1971', 'download.jpg', 0),
(33, '134', 'MAIN AWARA HOON', 'Sanjay Dutt, Rati Agnihotri, Raj Babbar, Jaya Prada', '1983', 'download.jpg', 0),
(34, '135', 'MUMBAI KI KIRAN BEDI', 'Ramkumar, Arunthathi, Naan Kadavul', '2016', 'poster-img07.png', 0),
(35, '136', 'SHAANDAR', 'Mithun Chakraborthy, Juhi Chawla', '1990', 'download.jpg', 0),
(36, '137', 'PYAR KE KABIL', 'Rishi Kapoor, Padmini Kolhapure', '1987', 'download.jpg', 0),
(37, '138', 'AWAAZ', 'Rajesh Khanna, Jaya Pradha, Rakesh Roshan', '1984', 'download.jpg', 0),
(38, '139', 'DHARAM ADHIKAARI', 'Dilip Kumar, Sridevi, Kader Khan', '1986', 'download.jpg', 0),
(39, '140', 'MY DEAR BIG B', 'Madhavan, Bhavna, Prakash Raj, Tejashree', '2007', 'download.jpg', 0),
(40, '141', 'KHONKAR HASINA', 'Ali Bastian, Marc Baylis', '2016', 'download.jpg', 0),
(41, '142', 'MERA SAAYA', 'Sunil Dutt, Sarika', '1966', 'download.jpg', 0),
(42, '143', 'SINDOOR', 'Govinda, Neelam, Jaya Prada', '1987', 'download.jpg', 0),
(43, '144', 'KAALI TOPI LAAL RUMAAL', 'Mithun Chakraborhy, Kamal Sadanah', '2000', 'download.jpg', 0),
(44, '145', 'JANAM KUNDLI', 'Jeetendra, Ann Agarwal, Vinod Khanna, Reena Roy, Paresh Raval', '1995', 'download.jpg', 0),
(45, '146', 'GURU MAHAAGURU', 'Naseeruddin Shah, Om Puri, Ashutosh Rana', '2002', 'download.jpg', 0),
(46, '147', 'JO DAAR GAYA WHO MAR GAYA', 'Kamal Hassan, Sridevi', '2007', 'download.jpg', 0),
(47, '148', 'JAN BAAZ POLICE OFFICER (Dubbed-Hindi)', 'Cythia Luster, John Cheung, Sharon Young Godfrey Jo', '2015', 'download.jpg', 0),
(48, '149', 'AAR PAAR', 'Mithun Chakraborty, Roshima, Utpal Dutt', '1985', 'download.jpg', 0),
(49, '150', 'VICHITRA DUNIYA', 'David Thewlis, Katie Carr, Tyron Leitso', '2012', 'download.jpg', 0),
(50, '151', 'AAKHRI GHULAM', 'Anupam Kher, Shakti Kapoor, Raj Babbar, Moushmi Chatterjee, Anupam Kher', '1989', 'download.jpg', 0),
(51, '152', 'DHAYAM', 'Santosh Rathap, Jayakumar, Jeeva Ravi', '2016', 'download.jpg', 0),
(52, '153', 'PAAP KO JALAKAR RAAKH KAR DOONGA', 'Dharmendra, Govinda, Anita Raj, Tanuja', '1988', 'download.jpg', 0),
(53, '154', 'DUSHMAN', 'Rajesh Khanna, Mumtaz, Meena Kumari', '1972', 'download.jpg', 0),
(54, '155', 'RAASTE KA PATHAR', 'Amitabh Bachchan, Shatrughan Sinha', '1983', 'download.jpg', 0),
(55, '156', 'GHAR EK MANDIR', 'Shashi Kapoor, Moushumi Chatterjee, Mithun Chakraborty', '1984', 'download.jpg', 0),
(56, '157', 'BHAGYAWAN', 'Govinda, Juhi Chawla, Pran, Asha Parekh', '1994', 'download.jpg', 0),
(57, '158', 'BUS PARTY TO HELL (Dubbed-Hindi)', 'Stefani Blake, Shelby McCullough, Vidonna Michaels', '2017', 'download.jpg', 0),
(58, '159', 'GLAMOUR GIRL', 'Ronit Roy, Rohit Roy, Ritu Shivpuri, Dolly Bindra', '2000', 'download.jpg', 0),
(59, '160', 'ANJAAM', 'Shashi Kapoor, Hema Malini', '1987', 'download.jpg', 0),
(60, '161', 'JAANE ANJAANE', 'Shammi Kapoor, Leena Chandravarkar, Vinod Khanna, Helen', '1971', 'download.jpg', 0),
(61, '162', 'HONEYMOON', 'Rishi Kapoor, Ashwini Bhave', '1992', 'download.jpg', 0),
(62, '163', 'KAISE KAISE RISHTEY', 'Ayesha Jhulka, Kiran Kumar, Shakti Kapoor', '1993', 'download.jpg', 0),
(63, '164', 'DHARAM ADHIKARI', 'Dilip Kumar, Jitendra, Sridevi, Kadar Khan, Pran, Shakti Kapoor', '1986', 'download.jpg', 0),
(64, '165', 'DO AUR DO PAANCH', 'Amithabh Bachan, Shashi Kapoor, Hema Malini,Kader Khan', '1980', 'download.jpg', 0),
(65, '166', 'MAA', 'Dharmendhra, Hema Malini, Nerupa Roy, Ranjeet,  Jaysreeti, Om Prakash, ', '1976', 'download.jpg', 0),
(66, '167', 'EK AUR JUNG', 'Dharmendra, Raj Babbar, Sheeba, Mukesh Khanna, Kiran Kumar', '2001', 'download.jpg', 0),
(67, '168', 'AAKHRI BAAZI', 'Govinda, Shatrughan Sinha, Moushumi Chatterjee, Mandakini', '1989', 'download.jpg', 0),
(68, '169', 'PYARI BEHENA', 'Mithun Chakarborty, Padmini Kolhapure, Vinod Mehra', '1985', 'download.jpg', 0),
(69, '170', 'KHAWAB', 'Mithun Chakarborty, Ranjeeta, Nasiuddin Shah.', '1980', 'download.jpg', 0),
(70, '171', 'IMAAN DHARAM', 'Amitabh Bachchan, Aparna Sen, Shashi Kapoor', '1977', 'download.jpg', 0),
(71, '172', 'HIMMAT AUR MEHANAT', 'Jeetendra, Shridevi, Shammi Kapoor', '1987', 'download.jpg', 0),
(72, '173', 'MAHAAN', 'Amitabh Bachchan, Waheeda Rehman, Parveen Babi, Zeenat Aman', '1983', 'download.jpg', 0),
(73, '174', 'DIL KI BAAZI', 'Akshay Kumar, Ayesha Jhulka Avinash Wadhawan', '1993', 'download.jpg', 0),
(74, '175', 'DO CHEHRE', 'Sunil Shetty, Shatrughan Sinha, Raveena Tandon, Kiran Kumar', '2012', 'download.jpg', 0),
(75, '176', 'AAG AUR CHINGAARI', 'Ravi Kisan, Kiran Kumar, Paresh Rawal, Shakti Kapoor, Asrani, Aprajeta, Kunal Singh', '1993', 'download.jpg', 0),
(76, '177', 'ZEHREELA JUNGLE (Dubbed-Hindi)', 'Tony Carney, Manaswee Krittanookul, Supaksorn Chaimongkol, Greg Eismin', '2006', 'download.jpg', 0),
(77, '178', 'INQUILAAB', 'Amitabh Bachchan, Sridevi', '1984', 'download.jpg', 0),
(78, '179', 'SAFAR', 'Rajesh Khanna, Sharmila Tagore, Firoz Khan', '1980', 'download.jpg', 0),
(79, '180', 'DARD KA RISHTA', 'Sunil Dutt, Reena Roy, Smita Patil, Padmini Kolhapure, Baby Khushboo', '1982', 'download.jpg', 0),
(80, '181', 'HERO HINDUSTANI', 'Arshad Warshi, Namrata Shirodkar, Paresh Rawal', '1998', 'kanoon.jpg', 0),
(81, '182', 'IMTIHAAN', 'Vinod Khanna, Tanuja', '1974', 'download.jpg', 0),
(82, '183', 'AJNABEE', 'Rajesh Khanna, Zeenat Aman', '1974', 'download.jpg', 0),
(83, '184', 'KANOON', 'Ajay Devgn, Urmila Matondkar', '1994', 'kanoon.jpg', 0),
(84, '185', 'PREMYOG', 'Rishi Kapoor, Shammi Kapoor, Prem Chopra, Madhoo', '1994', 'download.jpg', 0),
(85, '186', 'NEW DELHI', 'Jitendra, Sumalatha, Suresh Gopi Raza', '1988', 'download.jpg', 0),
(86, '187', 'HUM DONO', 'Rajesh Khanna, Hema Malini, Reena Roy', '1985', 'download.jpg', 0),
(87, '188', 'MERA FARZ', 'Nagarjun, Sridevi, Amrish Puri', '1989', 'download.jpg', 0),
(88, '189', 'FARZ', 'Jeetendra, Babita, Aruna Irani', '1967', 'download.jpg', 0),
(89, '190', 'JANTA HAWALDAR', 'Rajesh Khanna, Hema Malini, Ashok Kumar', '1979', 'download.jpg', 0),
(90, '191', 'KHANDAAN', 'Sunil Dutt, Nutan, Om Prakash', '1969', 'download.jpg', 0),
(91, '192', 'KHOON KA RISHTA', 'Jeetendra, Neetu Singh, Amjad Khan', '1981', 'download.jpg', 0),
(92, '193', 'RAJ KUMAR', 'Shammi Kapoor, Sadhana, Pran', '1964', 'download.jpg', 0),
(93, '194', 'RESHAM KI DORI', 'Dharmendra, Sairabano, Sujit Kumar', '1974', 'download.jpg', 0),
(94, '195', 'SANJOG', 'Jeetendra, Jay Prada', '1985', 'download.jpg', 0),
(95, '196', 'SANYASI', 'Manoj Kumar, Hema Malini, Prem Chopra', '1975', 'download.jpg', 0),
(96, '197', 'SHALIMAR', 'Dharmendra, Zeenat Aman, Shammi Kapoor', '1978', 'download.jpg', 0),
(97, '198', 'SITARA', 'Mithun Chakraborty, Zarina Waheb', '1980', 'download.jpg', 0),
(98, '199', 'TOHFA', 'Jeetendra, Shridevi, Jay Prada, Kader Khan', '1984', 'download.jpg', 0),
(99, '200', 'YEH RAAT PHIR NA AAYEGI', 'Jeetendra, Meenakshi Sheshadri, Aruna Irani', '1992', 'download.jpg', 0),
(100, '201', 'ZINDAGANI', 'Mithun Chakraborty, Rati Agnihotri', '1986', 'download.jpg', 0),
(101, '202', 'ZULAM KI ZANJEER ', 'Chiranjeevi, Rajnikant, Shri Devi, Jai Lalita', '1969', 'download.jpg', 0),
(102, '203', 'JAANBAAZ HASEENAYEN', 'Ramba Jyoti Ka, Laila', '2010', 'download.jpg', 0),
(103, '204', 'JEEVAN DAATA', 'Chunky Pandey, Kimi Katkar, Aditya Pancholi, Sonu Walia', '1991', 'download.jpg', 0),
(104, '205', 'KAMA SUTRA: A TELE OF LOVE', 'Rekha, Naveen, Andrew, Indira Verma', '1996', 'download.jpg', 0),
(105, '206', 'CRASH POINT (Dubbed-Hindi)', 'Rekha, Naveen, Andrew, Indira Verma', '2011', 'download.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movie_shows`
--

CREATE TABLE `movie_shows` (
  `id` int(11) NOT NULL,
  `movie_code` varchar(255) NOT NULL,
  `movie_date` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `startdate` varchar(255) NOT NULL,
  `enddate` varchar(255) NOT NULL,
  `slot_duration` varchar(255) NOT NULL,
  `FCT` varchar(255) NOT NULL,
  `movie_dur` varchar(100) NOT NULL,
  `movie_starttime` varchar(255) NOT NULL,
  `movie_title` varchar(255) NOT NULL,
  `star_cast` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created` varchar(255) NOT NULL,
  `updated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_shows`
--

INSERT INTO `movie_shows` (`id`, `movie_code`, `movie_date`, `start_time`, `end_time`, `startdate`, `enddate`, `slot_duration`, `FCT`, `movie_dur`, `movie_starttime`, `movie_title`, `star_cast`, `image`, `status`, `created`, `updated`) VALUES
(17, '102', '19-01-2020', '6:29:00', '9:12:00', '2020-01-19 6:29:00', '2020-01-19 9:12:00', '2:43:00', '0:40:00', '2:03:00', '', 'AZAD DESH KA ANDHA KANOON', 'CHIRANJEEVI, SRIDEVI, SHARAD SAXENA', '', 0, '', ''),
(18, '103', '19-01-2020', '9:12:00', '12:00:00', '2020-01-19 9:12:00', '2020-01-19 12:00:00', '2:48:00', '0:40:00', '2:08:00', '', 'DIL KI BAAZI', 'AKSHAY KUMAR, AYESHA JHULKA AVINASH WADHAWAN', '', 0, '', ''),
(19, '104', '19-01-2020', '12:00:00', '15:02:00', '2020-01-19 12:00:00', '2020-01-19 15:02:00', '3:02:00', '0:45:00', '2:17:00', '', 'LAILA MAJNU', 'RISHI KAPOOR, RANJEETA, DANNY DENZONGPA, ARUNA IRANI, RAZA MURAD', '', 0, '', ''),
(20, '105', '19-01-2020', '15:02:00', '18:01:00', '2020-01-19 15:02:00', '2020-01-19 18:01:00', '2:59:00', '0:40:00', '2:19:00', '', 'MAFIA RAAJ', 'MITHUN CHAKRABORTY, AYESHA JULKA KIRAN KUMAR', '', 0, '', ''),
(21, '106', '19-01-2020', '18:01:00', '21:02:00', '2020-01-19 18:01:00', '2020-01-19 21:02:00', '3:01:00', '0:40:00', '2:21:00', '', 'ANSH THE DEADLY PART', 'OM PURI, ASHUTOSH RANA', '', 0, '', ''),
(22, '107', '19-01-2020', '21:02:00', '23:35:00', '2020-01-19 21:02:00', '2020-01-19 23:35:00', '2:33:00', '0:45:00', '1:48:00', '', 'AITBAAR', 'RAJ BABBAR,DIMPLE KAPADIYA, SURESH OBEROI,DANNY DENZOGPA', '', 0, '', ''),
(23, '108', '20-01-2020', '23:35:00', '1:41:00', '2020-01-19 23:35:00', '2020-01-20 1:41:00', '2:06:00', '0:00:00', '2:06:00', '', 'AGNEE MORCHA', '', '', 0, '', ''),
(24, '109', '20-01-2020', '1:41:00', '2:36:00', '2020-01-20 1:41:00', '2020-01-20 2:36:00', '0:55:00', '0:00:00', '0:55:00', '', 'SUNEHARI YAADEIN', 'DHARMENDRA, RAVI KISHAN,\nMUKESH KHANNA & OTHERS.', '', 0, '', ''),
(25, '110', '20-01-2020', '2:36:00', '4:44:00', '2020-01-20 2:36:00', '2020-01-20 4:44:00', '2:08:00', '0:00:00', '2:08:00', '', 'NAALAYAK', 'JEETENDRA, LEENA CHANDRAVARKAR', '', 0, '', ''),
(26, '111', '20-01-2020', '4:44:00', '6:52:00', '2020-01-20 4:44:00', '2020-01-20 6:52:00', '2:08:00', '0:00:00', '2:08:00', '', 'IMAAN DHARAM', 'AMITABH BACHCHAN, APARNA SEN, SHASHI KAPOOR', '', 0, '', ''),
(27, '112', '20-01-2020', '6:52:00', '9:43:00', '2020-01-20 6:52:00', '2020-01-20 9:43:00', '2:51:00', '0:40:00', '2:11:00', '', 'BILLA NO. 786', 'MITHUN CHAKRABORTY, GAJENDRA CHOUHAN, SIDDHARTH DHAWAN, KADER KHAN', '', 0, '', ''),
(28, '113', '20-01-2020', '9:43:00', '12:26:00', '2020-01-20 9:43:00', '2020-01-20 12:26:00', '2:43:00', '0:40:00', '2:03:00', '', 'BHAGYAWAN', 'GOVINDA, JUHI CHAWLA, PRAN, ASHA PAREKH ', '', 0, '', ''),
(29, '114', '20-01-2020', '12:26:00', '15:23:00', '2020-01-20 12:26:00', '2020-01-20 15:23:00', '2:57:00', '0:45:00', '2:12:00', '', 'PET PYAR AUR PAAP', 'RAJ BABBAR,SMITA PATIL,MOUSHMI CHATTERJEE', '', 0, '', ''),
(30, '115', '20-01-2020', '15:23:00', '18:16:00', '2020-01-20 15:23:00', '2020-01-20 18:16:00', '2:53:00', '0:40:00', '2:13:00', '', 'YUVRAAJ', 'VINOD KHANNA, NEETU SINGH, KABIR BEDI, ARUNA IRANI', '', 0, '', ''),
(31, '116', '20-01-2020', '18:16:00', '21:19:00', '2020-01-20 18:16:00', '2020-01-20 21:19:00', '3:03:00', '0:40:00', '2:23:00', '', 'GHAR SANSAR', 'JEETENDRA,SRI DEVI,KADAR KHAN', '', 0, '', ''),
(32, '117', '20-01-2020', '21:19:00', '0:19:00', '2020-01-20 21:19:00', '2020-01-20 0:19:00', '3:00:00', '0:45:00', '2:15:00', '', 'DHARAVI', 'OM PURI, SHABANA AZMI', '', 0, '', ''),
(33, '118', '21-01-2020', '0:19:00', '2:29:00', '2020-01-21 0:19:00', '2020-01-21 2:29:00', '2:10:00', '0:00:00', '2:10:00', '', 'KAB HOKHI MUKTI HAMAAR', 'RAGHAV LAWRENCE, VEDHIKA, RAJKIRAN, VINU CHAKRAVARTHY, KOVI SARALA, DHANDAPANI, RAHUL DEV', '', 0, '', ''),
(34, '119', '21-01-2020', '2:29:00', '2:39:00', '2020-01-21 2:29:00', '2020-01-21 2:39:00', '0:10:00', '0:00:00', '0:10:00', '', 'SUNEHARI YAADEIN', '', '', 0, '', ''),
(35, '120', '21-01-2020', '2:39:00', '4:39:00', '2020-01-21 2:39:00', '2020-01-21 4:39:00', '2:00:00', '0:00:00', '2:00:00', '', 'KANDAHAR', 'AMITABH BACHCHAN , MOHANLAL', '', 0, '', ''),
(36, '121', '21-01-2020', '4:39:00', '6:58:00', '2020-01-21 4:39:00', '2020-01-21 6:58:00', '2:19:00', '0:00:00', '2:19:00', '', 'LAHU KE DO RANG', 'VINOD KHANNA, SHABANA AZMI, HELEN, DANNY DENZONGPA', '', 0, '', ''),
(37, '122', '21-01-2020', '6:58:00', '9:53:00', '2020-01-21 6:58:00', '2020-01-21 9:53:00', '2:55:00', '0:40:00', '2:15:00', '', 'AWAAZ', 'RAJESH KHANNA,JAYAPRADHA, RAKESH ROSHAN,', '', 0, '', ''),
(38, '123', '21-01-2020', '9:53:00', '12:44:00', '2020-01-21 9:53:00', '2020-01-21 12:44:00', '2:51:00', '0:40:00', '2:11:00', '', 'DHARAM ADHIKARI', 'DILIP KUMAR, JITENDRA, SRIDEVI, KADAR KHAN,PRAN SHAKTI KAPOOR', '', 0, '', ''),
(39, '124', '21-01-2020', '12:44:00', '15:22:00', '2020-01-21 12:44:00', '2020-01-21 15:22:00', '2:38:00', '0:45:00', '1:53:00', '', 'AAKHRI GHULAM', 'MITHUN CHAKARVARTI, SONAM ', '', 0, '', ''),
(40, '125', '21-01-2020', '15:22:00', '18:15:00', '2020-01-21 15:22:00', '2020-01-21 18:15:00', '2:53:00', '0:40:00', '2:13:00', '', 'KANOON', 'AJAY DEVGAN. URMILA MATONDKAR', '', 0, '', ''),
(41, '126', '21-01-2020', '18:15:00', '21:01:00', '2020-01-21 18:15:00', '2020-01-21 21:01:00', '2:46:00', '0:40:00', '2:06:00', '', 'DHAAL', 'SUNIL SHETTY, VINOD KHANNA, GAUTTAMI, AMRISH PURI, DANNY DENZONGPA, ARUN GOVIL, KANIKA', '', 0, '', ''),
(42, '127', '21-01-2020', '21:01:00', '23:55:00', '2020-01-21 21:01:00', '2020-01-21 23:55:00', '2:54:00', '0:45:00', '2:09:00', '', 'DILJALA', 'JACKIE SHROFF, FARAH, DANNY DENZONGPA', '', 0, '', ''),
(43, '128', '22-01-2020', '23:55:00', '1:56:00', '2020-01-21 23:55:00', '2020-01-22 1:56:00', '2:01:00', '0:00:00', '2:01:00', '', 'GHAYAL HINDUSTANI', 'SHIV RAJ KUMAR, PADMA PRIYA ', '', 0, '', ''),
(44, '129', '22-01-2020', '1:56:00', '2:26:00', '2020-01-22 1:56:00', '2020-01-22 2:26:00', '0:30:00', '0:00:00', '0:30:00', '', 'SUNEHARI YAADEIN', '', '', 0, '', ''),
(45, '130', '22-01-2020', '2:26:00', '4:24:00', '2020-01-22 2:26:00', '2020-01-22 4:24:00', '1:58:00', '0:00:00', '1:58:00', '', 'SALAAM KASHMIR', 'SURESH GOPI, JAYARAM  MIA\nGEORGE', '', 0, '', ''),
(46, '131', '22-01-2020', '4:24:00', '6:36:00', '2020-01-22 4:24:00', '2020-01-22 6:36:00', '2:12:00', '0:00:00', '2:12:00', '', 'AGAR TUM NA HOTE', 'RAJESH KHANNA, REKHA, RAJ BABBAR ', '', 0, '', ''),
(47, '132', '22-01-2020', '6:36:00', '9:32:00', '2020-01-22 6:36:00', '2020-01-22 9:32:00', '2:56:00', '0:40:00', '2:16:00', '', 'ANJAAM', 'SHASHI KAPOOR, HEMA MALINI', '', 0, '', ''),
(48, '133', '22-01-2020', '9:32:00', '12:25:00', '2020-01-22 9:32:00', '2020-01-22 12:25:00', '2:53:00', '0:40:00', '2:13:00', '', 'SAR UTHA KE JIO', 'NASEERUDDIN SHAH,MADHOO,RAZA MURAD', '', 0, '', ''),
(49, '134', '22-01-2020', '12:25:00', '15:10:00', '2020-01-22 12:25:00', '2020-01-22 15:10:00', '2:45:00', '0:45:00', '2:00:00', '', 'MERI BIWI KA JAWAB NAHI', 'AKSHAY KUMAR, SRIDEVI, GULSHAN GROVER, JOHNY LEVER, KIRAN KUMAR, ANUPAM KHER', '', 0, '', ''),
(50, '135', '22-01-2020', '15:10:00', '18:04:00', '2020-01-22 15:10:00', '2020-01-22 18:04:00', '2:54:00', '0:40:00', '2:14:00', '', 'KAALI TOPI LAAL RUMAAL', 'MITHUN CHAKRABORTY, KAMAL SADANAH, RITUPARNA SEN GUPTA, ZEENAT, IBRAHIM, JOHNEY LEVER ', '', 0, '', ''),
(51, '136', '22-01-2020', '18:04:00', '21:06:00', '2020-01-22 18:04:00', '2020-01-22 21:06:00', '3:02:00', '0:40:00', '2:22:00', '', 'CARAVAN', 'JEETENDRA, ASHA PAREKH', '', 0, '', ''),
(52, '137', '22-01-2020', '21:06:00', '0:00:00', '2020-01-22 21:06:00', '2020-01-22 0:00:00', '2:54:00', '0:45:00', '2:09:00', '', 'DADAGIRI', 'DHARMENDRA, PADMINI KOLHAPURE, GOVINDA', '', 0, '', ''),
(53, '138', '23-01-2020', '0:00:00', '1:55:00', '2020-01-23 0:00:00', '2020-01-23 1:55:00', '1:55:00', '0:00:00', '1:55:00', '', 'SHAURYA SILENT BUT VIOLENT', 'GAUTHAM, SUHANI KALITA, K. BHAGYARAJ', '', 0, '', ''),
(54, '139', '23-01-2020', '1:55:00', '2:55:00', '2020-01-23 1:55:00', '2020-01-23 2:55:00', '1:00:00', '0:00:00', '1:00:00', '', 'SUNEHARI YAADEIN', '', '', 0, '', ''),
(55, '140', '23-01-2020', '2:55:00', '5:10:00', '2020-01-23 2:55:00', '2020-01-23 5:10:00', '2:15:00', '0:00:00', '2:15:00', '', 'SANTAAN', 'JEETENDRA, MOUSHUMI CHATTERJI, DEEPAK TIJORI', '', 0, '', ''),
(56, '141', '23-01-2020', '5:10:00', '6:43:00', '2020-01-23 5:10:00', '2020-01-23 6:43:00', '1:33:00', '0:00:00', '1:33:00', '', 'SAJNA DOLI LEKE AANA', 'VENKATESH, RAMBHA, RAMYA KRISHNA', '', 0, '', ''),
(57, '142', '23-01-2020', '6:43:00', '9:31:00', '2020-01-23 6:43:00', '2020-01-23 9:31:00', '2:48:00', '0:40:00', '2:08:00', '', 'PAAP KO JALAKAR RAAKH KAR DOONGA', 'GOVINDA, DHARMENDRA,FARHA,  SHAKTI, ANUPAM', '', 0, '', ''),
(58, '143', '23-01-2020', '9:31:00', '12:01:00', '2020-01-23 9:31:00', '2020-01-23 12:01:00', '2:30:00', '0:40:00', '1:50:00', '', 'REVENGE INSPECTOR KA', 'GANESH VENKATRAMAN, MUNNA, POONAM KAUR', '', 0, '', ''),
(59, '144', '23-01-2020', '12:01:00', '15:04:00', '2020-01-23 12:01:00', '2020-01-23 15:04:00', '3:03:00', '0:45:00', '2:18:00', '', 'AAJ KA DAUR', 'JACKIE SHROFF, PADMINI KOILAPURI', '', 0, '', ''),
(60, '145', '23-01-2020', '15:04:00', '18:02:00', '2020-01-23 15:04:00', '2020-01-23 18:02:00', '2:58:00', '0:40:00', '2:18:00', '', 'SHESHNAAG', 'JEETENDRA, REKHA, RISHI KAPOOR, ANUPAM KHER ', '', 0, '', ''),
(61, '146', '23-01-2020', '18:02:00', '21:03:00', '2020-01-23 18:02:00', '2020-01-23 21:03:00', '3:01:00', '0:40:00', '2:21:00', '', 'HERO HINDUSTANI', 'ARSHAD WARSI, NAMRATA SHIRODKAR, PARESH RAWAL, SHAKTI KAPOOR, KADER KHAN', '', 0, '', ''),
(62, '147', '23-01-2020', '21:03:00', '23:45:00', '2020-01-23 21:03:00', '2020-01-23 23:45:00', '2:42:00', '0:45:00', '1:57:00', '', 'KRANTI KSHETRA', 'MITHUN CHAKRAVARTI, POOJA BHATT, HARISH, KANCHAN', '', 0, '', ''),
(63, '148', '24-01-2020', '23:45:00', '1:30:00', '2020-01-23 23:45:00', '2020-01-24 1:30:00', '1:45:00', '0:00:00', '1:45:00', '', 'VICKY DADA', 'NAGARJUN, JUHI CHAWLA, RADHA', '', 0, '', ''),
(64, '149', '24-01-2020', '1:30:00', '2:20:00', '2020-01-24 1:30:00', '2020-01-24 2:20:00', '0:50:00', '0:00:00', '0:50:00', '', 'SUNEHARI YAADEIN', '', '', 0, '', ''),
(65, '150', '24-01-2020', '2:20:00', '4:28:00', '2020-01-24 2:20:00', '2020-01-24 4:28:00', '2:08:00', '0:00:00', '2:08:00', '', 'RAKHWALA', 'DHARMENDRA, VINOD KHANNA, LEENA CHANDAVAKAR', '', 0, '', ''),
(66, '151', '24-01-2020', '4:28:00', '6:39:00', '2020-01-24 4:28:00', '2020-01-24 6:39:00', '2:11:00', '0:00:00', '2:11:00', '', 'BEPANAAH', 'SHASHI KAPOOR, MITHUN CHAKARVARTI, RATI ', '', 0, '', ''),
(67, '152', '24-01-2020', '6:39:00', '9:37:00', '2020-01-24 6:39:00', '2020-01-24 9:37:00', '2:58:00', '0:40:00', '2:18:00', '', ' YE AAG KAB BHUJHEGI', 'SUNIL DUTT,REKHA,SHIBA', '', 0, '', ''),
(68, '153', '24-01-2020', '9:37:00', '12:31:00', '2020-01-24 9:37:00', '2020-01-24 12:31:00', '2:54:00', '0:40:00', '2:14:00', '', 'AAKHRI BAAZI', 'GOVINDA, SHATRUGHAN SINHA, MOUSHAMI CHATERJEE, MANDAKINI', '', 0, '', ''),
(69, '154', '24-01-2020', '12:31:00', '15:39:00', '2020-01-24 12:31:00', '2020-01-24 15:39:00', '3:08:00', '0:45:00', '2:23:00', '', 'MAHAAN', 'AMITABH BACHCHAN, WAHEEDA REHMAN, PARVEEN BABI, ZEENAT AMAN', '', 0, '', ''),
(70, '155', '24-01-2020', '15:39:00', '18:30:00', '2020-01-24 15:39:00', '2020-01-24 18:30:00', '2:51:00', '0:40:00', '2:11:00', '', 'GHAR EK MANDIR', 'MITHUN CHAKARVARTI, RANJITA, SHASHI KAPOOR', '', 0, '', ''),
(71, '156', '24-01-2020', '18:30:00', '21:09:00', '2020-01-24 18:30:00', '2020-01-24 21:09:00', '2:39:00', '0:40:00', '1:59:00', '', 'BALMAA', 'AVINASH WADHAWAN,AYESHA JHULKA,SAEED JAFFREY, ', '', 0, '', ''),
(72, '157', '24-01-2020', '21:09:00', '0:04:00', '2020-01-24 21:09:00', '2020-01-24 0:04:00', '2:55:00', '0:45:00', '2:10:00', '', 'APMAAN KI AAG', 'GOVINDA,SONAM', '', 0, '', ''),
(73, '158', '25-01-2020', '0:04:00', '2:01:00', '2020-01-25 0:04:00', '2020-01-25 2:01:00', '1:57:00', '0:00:00', '1:57:00', '', 'SHANDAR', 'MITHUN CHAKRABORTY, JUHI CHAWLA', '', 0, '', ''),
(74, '159', '25-01-2020', '2:01:00', '2:16:00', '2020-01-25 2:01:00', '2020-01-25 2:16:00', '0:15:00', '0:00:00', '0:15:00', '', 'SUNEHARI YAADEIN', '', '', 0, '', ''),
(75, '160', '25-01-2020', '2:16:00', '4:31:00', '2020-01-25 2:16:00', '2020-01-25 4:31:00', '2:15:00', '0:00:00', '2:15:00', '', 'DO AUR DO PAANCH', 'AMITHABH BACHAN, SHASHI KAPOOR, HEMA MALINI, PARVEEN BOBI, SRI RAM LAGHU, KADER KHAN', '', 0, '', ''),
(76, '161', '25-01-2020', '4:31:00', '6:48:00', '2020-01-25 4:31:00', '2020-01-25 6:48:00', '2:17:00', '0:00:00', '2:17:00', '', 'HIMMAT AUR MEHANAT', 'JEETENDRA, SHRIDEVI,SHAMMI KAPOOR', '', 0, '', ''),
(77, '162', '25-01-2020', '6:48:00', '9:43:00', '2020-01-25 6:48:00', '2020-01-25 9:43:00', '2:55:00', '0:40:00', '2:15:00', '', 'DUSHMAN (MITHUN)', 'MITHUN CHAKARBORTHY, MANDAKINI,SADASHIV AMRAPURKAR', '', 0, '', ''),
(78, '163', '25-01-2020', '9:43:00', '12:44:00', '2020-01-25 9:43:00', '2020-01-25 12:44:00', '3:01:00', '0:40:00', '2:21:00', '', 'ANSH THE DEADLY PART', 'OM PURI, ASHUTOSH RANA', '', 0, '', ''),
(79, '164', '25-01-2020', '12:44:00', '15:41:00', '2020-01-25 12:44:00', '2020-01-25 15:41:00', '2:57:00', '0:45:00', '2:12:00', '', 'PYAR KE KABIL', 'RISHI KAPOOR, PADMINI KOLHAPURE, UTPAL DUTT, BINDU, ASHA SACHDEV, GULSHUN GOVER ', '', 0, '', ''),
(80, '165', '25-01-2020', '15:41:00', '18:31:00', '2020-01-25 15:41:00', '2020-01-25 18:31:00', '2:50:00', '0:40:00', '2:10:00', '', 'SANGRAM', 'AJAY DEVGAN, AYESHA JHULKA, KARISHMA KAPOOR, REMA LAGHU,AMRISH PURI, DANNY,SACHIN, ASRANI, ', '', 0, '', ''),
(81, '166', '25-01-2020', '18:31:00', '21:10:00', '2020-01-25 18:31:00', '2020-01-25 21:10:00', '2:39:00', '0:40:00', '1:59:00', '', 'AAJ KA BOSS', 'MITHUN CHAKRABORTY, SWATI, MANVI GOSWAMI, DILIP TAHIL, RAZA MURAD', '', 0, '', ''),
(82, '167', '25-01-2020', '21:10:00', '23:55:00', '2020-01-25 21:10:00', '2020-01-25 23:55:00', '2:45:00', '0:45:00', '2:00:00', '', 'AASTHA', 'OM PURI, REKHA, NAVEEN NISCHOL', '', 0, '', ''),
(83, '168', '26-01-2020', '23:55:00', '2:12:00', '2020-01-25 23:55:00', '2020-01-26 2:12:00', '2:17:00', '0:00:00', '2:17:00', '', 'CHEHRE PE CHEHRA', 'SANJEEV KUMAR,REKHA', '', 0, '', ''),
(84, '169', '26-01-2020', '2:12:00', '2:57:00', '2020-01-26 2:12:00', '2020-01-26 2:57:00', '0:45:00', '0:00:00', '0:45:00', '', 'SUNEHARI YAADEIN', '', '', 0, '', ''),
(85, '170', '26-01-2020', '2:57:00', '5:03:00', '2020-01-26 2:57:00', '2020-01-26 5:03:00', '2:06:00', '0:00:00', '2:06:00', '', 'NAINA TERE KAJRARE', 'PRASHANT , SIMRAN', '', 0, '', ''),
(86, '171', '26-01-2020', '5:03:00', '6:53:00', '2020-01-26 5:03:00', '2020-01-26 6:53:00', '1:50:00', '0:00:00', '1:50:00', '', 'JEEVA', 'CHIRANJEEVI, SAKSHI', '', 0, '', ''),
(87, '172', '26-01-2020', '6:53:00', '9:33:00', '2020-01-26 6:53:00', '2020-01-26 9:33:00', '2:40:00', '0:40:00', '2:00:00', '', 'HASINA AUR NAGINA', 'EKTAA,RAJAT,NAVNEET NISHAN', '', 0, '', ''),
(88, '173', '26-01-2020', '9:33:00', '11:52:00', '2020-01-26 9:33:00', '2020-01-26 11:52:00', '2:19:00', '0:40:00', '1:39:00', '', 'ZOR LAGAA KE...HAIYA!', 'MITHUN CHAKRABORTY, MAHESH MANJREKAR, RIYA SEN, GULSHAN GROVER ', '', 0, '', ''),
(89, '174', '26-01-2020', '11:52:00', '14:48:00', '2020-01-26 11:52:00', '2020-01-26 14:48:00', '2:56:00', '0:45:00', '2:11:00', '', 'MAIN INTAQUAM LOONGA', 'DHARMENDRA, REENA ROY, NIRUPA ROY, DR SHRIRAM LAGOO', '', 0, '', ''),
(90, '175', '26-01-2020', '14:48:00', '17:51:00', '2020-01-26 14:48:00', '2020-01-26 17:51:00', '3:03:00', '0:40:00', '2:23:00', '', 'GHAR SANSAR', 'JEETENDRA,SRI DEVI,KADAR KHAN', '', 0, '', ''),
(91, '176', '26-01-2020', '17:51:00', '20:31:00', '2020-01-26 17:51:00', '2020-01-26 20:31:00', '2:40:00', '0:40:00', '2:00:00', '', 'AGNI I.P.S.', 'SAI KUMAR, SATYA PRAKASH, VENKATEEN', '', 0, '', ''),
(92, '177', '26-01-2020', '20:31:00', '23:25:00', '2020-01-26 20:31:00', '2020-01-26 23:25:00', '2:54:00', '0:45:00', '2:09:00', '', 'PAAP KI KAMAAI', 'MITHUN CHAKRABORTHY,SANGEETA BIJLANI,PREM CHOPRA', '', 0, '', ''),
(93, '178', '27-01-2020', '23:25:00', '1:35:00', '2020-01-26 23:25:00', '2020-01-27 1:35:00', '2:10:00', '0:00:00', '2:10:00', '', 'MAJBOOR', 'AMITABH BACHCHAN, PRAVEEN BOBY', '', 0, '', ''),
(94, '179', '27-01-2020', '1:35:00', '2:30:00', '2020-01-27 1:35:00', '2020-01-27 2:30:00', '0:55:00', '0:00:00', '0:55:00', '', 'SUNEHARI YAADEIN', '', '', 0, '', ''),
(95, '180', '27-01-2020', '2:30:00', '4:38:00', '2020-01-27 2:30:00', '2020-01-27 4:38:00', '2:08:00', '0:00:00', '2:08:00', '', 'MAIN HOON CHALBAAZ', 'PAWAN KALYAN, MEERA JASMINE,SIYNJI SHINDE', '', 0, '', '');

--
-- Triggers `movie_shows`
--
DELIMITER $$
CREATE TRIGGER `+movieshow` BEFORE UPDATE ON `movie_shows` FOR EACH ROW SET New.status = '1'
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `poll_count`
--

CREATE TABLE `poll_count` (
  `id` int(11) NOT NULL,
  `pollid` int(11) NOT NULL,
  `option1` int(11) NOT NULL,
  `option2` int(11) NOT NULL,
  `option3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_count`
--

INSERT INTO `poll_count` (`id`, `pollid`, `option1`, `option2`, `option3`) VALUES
(3, 1, 64, 25, 40),
(4, 2, 4, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `poll_master`
--

CREATE TABLE `poll_master` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_master`
--

INSERT INTO `poll_master` (`id`, `question`, `option1`, `option2`, `option3`, `status`, `created`) VALUES
(1, 'Which is your fav movie from 1990?', 'Dilwale Dulhania Le Jayenge', 'Hum Aapke Hain Koun', 'Kuch Kuch Hota Hai', 1, '18-01-2020');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `user_level` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pswd` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `encrypt_pswd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `user_level`, `username`, `email`, `pswd`, `created`, `updated`, `encrypt_pswd`) VALUES
(1, 1, 'admin', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', '2019-10-04 16:45:39', '2019-10-04 16:45:39', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abzy_social`
--
ALTER TABLE `abzy_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `abzy_winner`
--
ALTER TABLE `abzy_winner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_form`
--
ALTER TABLE `blog_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bollywood_spl`
--
ALTER TABLE `bollywood_spl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `box_office`
--
ALTER TABLE `box_office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commercial`
--
ALTER TABLE `commercial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `menu_category`
--
ALTER TABLE `menu_category`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `movie_master`
--
ALTER TABLE `movie_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_shows`
--
ALTER TABLE `movie_shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_count`
--
ALTER TABLE `poll_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_master`
--
ALTER TABLE `poll_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abzy_social`
--
ALTER TABLE `abzy_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `abzy_winner`
--
ALTER TABLE `abzy_winner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blog_form`
--
ALTER TABLE `blog_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bollywood_spl`
--
ALTER TABLE `bollywood_spl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `box_office`
--
ALTER TABLE `box_office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `commercial`
--
ALTER TABLE `commercial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_category`
--
ALTER TABLE `menu_category`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_master`
--
ALTER TABLE `movie_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `movie_shows`
--
ALTER TABLE `movie_shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `poll_count`
--
ALTER TABLE `poll_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `poll_master`
--
ALTER TABLE `poll_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
