-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2019 at 10:30 AM
-- Server version: 10.3.14-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id155479_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `seats_number` int(11) NOT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `user_id` int(11) NOT NULL,
  `added_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `bookings`
--


INSERT INTO `bookings` (`id`, `date`, `time`, `seats_number`, `active`, `user_id`, `added_datetime`) VALUES
(1, '2019-04-09', '14:10:19', 1, b'1', 3, '2019-04-09 11:17:19'),
(2, '2019-04-09', '14:10:19', 1, b'1', 3, '2019-04-09 11:18:51'),
(3, '2019-04-14', '13:43:15', 1, b'1', 6, '2019-04-14 10:43:21'),
(4, '2019-04-16', '13:55:27', 1, b'0', 10, '2019-04-16 10:55:34'),
(5, '2019-03-16', '13:55:41', 1, b'0', 10, '2019-04-16 10:55:48'),
(6, '2019-03-16', '13:56:08', 1, b'0', 10, '2019-04-16 10:57:23'),
(7, '2019-04-16', '11:26:57', 1, b'0', 10, '2019-04-16 11:26:57'),
(8, '2019-04-16', '11:27:03', 1, b'0', 10, '2019-04-16 11:27:03'),
(9, '2019-04-17', '07:02:28', 1, b'1', 11, '2019-04-17 04:02:36'),
(10, '2019-04-22', '11:54:53', 1, b'1', 11, '2019-04-22 08:56:00'),
(11, '2019-04-23', '10:15:54', 1, b'1', 12, '2019-04-23 10:15:54'),
(12, '2019-04-28', '07:48:00', 1, b'1', 23, '2019-04-28 08:48:32'),
(13, '2019-04-28', '07:48:00', 1, b'1', 23, '2019-04-28 08:48:44'),
(14, '2019-04-28', '08:49:16', 1, b'1', 23, '2019-04-28 08:49:16'),
(15, '2019-04-28', '08:50:14', 1, b'1', 23, '2019-04-28 08:50:14'),
(16, '2019-04-28', '08:52:23', 1, b'1', 23, '2019-04-28 08:52:23'),
(17, '2019-04-28', '08:53:00', 1, b'1', 18, '2019-04-28 08:53:00'),
(18, '2019-04-28', '08:53:00', 1, b'1', 18, '2019-04-28 08:53:00'),
(19, '2019-04-28', '07:53:00', 1, b'1', 18, '2019-04-28 08:53:13'),
(20, '2019-04-28', '07:53:00', 1, b'1', 18, '2019-04-28 08:53:16'),
(21, '2012-12-15', '08:57:09', 1, b'1', 23, '2019-04-28 08:57:09'),
(22, '2012-12-16', '08:56:00', 1, b'1', 23, '2019-04-28 08:57:23'),
(23, '2019-04-28', '09:43:51', 1, b'1', 23, '2019-04-28 09:43:51'),
(24, '2012-12-15', '09:52:31', 1, b'1', 23, '2019-04-28 09:52:31'),
(25, '2019-04-28', '10:38:08', 1, b'1', 15, '2019-04-28 10:38:08'),
(26, '2019-04-28', '10:39:28', 1, b'1', 15, '2019-04-28 10:39:28'),
(27, '2019-04-28', '10:42:00', 1, b'1', 15, '2019-04-28 10:42:49'),
(28, '2019-04-28', '10:43:00', 1, b'1', 15, '2019-04-28 10:44:07');
-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `added_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

-- تذكر تنظيم هذه القيم لأن هذه القيم غير مقبولة عندما ننشر التطبيق للطلاب
-- 
INSERT INTO `contacts` (`id`, `email`, `message`, `added_datetime`) VALUES
(2, 'hsoub@gmail.com', 'شكراً على هذا التطبيق المفيد جداً', '2019-04-09 11:36:28');


-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `meal_id` int(11) NOT NULL,
  `added_datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `meal_id`, `added_datetime`) VALUES
(1, 'bread1.jpg', 1, '2019-04-02 00:00:00'),
(2, 'bread3.jpg', 1, '2019-04-02 00:00:00'),
(3, 'bread2.jpg', 1, '2019-04-02 00:00:00'),
(5, 'fatayer1.jpg', 2, '2019-04-02 00:00:00'),
(6, 'fatayer2.jpg', 2, '2019-04-02 00:00:00'),
(7, 'fatayer3.jpg', 2, '2019-04-02 00:00:00'),
(8, 'fateh1.jpg', 3, '2019-04-02 00:00:00'),
(9, 'fateh2.jpg', 3, '2019-04-02 00:00:00'),
(10, 'fateh3.jpg', 3, '2019-04-02 00:00:00'),
(11, 'kebbah1.jpg', 4, '2019-04-11 10:19:32'),
(12, 'kebbah2.jpg', 4, '2019-04-11 10:19:42'),
(13, 'kebbah3.jpg', 4, '2019-04-11 10:19:53'),
(14, 'kabseh1.jpg', 5, '2019-04-11 10:19:53'),
(15, 'kabseh2.jpg', 5, '2019-04-11 10:19:53'),
(16, 'kabseh3.jpg', 5, '2019-04-11 10:19:53'),
(17, 'mashwe1.jpg', 6, '2019-04-11 10:19:53'),
(18, 'mashwe2.jpg', 6, '2019-04-11 10:19:53'),
(19, 'mashwe3.jpg', 6, '2019-04-11 10:19:53'),
(20, 'nabolsia1.jpg', 7, '2019-04-11 10:19:53'),
(21, 'nabolsia2.jpg', 7, '2019-04-11 10:19:53'),
(22, 'nabolsia3.jpg', 7, '2019-04-11 10:19:53'),
(23, 'knafeh1.jpg', 8, '2019-04-11 10:19:53'),
(24, 'knafeh2.jpg', 8, '2019-04-11 10:19:53'),
(25, 'knafeh3.jpg', 8, '2019-04-11 10:19:53'),
(26, 'tamer1.jpg', 9, '2019-04-11 10:19:53'),
(27, 'tamer2.jpg', 9, '2019-04-11 10:19:53'),
(28, 'soos1.jpg', 10, '2019-04-11 10:19:53'),
(29, 'soos2.jpg', 10, '2019-04-11 10:19:53'),
(30, 'fool1.jpg', 11, '2019-04-11 10:19:53'),
(31, 'fool2.jpg', 11, '2019-04-11 10:19:53'),
(32, 'flafel1.jpg', 12, '2019-04-11 10:19:53'),
(33, 'flafel2.jpg', 12, '2019-04-11 10:19:53'),
(34, 'berak2.jpg', 13, '2019-04-11 10:19:53'),
(35, 'berak1.jpg', 13, '2019-04-11 10:19:53'),
(36, 'salad1.jpg', 14, '2019-04-11 10:19:53'),
(37, 'salad2.jpg', 14, '2019-04-11 10:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `meal_type_id` int(11) NOT NULL,
  `added_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `name`, `price`, `description`, `meal_type_id`, `added_datetime`) VALUES
(1, 'الخبز', 300, 'إنه سيد المائدة منذ عرف الإنسان طحن القمح وعجنه بالماء بيديه وأوقده النار تحته، فصار رغيفاً يسمنه من الجوع على مدار فصول السنة', 1, '2019-04-02 10:31:14'),
(2, 'فطائر', 200, 'تعد الفطائر واحدةً من أكثر الوجبات شهرةً بين الناس، ومن الوجبات المُفضّلة أيضاً؛ حيث إنّها من الوجبات الخفيفة التي من المُمكن تناولها أثناء اليوم في أيّ فترة، كما يُمكن إعداد الفطائر بطرق مُختلفة من خلال مجموعة من الطرق التي تتّصف جميعها بالبساطة والسهولة، وهي من الوصفات التي من الممكن أن يتمّ حشوها بالعديد من أصناف الحشوات حسب رغبة كلّ عائلة؛ إذ إنّها تتّصف بالمرونة في الإعداد والتطبيق', 1, '2019-04-11 10:08:51'),
(3, 'فتة', 500, 'تعدّ فتة الحمّص من الأكلات الشعبية والتي تقدم غالباً على وجبات الفطور أوالعشا وخاصة بشهر رمضان، وتقدم فتة الحمّص في مطاعم بيع الحمّص والفول والفلافل\r\n\r\n', 1, '2019-04-11 10:11:59'),
(4, 'الكبة', 1000, 'الكبّة طبق يرجع في أصله لبلاد الشام وتحديداً سوريا ولبنان وبعض البلدان المُحيطة بهما، ويتكوّن طبق الكبة من أقراص مُختلفة الأشكال، تُحشى باللحم والصنوبر وبعض الأصناف الأخرى، وذلك بناءً على نوع الكبة.', 3, '2019-04-11 10:17:36'),
(5, 'كبسة', 1500, 'تعدّ كبسة الدجاج من الأطباق المشهورة في دول الخليج العربي خاصّةً في المملكة العربية السعودية؛ حيث تعدّ الطبق الشعبي الرئيسي فيها، غالباً ما يتمّ تقديمها في المناسبات العامّة والخاصة، كما أنها مشهورة في الأردن وسوريا. تتكوّن الكبسة من الدّجاج والأرز (الشعلان أو البسمتي) ذي الحبّة الطويلة بالإضافة إلى البهارات، وتُقدّم مع السّلطة والّلبن', 3, '2019-04-11 10:21:09'),
(6, 'مشاوي', 5000, 'تعتبر المشاوي إحدى الأكلات التي يفضلها الكبار والصغار طوال الوقت وفي كل المواسم، وهي عبارةٌ عن لحمٍ ودجاجٍ مبهرٍ ومتبلٍ مسبقاً ومشوي على الفحم باستخدام الكوانين أو الشوايات. ترتبط المشاوي بأجواء العائلة والجمعات والأصدقاء وأجواء البهجة والفرح، وترافقها العديد من أطباق المقبلات كالحمص والسلطات والشطة وغيرها،\r\n', 3, '2019-04-11 10:24:59'),
(7, 'نابلسية', 500, 'يستمتع الجميع بتناول أطباق الحلويات الشهية واللذيذة، وكل بلد ومدينة يتميز ببعض أطباق الحلويات الخاصة به والمتعارف عليها بين سكانه، والكنافة هي أحد أشهر أنواع الحلويات في بلاد الشام وهي فلسطينية المنشأ', 2, '2019-04-11 10:24:59'),
(8, 'كنافة', 500, 'تعدّ الكنافة من الحلويّات المُحبّبة والمنتشرة بشكل كبير في الوطن العربي، وتمتاز بطعمها الشرقيّ الأصيل؛ حيث تُقدّم في الأفراح والمناسبات وفي شهر رمضان المبارك، وهي نوعان: الكنافة الخشنة، والكنافة الناعمة. أصبحت الكنافة حديثاً تُحضّر بطرقٍ مبتكرة ونكهات مختلفة مثل: الكنافة بالكريمة، والقشطة، والمنجا. وسنتطرّق في هذا المقال إلى طرق عديدة لتحضير هذا الطبق الشرقي الأكثر شهرةً في العالم', 2, '2019-04-11 10:24:59'),
(9, 'تمر هندي', 200, 'التمر الهندي هو اللب الموجود في ثمرة قرنية لنوع من النباتات الشجرية دائمة الخضرة وهو سريع النمو، وشجرته يصل ارتفاعها إلى ثلاثة أمتار تقريباً، أما أزهاره فعنقودية ذات لون أصفر، وخشبها صلب يميل إلى الأحمر، وثمار الشجرة تكون على شكل قرون، ويستخدم منها اللب اللحمي وطعمه حامض يغلف بذورها، وبعد جمع الثمار يتم إزالة القشور الصلبة، ثم يتم عجنها فتصبح كتلاً سمراء، ويتم خلطها بالسكر لحفظها ومنع فسادها، وللتمر الهندي عدّة أسماء مثل العرديب، والحومر، والحمر', 4, '2019-04-14 09:27:37'),
(10, 'عرق سوس', 200, 'تنتشر زراعة شجرة السوس في سوريا، ومصر، والكثير من دول آسيا الوسطى، وفي أوروبا. ويأتي اسم عرق السوس نسبة إلى جذور عرق السوس أي \"أصل السوس\"، وهو عبارة عن أعشاب تؤخذ من جذور هذه النبتة لصنع شراب حلو المذاق وحلاوته أكثر من حلاوة السكر، ويمكن تناوله على شكل حلويات أيضاً وله رغوة تشبه الصابون عند صبه', 4, '2019-04-14 09:27:37'),
(11, 'فول', 300, 'يعدّ الفول أكلةً شعبيّةً منتشرةً في البلدان العربية، وهو طبق أساسي في الثقافة المصرية، يُقدّم كجزء أساسي من وجبة الإفطار، وتختلف كل دولة عن الأخرى بطريقة تحضيره، وتختص المطاعم بتقديمه إلى جانب الحمّص صباحاً.', 5, '2019-04-14 09:27:37'),
(12, 'الفلافل', 30, 'تعدّ الفلافل من أشهر المأكولات في الوطن العربي بأكمله دون استثناء ويشتهر الفلافل في الأردن، وسوريا، وفلسطين، ودول الخليج العربيّ، ويحمل نفس هذا الاسم ما عدا جمهورية مصر العربية فهو يحمل اسم الطعمية ومكوّناته مختلفة نوعاً ما من المكونات المتعارف عليها لدينا فهم يستخدمون منقوع الفول الأبيض (أي الفول المجروش) بديلاً عن الحمص، ويحتوي الفلافل على العديد من العناصر الغذائية المفيدة للجسم منها الكربوهيدرات، والنشويات، ووجبة الفلافل تعتبر وجبة كاملة وتقدّم ساخنة مع الخضار الطازجة مثل الخيار والبندورة والفلفل الأخضر الحلو', 5, '2019-04-14 09:27:37'),
(13, 'برك', 100, 'الشيش برك من الأكلات اللذيذة والمفيدة؛ حيث يدخل في تحضير هذه الأكلة الدقيق واللبن واللحمة؛ وكلها مواد غذائيّة تحتوي على عناصر مهمة. يمكن إضافة الكثير من المكوّنات للشيش برك وذلك حسب رغبة السيّدة', 6, '2019-04-14 09:41:10'),
(14, 'سلطة', 250, 'تختلف أنواع السلطات باختلاف المواد المكوّنة لها، وتختلف أيضاً باختلاف أصولها؛ فالسلطة العربية تختلف عن اليونانية، كما أن السلطات الإيطالية لا تتشابه والسلطات الأمريكية. هي طبق جانبيّ مفضّل يُقدّم إلى جانب جميع الأطباق الرئيسة\r\n', 6, '2019-04-14 09:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `meal_type`
--

CREATE TABLE `meal_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `added_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meal_type`
--

INSERT INTO `meal_type` (`id`, `name`, `image`, `added_datetime`) VALUES
(1, 'فطور', 'breakfast.svg', '2019-04-02 10:17:18'),
(2, 'حلوى', 'dessert.svg', '2019-04-07 09:39:19'),
(3, 'غداء', 'dinner.svg', '2019-04-07 09:39:36'),
(4, 'مشروبات', 'drinks.svg', '2019-04-07 09:39:58'),
(5, 'عشاء', 'lunch.svg', '2019-04-07 09:40:58'),
(6, 'سناك', 'snacks.svg', '2019-04-07 09:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `added_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

-- تذكر تعديل هذه القيم

INSERT INTO `users` (`id`, `mobile`, `password`, `added_datetime`) VALUES
(1, 936737658, 'e10adc3949ba59abbe56e057f20f883e', '2019-04-30 12:18:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_type`
--
ALTER TABLE `meal_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `meal_type`
--
ALTER TABLE `meal_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
