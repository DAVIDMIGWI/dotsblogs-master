-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2022 at 12:53 PM
-- Server version: 10.3.32-MariaDB-log-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dotsxukq_posts`
--

-- --------------------------------------------------------

--
-- Table structure for table `celeb`
--

CREATE TABLE `celeb` (
  `post_id` int(20) NOT NULL,
  `category` varchar(200) NOT NULL,
  `image1` varchar(200) NOT NULL,
  `image2` varchar(200) DEFAULT NULL,
  `image3` varchar(200) DEFAULT NULL,
  `title` varchar(5000) NOT NULL,
  `descc` varchar(1000) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `author` varchar(100) NOT NULL,
  `time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `celeb`
--

INSERT INTO `celeb` (`post_id`, `category`, `image1`, `image2`, `image3`, `title`, `descc`, `content`, `author`, `time`) VALUES
(1, 'celeb', 'celeb', 'celeb', 'celeb', 'celeb', 'celeb', 'celeb', '', '2021-12-30'),
(2, 'aaaa', 'aaaa', 'aaa', 'aa', 'aaaa', 'aaaa', 'aaaa', '', '2021-12-30'),
(3, 'fffff', 'fffff', 'fffff', 'fffff', 'ffff', 'fffff', 'fffff', 'ffff', '2021-12-30'),
(4, 'ggggggggggggggggggg', 'gggggggggggggggg', 'ggggggggggggggg', 'ggggggggggggggggg', 'gggggggggggg', 'gggggggggggggggggggg', 'ggggggggggggggg', 'gggggg', '2021-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `img` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(10) NOT NULL,
  `name` text NOT NULL,
  `phone` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `contact_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `name`, `phone`, `email`, `message`, `contact_date`) VALUES
(1, 'david', 0, 'david@gmail.com', 'need shoes', '2021-09-21 06:33:24'),
(2, 'james', 0, 'jameskama@gmail.com', 'nice shoes', '2021-09-21 06:33:24'),
(3, 'daniel', 0, 'danieljj@gmail.com', 'i need sport shoes', '2021-09-21 06:33:24'),
(4, 'daniel', 0, 'kamau@gmail.com', 'kamaudan@gmail.com', '2021-09-21 06:33:24'),
(5, '', 0, '', '', '2021-09-21 06:33:24'),
(6, 'faith', 0, 'faithsss@gmail.com', 'nice shoes', '2021-09-21 06:33:24'),
(7, 'james kimanu', 0, 'kimanija@gmail.com', 'need more shoes', '2021-09-21 06:33:24'),
(8, 'david', 726143232, 'david22@gmail.com', 'hello', '2021-09-21 06:37:57'),
(9, 'gagagag', 72614321, 'hhhhdhd@gmail.com', 'qqjajjaja', '2021-12-29 09:13:46'),
(10, 'fss', 0, 'kjfjsbjk@gmail.com', 'svdvv', '2021-12-29 16:10:40'),
(11, 'Donte Hurren', 0, 'WilfredoStaum77500@gmail.com', 'Free submission of your new website to over 35 business directories here https://1mdr.short.gy/add-your-site', '2022-01-01 03:30:59'),
(12, 'Mozella Sionesini', 0, 'BertramLinneman@gmail.com', 'Congrats on your new site, get it listed here for free and we\'ll start sending people to your site https://1mdr.short.gy/submityourwebsite', '2022-01-01 19:34:29'),
(13, 'Daudiii', 723114222, 'daudihahah@gmail.com', 'Dots', '2022-01-03 11:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(10) NOT NULL,
  `category` text DEFAULT NULL,
  `image1` varchar(500) NOT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `image3` varchar(500) DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `descc` varchar(2000) NOT NULL,
  `content` text NOT NULL,
  `author` text NOT NULL,
  `time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `category`, `image1`, `image2`, `image3`, `title`, `descc`, `content`, `author`, `time`) VALUES
(9, 'Celebrating', 'https://cdn.standardmedia.co.ke/sdemedia/sdeimages/friday/inudsxoxkjynsvcxmbup61a0982586a14.jpg', 'https://cdn.standardmedia.co.ke/sdemedia/sdeimages/wednesday/hkfgx5xifixovc8uj76141e618785c6.jpg', 'https://biggestkaka.co.ke/wp-content/uploads/2021/06/Hamisa-Mobetto-and-Rick-Ross-yUCsN1tK.jpg', 'Hamisa Mobetto: Talk of Levelling Up!', 'Rickross seems to have booed up our Tanzanian Damsel Hamisa. If your heart got to be broken let it be in a sea of money sweetheart. I can bet that might be her motto right now. Just kidding though...love flourishes in mysterious ways and for different reasons.', 'Hold up! The reknowned Tanzanian Model is Diamond Platnumz baby mama and on the other hand Rickross is Bellaire boss who was actually Diamonds boss.\r\n\r\nTea started brewing when  the US based rapper started commenting love stirring emoji\'s on our baby girl\'s instagram posts. We at some point thought it was business considering she was also promoting his bellaire drink. \r\n\r\nHowever, love has been confirmed. Recently the two shared videos and photos enjoying life in dubai. The socialite posted \"Bae showed up and showed me off.\" Indeed the rapper seemed to be smitten by the Tanzanian beauty. The series of photographs and recordings shared by the socialite on Instagram, catches the pair all booed up, trading kisses and holding each other in a way that proposes they have some sort of chemistry.\r\n\r\nAllow a girl to enjoy hersedlfr. We wish them well.\r\n\r\n', '', '2021-12-29'),
(11, 'Celebrities', 'https://mdundo.com/media/articles/1637517646_4634_b.jpg', 'https://litkenya.com/wp-content/uploads/2021/03/3F7C2392-39B9-4B0E-B951-C2CD6981CCE1.jpeg', 'https://freemusic.co.ke/wp-content/uploads/2021/11/Willy-Paul-Miss-P-Fall-in-love-800x445.jpg', 'Willy Paul Signs Queen P as his new Artist', 'From Miss P to Queen P. Kenyan musician Willy Paul has signed a new female artist under his record label Saldido Entertainment. ', 'Willy shared wonderful photos of his new signee on his social media accounts to announce the news. He urged his followers to help him welcome his new signee, Queen P. Does the named ring a bell? We had a Miss P now we have a queen P. Does Willy have a thing for female artists with names starting with a P or is the P derived from his name? We are yet to know. \r\n\r\nHis first female signee was Miss P, with whom he had a serious squabble. Willy is accused of sexual abuse by Miss P which caused their fall out. The new signee brought about mixed reactions with some fans congratulating her while some anticipating a fallout due to Willy\'s said \"habits.\"\r\n\r\nDots blogs wish Queen P a flourishing music career. \r\n\r\n', '', '2021-12-29'),
(23, 'enter', 'https://netstorage-tuko.akamaized.net/images/ea374289da9d0f1b.jpg?imwidth=900', 'https://ocdn.eu/pulscms-transforms/1/1-mktkpTURBXy80YWM1MjE1OGVmMDI5NGY0MWRkZThiZWE3ZTgyYzQ0Ni5qcGeSlQMAzLLNA8DNAhyTBc0EsM0Cdg', 'https://i2.wp.com/www.kahawatungu.com/wp-content/uploads/2019/10/tyzatud9l76ebyn5bbdacb52f6b3.jpg?fit=850%2C550&ssl=1', 'Diana Marua Consoles Bahati\'s Baby Mama Yvette Obura After She Is Admitted in Hospital: \"Recover Soon\"', 'While subtitling the short clasp, the substance maker wished her darling\'s child mother a fast recuperation On the other hand, Bahati set up a post with Yvette\'s photograph begging fans to petition God for his ex-sweetheart.', 'While inscribing the short clasp, the substance maker wished her sweetheart\'s child mother a fast recuperation On the other hand, Bahati set up a post with Yvette\'s photograph begging fans to petition God for his ex-darling.\r\nWhile inscribing the photograph, Yvette put any distinction they have as co-child mothers to the side and spouted over Diana in the most ideal way conceivable.', 'davy', '2021-12-31'),
(24, 'News', 'https://newszetu.com/wp-content/uploads/2022/01/mutua.jpg', 'https://i0.wp.com/kenyan-post.com/wp-content/uploads/2022/01/mutua.png?resize=655%2C680&ssl=1', 'https://newszetu.com/wp-content/uploads/2022/01/mutua.jpg', 'Dr. Alfred Mutua Prematurely kills Kalonzo Musyoka\'s Wife, Pauline Musyoka.', 'Machakos governor Dr. Alfred Mutua stirred the internet after sending a condolence message online to Kalonzo Musyoka\'s family based on rumors that Pauline Musyoka was dead. ', 'Monday 2nd January, 2022 might not have been one of the best days for the governor of Machakos county. He posted on his social media handles a condolence message indicating how he is saddened by the loss of Pauline Musyoka and went ahead to convey sympathies on behalf of Machakos county, Maendeleo Chapchap party, and his family. \r\n\r\nKalonzo Musyoka’s wife Pauline has been unwell for some time but the politician said she has been responding well to treatment and is on the way to full recovery. \r\n\r\nSocial media warriors went into a frenzy indicating that since his break up with Lilian Ng\'ang\'a his mental state has been haphazardly affected. Top politicians and humanitarians went ahead to indicate that the government owed not only the family of Hon. Kalonzo Musyoka an apology but also the country at large. \r\n\r\nMoses Wetangula was particularly angered by the news and went ahead to tell net-citizens, \"I am in a meeting with Steve Kalonzo and Cyrus Jirongo at Steve\'s residence. Mama Pauline is alive, safe, and sound. This ( Referring to Governor Alfred Mutua’s post) is fake news at its highest crudity. Alfred Mutua, you owe the country an apology.”\r\n\r\nSome of us will ask the question of whether the governor doesn\'t have people around him to confirm information before posting or rather Hon. Musyoka\'s number. What Dr. Alfred Mutua did was reckless and a clear indicator that some people will show affection to you on social media but know nothing about your status. We all agree that before proceeding to an online fraternity he should have called the family to confirm the news first. \r\n\r\nHowever, the governor pulled down the post and posted an apology explaining that his actions were a result of misinformation and hoax from people who were also close to Hon. Kalonzo Musyoka. The damage has already been done what had been left is to let the fire cool by itself. \r\n\r\n', 'Marsha', '2022-01-03'),
(25, 'Celebrities', 'https://nairobinews.nation.co.ke/wp-content/uploads/2018/06/Babu-Bunge.jpg', 'https://netstorage-tuko.akamaized.net/images/a6df049ef326cc12.jpg', 'https://www.nairobileo.co.ke/uploads/posts/IMG-20220103055619.jpg', 'Konshens NRG Wave Concert Saga: Babu Owino Denies involvement', 'Babu Owino denies being involved in the altercation at Konshens Concert as he was not in attendance.', 'The event held on Friday, December 31, which featured Jamaica\'s finest Konshens, seemed to not have been all flawless. A video of ladies at the VIP section fighting during the event went viral on social media, showing an ugly scene. However, what triggered the online community was a man who seemingly resembled Hon. Babu Owino. It was not clear whether the man was involved in the altercation or was a knight saving the day. \r\n\r\nIn his defense, the lawmaker came hilariously responded to the allegations saying \" With due respect, I was not at the Konshens’ party, and the man purported to be me in the video doing rounds is NOT me. The time Konshens was performing I was also performing on my wife and she can attest to this.\"\r\n\r\nHe also urged his fans who were in attendance to help him clear his name. ', 'Marsha', '2022-01-03'),
(26, 'Celebrites', 'https://lh3.googleusercontent.com/ug3LEDBGkdaVOMyv7Tnfni9Ne30gIw8rZ9r3kfDX4wH--4npRj5kWrqZBYZRgED2MuOOmizkLQj_k_JeDdDudF8ybdfmVQg', 'https://ocdn.eu/pulscms-transforms/1/-Zck9kpTURBXy9kNzFmNTcxOGVhNmU4YWU1YTM4NmEyMjliMTA2YTY0Yy5qcGeRlQLNAxbNA5jCw4GhMAU', 'https://ocdn.eu/pulscms-transforms/1/taik9kpTURBXy85Mzc4YWRmZGZkMDliNjg5NGI4NjVlMjliMmY1Mzk1ZC5wbmeRlQLNAoTNAXDCw4GhMAU', 'Amber Ray Sets Tongue\'s Wagging Again', 'Socialite Faith Makau alias Amber Ray has decided not to give the internet a break regarding her life and more precisely her love and lavish life. ', 'Amber Rays name has been a common name in the internet since she declared herself the \"president of second wives.\" She seemed to resonate with Zuchu\'s song Nyumba Ndogo for a while before Nyumba Kubwa decided to let her have the whole candy by herself. If you are still asking who this eye candy we are talking about is....Jamal Rohosafi. \r\n\r\nThe two lovebirds were the talk of the internet for a while after cheating allegations went around that Jamal was cheating on his wife Amira with Amber. However, the rumors went from zero to a hundred so fast and Amber went to the internet indicating she was married to Jamal as the second wife. Photos of her and Jamal surfaced for a while but netizens could not stomach the embarrassment and disrespect Jamal was causing to not only his wife but also his family. \r\n\r\nWith several cups of tea at Edgar Obare\'s instagram page, the two (Amber and Jamal) decided to call the relationship off but the internet FBI\'s speculated they were still together behind the scenes. True to their word, they were! Jamal\'s wife decided to call off her marriage (though not official) and the two love birds have since been seen to be enjoying their honeymoon. \r\n\r\nAmber could not hide her happiness and had to prove to the internet world that they actually moved in together by sharing Instagram statuses showing male apparel which matches Jamal\'s day to day dressing code. ', 'M M W', '2022-01-03'),
(27, 'Finances', 'http://nairobiwire.com/wp-content/uploads/2021/08/korir.jpg', 'https://netstorage-tuko.akamaized.net/images/8433b34cc19ee59c.jpg', 'https://cdn.standardmedia.co.ke/images/friday/stkfqnsvaxk81dkbu5c13b708eddbf.jpg', 'How Cosmas Korir spent Kshs. 208 Million', 'Cosmas Korir the mega jackpot winner seems to have made good use of the Kshs. 208 million that he got back in 2018.', 'After Gordon Ogada and Abisai Abasaki we had Cosmas Korir who on September 2018 received a call that changed his life completely. As usual, Cosmas and some of his friends had studied the bets and strategized on how to win. \r\n\r\nOn this particular date, he had predicted 17 games correctly making him a mega jackpot winner of 208 million Kenya Shillings. However, it is important to note that he only went home with Kshs. 166, 986, 896 after paying 20% tax to the Kenya Revenue Authority. \r\n\r\nMr. Korir was however a well-established person before the win. He held a Master\'s Degree in Agriculture Economics and Food Development and at that moment was working at Bomet County Agricultural Department. He had also tried politics but with no luck.\r\n\r\nThe first thing he did was complete the 4 bedroom house he was building at his rural home which had stopped due to insufficient funds. He then brought himself a Toyota Landcruiser VX V8 and brought his brother a Toyota Prado. He also built for his parents and his brother houses that are adjacent to his. \r\n\r\nDespite accumulating a fortune by purchasing flats as investments, he did not change his normal day-to-day routine. He is currently the director of the agriculture department in West Pokot County and now that he had resources he is aspiring to vie for a political sit come 2022. ', 'M M W', '2022-01-03'),
(28, 'Food and Marketing', 'https://www.mwakilishi.com/sites/default/files/2022-01/AQsdrdwV.jpg', 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/01/23/13/kfc-japan.jpg?width=1200&auto=webp&quality=75', 'https://lh3.googleusercontent.com/z6MKme49FfFir1oD8ZM8hJQgfA5uJ3DT73Eu8aCj7VVpMlObQQ_jcUcfaU8kht8tkIHPK-Q0BW4kA3iwsuhPcwvwSaM', 'KFC to Offer Alternative Accompaniments For Their Chicken After Running Out of Imported Potatoes for Chips', 'KFC snubs Kenyan Irish potato farmers and seeks to offer alternative accompaniments for their chicken. ', '3rd January 2022 was a sad day for Kenyan KFC lovers after KFC Kenya broke the sad news by twitting, \"Fam it was truly a Furaha December. Partying face Mlikula sherehe with your KFC faves. Ya\'ll loved our chips a little too much, and we\'ve run out. Sorry! Our team is working hard to resolve the issue. In the meantime here are some SWAP options for combo meals if you are craving our Kuku\". On their attached photo they indicated alternative options such as ugali, coleslaw and snack buns. \r\n\r\nThe American fast-food chain stated that they were facing delays from their suppliers from overseas due to the covid situation. However, the comments by The firm’s Chief Executive for East Africa Jacques Theunissen stirred a different reaction to Kenyans. \r\n\r\n“The reason we cannot buy local at the moment is all suppliers need to go through the global QA approval process and we cannot bypass that even if we run out to ensure that our food is safe for consumption by our customers,” he said. This made Kenyans on Twitter start a trending hashtag duped \"BoycottKFC\" The reasoning was based on the fact that KFC has been expanding their businesses in Kenya due to demand but they are not willing to support Kenya\'s economy by buying Kenya and Building Kenya. \r\n\r\nReports show that potatoes are the second imperative food crop after maize and they contribute largely to the GDP considering agriculture is the backbone of Kenya\'s economy. \r\n\r\nKenyan\'s are confident they can meet the demands of KFC based on both quality and quantity. Let us see how this unfolds.  ', 'M M W', '2022-01-05'),
(31, 'Celebrities', 'https://ocdn.eu/pulscms-transforms/1/ZZ1k9kpTURBXy8xYmRlMGYzMGY3OTUxYjg5ZjNiNmNiZTUwZGI2ZjY0MS5qcGeSlQMBzQE4zQQ4zQJgkwXNAxbNAa6BoTAF', 'https://netstorage-tuko.akamaized.net/images/63de130480cfb47f.jpg', 'https://buzzcentral.co.ke/wp-content/uploads/2022/01/Jackie-Matubia-pregnant-660x400.jpg', 'Is Actress Jackie Matubia Expecting her Second Baby?', 'Jackie Matubia also known as \"Nana\" from the zora show announced her second pregnancy and asked her fans not to judge her', 'Jackie Matubia is known for her prowess of acting skills in the Citizen TV show Zora that airs from 7:30 pm to 8:00 pm. The actor was also in Tahidi high as Jolene. Jackie had been married to one Kennedy Njogu, a pilot but later divorced in 2019 after getting a daughter Zari Wanjiku. \r\n\r\nAfter the breakup she was quoted saying, “It breaks you more as you always want people to hear your side of the story. I rushed to get married with no one to mentor me, so I learned how to manage a marriage from working it out with my partner.\" Since then she had taken time off relationship life.\r\n\r\nHowever, Jackie Matubia suprised us when she shared on her social media photos of her seemingly pregnant and with the caption “Itabidi mmenijudge juu [I don\'t mind being judged] I can’t explain. Baby number 2 #blessed.\" \r\n\r\nThe pregnancy message has since been receiving good vibes with her fans showering her with congratulatory messages. \r\n\r\nFor religious Zora fans we tend to speculate the pregnancy is not real but rather a dummy pregnancy designed to suit Jackie is playing where at this juncture she is expected to be pregnant of Madiba. \r\n\r\nNonetheless, if it\'s true we wish her well. \r\n\r\n\r\n', 'M M W', '2022-01-05'),
(29, 'Food ', 'https://pbs.twimg.com/media/FIUyi45WUAMX09y?format=jpg&name=900x900', 'https://i.ytimg.com/vi/iFHwOTahdSY/maxresdefault.jpg', 'https://muranganewspaper.co.ke/wp-content/uploads/2022/01/Capture-3.png', 'Change of Heart?KFC Opens Doors to Local Potato Suppliers Who Can Meet Their Standards', 'KFC Kenya now says Kenyan farmers can supply it with potatoes for French fries so long as they meet their quality and safety standards. ', 'KFC started operating in Kenya in 2011. According to Business daily, in 2018 alone the firm made 30,000 deliveries in Kenya, which accounts for 60% of all deliveries made in East Africa that same year. It is clear that they have a large market base in Kenya which explains their expansion in the region. \r\n\r\nHowever, since the announcement of them running out of fries and Kenyan\'s allegedly not being able to meet the demands, the reaction of Kenyans has been unexplainably bitter. The pressure has been piling up and recently the Chief Executive of East Africa stated that local farmers can supply the firm with potatoes if they meet their quality and safety standards.  Mr Theunissen did not however explain what these standards entail. \r\n\r\nNotably, since the announcement the hashtag by Kenyans on Twitter alias KOT has changed to #LetKFC, One @iamMosesKe_ has gone ahead to air his views stating \" Let KFC educate our local farmers on the kind of quality of potatoes they want in their outlets and farmers strive hard to meet them. Currently, we have a huge silly LG waru but no market, we supply avocados to other parts of the world, will  potatoes be a problem?.\"\r\n\r\nLets see how the tag war unfolds.', 'M M W', '2022-01-05'),
(30, 'Celebrities', 'https://i2.wp.com/bnn.ke/wp-content/uploads/2022/01/3B15D8AF-8326-4D0A-AD3D-0C1D236B260C.jpeg?fit=584%2C329&ssl=1', 'https://www.mwakilishi.com/sites/default/files/2021-05/pjimage%20%288%29_0.jpg', 'https://lh3.googleusercontent.com/-WdRJyU7FpsM/YdTFr62wGxI/AAAAAAAAhtg/1piS2TcsMdYLLKDDQAVQYZcdJjovKxm0ACNcBGAsYHQ/s1600/1641334187480898-0.png', 'Guardian Angel 31, weds Esther Musila 51', 'Gospel Singer Peter Omwaka aka Guardian Angel,31 marries his girlfriend, Esther Musila,51.', 'For us who love happy beginnings and happy endings January 4, 2022 was a good day for us. Guardian Angel kicked off not only his 2022 but also his birthday in style. He married the love of his life leaving us with one memorable phrase \"I did not choose you, God chose you.\"\r\n\r\nThe wedding was a private event but the two love birds could not hide their joy hence shared the good news with their fans. Guardian went ahead and shared a post saying, \"And on my birthday, God did it again. Mr.& Mrs. OMWAKA. #lovewins\" What\'s better than announcing your forever commitment on your birthday. \r\n\r\nOn the other hand,Esther, on her part, described him as ‘something she had never imagined.“To find someone as special as you out of all the people in the world is something I never imagined.\r\nLet\'s do this life together. “Today I married my best friend,” she wrote.\r\n\r\nThe two looks glamorous. May love dwell in their haven. We wish them the best!', 'M M W', '2022-01-05'),
(32, 'Celebrities', 'https://netstorage-tuko.akamaized.net/images/cc426aec646ed303.jpg?imwidth=720', 'https://netstorage-tuko.akamaized.net/images/32a5cec29750b734.jpg?imwidth=720', 'https://i2.wp.com/ghettoradio.co.ke/wp-content/uploads/2021/05/stivo-simple-boy3.jpg?fit=1079%2C774&ssl=1', 'Stivo Simple Boy in REAL Love', 'Stivo Simple Boy (Stephen Otieno) awed his fans when he was spotted spending quality time with his Lover. ', 'Stivo Simple Boy, the Kibra Based Rapper seemed to have celebrated his birthday with people who matter. A video emerged on Twitter of the rapper and his girlfriend, Fridah (Pritty) having a good time while reminiscing their 7-year relationship. \r\n\r\nYes, you read right.....7 years! All this while we made assumptions that the lad might be single but January 2, 2022 proved us wrong. \r\n\r\nIn the video, his girlfriend could be heard wishing him the very best and all the happiness he deserves on his special day. However, in the same video the lady was heard accusing the rapper for not surprising her with gifts. \"Babe, you have never bought me a single pair of underwear,\" she said.\r\n\r\nIn his defense, the rapper reminds her of the skirt he bought for her. The lady then switches to a birthday song and reminds him how far they have come for the last seven years. \r\n\r\nthe Mihadarati hitmaker revealed his plans to marry the Kibra based lady. They met in the road and in one of the interviews, Stivo revealed that they met on the road. I told her \'nimekuzimia na tena nimekudata\' (I have fallen in love with you). We exchanged numbers.\" As we can see the rest was history.\r\n\r\nAlthough the Rapper seems to be cautious in his love life, he seems to be head over heels on this lady. We wish the lovebirds the best. ', 'M M W', '2022-01-05'),
(33, 'news', 'https://i.ytimg.com/vi/3ERHCqleJjI/maxresdefault.jpg', 'https://i.ytimg.com/vi/ZIKpaSxoFPE/mqdefault.jpg', 'https://cdn.standardmedia.co.ke/images/thursday/efihiirwnsb7tupalqx5d7a2a7f26193.jpg', 'Dennis Itumbi\'s First Statement After Being Discharged From Hospital', 'Joined Democratic Alliance party\'s Digital specialist Dennis Itumbi has at last been released from Nairobi West Hospital, where he had been confined after his snatching and torment.', 'While talking subsequent to leaving the wellbeing office, Itumbi clarified that he had been permitted to return home and proceed with his recuperation interaction.\r\n\r\n\"The specialists have said I am out of risk, I might be returning to the medical clinic for ordinary centers,\" he told The Standard.\r\n\r\nItumbi has been reacting great to treatment and recuperating from the wounds incurred by assailants who seized, tormented, and unloaded him in Lucky Summer.\r\n\r\n\"I experienced triple cracks on the left leg, one break on the right leg, and a lower leg separation,\" he said.\r\n\r\n\"In view of the cuffs, I additionally supported wrist disengagement. I was unable to see after they jabbed my eyes, harming my corneas,\" Itumbi added.\r\n\r\nThe blogger was determined to have injury pneumonia and moved to the ICU when he was conceded to the clinic.\r\n\r\nThe computerized tactician was seized from a barbershop in Kiambu\'s Thindigua region on December 23 and put into a vehicle prior to being driven away by obscure individuals, who beat him up.\r\n\r\nReports from the Kasarani police boss Peter Mwanzo, show that Itumbi was found with different wounds by Boda riders in Lucky Summer on the next morning.\r\n\r\nHe was hurried to Uhai Neema medical clinic by the administrators prior to being moved to Nairobi West for cutting-edge therapy.', 'davy', '2022-01-05'),
(34, 'news', 'https://i0.wp.com/www.browngh.com/wp-content/uploads/2021/12/IMG_20211230_074424.jpg', 'https://pbs.twimg.com/media/FIVE2bBXwAgl6a4?format=jpg&name=900x900', 'https://netstorage-tuko.akamaized.net/images/0fgjhs6reak60ld7f.jpg?&imwidth=1200', 'Place of Chaos: UDA-Allied MPs Protest Results after Duale\'s Proposed Amendment Flops', 'Aden Duale pushed for the erasure of provision 8b of the Political Parties (Amendment) Bill requiring an alliance ideological group to submit settlement a half year to races. The proposition, notwithstanding, slumped when the Speaker reported 128 administrators had cast a ballot to shoot it down against 104 partners who upheld it.', 'The yes detachment which contained officials unified to Ruto rose on important matters to guarantee that the outcomes were manipulated\r\n\r\nThe National Assembly indeed turned turbulent after a part of individuals asserted they couldn\'t decide in favor of or against MP Aden Duale\'s proposed change.\r\n\r\nThe Garissa Township MP had pushed for the erasure of statement 8b of the Political Parties (Amendment) Bill that requires an alliance ideological group to submit a settlement a half year to decisions.\r\n\r\nThe yes detachment which included administrators unified to the Deputy President William Ruto\'s United Democratic Movement (UDA) rose on important matters to guarantee that the outcomes were manipulated.\r\n\r\nThey asserted the framework had specialized issues and requested that they vote physically. During the Wednesday, December 5, unique sitting, Kikuyu MP Kimani Ichungwa, Nixon Korir, and Kiambu Woman delegate Gathoni Wamuchomba asserted their votes were not counted. They blamed the interval speaker for being one-sided and supporting the Azimio la Umoja associated MPs to win. The speaker, notwithstanding, demanded the framework was working and a portion of the MPs griping had cast a ballot.\r\n\r\n\"I can affirm that the MP for Langata Nixon Korir cast a ballot and is part number 125, I can affirm too that the framework is working. Let us not utilize this meeting to wade into controversy,\" the speaker dominated.\r\n\r\nThe MPs additionally decided on Nambale MP Sakwa Bunyasi\'s proposition to correct condition 8c of a similar change bill. The MP suggested that alliance parties will just handle official applicants and pass on constituent gatherings to handle possibility for different positions The MPs by the greater part again dismissed the revisions proposed by Bunyasi as 111 cast a ballot yes while 132 cast a ballot no.\r\n\r\nThe parliamentary meeting on Wednesday, December 29, must be suspended for 15 minutes after a segment of contradicting legislators occupied with an actual battle.\r\nRuto\'s partners asserted the bill which tries to deter party bouncing and impart discipline among party individuals is focusing on UDA and its partners. During the turbulent discussion, Suba South MP John Mbadi was shot out from the chamber and given a five-sitting suspension for assaulting Sigowet-Soin MP Benard Koros.', 'davy', '2022-01-06'),
(35, 'news', 'https://netstorage-tuko.akamaized.net/images/41443a5ad5de2ee1.jpg', 'https://netstorage-tuko.akamaized.net/images/7f036c374590c108.jpg?imwidth=900', 'https://netstorage-tuko.akamaized.net/images/caf310e66bf6291b.jpg?imwidth=900', 'Ndindi Nyoro, Fatuma Gedi Thrown Out National Assembly as Chaos, Emotions Flare Up', 'Ndindi Nyoro guaranteed Wajir Woman Rep Fatuma Gedi was paying off individuals with cash procured from KEMSA embarrassment Gedi denied the allegations and on second thought let the Speaker know that she was disseminating desserts to help her associates\' sugar levels Nyoro was suspended for two days while Gedi was catapulted for a day', 'Kiharu MP Ndindi Nyoro and Wajir Woman Rep Fatuma Fedi have been kicked out of the National Assembly chambers subsequent to conflicting over pay off claims\r\n\r\nInconvenience started when Nyoro blamed Gedi for doling out gifts adding up to 100,000 to impact individuals to cast a ballot for the proposed ideological group\'s charge, which is being upheld by supportive handshake MPs.\r\n\r\nThe young MP further shockingly guaranteed the monies being disseminated by the Woman Rep were continues of defilement from the scandalous KEMSA embarrassment. The charge stood out enough to be noticed of the interval Speaker Soipan Tuya who provoked the Kiharu administrator to validate his cases.\r\n\r\nNonetheless, the candid MP neglected to deliver any proof to back his charges and further would not pull out the assertion, demanding that he had proof.\r\n\r\n\"I need to affirm that we have proof that Honorable Fatuma Gedi has been paying off individuals with KSh 100, 000 and KSh 200, 000 KEMSA cash,\" guaranteed Nyoro.\r\n\r\nOn her part, Gedi denied the charges and on second thought let the Speaker know that she was conveying desserts to individuals to support their sugar levels in the wake of sitting in the chambers for extended periods of time. The Speaker had to arrange the two MPs out of the House to reestablish quiet.\r\n\r\nThe decision on the ideological group\'s revision bill proposed by the National Assembly\'s Justice and Legal Affairs Committee Chairman Muturi Kigano has been described by disarray, fistfights, and a mixed drink of feelings since the individuals were reviewed for the main exceptional sitting on December 21 and 22 (2021).\r\n\r\nDuring this meeting, Minority Leader John Mbadi was suspended for five sittings subsequent to taking part in a fight with Sigowet/Soin MP Kipsengeret Koros, who was left with a draining cheek in the wake of being punched. Mbadi additionally had his finger harmed during the appalling conflict. The sittings finished without closing the matter. Larger part pioneer Amos Kimunya had to demand the Speaker to plan three additional sittings between January 5 and January 7, 2022, to manage forthcoming provisions.\r\n\r\nAt the point when individuals continued today, they picked it from where they had left and occupied with an annoying and yelling rivalry that finished in the suspension of Nyoro and Gedi. Administrators partnered with Deputy President William Ruto\'s UDA party presented a pile of corrections apparently to disappoint and postpone a section of the bill. In any case, the changes slumped in a steady progression, bringing about gear claims from the UDA camp. Kikuyu MP Kimani Ichungwah, his Langata partner Nixon Korir, and Kiambu Woman Rep Gathoni Wamuchomba asserted their votes were not considered. They blamed the electronic framework and requested that the Speaker leave it and return it to manual democratic.\r\n\r\nThe Speaker excused the contentions and affirmed the framework was productive, adding that the individuals who were whining had really cast a ballot. Nyoro would later arise with pay-off charges and toss the House into confusion. The Speaker had to cancel the procedures for 30 minutes subsequent to suspending the Kiharu MP and his Wajir partner. The House has since continued and decided on different conditions is continuous.', 'davy', '2022-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `product_id` int(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `user`, `product_id`, `message`, `review_date`) VALUES
(1, 'johnkamau@gmail.com', 9, 'best', '2021-09-15 08:38:41'),
(2, 'johnkamau@gmail.com', 9, 'best', '2021-09-15 08:41:20'),
(3, 'johnkamau@gmail.com', 9, 'best shoe in town', '2021-09-15 08:42:34'),
(4, 'johnkamau@gmail.com', 8, 'real leather shoes', '2021-09-15 08:43:14'),
(5, 'johnkamau@gmail.com', 6, 'durable and flexible', '2021-09-16 06:59:29'),
(6, 'james@gmail.com', 8, 'light and fashionable ', '2021-09-16 07:01:51'),
(7, 'james@gmail.com', 8, 'light and fashionable ', '2021-09-16 07:07:08'),
(8, 'james@gmail.com', 8, 'light and fashionable ', '2021-09-16 07:08:21'),
(9, 'james@gmail.com', 11, 'good', '2021-09-16 07:20:37'),
(10, 'james@gmail.com', 11, 'good', '2021-09-16 07:21:45'),
(11, 'james@gmail.com', 11, 'i like it', '2021-09-16 07:32:01'),
(12, 'james@gmail.com', 11, 'done', '2021-09-16 07:42:38'),
(13, 'james@gmail.com', 11, '', '2021-09-16 07:42:43'),
(14, 'james@gmail.com', 5, 'i like it', '2021-09-16 07:44:35'),
(15, 'james@gmail.com', 5, 'nice shoe', '2021-09-16 07:46:00'),
(16, 'james@gmail.com', 5, 'nice on', '2021-09-16 07:46:43'),
(17, 'james@gmail.com', 5, 'nice', '2021-09-16 07:50:48'),
(18, 'james@gmail.com', 5, 'nice one', '2021-09-16 07:55:26'),
(19, 'james@gmail.com', 5, '\r\n         nice       ', '2021-09-16 07:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `trend`
--

CREATE TABLE `trend` (
  `post_id` int(20) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image1` varchar(500) NOT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `image3` varchar(500) DEFAULT NULL,
  `title` varchar(500) NOT NULL,
  `descc` varchar(1000) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `author` varchar(100) NOT NULL,
  `time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trend`
--

INSERT INTO `trend` (`post_id`, `category`, `image1`, `image2`, `image3`, `title`, `descc`, `content`, `author`, `time`) VALUES
(1, 'ppppppppppppp', 'pppppppppppp', 'ppppppppppp', 'ppppppppp', 'ppppppppppppp', 'ppppppppppppp', 'pppppppppppppp', 'ppppp', '2021-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `profilepic` text NOT NULL,
  `updated_at` date NOT NULL DEFAULT current_timestamp(),
  `created_a` date NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `username`, `profilepic`, `updated_at`, `created_a`, `email`) VALUES
(2, 'VTsqbjbZgSVLTwxOMKnDYhdBRfx1', 'David Muia', 'https://lh3.googleusercontent.com/a-/AOh14GhhLpA_-Sza3_HwHVlEnB2i61hCJ4F90itzeIst6A=s96-c', '2021-12-28', '2021-12-28', '9davidmuia@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `celeb`
--
ALTER TABLE `celeb`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `trend`
--
ALTER TABLE `trend`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `celeb`
--
ALTER TABLE `celeb`
  MODIFY `post_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `trend`
--
ALTER TABLE `trend`
  MODIFY `post_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
