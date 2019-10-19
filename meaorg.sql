-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2019 at 12:10 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meaorg`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `photo`, `link`, `s_date`, `e_date`, `created_at`, `updated_at`) VALUES
(5, '5da6e13a987e3_1.jpg', 'https://www.foreliink.com/', '2019-10-16', '2019-10-18', '2019-10-16 02:51:16', '2019-10-16 02:52:02'),
(6, '5da6e17650cb1_0b7d1785d9b549dcd090c148728958df_full.jpg', 'https://www.foreliink.com/', '2019-10-16', '2019-10-18', '2019-10-16 02:53:02', '2019-10-16 02:53:02'),
(8, '5da92d31315ac_0014.jpg', 'https://www.foreliink.com/', '2019-10-18', '2019-10-21', '2019-10-17 20:40:30', '2019-10-17 20:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `ads_webpages`
--

CREATE TABLE `ads_webpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ads_id` int(11) NOT NULL,
  `webpage_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads_webpages`
--

INSERT INTO `ads_webpages` (`id`, `ads_id`, `webpage_id`, `created_at`, `updated_at`) VALUES
(24, 5, 1, '2019-10-16 02:52:02', '2019-10-16 02:52:02'),
(25, 5, 2, '2019-10-16 02:52:02', '2019-10-16 02:52:02'),
(26, 6, 1, '2019-10-16 02:53:02', '2019-10-16 02:53:02'),
(27, 6, 2, '2019-10-16 02:53:02', '2019-10-16 02:53:02'),
(36, 8, 1, '2019-10-17 20:40:42', '2019-10-17 20:40:42'),
(37, 8, 2, '2019-10-17 20:40:42', '2019-10-17 20:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `photo`, `name`, `text`, `user_id`, `author`, `created_at`, `updated_at`) VALUES
(9, '5da1d0ff8839a_106177635-1570823955363gettyimages-1003923500.jpeg', 'Artists thrive after showing at Artist Alley during New York Comic Con', '<p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">On a chilly October day in 2012, Annie Stoll collected her portfolio, filled with CD package designs and poster art for several indie artists based in Buffalo, New York, as well as Star Wars fan art, and ventured into a portfolio review for pencil and ink illustrators at New York Comic Con.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">A month later, she was working for Lucasfilm.</p><div class=\"BoxInline-container  \" style=\"max-width: 300px; margin: auto; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\"><div id=\"BoxInline-ArticleBody-6\" class=\"BoxInline-container\" data-module=\"mps-slot\" style=\"max-width: 300px; margin: auto;\"></div></div><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">In just seven years, she has gone on to design “ugly” holiday sweaters for Lucasfilm, illustrate “Star Wars Rebels: Sabine: My Rebel Sketchbook,” provide artwork for a compilation book called “Star Wars: Women of the Galaxy” and even won a Grammy for her design work on the packaging of “Squeeze Box: The Complete Works Of ‘Weird Al’ Yankovic.”</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">“I had legit like $20 left in my account,” Stoll said of her 2012 trip to New York Comic Con. “I spent my money getting prints and tickets.”</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">Stoll is just one of many artists who have reaped the benefits of New York Comic Con’s Artist Alley, a space within the convention where approved artists and writers can sell their prints, pins, books and stickers, as well as meet fans and sign autographs.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">During the four-day convention this year, more than 200,000 people ventured through the Jacob Javits Center in New York — and that’s not counting the hundreds of industry professionals roaming the halls between panels.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">Almost all the major comic conventions have a dedicated location like Artist Alley for creators. While the area may get overshadowed by panels for “The Walking Dead,” “Watchmen” and “Star Trek,” it’s a massively popular destination for fans.</p><div id=\"MidResponsive-8\" class=\"\" data-module=\"mps-slot\" style=\"position: sticky; margin: 0px auto; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\"></div><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">“Artist Alley has always been one of the most popular features of New York Comic Con,” said Mike Negin, global comic talent manager at&nbsp;<a href=\"https://www.cnbc.com/2019/10/04/reedpop-the-company-behind-new-york-comic-con-has-big-plans.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">ReedPop, the company behind the convention</a>. “Fans look forward to spending their time walking up and down the aisle either meeting their favorite creators or discovering someone new.”</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">Artist Alley has been a part of NYCC since it began, in 2006. The goal over the last 14 conventions has been to bring in diverse talent, artists who dabble in anime, traditional comics, caricatures or the abstract, and connect them to fans and their peers.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">“Over the years, we’ve had new creators get noticed by editors and other professionals as they go through the aisles of Artist Alley looking for talent, which has led those creators to projects which allowed them to become superstars in the industry,” Negin said.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">“When placing creators at tables in Artist Alley, we’ve seen complete strangers meet for the first time and go on to become friends and collaborators on best-selling titles,” he said. “Two creators who met in NYCC Artist Alley [have even] gone on to get engaged.”</p>', 1, 'Admin', '2019-10-12 06:41:27', '2019-10-12 06:41:27'),
(10, '5da1d187a3f60_106153200-15696052636192019-09-26t203542z_2057654464_rc193fe49cb0_rtrmadp_3_health-vaping-hoarding.jpg', 'CDC says almost all vaping illness patients end up hospitalized', '<p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">“I can’t stress enough the seriousness of these lung injury associated with the use of e-cigarette or vaping products,” Dr. Anne Schuchat, principal deputy director of the CDC, told reporters on a call Friday. “This is a critical issue and even while we learn more, we need to take steps to prevent additional cases.”</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">Among roughly 1,000 of the cases CDC has studied, 96% of the patients were hospitalized, the agency said. Of 342 of the cases, 47% of patients were admitted to the intensive care unit.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">Doctors still don’t know what’s making people sick, and Schuchat said it may take several months to unravel the mystery. She said she thinks “there will be multiple causes and potentially more than one root cause. So I do think the phenomenon we’re seeing is going to have an explanation, but it may not be tomorrow.”</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">The Food and Drug Administration has received or collected more than 725 samples of the products patients were vaping from 23 states and the U.S. Virgin Islands, said Mitch Zeller, director of the FDA’s Center for Tobacco Products. The agency has started testing more than 300 samples, including 79 nicotine-containing products and 225 THC-containing products.</p>', 1, 'Admin', '2019-10-12 06:43:43', '2019-10-12 06:43:43'),
(11, '5da1d1d71db76_104204435-RTX15XPG.jpg', 'Low prices aren’t fun anymore—consumers have reached peak happiness with clothing purchases', '<h1 class=\"ArticleHeader-headline\" style=\"margin-right: 30px; font-weight: 700; font-size: 54px; line-height: 1.037; margin-bottom: 15px; width: 960px; font-family: &quot;Proxima Nova&quot;, Arial, Helvetica, sans-serif;\"><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\">The apparel market has “hit a ceiling” and is “going into structural decline,” according to a note from Morgan Stanley.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\">The cause of it? Consumers have reached peak happiness with clothing purchases, wrote analyst Geoff Ruddell on Friday.</p><div class=\"BoxInline-container  \" style=\"max-width: 300px; margin: auto; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\"><div id=\"BoxInline-ArticleBody-6\" class=\"BoxInline-container\" data-module=\"mps-slot\" style=\"max-width: 300px; margin: auto;\"></div></div><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\">His theory is based on the Law of Diminishing Marginal Utility, which states that “as consumption increases, the marginal ‘utility’ (or happiness) derived from each additional unit declines.” In other words, consumers already own so many clothes that each new item they purchase doesn’t spark happiness.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\">As a result, Ruddell said big clothing makers including H&amp;M, Zara parent company Inditex,&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=GPS\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Gap</a>,&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=M\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Macy’s</a>,&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=KSS\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Kohl’s</a>,&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=AEO\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">American Eagle</a>&nbsp;and&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=ANF\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Abercombie &amp; Fitch</a>&nbsp;are overvalued.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\">“The world’s leading dozen listed apparel retailers have, on average, seen earnings downgrades of almost 40% since the beginning of 2016,” he wrote, citing Datastream and Morgan Stanley data. “When combined with the ongoing challenges posed by online channel shift we believe that this could make for a very difficult backdrop for the apparel retail industry. Not just for this year, or next, but indefinitely.”</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\">He also said the declines can’t simply be attributed to a shift in e-commerce. “This structural shift has been going on for the last approximately 20 years, yet is only in the last 3-4 years that the clothing retailers have begun to find trading conditions so challenging,” he wrote.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\">Instead, it’s because clothing has become so cheap — which led consumers to purchase in huge quantities. According to data from Kantar, a consumer in the U.S. purchases around 65 items of clothing a year. A U.K. consumer buys around 50 items a year.</p><div id=\"MidResponsive-8\" class=\"\" data-module=\"mps-slot\" style=\"position: sticky; margin: 0px auto; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\"></div><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\">“Put simply, consumers would rather spend their marginal dollar on, say, going out for a meal, than on buying a 60th item of clothing in a year,” he wrote.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\">Clothing sales in developed countries have been stagnant or declining. According to Roddell, that means the only way apparel markets can grow is if clothing becomes more expensive — but that’s also unlikely to happen.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\">“In the near term we see scope for production to continue to shift from China to lower-cost countries in the region (such as Vietnam and Bangladesh,)” he wrote. He said the rise of “sewbots,” or robots that can perform each task in the production of a T-shirt, including cutting, sewing, and quality of inspection, could also drive prices lower.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 400;\">“For many years consumers responded to lower prices in apparel by acquiring more of it. But expecting consumers to buy clothing in ever-larger volumes, in response to ever-lower prices, was never likely to be sustained in the very long term,” he wrote.</p></h1>', 1, 'Admin', '2019-10-12 06:45:03', '2019-10-12 06:45:03'),
(12, '5da1d1f3a4d11_106137043-1568836366384img_5110.jpg', 'Low prices aren’t fun anymore—consumers have reached peak happiness with clothing purchases', '<p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">The apparel market has “hit a ceiling” and is “going into structural decline,” according to a note from Morgan Stanley.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">The cause of it? Consumers have reached peak happiness with clothing purchases, wrote analyst Geoff Ruddell on Friday.</p><div class=\"BoxInline-container  \" style=\"max-width: 300px; margin: auto; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\"><div id=\"BoxInline-ArticleBody-6\" class=\"BoxInline-container\" data-module=\"mps-slot\" style=\"max-width: 300px; margin: auto;\"></div></div><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">His theory is based on the Law of Diminishing Marginal Utility, which states that “as consumption increases, the marginal ‘utility’ (or happiness) derived from each additional unit declines.” In other words, consumers already own so many clothes that each new item they purchase doesn’t spark happiness.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">As a result, Ruddell said big clothing makers including H&amp;M, Zara parent company Inditex,&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=GPS\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Gap</a>,&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=M\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Macy’s</a>,&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=KSS\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Kohl’s</a>,&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=AEO\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">American Eagle</a>&nbsp;and&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=ANF\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Abercombie &amp; Fitch</a>&nbsp;are overvalued.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">“The world’s leading dozen listed apparel retailers have, on average, seen earnings downgrades of almost 40% since the beginning of 2016,” he wrote, citing Datastream and Morgan Stanley data. “When combined with the ongoing challenges posed by online channel shift we believe that this could make for a very difficult backdrop for the apparel retail industry. Not just for this year, or next, but indefinitely.”</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">He also said the declines can’t simply be attributed to a shift in e-commerce. “This structural shift has been going on for the last approximately 20 years, yet is only in the last 3-4 years that the clothing retailers have begun to find trading conditions so challenging,” he wrote.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">Instead, it’s because clothing has become so cheap — which led consumers to purchase in huge quantities. According to data from Kantar, a consumer in the U.S. purchases around 65 items of clothing a year. A U.K. consumer buys around 50 items a year.</p><div id=\"MidResponsive-8\" class=\"\" data-module=\"mps-slot\" style=\"position: sticky; margin: 0px auto; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\"></div><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">“Put simply, consumers would rather spend their marginal dollar on, say, going out for a meal, than on buying a 60th item of clothing in a year,” he wrote.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">Clothing sales in developed countries have been stagnant or declining. According to Roddell, that means the only way apparel markets can grow is if clothing becomes more expensive — but that’s also unlikely to happen.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">“In the near term we see scope for production to continue to shift from China to lower-cost countries in the region (such as Vietnam and Bangladesh,)” he wrote. He said the rise of “sewbots,” or robots that can perform each task in the production of a T-shirt, including cutting, sewing, and quality of inspection, could also drive prices lower.</p><p style=\"position: relative; padding-right: 20px; font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px;\">“For many years consumers responded to lower prices in apparel by acquiring more of it. But expecting consumers to buy clothing in ever-larger volumes, in response to ever-lower prices, was never likely to be sustained in the very long term,” he wrote.</p>', 1, 'Admin', '2019-10-12 06:45:31', '2019-10-12 06:45:31'),
(13, '5da1d24c001b2_102569789-462672444.jpg', 'RESTAURANTS\r\nWendy’s stock jumps on long-term sales outlook and plans for breakfast,', '<div class=\"group\" style=\"font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; line-height: 1.66; margin-bottom: 30px; margin-left: calc(((((100% - 180px) / 7) * 1) + 30px) * 1); -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%;\"><p style=\"position: relative; padding-right: 20px;\">on Friday shared more detail about its plan to launch breakfast nationwide, add new products and expand in Europe at its investor day.</p><p style=\"position: relative; padding-right: 20px;\">It also teased its unreleased third-quarter financial results. Wendy’s CEO Todd Penegor reported North American same-store sales growth of 4.4%, helped by the return of its spicy nuggets. The company is scheduled to report its earnings Nov. 6.</p><div class=\"BoxInline-container  \" style=\"max-width: 300px; margin: auto;\"><div id=\"BoxInline-ArticleBody-6\" class=\"BoxInline-container\" data-module=\"mps-slot\" style=\"max-width: 300px; margin: auto;\"></div></div><p style=\"position: relative; padding-right: 20px;\">Between 2021 to 2024, Wendy’s expects annual global system-wide&nbsp;sales in range of 4% to 5%.</p><p style=\"position: relative; padding-right: 20px;\">Shares of the company, which has a market value of $4.6 billion, jumped as much as 6.4% in morning trading. The stock is trading up 2.2%.</p></div><h2 class=\"ArticleBody-subtitle\" style=\"font-weight: 700; color: rgb(23, 23, 23); font-size: 24px; line-height: 23px; margin-bottom: 20px; margin-left: 105.703px; -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%; padding: 0px 0px 0px 3px; font-family: &quot;Proxima Nova&quot;, Arial, Helvetica, sans-serif;\">Breakfast plans</h2><div class=\"group\" style=\"font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; line-height: 1.66; margin-bottom: 30px; margin-left: calc(((((100% - 180px) / 7) * 1) + 30px) * 1); -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%;\"><p style=\"position: relative; padding-right: 20px;\">The burger chain&nbsp;<a href=\"https://www.cnbc.com/2019/09/09/wendys-cuts-2019-forecast-as-it-prepares-us-breakfast-launch-next-year.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">announced its</a>&nbsp;breakfast plans in September. Wendy’s plans to invest about $20 million to support its U.S. stores in preparation for the early 2020 launch. The company also cut its forecast for fiscal 2019 adjusted earnings at that time, expecting a decline in a range of 3.5% to 6.5%.</p><p style=\"position: relative; padding-right: 20px;\">Wendy’s anticipates that breakfast sales will grow to at least 10% of its total daily sales.</p><p style=\"position: relative; padding-right: 20px;\">The company has attempted to enter breakfast three times previously, and&nbsp;<a href=\"https://www.cnbc.com/2019/09/10/analysts-are-skeptical-about-wendys-nationwide-breakfast-stock-sinks-10percent.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">analysts have expressed skepticism</a>&nbsp;that this time around will be different.</p><div id=\"MidResponsive-3\" class=\"\" data-module=\"mps-slot\" style=\"position: sticky; margin: 0px auto;\"></div><p style=\"position: relative; padding-right: 20px;\">“We really are building this program in a different way,” Wendy’s U.S. President Kurt Kane told investors.</p><p style=\"position: relative; padding-right: 20px;\">Kane said that the company worked with franchisees to create the breakfast program.</p><p style=\"position: relative; padding-right: 20px;\">“They really pushed us hard to make sure that we had something that could work for our entire system,” he said.</p><p style=\"position: relative; padding-right: 20px;\">Thanks to the company’s investments in the program, executives expect that breakfast will be immediately profitable for franchisees.</p></div>', 1, 'Admin', '2019-10-12 06:47:00', '2019-10-12 06:47:00'),
(14, '5da1d26816891_103538391-GettyImages-491035502.jpg', 'Chick-fil-A continues its international expansion with its first location in the UK', '<div class=\"group\" style=\"font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; line-height: 1.66; margin-bottom: 30px; margin-left: calc(((((100% - 180px) / 7) * 1) + 30px) * 1); -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%;\"><p style=\"position: relative; padding-right: 20px;\">on Friday shared more detail about its plan to launch breakfast nationwide, add new products and expand in Europe at its investor day.</p><p style=\"position: relative; padding-right: 20px;\">It also teased its unreleased third-quarter financial results. Wendy’s CEO Todd Penegor reported North American same-store sales growth of 4.4%, helped by the return of its spicy nuggets. The company is scheduled to report its earnings Nov. 6.</p><div class=\"BoxInline-container  \" style=\"max-width: 300px; margin: auto;\"><div id=\"BoxInline-ArticleBody-6\" class=\"BoxInline-container\" data-module=\"mps-slot\" style=\"max-width: 300px; margin: auto;\"></div></div><p style=\"position: relative; padding-right: 20px;\">Between 2021 to 2024, Wendy’s expects annual global system-wide&nbsp;sales in range of 4% to 5%.</p><p style=\"position: relative; padding-right: 20px;\">Shares of the company, which has a market value of $4.6 billion, jumped as much as 6.4% in morning trading. The stock is trading up 2.2%.</p></div><h2 class=\"ArticleBody-subtitle\" style=\"font-weight: 700; color: rgb(23, 23, 23); font-size: 24px; line-height: 23px; margin-bottom: 20px; margin-left: 105.703px; -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%; padding: 0px 0px 0px 3px; font-family: &quot;Proxima Nova&quot;, Arial, Helvetica, sans-serif;\">Breakfast plans</h2><div class=\"group\" style=\"font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; line-height: 1.66; margin-bottom: 30px; margin-left: calc(((((100% - 180px) / 7) * 1) + 30px) * 1); -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%;\"><p style=\"position: relative; padding-right: 20px;\">The burger chain&nbsp;<a href=\"https://www.cnbc.com/2019/09/09/wendys-cuts-2019-forecast-as-it-prepares-us-breakfast-launch-next-year.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">announced its</a>&nbsp;breakfast plans in September. Wendy’s plans to invest about $20 million to support its U.S. stores in preparation for the early 2020 launch. The company also cut its forecast for fiscal 2019 adjusted earnings at that time, expecting a decline in a range of 3.5% to 6.5%.</p><p style=\"position: relative; padding-right: 20px;\">Wendy’s anticipates that breakfast sales will grow to at least 10% of its total daily sales.</p><p style=\"position: relative; padding-right: 20px;\">The company has attempted to enter breakfast three times previously, and&nbsp;<a href=\"https://www.cnbc.com/2019/09/10/analysts-are-skeptical-about-wendys-nationwide-breakfast-stock-sinks-10percent.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">analysts have expressed skepticism</a>&nbsp;that this time around will be different.</p><div id=\"MidResponsive-3\" class=\"\" data-module=\"mps-slot\" style=\"position: sticky; margin: 0px auto;\"></div><p style=\"position: relative; padding-right: 20px;\">“We really are building this program in a different way,” Wendy’s U.S. President Kurt Kane told investors.</p><p style=\"position: relative; padding-right: 20px;\">Kane said that the company worked with franchisees to create the breakfast program.</p><p style=\"position: relative; padding-right: 20px;\">“They really pushed us hard to make sure that we had something that could work for our entire system,” he said.</p><p style=\"position: relative; padding-right: 20px;\">Thanks to the company’s investments in the program, executives expect that breakfast will be immediately profitable for franchisees.</p></div>', 1, 'Admin', '2019-10-12 06:47:28', '2019-10-12 06:47:28'),
(15, '5da1d27d9eaca_106019778-1563215810025gettyimages-1135610510.jpeg', 'United scraps Boeing 737 Max flying until January with no end in sight to grounding', '<div class=\"group\" style=\"font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; line-height: 1.66; margin-bottom: 30px; margin-left: calc(((((100% - 180px) / 7) * 1) + 30px) * 1); -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%;\"><p style=\"position: relative; padding-right: 20px;\">on Friday shared more detail about its plan to launch breakfast nationwide, add new products and expand in Europe at its investor day.</p><p style=\"position: relative; padding-right: 20px;\">It also teased its unreleased third-quarter financial results. Wendy’s CEO Todd Penegor reported North American same-store sales growth of 4.4%, helped by the return of its spicy nuggets. The company is scheduled to report its earnings Nov. 6.</p><div class=\"BoxInline-container  \" style=\"max-width: 300px; margin: auto;\"><div id=\"BoxInline-ArticleBody-6\" class=\"BoxInline-container\" data-module=\"mps-slot\" style=\"max-width: 300px; margin: auto;\"></div></div><p style=\"position: relative; padding-right: 20px;\">Between 2021 to 2024, Wendy’s expects annual global system-wide&nbsp;sales in range of 4% to 5%.</p><p style=\"position: relative; padding-right: 20px;\">Shares of the company, which has a market value of $4.6 billion, jumped as much as 6.4% in morning trading. The stock is trading up 2.2%.</p></div><h2 class=\"ArticleBody-subtitle\" style=\"font-weight: 700; color: rgb(23, 23, 23); font-size: 24px; line-height: 23px; margin-bottom: 20px; margin-left: 105.703px; -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%; padding: 0px 0px 0px 3px; font-family: &quot;Proxima Nova&quot;, Arial, Helvetica, sans-serif;\">Breakfast plans</h2><div class=\"group\" style=\"font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; line-height: 1.66; margin-bottom: 30px; margin-left: calc(((((100% - 180px) / 7) * 1) + 30px) * 1); -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%;\"><p style=\"position: relative; padding-right: 20px;\">The burger chain&nbsp;<a href=\"https://www.cnbc.com/2019/09/09/wendys-cuts-2019-forecast-as-it-prepares-us-breakfast-launch-next-year.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">announced its</a>&nbsp;breakfast plans in September. Wendy’s plans to invest about $20 million to support its U.S. stores in preparation for the early 2020 launch. The company also cut its forecast for fiscal 2019 adjusted earnings at that time, expecting a decline in a range of 3.5% to 6.5%.</p><p style=\"position: relative; padding-right: 20px;\">Wendy’s anticipates that breakfast sales will grow to at least 10% of its total daily sales.</p><p style=\"position: relative; padding-right: 20px;\">The company has attempted to enter breakfast three times previously, and&nbsp;<a href=\"https://www.cnbc.com/2019/09/10/analysts-are-skeptical-about-wendys-nationwide-breakfast-stock-sinks-10percent.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">analysts have expressed skepticism</a>&nbsp;that this time around will be different.</p><div id=\"MidResponsive-3\" class=\"\" data-module=\"mps-slot\" style=\"position: sticky; margin: 0px auto;\"></div><p style=\"position: relative; padding-right: 20px;\">“We really are building this program in a different way,” Wendy’s U.S. President Kurt Kane told investors.</p><p style=\"position: relative; padding-right: 20px;\">Kane said that the company worked with franchisees to create the breakfast program.</p><p style=\"position: relative; padding-right: 20px;\">“They really pushed us hard to make sure that we had something that could work for our entire system,” he said.</p><p style=\"position: relative; padding-right: 20px;\">Thanks to the company’s investments in the program, executives expect that breakfast will be immediately profitable for franchisees.</p></div>', 1, 'Admin', '2019-10-12 06:47:49', '2019-10-12 06:47:49'),
(18, '5da1d2c4f124a_106136458-1568820235468rtx739wu.jpg', 'United scraps Boeing 737 Max flying until January with no end in sight to grounding', '<div class=\"group\" style=\"font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; line-height: 1.66; margin-bottom: 30px; margin-left: calc(((((100% - 180px) / 7) * 1) + 30px) * 1); -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%;\"><p style=\"position: relative; padding-right: 20px;\"><a href=\"https://www.cnbc.com/quotes/?symbol=UAL\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">United Airlines</a>&nbsp;on Friday joined other U.S. carriers in scrapping&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=BA\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Boeing</a>&nbsp;737 Max plans to return to service until January, canceling hundreds more flights as the worldwide grounding from two fatal crashes enters its eighth month.</p><p style=\"position: relative; padding-right: 20px;\">United removed the Max from its schedule until Jan. 6. On Wednesday,&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=AAL\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">American Airlines</a>&nbsp;extended cancellations from the plane’s grounding until&nbsp;<a href=\"https://www.cnbc.com/2019/10/09/american-airlines-cuts-boeing-737-max-from-schedules-until-january.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Jan. 16</a>. Southwest in July said it would remove the plane from its schedules until&nbsp;<a href=\"https://www.cnbc.com/2019/07/25/southwest-air-to-pull-out-of-newark-after-taking-a-growth-hit-from-the-boeing-737-max-grounding.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Jan. 5</a>.</p><div class=\"BoxInline-container  \" style=\"max-width: 300px; margin: auto;\"><div id=\"BoxInline-ArticleBody-6\" class=\"BoxInline-container\" data-module=\"mps-slot\" style=\"max-width: 300px; margin: auto;\"></div></div><p style=\"position: relative; padding-right: 20px;\">Boeing is scrambling to finalize fixes for the planes, which have been grounded worldwide since mid-March after the second of two fatal crashes. The Chicago-based manufacturer has said it expects to gain approval in the fourth quarter, but aviation officials haven’t said when they expect to allow the planes to fly again. The prolonged grounding has dented airlines’ revenue and created a headache for planners and travelers alike.</p><p style=\"position: relative; padding-right: 20px;\">United had expected the planes to return Dec. 19, but the new change means cancellations will continue during the busy Christmas holiday period.</p><p style=\"position: relative; padding-right: 20px;\">The airline expects to cancel 93 flights a day in November and 75 a day in December and plans to swap out planes or use larger aircraft to limit the number of passengers affected.</p><p style=\"position: relative; padding-right: 20px;\">“If we are unable to place them on a different flight, we will proactively reach out to try and offer other options,” United said.</p><p style=\"position: relative; padding-right: 20px;\">Even if the Federal Aviation Administration clears the plane to fly, airlines have said they would need at least a month to retrain their pilots and prepare the planes to resume service.</p><div id=\"MidResponsive-8\" class=\"\" data-module=\"mps-slot\" style=\"position: sticky; margin: 0px auto;\"></div><p style=\"position: relative; padding-right: 20px;\">Crash investigators implicated flight-control software that misfired, repeatedly pushing the nose of the planes down in both disasters, which together killed 346 people. Boeing has developed fixes for the system, but regulators haven’t yet approved them.</p><p style=\"position: relative; padding-right: 20px;\">After the first crash, a Lion Air flight that went down shortly after takeoff on Oct. 29, 2018, with 189 people aboard, pilots complained they didn’t know the system even existed.</p><p style=\"position: relative; padding-right: 20px;\">An international panel of air safety regulators is set to criticize the FAA in a report on Friday, saying the agency didn’t adequately review the system, Reuters&nbsp;<a href=\"https://www.cnbc.com/2019/10/11/faa-failed-to-properly-review-737-max-jet-anti-stall-system-jatr-findings.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">reported</a>.</p></div>', 1, 'Admin', '2019-10-12 06:49:00', '2019-10-12 06:49:00'),
(19, '5da1d2d450940_apm-terminals-gothenburg-320x219.jpg', 'United scraps Boeing 737 Max flying until January with no end in sight to grounding', '<div class=\"group\" style=\"font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; line-height: 1.66; margin-bottom: 30px; margin-left: calc(((((100% - 180px) / 7) * 1) + 30px) * 1); -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%;\"><p style=\"position: relative; padding-right: 20px;\"><a href=\"https://www.cnbc.com/quotes/?symbol=UAL\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">United Airlines</a>&nbsp;on Friday joined other U.S. carriers in scrapping&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=BA\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Boeing</a>&nbsp;737 Max plans to return to service until January, canceling hundreds more flights as the worldwide grounding from two fatal crashes enters its eighth month.</p><p style=\"position: relative; padding-right: 20px;\">United removed the Max from its schedule until Jan. 6. On Wednesday,&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=AAL\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">American Airlines</a>&nbsp;extended cancellations from the plane’s grounding until&nbsp;<a href=\"https://www.cnbc.com/2019/10/09/american-airlines-cuts-boeing-737-max-from-schedules-until-january.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Jan. 16</a>. Southwest in July said it would remove the plane from its schedules until&nbsp;<a href=\"https://www.cnbc.com/2019/07/25/southwest-air-to-pull-out-of-newark-after-taking-a-growth-hit-from-the-boeing-737-max-grounding.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Jan. 5</a>.</p><div class=\"BoxInline-container  \" style=\"max-width: 300px; margin: auto;\"><div id=\"BoxInline-ArticleBody-6\" class=\"BoxInline-container\" data-module=\"mps-slot\" style=\"max-width: 300px; margin: auto;\"></div></div><p style=\"position: relative; padding-right: 20px;\">Boeing is scrambling to finalize fixes for the planes, which have been grounded worldwide since mid-March after the second of two fatal crashes. The Chicago-based manufacturer has said it expects to gain approval in the fourth quarter, but aviation officials haven’t said when they expect to allow the planes to fly again. The prolonged grounding has dented airlines’ revenue and created a headache for planners and travelers alike.</p><p style=\"position: relative; padding-right: 20px;\">United had expected the planes to return Dec. 19, but the new change means cancellations will continue during the busy Christmas holiday period.</p><p style=\"position: relative; padding-right: 20px;\">The airline expects to cancel 93 flights a day in November and 75 a day in December and plans to swap out planes or use larger aircraft to limit the number of passengers affected.</p><p style=\"position: relative; padding-right: 20px;\">“If we are unable to place them on a different flight, we will proactively reach out to try and offer other options,” United said.</p><p style=\"position: relative; padding-right: 20px;\">Even if the Federal Aviation Administration clears the plane to fly, airlines have said they would need at least a month to retrain their pilots and prepare the planes to resume service.</p><div id=\"MidResponsive-8\" class=\"\" data-module=\"mps-slot\" style=\"position: sticky; margin: 0px auto;\"></div><p style=\"position: relative; padding-right: 20px;\">Crash investigators implicated flight-control software that misfired, repeatedly pushing the nose of the planes down in both disasters, which together killed 346 people. Boeing has developed fixes for the system, but regulators haven’t yet approved them.</p><p style=\"position: relative; padding-right: 20px;\">After the first crash, a Lion Air flight that went down shortly after takeoff on Oct. 29, 2018, with 189 people aboard, pilots complained they didn’t know the system even existed.</p><p style=\"position: relative; padding-right: 20px;\">An international panel of air safety regulators is set to criticize the FAA in a report on Friday, saying the agency didn’t adequately review the system, Reuters&nbsp;<a href=\"https://www.cnbc.com/2019/10/11/faa-failed-to-properly-review-737-max-jet-anti-stall-system-jatr-findings.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">reported</a>.</p></div>', 1, 'Admin', '2019-10-12 06:49:16', '2019-10-12 06:49:16'),
(20, '5da1d2d9b51a0_img34_o-1024x683-1-320x213.jpg', 'United scraps Boeing 737 Max flying until January with no end in sight to grounding', '<div class=\"group\" style=\"font-family: Lyon, Arial, Helvetica, sans-serif; font-size: 18px; line-height: 1.66; margin-bottom: 30px; margin-left: calc(((((100% - 180px) / 7) * 1) + 30px) * 1); -webkit-box-flex: 0; flex-grow: 0; flex-shrink: 0; min-width: auto; max-width: 100%;\"><p style=\"position: relative; padding-right: 20px;\"><a href=\"https://www.cnbc.com/quotes/?symbol=UAL\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">United Airlines</a>&nbsp;on Friday joined other U.S. carriers in scrapping&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=BA\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Boeing</a>&nbsp;737 Max plans to return to service until January, canceling hundreds more flights as the worldwide grounding from two fatal crashes enters its eighth month.</p><p style=\"position: relative; padding-right: 20px;\">United removed the Max from its schedule until Jan. 6. On Wednesday,&nbsp;<a href=\"https://www.cnbc.com/quotes/?symbol=AAL\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">American Airlines</a>&nbsp;extended cancellations from the plane’s grounding until&nbsp;<a href=\"https://www.cnbc.com/2019/10/09/american-airlines-cuts-boeing-737-max-from-schedules-until-january.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Jan. 16</a>. Southwest in July said it would remove the plane from its schedules until&nbsp;<a href=\"https://www.cnbc.com/2019/07/25/southwest-air-to-pull-out-of-newark-after-taking-a-growth-hit-from-the-boeing-737-max-grounding.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">Jan. 5</a>.</p><div class=\"BoxInline-container  \" style=\"max-width: 300px; margin: auto;\"><div id=\"BoxInline-ArticleBody-6\" class=\"BoxInline-container\" data-module=\"mps-slot\" style=\"max-width: 300px; margin: auto;\"></div></div><p style=\"position: relative; padding-right: 20px;\">Boeing is scrambling to finalize fixes for the planes, which have been grounded worldwide since mid-March after the second of two fatal crashes. The Chicago-based manufacturer has said it expects to gain approval in the fourth quarter, but aviation officials haven’t said when they expect to allow the planes to fly again. The prolonged grounding has dented airlines’ revenue and created a headache for planners and travelers alike.</p><p style=\"position: relative; padding-right: 20px;\">United had expected the planes to return Dec. 19, but the new change means cancellations will continue during the busy Christmas holiday period.</p><p style=\"position: relative; padding-right: 20px;\">The airline expects to cancel 93 flights a day in November and 75 a day in December and plans to swap out planes or use larger aircraft to limit the number of passengers affected.</p><p style=\"position: relative; padding-right: 20px;\">“If we are unable to place them on a different flight, we will proactively reach out to try and offer other options,” United said.</p><p style=\"position: relative; padding-right: 20px;\">Even if the Federal Aviation Administration clears the plane to fly, airlines have said they would need at least a month to retrain their pilots and prepare the planes to resume service.</p><div id=\"MidResponsive-8\" class=\"\" data-module=\"mps-slot\" style=\"position: sticky; margin: 0px auto;\"></div><p style=\"position: relative; padding-right: 20px;\">Crash investigators implicated flight-control software that misfired, repeatedly pushing the nose of the planes down in both disasters, which together killed 346 people. Boeing has developed fixes for the system, but regulators haven’t yet approved them.</p><p style=\"position: relative; padding-right: 20px;\">After the first crash, a Lion Air flight that went down shortly after takeoff on Oct. 29, 2018, with 189 people aboard, pilots complained they didn’t know the system even existed.</p><p style=\"position: relative; padding-right: 20px;\">An international panel of air safety regulators is set to criticize the FAA in a report on Friday, saying the agency didn’t adequately review the system, Reuters&nbsp;<a href=\"https://www.cnbc.com/2019/10/11/faa-failed-to-properly-review-737-max-jet-anti-stall-system-jatr-findings.html\" alt=\"\" class=\"\" rel=\"\" target=\"\" title=\"\" role=\"\" tabindex=\"\" data-type=\"\" aria-label=\"\" style=\"color: rgb(32, 119, 182); text-decoration: underline; cursor: pointer;\">reported</a>.</p></div>', 1, 'Admin', '2019-10-12 06:49:21', '2019-10-12 06:49:21'),
(31, '5da9476c997b3_0084.jpg', 'dggsggdfgdgd', '<p>dgdgdgdgdfgd</p>', 1, 'egetgd', '2019-10-17 22:32:36', '2019-10-17 22:32:36'),
(32, '5da94777107af_333.jpg', 'reerterterter', '<p>erteterterte</p>', 1, 'erterte', '2019-10-17 22:32:47', '2019-10-17 22:32:47'),
(33, '5da9478aab2c1_222.jpg', 'ertetterterertertet', '<p>eterterterteteterterte</p>', 1, 'reteteterrtertet', '2019-10-17 22:33:06', '2019-10-17 22:33:06'),
(34, '5da9484371524_2020.jpg', 'mon state', '<p>darwrwererwerwewrw</p>', 1, 'moon lay', '2019-10-17 22:36:11', '2019-10-17 22:36:11'),
(35, '5da948be849ac_0017.jpg', 'Mon Traditional', '<p>သီဟိုဠ္မွ ဉာဏ္ႀကီးရွင္သည္ အာယုဝၯနေဆးၫႊန္းစာကို ဇလြန္ေဈးေဘး ဗာဒံပင္ထက္ အဓိ႒ာန္လ်က္ ဂဃနဏဖတ္ခဲ့သည္။<br></p>', 1, 'မြန္ေလး', '2019-10-17 22:38:14', '2019-10-17 22:40:45'),
(36, '5da94973502b6_03037_liverpool_1920x1408.jpg', 'Mon State', '<p>sfsfsfsdfsfsdfs</p>', 1, 'sfsf', '2019-10-17 22:41:15', '2019-10-17 22:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `what-we-do` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `why-join-us` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about-us` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `member_id`, `logo`, `name`, `sub_category_id`, `email`, `phone`, `address`, `web_url`, `facebook_url`, `what-we-do`, `why-join-us`, `vision`, `mission`, `about-us`, `type`, `ads_date`, `created_at`, `updated_at`) VALUES
(4, 8, '5da29517e0a46_images (3).jpg', 'Apple', 6, 'testing@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:02:14', '2019-10-12 20:38:07'),
(5, 8, '5da2950f51365_images (4).png', 'Orange', 5, 'sdfsdf@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:19:36', '2019-10-12 20:37:59'),
(6, 9, '5da29507cb79a_images (2).png', 'Mango', 6, 'zay0935@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:26:27', '2019-10-12 20:37:51'),
(7, 8, '5da294ff5e0ad_images.jpg', 'Green', 5, 'gdfgdfg@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:34:23', '2019-10-12 20:37:43'),
(8, 8, '5da294f6a1ff0_images (4).png', 'Ayeyar', 6, 'testing@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:02:14', '2019-10-12 20:37:34'),
(9, 8, '5da294ed861d2_images (3).png', 'Nadi Min', 5, 'sdfsdf@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:19:36', '2019-10-12 20:37:25'),
(10, 9, '5da294e39a944_images (5).png', 'Mya Ayeyar', 6, 'zay0935@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:26:27', '2019-10-12 20:37:15'),
(11, 8, '5da294dd63131_images.png', 'Greek Queen', 5, 'gdfgdfg@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:34:23', '2019-10-12 20:37:09'),
(12, 8, '5da294d3baaab_images (7).png', 'Mirror Kin', 6, 'testing@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:02:14', '2019-10-12 20:36:59'),
(13, 8, '5da294ca44167_images (3).png', 'Taslar Wish', 5, 'sdfsdf@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:19:36', '2019-10-12 20:36:50'),
(14, 9, '5da294c259197_images (6).png', 'Amazon', 6, 'zay0935@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:26:27', '2019-10-12 20:36:42'),
(15, 8, '5da294bb878ac_images (2).png', 'Alibaba', 5, 'gdfgdfg@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:34:23', '2019-10-12 20:36:35'),
(16, 8, '5da294b39657f_images (1).png', 'Sai Cosmistic', 6, 'testing@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:02:14', '2019-10-12 20:36:27'),
(17, 8, '5da294a77d92f_images (1).jpg', 'Central Base', 5, 'sdfsdf@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:19:36', '2019-10-12 20:36:15'),
(18, 9, '5da2945b45e85_images (1).jpg', 'Facebook', 6, 'zay0935@gmail.com', '09771672511', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:26:27', '2019-10-12 20:34:59'),
(19, 8, '5da293cd27fd7_images (2).jpg', 'Google', 5, 'gdfgdfg@gmail.com', '0967787634455', 'yangon', 'http://www.testingcompany.com', 'http://www.facebook.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'testingLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.', 'ads', '2020-03-11', '2019-10-10 22:34:23', '2019-10-12 20:45:38'),
(20, 2, '5da2a3d500bc1_images (1).jpg', 'Little Brother', 4, 'littlebro@gmail.com', '0967787634455', 'Myitkyina', 'www.facebook.com', 'www.facebook.com', 'skdfjkdjf', 'jdfdkfj', ';jdjfkdjfj', 'jkdjkfjkfj1k', 'kjfdkkfjk', 'ads', '2019-10-31', '2019-10-12 21:41:01', '2019-10-12 22:59:32'),
(24, 2, '5da761d678c69_7.jpg', 'mon lay', 5, 'moon123@gmail.com', '09765432234', 'yangon', 'https://www.facebook.com/pop.starlay.1', 'https://www.facebook.com/pop.starlay.1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum id corrupti placeat minus rerum labore quae sed voluptas, hic necessitatibus tempore doloremque veritatis fuga laudantium sunt provident enim quaerat consequatur?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum id corrupti placeat minus rerum labore quae sed voluptas, hic necessitatibus tempore doloremque veritatis fuga laudantium sunt provident enim quaerat consequatur?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum id corrupti placeat minus rerum labore quae sed voluptas, hic necessitatibus tempore doloremque veritatis fuga laudantium sunt provident enim quaerat consequatur?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum id corrupti placeat minus rerum labore quae sed voluptas, hic necessitatibus tempore doloremque veritatis fuga laudantium sunt provident enim quaerat consequatur?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum id corrupti placeat minus rerum labore quae sed voluptas, hic necessitatibus tempore doloremque veritatis fuga laudantium sunt provident enim quaerat consequatur?', 'normal', '2019-10-17', '2019-10-16 12:00:46', '2019-10-16 12:00:46'),
(25, 9, '5da763f529e13_3d_1171.jpg', 'Zayy company', 5, 'moon123@gmail.com', '09543345876', '14/324 Htauk Kyant', 'https://www.facebook.com/pop.starlay.1', 'https://www.facebook.com/pop.starlay.1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam, debitis aperiam repellat consequatur perspiciatis voluptates sapiente sequi dolor dolore pariatur impedit facere ex. Ipsa, tempora! Magnam sequi debitis distinctio non.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam, debitis aperiam repellat consequatur perspiciatis voluptates sapiente sequi dolor dolore pariatur impedit facere ex. Ipsa, tempora! Magnam sequi debitis distinctio non.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam, debitis aperiam repellat consequatur perspiciatis voluptates sapiente sequi dolor dolore pariatur impedit facere ex. Ipsa, tempora! Magnam sequi debitis distinctio non.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam, debitis aperiam repellat consequatur perspiciatis voluptates sapiente sequi dolor dolore pariatur impedit facere ex. Ipsa, tempora! Magnam sequi debitis distinctio non.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam, debitis aperiam repellat consequatur perspiciatis voluptates sapiente sequi dolor dolore pariatur impedit facere ex. Ipsa, tempora! Magnam sequi debitis distinctio non.', 'normal', '2019-10-17', '2019-10-16 12:09:49', '2019-10-16 12:09:49'),
(26, 9, '5da765b1ab596_003.jpg', 'Zayy', 6, 'zayy@gmail.com', '09543345876', 'yangon', 'https://www.facebook.com/pop.starlay.1', 'https://www.facebook.com/pop.starlay.1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi adipisci accusamus cum porro. Id quidem ab accusantium nihil illum, eaque placeat facilis tempore iusto, nostrum sint omnis maxime nobis dolor!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi adipisci accusamus cum porro. Id quidem ab accusantium nihil illum, eaque placeat facilis tempore iusto, nostrum sint omnis maxime nobis dolor!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi adipisci accusamus cum porro. Id quidem ab accusantium nihil illum, eaque placeat facilis tempore iusto, nostrum sint omnis maxime nobis dolor!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi adipisci accusamus cum porro. Id quidem ab accusantium nihil illum, eaque placeat facilis tempore iusto, nostrum sint omnis maxime nobis dolor!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi adipisci accusamus cum porro. Id quidem ab accusantium nihil illum, eaque placeat facilis tempore iusto, nostrum sint omnis maxime nobis dolor!', 'ads', '2019-10-17', '2019-10-16 12:17:13', '2019-10-16 12:17:13'),
(27, 2, '5da76a5b5e983_wallpaper10_lg.jpg', 'phyo  company', 6, 'phyo@gmail.com', '09543345876', 'yangon', 'https://www.facebook.com/pop.starlay.1', 'https://www.facebook.com/pop.starlay.1', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sequi, suscipit! Libero enim, accusantium nihil voluptas adipisci officiis. Minima quos voluptatum odio nisi mollitia? Perferendis, beatae. Totam vel perferendis expedita non.', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sequi, suscipit! Libero enim, accusantium nihil voluptas adipisci officiis. Minima quos voluptatum odio nisi mollitia? Perferendis, beatae. Totam vel perferendis expedita non.', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sequi, suscipit! Libero enim, accusantium nihil voluptas adipisci officiis. Minima quos voluptatum odio nisi mollitia? Perferendis, beatae. Totam vel perferendis expedita non.', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sequi, suscipit! Libero enim, accusantium nihil voluptas adipisci officiis. Minima quos voluptatum odio nisi mollitia? Perferendis, beatae. Totam vel perferendis expedita non.', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sequi, suscipit! Libero enim, accusantium nihil voluptas adipisci officiis. Minima quos voluptatum odio nisi mollitia? Perferendis, beatae. Totam vel perferendis expedita non.', 'ads', '2019-10-17', '2019-10-16 12:37:07', '2019-10-17 21:58:38'),
(28, 3, '5da76e4638420_0103.jpg', 'Zaylay', 14, 'zayy@gmail.com', '09799261714', 'yangon', 'https://www.facebook.com/pop.starlay.1', 'https://www.facebook.com/pop.starlay.1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex veritatis molestiae assumenda consectetur facilis illum accusamus voluptatum, quisquam dolore eaque quo commodi, debitis optio excepturi! Sed soluta fugiat minus tempore.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex veritatis molestiae assumenda consectetur facilis illum accusamus voluptatum, quisquam dolore eaque quo commodi, debitis optio excepturi! Sed soluta fugiat minus tempore.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex veritatis molestiae assumenda consectetur facilis illum accusamus voluptatum, quisquam dolore eaque quo commodi, debitis optio excepturi! Sed soluta fugiat minus tempore.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex veritatis molestiae assumenda consectetur facilis illum accusamus voluptatum, quisquam dolore eaque quo commodi, debitis optio excepturi! Sed soluta fugiat minus tempore.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex veritatis molestiae assumenda consectetur facilis illum accusamus voluptatum, quisquam dolore eaque quo commodi, debitis optio excepturi! Sed soluta fugiat minus tempore.', 'ads', '2019-10-09', '2019-10-16 12:53:50', '2019-10-16 12:53:50'),
(29, 2, '5da93fd3d0a0b_3d_1171.jpg', 'IT company', 5, 'phyo@gmail.com', '09543345876', 'yangon', 'https://www.facebook.com/pop.starlay.1', 'https://www.facebook.com/pop.starlay.1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto quo sequi pariatur! Nostrum, molestias laboriosam minima dolorem quas eaque provident rerum inventore ab veritatis pariatur corrupti soluta necessitatibus expedita non.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto quo sequi pariatur! Nostrum, molestias laboriosam minima dolorem quas eaque provident rerum inventore ab veritatis pariatur corrupti soluta necessitatibus expedita non.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto quo sequi pariatur! Nostrum, molestias laboriosam minima dolorem quas eaque provident rerum inventore ab veritatis pariatur corrupti soluta necessitatibus expedita non.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto quo sequi pariatur! Nostrum, molestias laboriosam minima dolorem quas eaque provident rerum inventore ab veritatis pariatur corrupti soluta necessitatibus expedita non.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto quo sequi pariatur! Nostrum, molestias laboriosam minima dolorem quas eaque provident rerum inventore ab veritatis pariatur corrupti soluta necessitatibus expedita non.', 'ads', '2019-10-18', '2019-10-17 21:25:44', '2019-10-17 22:00:11'),
(30, 6, '5daa87beca97f_111.jpg', 'Pyae Pyae Company', 7, 'pyae@gmail.com', '09765432234', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, velit temporibus? Reprehenderit id amet, autem et dicta impedit ea ipsam facere voluptatibus nihil placeat incidunt eaque illo soluta porro doloribus?', 'https://www.facebook.com/pop.starlay.1', 'https://www.facebook.com/pop.starlay.1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, velit temporibus? Reprehenderit id amet, autem et dicta impedit ea ipsam facere voluptatibus nihil placeat incidunt eaque illo soluta porro doloribus?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, velit temporibus? Reprehenderit id amet, autem et dicta impedit ea ipsam facere voluptatibus nihil placeat incidunt eaque illo soluta porro doloribus?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, velit temporibus? Reprehenderit id amet, autem et dicta impedit ea ipsam facere voluptatibus nihil placeat incidunt eaque illo soluta porro doloribus?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, velit temporibus? Reprehenderit id amet, autem et dicta impedit ea ipsam facere voluptatibus nihil placeat incidunt eaque illo soluta porro doloribus?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, velit temporibus? Reprehenderit id amet, autem et dicta impedit ea ipsam facere voluptatibus nihil placeat incidunt eaque illo soluta porro doloribus?', 'normal', '2019-10-19', '2019-10-18 21:19:18', '2019-10-18 21:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Ye Yint Ko', 'admin@gmail.com', 'Drewry: Proposed US Auto Tariffs to Affect East-West Trade Routes', 'aaasdassd', '2019-10-12 08:21:51', '2019-10-12 08:21:51'),
(3, 'Grand Diamond Guest House', 'yeyintko.mkn@gmail.com', 'Drewry: Proposed US Auto Tariffs to Affect East-West Trade Routes', 'sdsd', '2019-10-12 08:22:30', '2019-10-12 08:22:30'),
(4, 'mon lay', 'monlay@gmail.com', 'Mingalar Par', 'dfrfwerwerwerwerwerwerwerwfdsfsdfsfdsfsdfsdfsfsfsdfsdfsfsfsdfsfsdfsdfsfsfsfs', '2019-10-17 20:23:46', '2019-10-17 20:23:46'),
(5, 'mm', 'teacher@gmail.com', 'Mingalar Parsds', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:', '2019-10-18 07:07:54', '2019-10-18 07:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `photo`, `title`, `fee`, `date`, `timing`, `location`, `detail`, `event_category`, `created_at`, `updated_at`) VALUES
(3, '5da1d55b24524_car-carrier-320x219.jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'academy', '2019-10-12 07:00:03', '2019-10-12 07:00:03'),
(4, '5da1d564cc8de_seafarers-320x221.jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'academy', '2019-10-12 07:00:12', '2019-10-12 07:00:12'),
(5, '5da1d577e4112_download (1).jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:00:32', '2019-10-12 07:00:32'),
(6, '5da1d57c013cb_download (1).png', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:00:36', '2019-10-12 07:00:36'),
(7, '5da1d57eccffd_download (2).jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:00:38', '2019-10-12 07:00:38'),
(8, '5da1d58235e2b_download.jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:00:42', '2019-10-12 07:00:42'),
(9, '5da1d58520789_download.png', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:00:45', '2019-10-12 07:00:45'),
(10, '5da1d588a2cd8_images (1).jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:00:48', '2019-10-12 07:00:48'),
(11, '5da1d58b9ff74_images (1).png', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:00:51', '2019-10-12 07:00:51'),
(12, '5da1d58f8e56a_images (2).jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:00:55', '2019-10-12 07:00:55'),
(13, '5da1d59326759_images (2).png', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:00:59', '2019-10-12 07:00:59'),
(14, '5da1d599cff30_images (3).jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:01:05', '2019-10-12 07:01:05'),
(15, '5da1d59d069aa_images (3).png', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:01:09', '2019-10-12 07:01:09'),
(16, '5da1d5a0a5899_images (4).jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:01:12', '2019-10-12 07:01:12'),
(17, '5da1d5a541219_images (5).jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:01:17', '2019-10-12 07:01:17'),
(18, '5da1d5a92e474_images (6).jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:01:21', '2019-10-12 07:01:21'),
(19, '5da1d5ae0dffb_images (7).jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:01:26', '2019-10-12 07:01:26'),
(20, '5da1d5b2413a9_images (8).jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:01:30', '2019-10-12 07:01:30'),
(21, '5da1d5b5ed17f_images (9).jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:01:33', '2019-10-12 07:01:33'),
(22, '5da1d5bab0bf6_images.jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:01:38', '2019-10-12 07:01:38'),
(23, '5da6ef3a821f4_11.jpg', 'Slithering Twilight', NULL, '2020-02-07', '9:00 AM', 'Ka Ba Aye Pagoda Road, Bahan Township', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p>', 'academy', '2019-10-12 07:01:42', '2019-10-16 03:51:46'),
(24, '5da6ef1f35ea6_0012.jpg', 'mon event', NULL, '2019-10-17', '3pm', 'yangon', '<div style=\"line-height: 19px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo, eum sint molestias eligendi reiciendis cupiditate aspernatur voluptatem adipisci, est atque, possimus provident in nam! Cumque, tempore. Quaerat praesentium consectetur quis?</div>', 'other', '2019-10-16 03:51:19', '2019-10-16 03:51:19'),
(25, '5da9408eb7d65_100.jpg', 'mon state', NULL, '2019-11-20', '4pm', 'yangon', '<p>dgegdgrggergeg</p>', 'academy', '2019-10-17 22:03:18', '2019-10-18 01:04:57'),
(26, '5da9683088a34_199.jpg', 'Mon Yoe Yar', NULL, '2019-11-04', '3am', 'yangon', '<div style=\"line-height: 19px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis sit omnis, numquam quidem aperiam illo. Illo eum suscipit minima magni natus aliquid alias similique sed nam dolorum, explicabo voluptas perferendis.</div>', 'academy', '2019-10-18 00:52:24', '2019-10-18 00:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `photo`, `company_id`, `created_at`, `updated_at`) VALUES
(9, '5da005cf17a55_bull_2.png', 4, '2019-10-10 22:02:15', '2019-10-10 22:02:15'),
(10, '5da005cf2d658_butterfly.png', 4, '2019-10-10 22:02:15', '2019-10-10 22:02:15'),
(11, '5da005cf38273_cat.png', 4, '2019-10-10 22:02:15', '2019-10-10 22:02:15'),
(12, '5da005cf402a7_catapilar.png', 4, '2019-10-10 22:02:15', '2019-10-10 22:02:15'),
(13, '5da005cf483c0_crocodile.png', 4, '2019-10-10 22:02:15', '2019-10-10 22:02:15'),
(14, '5da005cf50557_deer.png', 4, '2019-10-10 22:02:15', '2019-10-10 22:02:15'),
(15, '5da005cf55b5a_deer_1.png', 4, '2019-10-10 22:02:15', '2019-10-10 22:02:15'),
(16, '5da005cf6077f_duck_2.png', 4, '2019-10-10 22:02:15', '2019-10-10 22:02:15'),
(17, '5da009e03b9ce_gifferef.png', 5, '2019-10-10 22:19:36', '2019-10-10 22:19:36'),
(18, '5da009e04a43c_gifferef_2.png', 5, '2019-10-10 22:19:36', '2019-10-10 22:19:36'),
(19, '5da009e04fa7a_hippo.png', 5, '2019-10-10 22:19:36', '2019-10-10 22:19:36'),
(20, '5da009e073c65_horse.png', 5, '2019-10-10 22:19:36', '2019-10-10 22:19:36'),
(21, '5da009e07c0a1_insect.png', 5, '2019-10-10 22:19:36', '2019-10-10 22:19:36'),
(22, '5da009e090323_kangroo.png', 5, '2019-10-10 22:19:36', '2019-10-10 22:19:36'),
(23, '5da009e09da94_kangroo_2.png', 5, '2019-10-10 22:19:36', '2019-10-10 22:19:36'),
(24, '5da009e0a2fe2_koala.png', 5, '2019-10-10 22:19:36', '2019-10-10 22:19:36'),
(25, '5da00b7b7af75_lioness.png', 6, '2019-10-10 22:26:27', '2019-10-10 22:26:27'),
(26, '5da00b7b83186_monkey_2.png', 6, '2019-10-10 22:26:27', '2019-10-10 22:26:27'),
(27, '5da00b7b91d5d_mouse.png', 6, '2019-10-10 22:26:27', '2019-10-10 22:26:27'),
(28, '5da00b7b98a85_owl.png', 6, '2019-10-10 22:26:27', '2019-10-10 22:26:27'),
(29, '5da00b7ba74a9_rhino.png', 6, '2019-10-10 22:26:27', '2019-10-10 22:26:27'),
(30, '5da00b7baf86f_roaster.png', 6, '2019-10-10 22:26:27', '2019-10-10 22:26:27'),
(31, '5da00b7bb75c4_sheep.png', 6, '2019-10-10 22:26:27', '2019-10-10 22:26:27'),
(32, '5da00b7bc3970_snail.png', 6, '2019-10-10 22:26:27', '2019-10-10 22:26:27'),
(33, '5da00d576bee9_bird_2.png', 7, '2019-10-10 22:34:23', '2019-10-10 22:34:23'),
(34, '5da00d57733d4_bird_3.png', 7, '2019-10-10 22:34:23', '2019-10-10 22:34:23'),
(35, '5da00d5779d0a_bird_4.png', 7, '2019-10-10 22:34:23', '2019-10-10 22:34:23'),
(36, '5da00d57820dd_bull.png', 7, '2019-10-10 22:34:23', '2019-10-10 22:34:23'),
(37, '5da00d5789f11_bull_2.png', 7, '2019-10-10 22:34:23', '2019-10-10 22:34:23'),
(38, '5da00d57963a8_butterfly.png', 7, '2019-10-10 22:34:23', '2019-10-10 22:34:23'),
(39, '5da00d579e476_cat.png', 7, '2019-10-10 22:34:23', '2019-10-10 22:34:23'),
(40, '5da00d57abba1_catapilar.png', 7, '2019-10-10 22:34:23', '2019-10-10 22:34:23'),
(41, '5da2a3d5143c7_53850267_769407770099395_4761741150568579072_n.jpg', 20, '2019-10-12 21:41:01', '2019-10-12 21:41:01'),
(42, '5da2a3d525eba_54215021_769321433441362_3141309698423128064_n.jpg', 20, '2019-10-12 21:41:01', '2019-10-12 21:41:01'),
(43, '5da2a3d5421ce_54396430_769407773432728_4738296079445917696_n.jpg', 20, '2019-10-12 21:41:01', '2019-10-12 21:41:01'),
(44, '5da2a3d55bdc6_54435441_769321366774702_4271740958971789312_n.jpg', 20, '2019-10-12 21:41:01', '2019-10-12 21:41:01'),
(45, '5da2a3d56a6a8_54514144_769407833432722_7665816273107812352_n.jpg', 20, '2019-10-12 21:41:01', '2019-10-12 21:41:01'),
(46, '5da2a3d5793b3_59560851_1188225284692170_8562514923781881856_n.jpg', 20, '2019-10-12 21:41:01', '2019-10-12 21:41:01'),
(47, '5da2a3d58c001_59565950_1188225274692171_8393341715385155584_n.jpg', 20, '2019-10-12 21:41:01', '2019-10-12 21:41:01'),
(48, '5da2a3d5a3f24_59574624_1188225344692164_7326106788313432064_n.jpg', 20, '2019-10-12 21:41:01', '2019-10-12 21:41:01'),
(78, '5da761d686c10_010.jpg', 24, '2019-10-16 12:00:46', '2019-10-16 12:00:46'),
(79, '5da761d692b0c_011.jpg', 24, '2019-10-16 12:00:46', '2019-10-16 12:00:46'),
(80, '5da761d699ab9_11.jpg', 24, '2019-10-16 12:00:46', '2019-10-16 12:00:46'),
(81, '5da761d6a5ccd_0012.jpg', 24, '2019-10-16 12:00:46', '2019-10-16 12:00:46'),
(82, '5da763f536976_009.jpg', 25, '2019-10-16 12:09:49', '2019-10-16 12:09:49'),
(83, '5da763f542f7e_09.jpg', 25, '2019-10-16 12:09:49', '2019-10-16 12:09:49'),
(84, '5da763f572a44_9.jpg', 25, '2019-10-16 12:09:49', '2019-10-16 12:09:49'),
(85, '5da763f57e079_9eba88e5-7911-461a-9e8c-c7545dadb207_5.jpg', 25, '2019-10-16 12:09:49', '2019-10-16 12:09:49'),
(86, '5da763f586388_010.jpg', 25, '2019-10-16 12:09:49', '2019-10-16 12:09:49'),
(87, '5da764317743b_111.jpg', 25, '2019-10-16 12:09:49', '2019-10-16 12:10:49'),
(88, '5da765b1bc056_003.jpg', 26, '2019-10-16 12:17:13', '2019-10-16 12:17:13'),
(89, '5da765b1c29c8_03.jpg', 26, '2019-10-16 12:17:13', '2019-10-16 12:17:13'),
(90, '5da765b1c98d2_3d_1049.jpg', 26, '2019-10-16 12:17:13', '2019-10-16 12:17:13'),
(91, '5da765b1d8513_3d_1171.jpg', 26, '2019-10-16 12:17:13', '2019-10-16 12:17:13'),
(92, '5da76a5b6bd63_14.jpg', 27, '2019-10-16 12:37:07', '2019-10-16 12:37:07'),
(93, '5da76a5b859a7_0017.jpg', 27, '2019-10-16 12:37:07', '2019-10-16 12:37:07'),
(94, '5da76a5b94720_17.jpg', 27, '2019-10-16 12:37:07', '2019-10-16 12:37:07'),
(95, '5da76a5ba3561_19.jpg', 27, '2019-10-16 12:37:07', '2019-10-16 12:37:07'),
(96, '5da76a5baa0ab_20.jpg', 27, '2019-10-16 12:37:07', '2019-10-16 12:37:07'),
(97, '5da76a5bb0f4b_021.jpg', 27, '2019-10-16 12:37:07', '2019-10-16 12:37:07'),
(98, '5da76e4647154_$458.jpg', 28, '2019-10-16 12:53:50', '2019-10-16 12:53:50'),
(99, '5da76e464df41_(16).jpg', 28, '2019-10-16 12:53:50', '2019-10-16 12:53:50'),
(100, '5da76e4654ba2_(111).jpg', 28, '2019-10-16 12:53:50', '2019-10-16 12:53:50'),
(101, '5da76e4664ca6_0b7d1785d9b549dcd090c148728958df_full.jpg', 28, '2019-10-16 12:53:50', '2019-10-16 12:53:50'),
(102, '5da937c077b17_13.jpg', 29, '2019-10-17 21:25:44', '2019-10-17 21:25:44'),
(103, '5da937c07e9d7_0014.jpg', 29, '2019-10-17 21:25:44', '2019-10-17 21:25:44'),
(104, '5da937c0828d6_14.jpg', 29, '2019-10-17 21:25:44', '2019-10-17 21:25:44'),
(105, '5da937c086c2f_0017.jpg', 29, '2019-10-17 21:25:44', '2019-10-17 21:25:44'),
(106, '5daa87bfcf0cd_14.jpg', 30, '2019-10-18 21:19:19', '2019-10-18 21:19:19'),
(107, '5daa87bfddb05_0017.jpg', 30, '2019-10-18 21:19:19', '2019-10-18 21:19:19'),
(108, '5daa87bfe48fe_17.jpg', 30, '2019-10-18 21:19:19', '2019-10-18 21:19:19'),
(109, '5daa87bff09fb_19.jpg', 30, '2019-10-18 21:19:19', '2019-10-18 21:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'redmi', '2019-10-09 17:30:00', '2019-10-09 17:30:00'),
(3, 'aPPLE', '2019-10-10 08:09:34', '2019-10-10 08:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `phone`, `address`, `education`, `detail`, `photo`, `fb_link`, `tw_link`, `in_link`, `type`, `created_at`, `updated_at`) VALUES
(2, 'Phyo Thazin', '09765432234', 'Thar Kay Ta', 'B.E(IT)', 'dsfsfsfsfdsfsfsfdsfsfsfsfs', '5da9bb703aa55_0527ED06372C-1.jpg', 'https://web.facebook.com/thazin.phyo.988', '#', 'https://web.facebook.com/thazin.phyo.988', 'special', '2019-10-09 07:09:44', '2019-10-18 21:11:13'),
(3, 'Zayy Lin', '09123456789', 'yangon', 'B.Tech(IT)', 'testing', '5da93d0b02170_1212.jpg', '', '', '', 'normal', '2019-10-10 22:24:58', '2019-10-17 21:48:19'),
(4, 'Ye Yint Ko', '09771672511', 'Myitkyina', 'B.Sc', 'since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ip', '5da9bb51d76e0_010.jpg', 'https://web.facebook.com/profile.php?id=100011426835764', 'https://web.facebook.com/profile.php?id=100011426835764', '#', 'special', '2019-10-12 04:28:14', '2019-10-18 06:47:05'),
(6, 'Ko Pyae', '09799261714', 'Hledan', 'B.Tech(IT)', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam vitae ex quisquam expedita facere, esse repudiandae, dolorem asperiores rerum repellendus voluptas dignissimos minima quia. Illum, voluptatum necessitatibus. Voluptatibus, rerum beatae!', '5daa87f544519_03063_leaflife_1920x1408.jpg', 'https://web.facebook.com/profile.php?id=100011643256760', 'https://web.facebook.com/profile.php?id=100011643256760', 'https://web.facebook.com/profile.php?id=100011643256760', 'special', '2019-10-18 21:15:39', '2019-10-18 21:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_09_071007_create_members_table', 2),
(5, '2019_10_10_032653_create_main_categories_table', 3),
(6, '2019_10_10_032824_create_sub_categories_table', 3),
(7, '2019_10_10_034847_create_companies_table', 4),
(8, '2019_10_10_080522_create_galleries_table', 5),
(9, '2019_10_11_171226_create_blogs_table', 6),
(10, '2019_10_11_172613_create_events_table', 7),
(12, '2019_10_12_015443_create_web_site_infos_table', 8),
(13, '2019_10_12_142654_create_contacts_table', 9),
(14, '2019_10_14_043307_create_ads_table', 10),
(15, '2019_10_14_043725_create_webpages_table', 11),
(16, '2019_10_14_045418_create_ads_webpages_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `main_id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(4, 3, 'AAA', 'cat1.png', '2019-10-10 09:36:21', '2019-10-10 10:54:32'),
(5, 2, 'BBB', 'cat2.png', '2019-10-10 09:36:30', '2019-10-10 10:53:49'),
(6, 3, 'CCC', 'cat3.png', '2019-10-10 10:42:15', '2019-10-10 10:49:55'),
(7, 3, 'DDD', 'cat1.png', '2019-10-10 09:36:21', '2019-10-10 10:54:32'),
(8, 2, 'EEE', 'cat2.png', '2019-10-10 09:36:30', '2019-10-10 10:53:49'),
(9, 3, 'FFF', 'cat3.png', '2019-10-10 10:42:15', '2019-10-10 10:49:55'),
(10, 3, 'GGG', 'cat1.png', '2019-10-10 09:36:21', '2019-10-10 10:54:32'),
(11, 2, 'QWWWEE', 'cat2.png', '2019-10-10 09:36:30', '2019-10-10 10:53:49'),
(12, 3, 'TTT', 'cat3.png', '2019-10-10 10:42:15', '2019-10-10 10:49:55'),
(13, 3, 'WWW', 'cat1.png', '2019-10-10 09:36:21', '2019-10-10 10:54:32'),
(14, 2, 'TTTYYY', 'cat2.png', '2019-10-10 09:36:30', '2019-10-10 10:53:49'),
(15, 3, 'BBBBNNNN', 'cat3.png', '2019-10-10 10:42:15', '2019-10-10 10:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `type`, `member_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '2019-10-08 17:30:00', '$2y$10$AID38gN8B2IYZrR3ewPrv.f8l2LhQFHxSjS6uIlQhQ1Xu5fM1Z8D.', 'admin', 0, NULL, '2019-10-08 17:30:00', '2019-10-08 17:30:00'),
(8, 'phyo@gmail.com', NULL, '$2y$10$CzYojZgp721acN/DdOtVpOkUqKmZ0jCJdTHkakR72U96iRJc4MRUq', 'member', 2, NULL, '2019-10-09 07:09:44', '2019-10-09 07:09:44'),
(9, 'zayy@gmail.com', NULL, '$2y$10$2B1iwQAA5NOsaZ.kvI7Hy.49IdPt5hAyE7eAUj68zMOgZdCqQdNzO', 'member', 3, NULL, '2019-10-10 22:24:59', '2019-10-10 22:24:59'),
(10, 'yeyintko.mkn@gmail.com', NULL, '$2y$10$xtqhbEOz1uNqCgaYfoftYek/dS2Gkzd8sHbdA2N7lCdj24JkZRWga', 'member', 4, NULL, '2019-10-12 04:28:14', '2019-10-12 04:28:14'),
(12, 'pyae@gmail.com', NULL, '$2y$10$SImh7WUt0Iy.ur9eFnmQ1eQWbrCFOhNuLymd9XHDqXRjt0obURru6', 'member', 6, NULL, '2019-10-18 21:15:39', '2019-10-18 21:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `webpages`
--

CREATE TABLE `webpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webpages`
--

INSERT INTO `webpages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'home', NULL, NULL),
(2, 'about us', NULL, NULL),
(3, 'company', NULL, NULL),
(4, 'gallery', NULL, NULL),
(5, 'news', NULL, NULL),
(6, 'event', NULL, NULL),
(7, 'contact', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_site_infos`
--

CREATE TABLE `web_site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_site_infos`
--

INSERT INTO `web_site_infos` (`id`, `website_name`, `about`, `history`, `vision`, `mission`, `sign_photo`, `sign_name`, `sign_position`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Mon Entreprenures Association', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsu', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsuis simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsu', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsu', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsu', '5da9d37b60751_welcom_sign.png', 'DR. AUNG WIN HTUT', 'PH.D (ELECTRICAL POWER) (MPEI)', 'info@moeorg.com', '09776556677', '4th Floor, Hotel Sincere Smile Hotel Mya Yamon Riverbank Esplanade Villa Yangon, Northern Kyeepwaryae 11071', NULL, '2019-10-18 08:30:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_webpages`
--
ALTER TABLE `ads_webpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `webpages`
--
ALTER TABLE `webpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_site_infos`
--
ALTER TABLE `web_site_infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ads_webpages`
--
ALTER TABLE `ads_webpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `webpages`
--
ALTER TABLE `webpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `web_site_infos`
--
ALTER TABLE `web_site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
