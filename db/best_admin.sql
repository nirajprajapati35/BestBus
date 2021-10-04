-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 04:50 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `best_admin`
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
(1, 'instagram', 'https://www.instagram.com/abzy.network/', 'Instagram-frame-image-1-2.png', '22-01-2020', '20-02-2020'),
(2, 'facebook', 'https://www.facebook.com/abzy.network/', 'Facebook-frame-image-1.png', '22-01-2020', '05-02-2020'),
(3, 'youtube', 'https://www.youtube.com/channel/UCG8eUcO_GzDTr6nqdEgYEUA/videos', 'YOU-TUBE-frame-Image-1.png', '22-01-2020', '05-02-2020'),
(4, 'tiktok', 'https://www.facebook.com/profile.php?id=100020148032307', 'Tik-Tok-image-size.png', '22-01-2020', '05-02-2020');

-- --------------------------------------------------------

--
-- Table structure for table `abzy_trivia`
--

CREATE TABLE `abzy_trivia` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created` varchar(255) NOT NULL,
  `updated` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `abzy_trivia`
--

INSERT INTO `abzy_trivia` (`id`, `description`, `created`, `updated`, `status`) VALUES
(1, 'Salman Khan and Randeep Hooda are headed to Goa for the next schedule of Prabhudheva&#39;s Radhe: Your Most Wanted Bhai. After a long schedule at various spots in Mumbai, the unit will be shooting for action sequences, including an elaborate chase scene at the tourist hotspot.', '23-01-2020', '23-01-2020', 0),
(5, 'Raj Kapoor&rsquo;s &lsquo;Mera Naam Joker&rsquo; was the first Hindi movie to have not one but two intervals.&nbsp;&nbsp;', '23-01-2020', '25-01-2020', 0),
(7, 'Aamir Khan&#39;s &#39;Lagaan&#39; had the maximum number of British actors ever to be cast in a single movie in the history of Bollywood cinema.', '11-02-2020', '11-02-2020', 1);

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
(2, 'ABZY winners image size 1.1.png', 0, '20-01-2020', '24-01-2020'),
(3, 'Cadbury-Box-image.png', 0, '23-01-2020', '23-01-2020'),
(5, 'ABZY-winners.png', 0, '05-02-2020', '15-02-2020'),
(6, 'ABZY-winners.png', 1, '15-02-2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnil` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `postdate` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `updated` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL,
  `commentflag` int(11) NOT NULL,
  `seo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `image`, `thumbnil`, `description`, `created_by`, `postdate`, `created`, `updated`, `flag`, `commentflag`, `seo`) VALUES
(32, '10 Romantic Yashraj Films That Made Us Fall In Love All Over Again', 'ABZYMOVIES-001-10 Romantic Yashraj Films That Made Us Fall In Love All Ov.jpg', 'ABZYMOVIES-001-10 Romantic Yashraj Films That Made Us Fall In Love All Ov.jpg', '<p>10 Romantic Yashraj Films That Made Us Fall In Love All Over Again</p>\r\n\r\n<p>Romance wouldn&rsquo;t have meant so much if Yash Raj films hadn&rsquo;t taught us what to expect in love. While these movies might seem far from reality, they definitely take us to a romance-driven dreamy world. And the result?... Fascinating about falling in love has been a favorite pass-time for many even if we blatantly deny it. Here are the 10 romantic Yash Raj Films that make us fall in love over and over again.</p>\r\n\r\n<p><strong>1. Kabhie Kabhie (1976)</strong></p>\r\n\r\n<p><a href=\"https://3.bp.blogspot.com/-0VV1iyAgVOw/W1WhRdtvSfI/AAAAAAAAWtI/UBa8vJLZjGYCHVpoxxyR5HRxIGyDRt-2ACLcBGAs/s1600/Kabhie%2BKabhie%2BMovie%2BDialogues.JPG\"><img alt=\"\" src=\"https://3.bp.blogspot.com/-0VV1iyAgVOw/W1WhRdtvSfI/AAAAAAAAWtI/UBa8vJLZjGYCHVpoxxyR5HRxIGyDRt-2ACLcBGAs/s1600/Kabhie%2BKabhie%2BMovie%2BDialogues.JPG\" style=\"margin: 2px 10px; width: 200px; height: 93px; float: left; border-width: 0px; border-style: solid;\" /></a>A timeless love story of a poet (Amitabh Bachchan) and a young woman (Rakhee) who, by a twist of fate, get married to different people but are reunited by their children.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Silsila (1981)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.bharatkishan.com/wp-content/uploads/2019/11/Silsila-Full-Movie-Download-TamilRockers-Movierulz-TamilGun-TamilYogi-Filmyzilla.jpg\" style=\"margin: 2px 10px; float: right; width: 200px; height: 111px; border-width: 1px; border-style: solid;\" />Lovers, Amit (played by Amitabh Bachchan) and Chandni (Rekha) are forced to part ways when Amit&rsquo;s brother dies in a plane crash, leaving behind his pregnant girlfriend. But an extramarital love affair lights up after their marriage. Controversial when released, Silsila was romance redefined, more so because of its star cast.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3. Chandni (1989)</strong><br />\r\n<img alt=\"\" src=\"https://www.easterneye.biz/wp-content/uploads/2018/02/rishi-sridevi.jpg\" style=\"margin: 2px 10px; float: left; width: 200px; height: 150px; border-width: 1px; border-style: solid;\" />Starring Sridevi, Rishi Kapoor in lead roles and Vinod Khanna as a special appearance, Chandni exemplified the beauty of falling in love. With the gorgeous Sridevi in chiffon sarees dancing in the most picturesque locations, almost surreal proposals, and of course the tragedy before the happy climax made for a perfect recipe for a perfect love story.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4. Lamhe (1991)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/81m9Nn+JohL.jpg\" style=\"width: 200px; height: 160px; margin: 2px 10px; float: right; border-width: 1px; border-style: solid;\" />Viren (Anil Kapoor) falls for an older woman (Sridevi), who marries someone else but dies soon in an accident. She leaves behind a daughter who grows up to be her mother&rsquo;s look-alike and falls in love with Viren.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5. Darr (1993)</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Darr1.png\" style=\"margin: 2px 10px; float: left; width: 200px; height: 113px; border-width: 1px; border-style: solid;\" /></strong>Despite being based on a negative character Rahul (played by Shah Rukh Khan), Darr introduced us to obsessive love. The fact that Kiran (Juhi Chawla) is engaged to Sunil (Sunny Deol) doesn&#39;t stop Rahul from stalking her. He is determined to win her over at any cost.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>6. Dilwale Dulhaniya Le Jayenge (1995)</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://static.toiimg.com/photo/45296934/.jpg\" style=\"width: 200px; height: 133px; margin: 2px 10px; float: right; border-width: 1px; border-style: solid;\" /></strong>Thanks to Raj and Simran, (played by SRK and Kajol) for pushing us to imagine meeting our partners on our next train ride.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>7. Mohabbatein (2000)</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://resize.indiatvnews.com/en/resize/newbucket/715_-/2016/10/mohabbatein-1477554684.jpg\" style=\"width: 200px; height: 109px; margin: 2px 10px; float: left; border-width: 1px; border-style: solid;\" /></strong>This is one of those movies to be blamed for making us believe that anything can happen in love. That is why we hopelessly believed Aishwarya stayed back after her death for Shah Rukh, without getting spooked out even one bit. Because... anything for love!!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>8. Dil Toh Pagal Hai (1997)</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://i.pinimg.com/originals/8b/01/bc/8b01bc61973e6c2e468aea33fdf02671.jpg\" style=\"margin: 2px 10px; float: right; width: 200px; height: 150px;\" /></strong>Dil Toh Pagal Hai was a dance-musical with just the right star-cast (Karisma Kapoor, Madhuri Dixit and SRK). But, how could it be just about dance? So it turned out to be a love triangle, but with a happy ending.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>9. Hum Tum</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/maxresdefault1.png\" style=\"width: 200px; height: 106px; border-width: 1px; border-style: solid; margin: 2px 10px; float: left;\" /></strong>This movie is about casual encounters between two completely opposite characters (Rani Mukherjee and Saif Ali Khan) who eventually fall in love. Sounds simple, but this was Yash Raj&rsquo;s way of promoting us from train encounters to flight encounters to find our soulmate!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>10. Veer Zaara</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Veer jara.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px;\" /></strong>This one is a cross-border love story of Squadron Leader Veer Pratap Singh (Shah Rukh Khan), an Indian Air Force pilot and Zaara (Preity Zinta), a Pakistani girl from a prominent political family, who fall in love. However, luck plays spoilsport and Veer gets arrested on suspicion of being an Indian spy. However, 20 years later Saamiya (Rani Mukherjee), a lawyer, takes it upon herself to get Veer his dignity and freedom back.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>While times have changed and we are gradually moving towards an era of more realistic films, what remains true is that Yash Raj Films are evergreen and will never lose their charm!</p>\r\n', '', '10/27/2019', '17-02-2020', '03-03-2020', 74, 0, 'Veer Zaara, Hum Tum, Dil Toh Pagal Hai, Mohabbatein, Dilwale Dulhaniya Le Jayenge, Darr, Lamhe, Chandni, Silsila, Kabhie Kabhie, YashRajFilms, RomanticMovies, Top10 YashRajMovies, LoveStories, BollywoodRomances'),
(33, '5 Govinda Movies That Will Leave You In Splits', 'ABZYMOVIES-002-5 Govinda Movies That Will Leave You In Splits.jpg', 'ABZYMOVIES-002-5 Govinda Movies That Will Leave You In Splits.jpg', '<p>Think &#39;comedy&#39; and Govinda will be amongst the first few Bollywood actors who come to mind. And why not? The comedy king of the 90&#39;s, together with David Dhawan, has given Bollywood a long list of comedy superhits. Natural comic timing and dance moves together with his typical expressions make Govinda movies a hot favourite with fans. While there is a long list of Govinda movies that will leave you ROFL, here is our list of top picks.</p>\r\n\r\n<p><strong>1.Raja Babu (1994)</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://i.ytimg.com/vi/lKBORKxiD5c/maxresdefault.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 113px;\" /></strong>Raja Babu is a story of a son trying to be a better person after a girl rejects him for marriage. As serious as it may sound, it is Govinda who plays the role of Raja Babu. He, along with Shakti Kapoor, leave the audience in splits with their on-screen antics.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2.Deewana Mastana (1997)</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Deewana mastana.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 105px;\" /></strong>The movie is a chaos of comedy. Govinda competes with Anil Kapoor to win over Juhi Chawla but the competition between the two is nothing that you see in a love triangle these days. What adds to the madness is Johnny Lever.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3.Dulhe Raja (1998)</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Dulhe raja.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 114px;\" /></strong>Raja (Govinda) opens a fast food center right in front of a 5-star hotel. The hotel owner (Kader Khan) tries everything to remove his stall, but all in vain given Raja&rsquo;s smartness. The hotel owner&rsquo;s daughter (Raveena Tandon), in an attempt to annoy her father, decides to marry Raja. Though there are many twists and turns in the story, it is the simple charm of Govinda as Raja with an effortless comic timing that wins our hearts.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4.Bade Miyan Chhote Miyan (1998)</strong><br />\r\n<img alt=\"\" src=\"https://cdn.dnaindia.com/sites/default/files/styles/full/public/2016/06/23/474793-bade-miya-chote-miya-youtube.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 113px;\" />Amitabh Bachhan and Govinda play two honest police officers who are also the best of friends. Things begin to take a comic turn when their look-alikes attempt crimes leaving the police duo to face the wrath.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5.Haseena Maan Jaayegi (1999)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://miro.medium.com/max/3000/1*SyM1WUOPOIJsMzMsKFbg2A.jpeg\" style=\"width: 200px; height: 140px; border-width: 1px; border-style: solid; margin: 1px 10px; float: left;\" />Govinda and Sanjay Dutt, two good for nothing sons of a rich father (Kader Khan), fall in love and try to charm their dream girls (Karishma Kapoor and Pooja Batra).&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>Whether it&#39;s for Govinda&#39;s comic timing or his cool dance moves, audiences have always loved watching Govinda on screen. So which Govinda starrer is your favorite?</p>\r\n', '', '10/06/2019', '17-02-2020', '03-03-2020', 24, 0, 'Govinda Movies, Haseena Maan Jaayegi, Bade Miyan Chhote Miyan, Dulhe Raja, Raja Babu, Deewana Mastana, mirchi lagi kya.'),
(34, 'Evergreen Kishore Kumar Songs', 'ABZYMOVIES-003-5 Evergreen songs by Kishore Kumar.png', 'ABZYMOVIES-003-5 Evergreen songs by Kishore Kumar.png', '<p>Whoever isn&rsquo;t a fan of Kishore Kumar hasn&rsquo;t known music. Kishore Kumar was a legendary singer who could not only voice the perfect notes but could also touch the untouched strings of your heart. His voice brought about a soul-to-soul connection with oneself and the number of genres where he could showcase his was unbelievable! He could go from peppy to emotional in no time with his music and you simply can&rsquo;t help falling in love with the various expressions in his voice. No wonder, even today Kishore Kumar is unparalleled as a singer. Here are 5 of his songs that we just can&rsquo;t stop playing on repeat mode.</p>\r\n\r\n<hr />\r\n<p><strong>1. Mere Sapno Ki Rani</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/01 Kishore da.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 150px;\" />All the women wanted this song to be sung by their crushes and their lovers because of course, if someone can match up to Kishore Kumar&rsquo;s voice, he&rsquo;s worth falling in love with. But can anyone really match up? All you can do is listen to this evergreen classic on repeat and hope for your prince charming to sing along.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Kuch Toh Log Kahenge</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/02 Kishore da.jpg\" style=\"margin: 2px 10px; float: right; width: 200px; height: 126px; border-width: 1px; border-style: solid;\" /></strong>Logon ka kaam hai kehna... Well, this is the phrase we use most of the times even today, thanks to Kishore Kumar breaking stereotypes back then. Breaking stereotypes is one thing but in a voice that could break a million more stereotypes? Perhaps that&rsquo;s what separates legends from the ordinary.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong><span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span calibri=\"\" style=\"font-family:\">3. Pal Pal Dil Ke Paas</span></span></span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span calibri=\"\" style=\"font-family:\"><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Pal Pal Dil k Pass.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 111px;\" /></span></span></span></strong>How can we not be close to Kishore&rsquo;s heart when his voice is so close to ours? This song can be hummed a million times over but still never sound as good as it does in Kishore Kumar&rsquo;s heavenly voice. A classic romantic that can do wonders even today on Valentines&rsquo; Day. Try it out!<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4.<span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span calibri=\"\" style=\"font-family:\">Humein Tumse Pyaar Kitna</span></span></span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span calibri=\"\" style=\"font-family:\"><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/4.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 117px;\" /></span></span></span></strong><span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span calibri=\"\" style=\"font-family:\">This song touches our hearts right where it should and shouldn&rsquo;t at the same time. The blend of pain and love in this song almost makes both synonymous with each other. Here goes the legend again, redefining love for us!</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5. Zindagi Ek Safar</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Zindagi Ek Safar.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 113px;\" />...Hai suhaana thanks to Kishore Kumar&rsquo;s unparalleled melodious voice. Eerily this song creeps up in our veins making us live life to the fullest because it makes us value time, our present day, the present moment. Kishore Kumar does instil that sense of freedom in us through the extremely convincing expressions in his voice.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>These are just 5 songs, but Kishore Kumar has hundreds of more songs to his credit and each one of them is worth listening to, over and over again. The lyrics stand relevant even today and Kishore Kumar&rsquo;s voice remains inimitable. Perhaps that&rsquo;s what makes these songs evergreen even after all these decades!<br />\r\n&nbsp;</p>\r\n', '', '09/01/2019', '18-02-2020', '03-03-2020', 40, 0, 'Zindagi Ek Safar, Humein Tumse Pyaar Kitna, Pal Pal Dil Ke Paas, Kishore Kumar, Songs of kishore Kumar, Evergreen Kishore Kumar Songs, Mere Sapno Ki Rani, Kuch Toh Log Kahenge, '),
(41, '10 Dancing Divas of Bollywood We Cannot Get Enough Of', 'ABZYMOVIES-004-10 Dancing Divas of Bollywood We Cannot Get Enough Of.jpg', 'ABZYMOVIES-004-10 Dancing Divas of Bollywood We Cannot Get Enough Of.jpg', '<p>Dance has always been an integral part of Bollywood. In fact, over the years, the names of some Bollywood heroines have become synonymous with dance, with each having made their own place for their distinct style. Here&rsquo;s our pick of the top 10 dancing divas of Bollywood over the years who have been an inspiration of millions of fans</p>\r\n\r\n<hr />\r\n<p><strong>1. Helen</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://mrandmrs55.files.wordpress.com/2012/05/bollywood-helen-32.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 150px;\" />There&rsquo;s no denying that Helen is the numero uno dancing diva of Bollywood. Her bold avatar and sizzling cabaret performances in songs like Mera Naam Chin Chin Chu, O Haseena Zulfowali, Aa Jaane Jaa, Mehbooba Mehbooba, Piya Tu were far ahead of their times and are epitomized even today!<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Madhuri Dixit Nene</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.thehindu.com/migration_catalog/article11299400.ece/ALTERNATES/LANDSCAPE_1200/madhuri\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 125px;\" /></strong>Trained in Kathak from Pandit Birju Maharaj, Madhuri Dixit is one actress who made girls want to learn dancing with Ek Do Teen, Chane Ke Khet Mein, Kay Sera Sera, etc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3. Shilpa Shetty</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/shilpa02.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 149px;\" />A trained Bharatnatyam dancer, Shilpa Shetty is famous for her non-stop &lsquo;thumkas&rsquo; especially on &ldquo;UP Bihar Lootne&rdquo; and &ldquo;Shutup and Bounce&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4. Asha Parekh</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://i.ytimg.com/vi/N3BOEAmC1pY/maxresdefault.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 113px;\" /></strong>This veteran actress has given Bollywood timeless songs that even now can make people dance. Some of her most memorable performances include &ldquo;Oh Mere Sona Reh&rdquo;, &ldquo;Kanta Laga&rdquo;, &ldquo;Aaja Piya&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5. Hema Malini</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/53340.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 120px;\" /></strong>Bollywood&rsquo;s Dream Girl, a trained Bharatnatyam dancer, is known for her performances in &ldquo;Tune O Rangeele&rdquo;, &ldquo;Waada Karle Saajna&rdquo; and more.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>6. Waheeda Rehman</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Waheeda Rehman.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 113px;\" /></strong>This retro beauty once used to rule the hearts of men with her dance numbers like &ldquo;Jaata Kaha Hain Deewanein&rdquo;, &ldquo;Bhanwara Bada Nadaan Hain&rdquo; etc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>7. Sridevi</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://dailytimes.com.pk/assets/uploads/2018/02/26/sridevi-songs-1280x720.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 113px;\" /></strong>Sridevi has a super long list of amazing dance performances. Some of her most iconic performances were in the movies &ldquo;Himmatwala&rdquo;, &ldquo;Nagina&rdquo;, &ldquo;Chandni&rdquo;, &ldquo;Mr. India&rdquo; and &ldquo;Lamhe&rdquo;. Fans still love to imitate her moves from &ldquo;Mere Hathon Mein&rdquo;, &ldquo;Hawa Hawaii&rdquo; and &ldquo;Kaate Nahi Kat Te&rdquo; among many other unforgettable Sridevi dance numbers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>8. Rekha</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://i.pinimg.com/originals/92/60/14/9260147c016bf1fc9899ad5f8036ae89.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 113px;\" /></strong>Famous for her performances in &ldquo;Umrao Jaan&rdquo;, Rekha is also known for &ldquo;Rang Barse&rdquo; from &ldquo;Silsila&rdquo; amongst many others.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>9. Meenakshi Sheshadri</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Meenakshi Sheshadri.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 85px;\" /></strong>Trained in many classical dances, Meenakshi particularly is famous for her performance in &ldquo;Damini&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>10. Karishma Kapoor</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://mediaresources.idiva.com/media/content/2017/May/7_b_cameo_bollywood_idiva.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 150px;\" /></strong>Though Karishma together with Govinda has given many popular dancing numbers to Bollywood, it was her contemporary moves in &ldquo;Dil Toh Pagal Hai&rdquo; that earned her rave reviews.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>Though Karishma together with Govinda has given many popular dancing numbers to Bollywood, it was her contemporary moves in &ldquo;Dil Toh Pagal Hai&rdquo; that earned her rave reviews.</p>\r\n', '', '08/04/2019', '19-02-2020', '03-03-2020', 12, 0, 'Karishma Kapoor, Meenakshi Sheshadri, Rekha,Sridevi, Waheeda Rehman, Hema Malini, Asha Parekh, Dancing Divas, Bollywood dancers, Best Bollywood Dancers, Madhuri Dixit Nene, Helen, Shilpa Shetty, '),
(42, '8 Sridevi Movies You Can Watch On Loop Even Now', 'ABZYMOVIES-005-8-Sridevi-Movies-You-Can-Watch-On-Loop-Even-Now.jpg', 'ABZYMOVIES-005-8-Sridevi-Movies-You-Can-Watch-On-Loop-Even-Now.jpg', '<p>Voted as India&rsquo;s Greatest Actress in the 100 Years of Cinema and ranked one of the highest-paid actors in the period of 1980s-90s, Sridevi is titled as the first female superstar of Bollywood. One of the major reasons for her large fan following was her versatility. From romance, revenge drama to comedy and even action, she has covered almost every genre with ease and made her movies timeless. Here are the 8 Sridevi Movies you can watch on loop even now.</p>\r\n\r\n<hr />\r\n<p><strong>1. Sadma (1983)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/xl_image_16_9 (1).jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 113px;\" />Sridevi plays the role of a woman who after her head injury forgets her present and behaves like a child. Starring opposite Kamal Haasan, Sadma received critical acclaim and is considered a cult-classic.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p style=\"margin-bottom:11px\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">2. Mr. India (1987)</span></span></span></strong></p>\r\n\r\n<p style=\"margin-bottom:11px\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/579646-maxresdefault2.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 113px;\" />Mr. India boasts of Sridevi&rsquo;s stellar dance performances &lsquo;Hawa-Hawaai&rsquo; and &lsquo;Kantei Nahi Katate&rsquo;. Starring opposite Anil Kapoor. Sridevi was paid Rs. 11 lakhs for this movie, the highest at that time for an actor!</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<hr />\r\n<p style=\"margin-bottom:11px\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">3. Lamhe (1991)</span></span></span></strong></p>\r\n\r\n<p style=\"margin-bottom:11px\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/91c7AX4iXUL.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 183px;\" /></span></span></span>Sridevi was seen playing the roles of both the mother and daughter opposite Anil Kapoor in the movie. She received the Filmfare award for Best Actress for her performance<br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<hr />\r\n<p style=\"margin-bottom:11px\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">4. Chaalbaaz (1973)</span></span></span></strong></p>\r\n\r\n<p style=\"margin-bottom:11px\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/ChaalBaaz_Bollywood_Movie_1989.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 113px;\" />A remake of the famous Hema Malini film &ldquo;Seeta Aur Geeta&rdquo;, Chaalbaaz was the biggest hit of the year. Sridevi&rsquo;s performance in the double role is considered as one of her finest performances.</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong><span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span calibri=\"\" style=\"font-family:\">5. Chandni (1989)</span></span></span></strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/165501516227573f0cab793da13e4918.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 232px;\" />Another highest-grossing film of the year, &ldquo;Chandni&rdquo; starred Rishi Kapoor and Vinod Khanna opposite Sridevi. &ldquo;Chandni&rdquo; is one of the must-watch romantic movies of Sridevi that is known not just for her performance but also for the songs and her chiffon sarees.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p style=\"margin-bottom:11px\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">6. Laadla (1994)</span></span></span></strong></p>\r\n\r\n<p style=\"margin-bottom:11px\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/01.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 113px;\" /></span></span></span></strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">&ldquo;Laadla&rdquo; starred Anil Kapoor opposite Sridevi, who was one of the biggest stars of that time. Sridevi plays the role of an ambitious daughter of a rich textile mill owner.</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">7. Nagina (1986)</span></span></span></strong></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\"><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/maxresdefault.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 112px;\" />Regarded as a cult-classic in the Indian Cinema, &ldquo;Nagina&rdquo; is a story of a shape-shifting cobra played by Sridevi. Another of Sridevi&rsquo;s finest performances, Nagina was one of the highest- grossing films of the year.</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p style=\"margin-bottom:11px\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">8. English Vinglish (2012)</span></span></span></strong></p>\r\n\r\n<p style=\"margin-bottom:11px\"><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/8.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 129px;\" />After taking a sabbatical of 15 years, the queen of Bollywood returned to the silver screen. Here, Sridevi plays the role of a simple housewife who is not regarded well by her husband and daughter for her inability to speak and understand English.<br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:11px\">&nbsp;</p>\r\n\r\n<hr />\r\n<p style=\"margin-bottom:11px\"><strong><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Sridevi may have left her fans a bit too soon but continues to live on in our hearts through her evergreen movies.</span></span></span></strong><br />\r\n&nbsp;</p>\r\n', '', '07/07/2019', '19-02-2020', '03-03-2020', 6, 0, 'English Vinglish,  Nagina, Laadla, Chandni, Sadma, Mr. India, Lamhe, Chaalbaaz, Sridevi Movies, Sridevi Evergreen Movies, Sridevi Must Watch, Sridevi Most Famous Movies, Sridevi Films To Watch'),
(43, '10 Legendary Bollywood Villains of the Golden Era', 'ABZYMOVIES-006-10 Legendary Bollywood Villains of the Golden Era.jpg', 'ABZYMOVIES-006-10 Legendary Bollywood Villains of the Golden Era.jpg', '<p>Bollywood is known for its iconic protagonists but equally important are the villains. The evil laughter, the squinted eye look and the side smirk on a face full of conniving expressions is what comes to mind when we think of them. Here, we are going to take you through a journey of such legendary villains of the Golden Era. Mogambo khush hua!</p>\r\n\r\n<hr />\r\n<p><strong>1. Gabbar Singh from Sholay</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Gabbar 3.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 96px;\" />Who can forget the famous Amjad Khan dialogue - &quot;Kitne aadmi the&quot;. The words echo in our minds even now when we think of the legendary</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Lion from Kalicharan</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Lion from Kalicharan 01.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 119px;\" />Ajit&rsquo;s iconic dialoge &ldquo;Sara sheher mujhey Lion ke naam se jaanta hai&rdquo; can still get those chills down your spine.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3. Prem from Bobby</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Prem from Bobby 02.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 109px;\" />The king of all villains is here with &quot;Prem naam hai mera, Prem Chopra&quot;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4. Ranjeet from Amir Garib</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Ranjeet .png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 112px;\" />&ldquo;Bhagwan ke liye mujhey chhod do&rdquo; is what comes to our minds when we see Ranjeet, the serial molester of movies!</p>\r\n\r\n<hr />\r\n<p><strong>5.&nbsp;Robert from Amar Akbar Anthony</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Robert from Amar Akbar Anthony 02.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 105px;\" />The sassy suits and a much modern villain of the 70s, Robert was quite revolutionary in the villain world!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>6. Mogambo from Mr. India</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Mogambo khush hua02.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 95px;\" />Karte hain sab pyaar Mr. India se but Mogambo khush nahi hua! Amrish Puri did a fantastic job at making everyone hate him by living up to the essence of his character.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>7. Kaancha china&nbsp;from Agneepath (1990)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/kancha cheena   Danny 2.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 91px;\" />Danny Dengzongpa&rsquo;s meanness and frigid looks as a villain could turn the whole world into Antarctica.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>8. Kaancha from Agneepath (2012)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/kancha.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 110px;\" />Had to mention this one too because Sanjay Dutt&rsquo;s gigantic personality coupled with his bulging and raging eyes could burn the whole world down.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>9. Gokul Pandit in Dushman</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Gokul pandit .png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 105px;\" />Ashutosh Rana is not to be taken lightly because his debut as a villain in Bollywood shook everyone, literally. It became scary to think about opening doors when the postman comes knocking.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>10. Gajendra in Ram aur Shyam</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Gajendra in Ram aur Shyam.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 111px;\" />Pran is a legend in himself and his portrayal of villains was really something else. Being the cruel brother-in-law, Gajendra, he brought more substance to a villains role putting antagonists in the spotlight.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>We all hate villains as much as we love heroes in our movies and that is how it is supposed to be. It means that the actor has done justice to the role of an antagonist. So, who is your most hated villain from Bollywood?</p>\r\n', '', '06/02/2019', '20-02-2020', '03-03-2020', 15, 0, 'Gajendra in Ram aur Shyam, Gokul Pandit in Dushman, Kaancha from Agneepath, Agneepath, Kaancha china, Mogambo khush hua, Mogambo, Mogambo from Mr. India, Robert from Amar Akbar Anthony, Amar Akbar Anthony , Ranjeet from Amir Garib, Ranjeet, Prem Chopra, B'),
(44, '6 Iconic Bollywood Movies With Double Roles', 'ABZYMOVIES-007-6 Iconic Bollywood Movies With Double Roles.jpg', 'ABZYMOVIES-007-6 Iconic Bollywood Movies With Double Roles.jpg', '<p>Double roles in Hindi cinema have been creating turning points for a long time now. From lookalike villains, father-son or mother-daughter duos, twin sisters or brothers to reincarnation, Bollywood has experimented it with all. Here are the 6 most iconic Bollywood movies with double roles that managed to boggle our minds in more than one way.</p>\r\n\r\n<hr />\r\n<p><strong>1.Seeta Aur Geeta (1972)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/seeta-aur-geeta.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 113px;\" />A sitcom classic where our dreamgirl Hema Malini played the double-role of long lost twin sisters. A sudden interchange of the situation lands the two in each other&rsquo;s place, causing a turmoil that is no less than a laughing riot.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2.Chalbaaz (1989)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/chall baaz.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 121px;\" />A remake of Seeta Aur Geeta, Chalbaaz stars Sridevi in a lead role. Despite the same storyline as Seeta Aur Geeta, the movie manages to tickle you in the right spot. The credit undoubtedly to the impeccable actress.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3.Karan Arjun (1995)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/karan Arjun.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 121px;\" />The Salman-Shah Rukh starrer is an iconic movie that is based on reincarnation. Karan and Arjun, the brothers who are killed in their first life return to save their long awaiting mother in a heroic entry. Also to prove their mother&rsquo;s (Rakhee) belief right - &lsquo;Mere Karan Arjun ayenge!&rsquo;... Indeed!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4.Judwaa (1997)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/judwa.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 113px;\" />Long lost identical twins are as different as chalk and cheese. But, there&rsquo;s a twist, crazy to the level that only Salman Khan can define... the twins feel and experience each other&rsquo;s extreme emotions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5.Kaho Na Pyaar Hai (2000)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/kaho na pyar hai.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 113px;\" />Bollywood&rsquo;s Greek God, Hritik Roshan made his debut with this film and got killed before the interval, leaving the audience in shock. His fans would have cried their hearts out if his lookalike hadn&#39;t entered the screen with &lsquo;Ek Pal Ka Jeena&rsquo; and saved Ameesha from a heart-break.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>6.Om Shanti Om (2007)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Om shanti om.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 100px;\" />A double for Shah Rukh fans who not only got to see him in reincarnated role, but for the first time got introduced to Deepika Padukone, playing a double role as well.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>While double roles have been synonymous with a double-dose of entertainment, which double-role entry in the above list of movies made you the happiest?</p>\r\n', '', '05/05/2019', '20-02-2020', '03-03-2020', 6, 0, 'Om Shanti Om, Kaho Na Pyaar Hai, Judwaa, Karan Arjun , Chalbaaz, Seeta Aur Geeta, Bollywood Movies, Bollywood Double Roll movies, '),
(45, '5 Bold and Beautiful Actresses from the Seventies', 'ABZYMOVIES-008-5-Bold-and-Beautiful-Actresses.jpg', 'ABZYMOVIES-008-5-Bold-and-Beautiful-Actresses.jpg', '<p>Bollywood actresses have always enchanted the audience not only with their acting prowess but also in the way they carry themselves. They are bold, beautiful and alluring in their looks and style. So many of them become beauty and style icons for generations to come. A few such actresses from the 70&#39;s still continue to rule our hearts. Let&rsquo;s take a look at these leading ladies who captivate the audience even today.</p>\r\n\r\n<hr />\r\n<p><strong>1. Zeenat Aman</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/Zeenat.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 89px;\" />Through the 70&#39;s into the 80&#39;s, Zeenat Aman had been such a diva. With several bold<br />\r\ncharacters that were ahead of the times, she has never failed to impress. In Hare Rama<br />\r\nHare Krishna, she revolutionised the way people perceived<br />\r\nwomen at that time and took the industry by storm with her bold avatar.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Sharmila Tagore</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/Sarmila Tagore.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px;\" />She is not just Saif&rsquo;s mother but also an iconic actress on her own. Known for her bold characters and strong portrayal of women, Sharmila has been ruling hearts ever since she debuted in Kashmir Ki Kali. The first Bollywood actress to wear a bikini on screen sure made waves in the industry at that time, opening up other actresses to the idea of &lsquo;bold&rsquo;.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3. Parveen Babi</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/Parveen Bobby.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left;\" />This damsel was blessed with not only gorgeous looks but a mind of her own. She was quick at breaking stereotypes and embracing her boldness. She was also the first Indian woman to feature on the cover page of Times Magazine in 1976. Her light roles along with her jolly attitude and contagious laughter only added to her appeal.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4.&nbsp;Dimple Kapadia</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/Dimple kapadia.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; width: 200px; height: 105px; float: right;\" />Who can forget the cute, innocent yet sexy Dimple in Bobby? An instant style icon giving millions of girls fashion goals and becoming an instant crush for millions of boys, Dimple enchanted Bollywood with her magic. Bold and beautiful, Dimple Kapadia has been an icon ever since her very first appearance on the big screen and continues to do meaty roles every once in a while even now.<br />\r\n&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5. Mandakini</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/Mandakini.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 134px;\" /></strong>There was no actress as bold as Mandakini in the 70&#39;s. She stunned everyone with her extremely bold avatar in &lsquo;Ram Teri Ganga Maili&rsquo; with appearance and scenes that were ahead of the times. The film was a superhit as she did great justice to her role too while becoming an overnight sensation herself. Mandakini wasn&rsquo;t shy to bare it all, something that actresses even today are hesitant to do. Kudos to her boldness!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>While these leading ladies from the 70&#39;s set the tone right for all the boldness and beauty they showcased, they also set an example of why breaking stereotypes is important not only in the industry but in real life as well. So, who was your favourite bold actress of the 70&#39;s?</p>\r\n', '', '04/07/2019', '20-02-2020', '03-03-2020', 9, 0, 'Â Mandakini, Dimple Kapadia, Parveen Babi, Sharmila Tagore, Zeenat Aman, Bold and Beautiful Actresses of bollywood, Bold and Beautiful Actresses from the seventies');
INSERT INTO `blog` (`blog_id`, `title`, `image`, `thumbnil`, `description`, `created_by`, `postdate`, `created`, `updated`, `flag`, `commentflag`, `seo`) VALUES
(46, '10 Bollywood actors who shot into the limelight with a bang and soon fizzled out', 'ABZYMOVIES-009-10-Bollywood-actors-who-shot-into-the-limelight.jpg', 'ABZYMOVIES-009-10-Bollywood-actors-who-shot-into-the-limelight.jpg', '<p>Be it a star-kid or a commoner, making it big in Bollywood needs much more than a family name, hard work, talent and even luck! The industry has seen many who tried but couldn&rsquo;t sustain beyond 2-3 movies. Here are 10 such Bollywood actors who shot into the limelight with a bang, but fizzled out in no time:</p>\r\n\r\n<hr />\r\n<p><strong>1. Chimpu Kapoor</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/chimpu kapoor.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 176px;\" />Being from the first family of Bollywood didn&rsquo;t quite help Rajiv Kapoor aka Chimpu Kapoor make his mark in the industry even after starring in his father Raj Kapoor&rsquo;s last directorial hit &ldquo;Ram Teri Ganga Maili&rdquo;.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Bhagyashree</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/bhagyashree.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 204px;\" />While the song &ldquo;Pehla Nasha&rdquo; from the movie &ldquo;Jo Jeeta Wahi Sikander&rdquo; still remains in the heart of every Bollywood fan, the leading lady Ayesha couldn&rsquo;t be as successful in the industry.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3. Ayesha Jhulka</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Ayesha.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 163px;\" />While the song &ldquo;Pehla Nasha&rdquo; from the movie &ldquo;Jo Jeeta Wahi Sikander&rdquo; still remains in the heart of every Bollywood fan, the leading lady Ayesha couldn&rsquo;t be as successful in the industry.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4. Rahul Roy</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Rahul Roy.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 189px;\" />This &ldquo;Aashiqui&rdquo; starrer quickly rose into the limelight but after multiple flop movies slowly &nbsp;fizzled out of focus.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5. Gracy Singh</strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Gracy-Singh.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 129px;\" /></p>\r\n\r\n<p>Even after being in highly successful movies such as &ldquo;Lagaan&rdquo; and &ldquo;Munna Bhai M.B.B.S&rdquo;, Gracy Singh quickly disappeared from the limelight after making a few bad film choices.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>6. Jugal Hansraj</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/JugalHansraj.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 170px;\" />He started as a child actor in &ldquo;Masoom&rdquo; and had the opportunity to make his adult debut with the hit movie &ldquo;Mohabbatein&rdquo;. Despite having such good looks and a promising start, Jugal Hansraj failed to amaze his audience and soon faded into oblivion.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>7. Sanjay Kapoor</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/Sanjay-Kapoor_d.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 131px;\" />Sanjay Kapoor, brother of Anil Kapoor and Boney Kapoor, could only give two big hits &ldquo;Raja&rdquo; and &ldquo;Sirf Tum&rdquo; before fading away from films.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>8. Bhumika Chawla</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/bhumika chawla.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 165px;\" />This South Indian actor failed to make an impression in Bollywood even after starring in the blockbuster movie &ldquo;Tere Naam&rdquo; alongside Salman Khan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>9. Shamita Shetty</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/shamita shetty.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 150px;\" />Debuting under the Yash Raj Banner couldn&rsquo;t help Shamita and perhaps didn&rsquo;t even get noticed against the A-listers in &ldquo;Mohabbatein&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>10. Rajeev Khaldelwal</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/Rajeev_Khandelwal_at_the_WIFT_felicitation.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 201px;\" />This TV-sensation and talented actor who gave a stellar performance in his debut movie Aamir, could not make his mark in Bollywood due to lack of quality offers despite having a huge fan base.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>Whichever side of the Nepotism debate you are on, one has to agree that the competition in Bollywood is fierce and sometimes even the most talented actors fail to find a solid footing.<br />\r\n&nbsp;</p>\r\n', '', '03/03/2019', '20-02-2020', '03-03-2020', 4, 0, 'Rajeev Khaldelwal,  Shamita Shetty, Bhumika Chawla, Bollywood actors, Chimpu Kapoor, Bhagyashree, Ayesha Jhulka, Rahul Roy,  Gracy Singh, Jugal Hansraj, Sanjay Kapoor, '),
(47, '5 Hairstyles from Bollywood that ruled the nineties', 'ABZYMOVIES-010- ABB- 5 Hairstyles that ruled the 90s.jpg', 'ABZYMOVIES-010- ABB- 5 Hairstyles that ruled the 90s.jpg', '<p>Call the 90&#39;s whatever you may; loud, gaudy and in-your-face but in those days, there were certain styles women really wanted to try and certain trends they would blindly follow. Talking about style, hairstyles always become trends and when it comes to Bollywood. Just like Sadhna made the Sadhna-cut ever so popular in the 60&#39;s and 70&#39;s, here are some of the hairstyles from Bollywood that ruled the 90&#39;s.</p>\r\n\r\n<hr />\r\n<p><strong>1. Karishma Kapoor&rsquo;s soft and wavy hair</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/KarismaKapoor13.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 221px;\" />While now most of us would go for poker straight hair, in the 90&#39;s soft and wavy curls were in, all thanks to Karishma Kapoor&rsquo;s naturally beautiful hair. Tie it up into a fluffy ponytail and you&rsquo;re in the 90s already! Though we do see the same trend back in action today, the 90&#39;s were the real reason for this to become a trend in the first place.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Gel them back and go for the sleek bun</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Kajol_Filmfare_Style_Awards_2016.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 220px;\" />Any scene that showcased a formal setting or an evening party involved gelled back sleek buns. From Kajol in Dilwale Dulhaniya Le Jayenge to Aishwarya Rai in most of her movies, the sleek bun was in trend. Would you not try it with an evening gown yourself?<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3. Frizzy hair wasn&rsquo;t a problem but a trend</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/RaveenaTandon3.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 241px;\" />While in today&rsquo;s times we look for a solution to frizzy hair, it ruled Bollywood in the 90&#39;s and how! Raveena Tandon, the late Divya Bharati and Pooja Bhatt were pretty much the trend setters with voluminous and frizzy perms that could be compared to a lion&rsquo;s mane.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4. Long and straight hair began with Tabu!</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/tabu.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 175px;\" />While everyone was going ga-ga over curls, perms and frizzy hair, Tabu walked into the industry with long and straight hair that changed the equation. Keeping her hair always free of any clips or bands, she wore it simple. Soon, it caught up with the rest of the industry and straight became a trend.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5. Waves by the nape of the neck</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Madhuri.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 297px;\" />Madhuri Dixit not only created waves in Bollywood with her outstanding performances one movie after the other but also sported those waves, literally on her head! The mild curls she adorned on her mid-length hair sat pretty on her shoulders and while most women then flaunted their long hair, she changed the trend and made everyone rush to beauty salons for a different look.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>Be it hair style, baggy jeans, big sunglasses or pop colours, many trends from the 90&#39;s continue to come back and rule in some avatar or the other. So, if you too are looking for some inspiration to change your looks, then 90s Bollywood is what you should be checking out right now!</p>\r\n\r\n<p>So who has been able to influence your style? Do share.</p>\r\n', '', '02/03/2019', '20-02-2020', '03-03-2020', 2, 0, 'Frizzy hair, Kajol in Dilwale Dulhaniya, Karishma Kapoor, Hairstyles from Bollywood that ruled the nineties,'),
(48, '10 underrated Bollywood actors who failed to get their due', 'ABZYMOVIES-011-10 Underrated Bollywood actors 02.png', 'ABZYMOVIES-011-10 Underrated Bollywood actors.jpg', '<h3>10 underrated Bollywood actors who failed to get their due</h3>\r\n\r\n<p>The Hindi cinema industry, popularly known as Bollywood, is a magical platform where dreams are made into reality. Even though one can only make it big and stick around based on continuous hard work and pure talent, it is not always guaranteed that everyone will get the fame and recognition they deserve.</p>\r\n\r\n<p>Here are 10 such underrated Bollywood actors who ought to have got more recognition for their contribution to films:</p>\r\n\r\n<hr />\r\n<p><strong>1. Asrani&nbsp;</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/ASRANI.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 274px;\" />Asrani&hellip; Who doesn&rsquo;t remember the iconic jailor from the movie &ldquo;Sholay&rdquo;? Unfortunately, the recognition that Asrani got doesn&rsquo;t do justice to his incredible performances.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Kay Kay Menon&nbsp;</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/Kay Kay Menon 02.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 150px;\" />This absolute gem of an actor had to struggle through his initial years and only became known around the 2000s owing to his incredible performances in movies such as Sarkar, Life in a Metro, Shaurya etc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3. Vijay Raaz</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/3.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 200px;\" /></strong>This is the man who made &lsquo;Kauwa Biryani&rsquo; famous by his unparalleled comedic performance but failed to receive the much-deserved recognition in the industry.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4. Seema Biswas</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/4.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 285px;\" />The Bandit Queen of Bollywood has won several coveted awards, including a National Film Award, but soon faded from the limelight; we wonder why.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>6. Anu Kapoor</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/6.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 229px;\" />Even though this remarkably talented actor has been awarded with a National Film Award for Vicky Donor, his performances are yet to be celebrated as they should have.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>7. Nandita Das</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/7.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 145px;\" />This immensely talented actor could not earn fame and recognition despite giving multiple exemplary performances in not-so-glamorous roles in films like Earth and Fire.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>8. Pavan Malhotra</strong><br />\r\n<img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/8.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 176px;\" />This National Award winner (film: Fakir) actor has given many memorable performances, but failed to garner the due recognition.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>9. Vinay Pathak</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/Vinay Pathak 02.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 163px;\" /></strong>Well-known for Bheja Fry and Khosla Ka Ghosla, Vinay Pathak till date remains as one of the very talented yet terribly underrated actors of Bollywood.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>10. Ashutosh Rana</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/Ashutosh Rana 01.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 100px;\" />When it comes to incredible performances in negative roles only a few will fail to name this fine actor. Think of films like Sangharsh and Dushman, and you immediately think of him. However, the much-deserved recognition in the industry has eluded him.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>In a parallel universe, where the audiences appreciate methodical, lifelike performances and care more about the quality of storylines, these fine actors will shine the brightest and not be forgotten.</p>\r\n', '', '11/03/2019', '03-03-2020', '12-03-2020', 14, 0, 'Asrani, Kay Kay Menon, Vijay Raaz, Seema Biswas, Divya Dutta, Anu Kapoor, Nandita Das, Pavan Malhotra, Vinay Pathak, Ashutosh Rana'),
(49, '10 Top Grossing Bollywood Movies Between 1998-2008', 'ABZYMOVIES-012-10 Top Grossing Bollywood Movies between 1995-2010.jpg', 'ABZYMOVIES-012-10 Top Grossing Bollywood Movies between 1995-2010.jpg', '<p>Movies come and movies go but there are some movies that make such an impact that they forever etch their place in the minds of people. In the years gone by, some Hindi movies have left an indelible mark at the box-office. Their popularity is evident from the whopping numbers they raked in, given the <em>&#39;hatke&#39;</em> theme of each of these films and the emotional chord they struck with the audience. Let&rsquo;s take a look at 10 such top grossers from 1998-2008.</p>\r\n\r\n<hr />\r\n<p><strong>1. Kuch Kuch Hota Hai - 1998 - 46 Crores</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Kuch_kuch_hota_hai01.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 264px;\" />Who can forget the famous triangle between Rahul, Anjali and Tina. The movie grossed a whopping 46 Crores and for a movie released in 1998 that is a lot of moolah. This is one such movie that has everything, romance, drama, masala, family and of course, a lot of tears!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Hum Saath Saath Hain - 1999 - 39 Crores</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/hum sath sath hai.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 267px;\" /></strong>A B C D E F G H I, J K L M... Now who can forget this famous song on an intercity bus trip where the whole extended family takes out time to have a gala time? Yes, Hum Saath Saath Hain lived up to its name and demonstrated the dynamics of a big fat Indian family in a dramatic yet entertaining manner. With a multi-star cast including Salman Khan, Saif Ali Khan, Monish Behl, Tabu, Sonali Bendre,Karishma Kapoor etc., this one raked in 39 Crores.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3. Kaho Naa Pyaar Hai - 2000 - 44 Crores</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/220px-Kaho_Naa_Pyaar_Hai_Poster.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 280px;\" /></strong>Tragedy, romance, drama along with Hrithik and Amisha&rsquo;s debut is all it took to take this movie to skyrocketing heights! Hrithik became a heartthrob overnight and that was one of the biggest reasons the movie made 44 Crores!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4. Gadar - 2001 - 76 Crores</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/gadar 02.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 200px;\" /></strong>Gadar pushed Sunny Deol&rsquo;s career upwards for one obvious reason; unblemished and impactful performance. Patriotism blending with historic essence and applause-worthy direction made this blockbuster rake in 76 Crores.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5. Devdas - 2002 - 41 Crores</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/devdas.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 288px;\" /></strong>Dev from 2002 reinvented the exquisite performance of Dilip Kumar&rsquo;s Devdas. Impeccable performances by SRK, Madhuri Dixit and Aishwarya Rai Bachchan coupled with the grandeur of Sanjay Leela Bhansali&rsquo;s movies stirred irresistible magic. Ismail Darbar&rsquo;s music added to the dreamy atmosphere too.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>6. Koi Mil Gaya - 2003 - 47 Crores</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/220px-KoiMilGayaFilmPoster.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 278px;\" /></strong></p>\r\n\r\n<p>Jaadu...Jaadu&hellip; Need we say more? Giving extraterrestrial a whole new meaning, Hrithik&rsquo;s incredible performance had the audience hooked to cinemas for months. All the sci-fi stuff with Jaadu&rsquo;s cuteness was an adorable addition.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>7. Veer Zara - 2004 - 41 Crores</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/220px-Veer-Zaara 00.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 274px;\" /></strong>Veer Zara is one such saga of romance that will bring out the real romance and emotion in you. Priety and SRK pulled off an unforgettable chemistry and the longing of two lovers separated by circumstances is worth jerking a tear or two for.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>8. No Entry - 2005 - 44 Crores</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/no entry.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 284px;\" /></strong>Anil Kapoor&rsquo;s unparalleled comedy timing and Salman Khan&rsquo;s usual entertaining style were the main reasons why this movie could gather so many laughs for months on end. All the masala in one movie!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>9. Dhoom 2 - 2006 - 81 Crores</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/dhoom 2.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 237px;\" />Dhoom 2 ne sabko crazy kiya re! Aishwarya&rsquo;s new look and Hrithik&rsquo;s dance moves besides everyone&rsquo;s action packed mood in the movie was the audience puller! Dhoom series&nbsp;popularity is a people magnet.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>10. Om Shanti Om - 2007 - 78 Crores</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/220px-Om_Shanti_Om-Recovered 00000.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 289px;\" /></strong>The gorgeous Deepika Padukone&rsquo;s entry into Bollywood was as grand as Om Shanti Om. The performances of both blew away everyone&rsquo;s mind and took over everyone&rsquo;s heart so much so, that the movie went spiralling into a blockbuster hit.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>These movies are not just top grossers but evergreen too. You can watch them over and over again and still enjoy the scenes. So which of these movies is your favourite?</p>\r\n', '', '11/24/2019', '14-03-2020', '16-03-2020', 1, 0, 'Kuch kuch hota hai, Hum Saath Saath Hain, Kaho naa Pyaar Hai, Gadar, Devdas, Koi Mil Gaya,Veer Zara,No Entry,Dhoom 2,Om Shanti Om'),
(50, '7 female villains whoâ€™ve ruled Bollywood over the years', 'ABZYMOVIES-013-7 female villains whoâ€™ve ruled Bollywood over the years.png', 'ABZYMOVIES-013-7 female villains whoâ€™ve ruled Bollywood over the years.png', '<p>Being a villain in reel life and convincing the audience to completely hate while at the same time fear a character needs expertise that only a few possess. Here are the top 7 female villains who&rsquo;ve ruled Bollywood over the years:</p>\r\n\r\n<p><strong>1. Bindu</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Bindu.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 157px;\" /></strong>From a cruel, ruthless mom-in-law to a cynical aunt, our beloved Mona darling has definitely convinced us to instantly feel unsympathetic about the negative roles she played in various movies. Bindu was the one actress who personified the role of a &#39;vamp&#39;&nbsp;in the industry.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Kajol</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Kajol.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 135px;\" /></strong>This talented actress played the role of an obsessive admirer turned killer in Gupt (1997), who wouldn&rsquo;t hesitate to get rid of anything or anyone that tried to come in between her and her love interest. Her brilliant performance made her the first woman to win &ldquo;Best villain&rdquo; award in the history of Filmfare awards.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3. Simi Garewal</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/SimiGarewal.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 150px;\" /></strong>The cult favorite thriller movie &ldquo;Karz&quot; (1980) had many noteworthy elements including an engaging storyline, hit music and Rishi Kapoor&rsquo;s charming dance moves. But Simi Garewal&rsquo;s unparalleled portrayal of a cold-hearted gold-digger who mercilessly murders her wealthy husband just for money, earned her a lot of praise and a Filmfare nomination.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4. Priyanka Chopra</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/ckeditor/uploads/Priyanka Chopra 03.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 149px;\" /></strong>When it comes to playing an unapologetic vamp, nobody can beat Priyanka Chopra&rsquo;s brilliant performance in the movie &ldquo;Aitraaz (2004)&rdquo;. She made the character devilish yet so desirable and sassy that she completely overshadowed the lead characters.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5. Shabana Azmi</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Shabana Azmi.jpeg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 133px;\" /></strong>Shabana Azmi&rsquo;s portrayal of a witch in the 2002 movie &ldquo;Makdee&rdquo; became every kid&rsquo;s nightmare at that time. While the film along with child-actor Shweta Basu&rsquo;s performance were able to garner praise even on international platforms, Azmi sure managed to keep all of us away from old, abandoned houses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>6. Urmila Matondkar</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Urmila Matondkar 01.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 244px;\" /></strong>One of the sensational A-listers of the 90&rsquo;s, Urmila Matondkar gave an incredible performance while bringing the character of an obsessive and mentally unstable lover in the movie Pyaar Tune Kya Kiya (2001) and again, mentally unstable cold blooded killer in Kaun (1999).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>7. Rohini Hattangadi</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Rohini 01.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 265px;\" /></strong>This National Award winning actress played the villainous character of Amba in the movie &ldquo;Chaalbaaz&rdquo; and managed to shine bright even against the A-listers like Sridevi, Sunny Deol and Rajnikanth.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>These fine-actors and their awe-inspiring performances have set a benchmark in the history of Indian cinema which will truly continue to inspire the coming generations of actors.</p>\r\n', '', '12/08/2019', '16-03-2020', '16-03-2020', 2, 0, 'Bindu, Kajol, Simi Garewal, Priyanka Chopra, Shabana Azmi, Urmila Matondkar, Rohini Hattangadi, '),
(51, 'Bollywood stars who came back from the grip of death', 'ABZYMOVIES-014-Bollywood actors who came back from the grip of death.jpg', 'ABZYMOVIES-014-Bollywood actors who came back from the grip of death.jpg', '<p>While we only get to see what the stories of the movies tell us, we mostly miss out on the intense hard-work and effort the actors have to put to bring the story to life. Here are 8 Bollywood actors who got lucky and came back from the grip of death.</p>\r\n\r\n<p><strong>1. Amitabh Bachchan</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Amitabh Bachchan 01.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 242px;\" /></strong>While shooting a fight scene for the movie &ldquo;Coolie&rdquo; in 1982, Sr. Bachchan severely injured his intestines causing immense blood loss which almost took his life. On August 2, 1982, Amitabh Bachchan, by his own admission, was reborn. The actor, on the sets of his 1983 film Coolie, had a near-fatal accident that almost took his life. According to the original scene, Big B was supposed to land on a table, instead, he misjudged the jump and landed abruptly which hurt him badly. He was rushed to a hospital in Mumbai from the sets and the Bollywood legend had to undergo multiple surgeries and by his own admission, declared clinically dead for a few minutes before being put on the ventilator &ndash; the actor had himself mentioned this on his blog. For a week or so, he did not respond to any kind of treatment.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Nargis</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Nargis 03.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 267px;\" /></strong>Who doesn&rsquo;t know about the infamous fire that broke down on the sets of &ldquo;Mother India&rdquo;, trapping the lead actress Nargis in it. Thanks to her co-star and future husband Sunil Dutt who came to her rescue.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3. Anu Agarwal</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Anu Agarwal 01.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 300px;\" /></strong>Due to the severe injuries resulting from a tragic car accident during the shooting days of &ldquo;Aashiqui&rdquo;, Anu was in coma for 29 days. It took her months to recover after regaining consciousness.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4. Aamir Khan</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Aamir Khan  01.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 149px;\" />Mr. Perfectionist had a narrow escape from death while shooting for the movie &ldquo;Ghulam&rdquo; where he had to run towards a moving train and jump off the track at the last minute. The actor missed the mark and escaped from the collision by only a second!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5. Preity Zinta</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Preity Zinta 02.jpg\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 200px;\" /></strong>This bubbly beauty was lucky enough to escape death not once but twice. The first time it was a bomb blast when she was performing at a show in Colombo and the second was when a tsunami hit the shores of Thailand while she was enjoying her vacation there.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>6. Aishwarya Rai Bachchan</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Aishwarya Rai Bachchan 02.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 272px;\" /></strong>The diva miraculously survived after getting hit by a jeep that had gone out of control while shooting for &ldquo;Khakee&rdquo; near Nasik. The accident point is now named &ldquo;Aishwarya Point&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>7. Shahrukh Khan</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Shahrukh Khan 01.jpg\" style=\"width: 200px; height: 150px; border-width: 1px; border-style: solid; margin: 2px 10px; float: left;\" /></strong>King Khan has met with many accidents and has broken many bones while shooting for multiple movies in his career. But while shooting in a waterfall in Iceland for the song &ldquo;Gerua&rdquo; from the movie &ldquo;Dilwale&rdquo;, he almost slipped and fell, luckily was rescued.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>8. Hrithik Roshan</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Hrithik Roshan 01.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 263px;\" /></strong>This dashing actor suffered from a severe head injury while shooting for &ldquo;Bang Bang&rdquo; which<br />\r\nresulted in a blood clot in his brain. He had to undergo a critical brain surgery as a result.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>Agreed that no matter how detailed precautionary measures in place are, risk to accidents are indeed very much a part of every acting career. However, these dedicated actors simply brushing off such close encounters with death as mere occupational hazards is a humbling experience.</p>\r\n', '', '12/22/2019', '16-03-2020', '', 0, 0, 'Amitabh Bachchan, Nargis, Anu Agarwal, Aamir Khan, Preity Zinta, Aishwarya Rai Bachchan, Shahrukh Khan, Hrithik Roshan'),
(52, '10 Facts about Rekha No One Knows', 'ABZYMOVIES-015-10 facts about Rekha No One Knows.jpg', 'ABZYMOVIES-015-10 facts about Rekha No One Knows.jpg', '<p>Rekha has been one of those actresses who can never be forgotten for plenty of reasons. She has given some stellar performances, has looked ageless since forever and continues to enchant everyone with her timeless grace even today. There is a lot more to know about the lady with a deep and sensual voice and an elegant demeanor. Here are 10 facts about Rekha that not many may know of:</p>\r\n\r\n<p><strong>1. Rekha hails from a financially unstable family</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Blog 01-1.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 119px;\" /></strong>Bhanurekha Ganesan (her birth name) was born in Chennai. Her father was Tamil actor Gemini Ganesan and mother was Telugu actress Pushpavali. They weren&rsquo;t married when Rekha was born and Gemini always denied being her father. The unstable finances of the family forced Rekha into taking up acting as a career.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>2. Besides one sister, Rekha has 6 more half siblings</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Blog 02-1.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 126px;\" /></strong>All the siblings are born from her father, Gemini. Despite all of them being her half-siblings, Rekha has always been close to them.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>3. Rekha&rsquo;s first movie was as a child actor</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Blog 03.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 199px;\" /></strong>Telugu film Rangula Ratnam was Rekha&rsquo;s first film in 1966. As a heroine, she made her debut in Operation Jackpot Nalli C.I.D. 999 which was a Kannada film released in 1969, the same year of her Hindi film debut in Anjana Safar.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>4. For a long time, nobody knew about Rekha&rsquo;s family</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Blog 04.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 138px;\" /></strong>Rekha, being a very private person, never revealed her lineage. She first talked about her parents to the media only in the 70&#39;s.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>5. Rekha wanted to become an airhostess</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Blog 05.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 145px;\" />Rekha always dreamt of being an airhostess. However, she was rejected because she was too young to qualify.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>6. The gorgeous Rekha was once considered an ugly duckling in the industry.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Blog 06.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 115px;\" />Rekha always dreamt of being an airhostess. However, she was rejected because she was too young to qualify.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>7. Rekha is an excellent mimicry artist</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Blog 07.png\" style=\"width: 200px; height: 128px; border-width: 1px; border-style: solid; margin: 2px 10px; float: left;\" /></strong>She is so good at it that she was chosen to dub for Neetu Singh in Yaarana and Smita Patil in Waaris.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>8. Rekha doesn&rsquo;t have a stylist</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Blog 08.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 123px;\" /></strong>The ever stunning style icon Rekha designs her clothes herself and styles all by herself. She has never had a stylist!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>9. Unlike most Bollywood celebs, Rekha is very punctual and professional</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Blog 009.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: left; width: 200px; height: 174px;\" /></strong>She is always on time for her shoots and never keeps anyone waiting.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><strong>10. Rekha loves singing</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://dev.abzy.com/abzy_admin/blog/ckeditor/uploads/Blog 10.png\" style=\"border-width: 1px; border-style: solid; margin: 2px 10px; float: right; width: 200px; height: 111px;\" /></strong>She has sung two songs in her movie, Khoobsurat in which the music was composed by R. D Burman.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>Rekha is one such icon from the industry who is followed even by the new generation. Of the many heroines of yesteryears, Rekha has managed to keep herself evergreen and continues to enthrall everyone with her beauty and performances even today! She can undoubtedly give even the current generation of actresses a run for their money.</p>\r\n', '', '01/05/2020', '17-03-2020', '17-03-2020', 3, 0, 'Rekha, Rekha loves singing');

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
(12, 9, 'deeps', 'test@test.com', 'test', 0, '23-01-2020', '16:58:17'),
(13, 10, 'Deepika Sumedh Kamble', 'prasad@turtlenode.com', 'teasf', 0, '23-01-2020', '16:46:40'),
(14, 10, 'dfgdfg', 'sona20.kamble@gmail.com', 'dfg', 0, '23-01-2020', '16:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `bollywood_spl`
--

CREATE TABLE `bollywood_spl` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `expiry` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `updated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bollywood_spl`
--

INSERT INTO `bollywood_spl` (`id`, `image`, `name`, `mobile`, `aadhar`, `pan`, `dob`, `address`, `license`, `expiry`, `account`, `ifsc`, `created`, `updated`) VALUES
(700, '01-01-1970_Niraj Prajapati.png', 'Niraj C. Prajapati', '9004487376', '123514523622525', 'AES4585SEES', '13/03/1992', 'Savarkar nagar, maladh west', 'ED4522665735', '03/19/2022', '25663325662235', 'SBI15264235', '03-10-2021', '03-10-2021');

-- --------------------------------------------------------

--
-- Table structure for table `box_office`
--

CREATE TABLE `box_office` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `update` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `box_office`
--

INSERT INTO `box_office` (`id`, `image`, `title`, `created`, `update`, `category`) VALUES
(9, 'ABZY-Cool-SS-.png', '', '04-02-2020', '', 'Cool'),
(10, 'ABZY-Dhakad-SS-.png', '', '04-02-2020', '', 'Dhakad'),
(11, 'ABZY-BOX-office-SS.png', '', '04-02-2020', '', 'Movies');

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
(9, '23-01-2020_Amul-banner-Img.png', '1', '23-01-2020', ''),
(10, '23-01-2020_Amul-banner-Block-2.png', '2', '23-01-2020', ''),
(11, '24-01-2020_commercial image 03.png', '3', '24-01-2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `g_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `thumbnil` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `updated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`g_id`, `file`, `thumbnil`, `category`, `created`, `updated`) VALUES
(3, 'Sleep Away.mp3', '', 'ringtone', '20-01-2020', ''),
(4, 'SampleVideo_1280x720_1mb.mp4', '', 'video', '20-01-2020', '20-01-2020'),
(27, '01-Ranbeer-Kapoor.jpg', '01-Ranbeer-Kapoor.jpg', 'wallpaper', '07-02-2020', ''),
(28, '02-Ranveer-Singh.jpg', '02-Ranveer-Singh.jpg', 'wallpaper', '07-02-2020', ''),
(29, '03.-Varun-Dhavan.jpg', '03.-Varun-Dhavan.jpg', 'wallpaper', '07-02-2020', ''),
(31, '05.-Shruthi-hasan.jpg', '05.-Shruthi-hasan.jpg', 'wallpaper', '07-02-2020', ''),
(32, '06.-Salman-Khan.jpg', '06.-Salman-Khan.jpg', 'wallpaper', '07-02-2020', ''),
(33, '04-Tiger-shroff.jpg', '04-Tiger-shroff.jpg', 'wallpaper', '07-02-2020', ''),
(34, '07.-Alia-Bhatt.jpg', '07.-Alia-Bhatt.jpg', 'wallpaper', '12-03-2020', ''),
(35, '08.Rajesh-Khanna.jpg', '08.Rajesh-Khanna.jpg', 'wallpaper', '12-03-2020', ''),
(36, '09-Amitabh-Bachchan.jpg', '09-Amitabh-Bachchan.jpg', 'wallpaper', '12-03-2020', ''),
(37, '10.Hema-Malini.jpg', '10.Hema-Malini.jpg', 'wallpaper', '12-03-2020', ''),
(38, '11.-Rekha.jpg', '11.-Rekha.jpg', 'wallpaper', '12-03-2020', ''),
(39, '12.-Dev-Anand.jpg', '12.-Dev-Anand.jpg', 'wallpaper', '12-03-2020', ''),
(40, '13.-Rishi-Kapoor.jpg', '13.-Rishi-Kapoor.jpg', 'wallpaper', '12-03-2020', ''),
(42, '14.-Madhuri.jpg', '14.-Madhuri.jpg', 'wallpaper', '12-03-2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `home_banner`
--

CREATE TABLE `home_banner` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `updated` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_banner`
--

INSERT INTO `home_banner` (`id`, `url`, `created`, `updated`) VALUES
(0, '2-ABZY-HOME-PAGE.png', '06-02-2020', '');

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
(1, '102', 'PREM TAPASYA', 'Jeetendra, Rekha', '1983', '102.png', 0),
(2, '103', 'PYAR KI KAHANI', 'Amitabh Bachchan, Tanuja, Farida Jalal', '1971', '103.png', 0),
(3, '104', 'SAAT HINDUSTANI', 'Amitabh Bachchan, Madhu, Uttpal Dutt', '1969', '104.png', 0),
(4, '105', 'SHESHNAAG', 'Jeetendra, Rekha, Rishi Kapoor, Anupam Kher ', '1990', '105.png', 0),
(5, '106', 'SUHAAG RAAT', 'Jeetendra, Rajshree, Sulochana Latkar, Tun Tun, Mehmood, Laxmi Chhaya', '1968', '106.png', 0),
(6, '107', 'SUHANA SAFAR', 'Shashi Kapoor, Sharmila Tagore', '1970', '107.png', 0),
(7, '108', 'SURAKSHA', 'Mithun Chakraborty, Ranjeet, Jagdeep', '1979', '108.png', 0),
(8, '109', 'TAWAIF', 'Rishi Kapoor, Poonam Dhilon, Rati Agnihotri ', '1985', '109.png', 0),
(9, '110', 'TERI PAYAL MERA GEET', 'Govinda, Meenakshi Shehhadri, Kader Khan', '1993', '110.png', 0),
(10, '111', 'THODI SI BEWAFAI', 'Rajesh Khanna, Shabana, Padmini Kolhapure', '1980', '111.png', 0),
(11, '112', 'WANTED', 'Tina Munim, Mithun Chakraborty', '1983', '112.png', 0),
(12, '113', 'YAADON KI KASAM', 'Mithun Chakraborty, Zeenat Aman', '1985', '113.png', 0),
(13, '114', 'SANGRAM', 'Ajay Devgan, Karisma Kapoor, Ayesha Jhulka', '1993', '114.png', 0),
(14, '115', 'BALMAA', 'Avinash Wadhwan, Ayesha Jhulka', '1992', '115.png', 0),
(15, '116', 'DHAAL', 'Suniel Shetty, Vinod Khanna, Danny Gonzappa, Amresh Puri', '1997', '116.png', 0),
(16, '117', 'ZOR LAGAA KE...HAIYA!', 'Mithun Chakraborty, Riya Sen, Gulshan Grover', '2009', '117.png', 0),
(17, '118', 'APMAAN KI AAG', 'Govinda, Sonam', '1990', '118.png', 0),
(18, '119', 'ANSH: The Deadly Part', 'Om Puri, Ashutosh Rana, Sharba Mukherjee', '2002', '119.png', 0),
(19, '120', 'HAWALAAT', 'Mithun Chakraborty, Mandakini, Padmini Kolhapure, Shatrugan Sinha', '1987', '120.png', 0),
(20, '121', 'KRANTI KSHETRA', 'Pooja Bhatt, Mithun Chakraborty, Shakti Kapoor, Gulshan Grover', '1994', '121.png', 0),
(21, '122', 'PEHLA PEHLA PYAR', 'Rishi Kapoor, Tabu, Anupam Kher', '1994', '122.png', 0),
(22, '123', 'YE AAG KAB BHUJHEGI', 'Sunil Dutt, Rekha, Shiba', '1991', '123.png', 0),
(23, '124', 'SIR UTHA K JIO', 'Naseeruddin Shah, Madhoo, Raza Murad', '1998', '124.png', 0),
(24, '125', 'LAHU KE DO RANG', 'Vinod Khanna, Shabana Azmi, Helen', '1979', '125.png', 0),
(25, '126', 'DIL JALA', 'Jackie Shroff, Farha', '1987', '126.png', 0),
(26, '127', 'MAFIA RAAJ', 'Mithun Chakraborty, Ayesha Julka, Kiran Kumar', '1990', '127.png', 0),
(27, '128', 'MERI BIWI KA JAWAB NAHI', 'Akshay Kumar, Sridevi', '2004', '128.png', 0),
(28, '129', 'DULHAN DILWALE KI ', 'Venkatesh, Preity Zinta, Srihari, Brahmanandam', '2001', '129.png', 0),
(29, '130', 'JAAL SAAZ ', 'Ronit Roy, Madhu, Kamal Sadana, Mukesh Khanna', '2000', '130.png', 0),
(30, '131', 'UTTAR DAKSHIN', 'Rajnikant, Jackie Shroff, Madhuri Dixit,Bharathi', '1987', '131.png', 0),
(31, '132', 'AGAR TUM NA HOTE', 'Rajesh Khanna, Rekha, Raj Babbar ', '1983', '132.png', 0),
(32, '133', 'HAATHI MERA SAATHI', 'Rajesh Kanna, Tanuja, Madan Puri, Sujit, David, K.N Singh', '1971', '133.png', 0),
(33, '134', 'MAIN AWARA HOON', 'Sanjay Dutt, Rati Agnihotri, Raj Babbar, Jaya Prada', '1983', '134.png', 0),
(34, '135', 'MUMBAI KI KIRAN BEDI', 'Ramkumar, Arunthathi, Naan Kadavul', '2016', '135.png', 0),
(35, '136', 'SHAANDAR', 'Mithun Chakraborthy, Juhi Chawla', '1990', '136.png', 0),
(36, '137', 'PYAR KE KABIL', 'Rishi Kapoor, Padmini Kolhapure', '1987', '137.png', 0),
(37, '138', 'AWAAZ', 'Rajesh Khanna, Jaya Pradha, Rakesh Roshan', '1984', '138.png', 1),
(38, '139', 'DHARAM ADHIKAARI', 'Dilip Kumar, Sridevi, Kader Khan', '1986', '139.png', 0),
(39, '140', 'MY DEAR BIG B', 'Madhavan, Bhavna, Prakash Raj, Tejashree', '2007', '140.png', 0),
(40, '141', 'KHONKAR HASINA', 'Ali Bastian, Marc Baylis', '2016', '141.png', 0),
(41, '142', 'MERA SAAYA', 'Sunil Dutt, Sarika', '1966', '142.png', 0),
(42, '143', 'SINDOOR', 'Govinda, Neelam, Jaya Prada', '1987', '143.png', 0),
(43, '144', 'KAALI TOPI LAAL RUMAAL', 'Mithun Chakraborhy, Kamal Sadanah', '2000', '144.png', 0),
(44, '145', 'JANAM KUNDLI', 'Jeetendra, Ann Agarwal, Vinod Khanna, Reena Roy, Paresh Raval', '1995', '145.png', 0),
(45, '146', 'GURU MAHAAGURU', 'Naseeruddin Shah, Om Puri, Ashutosh Rana', '2002', '146.png', 0),
(46, '147', 'JO DAAR GAYA WHO MAR GAYA', 'Kamal Hassan, Sridevi', '2007', '147.png', 0),
(47, '148', 'JAN BAAZ POLICE OFFICER (Dubbed-Hindi)', 'Cythia Luster, John Cheung, Sharon Young Godfrey Jo', '2015', '148.png', 0),
(48, '149', 'AAR PAAR', 'Mithun Chakraborty, Roshima, Utpal Dutt', '1985', '149.png', 0),
(49, '150', 'VICHITRA DUNIYA', 'David Thewlis, Katie Carr, Tyron Leitso', '2012', '150.png', 0),
(50, '151', 'AAKHRI GHULAM', 'Anupam Kher, Shakti Kapoor, Raj Babbar, Moushmi Chatterjee, Anupam Kher', '1989', '151.png', 0),
(51, '152', 'DHAYAM', 'Santosh Rathap, Jayakumar, Jeeva Ravi', '2016', '152.png', 0),
(52, '153', 'PAAP KO JALAKAR RAAKH KAR DOONGA', 'Dharmendra, Govinda, Anita Raj, Tanuja', '1988', '153.png', 0),
(53, '154', 'DUSHMAN', 'Rajesh Khanna, Mumtaz, Meena Kumari', '1972', '154.png', 0),
(54, '155', 'RAASTE KA PATHAR', 'Amitabh Bachchan, Shatrughan Sinha', '1983', '155.png', 0),
(55, '156', 'GHAR EK MANDIR', 'Shashi Kapoor, Moushumi Chatterjee, Mithun Chakraborty', '1984', '156.png', 0),
(56, '157', 'BHAGYAWAN', 'Govinda, Juhi Chawla, Pran, Asha Parekh', '1994', '157.png', 0),
(57, '158', 'BUS PARTY TO HELL (Dubbed-Hindi)', 'Stefani Blake, Shelby McCullough, Vidonna Michaels', '2017', '158.png', 0),
(58, '159', 'GLAMOUR GIRL', 'Ronit Roy, Rohit Roy, Ritu Shivpuri, Dolly Bindra', '2000', '159.png', 0),
(59, '160', 'ANJAAM', 'Shashi Kapoor, Hema Malini', '1987', '160.png', 0),
(60, '161', 'JAANE ANJAANE', 'Shammi Kapoor, Leena Chandravarkar, Vinod Khanna, Helen', '1971', '161.png', 0),
(61, '162', 'HONEYMOON', 'Rishi Kapoor, Ashwini Bhave', '1992', '162.png', 0),
(62, '163', 'KAISE KAISE RISHTEY', 'Ayesha Jhulka, Kiran Kumar, Shakti Kapoor', '1993', '163.png', 0),
(63, '164', 'DHARAM ADHIKARI', 'Dilip Kumar, Jitendra, Sridevi, Kadar Khan, Pran, Shakti Kapoor', '1986', '164.png', 0),
(64, '165', 'DO AUR DO PAANCH', 'Amithabh Bachan, Shashi Kapoor, Hema Malini,Kader Khan', '1980', '165.png', 0),
(65, '166', 'MAA', 'Dharmendhra, Hema Malini, Nerupa Roy, Ranjeet,  Jaysreeti, Om Prakash, ', '1976', '166.png', 0),
(66, '167', 'EK AUR JUNG', 'Dharmendra, Raj Babbar, Sheeba, Mukesh Khanna, Kiran Kumar', '2001', '167.png', 0),
(67, '168', 'AAKHRI BAAZI', 'Govinda, Shatrughan Sinha, Moushumi Chatterjee, Mandakini', '1989', '168.png', 0),
(68, '169', 'PYARI BEHENA', 'Mithun Chakarborty, Padmini Kolhapure, Vinod Mehra', '1985', '169.png', 0),
(69, '170', 'KHAWAB', 'Mithun Chakarborty, Ranjeeta, Nasiuddin Shah.', '1980', '170.png', 0),
(70, '171', 'IMAAN DHARAM', 'Amitabh Bachchan, Aparna Sen, Shashi Kapoor', '1977', '171.png', 0),
(71, '172', 'HIMMAT AUR MEHANAT', 'Jeetendra, Shridevi, Shammi Kapoor', '1987', '172.png', 0),
(72, '173', 'MAHAAN', 'Amitabh Bachchan, Waheeda Rehman, Parveen Babi, Zeenat Aman', '1983', '173.png', 0),
(73, '174', 'DIL KI BAAZI', 'Akshay Kumar, Ayesha Jhulka Avinash Wadhawan', '1993', '174.png', 0),
(74, '175', 'DO CHEHRE', 'Sunil Shetty, Shatrughan Sinha, Raveena Tandon, Kiran Kumar', '2012', '175.png', 0),
(75, '176', 'AAG AUR CHINGAARI', 'Ravi Kisan, Kiran Kumar, Paresh Rawal, Shakti Kapoor, Asrani, Aprajeta, Kunal Singh', '1993', '176.png', 0),
(76, '177', 'ZEHREELA JUNGLE (Dubbed-Hindi)', 'Tony Carney, Manaswee Krittanookul, Supaksorn Chaimongkol, Greg Eismin', '2006', '177.png', 0),
(77, '178', 'INQUILAAB', 'Amitabh Bachchan, Sridevi', '1984', '178.png', 0),
(78, '179', 'SAFAR', 'Rajesh Khanna, Sharmila Tagore, Firoz Khan', '1980', '179.png', 0),
(79, '180', 'DARD KA RISHTA', 'Sunil Dutt, Reena Roy, Smita Patil, Padmini Kolhapure, Baby Khushboo', '1982', '180.png', 0),
(80, '181', 'HERO HINDUSTANI', 'Arshad Warshi, Namrata Shirodkar, Paresh Rawal', '1998', '181.png', 0),
(81, '182', 'IMTIHAAN', 'Vinod Khanna, Tanuja', '1974', '182.png', 0),
(82, '183', 'AJNABEE', 'Rajesh Khanna, Zeenat Aman', '1974', '183.png', 0),
(83, '184', 'KANOON', 'Ajay Devgn, Urmila Matondkar', '1994', '184.png', 0),
(84, '185', 'PREMYOG', 'Rishi Kapoor, Shammi Kapoor, Prem Chopra, Madhoo', '1994', '185.png', 0),
(85, '186', 'NEW DELHI', 'Jitendra, Sumalatha, Suresh Gopi Raza', '1988', '186.png', 0),
(86, '187', 'HUM DONO', 'Rajesh Khanna, Hema Malini, Reena Roy', '1985', '187.png', 0),
(87, '188', 'MERA FARZ', 'Nagarjun, Sridevi, Amrish Puri', '1989', '188.png', 0),
(88, '189', 'FARZ', 'Jeetendra, Babita, Aruna Irani', '1967', '189.png', 0),
(89, '190', 'JANTA HAWALDAR', 'Rajesh Khanna, Hema Malini, Ashok Kumar', '1979', '190.png', 0),
(90, '191', 'KHANDAAN', 'Sunil Dutt, Nutan, Om Prakash', '1969', '191.png', 0),
(91, '192', 'KHOON KA RISHTA', 'Jeetendra, Neetu Singh, Amjad Khan', '1981', '192.png', 0),
(92, '193', 'RAJ KUMAR', 'Shammi Kapoor, Sadhana, Pran', '1964', '193.png', 0),
(93, '194', 'RESHAM KI DORI', 'Dharmendra, Sairabano, Sujit Kumar', '1974', '194.png', 0),
(94, '195', 'SANJOG', 'Jeetendra, Jay Prada', '1985', '195.png', 0),
(95, '196', 'SANYASI', 'Manoj Kumar, Hema Malini, Prem Chopra', '1975', '196.png', 0),
(96, '197', 'SHALIMAR', 'Dharmendra, Zeenat Aman, Shammi Kapoor', '1978', '197.png', 0),
(97, '198', 'SITARA', 'Mithun Chakraborty, Zarina Waheb', '1980', '198.png', 0),
(98, '199', 'TOHFA', 'Jeetendra, Shridevi, Jay Prada, Kader Khan', '1984', '199.png', 0),
(99, '200', 'YEH RAAT PHIR NA AAYEGI', 'Jeetendra, Meenakshi Sheshadri, Aruna Irani', '1992', '200.png', 0),
(100, '201', 'ZINDAGANI', 'Mithun Chakraborty, Rati Agnihotri', '1986', '201.png', 0),
(101, '202', 'ZULAM KI ZANJEER ', 'Chiranjeevi, Rajnikant, Shri Devi, Jai Lalita', '1969', '202.png', 0),
(102, '203', 'JAANBAAZ HASEENAYEN', 'Ramba Jyoti Ka, Laila', '2010', '203.png', 0),
(103, '204', 'JEEVAN DAATA', 'Chunky Pandey, Kimi Katkar, Aditya Pancholi, Sonu Walia', '1991', '204.png', 0),
(104, '205', 'KAMA SUTRA: A TELE OF LOVE', 'Rekha, Naveen, Andrew, Indira Verma', '1996', '205.png', 0),
(105, '206', 'CRASH POINT (Dubbed-Hindi)', 'Rekha, Naveen, Andrew, Indira Verma', '2011', '206.png', 0);

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
(20, '176', '2020-01-23', '4:36', '6:50', '2020-01-23 4:36', '2020-01-23 6:50', '', '', '', '', 'AAG AUR CHINGAARI', 'MITHUN CHAKRABORTY, RATI AGNIHOTRI, DANNY', '', 0, '', ''),
(21, '151', '2020-01-23', '6:50', '9:41', '2020-01-23 6:50', '2020-01-23 9:41', '', '', '', '', 'AAKHRI GHULAM ', 'SUNIL DUTT, NUTAN, OM PRAKASH', '', 0, '', ''),
(22, '149', '2020-01-23', '9:41', '12:24', '2020-01-23 9:41', '2020-01-23 12:24', '', '', '', '', 'AAR PAAR', 'CHIRANJEEVI, SRIDEVI, SHARAD SAXENA', '', 0, '', ''),
(23, '132', '2020-01-23', '12:24', '15:27', '2020-01-23 12:24', '2020-01-23 15:27', '', '', '', '', 'AGAR TUM NA HOTE ', 'GOVINDA, NEELAM, SHASHI KAPOOR, JAYA PRADA', '', 0, '', ''),
(24, '183', '2020-01-23', '15:27', '18:17', '2020-01-23 15:27', '2020-01-23 18:17', '', '', '', '', 'AJNABEE ', 'VINOD KHANNA, LEENA CHANDAVARKAR, KAMINI KAUSHAL, MEHMOOD', '', 0, '', ''),
(25, '160', '2020-01-23', '18:17', '21:08', '2020-01-23 18:17', '2020-01-23 21:08', '', '', '', '', 'ANJAAM', 'AMITHAB BACHCHAN, SAIRA BANU, VINOD KHANNA', '', 0, '', ''),
(26, '119', '2020-01-23', '21:08', '0:06', '2020-01-23 21:08', '2020-01-23 0:06', '', '', '', '', 'ANSH - The Deadly Part ', 'AJAY DEVGAN. URMILA MATONDKAR', '', 0, '', ''),
(27, '118', '2020-01-24', '0:06', '2:19', '2020-01-24 0:06', '2020-01-24 2:19', '', '', '', '', 'APMAN KI AAG', 'SUNIL SHETTY, SHATRUGHAN SINHA, RAVEENA TANDON, KIRAN KUMAR', '', 1, '', ''),
(28, '138', '2020-01-24', '2:19', '4:38', '2020-01-24 2:19', '2020-01-24 4:38', '', '', '', '', 'AWAAZ ', 'RAJESH KHANNA,SHARMILA TAGORE,FIROZ KHAN', '', 0, '', ''),
(29, '115', '2020-01-24', '4:38', '6:56', '2020-01-24 4:38', '2020-01-24 6:56', '', '', '', '', 'BALMAA', 'SHASHI KAPOOR, SANJEEV KUMAR, VIDYA SINHA, KADER KHAN', '', 0, '', ''),
(30, '157', '2020-01-24', '6:56', '9:36', '2020-01-24 6:56', '2020-01-24 9:36', '', '', '', '', 'BHAGYAWAN ', 'SAI KUMAR, SATYA PRAKASH, VENKATEEN', '', 0, '', ''),
(31, '206', '2020-01-24', '9:36', '12:27', '2020-01-24 9:36', '2020-01-24 12:27', '', '', '', '', 'CRASH POINT ', 'MITHUN CHAKRABORTY, GAJENDRA CHOUHAN, SIDDHARTH DHAWAN, KADER KHAN', '', 0, '', ''),
(32, '203', '2020-01-24', '12:27', '15:20', '2020-01-24 12:27', '2020-01-24 15:20', '', '', '', '', 'CYTHIA LUSTER (JAANBAAZ POLICE OFFICER)', 'DHARMENDRA, VINOD MEHRA, REKHA, UTTPAL DUTT', '', 0, '', ''),
(33, '116', '2020-01-24', '15:20', '18:21', '2020-01-24 15:20', '2020-01-24 18:21', '', '', '', '', 'DHAAL', 'OM PURI, ASHUTOSH RANA', '', 0, '', ''),
(34, '139', '2020-01-24', '18:21', '20:58', '2020-01-24 18:21', '2020-01-24 20:58', '', '', '', '', 'DHARAM ADHIKAARI ', 'RONIT ROY, MADHOO, KAMAL SADANAH', '', 0, '', ''),
(35, '126', '2020-01-24', '20:58', '23:54', '2020-01-24 20:58', '2020-01-24 23:54', '', '', '', '', 'DIL JALA ', 'DHARMENDRA, REENA ROY, NIRUPA ROY, DR SHRIRAM LAGOO', '', 0, '', ''),
(36, '174', '2020-01-24', '23:54', '1:58', '2020-01-24 23:54', '2020-01-24 1:58', '', '', '', '', 'DIL KI BAAZI ', 'MITHUN CHAKARVARTI, ZEENATAMAN', '', 0, '', ''),
(37, '163', '2020-01-25', '1:58', '2:28', '2020-01-25 1:58', '2020-01-25 2:28', '', '', '', '', 'DO AUR DO PAANCH', 'SUNEHARI YAADEIN', '', 0, '', ''),
(38, '129', '2020-01-25', '2:28', '4:02', '2020-01-25 2:28', '2020-01-25 4:02', '', '', '', '', 'DULHAN DILWALE KI', 'SANJEEV KUMAR, VIDYA SINHA, ASHOK KUMAR', '', 0, '', ''),
(39, '115', '2020-01-25', '18:17', '21:08', '2020-01-25 18:17', '2020-01-25 21:08', '', '', '', '', 'SHESHNAAG', 'Jeetendra, Rekha, Rishi Kapoor, Anupam Kher', '', 1, '', ''),
(40, '183', '2020-01-25', '21:08', '0:06', '2020-01-25 21:08', '2020-01-25 0:06', '', '', '', '', 'PYAR KI KAHANI', 'Amitabh Bachchan, Tanuja, Farida Jalal', '', 1, '', ''),
(42, '126', '2020-01-26', '2:19', '4:36', '2020-01-26 2:19', '2020-01-26 4:36', '', '', '', '', 'YE AAG KAB BHUJHEGI', 'Sunil Dutt, Rekha, Shiba', '', 1, '', ''),
(43, '176', '2020-01-26', '4:36', '6:50', '2020-01-26 4:36', '2020-01-26 6:50', '', '', '', '', 'AAG AUR CHINGAARI', 'MITHUN CHAKRABORTY, RATI AGNIHOTRI, DANNY', '', 0, '', ''),
(44, '151', '2020-01-26', '6:50', '9:41', '2020-01-26 6:50', '2020-01-26 9:41', '', '', '', '', 'AAKHRI GHULAM ', 'SUNIL DUTT, NUTAN, OM PRAKASH', '', 0, '', ''),
(45, '149', '2020-01-26', '9:41', '12:24', '2020-01-26 9:41', '2020-01-26 12:24', '', '', '', '', 'AAR PAAR', 'CHIRANJEEVI, SRIDEVI, SHARAD SAXENA', '', 0, '', ''),
(46, '132', '2020-01-26', '12:24', '15:27', '2020-01-26 12:24', '2020-01-26 15:27', '', '', '', '', 'AGAR TUM NA HOTE ', 'GOVINDA, NEELAM, SHASHI KAPOOR, JAYA PRADA', '', 0, '', ''),
(47, '183', '2020-01-26', '15:27', '18:17', '2020-01-26 15:27', '2020-01-26 18:17', '', '', '', '', 'AJNABEE ', 'VINOD KHANNA, LEENA CHANDAVARKAR, KAMINI KAUSHAL, MEHMOOD', '', 0, '', ''),
(48, '160', '2020-01-26', '18:17', '21:08', '2020-01-26 18:17', '2020-01-26 21:08', '', '', '', '', 'ANJAAM', 'AMITHAB BACHCHAN, SAIRA BANU, VINOD KHANNA', '', 0, '', ''),
(49, '119', '2020-01-26', '21:08', '0:06', '2020-01-26 21:08', '2020-01-26 0:06', '', '', '', '', 'ANSH - The Deadly Part ', 'AJAY DEVGAN. URMILA MATONDKAR', '', 0, '', ''),
(50, '118', '2020-01-26', '0:06', '2:19', '2020-01-26 0:06', '2020-01-26 2:19', '', '', '', '', 'APMAN KI AAG', 'SUNIL SHETTY, SHATRUGHAN SINHA, RAVEENA TANDON, KIRAN KUMAR', '', 0, '', ''),
(51, '138', '2020-01-26', '2:19', '4:38', '2020-01-26 2:19', '2020-01-26 4:38', '', '', '', '', 'AWAAZ ', 'RAJESH KHANNA,SHARMILA TAGORE,FIROZ KHAN', '', 0, '', ''),
(52, '115', '2020-01-27', '4:38', '6:56', '2020-01-27 4:38', '2020-01-27 6:56', '', '', '', '', 'BALMAA', 'SHASHI KAPOOR, SANJEEV KUMAR, VIDYA SINHA, KADER KHAN', '', 0, '', ''),
(53, '157', '2020-01-27', '6:56', '9:36', '2020-01-27 6:56', '2020-01-27 9:36', '', '', '', '', 'BHAGYAWAN ', 'SAI KUMAR, SATYA PRAKASH, VENKATEEN', '', 0, '', ''),
(54, '206', '2020-01-27', '9:36', '12:27', '2020-01-27 9:36', '2020-01-27 12:27', '', '', '', '', 'CRASH POINT ', 'MITHUN CHAKRABORTY, GAJENDRA CHOUHAN, SIDDHARTH DHAWAN, KADER KHAN', '', 0, '', ''),
(55, '203', '2020-01-27', '12:27', '15:20', '2020-01-27 12:27', '2020-01-27 15:20', '', '', '', '', 'CYTHIA LUSTER (JAANBAAZ POLICE OFFICER)', 'DHARMENDRA, VINOD MEHRA, REKHA, UTTPAL DUTT', '', 0, '', ''),
(56, '116', '2020-01-27', '15:20', '18:21', '2020-01-27 15:20', '2020-01-27 18:21', '', '', '', '', 'DHAAL', 'OM PURI, ASHUTOSH RANA', '', 0, '', ''),
(57, '139', '2020-01-27', '18:21', '20:58', '2020-01-27 18:21', '2020-01-27 20:58', '', '', '', '', 'DHARAM ADHIKAARI ', 'RONIT ROY, MADHOO, KAMAL SADANAH', '', 0, '', ''),
(58, '126', '2020-01-27', '20:58', '23:54', '2020-01-27 20:58', '2020-01-27 23:54', '', '', '', '', 'DIL JALA ', 'DHARMENDRA, REENA ROY, NIRUPA ROY, DR SHRIRAM LAGOO', '', 0, '', ''),
(59, '174', '2020-01-27', '23:54', '1:58', '2020-01-27 23:54', '2020-01-27 1:58', '', '', '', '', 'DIL KI BAAZI ', 'MITHUN CHAKARVARTI, ZEENATAMAN', '', 0, '', ''),
(60, '165', '2020-01-27', '1:58', '2:28', '2020-01-27 1:58', '2020-01-27 2:28', '', '', '', '', 'DO AUR DO PAANCH', 'SUNEHARI YAADEIN', '', 0, '', ''),
(61, '129', '2020-01-27', '2:28', '4:36', '2020-01-27 2:28', '2020-01-27 4:36', '', '', '', '', 'DULHAN DILWALE KI v', 'SANJEEV KUMAR, VIDYA SINHA, ASHOK KUMAR', '', 0, '', ''),
(62, '176', '2020-01-28', '4:36', '6:50', '2020-01-28 4:36', '2020-01-28 6:50', '', '', '', '', 'AAG AUR CHINGAARI', 'MITHUN CHAKRABORTY, RATI AGNIHOTRI, DANNY', '', 0, '', ''),
(63, '151', '2020-01-28', '6:50', '9:41', '2020-01-28 6:50', '2020-01-28 9:41', '', '', '', '', 'AAKHRI GHULAM ', 'SUNIL DUTT, NUTAN, OM PRAKASH', '', 0, '', ''),
(64, '149', '2020-01-28', '9:41', '12:24', '2020-01-28 9:41', '2020-01-28 12:24', '', '', '', '', 'AAR PAAR', 'CHIRANJEEVI, SRIDEVI, SHARAD SAXENA', '', 0, '', ''),
(65, '132', '2020-01-28', '12:24', '15:27', '2020-01-28 12:24', '2020-01-28 15:27', '', '', '', '', 'AGAR TUM NA HOTE ', 'GOVINDA, NEELAM, SHASHI KAPOOR, JAYA PRADA', '', 0, '', ''),
(66, '183', '2020-01-28', '15:27', '18:17', '2020-01-28 15:27', '2020-01-28 18:17', '', '', '', '', 'AJNABEE ', 'VINOD KHANNA, LEENA CHANDAVARKAR, KAMINI KAUSHAL, MEHMOOD', '', 0, '', ''),
(67, '160', '2020-01-28', '18:17', '21:08', '2020-01-28 18:17', '2020-01-28 21:08', '', '', '', '', 'ANJAAM', 'AMITHAB BACHCHAN, SAIRA BANU, VINOD KHANNA', '', 0, '', ''),
(68, '119', '2020-01-28', '21:08', '0:06', '2020-01-28 21:08', '2020-01-28 0:06', '', '', '', '', 'ANSH - The Deadly Part ', 'AJAY DEVGAN. URMILA MATONDKAR', '', 0, '', ''),
(69, '118', '2020-01-28', '0:06', '2:19', '2020-01-28 0:06', '2020-01-28 2:19', '', '', '', '', 'APMAN KI AAG', 'SUNIL SHETTY, SHATRUGHAN SINHA, RAVEENA TANDON, KIRAN KUMAR', '', 0, '', ''),
(70, '138', '2020-01-28', '2:19', '4:38', '2020-01-28 2:19', '2020-01-28 4:38', '', '', '', '', 'AWAAZ ', 'RAJESH KHANNA,SHARMILA TAGORE,FIROZ KHAN', '', 0, '', ''),
(71, '115', '2020-01-29', '4:38', '6:56', '2020-01-29 4:38', '2020-01-29 6:56', '', '', '', '', 'BALMAA', 'SHASHI KAPOOR, SANJEEV KUMAR, VIDYA SINHA, KADER KHAN', '', 0, '', ''),
(72, '157', '2020-01-29', '6:56', '9:36', '2020-01-29 6:56', '2020-01-29 9:36', '', '', '', '', 'BHAGYAWAN ', 'SAI KUMAR, SATYA PRAKASH, VENKATEEN', '', 0, '', ''),
(73, '206', '2020-01-29', '9:36', '12:27', '2020-01-29 9:36', '2020-01-29 12:27', '', '', '', '', 'CRASH POINT ', 'MITHUN CHAKRABORTY, GAJENDRA CHOUHAN, SIDDHARTH DHAWAN, KADER KHAN', '', 0, '', ''),
(74, '203', '2020-01-29', '12:27', '15:20', '2020-01-29 12:27', '2020-01-29 15:20', '', '', '', '', 'CYTHIA LUSTER (JAANBAAZ POLICE OFFICER)', 'DHARMENDRA, VINOD MEHRA, REKHA, UTTPAL DUTT', '', 0, '', ''),
(75, '116', '2020-01-29', '15:20', '18:21', '2020-01-29 15:20', '2020-01-29 18:21', '', '', '', '', 'DHAAL', 'OM PURI, ASHUTOSH RANA', '', 0, '', ''),
(76, '139', '2020-01-29', '18:21', '20:58', '2020-01-29 18:21', '2020-01-29 20:58', '', '', '', '', 'DHARAM ADHIKAARI ', 'RONIT ROY, MADHOO, KAMAL SADANAH', '', 0, '', ''),
(77, '126', '2020-01-29', '20:58', '23:54', '2020-01-29 20:58', '2020-01-29 23:54', '', '', '', '', 'DIL JALA ', 'DHARMENDRA, REENA ROY, NIRUPA ROY, DR SHRIRAM LAGOO', '', 0, '', ''),
(78, '174', '2020-01-29', '23:54', '1:58', '2020-01-29 23:54', '2020-01-29 1:58', '', '', '', '', 'DIL KI BAAZI ', 'MITHUN CHAKARVARTI, ZEENATAMAN', '', 0, '', ''),
(79, '165', '2020-01-29', '1:58', '2:28', '2020-01-29 1:58', '2020-01-29 2:28', '', '', '', '', 'DO AUR DO PAANCH', 'SUNEHARI YAADEIN', '', 0, '', ''),
(80, '129', '2020-01-29', '2:28', '4:36', '2020-01-29 2:28', '2020-01-29 4:36', '', '', '', '', 'DULHAN DILWALE KI v', 'SANJEEV KUMAR, VIDYA SINHA, ASHOK KUMAR', '', 0, '', ''),
(81, '176', '2020-01-30', '4:36', '6:50', '2020-01-30 4:36', '2020-01-30 6:50', '', '', '', '', 'AAG AUR CHINGAARI', 'MITHUN CHAKRABORTY, RATI AGNIHOTRI, DANNY', '', 0, '', ''),
(82, '151', '2020-01-30', '6:50', '9:41', '2020-01-30 6:50', '2020-01-30 9:41', '', '', '', '', 'AAKHRI GHULAM ', 'SUNIL DUTT, NUTAN, OM PRAKASH', '', 0, '', ''),
(83, '149', '2020-01-30', '9:41', '12:24', '2020-01-30 9:41', '2020-01-30 12:24', '', '', '', '', 'AAR PAAR', 'CHIRANJEEVI, SRIDEVI, SHARAD SAXENA', '', 0, '', ''),
(84, '132', '2020-01-30', '12:24', '15:27', '2020-01-30 12:24', '2020-01-30 15:27', '', '', '', '', 'AGAR TUM NA HOTE ', 'GOVINDA, NEELAM, SHASHI KAPOOR, JAYA PRADA', '', 0, '', ''),
(85, '183', '2020-01-30', '15:27', '18:17', '2020-01-30 15:27', '2020-01-30 18:17', '', '', '', '', 'AJNABEE ', 'VINOD KHANNA, LEENA CHANDAVARKAR, KAMINI KAUSHAL, MEHMOOD', '', 0, '', ''),
(86, '160', '2020-01-30', '18:17', '21:08', '2020-01-30 18:17', '2020-01-30 21:08', '', '', '', '', 'ANJAAM', 'AMITHAB BACHCHAN, SAIRA BANU, VINOD KHANNA', '', 0, '', ''),
(87, '119', '2020-01-30', '21:08', '0:06', '2020-01-30 21:08', '2020-01-30 0:06', '', '', '', '', 'ANSH - The Deadly Part ', 'AJAY DEVGAN. URMILA MATONDKAR', '', 0, '', ''),
(88, '118', '2020-01-30', '0:06', '2:19', '2020-01-30 0:06', '2020-01-30 2:19', '', '', '', '', 'APMAN KI AAG', 'SUNIL SHETTY, SHATRUGHAN SINHA, RAVEENA TANDON, KIRAN KUMAR', '', 0, '', ''),
(89, '138', '2020-01-30', '2:19', '4:38', '2020-01-30 2:19', '2020-01-30 4:38', '', '', '', '', 'AWAAZ ', 'RAJESH KHANNA,SHARMILA TAGORE,FIROZ KHAN', '', 0, '', ''),
(90, '115', '2020-01-31', '4:38', '6:56', '2020-01-31 4:38', '2020-01-31 6:56', '', '', '', '', 'BALMAA', 'SHASHI KAPOOR, SANJEEV KUMAR, VIDYA SINHA, KADER KHAN', '', 0, '', ''),
(91, '157', '2020-01-31', '6:56', '9:36', '2020-01-31 6:56', '2020-01-31 9:36', '', '', '', '', 'BHAGYAWAN ', 'SAI KUMAR, SATYA PRAKASH, VENKATEEN', '', 0, '', ''),
(92, '206', '2020-01-31', '9:36', '12:27', '2020-01-31 9:36', '2020-01-31 12:27', '', '', '', '', 'CRASH POINT ', 'MITHUN CHAKRABORTY, GAJENDRA CHOUHAN, SIDDHARTH DHAWAN, KADER KHAN', '', 0, '', ''),
(93, '203', '2020-01-31', '12:27', '15:20', '2020-01-31 12:27', '2020-01-31 15:20', '', '', '', '', 'CYTHIA LUSTER (JAANBAAZ POLICE OFFICER)', 'DHARMENDRA, VINOD MEHRA, REKHA, UTTPAL DUTT', '', 0, '', ''),
(94, '116', '2020-01-31', '15:20', '18:21', '2020-01-31 15:20', '2020-01-31 18:21', '', '', '', '', 'DHAAL', 'OM PURI, ASHUTOSH RANA', '', 0, '', ''),
(95, '139', '2020-01-31', '18:21', '20:58', '2020-01-31 18:21', '2020-01-31 20:58', '', '', '', '', 'DHARAM ADHIKAARI ', 'RONIT ROY, MADHOO, KAMAL SADANAH', '', 0, '', ''),
(96, '126', '2020-01-31', '20:58', '23:54', '2020-01-31 20:58', '2020-01-31 23:54', '', '', '', '', 'DIL JALA ', 'DHARMENDRA, REENA ROY, NIRUPA ROY, DR SHRIRAM LAGOO', '', 0, '', ''),
(97, '174', '2020-01-31', '23:54', '1:58', '2020-01-31 23:54', '2020-01-31 1:58', '', '', '', '', 'DIL KI BAAZI ', 'MITHUN CHAKARVARTI, ZEENATAMAN', '', 0, '', ''),
(98, '165', '2020-01-31', '1:58', '2:28', '2020-01-31 1:58', '2020-01-31 2:28', '', '', '', '', 'DO AUR DO PAANCH', 'SUNEHARI YAADEIN', '', 0, '', ''),
(99, '129', '2020-01-31', '2:28', '4:30', '2020-01-31 2:28', '2020-01-31 4:30', '', '', '', '', 'DULHAN DILWALE KI v', 'SANJEEV KUMAR, VIDYA SINHA, ASHOK KUMAR', '', 0, '', '');

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
(3, 1, 110, 62, 47),
(6, 4, 3, 2, 0);

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
(1, 'What is the character name of Aamir Khan in the movie Lagaan?', 'Kachara', 'Bhuvan', 'Amir', 0, '18-01-2020'),
(4, 'Who directed the Shahrukh Khan, Madhuri Dixit and Aishwariya Rai starred- Devdas?', 'Karan Johar', 'Sanjay Leela Bhansali', 'Prakash Jha', 1, '07-02-2020');

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
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp(),
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
-- Indexes for table `abzy_trivia`
--
ALTER TABLE `abzy_trivia`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `abzy_trivia`
--
ALTER TABLE `abzy_trivia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `abzy_winner`
--
ALTER TABLE `abzy_winner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `blog_form`
--
ALTER TABLE `blog_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bollywood_spl`
--
ALTER TABLE `bollywood_spl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT for table `box_office`
--
ALTER TABLE `box_office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `commercial`
--
ALTER TABLE `commercial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `poll_count`
--
ALTER TABLE `poll_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `poll_master`
--
ALTER TABLE `poll_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
