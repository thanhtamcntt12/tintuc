-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2017 at 03:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tintuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(255) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `title`, `description`, `image`) VALUES
(11, 'Winners and losers from the Alabama special election ', 'Alabama voters on Tuesday threw the U.S. Senate a curveball — a curveball in the form of Roy Moore, the former state Supreme Court justice whose dual tenures in that job both ended in massive controversy and his removal.', '<p>If there was one attack that sunk Strange in this race, it may well have been tying him to the Senate majority leader. Trump&rsquo;s advocacy on Strange&rsquo;s behalf basically boiled down to repeated assurances that Strange didn&rsquo;t even really know McConnell &mdash; and thus couldn&rsquo;t be <a href=\"https://www.youtube.com/watch?v=UaVWRetR4jg\" target=\"_blank\">his puppet</a>. Trump acknowledged in a local radio interview Monday that, &ldquo;<a href=\"http://www.al.com/news/index.ssf/2017/09/trump_calls_rick_bubba_calls_r.html\" target=\"_blank\">Mitch is not, polling-wise, the most popular guy in this country</a>.&rdquo; Trump largely has himself to blame (or thank) for that, given <a href=\"https://www.washingtonpost.com/news/the-fix/wp/2017/09/01/the-peril-of-opposing-trump-is-very-real-and-its-coming-into-focus-for-the-gop/\" target=\"_blank\">McConnell&rsquo;s numbers have tanked amid Trump&rsquo;s criticism of him</a>. And not only was McConnell used as a cudgel, but now he likely has to deal with the complete wild card that will be Sen. Roy Moore (R-Ala.) &mdash; or the loss of a seat to the Democrats. It&rsquo;s something of an open question as to which he should prefer, but neither seems a good option.</p>\r\n', 'h1-10186274399222.jpg'),
(12, 'Kimmel\'s take on health care harder to refute', 'WASHINGTON — Who\'s right — President Donald Trump and Sen. Bill Cassidy, or late-night host Jimmy Kimmel?', '<p>Trump insists in a tweet that the bill covers pre-existing conditions, a point also made by Cassidy, a sponsor of the legislation. But there&#39;s a catch. It allows states to get a waiver from &quot;Obamacare&quot; requirements that insurers charge the same to people with health problems as they do to healthy people.</p>\r\n\r\n<p>The potential result: unaffordable premiums for people in poor health.</p>\r\n\r\n<p>Here&#39;s a look at Trump&#39;s assertion, the facts and the Kimmel-Cassidy feud:</p>\r\n\r\n<p>TRUMP: &quot;I would not sign Graham-Cassidy if it did not include coverage of pre-existing conditions. It does! A great Bill. Repeal &amp; Replace.&quot;</p>\r\n\r\n<p>THE FACTS: Such coverage may be included but it&#39;s far from assured.</p>\r\n\r\n<p>The health care law enacted by President Barack Obama in 2010 offers two levels of protection for people with pre-existing conditions. The GOP bill would allow states to undermine one of them. That loophole could lead to policies priced out of reach.</p>\r\n\r\n<p>To start with, &quot;Obamacare&quot; requires insurers to take all customers, regardless of health problems. On top of that, it prohibits insurers from charging more on account of medical conditions.</p>\r\n\r\n<p>Under the GOP bill moving toward a Senate vote next week, insurers would still be required to accept people with pre-existing conditions. But here&#39;s where the catch comes in:</p>\r\n\r\n<p>States could seek waivers that allow insurers to charge people more on account of health problems. That would allow insurers to offer lower-premium plans to healthier customers.</p>\r\n\r\n<p>&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/Kvyfr1lPus8&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;</p>\r\n', 'h2-10339781933505.jpg'),
(13, 'The Voice Singer Meghan Linsey Says She Received Death Threats After Kneeling at NFL Game', 'Country singer Meghan Linsey of The Voice and Can You Duet fame took a knee after performing the national anthem at a Sunday NFL game between the Tennessee Titans and Seattle Seahawks. Then she got death threats.', '<p>Linsey said she anticipated backlash <a href=\"http://www.tennessean.com/story/entertainment/music/2017/09/28/national-anthem-protests-meghan-linsey-gets-death-threats-after-taking-knee-titans-seahawks/714726001/\" target=\"_blank\">in an interview with the <em>Tennessean</em>.</a> There is a lot of controversy surrounding the <a href=\"http://time.com/4924420/colin-kaepernick-nfl-football-boycott/\" target=\"_blank\">act meant to protest police brutality</a>, which was popularized by quarterback <a href=\"http://time.com/4924420/colin-kaepernick-nfl-football-boycott/\" target=\"_blank\">Colin Kaepernick.</a> The furor only escalated after <a href=\"http://time.com/4954684/donald-trump-nfl-speech-anthem-protests/\" target=\"_blank\">President Donald Trump criticized players and the league last week.</a> But she did not expect the threats to be so hateful &mdash; like letters wishing that she would get cancer.</p>\r\n\r\n<p>&ldquo;I&rsquo;ve been waking up with anxiety a lot and it&rsquo;s hard to eat food and sleep, but other than that, I&rsquo;m good,&rdquo; Linsey told the paper Thursday. &ldquo;I feel like I did the right thing. I don&rsquo;t have any regrets.</p>\r\n\r\n<p>&ldquo;It wasn&rsquo;t a matter of standing against our flag or our military,&rdquo; she continued. &ldquo;I was standing up for a cause that I believe in. I think that&rsquo;s a testament of where we are as a country, that it can be so divisive and so volatile. We&rsquo;re starting to see that more and more since the election. I just haven&rsquo;t had it directed at me.&rdquo;</p>\r\n', 'h3-9183619675691.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
