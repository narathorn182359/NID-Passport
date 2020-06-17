-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 01:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nid_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE `advertise` (
  `id_ad` bigint(20) UNSIGNED NOT NULL,
  `type_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `explain` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `count_read` int(11) DEFAULT NULL,
  `mc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`id_ad`, `type_id`, `img_ad`, `subject`, `explain`, `active`, `count_read`, `mc`, `created_at`, `updated_at`) VALUES
(2, '7', 'น้ำตาลส่งผลกระทบต่อสมองอย่างไร.jpg', 'น้ำตาลส่งผลกระทบต่อสมองอย่างไร ?', NULL, '1', NULL, NULL, NULL, NULL),
(4, '8', 'ทำไมเราจึงฝัน.jpg', 'ทำไมเราจึงฝัน', NULL, '1', NULL, '3', NULL, NULL),
(6, '8', 'ทำไมแมวชอบทำอะไรแปลกๆ.jpg', 'ทำไมแมวถึงชอบทำอะไรแปลก ๆ', NULL, '1', NULL, '3', NULL, NULL),
(8, '8', 'ปัญหาการสื่อสารเกิดขึ้นได้อย่างไร.jpg', 'ปัญหาการสื่อสารเกิดขึ้นได้อย่างไร (และเราจะหลีกเลี่ยงได้อย่างไร)', NULL, '1', NULL, '3', NULL, NULL),
(10, '7', 'โรคอ้วนคืออะไร.jpg', 'โรคอ้วนคืออะไร', NULL, '1', NULL, NULL, NULL, NULL),
(12, '7', 'ตับมีหน้าที่อะไรบ้าง.jpg', 'ตับมีหน้าที่อะไรบ้าง?', NULL, '1', NULL, NULL, NULL, NULL),
(14, '7', 'จะเกิดอะไรขึ้นถ้าคุณไม่ดื่มน้ำ.jpg', 'จะเกิดอะไรขึ้นถ้าคุณไม่ดื่มน้ำ', NULL, '1', NULL, NULL, NULL, NULL),
(16, '8', 'เคล็ดลับ5ประการ.jpg', 'เคล็ดลับ 5 ประการในการพัฒนาการคิดวิเคราะห์', NULL, '1', NULL, NULL, NULL, NULL),
(18, '7', 'วิธีบริหารดวงตาให้กลับมาชัดแจ๋ว.jpg', '5 วิธีบริหารดวงตาให้กลับมาชัดแจ๋ว', NULL, '1', NULL, NULL, NULL, NULL),
(20, '7', '4วิธีดูแลปอดให้ปลอดภัย.jpg', '4 วิธีดูแล “ปอด” ให้ปลอดภัย อยู่คู่กับร่างกายไปนาน ๆ', NULL, '1', NULL, NULL, NULL, NULL),
(22, '7', 'มหัศจรรย์ของปอด.jpg', 'มหัศจรรย์ของปอด', NULL, '1', NULL, NULL, NULL, NULL),
(24, '7', 'ไตของคุณทำงานอย่างไร.jpg', 'ไตของคุณทำงานอย่างไร', NULL, '1', NULL, NULL, NULL, NULL),
(26, '2', 'คู่มือการใช้งาน.jpg', 'คู่มือการใช้งาน NID', NULL, '1', NULL, NULL, NULL, NULL),
(28, '4', 'e-learning.jpg', 'Future Skills ทักษะที่จำเป็นในโลกอนาคต', NULL, '1', NULL, NULL, NULL, NULL),
(29, '8', 'covid.jpg', 'Covid 19', NULL, '1', NULL, '3', NULL, NULL),
(31, '8', 'social-distance.jpg', 'Social distancing', NULL, '1', NULL, '3', NULL, NULL),
(33, '8', 'Agile.jpg', 'Agile', NULL, '1', NULL, '3', NULL, NULL),
(34, '8', 'people-manager.jpg', 'People manager', NULL, '1', NULL, '3', NULL, NULL),
(36, '8', 'project-management-fandamental.jpg', 'Project management', NULL, '1', NULL, '3', NULL, NULL),
(38, '8', 'sale-force.jpg', 'Sale force', NULL, '1', NULL, '2', NULL, NULL),
(40, '1', '20200608_Cover_กู้บ้าน-ธอส.jpg', 'HAPPY HOME กู้บ้านกับ ธอส.', NULL, '1', NULL, NULL, NULL, NULL),
(42, '3', 'Cover_5วิธีสร้างความสัมพันธ์ในที่ทำงาน.jpg', '5 วิธีสร้างความสัมพันธ์ในที่ทำงาน', NULL, '1', NULL, NULL, NULL, NULL),
(43, '2', '20200608_Cover_ISO.jpg', 'มาทำความรู้จัก ISO14001:2015 กันเถอะ', NULL, '1', NULL, NULL, NULL, NULL),
(44, '2', '20200608_Cover_5วิธีผ่อนคลายความเครียด.jpg', '5 วิธีผ่อนคลายความเครียดหลังเลิกงาน', NULL, '1', NULL, NULL, NULL, NULL),
(45, '2', '20200608_Covid_5คาถาโควิท-1.jpg', '5 คาถากันภัยทางการเงิน แคล้วคลาดสู้วิกฤติ โควิด-19', NULL, '1', NULL, NULL, NULL, NULL),
(46, '2', '20200609_Cover_SSF-RMF.jpg', 'SSF และ RMF ใหม่! เป็นอย่างไร', NULL, '1', NULL, NULL, NULL, NULL),
(47, '2', '20200609_Cover_Covid-stand.jpg', 'การแพร่ระบาดของโควิด-19 (9 มิ.ย. 63)', NULL, '1', NULL, NULL, NULL, NULL),
(48, '4', 'Cover_Novi.jpg', 'Facebook รีแบรนด์วอลเล็ตใช้กับลิบราเป็น ‘Novi’ ย้ำเป้าหมาย โอนรับเงินง่ายเหมือนแชตหากันยังไม่เปลี่ยน', NULL, '1', NULL, NULL, NULL, NULL),
(49, '4', '97294587_2925772154175084_8582840933819613184_n.png', 'Facebook เปิดตัว Facebook Shops สร้างร้านค้าออนไลน์ทั้งในอินสตราแกรมและเฟซบุ๊ก', NULL, '1', NULL, NULL, NULL, NULL),
(50, '3', '20200609_Cover_ฉันในอดีตVS.ฉันในอนาคต.jpg', 'ฉันในอดีต VS. ฉันในอนาคต', NULL, '1', NULL, NULL, NULL, NULL),
(51, '2', '20200609_Cover_ต่อใบขับขี่.jpg', 'วิธีอบรมต่ออายุใบขับขี่รถยนต์', NULL, '1', NULL, NULL, NULL, NULL),
(52, '8', '4-เคล็ดลับความสำเร็จของ-Amazon-ที่ทำให้เจฟฟ์-เบโซส์-รวยที่สุดในโลก.jpg', '4 เคล็ดลับความสำเร็จของ Amazon ที่ทำให้เจฟฟ์ เบโซส์ รวยที่สุดในโลก', NULL, '1', NULL, NULL, NULL, NULL),
(53, '8', '5-ข้อคิดในการใช้ชีวิตที่คุณครูแจ็ค-หม่า-อยากสอนนักเรียนมากที่สุด.jpg', '5 ข้อคิดในการใช้ชีวิตที่คุณครูแจ็ค หม่า อยากสอนนักเรียนมากที่สุด.mp4', NULL, '1', NULL, NULL, NULL, NULL),
(54, '8', '6-วิธีบริหารเวลาของบารัค-โอบามา-มนุษย์ที่เคยยุ่งที่สุดในโลก.jpg', '6 วิธีบริหารเวลาของบารัค โอบามา มนุษย์ที่เคยยุ่งที่สุดในโลก.mp4', NULL, '1', NULL, NULL, NULL, NULL),
(55, '8', 'Warren-Buffett-กับ-10-สิ่งที่เราควรลงทุนมากกว่าเงิน.jpg', 'Warren Buffett กับ 10 สิ่งที่เราควรลงทุนมากกว่าเงิน.mp4', NULL, '1', NULL, NULL, NULL, NULL),
(56, '8', 'จงตั้งเป้าหมายจากโอกาส-อย่าตั้งเป้าหมายจากปัญหา.jpg', 'จงตั้งเป้าหมายจากโอกาส’ อย่าตั้งเป้าหมายจากปัญหา.mp4', NULL, '1', NULL, NULL, NULL, NULL),
(57, '8', 'ด้านมืดของ-Elon-Musk-กับ-4-สิ่งที่ไม่ควรเอาเยี่ยงอย่าง.jpg', 'ด้านมืดของ Elon Musk กับ 4 สิ่งที่ไม่ควรเอาเยี่ยงอย่าง', NULL, '1', NULL, NULL, NULL, NULL),
(58, '8', 'เทคนิคบริหารเวลาแบบเข้ากระท่อมของ-บิล-เกตส์.jpg', 'เทคนิคบริหารเวลาแบบเข้ากระท่อมของ บิล เกตส์', NULL, '1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `advertise_heade`
--

CREATE TABLE `advertise_heade` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_adver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_thai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_adver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at_adver` datetime DEFAULT NULL,
  `updated_at_adver` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertise_heade`
--

INSERT INTO `advertise_heade` (`id`, `img`, `name_adver`, `name_thai`, `active_adver`, `created_at_adver`, `updated_at_adver`) VALUES
(1, 'image-menu_1.svg', 'NGG Employee privilege', 'สิทธิประโยชน์ของพนักงาน NGG', '1', NULL, NULL),
(2, 'image-menu_2.svg', 'NGG New & Activities', 'ข่าวสารและกิจกรรมต่าง ๆ', '1', NULL, NULL),
(3, 'image-menu_3.svg', 'Human Resources', 'ฝ่ายบุคคล', '1', NULL, NULL),
(4, 'image-menu_4.svg', 'Innovation', 'นวัตกรรมและเทคโนโลยี', '1', NULL, NULL),
(5, 'image-menu_5.svg', 'Customer Experience Hub', 'แชร์ประสบการณ์ดี ๆ ของลูกค้า', '1', NULL, NULL),
(7, 'image-menu_6.svg', 'Health Care', 'เราห่วงใยสุขภาพคุณ', '1', NULL, NULL),
(8, 'image-menu_7.svg', 'Micro Learning', 'เปิดประตูความรู้', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alert_daily`
--

CREATE TABLE `alert_daily` (
  `id_alert` bigint(20) UNSIGNED NOT NULL,
  `code_staff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feeling` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_daily`
--

INSERT INTO `alert_daily` (`id_alert`, `code_staff`, `feeling`, `created_at`, `updated_at`) VALUES
(1, '94018', 'ฉันรู้สึกเฉยๆ', '2020-06-16 17:00:00', NULL),
(2, '94013', 'ฉันรู้สึกเฉยๆ', '2020-06-16 17:00:00', NULL),
(3, '51248', 'ฉันรู้สึกเฉยๆ', '2020-06-16 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_company_eng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_company_th` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_family`
--

CREATE TABLE `job_family` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_job_family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lavel`
--

CREATE TABLE `lavel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_lavel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_master`
--

INSERT INTO `menu_master` (`id`, `icon`, `name_menu`, `url_menu`, `active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'จัดการพนักงาน', '/settingstaff', '1', NULL, NULL),
(2, NULL, 'จัดการ KPI', '/settingstaff', '1', NULL, NULL),
(3, NULL, 'จัดการสิทธิ์', '/settingrole', '1', NULL, NULL),
(4, NULL, 'จัดการข่าว', '/settinnew', '1', NULL, NULL),
(7, 'menu-ham_learning.svg', 'e-learning', '/e-learning', '1', NULL, NULL),
(11, NULL, 'KM360', '/km360', '1', NULL, NULL),
(12, NULL, 'คลังรูปภาพ', '/img', '1', NULL, NULL),
(13, NULL, 'รายการข่าว', '/newall', '1', NULL, NULL),
(14, NULL, 'หมวดความรู้', '/kmcatagoty', '1', NULL, NULL),
(15, NULL, 'จัดการพนักงาน', '/setuser', '1', NULL, NULL),
(16, NULL, 'ห้องเเชท', '/index_chat', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2020_01_25_031408_create_users_detail_table', 1),
(9, '2020_01_25_031656_create_advertise_table', 1),
(10, '2020_01_25_032801_create_advertise_heade_table', 1),
(11, '2020_01_25_035945_create_user_role_table', 1),
(12, '2020_01_25_040547_create_position_table', 1),
(13, '2020_01_25_040602_create_department_table', 1),
(14, '2020_01_25_042201_create_company_table', 1),
(15, '2020_01_25_042347_create_menu_master_table', 1),
(16, '2020_01_27_065456_create_brand_table', 1),
(17, '2020_01_27_065557_create_job_family_table', 1),
(18, '2020_01_27_075732_create_lavel_table', 1),
(19, '2020_02_13_072432_create_users_group_table', 1),
(20, '2020_02_13_073217_create_group_table', 1),
(21, '2020_02_17_033844_create_ngg_target_daily_sale_table', 1),
(22, '2020_02_17_034215_create_ngg_banner_table', 1),
(23, '2020_02_17_035447_create_ngg_img_group_advertise_table', 1),
(24, '2020_02_18_024722_create_ngg_branchname_table', 1),
(25, '2020_02_18_025639_create_ngg_role_sales_shop_table', 1),
(26, '2020_02_18_025741_create_ngg_target_single_sales_table', 1),
(27, '2020_02_18_025834_create_ngg_ngg_sales_api_table', 1),
(28, '2020_02_25_065833_create_ngg__real_time_in_out_table', 1),
(29, '2020_02_27_032115_create_ngg_km_category_table', 1),
(30, '2020_02_27_032405_create_ngg_km_category_detail_table', 1),
(31, '2020_02_27_032603_create_ngg_km_img_category_detail_table', 1),
(32, '2020_02_29_160709_create_ngg_iform_table', 1),
(33, '2020_03_23_135642_create_ngg_km_file_table', 1),
(34, '2020_03_23_135654_create_ngg_km_separate_table', 1),
(35, '2020_03_23_135719_create_ngg_list_benefits_table', 1),
(36, '2020_03_23_135738_create_ngg_list_mc_table', 1),
(37, '2020_06_16_155719_create_alert_daily_table', 1),
(38, '2020_06_16_160227_create_ngg_benefits_table', 1),
(39, '2020_06_16_160538_create_ngg_breakpoint_users_detail_table', 1),
(40, '2020_06_16_161006_create_ngg_chat_table', 1),
(41, '2020_06_16_161033_create_ngg_chat_group_table', 1),
(42, '2020_06_16_161056_create_ngg_chat_group_user_table', 1),
(43, '2020_06_16_161127_create_ngg_history_comment_table', 1),
(44, '2020_06_16_161243_create_ngg_key_notification_table', 1),
(45, '2020_06_16_161354_create_ngg_noti_chat_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ngg_banner`
--

CREATE TABLE `ngg_banner` (
  `id_banner` bigint(20) UNSIGNED NOT NULL,
  `advertise_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at_banner` datetime DEFAULT NULL,
  `updated_at_banner` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ngg_banner`
--

INSERT INTO `ngg_banner` (`id_banner`, `advertise_id`, `img_banner`, `active_banner`, `created_at_banner`, `updated_at_banner`) VALUES
(2, '2', 'น้ำตาลส่งผลกระทบต่อสมองอย่างไร.jpg', '0', NULL, NULL),
(3, '4', 'ทำไมเราจึงฝัน.jpg', '0', NULL, NULL),
(4, '5', 'ทำไมแมวชอบทำอะไรแปลกๆ.jpg', '0', NULL, NULL),
(5, '8', 'ปัญหาการสื่อสารเกิดขึ้นได้อย่างไร.jpg', '0', NULL, NULL),
(6, '10', 'โรคอ้วนคืออะไร.jpg', '0', NULL, NULL),
(7, '12', 'ตับมีหน้าที่อะไรบ้าง.jpg', '0', NULL, NULL),
(8, '14', 'จะเกิดอะไรขึ้นถ้าคุณไม่ดื่มน้ำ.jpg', '0', NULL, NULL),
(9, '16', 'เคล็ดลับ5ประการ.jpg', '0', NULL, NULL),
(10, '18', 'วิธีบริหารดวงตาให้กลับมาชัดแจ๋ว-banner.jpg', '0', NULL, NULL),
(11, '20', '4วิธีดูแลปอดให้ปลอดภัย.jpg', '0', NULL, NULL),
(12, '22', 'มหัศจรรย์ของปอด.jpg', '0', NULL, NULL),
(13, '24', 'ไตของคุณทำงานอย่างไร.jpg', '0', NULL, NULL),
(14, '26', 'banner-1.jpg', '1', NULL, NULL),
(15, '28', 'banner-2.jpg', '1', NULL, NULL),
(16, '29', 'covid.jpg', '0', NULL, NULL),
(17, '31', 'social-distance.jpg', '0', NULL, NULL),
(18, '33', 'Agile.jpg', '0', NULL, NULL),
(19, '34', 'people-manager.jpg', '0', NULL, NULL),
(20, '36', 'project-management-fandamental.jpg', '0', NULL, NULL),
(21, '38', 'sale-force.jpg', '0', NULL, NULL),
(23, '40', '20200608_Banner_กู้บ้าน-ธอส.jpg', '1', NULL, NULL),
(25, '42', 'Cover_5วิธีสร้างความสัมพันธ์ในที่ทำงาน.jpg', '0', NULL, NULL),
(26, '43', '20200608_Cover_ISO.jpg', '0', NULL, NULL),
(27, '44', '20200608_Cover_5วิธีผ่อนคลายความเครียด.jpg', '0', NULL, NULL),
(28, '45', '20200608_Covid_5คาถาโควิท-2.jpg', '0', NULL, NULL),
(29, '46', '20200609_Cover_SSF-RMF.jpg', '0', NULL, NULL),
(30, '47', '20200609_Baner_Covid-stand.jpg', '0', NULL, NULL),
(31, '48', 'Cover_Novi.jpg', '0', NULL, NULL),
(32, '49', '20200609_Cover_Facebook Shops.jpg', '0', NULL, NULL),
(33, '50', '20200609_Cover_ฉันในอดีตVS.ฉันในอนาคต.jpg', '0', NULL, NULL),
(34, '51', '20200609_Banner_ต่อใบขับขี่.jpg', '1', NULL, NULL),
(35, '52', '4-เคล็ดลับความสำเร็จของ-Amazon-ที่ทำให้เจฟฟ์-เบโซส์-รวยที่สุดในโลก.jpg', '0', NULL, NULL),
(36, '53', '5-ข้อคิดในการใช้ชีวิตที่คุณครูแจ็ค-หม่า-อยากสอนนักเรียนมากที่สุด.jpg', '0', NULL, NULL),
(37, '54', '6-วิธีบริหารเวลาของบารัค-โอบามา-มนุษย์ที่เคยยุ่งที่สุดในโลก.jpg', '0', NULL, NULL),
(38, '55', 'Warren-Buffett-กับ-10-สิ่งที่เราควรลงทุนมากกว่าเงิน.jpg', '0', NULL, NULL),
(39, '56', 'จงตั้งเป้าหมายจากโอกาส-อย่าตั้งเป้าหมายจากปัญหา.jpg', '0', NULL, NULL),
(40, '57', 'ด้านมืดของ-Elon-Musk-กับ-4-สิ่งที่ไม่ควรเอาเยี่ยงอย่าง.jpg', '0', NULL, NULL),
(41, '58', 'เทคนิคบริหารเวลาแบบเข้ากระท่อมของ-บิล-เกตส์.jpg', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ngg_benefits`
--

CREATE TABLE `ngg_benefits` (
  `id_be` bigint(20) UNSIGNED NOT NULL,
  `id_list_be` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_staff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `be_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `be_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `be_map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_branchname`
--

CREATE TABLE `ngg_branchname` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_branchname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_breakpoint_users_detail`
--

CREATE TABLE `ngg_breakpoint_users_detail` (
  `Code_Staff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Card_Staff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name_Thai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name_Eng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Faction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Workplace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Working_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateofBirth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HireDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IDCardNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FamilyStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JGStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Yearsofservice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TelephoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Current_Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Resigned_Date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Vacation_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sick_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Business_leave_necessary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Maternity_leave_paid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Maternity_leave_not_paid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ordination_leaven` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Marriage_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Accident_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Military_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sterilization_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time_offset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Leave_without_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sick_leave_not_receiving_wages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cremation_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Leave_instead_of_holidays` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Leave_to_study` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Take_a_break` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Absence_from_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.svg',
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `Company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_chat`
--

CREATE TABLE `ngg_chat` (
  `owner_room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_partner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coderoom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ngg_chat`
--

INSERT INTO `ngg_chat` (`owner_room`, `chat_partner`, `msg`, `coderoom`, `createdAt`) VALUES
('94013', '94018', '[{\"user\":\"\\u0e02\\u0e49\\u0e2d\\u0e04\\u0e27\\u0e32\\u0e21\\u0e08\\u0e32\\u0e01\\u0e23\\u0e30\\u0e1a\\u0e1a\",\"owner_room\":\"null\",\"chat_partner\":\"null\",\"msg\":\"\\u0e22\\u0e34\\u0e19\\u0e14\\u0e35\\u0e15\\u0e49\\u0e2d\\u0e19\\u0e23\\u0e31\\u0e1a\\u0e04\\u0e48\\u0e30 \\u0e42\\u0e1b\\u0e23\\u0e14\\u0e43\\u0e0a\\u0e49\\u0e04\\u0e33\\u0e2a\\u0e38\\u0e20\\u0e32\\u0e1e\",\"img\":\"user.svg\",\"createdAt\":\"2020-06-17 18:44:36\"},{\"msg\":\"kl\",\"img\":\"94018.jpg\",\"user\":\"94018\",\"owner_room\":\"94018\",\"chat_partner\":\"94013\",\"coderoom\":188031,\"createdAt\":\"2020-06-17T11:44:38.735Z\"},{\"msg\":\"klkl\",\"img\":\"94013.jpg\",\"user\":\"94013\",\"owner_room\":\"94013\",\"chat_partner\":\"94018\",\"coderoom\":188031,\"createdAt\":\"2020-06-17T11:45:50.524Z\"},{\"msg\":\"fgfg\",\"img\":\"94018.jpg\",\"user\":\"94018\",\"owner_room\":\"94018\",\"chat_partner\":\"94013\",\"coderoom\":188031,\"createdAt\":\"2020-06-17T11:47:11.836Z\"},{\"msg\":\"dfg\",\"img\":\"94013.jpg\",\"user\":\"94013\",\"owner_room\":\"94013\",\"chat_partner\":\"94018\",\"coderoom\":188031,\"createdAt\":\"2020-06-17T11:47:18.382Z\"},{\"msg\":\"fgfg\",\"img\":\"94013.jpg\",\"user\":\"94013\",\"owner_room\":\"94013\",\"chat_partner\":\"94018\",\"coderoom\":188031,\"createdAt\":\"2020-06-17T11:47:30.133Z\"}]', '188031', '2020-06-17T11:47:29.960Z');

-- --------------------------------------------------------

--
-- Table structure for table `ngg_chat_group`
--

CREATE TABLE `ngg_chat_group` (
  `code_room` bigint(10) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_room` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ngg_chat_group`
--

INSERT INTO `ngg_chat_group` (`code_room`, `img`, `name_room`, `msg`, `createdAt`) VALUES
(4, 'default.png', 'It', '[{\"user\":\"\\u0e02\\u0e49\\u0e2d\\u0e04\\u0e27\\u0e32\\u0e21\\u0e08\\u0e32\\u0e01\\u0e23\\u0e30\\u0e1a\\u0e1a\",\"owner_room\":\"null\",\"chat_partner\":\"null\",\"msg\":\"\\u0e22\\u0e34\\u0e19\\u0e14\\u0e35\\u0e15\\u0e49\\u0e2d\\u0e19\\u0e23\\u0e31\\u0e1a\\u0e04\\u0e48\\u0e30 \\u0e42\\u0e1b\\u0e23\\u0e14\\u0e43\\u0e0a\\u0e49\\u0e04\\u0e33\\u0e2a\\u0e38\\u0e20\\u0e32\\u0e1e\",\"img\":\"user.svg\",\"createdAt\":\"2020-06-17 14:46:25\"},{\"msg\":\"44\",\"img\":\"94013.jpg\",\"user\":null,\"chat_partner\":\"94013\",\"coderoom\":null,\"coderoomgroup\":\"4\",\"name_thai\":\"\\u0e19\\u0e32\\u0e22\\u0e20\\u0e32\\u0e2a\\u0e01\\u0e23 \\u0e27\\u0e23\\u0e01\\u0e34\\u0e08\\u0e1e\\u0e39\\u0e19\\u0e1c\\u0e25\",\"createdAt\":\"2020-06-17T11:15:58.574Z\"},{\"msg\":\"777\",\"img\":\"94013.jpg\",\"user\":null,\"chat_partner\":\"94013\",\"coderoom\":null,\"coderoomgroup\":\"4\",\"name_thai\":\"\\u0e19\\u0e32\\u0e22\\u0e20\\u0e32\\u0e2a\\u0e01\\u0e23 \\u0e27\\u0e23\\u0e01\\u0e34\\u0e08\\u0e1e\\u0e39\\u0e19\\u0e1c\\u0e25\",\"createdAt\":\"2020-06-17T11:16:05.189Z\"},{\"msg\":\";;;\",\"img\":\"94018.jpg\",\"user\":null,\"chat_partner\":\"94018\",\"coderoom\":null,\"coderoomgroup\":\"4\",\"name_thai\":\"\\u0e19\\u0e32\\u0e22\\u0e19\\u0e23\\u0e32\\u0e18\\u0e23 \\u0e02\\u0e49\\u0e2d\\u0e07\\u0e2b\\u0e25\\u0e34\\u0e21\",\"createdAt\":\"2020-06-17T11:16:11.661Z\"}]', '2020-06-17 18:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `ngg_chat_group_user`
--

CREATE TABLE `ngg_chat_group_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_staff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_room_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_confirm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_out_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ngg_chat_group_user`
--

INSERT INTO `ngg_chat_group_user` (`id`, `code_staff`, `code_room_id`, `status_confirm`, `status_out_group`, `createdAt`) VALUES
(23, '94018', '4', '1', '0', '2020-06-17 14:46:25'),
(36, '94013', '4', '1', '0', '2020-06-17 18:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `ngg_history_comment`
--

CREATE TABLE `ngg_history_comment` (
  `id_com` bigint(20) UNSIGNED NOT NULL,
  `staff_com` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_com` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_com` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_iform`
--

CREATE TABLE `ngg_iform` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_img_group_advertise`
--

CREATE TABLE `ngg_img_group_advertise` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advertise_id_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_key_notification`
--

CREATE TABLE `ngg_key_notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_staff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_km_category`
--

CREATE TABLE `ngg_km_category` (
  `id_km_cat` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_category_eng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_category_thai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at_cat` timestamp NULL DEFAULT NULL,
  `updated_at_cat` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ngg_km_category`
--

INSERT INTO `ngg_km_category` (`id_km_cat`, `img`, `name_category_eng`, `name_category_thai`, `created_at_cat`, `updated_at_cat`) VALUES
(2, 'SMART3.jpg', 'SMART3 & COMPETENCY', 'ค่านิยมหลักและสมรรถนะองค์กร', NULL, NULL),
(3, 'Human-resource.jpg', 'Human resource', 'ฝ่ายทรัพยากรบุคคล', NULL, NULL),
(4, 'Career.jpg', 'Career development center', 'พัฒนาบุคลากร', NULL, NULL),
(5, 'Customer.jpg', 'Customer service', 'การบริการลูกค้า', NULL, NULL),
(6, 'Retail.jpg', 'Retail Operation', 'การจัดการหน้าร้าน', NULL, NULL),
(7, 'Financial.jpg', 'Financial & Accounting', 'การเงินและการบัญชี', NULL, NULL),
(8, 'Procurement.jpg', 'Procurement', 'งานเอกสาร', NULL, NULL),
(9, 'Information.jpg', 'Information technology', 'เทคโนโลยีสารสนเทศ', NULL, NULL),
(10, 'Internal.jpg', 'Internal audit', 'ตรวลสอบภายใน', NULL, NULL),
(11, 'Legel.jpg', 'Legel', 'กฏหมาย', NULL, NULL),
(12, 'Content.jpg', 'Content & medie', 'เนิ้อหาสื่อ', NULL, NULL),
(13, 'Product.jpg', 'Product knowledge', 'ความรู้เรื่องสินค้า', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ngg_km_category_detail`
--

CREATE TABLE `ngg_km_category_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_km_cat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_important` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_flie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_separate_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_km_file`
--

CREATE TABLE `ngg_km_file` (
  `id_file` bigint(20) UNSIGNED NOT NULL,
  `km_file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cate_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_km_img_category_detail`
--

CREATE TABLE `ngg_km_img_category_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_km_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_name_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_km_separate`
--

CREATE TABLE `ngg_km_separate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `km_separat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_libary_img`
--

CREATE TABLE `ngg_libary_img` (
  `id_img` bigint(20) NOT NULL,
  `name_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_part` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_list_benefits`
--

CREATE TABLE `ngg_list_benefits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_benefits` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_list_mc`
--

CREATE TABLE `ngg_list_mc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_mc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ngg_list_mc`
--

INSERT INTO `ngg_list_mc` (`id`, `subject`, `img_mc`, `id_ad`, `created_at`, `updated_at`) VALUES
(1, 'ความรู้ทั่วไป', 'template.jpg', '8', NULL, NULL),
(2, 'ความรู้ในการทำงาน', 'unnamed.jpg', '8', NULL, NULL),
(3, 'วิทยุ เข้าใจง่ายไม่ตกเทรนด์', 'podcasts.jpg', '8', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ngg_noti_chat`
--

CREATE TABLE `ngg_noti_chat` (
  `codestaff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(10) DEFAULT 0,
  `coderoom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ngg_noti_chat`
--

INSERT INTO `ngg_noti_chat` (`codestaff`, `count`, `coderoom`) VALUES
('94013', 0, '188031'),
('94018', 0, '188031');

-- --------------------------------------------------------

--
-- Table structure for table `ngg_role_sales_shop`
--

CREATE TABLE `ngg_role_sales_shop` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branchname_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_sales_api`
--

CREATE TABLE `ngg_sales_api` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `BRANCHNAME` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `M_NETAMOUNT_AFTER_VAT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SALEPERSONCODE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SALEPERSONNAME` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATEBYNAME` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CREATED_AT_A` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_target_daily_sale`
--

CREATE TABLE `ngg_target_daily_sale` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_branchname_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_degre_sell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg_target_single_sales`
--

CREATE TABLE `ngg_target_single_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_branchname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_single` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_sell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngg__real_time_in_out`
--

CREATE TABLE `ngg__real_time_in_out` (
  `staff_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_i` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0affcf23e0d8bdcf071ada0cf0ee308c20622694b03643a644ba57dd885b5987effe9bea53afb3ac', 354, 6, NULL, '[]', 0, '2020-06-17 07:08:49', '2020-06-17 07:08:49', '2021-06-17 14:08:49'),
('0dca2185e00b89284e9f78014a4a2cb579deb2df5d699c3c375e1a45099d45cfc02e50124940c7e6', 354, 6, NULL, '[]', 0, '2020-06-17 11:42:17', '2020-06-17 11:42:17', '2021-06-17 18:42:17'),
('101ab32651f8fcf04d4b94383778dd6b2dbd438f8bcee1a7ed6ee50ff8642546f94db375ebbc09cb', 61, 6, NULL, '[]', 0, '2020-06-17 06:52:22', '2020-06-17 06:52:22', '2021-06-17 13:52:22'),
('11a63c9a402791ef476d3a90eef4b75d90e6c8ee706456e842ce8ea701340662999cf44b61779463', 354, 6, NULL, '[]', 0, '2020-06-17 07:15:00', '2020-06-17 07:15:00', '2021-06-17 14:15:00'),
('3edd634d34672e4164f02547a75c9e9d400f8e0a00b247b6a12159a3b91a690b7fcd2b3abcd0fd94', 354, 6, NULL, '[]', 0, '2020-06-17 11:46:16', '2020-06-17 11:46:16', '2021-06-17 18:46:16'),
('4aab7083d8a6a302d2b60e14dad43da424c57c6e3b2053ce9ac4f93f678fdb1da2f783f15560bc19', 351, 6, NULL, '[]', 0, '2020-06-17 11:40:19', '2020-06-17 11:40:19', '2021-06-17 18:40:19'),
('5397ac2b38686872d9775eac50b171bbc1073fb1f96b471a1a38c7618c670386bc933c2520539398', 354, 6, NULL, '[]', 0, '2020-06-17 04:10:10', '2020-06-17 04:10:10', '2021-06-17 11:10:10'),
('673400db145679d63eaea2009ab53e775e0d93365421e4253d000eb63390a3da35f884d61d16d3ec', 354, 6, NULL, '[]', 0, '2020-06-17 05:58:57', '2020-06-17 05:58:57', '2021-06-17 12:58:57'),
('6faf07ac7387b8ead28ed06bbf51ca626ed211b6326db88f38ff4f663d9fcbafe19cc32f0a9ed189', 354, 6, NULL, '[]', 0, '2020-06-17 06:51:43', '2020-06-17 06:51:43', '2021-06-17 13:51:43'),
('720311983483a7bc06192bc88e30a0dba387a16e428f395ddbfac756b223cd7da01f5ae8994eb3f4', 351, 6, NULL, '[]', 0, '2020-06-17 07:19:59', '2020-06-17 07:19:59', '2021-06-17 14:19:59'),
('7c3c1969637aa631f6d88d6406a6e5eaa5fa8ca423bd2b618af9375f5a8e984bf2e9e916d6bf8f8a', 351, 6, NULL, '[]', 0, '2020-06-17 11:47:01', '2020-06-17 11:47:01', '2021-06-17 18:47:01'),
('7e1e20dea5c5297ffe09e0d6844e6b85ca79085bc0537fb0f45378ee9ba4680e1f1b0d82bee52bcb', 354, 6, NULL, '[]', 0, '2020-06-17 11:45:19', '2020-06-17 11:45:19', '2021-06-17 18:45:19'),
('9fa14e0f59bb282fa78de002bbefb8e7d404db962b2cee53a6db06644d15aa2529af5b27400646b6', 351, 6, NULL, '[]', 0, '2020-06-17 08:00:00', '2020-06-17 08:00:00', '2021-06-17 15:00:00'),
('a0691b5c5ed405916cf152c58a655c73e51210c8bf5c94606d1522e6b9a816b7d6035f32f279c537', 354, 6, NULL, '[]', 0, '2020-06-17 07:16:05', '2020-06-17 07:16:05', '2021-06-17 14:16:05'),
('aa71d0e4327b79da5d8a1e71e26f08743eb4030a67cc3f1fe5dd09866e35f797ed9f0c4d17b2a0bb', 354, 6, NULL, '[]', 0, '2020-06-17 07:04:29', '2020-06-17 07:04:29', '2021-06-17 14:04:29'),
('cb929b91b300ed3d6d17a0e39dc95f4d35d0049296bf2cd980f6ddef0ea214c587088d78500d38b2', 354, 6, NULL, '[]', 0, '2020-06-17 10:47:54', '2020-06-17 10:47:54', '2021-06-17 17:47:54'),
('cd7f8c481782eb485ee3b6218e1de275f7f596cc37699fa735cbedb74da4cf400aadc37960c0138c', 351, 6, NULL, '[]', 0, '2020-06-17 04:31:57', '2020-06-17 04:31:57', '2021-06-17 11:31:57'),
('e020c0a32947b516376ae99672e1f8e43b83d4eb0a58d3e92f03de5d40a14d392ca5c5156095c69e', 351, 6, NULL, '[]', 0, '2020-06-17 08:04:53', '2020-06-17 08:04:53', '2021-06-17 15:04:53'),
('e674259233cbacd3875259ab7f167e0b3c018ce88269ad6c66fb8cd7b38a0598bfd8726d69965666', 351, 6, NULL, '[]', 0, '2020-06-17 11:45:38', '2020-06-17 11:45:38', '2021-06-17 18:45:38'),
('ee257e633d364e6d0227aa9373a82437a458538cad133e1b421c43b23f99254d0d3e08f52ff0d2c4', 354, 6, NULL, '[]', 0, '2020-06-17 04:10:45', '2020-06-17 04:10:45', '2021-06-17 11:10:45'),
('efceb1a4f5641e10a09e11656ead40444be5d0eddcaec8f23da347f55fb4f8fd68100ddd6fe3d866', 351, 6, NULL, '[]', 0, '2020-06-17 11:15:03', '2020-06-17 11:15:03', '2021-06-17 18:15:03'),
('f29241064a47c8cc0ed4cf4b9115ff33ef81670dc303fc5e368ad172f8f49fbb3e8a58664c39fc49', 354, 6, NULL, '[]', 0, '2020-06-17 04:10:01', '2020-06-17 04:10:01', '2021-06-17 11:10:01'),
('f5ef2c72a1cc9b61204ec766b09c5124bf1c23211e9e2f1286a1699182e1da98d98d7583e4e0aed1', 354, 6, NULL, '[]', 0, '2020-06-17 10:15:00', '2020-06-17 10:15:00', '2021-06-17 17:15:00'),
('f97f0097ea6a132114912e578067394b906dff9bc8558883e53fa687a25b8fcad3e58fdc0bffecde', 354, 6, NULL, '[]', 0, '2020-06-17 06:41:49', '2020-06-17 06:41:49', '2021-06-17 13:41:49'),
('fb824e4744aa5ce15f218a6c5e5c174239538f211c052e4a431771d30958a41e11c9793f09050370', 354, 6, NULL, '[]', 0, '2020-06-17 04:10:09', '2020-06-17 04:10:09', '2021-06-17 11:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(6, NULL, 'client', 'e2qfiHDWym2guNyKuXhehLqB2cQ3N738WEr0JkXB', 'http://localhost', 0, 1, 0, '2020-06-17 04:05:10', '2020-06-17 04:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-16 09:57:58', '2020-06-16 09:57:58'),
(2, 4, '2020-06-17 04:03:46', '2020-06-17 04:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('074f4ea6d998ee2b19719f4a29fbc4689bbf114ed3ba998954a02f71572b12fe2424ef9b7ac66328', 'cb929b91b300ed3d6d17a0e39dc95f4d35d0049296bf2cd980f6ddef0ea214c587088d78500d38b2', 0, '2021-06-17 17:47:54'),
('1467d7cc4adf83ccb161b99d497aabd0d26fff685110837fc24fd205b5b1b477947cb5f76cd670d1', 'aa71d0e4327b79da5d8a1e71e26f08743eb4030a67cc3f1fe5dd09866e35f797ed9f0c4d17b2a0bb', 0, '2021-06-17 14:04:30'),
('2a312fd53933089dc866cd5111605cafcbea86883fe668c797816dd4abbf75909731b64a54b39fe3', '673400db145679d63eaea2009ab53e775e0d93365421e4253d000eb63390a3da35f884d61d16d3ec', 0, '2021-06-17 12:58:58'),
('2c0bf566255fd95f876852da5c2e3fc79b80393bbfcc25c1179ec81be7741c107cffebf5d2f04240', 'fb824e4744aa5ce15f218a6c5e5c174239538f211c052e4a431771d30958a41e11c9793f09050370', 0, '2021-06-17 11:10:09'),
('391ea1eeb680a79170ecbeedcb611d8434ccc7cfd0a90778c18ab11a9723f94f69dccf45567171f3', 'f97f0097ea6a132114912e578067394b906dff9bc8558883e53fa687a25b8fcad3e58fdc0bffecde', 0, '2021-06-17 13:41:49'),
('7978901da57a77baa0d95d7fe98a9f1959efee8c5d621225bec842179267a43feb8114802b301d83', 'cd7f8c481782eb485ee3b6218e1de275f7f596cc37699fa735cbedb74da4cf400aadc37960c0138c', 0, '2021-06-17 11:31:57'),
('7e80453f1f04bece67c0646ae395f0a8601f7f274845221084b8db56dc0e824693ae4332cea48214', 'efceb1a4f5641e10a09e11656ead40444be5d0eddcaec8f23da347f55fb4f8fd68100ddd6fe3d866', 0, '2021-06-17 18:15:03'),
('80da7e79eac07a3fe1c3b4dac8b2f03528348e6e10de292c21adf70239a0ef42b6398f87f51671fe', '6faf07ac7387b8ead28ed06bbf51ca626ed211b6326db88f38ff4f663d9fcbafe19cc32f0a9ed189', 0, '2021-06-17 13:51:43'),
('8a628f2e00deadc5ce40ce16bb7c58a0369b0a2fd6eb6bd2eac90e3545adf69e0b0342089fa1c833', '7e1e20dea5c5297ffe09e0d6844e6b85ca79085bc0537fb0f45378ee9ba4680e1f1b0d82bee52bcb', 0, '2021-06-17 18:45:19'),
('8c3a17cd653661f2309580298dc516ba20dd81ae846b630b21b66065534f6e06610e41305b271564', '7c3c1969637aa631f6d88d6406a6e5eaa5fa8ca423bd2b618af9375f5a8e984bf2e9e916d6bf8f8a', 0, '2021-06-17 18:47:01'),
('8d0e061ed74d13c5b352ec29a6a1a795bd1d43747469ce0acfdb0f579cbd05444983afca24fffb42', 'e020c0a32947b516376ae99672e1f8e43b83d4eb0a58d3e92f03de5d40a14d392ca5c5156095c69e', 0, '2021-06-17 15:04:53'),
('90f0e93131150119b2559d1b227b3a9c460417913986df3952c9f48f36920452a36c56a9d2c0f804', '4aab7083d8a6a302d2b60e14dad43da424c57c6e3b2053ce9ac4f93f678fdb1da2f783f15560bc19', 0, '2021-06-17 18:40:19'),
('9a5d9bc97da596940541a2e017d9a3e9bab65662536685c0f869690cfffbf128ae51172e4e4baa29', '101ab32651f8fcf04d4b94383778dd6b2dbd438f8bcee1a7ed6ee50ff8642546f94db375ebbc09cb', 0, '2021-06-17 13:52:22'),
('9b40032deae31b59d3297f636603b4cd839e8c1736433a65dc74ebeb457e371aa8e573317c54c0d0', 'f29241064a47c8cc0ed4cf4b9115ff33ef81670dc303fc5e368ad172f8f49fbb3e8a58664c39fc49', 0, '2021-06-17 11:10:02'),
('aa937ca31502b07b4efdfcfddc41b6da3213a47e80e680de08609f20c91d868937f2807cfb937392', '0dca2185e00b89284e9f78014a4a2cb579deb2df5d699c3c375e1a45099d45cfc02e50124940c7e6', 0, '2021-06-17 18:42:17'),
('ac6aec5b7c4205038f2835a2121be17494fa0d1fd28dcfe9101af5e15742c4c52d485591db613429', '9fa14e0f59bb282fa78de002bbefb8e7d404db962b2cee53a6db06644d15aa2529af5b27400646b6', 0, '2021-06-17 15:00:00'),
('af02b26e84e75361909c3ab363f8be34d6e47cd7a397689c25c30090055718eb4f0fea29174175f6', 'e674259233cbacd3875259ab7f167e0b3c018ce88269ad6c66fb8cd7b38a0598bfd8726d69965666', 0, '2021-06-17 18:45:38'),
('c154f1ff1be58416cb4f595437a443c01f60e990a12215874eaecdfec61d1e04250a3e4313a4d51b', '5397ac2b38686872d9775eac50b171bbc1073fb1f96b471a1a38c7618c670386bc933c2520539398', 0, '2021-06-17 11:10:11'),
('c9fb3f1355f487049d9086700ea4da0d47be9d4ecb4215c8c525196b6f42d62cc660ecf434d36113', 'a0691b5c5ed405916cf152c58a655c73e51210c8bf5c94606d1522e6b9a816b7d6035f32f279c537', 0, '2021-06-17 14:16:06'),
('dc4fbad138a83169c3aafe8b257585024865bc5a2c60ca05f8508c3fa1d95db55e0d61c4c023bd2e', '0affcf23e0d8bdcf071ada0cf0ee308c20622694b03643a644ba57dd885b5987effe9bea53afb3ac', 0, '2021-06-17 14:08:49'),
('e063e8c74d941f729f710e7a839f2266dfae2d9b34b5db7900d439fdccf2f83568456bc1906c6acf', '3edd634d34672e4164f02547a75c9e9d400f8e0a00b247b6a12159a3b91a690b7fcd2b3abcd0fd94', 0, '2021-06-17 18:46:16'),
('e69330ee491698aa378f451eb214f3cedd88228051b14177c964c3c8e0aa4e3930ad7aceb73da693', '720311983483a7bc06192bc88e30a0dba387a16e428f395ddbfac756b223cd7da01f5ae8994eb3f4', 0, '2021-06-17 14:19:59'),
('e919f6a8800f67975f7b060ec95b09b71ce1f6a508178b8f3787daf87438ad963450c74581830f64', 'f5ef2c72a1cc9b61204ec766b09c5124bf1c23211e9e2f1286a1699182e1da98d98d7583e4e0aed1', 0, '2021-06-17 17:15:00'),
('fa0a358c77a39f77cd99d34aeec7e76d3876d25ce91d633805ea5cd9466afcc1532088f65e155410', '11a63c9a402791ef476d3a90eef4b75d90e6c8ee706456e842ce8ea701340662999cf44b61779463', 0, '2021-06-17 14:15:00'),
('fd2d99c425f79de3ee9486bbd9790a4d8475bde035eab6d518781a5384f8ed8a7eb11c83ad1b10e9', 'ee257e633d364e6d0227aa9373a82437a458538cad133e1b421c43b23f99254d0d3e08f52ff0d2c4', 0, '2021-06-17 11:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `id_card`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$kHuVt/OsoOPZI2eGLIaW6O0h7gcHZLYV5dhpWwoAJSkVAJ8O7lhpe', '1', NULL, NULL, NULL),
(2, '00000', '00000', '$2y$10$iDk3UHLnOcJyjM5.PrIa9uo3Bj3rqRZHJq44vbKEBZyCQ7kROZ3XO', '1', NULL, NULL, NULL),
(3, '51002', '51002', '$2y$10$7TmpvT8lwXh5oiBrLvYEKefrFeE5p.WbPGoMuNKWH1CNV51kI79GO', '1', NULL, NULL, NULL),
(4, '51003', '51003', '$2y$10$MjED.W25ZJkVqVP/OMNuX.4lmGrXBaTuNsQ9dB2ECQXkWCucNHfCK', '1', NULL, NULL, NULL),
(5, '51006', '51006', '$2y$10$QE5wXfHHDIX8GPL6RwkDru727PbHTpTMi5QmGPvizaeYsyaiyCiBG', '1', NULL, NULL, NULL),
(6, '51009', '51009', '$2y$10$7eFxl6karnBfHOKUwlLgWu50YHtKhEaCWiJQAVDzm51p.7w3EjFEi', '1', NULL, NULL, NULL),
(7, '51011', '51011', '$2y$10$a4kDm/J9Iip7DyFf/NoSruvkC55GpE3Y9M31T0QEsqoeutjjx/EOO', '1', NULL, NULL, NULL),
(8, '51012', '51012', '$2y$10$2F1xqq3ao67E8ssPn8uc9OzuBeBsgFMUHvfVCUQ34U9nDY9.qTCye', '1', NULL, NULL, NULL),
(9, '51014', '51014', '$2y$10$7hBpxVnffKyb4FT.fIBbmOZ21PYcg4LxAcyNlB4mLui6tPXn./yIe', '1', NULL, NULL, NULL),
(10, '51018', '51018', '$2y$10$PnSmySJ5PSrzldscCZfZ.u8QZKWS8/uXD3ALG/PhWqZRHSB0RIkJK', '1', NULL, NULL, NULL),
(11, '51020', '51020', '$2y$10$I2Le3p0oR4wYneiRt2QBzeXBVyjgnup3i6P1dGKO/skOzmUmqvZc.', '1', NULL, NULL, NULL),
(12, '51021', '51021', '$2y$10$k68fz6cUkh1Q0yWRuhA80exSy4W0.yQ1DmhQdZJqoRGE/CDK/ynay', '1', NULL, NULL, NULL),
(13, '51023', '51023', '$2y$10$CPuzr2Whnc.6ScHZexSWNeFvarikZaAYk9ldNauBHr1laXunAAYei', '1', NULL, NULL, NULL),
(14, '51025', '51025', '$2y$10$3DAPMattVO9zKbdk9YSJW.iakF5Xi4JIU2tggAu7czitVl0vtulKm', '1', NULL, NULL, NULL),
(15, '51030', '51030', '$2y$10$Uo3GXz2hXWDxIh/UOTzt9.GiWUvs54fW11mAvkmiW5Ee1iBlBBsuS', '1', NULL, NULL, NULL),
(16, '51031', '51031', '$2y$10$yOUkXjQP7zFyS3ZHCKVIsOJcAFUirz4yjL/J3kYqSESD4JtL47Ip2', '1', NULL, NULL, NULL),
(17, '51032', '51032', '$2y$10$J70ybTIl2qevhUnxWjs4SufvylHhqPGcOb7SzCAJQxV911jmmesnq', '1', NULL, NULL, NULL),
(18, '51033', '51033', '$2y$10$sJqH8GlTo6xgrauduYZW6utIgBqhXL.g9Q1vu/Z1nI.asRKNk.koe', '1', NULL, NULL, NULL),
(19, '51038', '51038', '$2y$10$L7ptQZ46bx.liX/Yz5P.6uL..4D6qgyQPozWO5LnnjkesQVJnzllO', '1', NULL, NULL, NULL),
(20, '51040', '51040', '$2y$10$YiMrmbBQPXpxKAuYlghnYuDDBQIVDpfNdwcLx14AcF7cK8NF.NOfu', '1', NULL, NULL, NULL),
(21, '51042', '51042', '$2y$10$AIB8LQZ/GjFolaqa.0qES.CFyKWAJyEZpS0Xo79lKPq69q.EsY/ku', '1', NULL, NULL, NULL),
(22, '51043', '51043', '$2y$10$OgafR7Fl0aHB6nfln18LPeRzhmJSZrWwG5nPZr//5g9lJq4/fc2Di', '1', NULL, NULL, NULL),
(23, '51048', '51048', '$2y$10$bCUXPUbiXOsN3A/i7mHDLOjqfPl5zs.pLhffJJIlqSxJD8Qh8QcJq', '1', NULL, NULL, NULL),
(24, '51049', '51049', '$2y$10$d3k5IhBFeDSMtCtZ3A74ZuTHGiqwpkdyDXZP9VQqnjtDowkKr3WBG', '1', NULL, NULL, NULL),
(25, '51053', '51053', '$2y$10$pM7lFZr.Vdtagb18C3wNW.5nsP1kfbRQegCJkhFG1GGr3l6qOsnVm', '1', NULL, NULL, NULL),
(26, '51059', '51059', '$2y$10$dQctOHS5UIfZ2.Y8jWZKaeiFGGTKyQ/xppI1Qf1Z1wZMmvoxB.hJW', '1', NULL, NULL, NULL),
(27, '51062', '51062', '$2y$10$qnnoZz1Un2nyXWPOV7qJve7fZRewt7EngxbqoLDFkEfamxWlXZQU.', '1', NULL, NULL, NULL),
(28, '51064', '51064', '$2y$10$THeXedQq9rqPBqrVDlsFbOV7E4JgN.aQ8dubgcCVyeLnHD0ZZr2uO', '1', NULL, NULL, NULL),
(29, '51085', '51085', '$2y$10$NRVOSA6Vqut5/uYS5QKituQh5lawd4oUDkWGcHHqkGg0eUy6VmE6W', '1', NULL, NULL, NULL),
(30, '51113', '51113', '$2y$10$y1NMI1xLUV4Pvt47Sn7bqOGfmEK.t1vmvP9janknEdKAUlvDEk.16', '1', NULL, NULL, NULL),
(31, '51115', '51115', '$2y$10$BHH23ROyh6E1kvi/RUzy4Oq2FBdO17tor.2r3AhR5XmV58Hm/sSt6', '1', NULL, NULL, NULL),
(32, '51140', '51140', '$2y$10$MfjM/mFRM6mK7q/d9lCGkOLhcu7f0u5PYUtz/YLvSuR.JNMJtSnyO', '1', NULL, NULL, NULL),
(33, '51150', '51150', '$2y$10$BN9UMGKSOLhGpbMKFuUHFeXbpFGIXJATQsFK6kMrWqFCK4IQExb8u', '1', NULL, NULL, NULL),
(34, '51156', '51156', '$2y$10$ezCQKxfMcJ1juvSa.kTpzeYmNHFj9yEd8j2fdEp8BvZX.HMkE6bVC', '1', NULL, NULL, NULL),
(35, '51158', '51158', '$2y$10$Q2uhedE2tLVoJG6PJT/brut6GYU2OoQH1YpEU0hDBvYIoHppsNk6C', '1', NULL, NULL, NULL),
(36, '51159', '51159', '$2y$10$eJueah50Gl9AlnSD.o79AOe0.sn8PC9A6Zf3PdnKjZKGkGVKoHi7q', '1', NULL, NULL, NULL),
(37, '51168', '51168', '$2y$10$rLAoEAiV0Grk3dJpUp83uORcp9iQ8GDPGNDTZd.PH/S5pS4GSHh0i', '1', NULL, NULL, NULL),
(38, '51170', '51170', '$2y$10$CfclrE7B.paJ3tIoZxa.q.ZJv9ETgiDoYCs4YkxtSvbZl.WWlfbb.', '1', NULL, NULL, NULL),
(39, '51171', '51171', '$2y$10$jYtspTz4hQe.zlv80puO9Of1pP9UhBrFJMx4OcpdEWLfW4hdvUiQC', '1', NULL, NULL, NULL),
(40, '51172', '51172', '$2y$10$VMHXSLm2WScXfjykkBqf1OTqZ.TevGOeM.y5r.Zq3NwnevbyazrNq', '1', NULL, NULL, NULL),
(41, '51186', '51186', '$2y$10$9J6emSpvtZxWx5f7Pl4SlOH8Fo8fWsmErGslrzbcws/hjFIP5n//O', '1', NULL, NULL, NULL),
(42, '51187', '51187', '$2y$10$afgZEUApCYMhzP4AxfWAkeIJfZ.Q7bFLilZ/G5oq3dquhWkJeyAhq', '1', NULL, NULL, NULL),
(43, '51189', '51189', '$2y$10$uPeJe.A9Q6v55yYL..KSXuPXpBEtVWjprNbaX7CmHAwute53FMrK.', '1', NULL, NULL, NULL),
(44, '51194', '51194', '$2y$10$pZjKoLmA1QCiJTZOPpZaCOPYZXvN3idVz6juMe4dzT/lZsdSyt8QC', '1', NULL, NULL, NULL),
(45, '51200', '51200', '$2y$10$GxYgTW4SQqqzPpVE.okpheL9gYNPp3df3PU.lsJQ9IRzxX05pDiSq', '1', NULL, NULL, NULL),
(46, '51201', '51201', '$2y$10$xsrRdtnBDzU52b5iWCse4ujWgItZGDsqUus6FDPHNl6L05p0PM0va', '1', NULL, NULL, NULL),
(47, '51208', '51208', '$2y$10$LMpSLhk8FtAryGp6WzPl5Or3SAekpw8AZsKixOHFmWaHgXxqW3E.S', '1', NULL, NULL, NULL),
(48, '51214', '51214', '$2y$10$K19CXMec1tdQErh3te4TXuH85ggcJUumwcQf671D.g5934ZeedDUi', '1', NULL, NULL, NULL),
(49, '51215', '51215', '$2y$10$Z5.f.v.XxOSUQGzRFepEpOgFnH2wUGapo8Lh6KZnogq9Q5G1/lKt2', '1', NULL, NULL, NULL),
(50, '51217', '51217', '$2y$10$olmdnscFCSjZO/oQ9T9li.iopauNNpRzB5jaKISop9o.ckMSPc6tC', '1', NULL, NULL, NULL),
(51, '51218', '51218', '$2y$10$CO3kiYLF4vxpWSNIa8eM0.wNzDRCgzusQPIo/TyGL47K08jXDok82', '1', NULL, NULL, NULL),
(52, '51222', '51222', '$2y$10$4O4fg.RTWhzmSczH4ckKee46lvcKIRgAfts7CPRTeetXro/9GwoVW', '1', NULL, NULL, NULL),
(53, '51228', '51228', '$2y$10$zKx1lfReFd41IYeE52Mz.u.S98kh2ZU8z.XdfdWjJCjCMptkq4PkS', '1', NULL, NULL, NULL),
(54, '51234', '51234', '$2y$10$ZAU23KzopEOxUvS6Nuq25OvNXba2PQfPBzLOzhno6woMe.UW5VaQe', '1', NULL, NULL, NULL),
(55, '51235', '51235', '$2y$10$BwpjIJ53bVy3.MPBeXCPze4sDNi.umY0RaM1hljFeKf.E8GLUpu8S', '1', NULL, NULL, NULL),
(56, '51237', '51237', '$2y$10$/fCfXgCqIio/grqwxbmo4uJ9Cp1LLkOp6PPI5Sy9WpY6P2LTx5fxy', '1', NULL, NULL, NULL),
(57, '51239', '51239', '$2y$10$T0ROdXb8tpfGa1pFzQlN0umZrdTOmWEEjOPgR72rcELpb36zcmFNu', '1', NULL, NULL, NULL),
(58, '51240', '51240', '$2y$10$f5vYhU5p/jXSrX3Ttl5vu.QWjUuXvspVz0QdGxjK7eqLsVbwV.H3a', '1', NULL, NULL, NULL),
(59, '51241', '51241', '$2y$10$wpfBx7gq7LQv7jZv6hZmKOPqU/WT.o5inPcquCxIK9Md5FHlaSzn.', '1', NULL, NULL, NULL),
(60, '51242', '51242', '$2y$10$.VuegEGfDuvrFwrV1bp/JO6bpTSFjzBqGqwsK9ufSpTPazQTDBfOe', '1', NULL, NULL, NULL),
(61, '51248', '51248', '$2y$10$xP2tNIAv7B5GhI1412d00.j/tiUI2ZXl3cBROSchI0vtUHeoVxjza', '1', NULL, NULL, NULL),
(62, '51255', '51255', '$2y$10$XCUNtup1UmzB0sMbXHkUBuNY//mvPGNojY0KibClya7y0Y8DecvQK', '1', NULL, NULL, NULL),
(63, '51257', '51257', '$2y$10$w3Y9899RcneWbDj8.dNlper8k546qiXxJOV8znXtqng1rNPtiSUDq', '1', NULL, NULL, NULL),
(64, '51259', '51259', '$2y$10$gs4AGpY5xjOLZ/vArsfFV.00zh4Y09GkUGAkV.yDqazra66Vx8yFu', '1', NULL, NULL, NULL),
(65, '51262', '51262', '$2y$10$p1CNofpEYBrTqYMHkCHg.ehzI7EzyTwVkqWD.gTr6FJ2NRMZdqQGe', '1', NULL, NULL, NULL),
(66, '51266', '51266', '$2y$10$eopOqCQGbyYldpakWkaYze1TupPU0C.KfMQsxhsLva/deiq4vpwG2', '1', NULL, NULL, NULL),
(67, '51270', '51270', '$2y$10$3cPm/wKRFucBT22EFdYCDOCcfwM8oT/BU6jgzF6TJ5cIZXFQGnWLe', '1', NULL, NULL, NULL),
(68, '51273', '51273', '$2y$10$oSuEpPebp3AvdFWQVJXCKufBOM4TXVzbxnJsljqK3OC5PU0Y7W19.', '1', NULL, NULL, NULL),
(69, '51274', '51274', '$2y$10$DDzZeeNJsMBabHFA5bebfexKz.xu.1mDsvPqFjzI2u/AAEPZSCkR6', '1', NULL, NULL, NULL),
(70, '51275', '51275', '$2y$10$lrQ6lnTJlFfUnvbI9He5duzCt3ElI2YYw5iYDEka2hz8Z7vVv8X/m', '1', NULL, NULL, NULL),
(71, '51277', '51277', '$2y$10$6dWyDl10JWetYLUKcELBh.KddFgXoXLeRZ8yCV9RwLiEEELapiemq', '1', NULL, NULL, NULL),
(72, '51282', '51282', '$2y$10$xCTRzWLZ0VQFaF31kojzhuWHoskLr1Azuu.vDgHep7B2hmKWCUXmK', '1', NULL, NULL, NULL),
(73, '51283', '51283', '$2y$10$ZZGeN5H5XoyxVWi3pNwYKO1RRCh6W3RWXBreFgzxTYfjFMItyCGeG', '1', NULL, NULL, NULL),
(74, '51287', '51287', '$2y$10$q8ajbM.YMY3U9GyJ0tiwneIGW9J3TXEb9.DibG9v07LZjSvPq4Q7O', '1', NULL, NULL, NULL),
(75, '51288', '51288', '$2y$10$kd56QCNTxNnM6D9vtBiOjurT7YD4lm7tea8BlhXIlGEYSdaP6PQ6a', '1', NULL, NULL, NULL),
(76, '51289', '51289', '$2y$10$VCwq5.UKFP.m.8bHfnPnfOmdUYfKN5JVgffnuIT3SPa8Kh5.RgJHy', '1', NULL, NULL, NULL),
(77, '51292', '51292', '$2y$10$k/XyttvMOSlTKie/2nZFLeQtvbI25yasyZI3ti9Klf7G8PZctQ4eS', '1', NULL, NULL, NULL),
(78, '51293', '51293', '$2y$10$WxMf32zF77pHnjmphw4Cyu6Snqxjs5cX5gHRpWpuWQS6tHV1qxT.m', '1', NULL, NULL, NULL),
(79, '51294', '51294', '$2y$10$y98t4lwFHPas5vr5Ohwzr.0KG8ix1ixTxEGqvLOW2IGzU1CH0lSVG', '1', NULL, NULL, NULL),
(80, '51295', '51295', '$2y$10$lV8MNSnMZGxbySThFB.D0.9g0jvTtKbwbVamqMXPvu5IDVzQfADOW', '1', NULL, NULL, NULL),
(81, '51299', '51299', '$2y$10$Idx.rpV9oiP8.NFLzekTTeCfrLe.kIL0OflF0VnUq48E3sDEbS/r.', '1', NULL, NULL, NULL),
(82, '51300', '51300', '$2y$10$q/OWbKk1D/6fJDfvCNWksu65aYSuCDkSUEslCw.jz1ApHmuMeJUtG', '1', NULL, NULL, NULL),
(83, '51301', '51301', '$2y$10$MZyuHajpGU/3.oDrOInbcupFcO5L.gvdK0UxGKEZrMh1R0WQut15K', '1', NULL, NULL, NULL),
(84, '51304', '51304', '$2y$10$UDUemtRJGh8S8RlZfCz3CeFEMkGYOeK5jUxpe3VI5Bk5iSklGlBau', '1', NULL, NULL, NULL),
(85, '51306', '51306', '$2y$10$We7LhcVaJr.tTaDveuAyW..Q5utJMG0tT67TOUkX2u985cGa/BITC', '1', NULL, NULL, NULL),
(86, '21002', '21002', '$2y$10$hSvywZVgIiKLItfBUhmKluGOnfVNvktqD8s4yEcHdv8i48rcHUo92', '1', NULL, NULL, NULL),
(87, '21004', '21004', '$2y$10$eXz88CB3sqK2yhytFC.PNuCvtsO0FeYCKyU5V4Q7snvz2zwZ6OohS', '1', NULL, NULL, NULL),
(88, '21007', '21007', '$2y$10$C.yuH.Psn1MeseTc9L20futSge.C8JUDFzoEctRT2xv.zrD/KIJTm', '1', NULL, NULL, NULL),
(89, '21015', '21015', '$2y$10$Y9wRPasEr9LolcMIzIy3neJnNnjvp3J0wP7q0YbYsWUh9l2ALO.YW', '1', NULL, NULL, NULL),
(90, '21018', '21018', '$2y$10$RsdFYTXoGgprA3tpJuoAn.QgSKJpxLaBCz5yILLdMs9WPPMMB2IYG', '1', NULL, NULL, NULL),
(91, '21035', '21035', '$2y$10$W4Ww1Rka4HbbvRbyPKo/weCSOUmeEJzTIyw1UkbAeESikJK0wOfq6', '1', NULL, NULL, NULL),
(92, '21036', '21036', '$2y$10$yzuUZCVLTFMfNvcM1OoONuTM1.1P9/nHSieSf.oK1xeC5n/ePUcxe', '1', NULL, NULL, NULL),
(93, '21037', '21037', '$2y$10$uesNI.Cz9L/4glPLMy86HOhMR74.OCMLxOZQUkOp3ATT/iHpYrqzu', '1', NULL, NULL, NULL),
(94, '21038', '21038', '$2y$10$LXop2eK3y8sGhVzKSdf.VOi0qHm8KgtOB6t577mivWnxWAMUVn3B2', '1', NULL, NULL, NULL),
(95, '21039', '21039', '$2y$10$M6LZcgSb125eJXMLUmhunOlgSIEBkT8/0GDGxH3P4wKfGCvdLiTFm', '1', NULL, NULL, NULL),
(96, '21041', '21041', '$2y$10$lGyVB2v02qPIW6G.bdIz6eGY5f8aZUiCcaDAW.Xq3LzSIoO.Pjv82', '1', NULL, NULL, NULL),
(97, '21042', '21042', '$2y$10$oc5mO/ggXY0g.LLUrLwCw.5x9B.xEnU.jjd9IOxidcH/ckpysEXAy', '1', NULL, NULL, NULL),
(98, '21043', '21043', '$2y$10$91OGdoVLluJQEtx4DJRRSOvBXvcTqlLc1unz9AGhWjNldoxVwK6gG', '1', NULL, NULL, NULL),
(99, '21044', '21044', '$2y$10$Nu/hH3OV3juZTh5HX0aPfOHQmkmjV4A9beSOAn1DnqX6oJdSaKhp6', '1', NULL, NULL, NULL),
(100, '21045', '21045', '$2y$10$8eq/S/dKRSzBOCWUa6DJ9uDEr6/qwHzk4X.6XpC9NSSsQ9MQQ1WXe', '1', NULL, NULL, NULL),
(101, '21046', '21046', '$2y$10$yyWTTtiTfrZKUVGEqobcxeh6UT58bj8Agpz5OFv2SFgfCDyf62HPe', '1', NULL, NULL, NULL),
(102, '21047', '21047', '$2y$10$8vphkoPMApy8lrozCsqCIOxfBjYTqipUMRTevARVPIF.N/VCmEbEm', '1', NULL, NULL, NULL),
(103, '21049', '21049', '$2y$10$SkCJrL2gI9dz8PmaH657BuQ5lWJmbWC1CeXq6vzEGuhqZUJxUeIfu', '1', NULL, NULL, NULL),
(104, '21050', '21050', '$2y$10$eBG5pm.9BAfKeVjJ1wfvielHlArBrAnyahVFRtSlO59FBqtlv9OcG', '1', NULL, NULL, NULL),
(105, '21051', '21051', '$2y$10$24.yKBQ.jJ.KsPxYsYWBpezgHts4uwIctzvFtltUUXHL9ByJt.vWu', '1', NULL, NULL, NULL),
(106, '21054', '21054', '$2y$10$EQ6.GU6wVauH3we6o.QGc.F3oFJyFqNY8esU2OqiVrH0P3FqqSgo.', '1', NULL, NULL, NULL),
(107, '21055', '21055', '$2y$10$iE1N6RUJ73TLc7AfrXS/..vyBGQMWHDfDueeBU1nQ1Vy//0Xt2pOS', '1', NULL, NULL, NULL),
(108, '21056', '21056', '$2y$10$wvE/oMeb8lrky.ptLrezE.gDGuGtTVI.WUk5jxViFFOBp.gqJVE5y', '1', NULL, NULL, NULL),
(109, '21057', '21057', '$2y$10$2i2p2i12lBslv881tamhsu2gYOITMlha4RgVAYaPQhSzY//mmVlw.', '1', NULL, NULL, NULL),
(110, '21058', '21058', '$2y$10$Sc6DU8zR.kgyO/DeRETA7OfpQkzpPanxe2SjWBYRsheTlAu3QTKXm', '1', NULL, NULL, NULL),
(111, '21059', '21059', '$2y$10$myh0XDhPZUb8tbuYSyIIu.rYqprnr3L4izpituEkqG7mkMnJYKm3S', '1', NULL, NULL, NULL),
(112, '21063', '21063', '$2y$10$4xpWSlpjFFIpKRANHQ1qk.7sEPMhwYl8zafdUlFelW64nEoJgmPB2', '1', NULL, NULL, NULL),
(113, '21068', '21068', '$2y$10$ur4LPmK4o17eQaRjHfOl1.BEoC7B1vUb63iBKB6izGZAJAtmFUHFy', '1', NULL, NULL, NULL),
(114, '21073', '21073', '$2y$10$Ha3vxyXK1QuU.zOAUxXUO.lW2UDjx4qvwq89Zk2Bf9l2ZPcEQPo6W', '1', NULL, NULL, NULL),
(115, '21074', '21074', '$2y$10$OOK.V4FsbB18A2OWZofqMulbDGrTCPqYYkxGuUUfPWGONmXzUE6rS', '1', NULL, NULL, NULL),
(116, '21075', '21075', '$2y$10$/zq5JwT7J/HBMHoECwy3L.lj1r1zM7O6b3KMGzwJs/EVxuCfqUR8e', '1', NULL, NULL, NULL),
(117, '21076', '21076', '$2y$10$rd3.54Gg7C6AtwI6G2dcwOZQ2w9k6dDGL4ZvkdSRPKPIFJeoYqKX2', '1', NULL, NULL, NULL),
(118, '21080', '21080', '$2y$10$oFbwBD44P0s.PijxaSZvo.a0KJG54/Mu29p/jXbNWzv2mtAvOcyJu', '1', NULL, NULL, NULL),
(119, '21081', '21081', '$2y$10$3K81Is2FKPjnrBibrajrmeRbXu7iWaMQZiG/NeMsmiSOBwdWORKd.', '1', NULL, NULL, NULL),
(120, '21083', '21083', '$2y$10$SHC5CP3OvU5Okl.FtyvySuRspT4E0BFEV8zfojzTo5b2SnDkFcczm', '1', NULL, NULL, NULL),
(121, '21085', '21085', '$2y$10$lJJjGwS4TXZKQVgjKBOxmOb8cBQeK44AwP5KCcb9D5VOKpbiKzaR2', '1', NULL, NULL, NULL),
(122, '22001', '22001', '$2y$10$PRg7oaHgOhJCB.4aljO24.mK7K8zM56eeLRWGm/.0qTUulCfomnbe', '1', NULL, NULL, NULL),
(123, '22002', '22002', '$2y$10$6ipUwL.HPMVAoQO3insth.Z9YF1hBQKD9RSNvnvUPpLZUuz96p5vS', '1', NULL, NULL, NULL),
(124, '22003', '22003', '$2y$10$YVCdVMAPp5qsWmU5xDPloevLXaXQMl2dSyqhyZK3Xta1GwgNmX9Z.', '1', NULL, NULL, NULL),
(125, '22004', '22004', '$2y$10$C/ilPGzUY/sh6OePcE9s2.7/0O3mcwtQj1HSRVxeTxV6Ntg6nJ3ZW', '1', NULL, NULL, NULL),
(126, '22005', '22005', '$2y$10$xdqAl.nob1BcyGLkU5IbhOBgAV6ZXbZ7VCqx2ix9ITeokX5zLFrr2', '1', NULL, NULL, NULL),
(127, '22006', '22006', '$2y$10$Qj5RkEya7032lliog1Rbkuj9K0yPwdbqacKl2ikpS2PEId76GH5Me', '1', NULL, NULL, NULL),
(128, '22007', '22007', '$2y$10$FKVvBDR.AjOy/8Z56iz1xejRLVL5htilvuq7xXPCxgfsO337ok8Em', '1', NULL, NULL, NULL),
(129, '22008', '22008', '$2y$10$ZBf4PASLPY26bdgv1LMBOuSt26tj73OGf5/KYiCZP4mbV2LSVPm8G', '1', NULL, NULL, NULL),
(130, '22009', '22009', '$2y$10$QxmwIqcPMFovSwbQ1BTzPePw7JLIewvW8B41xLMreoqe6eakRXdum', '1', NULL, NULL, NULL),
(131, '22010', '22010', '$2y$10$Zgig5AEqs1JLSqeKFmDEwuUqSdO8V/7aPSqHWYhA0qF21eH6RzvR2', '1', NULL, NULL, NULL),
(132, '22011', '22011', '$2y$10$m05h02paWP5ftqUgf6pWpuLNEXPgKqWwUJQupzB/yFv4QCZl8BJ6K', '1', NULL, NULL, NULL),
(133, '22012', '22012', '$2y$10$Iw/VyhItWRTyW/wOBhMys.AcnFDe08OVV8bYr3For4JALKZV14kLi', '1', NULL, NULL, NULL),
(134, '22013', '22013', '$2y$10$eMxEjeVbvqXLrz6zMLTPWujtmWgAuH2Lk3HVOTlBDfRATf5s1Ja.2', '1', NULL, NULL, NULL),
(135, '22014', '22014', '$2y$10$dcaISjYa1GoKvuiNS/ycUe1ygDPRFMXgUfgmp2V4JGKCMRQEHBaA6', '1', NULL, NULL, NULL),
(136, '22015', '22015', '$2y$10$SqNk0kY34Ib05SFKSz/vReuOH9lAPYMi9Sct7F8M7AXNzq.LsBu22', '1', NULL, NULL, NULL),
(137, '22016', '22016', '$2y$10$UhllaMp9/jc7A26xJgBi8e7DNK1OoGzrsGkUYFyETCVJ1oDCjs5wW', '1', NULL, NULL, NULL),
(138, '22017', '22017', '$2y$10$TcWLYLf1W5lYK2vfP1RrQ.ENOPSr2s.BP.EwWAjr9SSe3KtA7vk2e', '1', NULL, NULL, NULL),
(139, '22018', '22018', '$2y$10$iEUAoD9t2ZJWIoZ.Hw0Czu09LBD5JqgINshD7YgaVn8SVEc1286Vu', '1', NULL, NULL, NULL),
(140, '22019', '22019', '$2y$10$sy0kGi7VMsSh3iS3DSuLT.i1844WUUo412o3gZpUbO4eIjE5SWdcK', '1', NULL, NULL, NULL),
(141, '22020', '22020', '$2y$10$TyXc.wW3YhVF3t.ozXCWPukNdsHAehOoRUQe8iZ4EDZw6rV4xG2j6', '1', NULL, NULL, NULL),
(142, '22021', '22021', '$2y$10$4Y8LKJ3bcp10GcGfoqIAIeBpW95rW9PkdrYZWFOMkUH7pRJdWu.b.', '1', NULL, NULL, NULL),
(143, '22022', '22022', '$2y$10$Pk5Acwyr4tje2boIV68OwuBKWPVHbh93KFlRhDn7HgCHWXfY2L/pm', '1', NULL, NULL, NULL),
(144, '22023', '22023', '$2y$10$K5ck.iNxrefxjGHwIu53WO/Il2I58JkkfrTHkOwlZIvpe7Qkcghl.', '1', NULL, NULL, NULL),
(145, '22024', '22024', '$2y$10$4dNaHRPs0cb6Pg7odI.Wpe5F6dFey9DuK.68ZzpaZFYPNxwixKK8S', '1', NULL, NULL, NULL),
(146, '22025', '22025', '$2y$10$jVhgnmx6FpfUSjFnryNndOpWCWzxyUzQFQD1AG1xZAbdzjkos71t.', '1', NULL, NULL, NULL),
(147, '22027', '22027', '$2y$10$6VoVI59bAZqcug0Qk0YoN.5cWs2IshbmdXj4aNOCJLivcNSvbOnDW', '1', NULL, NULL, NULL),
(148, '22028', '22028', '$2y$10$JHSPcXdAGIk/oUOJO7FG6OgDyWSLdKCgEUka3.krCq5zzzo/DqOuS', '1', NULL, NULL, NULL),
(149, '22029', '22029', '$2y$10$Qao3mRzSXJNXQ.MiVJ.94eivs4JcKihIOTWW/ByR4fmex.frGuSVK', '1', NULL, NULL, NULL),
(150, '22030', '22030', '$2y$10$ul4auhjVdVT0RgFri7uLQuYXZ1bQQpzskQ0pqdJhSmjU6vfdsB.IW', '1', NULL, NULL, NULL),
(151, '22031', '22031', '$2y$10$2zjJjB45JbxXgRn5E4253uWIwzgJmzi49jZzs.gz/Dl7sSiOCH.jq', '1', NULL, NULL, NULL),
(152, '22032', '22032', '$2y$10$0YDqLP/pjiPq6f13ipnFTOv3M8NbgbX3vbY2UZpqHobgiYhpduyAC', '1', NULL, NULL, NULL),
(153, '22033', '22033', '$2y$10$2ppwUTliMSFzh3yZHS6uZ.UhwdiLjRFfGIY/IEPL1fXJXt97rgeay', '1', NULL, NULL, NULL),
(154, '91006', '91006', '$2y$10$iFKRuuA47AZQ/q2fOAymYutsCGaWKP7NCNXKe/ztuqGh4LVRFAVne', '1', NULL, NULL, NULL),
(155, '91025', '91025', '$2y$10$pIJ7KDv4DHiAuqiBxq.VGeE96fkB4Hoe2hx/vWrVYQpo5pIfJtauO', '1', NULL, NULL, NULL),
(156, '91030', '91030', '$2y$10$BbsXdI14OhPoK6LOieRY0.wJMWY6FBeBV5hiL5RDIETp7ODB.5BM6', '1', NULL, NULL, NULL),
(157, '91047', '91047', '$2y$10$a6mD0KjQQ3ftlahvft2RyOg/AqmmzhW9GodyCIaCWhlJYJ0jc2y2a', '1', NULL, NULL, NULL),
(158, '91056', '91056', '$2y$10$Dl6YsZUQOwvDQsfXkmeMcuOa12TYQIhTMuaWFq4AiLF3OcjKj73rS', '1', NULL, NULL, NULL),
(159, '91059', '91059', '$2y$10$XRIMIQQtpXNblKgME9mRCOkPAVa8W7CaZugU0q9O7/Vf06Un2Ik.W', '1', NULL, NULL, NULL),
(160, '91060', '91060', '$2y$10$B6LAGgaYMLL7gZNPHFZgFuz9gWCXz1ekLclpSVl2hHSp5LheMqR2m', '1', NULL, NULL, NULL),
(161, '91066', '91066', '$2y$10$a1k8Gq81HaeqfPr8fO3HQelWCudCbCi1drFvd2RHnT7y5thHeHx2O', '1', NULL, NULL, NULL),
(162, '91077', '91077', '$2y$10$boJjCbCnNgTGCQdhGTiNa.L7/TMywwPA8yiB/bLeClUAHeQhAAVRO', '1', NULL, NULL, NULL),
(163, '91086', '91086', '$2y$10$Y3uMoGWXvSAleR74j8p5WuZd1vbEL12LmSES7o0Xt6uqs1ckHDhru', '1', NULL, NULL, NULL),
(164, '91098', '91098', '$2y$10$x/ff292T9RZM4xUGLn7.FOKtr5h5DnQdKxho0G9CsSw7GzQtW9wSu', '1', NULL, NULL, NULL),
(165, '91099', '91099', '$2y$10$f7GTDOCGRBSjLCRHg5ysIuONbpUsgYOmcvXdu1RDSWFIImP2dwfgy', '1', NULL, NULL, NULL),
(166, '91111', '91111', '$2y$10$CkPJzlQY3mRD3ISVhacrP.Wb.Hg5WfGXmgFyJphjKKG9W3G.xAddm', '1', NULL, NULL, NULL),
(167, '91112', '91112', '$2y$10$ntzNyC2o16ITsIzAFkC/ZuizzYabUHefkUcdA4.IsD6rDKfbFcdna', '1', NULL, NULL, NULL),
(168, '91118', '91118', '$2y$10$FdOXd88JaiRlhL27/f6JteFgAzGSdp057vWuTfkqyhwOVfNf/o52G', '1', NULL, NULL, NULL),
(169, '91129', '91129', '$2y$10$OWDjqUWUPP9j2Dw6Vdt/M.r3Pu.lWv9fFFk8S/jUhvZvoOtIU38lO', '1', NULL, NULL, NULL),
(170, '91138', '91138', '$2y$10$XrRFDENEpiP1TXC.LOdEvuBLQMmmQ8QC04mvAKNubMtQ7/iCMO8PC', '1', NULL, NULL, NULL),
(171, '91148', '91148', '$2y$10$5g2Dsb0uXHynJQ9YUx/LIerP/YEqt.Z0TDjU8WXqW1ocDCCqzUo9i', '1', NULL, NULL, NULL),
(172, '91153', '91153', '$2y$10$hyRHA26E.2cZBhA0ntuaru8T..QGqq9U7cqcURsloO5tijVk0F2h2', '1', NULL, NULL, NULL),
(173, '91163', '91163', '$2y$10$Su8iIkn3juqyaF.tMNcBEuFvE7IVdcjJmpfF9MWcHmMVPIBWScnX.', '1', NULL, NULL, NULL),
(174, '91164', '91164', '$2y$10$R5ZkRh3zhjliohtp7FaFeeZ36O98tRrBM7P16c1j.tTpZIrKOU.U.', '1', NULL, NULL, NULL),
(175, '91191', '91191', '$2y$10$2RljSazAyXr/5ffgBYPdtu5aFLVdkgVJwpcPMDasHMen01WDitKDG', '1', NULL, NULL, NULL),
(176, '91197', '91197', '$2y$10$LOSkoijOEOsASWpAz6h62Ob2hc4xwyWcBYqXICegE1oYfmrDyBz.O', '1', NULL, NULL, NULL),
(177, '91216', '91216', '$2y$10$WpyNoyQ5N0SRKHZdGyHRc.unHjkapFqeCm3TW5Cm4N1YRU44nQO2u', '1', NULL, NULL, NULL),
(178, '91218', '91218', '$2y$10$b0w7X2hD5S3OuxIv6IF9Yu2Hj7MbQEOZu5FsVTKT1cliC.TKZ738q', '1', NULL, NULL, NULL),
(179, '91219', '91219', '$2y$10$svjLPYil7EznsJK3CUqaJOw1BHHmFEZSBZetCs4kTPLjTgGq2bIVi', '1', NULL, NULL, NULL),
(180, '91221', '91221', '$2y$10$9GmsrDCPFMIY.19eP/PM2et/ls6SOVmoQrySG1hpzQG7pO5oxMaoi', '1', NULL, NULL, NULL),
(181, '91230', '91230', '$2y$10$oOfqzA1D.OFLLIvcnYYwAeKp6.Fk0CDv0gxMRMdvMrT7Qzei/.Oqi', '1', NULL, NULL, NULL),
(182, '91233', '91233', '$2y$10$Y0JSrd7g8vGUfeZ5H2/QEuLzPwb2yYvsUfngCsXk7CRQhgTe98qHC', '1', NULL, NULL, NULL),
(183, '91238', '91238', '$2y$10$4EgeeYHzb3Wbz4sHG9JR7..Vo5olnguWyw.aIKuAuSL479hq0YAiK', '1', NULL, NULL, NULL),
(184, '91247', '91247', '$2y$10$ye8vZefhOjGGkGnriYa8/ugvOqJNK.dL1D/yUX3vV1w59twUVuuvK', '1', NULL, NULL, NULL),
(185, '91250', '91250', '$2y$10$7MAt9Oous4q2gi2QTq61rOWwbZBIW2tTKUyEE0GvCu2fiQtglH/R2', '1', NULL, NULL, NULL),
(186, '91251', '91251', '$2y$10$xoCnm9u.oVewhp6oxh4moeqd9k4rIrH4aQiN65cT26xMTA1ZDXxgS', '1', NULL, NULL, NULL),
(187, '91254', '91254', '$2y$10$tZJDW99tBmx5KsIn2qPwPeXkQPU44oC4avvdokZsVZouTHJ0Mt6Wm', '1', NULL, NULL, NULL),
(188, '91257', '91257', '$2y$10$2Sh6GeHo1uVHaHFTbSLY9OYpD6deSION5TUVI0AMu4C5WrSm5eiiS', '1', NULL, NULL, NULL),
(189, '91260', '91260', '$2y$10$cpzm2ttrSvd7lVgeA7lu7ueFETBOBFIMPIjrs9WL2xfGJKHp9WDIu', '1', NULL, NULL, NULL),
(190, '91262', '91262', '$2y$10$9Rt5yfqK2MBJVCUvZ4UYTOt/ETn3VmK/Pm.EVmb.0e28j.9P5lzdq', '1', NULL, NULL, NULL),
(191, '91264', '91264', '$2y$10$PF1VNwNZHvq/RZ7Q1c7Dgu3lJoqaRKvM8jWza2Bt0ThKXXDT2O3Z.', '1', NULL, NULL, NULL),
(192, '91266', '91266', '$2y$10$HyxB.K4kUfpEYAAlo9jfiuuhgexXEzm/19ma0BwFXEj5RqUV80p3m', '1', NULL, NULL, NULL),
(193, '91275', '91275', '$2y$10$OvxAs6ptwaO8XqWpsFLQZ.dJaxwU9sJJBYh02Mt7zIzAWEvGD62CG', '1', NULL, NULL, NULL),
(194, '91279', '91279', '$2y$10$LWrt/2d1TBEwWW.49IN4qudWBdsPRiVMZKZvTeuXLXtU3F9ly.jfW', '1', NULL, NULL, NULL),
(195, '91287', '91287', '$2y$10$ykoN.E5pA7Z6nToowKqODOV32RaJcki0iUI6ylnHqsekhDKbAfMLe', '1', NULL, NULL, NULL),
(196, '91290', '91290', '$2y$10$IFhZ6Vvuzp6hOHripavwwu4E4k.6BaRrqMzRmdxrpq4QT9x1mfnC.', '1', NULL, NULL, NULL),
(197, '91294', '91294', '$2y$10$04HkdIiia7PUBtYL93Oip.xH2A3PdTc6DJXMog67XWiYYX8RiwQjS', '1', NULL, NULL, NULL),
(198, '91303', '91303', '$2y$10$2okRXtW0qVu6HrPmqZSsw.YOqkxOQwA.Cs6kR.NaLy0vAUb1lmSuu', '1', NULL, NULL, NULL),
(199, '91305', '91305', '$2y$10$5ZWWz5170zaeqLxGO3zv2OM4K//cWRrLji6a1tw7l3qaHey1pWA1q', '1', NULL, NULL, NULL),
(200, '91307', '91307', '$2y$10$3zt2AJJPcHK3WGyT.yz7s.8UH97H8BaRtEVBOJMOOLhq1B1BmOW1a', '1', NULL, NULL, NULL),
(201, '91318', '91318', '$2y$10$3OHBnf9DP0QHCK.f2sFeaedWgIYNZqyT3M7EoQ7PN9acl7lb83eC.', '1', NULL, NULL, NULL),
(202, '91321', '91321', '$2y$10$yxeukqe2I/yYQRyOIYa4UuLoaMl9Ez4OpMSY3OeHyaXDlYvoSE/xu', '1', NULL, NULL, NULL),
(203, '91324', '91324', '$2y$10$NXvIMQGVygySFL5xuFTMFeL7lOzLUcmlbQCtjGguC5OIEHY.Pq3Ma', '1', NULL, NULL, NULL),
(204, '91326', '91326', '$2y$10$2G6pkEHvyCyAwV7GE6hXqeNlV/CYJPOJ9qrN9vgoqcgI4e/fqliei', '1', NULL, NULL, NULL),
(205, '91327', '91327', '$2y$10$8eyynEDg/zMwGVsBo2CfVubU6.rGYz2rv9PJneu31QoCUh6Iyarpa', '1', NULL, NULL, NULL),
(206, '91332', '91332', '$2y$10$XbFrjIJdaYp/3/b1mMVoGuyMUwZCuprpMm.MliZhTNvIs3kse/MKK', '1', NULL, NULL, NULL),
(207, '91337', '91337', '$2y$10$FgQsgwNJzfQUPQ/eBW9UDeV8u0FCi1GGYfjf9vJoVAynJyMnsxeKi', '1', NULL, NULL, NULL),
(208, '91338', '91338', '$2y$10$epzzZ5d81hAstn6snhQfruSRu4L6gmT/RxXf0iVfIdA1fIdhFEDF2', '1', NULL, NULL, NULL),
(209, '91339', '91339', '$2y$10$8G2xyho4HnOI9NyowQoEfeFIBbmZ5TCgVoKvfcqOqnvhkvt8klaAC', '1', NULL, NULL, NULL),
(210, '91348', '91348', '$2y$10$6jDEfx9StYmTV9rLd6Guq.Dufe7zlkLp17wQ1xyPMXWMoMB/imx5.', '1', NULL, NULL, NULL),
(211, '91350', '91350', '$2y$10$NcLdvbrGl1wVaonKNTAQ/ewLxlgYy2IBsh.aCr3/tldwjI9y/Ipl.', '1', NULL, NULL, NULL),
(212, '91351', '91351', '$2y$10$f.9vWEMJ5Hosgx4rA49pAOKu8X41TKm2Nr36eiSgj5Z5SBOCxcp7.', '1', NULL, NULL, NULL),
(213, '91358', '91358', '$2y$10$jv20MfxtArbNHQiajthH7.saOC7rtFss3mqGbkks8OkQYhxDHzE1W', '1', NULL, NULL, NULL),
(214, '91359', '91359', '$2y$10$sedMfm/GZVvhMpE7Q8uTx.hzmXx2QGIeNaYFm/8T4Vk6kuH.Jdhdu', '1', NULL, NULL, NULL),
(215, '91363', '91363', '$2y$10$90E3H0ud2CsDcmbBcDG5s.4NOd/ktlHUv9VB.epBoWpr8ghKQgdky', '1', NULL, NULL, NULL),
(216, '91364', '91364', '$2y$10$hsQujO7xKBMqPkzqJip0oOffl6S.vjuWFdLZ9QgXdDxUZLgEfys0G', '1', NULL, NULL, NULL),
(217, '91373', '91373', '$2y$10$IoL2hZJGQX3tEWEvt6EK6.4wB0LmVf9hFgRGQI/PXYbl/5NFf5lPm', '1', NULL, NULL, NULL),
(218, '91375', '91375', '$2y$10$uFQU/Gf5FtNnCQDatEhvhu0M0sA4oENs8Iw6NlcOy.xiV8if7jzB.', '1', NULL, NULL, NULL),
(219, '91376', '91376', '$2y$10$R17pA5c829W7SXIED5pkBOPJbkta8cKZ4Lmu7.SScHeAT1Y5kQCue', '1', NULL, NULL, NULL),
(220, '91385', '91385', '$2y$10$VeYuFjbjP6lecHt/6vR9VOgiitLViUEMoejD4tvnKPzGz9lzO07km', '1', NULL, NULL, NULL),
(221, '91392', '91392', '$2y$10$/iw6sB2cOn3ndjPs6mHJieOkmceAGe3nuhyDpI5SbpsAOgWQa7RGC', '1', NULL, NULL, NULL),
(222, '91395', '91395', '$2y$10$aQbB2JtrOejdselSbvNHt.38Sy2r.HPVkiSZJG/tL8EGoUPGzuxN6', '1', NULL, NULL, NULL),
(223, '91396', '91396', '$2y$10$SWJVG8cbOb27BoMwEP8ah.foWRY680lhNtuOjZdQUCbbw2hyHV.Ne', '1', NULL, NULL, NULL),
(224, '91398', '91398', '$2y$10$irAdCbVthSCVYdzlqcuYvuMujBdvYYWgyC2w4DpWyBxfMpRUZEXqq', '1', NULL, NULL, NULL),
(225, '91399', '91399', '$2y$10$NQ8nHMURPj7k0LYJvqOCCeLYHyKlqPIqoX8aHOCoWKGXoaSuIFy42', '1', NULL, NULL, NULL),
(226, '91400', '91400', '$2y$10$fWS9Z1hlGbNP.KGgatn9g.MQkrJ4.ug7cdyaHl9i5M2vqOvrpn3Su', '1', NULL, NULL, NULL),
(227, '91402', '91402', '$2y$10$vnBoW/CjjDM6MJdiXW9BH.JQnPRSCGkDoLpDecgDx9P8VE2zCfj.m', '1', NULL, NULL, NULL),
(228, '91403', '91403', '$2y$10$vZmVexUn82.k0EkwWld3..CKTCOYCrNFYaa1Ye12yUuYMvCC3Pt1a', '1', NULL, NULL, NULL),
(229, '91405', '91405', '$2y$10$um14UR89ibjFWPWMYaWk0e4jUwSNsj5xKT3BIs/VIAzHrpZT6i17.', '1', NULL, NULL, NULL),
(230, '91415', '91415', '$2y$10$jjN6Gmk594Wr07Rv/MvOl.n47zeRn4M4Y2rvXj5NAfdTLj8XFTPx6', '1', NULL, NULL, NULL),
(231, '91416', '91416', '$2y$10$fe04FmpJTEc4Rah7Q4CbR.nftqOJNGmwzxhhk9GTkTq/NhzSIOmfC', '1', NULL, NULL, NULL),
(232, '91418', '91418', '$2y$10$MtZzSlliY/I0g9D0nHieKuOIk/tiOrPR38Ev3OzxxtFnnCGyqqJGK', '1', NULL, NULL, NULL),
(233, '91471', '91471', '$2y$10$b.h5P0P52CXI9wvIhxBQkOfTh95WeZEpnIeosjAbl1zEFxF02/s6S', '1', NULL, NULL, NULL),
(234, '91427', '91427', '$2y$10$vkQXi/hi2TehPrpaMJ6w3.fY7/NWDKt3QQhIlXrUk7EmoUQkablUC', '1', NULL, NULL, NULL),
(235, '91430', '91430', '$2y$10$8l3h5P.XhxAZMYq8Fcv9leNLQlkonPTQYpeHC2bU0lmhBV.2F/TMm', '1', NULL, NULL, NULL),
(236, '91433', '91433', '$2y$10$UP2DCA348tOf3WUvttY2uuIPs6xdfo7nCWe.3qh/My5cTkORXRAQ.', '1', NULL, NULL, NULL),
(237, '91435', '91435', '$2y$10$CUFiPs7QlwRVJgO8NdVTSudf/0bm6gAOkuXL/SM7LzAD4ro24Xm5m', '1', NULL, NULL, NULL),
(238, '91440', '91440', '$2y$10$qDYM3J8rQz8tuKdMjoqI/u69CW1IHR934W7njf2s.oISwLqpRNkGy', '1', NULL, NULL, NULL),
(239, '91442', '91442', '$2y$10$iQgghmJuauf5Og9UICOkiuNO4LIEPjZxuQUSQhdfl26.yw4mMXCmy', '1', NULL, NULL, NULL),
(240, '91443', '91443', '$2y$10$yWjFL0km3s.31QV5FpVJY.ojg4nt1Wf//yhF95NKwaR8tMuP1CfRq', '1', NULL, NULL, NULL),
(241, '91450', '91450', '$2y$10$8F79NoYWWFSGxwXsxNPcM..NKtcXIH0tjFaf5h7hh5wbOgGuD0U42', '1', NULL, NULL, NULL),
(242, '91452', '91452', '$2y$10$gp7s/QWGUYacsia3YMmWmOFa.QBRfZT3Q1UsOffmdi6RALDCTURh2', '1', NULL, NULL, NULL),
(243, '91454', '91454', '$2y$10$Xxy83QuZqKUeAVR23RdvoOh4oebSiDiZNDJQ6EM8WObZORed//an.', '1', NULL, NULL, NULL),
(244, '91460', '91460', '$2y$10$0b9j0XWgd471vw1RJiFrpuEO2Z.hc9E0pIBcNVWI66AMlUNvc4Qr.', '1', NULL, NULL, NULL),
(245, '91461', '91461', '$2y$10$1vQKqXp7c/bJs.8tmuVd3e14d8kJnJFH0hgcbWb33pAVZA63EN/Dy', '1', NULL, NULL, NULL),
(246, '91464', '91464', '$2y$10$54pYLXhQbCgMHSe6YpFEUuzZX/iG6QU0u3uuHCS1T6rYQSw7N9z0m', '1', NULL, NULL, NULL),
(247, '91466', '91466', '$2y$10$PwNMW2ENkRZRSh/eRdoBYObUBdd2o0TlY4wuFOv1wdBCNijf4e3TS', '1', NULL, NULL, NULL),
(248, '91467', '91467', '$2y$10$2mUyzdRxCaNKC730dfT3yOqaLCcp1BL34xP7hrKOnZheRP6Ojfi82', '1', NULL, NULL, NULL),
(249, '91470', '91470', '$2y$10$H7h8woWFvY4sUCPr4XPYL.kifiL1XKRT.aG3OF5Ai0115Dl2q.sBW', '1', NULL, NULL, NULL),
(250, '91472', '91472', '$2y$10$boLeS3Nbxzhq4cxsW517rOTDvCSc4TnYv1l5C1gXwvLseGcLvd1Be', '1', NULL, NULL, NULL),
(251, '91473', '91473', '$2y$10$C/EXRGxMDB/tW6GASMyDv.sRP0QWtZ/y6VSUd97QkYvyULrv.mlNe', '1', NULL, NULL, NULL),
(252, '91474', '91474', '$2y$10$1G7gO4SivWgPxlds/0vxouYVgYJbHC7SnMBqVPWIBBsN8Xk2b/KEK', '1', NULL, NULL, NULL),
(253, '91475', '91475', '$2y$10$bGDZtH/3at09G/6K7c3xJunL9Zh8RB6UYDAAQL93YpfYSk2l7lKKq', '1', NULL, NULL, NULL),
(254, '91476', '91476', '$2y$10$ZrZlFA5Nj/6q8s3.KT1/COMffyaTh4fJAiPja86P1y7/kj8s/Uiqy', '1', NULL, NULL, NULL),
(255, '91477', '91477', '$2y$10$bu7WKSQu6LF1izJyinme.Oy0dUOVJk0pJeyVSlSoAR3C2pTV/sqPK', '1', NULL, NULL, NULL),
(256, '91478', '91478', '$2y$10$LQlYNtrlKAczNbF9cjADd.cLOvUAYXGXGxmvhm11boP66E4KUGuv.', '1', NULL, NULL, NULL),
(257, '61002', '61002', '$2y$10$bgcMVP.uyUo6GVygCizzIuZKCKz1tPR4zfhIFsoB7x//fw3RTW09m', '1', NULL, NULL, NULL),
(258, '61003', '61003', '$2y$10$41s.ZifOEp05L6b9XsM3QuLXJKRa36.QquAmCPgEZ00kBLcbXxEdW', '1', NULL, NULL, NULL),
(259, '61035', '61035', '$2y$10$cqBITSyWkYDcRkvj8pYPCO1GJfLypv/6SVqHwPs6W1WhNdtt0ISqy', '1', NULL, NULL, NULL),
(260, '61037', '61037', '$2y$10$oGu7o4WZZMDuyDGWi5yiteBBqQr60.NqTf8QUc08vHf/RUS4Maqhi', '1', NULL, NULL, NULL),
(261, '61045', '61045', '$2y$10$mFAvNqDvcNN/BtcdY2zIOOkMqj/qC4GVF0WUeZouP2quwZfdx.mfC', '1', NULL, NULL, NULL),
(262, '61050', '61050', '$2y$10$J/jmdAEnR9oylbMv6fjFBOCAhRgl89MJt7J5RbWWTrO4WZF.tSCEO', '1', NULL, NULL, NULL),
(263, '61054', '61054', '$2y$10$NaOpulNYUBuDL4.cj4nlNeP449Tvd0PCk9NoVfELs4rsPezaP3kYe', '1', NULL, NULL, NULL),
(264, '61055', '61055', '$2y$10$ZpPAIF.wGUM8UofVizK1f.OQK.pK93p2qMHk3.eXg.SHbvTgOhaxe', '1', NULL, NULL, NULL),
(265, '61060', '61060', '$2y$10$Dye7bPYXhPzj05X.1gSAVu5KgvBO63Jjp8CFGXcsq0UehJdrWc0pu', '1', NULL, NULL, NULL),
(266, '61062', '61062', '$2y$10$C9glASdyKPInQx9QoBQjZe9Kh8WxRAam2t19S1jeKUOAsH8ZY9vFG', '1', NULL, NULL, NULL),
(267, '61070', '61070', '$2y$10$9nXiYN1EnS7AFrNldOuq4.DLeXaG8mVcwfPtUS5sPadMSFktVxm8S', '1', NULL, NULL, NULL),
(268, '61072', '61072', '$2y$10$pfDhqWdbYsir89c/34cUX./F2sjjbQFjLr7BbzmS5lkxwCROfyxx.', '1', NULL, NULL, NULL),
(269, '61079', '61079', '$2y$10$yZCALGknToCf.Y6glcTu1.cClNgaC/Zzq9rzudds66dRpHxcYyPia', '1', NULL, NULL, NULL),
(270, '61082', '61082', '$2y$10$Ob0J7D7JRlgpRhROdEvJRen5H8FH9g/0NZ0/cY5wyvFE3wK00S0qq', '1', NULL, NULL, NULL),
(271, '61109', '61109', '$2y$10$YzcpuEU.ewKa07u/rU51kulPk9YcN1kdhQZiqXP01SnulS/fVN6EG', '1', NULL, NULL, NULL),
(272, '61134', '61134', '$2y$10$nMQxzFYpAkQ/0N7hEMtXvufXpGw0mmLvNQsI9O1eSHHFA0vwU51S6', '1', NULL, NULL, NULL),
(273, '61140', '61140', '$2y$10$4kNRoAHWgeADQWSh35Pqku0tckEc06S3BuaSB3te/XepyqaA7fGDq', '1', NULL, NULL, NULL),
(274, '61142', '61142', '$2y$10$fAoC77..kinMWWpzGQjPX.q6vYu4LZurWOqsjIqPWqED9/fw6iclS', '1', NULL, NULL, NULL),
(275, '61150', '61150', '$2y$10$tMVKK.xoq6RK5c3pJUOFJOAGkJk3HZGdCF8hBkZLWpNaaqgfmjOsS', '1', NULL, NULL, NULL),
(276, '61152', '61152', '$2y$10$H5pedOOMjhfa9gC8DQ4xn.YR.VVzEf4o2UF9DYexnqlKPJInHhmCS', '1', NULL, NULL, NULL),
(277, '61154', '61154', '$2y$10$Y1P5ceiYOsc9.KIbJg2Bl.y8rOcFwzrY71v.lv2q/6uKt5jmYaGwe', '1', NULL, NULL, NULL),
(278, '61155', '61155', '$2y$10$iVyH2FQJ9JLXnmQbqElTKu3c8E4/ge/l3YpCilZm2qKFQl4m.iROe', '1', NULL, NULL, NULL),
(279, '61163', '61163', '$2y$10$5gYoQ8FyaK.vYtUIeka.GOCuKIAw7XtXIgopq3.z.1jR6lNKFJrPS', '1', NULL, NULL, NULL),
(280, '61164', '61164', '$2y$10$xL69gbuRN5XJZBRtdikBY.nVEW5B44FfGGDqjzRsP1m8Z8tkghvX6', '1', NULL, NULL, NULL),
(281, '61170', '61170', '$2y$10$Wxc9lKqCWjAvBqwrE.KcF.fNDKJioRuU.cEj/tr1zguIwODJKCOEq', '1', NULL, NULL, NULL),
(282, '61172', '61172', '$2y$10$QIwsP6MyiDvYdBK16Nff/OzrK6R6QCMGN3v5zZ2ZopDZuKnshYZiC', '1', NULL, NULL, NULL),
(283, '61173', '61173', '$2y$10$sazXzoIUCMxFO3gGqlMN3uuLphqAC.m4mCVbqAA77RBo8ALq85eDS', '1', NULL, NULL, NULL),
(284, '61175', '61175', '$2y$10$zpkfhEVC4Pawz12gS99FfufEtTDT8l3HP7fC2IBM2JwrupepvWzSu', '1', NULL, NULL, NULL),
(285, '61190', '61190', '$2y$10$ElSNXLExhicn923CY72zl.fYb9hSUteKUig2lTS87D7ItJz8PnLbW', '1', NULL, NULL, NULL),
(286, '61191', '61191', '$2y$10$E4QJVjTO0OIV4P178w4msetco8FBcw46sLJM15gUjgjjJGhUH6l4e', '1', NULL, NULL, NULL),
(287, '61193', '61193', '$2y$10$hWsphxlQ2V4dc8rbhg1oT.E7BfZijY8QCenS18Y5p5Q7jFuvOEYSi', '1', NULL, NULL, NULL),
(288, '61197', '61197', '$2y$10$nqZMkA0y5/uUY02mH.RKfOs5fTAn7OXPZe/p9AZGX6mr.wbcoppae', '1', NULL, NULL, NULL),
(289, '61200', '61200', '$2y$10$zr02MYvNDEo/IJF1zdk/BO7e4TV3TM1RZeNq1VYJ8cf0tFPRYZgh2', '1', NULL, NULL, NULL),
(290, '61205', '61205', '$2y$10$FkUc8dJR/Ux4Tbg3Aqo9v.kO57sp47uFRI7lLTXlEyCNuSFRTOgsu', '1', NULL, NULL, NULL),
(291, '61208', '61208', '$2y$10$P2SmXPwQg4kpXp2fb7dQf.jOaiKgRHdPfM2BRvqKQVpqFdcPRjMmW', '1', NULL, NULL, NULL),
(292, '61209', '61209', '$2y$10$XCaSkfYheESQM8Vivbqz2OOaR3eXuE6DDeMEuCTId/JGI48LH6BQO', '1', NULL, NULL, NULL),
(293, '61212', '61212', '$2y$10$EWneEISRNInZng34dagSiO1eMGoLqGPq2ASASrRtA.PAXFEHHTkPe', '1', NULL, NULL, NULL),
(294, '61217', '61217', '$2y$10$XjTqQsrEmX7pG4fPnIToF.9B5QNHr.v5c0OgAGt.XTf48zxT1rGOq', '1', NULL, NULL, NULL),
(295, '61218', '61218', '$2y$10$eG9Nj5HfmWqNgDyqzSvOt.wLxeM6bBG4gP1A.COGZ3x9wq7/FQc4y', '1', NULL, NULL, NULL),
(296, '61219', '61219', '$2y$10$f8kS2UayHYxRDHB1JzNEe.Ex0Qb2DBO3JD3ca2rwwZIavdy9dyJGe', '1', NULL, NULL, NULL),
(297, '61222', '61222', '$2y$10$iKhNMEZ7F0osdAC3dRhe9ewgCcHFcrDqJNX01TyQn/GM4g.237JRK', '1', NULL, NULL, NULL),
(298, '61224', '61224', '$2y$10$rWDt6f.bv3ecKiDDJ3OTdeaTSlgGTGIv72UeBxJbihL32Sw0Vzds6', '1', NULL, NULL, NULL),
(299, '61230', '61230', '$2y$10$FoXK0Brhltnz4WwtjO.lP.ZhH.dTJ53evdy09fHoD2vXlWAiizGhS', '1', NULL, NULL, NULL),
(300, '61233', '61233', '$2y$10$7KsatBFRXTaSADMvAhJfrO7/h.OTCQLi6A3P7lLxlcxr3Hj.rjg9.', '1', NULL, NULL, NULL),
(301, '61234', '61234', '$2y$10$wUELMVDAXg18CxGBIdSZ7.PChgTZipsOj0fSkjsVnw3SoZNY9rVgG', '1', NULL, NULL, NULL),
(302, '61235', '61235', '$2y$10$QSS6dRzxHjKa/xP4P.BIpuPJfsY7HEmf1o/cki20Xba9BWg4TImYC', '1', NULL, NULL, NULL),
(303, '85006', '85006', '$2y$10$5EST01VF5e8JwQXRkBQ8OO3Xt.rPDr8BKECpbSgk4PhYJ./AZ4eTK', '1', NULL, NULL, NULL),
(304, '85013', '85013', '$2y$10$x5aS3xvr2eRqPaTIJB6OmedaqJ9YTbVV.mpeWszFnDzaRhc..20lO', '1', NULL, NULL, NULL),
(305, '85016', '85016', '$2y$10$AyDsJoMAJ6AMThi9eQvVHuGl/kUYhJAxdFvAZOPRI9HqcYOXp4WKG', '1', NULL, NULL, NULL),
(306, '85031', '85031', '$2y$10$ONf.547F3b96WM./ToMfNO4K9HuOpePFLAsTphmhwCfiQ.I4DXSUi', '1', NULL, NULL, NULL),
(307, '85033', '85033', '$2y$10$sM1qZtrfzqQkx5Y7s9hW.uRlc3gzcN/jooIFGaOFvALzzViPvyYIW', '1', NULL, NULL, NULL),
(308, '85035', '85035', '$2y$10$T2bi.70nCL5GSPvuNgveLOFH3/Ix57tffdG5CcFqtQr4E9ymhvgM.', '1', NULL, NULL, NULL),
(309, '85042', '85042', '$2y$10$3JoKy3G1FSX5ICKIXNue7u84XJ0r/D3RokU73l6kA4N1ByLn/QNUi', '1', NULL, NULL, NULL),
(310, '85050', '85050', '$2y$10$lHmlA2ZYk4NzcTb7B4cIB.6UVoYgegIdc3s7gfmirdKDnz/TGhXni', '1', NULL, NULL, NULL),
(311, '85051', '85051', '$2y$10$XFoNFEJ9NQPhpghg1mFz2.pAtIYV/5klJCzxbUEgJ5Gsu1yURiTei', '1', NULL, NULL, NULL),
(312, '85053', '85053', '$2y$10$/bYeZFI/3OY4JaRv9i5IauYJ6YIBEu4fvHfoXjbGmebJ9Xco6xDo.', '1', NULL, NULL, NULL),
(313, '85055', '85055', '$2y$10$6WLw0D9wSg6ATGKVf9odf.1NkMJWEcXE/pBV6VtnNvcx6ZqgbLmQ2', '1', NULL, NULL, NULL),
(314, '85060', '85060', '$2y$10$RJLEw835jnB6e9q3a0UcDu0RG/Xt6zo/sBzIiaxkEOwEISk0xEas6', '1', NULL, NULL, NULL),
(315, '85066', '85066', '$2y$10$G9GvEm7iZxBDIme9UJaMeudi21GOsj4u.RvWpx0F2C4vdB5eZrMgy', '1', NULL, NULL, NULL),
(316, '85070', '85070', '$2y$10$Qja8/L83AabofIlvbZrJ.uME4EAPIJnb5zyB7d51Gp.jx3eOP8vhS', '1', NULL, NULL, NULL),
(317, '85073', '85073', '$2y$10$NgwRE8lNzQA9swZ078JYyu4GEkdhyvv14/i6lhMLy8ngKsq.rJ20m', '1', NULL, NULL, NULL),
(318, '85074', '85074', '$2y$10$qC5I4le.JuFjy0G6PSoNWe.NdxTSJ8YYTiGp/rfndHgscHJHZ3MMu', '1', NULL, NULL, NULL),
(319, '85076', '85076', '$2y$10$gmvFVh69R.IeizZHxm7dAukfFoPWcVuGOTD93gGBa7.H1Tuz2OwK.', '1', NULL, NULL, NULL),
(320, '85078', '85078', '$2y$10$/5DiNKdIuDFKYzRxzrw.wOPoOEiUzxbuC.wl2CB847IjqpPKDoeaO', '1', NULL, NULL, NULL),
(321, '81026', '81026', '$2y$10$8AuX1390N08fVW7/dS3KAOnK6/0L3v3AtcaLEl1tnbBM1IfdiAVaO', '1', NULL, NULL, NULL),
(322, '81047', '81047', '$2y$10$EWBuGUoTKBA3u30qdDXT8OQjsIdA6SysAKJ4Febdbmxw0zBNyJ/vq', '1', NULL, NULL, NULL),
(323, '81080', '81080', '$2y$10$G.T0GhfrTxuFt0KY.WxoTuTJGrmmCU0YFlD5posobWFQVA7aRqiMK', '1', NULL, NULL, NULL),
(324, '81083', '81083', '$2y$10$BtUDZa5DAARhL88cBK4igOi52JvIh3zhNmUmmGSayXBa1hTIdhE.q', '1', NULL, NULL, NULL),
(325, '81086', '81086', '$2y$10$gP6AD.s762HXowMvFMarqeiJoCbREkoT2jhKQggY3sUcwnGfveei2', '1', NULL, NULL, NULL),
(326, '81089', '81089', '$2y$10$Ba5aIV7moZb2K4Pa8I.hceSZDHPT7qOwSpPg18B67peEuAN00/l/C', '1', NULL, NULL, NULL),
(327, '81090', '81090', '$2y$10$8RmnUpg1jUq4FvfcgCoBA.CEV3.JQsLYXw6NbRWh4w/rf.ixQ4Ln2', '1', NULL, NULL, NULL),
(328, '81096', '81096', '$2y$10$L5XTo3N/MT7Z/JMKdXAYv.HtkRf1HwCrKFsnL7OsOHfdo84V0clSi', '1', NULL, NULL, NULL),
(329, '81097', '81097', '$2y$10$9BgT4eULuBit7rEAazC9EeQ3MbXEROmqFB5.kZ1EHkcTd3gHeydsa', '1', NULL, NULL, NULL),
(330, '81098', '81098', '$2y$10$w9oftkHaCQRVefWsx30Bf.GfK17WkOdCSfsYs.we0NB759aTBlsbm', '1', NULL, NULL, NULL),
(331, '81099', '81099', '$2y$10$iE6P0BbCgraO8I8oy0kHwudIk72cQx2e1RDkKEWbnqTmXe36V1iO2', '1', NULL, NULL, NULL),
(332, '82001', '82001', '$2y$10$JKDeOuMUiwCAcVzhXnF9SOWognhGHzp9d/cBynIQp3UitUH13ivQG', '1', NULL, NULL, NULL),
(333, '82003', '82003', '$2y$10$.R90MijpDBWLOA4hKbg.v.23Z8Wv2Elsg5dZgvWMAfdBmUnM6D02q', '1', NULL, NULL, NULL),
(334, '82004', '82004', '$2y$10$EZn.6a3.6pTRMWvXdv0o.eKmWNPDHk8PgdfStyrbTiyOKSfygQUa.', '1', NULL, NULL, NULL),
(335, '82005', '82005', '$2y$10$jhB.G4uePbWiA1VSx19hfuunybKPkq/QQJLK52vSm4Mlc5WNHcLHe', '1', NULL, NULL, NULL),
(336, '82019', '82019', '$2y$10$rLj.1E51pL0x3wTSwYZ70uDy/heFMz0BYkrd7XVHI45q9I9A7fshC', '1', NULL, NULL, NULL),
(337, '82023', '82023', '$2y$10$mDS7.WvDATLG57UDjhqcievdJpjhWqW1gNju79GptHiMPF3B1GF3a', '1', NULL, NULL, NULL),
(338, '82031', '82031', '$2y$10$ywf3/bMuHSMjmUPhl0hGCOU0.iHcT6wVnqvept/YwPKkQJwzUmIe.', '1', NULL, NULL, NULL),
(339, '82035', '82035', '$2y$10$C6omaXw0Cci.WLlowTQbt.LKHH6dfH7ZP5yIQz18lTddM6TWH7qJW', '1', NULL, NULL, NULL),
(340, '82037', '82037', '$2y$10$ME.6oefeX4MCmLydl95yAOE8/.wgjiTN6UepcALBOIxmUDvCmcSgW', '1', NULL, NULL, NULL),
(341, '82038', '82038', '$2y$10$VWizY96fF2im79oRQ7A6fOLBArInKk/48ntNgQ0GDIzr8tnGDECF2', '1', NULL, NULL, NULL),
(342, '82040', '82040', '$2y$10$luZ88rW/eG8VvMmKiwW0Fe0QSSAmHtwS5ghuAGozsS/yI6Yt2hqKe', '1', NULL, NULL, NULL),
(343, '82043', '82043', '$2y$10$RlD1bYBqnSKJleWHDXdSbOb67CtggV.Jvs4TDr6/ZVDm6Q7UNbPo.', '1', NULL, NULL, NULL),
(344, '82044', '82044', '$2y$10$xQ/QnV6D.4ck7NnJMM4NkuYxbgFVKhPhp5rL/OrAVaUXjUtkdwSju', '1', NULL, NULL, NULL),
(345, '94002', '94002', '$2y$10$pIB7GwzQntrLx.aiXCo/kurFAgAMZaoM9xtF1Njq.nZ1XTc3OnsDe', '1', NULL, NULL, NULL),
(346, '94003', '94003', '$2y$10$RkzybX7e3mXLVl7szzNRge4LJhJTj8qyW0Q/2q9lj2v8G1mlSAVn2', '1', NULL, NULL, NULL),
(347, '94004', '94004', '$2y$10$WbHPPBtNYhJ3lFQqLzRlpeDHNLgfigOsq9Hjh3AKgLof6a0bqZ2FS', '1', NULL, NULL, NULL),
(348, '94005', '94005', '$2y$10$jmE51laOw8IQ7L/JkyZugOdzllZEtu5uMJ..GyfFewRxMjzBe/Tve', '1', NULL, NULL, NULL),
(349, '94008', '94008', '$2y$10$Mz10k9aNGxkMxwzZ32kOE.hIC4SEFOajrzX9iataXDEnTa7edHuxi', '1', NULL, NULL, NULL),
(350, '94012', '94012', '$2y$10$gY.Z5AdZiQTZJGOXhRn3i.6s0pZuRCambqaI/Z07sB5lhbi2APxme', '1', NULL, NULL, NULL),
(351, '94013', '94013', '$2y$10$uR21vT/aGyq/EecaA69VZe6CBqKoyvQIoUxMtB9OuyBYuFWfsXz5q', '1', NULL, NULL, NULL),
(352, '94015', '94015', '$2y$10$HsZtUHmJ8lbR9xq4eQ.Nk.Fm59omty9umvaA3Mz/nJ.9IgT8Kc4Gu', '1', NULL, NULL, NULL),
(353, '94016', '94016', '$2y$10$n67/I0JuqWBZDU8xskSpSeiT.DU5KLIhvlMYrVM24kpuW0BOTXfJy', '1', NULL, NULL, NULL),
(354, '94018', '94018', '$2y$10$d2wxsN7o55uWwOBYUirFC.qPFY/suIcsxZGD2vFT17V2Dhgp2THgm', '1', NULL, NULL, NULL),
(355, '94019', '94019', '$2y$10$QRE..sOqi8eTE2PgS9hgoemWEnDgPiW46lRVXgq/O3K21xg86TqMK', '1', NULL, NULL, NULL),
(356, '94020', '94020', '$2y$10$3fvzkeS4cafUc/3ZsyZt/uHCtGAFHIhHQSxVpONWGavRNA2btrNXq', '1', NULL, NULL, NULL),
(357, '94024', '94024', '$2y$10$Elk958vT.J0HPMW9QtqyVuRf2ZXX2IKEdSTA9YXvyg0Qxn1IjmmmG', '1', NULL, NULL, NULL),
(358, '94026', '94026', '$2y$10$OFD.DdPLPMLOwJZcLdK5XOgIX85LdtFro.MpSOLzO8K527iMpAxRO', '1', NULL, NULL, NULL),
(359, '41007', '41007', '$2y$10$IdpwH7njA8RQU5m5GITFiOu0LMSOVgSgBs32PYhazbgs1AbgoSDbm', '1', NULL, NULL, NULL),
(360, '41009', '41009', '$2y$10$NzGkBiasOP/Ebbasi970wulV0TkoRKdmRNU3DrkblBfGK.q2hrZK.', '1', NULL, NULL, NULL),
(361, '41011', '41011', '$2y$10$VBm0MtU8X3MJIn8Sflla/ejMOyZf69RmhyZ59/rLJhMUBVKIpaQ.G', '1', NULL, NULL, NULL),
(362, '41017', '41017', '$2y$10$hAhZypE9fm143O6Vas0qU.mLcxnxF/hfhtD9zRTgfhqU.fa8FO4zu', '1', NULL, NULL, NULL),
(363, '10338', '10338', '$2y$10$sGf3RzTxOxWxGr6X3kQlIuQrNpWhRkTS.cntHNryZgeQES9EGXq0m', '1', NULL, NULL, NULL),
(364, '10384', '10384', '$2y$10$pNSgPiS.JymcAZgiGyiIau2GK2KyTf/0GpkdfPT3BTdHx3gDjLe7q', '1', NULL, NULL, NULL),
(365, '10400', '10400', '$2y$10$JKxYPamrLh9KL9lYUejAme/hKAmWT0B2iBhNw920URSFC8t9FRrpq', '1', NULL, NULL, NULL),
(366, '10403', '10403', '$2y$10$GbE/BOHwrHjUaYlC6LBy4.t9e0BHvEUicl6mnVYxf5XcRWnmfVeue', '1', NULL, NULL, NULL),
(367, '10411', '10411', '$2y$10$8RoEyx2Qk40ufPGAcBPuS.j7n2F9lWfkRd2Wp1aP0/wuslBUyn00.', '1', NULL, NULL, NULL),
(368, '10412', '10412', '$2y$10$.Tib27txYIyfcg6ForMsheJodMRiV9hvk.FRrrXml8U10lwrJk4OG', '1', NULL, NULL, NULL),
(369, '10413', '10413', '$2y$10$8sp0TmzJx3Hm7bSQ0LnF7eQugRsyLc2QFTW8bfQSRMMuIV7CQNTm2', '1', NULL, NULL, NULL),
(370, '10414', '10414', '$2y$10$QdsU.X8QBT9Pye60WxsmN.3NMlogqvCPn2UjDYCDaxY8L7KCryl2O', '1', NULL, NULL, NULL),
(371, '10415', '10415', '$2y$10$zEmfa/Jh5mdntzA.uqsEr.18TieCeH6g7495pKW4CiWIEdFS2Zyte', '1', NULL, NULL, NULL),
(372, '70416', '70416', '$2y$10$ktJL7kF5k0Zn3OBvnz8BHuuI1W5gdCI/a.2yzKigllEHhK5SmWyny', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_detail`
--

CREATE TABLE `users_detail` (
  `Code_Staff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Card_Staff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name_Thai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name_Eng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Faction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Workplace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Working_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateofBirth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HireDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IDCardNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FamilyStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JGStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Yearsofservice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TelephoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Current_Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Resigned_Date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Vacation_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sick_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Business_leave_necessary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Maternity_leave_paid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Maternity_leave_not_paid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ordination_leaven` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Marriage_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Accident_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Military_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sterilization_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Time_offset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Leave_without_pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sick_leave_not_receiving_wages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cremation_leave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Leave_instead_of_holidays` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Leave_to_study` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Take_a_break` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Absence_from_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.svg',
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `Company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_detail`
--

INSERT INTO `users_detail` (`Code_Staff`, `Card_Staff`, `Name_Thai`, `Name_Eng`, `Faction`, `Department`, `Degree`, `Workplace`, `Working_status`, `Position`, `DateofBirth`, `StartDate`, `HireDate`, `IDCardNumber`, `Sex`, `FamilyStatus`, `JGStatus`, `Yearsofservice`, `Age`, `Nickname`, `TelephoneNumber`, `Address`, `Current_Address`, `Resigned_Date`, `Vacation_leave`, `Sick_leave`, `Business_leave_necessary`, `Maternity_leave_paid`, `Maternity_leave_not_paid`, `Ordination_leaven`, `Marriage_leave`, `Accident_leave`, `Military_leave`, `Sterilization_leave`, `Time_offset`, `Leave_without_pay`, `Sick_leave_not_receiving_wages`, `Cremation_leave`, `Leave_instead_of_holidays`, `Leave_to_study`, `Take_a_break`, `Absence_from_work`, `img`, `active`, `Company`, `created_at`, `updated_at`) VALUES
('10412', '10412', 'นางสาวอรวรรณ วงศ์ประยุกต์', NULL, 'Gold Trader', 'Gold Trader', 'Division Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'General Manager (NGG TRADE)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'แป๊ป', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10412.jpg', '1', 'NGG TRADE CO., LTD.', NULL, NULL),
('51301', '51301', 'นายบุญเรือง ทำเนาว์', NULL, 'General Affairs', 'General Affairs (Maintenance)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Maintenance Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เก่ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51301.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('21041', '21041', 'นายชาญวิทย์ จุทสิงห์', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Prepare Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วิทย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21041.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22009', '22009', 'นางดวงใจ ทรงด้วงทุม', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ดวง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22009.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('61191', '61191', 'นางสาวกระจันทร์ ลีลาธรรมสัจจะ', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ฝัง)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เดียร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61191.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('91138', '91138', 'นางสาวนริศรา ลาวิลัย', NULL, 'Sales', 'Sales Multi Brand', 'Officer', 'เซ็นทรัลอุดรธานี', 'อุดรธานี', 'PC (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'น้ำฝน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91138.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91327', '91327', 'นางสาวสุดารัตน์ หมวดเมือง', NULL, 'Marketing', 'Marketing Communication (Online)', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Digital Marketing Supervisor (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ของขวัญ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91327.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91450', '91450', 'นายธราเทพ สุกแสงจันทร์', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91450.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('94003', '94003', 'นายฐิติพงษ์ งามวิศิษฐ์ศิลป์', NULL, 'Back Office & ERP', 'ERP', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'ERP Support Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เอ็ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94003.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('51235', '51235', 'นางสาวชมพูนุช ประโมงเขต', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ชมพู่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51235.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('61037', '61037', 'นายวิชัย พึ่งดอน', NULL, 'Factory', 'Production (งานแต่งประกอบ)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (แต่งประกอบ)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ชัย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61037.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('22025', '22025', 'นางสาววิมลรัตน์ น้อยกลาง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แหวว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22025.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('61222', '61222', 'นางสาวชญณัฐ พนารินทร์', NULL, 'Purchasing', 'Purchasing', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Purchasing Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'หน่อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61222.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('91230', '91230', 'นายวีระพล วงศ์สมุทร', NULL, 'Sales', 'Sales Alternative', 'Officer', 'นิมมาน เชียงใหม่', 'เชียงใหม่', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เมท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91230.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91375', '91375', 'นายสุชิน พิชิ', NULL, 'Customer Service', 'Customer Service', 'Manager', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Customer Service Manager (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'จิม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91375.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91418', '91418', 'นางสาวณัฐนิชา บุญเรือง', NULL, 'Interior & Visual Merchandise', 'Interior & Visual Merchandise', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Interior & Visual Merchandiser Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อันอัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91418.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('81086', '81086', 'นางสาววิภาภรณ์ สานิชวรรณ', NULL, 'Factory', 'Administration & Accounting', 'Officer', 'สำนักงานราชบุรี', 'ราชบุรี', 'Administration & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จุ๊บแจง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81086.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('51014', '51014', 'นางวรัญญา คงควร', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พุ่ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51014.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('61070', '61070', 'นางสาวเบญจวรรณ ทับทอง', NULL, 'Factory', 'Production (งานชุบ)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewellry Maker Officer (ชุบ)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบญ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61070.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('51049', '51049', 'นายวานัด บุษบง', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51049.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51172', '51172', 'นางสาวอรพิน ป้องบุญจันทร์', NULL, 'Factory', 'Administration', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Administration Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มิก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51172.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51277', '51277', 'นางสาวสุดารัตน์ สุขบาล', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (บล็อก)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ส้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51277.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('21050', '21050', 'นายบงคต แท่นแก้ว', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Prepare Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นวย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21050.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22027', '22027', 'นางสาวพรกมล วารีจันทร์', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เก๋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22027.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22028', '22028', 'นางสาวลำภู ซื่อเสมอ', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ภู่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22028.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22029', '22029', 'นายสุรัตน์ จันทราษี', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เหมียว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22029.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22030', '22030', 'นางสิรินยา สำนวนกลาง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22030.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22031', '22031', 'นายชลอ ทรงด้วงทุม', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ลอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22031.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22032', '22032', 'นายประจักษ์ สุรินทร์', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โย่ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22032.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22033', '22033', 'นางสาวจำลอง รักมิตร', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ลอง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22033.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('61002', '61002', 'นางสาวนิตยา แก้วศรี', NULL, 'Factory', 'Sales', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Admin Officer (Support)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61002.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61003', '61003', 'นางสาวมนัสนันท์ มาตดก', NULL, 'Factory', 'Supply Chain', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Material Control Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอ่ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61003.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61035', '61035', 'นายสมยศ แก้วทอง', NULL, 'CAD Design', 'CAD Design', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'CAD Designer Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ยศ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61035.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61218', '61218', 'นายนรินทร์ ชิณแสน', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (แม่พิมพ์)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'รินทร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61218.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('85060', '85060', 'นางสาวจุฑามาศ บุตรรักษา', NULL, 'Akimitsu', 'Front of house Service', 'Officer', 'แพชชั่น ระยอง', 'ระยอง', 'Waitress', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พลอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85060.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('82001', '82001', 'นางหมี ควบ', NULL, 'Factory', 'Administration & Accounting', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Cleaning Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'หมี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82001.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('82003', '82003', 'นายสุนัย ทรายทอง', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Packing Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'สุนัย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82003.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('61219', '61219', 'นางสาววิลาสินี ชื่อเพราะ', NULL, 'Creative & Design', 'Creative & Design', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Designer Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แป้ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61219.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61224', '61224', 'นายวศิน จริยวัฒนากุลกิจ', NULL, 'Factory', 'Quality Management', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'QA Supervisor (ตัวเรือน)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'จ๊อด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61224.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61230', '61230', 'นางสาวผกาวรรณ โบศรี', NULL, 'Creative & Design', 'Creative & Design', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Designer Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบสท์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61230.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61233', '61233', 'นางสาวแพรวเพชร นอสูงเนิน', NULL, 'Factory', 'Quality Management', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'QC Officer (งานหล่อ)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กระแต', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61233.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61234', '61234', 'นายสุจินดา เขตชัยภูมิ', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต่าย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61234.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61235', '61235', 'นางสาวธิดาภรณ์ นรสาน', NULL, 'Factory', 'Supply Chain', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Purchasing Officer (จัดซื้อเครื่องมือ)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61235.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('91006', '91006', 'นายสมชาติ ไพบูลย์เรืองสุข', NULL, 'Management', 'Management', 'Division Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'General Manager (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'สมชาติ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91006.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91025', '91025', 'นางสาวสุวิภา โพธิ์ชุ่ม', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แพรว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91025.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91030', '91030', 'นางสาวเอมิกา ชาญหิรัญ', NULL, 'Sales', 'Sales Alternative', 'Supervisor', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Sale Supervisor (Support Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91030.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91047', '91047', 'นายระบอบ วันนา', NULL, 'Sales', 'Sales Alternative', 'Officer', 'สยามดิสคัฟเวอรี่', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แน๊ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91047.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91059', '91059', 'นายนพดล ฉายสิทธิ์', NULL, 'Interior & Visual Merchandise', 'Interior & Visual Merchandise', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Interior & Visual Merchandiser Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'โอ๊ต', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91059.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91060', '91060', 'นายวาจิศ จินดากุล', NULL, 'Internal Audit', 'Internal Audit', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Internal Audit Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แจน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91060.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91066', '91066', 'นายพนม แจ่มพะโยม', NULL, 'Customer Service', 'Repair Watch', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Watch Maker Officer (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91066.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('82005', '82005', 'นางดาว บัวงาม', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Packing Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'ดาว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82005.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('91221', '91221', 'นายณรงค์ วรรณพุก', NULL, 'Sales', 'Sales Alternative', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Sale Officer (Visaul Merchandiser Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ออฟ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91221.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91233', '91233', 'นางสาววานิสสา กิ่งมาลา', NULL, 'Graphic & Design', 'Photographer', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Photographer & Graphic Designer Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91233.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91238', '91238', 'นายพัชร์ รักษ์บำรุง', NULL, 'Graphic & Design', 'Graphic & Design', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Art Director Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เขม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91238.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91247', '91247', 'นายเป็นไท ถาวร', NULL, 'Marketing', 'Branding', 'Manager', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Marketing Manager (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เปรม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91247.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91251', '91251', 'นายจิรพล ว่องวิบูลย์รัตน์', NULL, 'Interior & Visual Merchandise', 'Interior & Visual Merchandise', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Interior & Visual Merchandiser Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'ต่อ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91251.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91254', '91254', 'นางสาววิชุดา ประทีปรัมย์', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เซ็นทรัลเวิลด์', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กิ๊ฟ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91254.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91257', '91257', 'นางสาวสุรีย์ มะหะหมัด', NULL, 'Sales', 'Sales Multi Brand', 'Officer', 'เซ็นทรัลลาดพร้าว', 'กรุงเทพมหานคร', 'PC (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไมล์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91257.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91260', '91260', 'นายณัฐพงศ์ นาคขุนทด', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เซ็นทรัลเวิลด์', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91260.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91262', '91262', 'นางสาววิไลศักดิ์ เจิมขุนทด', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เดอะมอลล์โคราช', 'นครราชสีมา', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แก่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91262.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91264', '91264', 'นางสาวปณิชา ภานะรมย์กุล', NULL, 'Operation', 'Operation', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Operation Execuitve Officer (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กาญจน์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91264.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91275', '91275', 'นายพิเชษฐ์ ณรงค์อินทร์', NULL, 'Customer Service', 'Customer Service', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Customer Service Officer (Front) (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'คิงส์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91275.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91279', '91279', 'นายณรงค์ แซ่กี้', NULL, 'Sales', 'Sales Alternative', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เซน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91279.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91287', '91287', 'นายอนุชา วงศ์พินิจ', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เซ็นทรัลนครราชสีมา', 'นครราชสีมา', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มอส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91287.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91290', '91290', 'นายเอกชัย สระทองพร', NULL, 'Customer Service', 'Repair Watch', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Watch Maker Officer (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91290.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91364', '91364', 'นายสมชาย แก้วอะดิษฐ์', NULL, 'Marketing', 'Marketing', 'Supervisor', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'E-Commerce Supervisor (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'บูรณ์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91364.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91373', '91373', 'นางสาวสมฤดี ขำรักษ์', NULL, 'Marketing', 'Marketing', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Import & Export Officer (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ทิพย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91373.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91376', '91376', 'นายนฤดล ป่วนกระโทก', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เซ็นทรัลเชียงใหม่', 'เชียงใหม่', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เหนือ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91376.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91385', '91385', 'นางสาวมีนนา วีตระกูล', NULL, 'Sales', 'Sales Alternative', 'Supervisor', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Sale Supervisor (Consignment) (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'กล้วย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91385.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91392', '91392', 'นางสาวโชติรส ตนคลัง', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'เซ็นทรัลภูเก็ต', 'ภูเก็ต', 'PC (CTF) (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นัตตี้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91392.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91395', '91395', 'นายนฤดล จีระวิวิธพร', NULL, 'Graphic & Design', 'Graphic & Design', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Graphic Design Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เซฟ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91395.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91396', '91396', 'นางสาวเนตรนารี ยืนยงชัยวัฒน์', NULL, 'Sales Support', 'Sales Support', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sales Support Officer (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91396.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91398', '91398', 'นางสาวพรรณทิพา ข่าทิพย์พาที', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'เทอร์มินอล 21 พัทยา', 'ชลบุรี', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิดหน่อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91398.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91399', '91399', 'นายสรศักดิ์ เตชะธารวณิช', NULL, 'Marketing', 'Branding', 'Ast.Manager', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Assistant Brand Manager (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'บุ๊ค', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91399.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91400', '91400', 'นายพลวัฒน์ สิทธิเจริญ', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เทอร์มินอล 21 พัทยา', 'ชลบุรี', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91400.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91402', '91402', 'นางสาวมินตรา มานะลอ', NULL, 'Marketing', 'Sport Marketing', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Marketing Admin (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มิ้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91402.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91403', '91403', 'นายตุลา บูบ่ากา', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เซ็นทรัลภูเก็ต', 'ภูเก็ต', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แบงค์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91403.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91405', '91405', 'นางสาวเกียรติสุดา คำแก้ว', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'เซ็นทรัลภูเก็ต', 'ภูเก็ต', 'PC (CTF) (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มายด์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91405.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91415', '91415', 'นางสาวนีรวรรณ บวบเมือง', NULL, 'Sales', 'Sales', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sales Event Roadshow Supervisor (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เมย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91415.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91476', '91476', 'นายปรัชญา สังคง', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เมกาบางนา', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91476.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('85031', '85031', 'นายนัฐพล ธีระพันธุ์พิเชฏฐ์', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'แพชชั่น ระยอง', 'ระยอง', 'Demi Chef', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นัท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85031.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('85033', '85033', 'นางสาวนันทิชา สุกิจปาณีนิจ', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'แพชชั่น ระยอง', 'ระยอง', 'Demi Chef', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุ่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85033.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('91416', '91416', 'นางสาวชิดชนก คล้ายประเสริฐ', NULL, 'Customer Service', 'Customer Service', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Customer Service Officer (Online) (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มาย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91416.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91473', '91473', 'นายโสภณ หวังศิริรุ่งเรือง', NULL, 'Lawyer', 'Lawyer', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Lawyer Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เอ็กซ์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91473.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91474', '91474', 'นายกิตติธัช จึงมานะกิจ', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เดอะมอลล์ บางแค', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ธา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91474.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91475', '91475', 'นายซาอีด พัฒนาวรกุลชัย', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'เซ็นทรัลภูเก็ต', 'ภูเก็ต', 'PC (CTF) (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อะโอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91475.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91477', '91477', 'นางน้องแอน บัวรมย์', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เดอะมอลล์งามวงศ์วาน', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91477.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91478', '91478', 'นายชัยพร สุพะตะ', NULL, 'Sales', 'Sales Alternative', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตี๋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91478.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('85006', '85006', 'นายเอมานูเอเล่ เซร์ร่า', NULL, 'Management', 'Management', 'Division Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'General Manager (AKI)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'เอ็ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85006.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('85013', '85013', 'นางสาวพัชรินทร์ ศรีสมบูรณ์', NULL, 'Operation', 'Wellfare', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Coffee Shop Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตั๊ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85013.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('85016', '85016', 'นายเบอร์โน เทอรี่', NULL, 'Management', 'Management', 'Division Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'General Manager (Cherchim)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'เทียรี่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85016.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('85055', '85055', 'นายกรณัฏฐ์ ทรัพย์ชื่น', NULL, 'Akimitsu', 'Front of house Service', 'Ast.Manager', 'แพชชั่น ระยอง', 'ระยอง', 'Assistant Restaurant Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'ป๊อป', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85055.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('94025', '94025', 'นางสาววรัธยา คงคาสุริยา', NULL, 'Front Line & CS', 'Front Line', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Business Analysis Audit Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไข่มุก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94025.jpg', '1', NULL, NULL, NULL),
('94026', '94026', 'นางสาวสายทิพย์ พักตร์ใส', NULL, 'Back Office & ERP', 'ERP', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior ERP Support Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'อุ้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94026.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('81026', '81026', 'นายทวีทรัพย์ ออมสิน', NULL, 'Factory', 'Production & Maintenance', 'Officer', 'สำนักงานราชบุรี', 'ราชบุรี', 'Production & Maintenance Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เท่ห์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81026.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('81047', '81047', 'ว่าที่ร้อยตรีชูชีพ ขุนทอง', NULL, 'Management', 'Management', 'Division Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'General Manager (Tai)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'ชีพ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81047.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('81080', '81080', 'นางสาวปิยนันท์ นัฐเศรษฐสิริ', NULL, 'Planning & Logistics', 'Planning & Logistics', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Planning & Logistics Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81080.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('81083', '81083', 'นางสาวธนารัตน์ วินทะไชย', NULL, 'Sales & Marketing', 'Sales & Marketing', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Tele Sales Executive Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบลล์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81083.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('81089', '81089', 'นายศรัณย์รัตน์ โล่เกียรตินันท์', NULL, 'Sales & Marketing', 'Sales & Marketing', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sales Supervisor (Perform Duties Instead)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ลูกหมี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81089.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('81090', '81090', 'นางสาวทศวรรณ จำเล', NULL, 'Factory', 'Quality Assurance & Development', 'Officer', 'สำนักงานราชบุรี', 'ราชบุรี', 'Quality Assurance & Development Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เก๋', '089-5519190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81090.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('81096', '81096', 'นางสาวสุจิตรา ถาวรประสิทธิ์', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จุ๋ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81096.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('81097', '81097', 'นางสาวเจนจิรา ชาติยานนท์', NULL, 'Sales & Marketing', 'Sales & Marketing', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Coordinator & Administration Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุ่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81097.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('81098', '81098', 'นายนนทพัฒน์ วรรธนะอมร', NULL, 'Planning & Logistics', 'Planning & Logistics', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Planning & Logistics Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต่อ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81098.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('81099', '81099', 'นางสาวสวรส ปัญญาโส', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'รส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81099.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('82019', '82019', 'นางสาวปิยฉัตร วงค์ทอง', NULL, 'Factory', 'Quality Assurance & Development', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Quality Control Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'แก้ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82019.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('82023', '82023', 'นางแก้วกาญจ์ ชนะกุลพีละ', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Production Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'แก้ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82023.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('51002', '51002', 'นายธนาศักดิ์ ทรัพย์หิรัญกุล', NULL, 'Management', 'Management', 'Executive', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Chief Executive Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'CEO', NULL, NULL, 'คุณธนา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51002.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51003', '51003', 'นายณรงค์กช คมภาสกร', NULL, 'Management', 'Management', 'Executive', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'General Manager (CIEN)', NULL, NULL, NULL, NULL, NULL, NULL, 'CEO', NULL, NULL, 'คุณกช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51003.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51006', '51006', 'นายทองอินทร์ บานเย็น', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Sr.Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Jewelry Maker Supervisor (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'เบี้ยว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51006.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51009', '51009', 'นางสาวนาตยา จ่าพิชม', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แอน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51009.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51011', '51011', 'นางสาวบุศรินทร์ พานิชสิทธิ์', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51011.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51012', '51012', 'นายผาย วงษ์สมัน', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ผาย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51012.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51018', '51018', 'นายสมพร อ่าวรุ่งเรือง', NULL, 'Factory', 'Quality Management', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Quality Control Supervisor (พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ติ๊ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51018.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51020', '51020', 'นางสาวสายพิน ถินนอก', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51020.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51021', '51021', 'นายสุจิตร พลเมืองหล้า', NULL, 'Factory', 'Quality Management', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Quality Assurance Supervisor (พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'จิตร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51021.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51023', '51023', 'นางสาวอังคนา เอี่ยมนอก', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Supervisor (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ตุ่ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51023.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51025', '51025', 'นางสาวอินธิรา เนียมหอม', NULL, 'Factory', 'Production (งานติดพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ติดพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กิ่ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51025.jpg', '1', 'CIEN CO., LTD.', NULL, NULL);
INSERT INTO `users_detail` (`Code_Staff`, `Card_Staff`, `Name_Thai`, `Name_Eng`, `Faction`, `Department`, `Degree`, `Workplace`, `Working_status`, `Position`, `DateofBirth`, `StartDate`, `HireDate`, `IDCardNumber`, `Sex`, `FamilyStatus`, `JGStatus`, `Yearsofservice`, `Age`, `Nickname`, `TelephoneNumber`, `Address`, `Current_Address`, `Resigned_Date`, `Vacation_leave`, `Sick_leave`, `Business_leave_necessary`, `Maternity_leave_paid`, `Maternity_leave_not_paid`, `Ordination_leaven`, `Marriage_leave`, `Accident_leave`, `Military_leave`, `Sterilization_leave`, `Time_offset`, `Leave_without_pay`, `Sick_leave_not_receiving_wages`, `Cremation_leave`, `Leave_instead_of_holidays`, `Leave_to_study`, `Take_a_break`, `Absence_from_work`, `img`, `active`, `Company`, `created_at`, `updated_at`) VALUES
('51030', '51030', 'นางสุกัญญา แอลเล็บ', NULL, 'Service Controller', 'Service Controller', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Maid Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ยะรอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51030.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51031', '51031', 'นางสาวสุดใจ ธนะคำดี', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เป้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51031.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51032', '51032', 'นายยุทธนา ทองคำขาว', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Jewllry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'ยุทธ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51032.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('82031', '82031', 'นายกรกวรรษ วงศ์ทอง', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Mechanical Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'กร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82031.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('61045', '61045', 'นางสาวเสาร์วรัก แสนสิลา', NULL, 'Factory', 'Administration', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Administration Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิ่ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61045.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61050', '61050', 'นายฉัตรพล อ้วน', NULL, 'Factory', 'Production (งานแต่งประกอบ)', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Supervisor (แต่งประกอบ)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'หวัง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61050.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61054', '61054', 'นายอธิคุณ อาจรงค์', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (แม่พิมพ์)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นึก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61054.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61055', '61055', 'นายเทพฤทธิ์ ห่วงจริง', NULL, 'Factory', 'Factory', 'Department Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Factory Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : F', NULL, NULL, 'โต้ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61055.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61060', '61060', 'นางสาวณัฏฐ์ถยา รูปสะอาด', NULL, 'Factory', 'Production (งานหล่อ)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ฉีดเทียน)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แดง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61060.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61062', '61062', 'นายคงเดช สุขกำเนิด', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ฝังไร้หนาม)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เดช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61062.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61072', '61072', 'นางสาวสุนิษา อ้อยหอม', NULL, 'Factory', 'Production (งานขัด)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ขัด)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61072.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61079', '61079', 'นายเสาร์คำ ปัญญาคำ', NULL, 'Factory', 'Production (งานฝัง)', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Supervisor (ฝัง)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เสาร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61079.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61082', '61082', 'นายวิไน น้อยคำแพง', NULL, 'Factory', 'Production (งานเลเซอร์)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เลเซอร์)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โน๊ะ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61082.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61109', '61109', 'นายเวียงชัย เทียมทะนงค์', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (แม่พิมพ์)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เตี้ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61109.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61134', '61134', 'นายยอด อาจไชยชนะ', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ฝังไร้หนาม)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ยอด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61134.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61140', '61140', 'นายปรีชา แก้วไข่สอน', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (แม่พิมพ์)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แป๋ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61140.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61142', '61142', 'นายพิศณุ หริพงษ์', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (แม่พิมพ์)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61142.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61150', '61150', 'นายจันทร วงศ์เสนา', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ฝัง)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตั๊ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61150.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61152', '61152', 'นายนพดล นายเฮือง', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ฝัง)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นพ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61152.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('51038', '51038', 'นางสาวยวนใจ งามราศรี', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตุ๊กกี๊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51038.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51040', '51040', 'นายทวีวัฒน์ โศจิพิทักษ์พงษ์', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Jewllry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'โก้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51040.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51042', '51042', 'นายณรงค์ บัวละคร', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Supervisor (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'อี๊ด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51042.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51043', '51043', 'นายเกียรติ เหล่าวณิชย์พงษ์', NULL, 'Factory', 'Factory', 'Department Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Factory Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : F', NULL, NULL, 'เกียรติ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51043.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51048', '51048', 'นางสาวประทานพร หมื่นอินทร์', NULL, 'Factory', 'Administration', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Administration Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51048.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51053', '51053', 'นางสาวจีระพันธุ์ บุญดิษฐ', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ชล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51053.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51059', '51059', 'นายวีระพงษ์ รูปศิริ', NULL, 'General Affairs', 'General Affairs (Messenger)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Messenger Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51059.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51062', '51062', 'นางพงษ์พงา มณีไพโรจน์', NULL, 'Service Controller', 'Service Controller', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Secretary & Service Controller Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ดี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51062.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51064', '51064', 'นายทนง วรรณโชติ', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Supervisor (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ทนง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51064.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51085', '51085', 'นายธัมณิชพน ศรีลาภ', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (บล็อก)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โรจน์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51085.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51113', '51113', 'นางสังวาลย์ ศรีคล้าย', NULL, 'Service Controller', 'Service Controller', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Maid Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วาล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51113.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51115', '51115', 'นายสรายุทธ นามศิลป์', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (บล็อก)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51115.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51140', '51140', 'นางสาวปาริชาติ บุญดิษฐ', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตุ้ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51140.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51150', '51150', 'นายธนวัฒน์ พลเมืองหล้า', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (บล็อก)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต้า', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51150.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51158', '51158', 'นางสาวรพีพรรณ ชัยอามาตย์', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แจ๋ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51158.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51159', '51159', 'นางสาวสุดารักษ์ บูรณะ', NULL, 'Factory', 'Production (งานติดพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ติดพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปุ๊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51159.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51168', '51168', 'นางสาวสุชาดา กุมภรัตน์', NULL, 'Service Controller', 'Service Controller', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Maid Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หน่อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51168.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51170', '51170', 'นายปัญญา อังคะพนมไพร', NULL, 'General Affairs', 'General Affairs (Maintenance)', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Maintenance Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'รส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51170.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51171', '51171', 'นางสาวจันทร์เพ็ญ นาทอง', NULL, 'Human Resource', 'Human Resource Management', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Human Resource Specialist', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'แพน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51171.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51173', '51173', 'นางสาวทิพยรัตน์ ประดิษฐ', NULL, 'Factory', 'Production (งานติดพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ติดแชล็ค)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กี๊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51173.jpg', '1', NULL, NULL, NULL),
('51186', '51186', 'นายอมรเทพ บัวสิงห์', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (บล็อก)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ทิวา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51186.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51187', '51187', 'นางสาวดวงฤดี สาลีหอม', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เมย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51187.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51189', '51189', 'นางสาวณัฐจริญญา อินทริง', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แก้ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51189.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51194', '51194', 'นางภาวนา ภิพากรณ์', NULL, 'Service Controller', 'Service Controller', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Maid Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พจน์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51194.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51200', '51200', 'นางสาวกมลรัตน์ สิงห์โต', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แก้ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51200.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51201', '51201', 'นายอรุณ บุญเจริญ', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51201.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51208', '51208', 'นางสาวยุพิน อังคะพนมไพร', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เปีย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51208.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51214', '51214', 'นายหนิง พาริตา', NULL, 'Factory', 'Production (งานเซาะร่อง)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เซาะร่องพลอย,เพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51214.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51266', '51266', 'นายนรินทร์ คลังกลาง', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (บล็อก)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เต้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51266.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51270', '51270', 'นายเอกราช ศรีเชียงหวาง', NULL, 'General Affairs', 'General Affairs (Maintenance)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Maintenance Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51270.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51273', '51273', 'นางสาวกนกพร ฉัตรสินทอง', NULL, 'Human Resource', 'Operation Management', 'Department Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Operation Management Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : F', NULL, NULL, 'เอ๋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51273.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51274', '51274', 'นางอัญธิกา อุดมพันธ์', NULL, 'Human Resource', 'Human Resource Management', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'General Affair Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ดอน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51274.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51275', '51275', 'นายพีร์รัฐ อภิโฆษิตวงศา', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Division Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'General Manager (Finance & Accounting)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'เคน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51275.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51282', '51282', 'นางสาวรัชดาภรณ์    จันทะรัตน์', NULL, 'Human Resource', 'Human Resource Management', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Payroll Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หญิง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51282.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51283', '51283', 'นางสาวชลินธร แหนบสุข', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (บล็อก)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อัยย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51283.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51287', '51287', 'นางสาวดอกรัก สายรัตน์', NULL, 'Factory', 'Production (งานติดพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ติดพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'รัก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51287.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51288', '51288', 'นางสาววิลาสินี สุขลำดวน', NULL, 'Government Affair', 'Government Affair', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Government Affair Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'แพรว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51288.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51289', '51289', 'นางสาวจรรยาภรณ์ ชมคำ', NULL, 'Human Resource', 'Human Resource Management', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior General Affair Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'แนน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51289.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51292', '51292', 'นายวัชระ ธีระการ', NULL, 'General Affairs', 'General Affairs (Messenger)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Messenger Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พีม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51292.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('21073', '21073', 'นางสาวสายฝน มากนคร', NULL, 'Sales', 'Sales Jewelry', 'Officer', 'เซ็นทรัลหาดใหญ่', 'สงขลา', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฝน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21073.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21074', '21074', 'นางสาวศจี มุกไธสง', NULL, 'Sales', 'Sales Jewelry', 'Officer', 'เซ็นทรัลนครราชสีมา', 'นครราชสีมา', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21074.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('51293', '51293', 'นางสาวกานต์ธีรา ปานนา', NULL, 'Human Resource', 'Human Resource Management', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Talent Acquisition Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แนท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51293.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51294', '51294', 'นางสาวอุทุมพร โชติวงศ์', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51294.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51295', '51295', 'นางสาวจุฑามาศ คัญทะชา', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เปิ้ล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51295.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('21045', '21045', 'นายทรงศิลป์ ปะจุระเน', NULL, 'Procurement', 'Diamond Purchasing', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Purchasing Officer (Diamond)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'มิว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21045.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21046', '21046', 'นายจรูญ เนตรทิพย์', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Prepare Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จรูญ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21046.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21047', '21047', 'นางสาวณัฐวัชรี น้อยราวี', NULL, 'Gemologist', 'Gemologist', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Gemologist Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'มิ้นท์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21047.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21049', '21049', 'นางสาวทองตัด หนูนา', NULL, 'Procurement', 'Diamond Purchasing', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Quality Assurance Officer (เพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แก่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21049.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21051', '21051', 'นางสาวรัตนวลี ชูยัง', NULL, 'Gemologist', 'Gemologist', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Gemologist Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หวาน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21051.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21054', '21054', 'นางสาวบังอร นพคุณ', NULL, 'Procurement', 'Diamond Purchasing', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Purchasing Supervisor (Diamond)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'อร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21054.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21055', '21055', 'นางสาวสมเพียร วงษ์พา', NULL, 'Procurement', 'Procurement (งานแมตซ์สี)', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Jewellry Maker Officer (แมตซ์สี)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'หนู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21055.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21056', '21056', 'นางสาวประกายเดือน พิบูรณ์', NULL, 'Procurement', 'Procurement (งานแมตซ์สี)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewellry Maker Officer (แมตซ์สี)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เดือน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21056.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21057', '21057', 'นางสาวสายรุ้ง แซ่จิ๋ว', NULL, 'Procurement', 'Diamond Purchasing', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Purchasing Officer (Diamond)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไอซ์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21057.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21058', '21058', 'นายอดุลย์ บุญจวบ', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Prepare Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เดช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21058.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21059', '21059', 'นางสาวสุกัญญา จินต์สวัสดิ์', NULL, 'Procurement', 'Stock Controller', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Stock Controller Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'อ้อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21059.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21063', '21063', 'นางสาวกอบกูล การเที่ยง', NULL, 'Gemologist', 'Gemologist', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Gemologist Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กิ่ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21063.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21068', '21068', 'นายธวัช ลีทหาร', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Prepare Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วัช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21068.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21075', '21075', 'นายกองทุน เผือกนอก', NULL, 'Procurement', 'Gemstones Purchasing', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Purchasing Officer (Diamond)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ทูล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21075.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('82035', '82035', 'นายประจักษ์ ดั่ว', NULL, 'Factory', 'Administration & Accounting', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Cleaning Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'บัตร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82035.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('82037', '82037', 'นายวันชัย แสงจันทร์', NULL, 'Planning & Logistics', 'Warehouse & Logistics', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Logistics Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'บู่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82037.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('82038', '82038', 'นายจันทร วาทู', NULL, 'Planning & Logistics', 'Warehouse & Logistics', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Logistics Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'ซัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82038.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('10413', '10413', 'นายอานนท์ มิสเชอร์', NULL, 'Gold Trader', 'Gold Trader', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Gold Trader Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'นนท์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10413.jpg', '1', 'NGG TRADE CO., LTD.', NULL, NULL),
('10414', '10414', 'นายณัฐพงศ์ ชัยโอภาส', NULL, 'Sales', 'Sales', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sales Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ณัฐ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10414.jpg', '1', 'NGG TRADE CO., LTD.', NULL, NULL),
('99999', '99999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00000.jpg', '1', NULL, NULL, NULL),
('admin', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin.jpg', '1', NULL, NULL, NULL),
('91337', '91337', 'นางสาวณัฐวดี ใจห้าว', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เมกาบางนา', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วดี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91337.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('10415', '10415', 'นายธิติพันธุ์ มกร์ดารา', NULL, 'Gold Trader', 'Gold Trader', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Gold Trader Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'อ้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10415.jpg', '1', 'NGG TRADE CO., LTD.', NULL, NULL),
('10338', '10338', 'นางสาวเขมณัฏฐ์ ถาวรวาณิชย์กุล', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หน่อย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10338.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, NULL),
('10384', '10384', 'นางสาวศิริโสภา ศิริภัทรากุล', NULL, 'Marketing', 'Marketing', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sale & Marketing Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เจี๋ยบ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10384.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, NULL),
('10400', '10400', 'นางสาวณัฐิรีย์ กิตติชิติพัทธิ์', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'ซิ้ว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10400.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, NULL),
('10403', '10403', 'นางสาวสุพรรณี มณีศิริรัตน์', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พิณ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10403.jpg', '1', 'HUNG PETCH THONG NGUAN SENG HENG YAOWARAT CO., LTD.', NULL, NULL),
('41007', '41007', 'นางสาวภัณฑิรา ยินดีสุข', NULL, 'Production', 'Production', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sewing Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'สาว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41007.jpg', '1', 'UNIQUE WEAR (1986) CO., LTD.', NULL, NULL),
('41009', '41009', 'นางสาวประมวล คำงาม', NULL, 'Production', 'Production', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Production Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'มล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41009.jpg', '1', 'UNIQUE WEAR (1986) CO., LTD.', NULL, NULL),
('41011', '41011', 'นางสาวดวงใจ กุลแดง', NULL, 'Production', 'Production', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sewing Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ดวง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41011.jpg', '1', 'UNIQUE WEAR (1986) CO., LTD.', NULL, NULL),
('41017', '41017', 'นายสายันต์ เบ้าสองสี', NULL, 'Production', 'Production', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Support team Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'สายัณ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41017.jpg', '1', 'UNIQUE WEAR (1986) CO., LTD.', NULL, NULL),
('51300', '51300', 'นางสาวณิชากร หรรษาฤทัยวงศ์', NULL, 'Human Resource', 'Human Resource Development', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Human Resource Development Digital Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แบม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51300.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51304', '51304', 'นางสาววัชรินทร์ แสนบัวคำ', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (บล็อก)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แนน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51304.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51306', '51306', 'นางสาวณัฐวรา มีใจธรรม', NULL, 'Human Resource', 'Human Resource Development', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Human Resource Organization Development Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บีม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51306.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('21002', '21002', 'นางสาวสุภา อ่ำแก้ว', NULL, 'Financel & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปุ้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21002.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('85035', '85035', 'นางสาวศศิภา จันทร์หอม', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'แพชชั่น ระยอง', 'ระยอง', 'Commis Chef', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปุ้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85035.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('85053', '85053', 'นายสราวุธ สุธรรมมา', NULL, 'Akimitsu', 'Front of house Service', 'Officer', 'แพชชั่น ระยอง', 'ระยอง', 'Captain', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โต', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85053.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('82004', '82004', 'นางนิด ทองยุทธ', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Packing Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'นิด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82004.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('21004', '21004', 'นางสาวณัทมนตร์ บันลือทรัพย์', NULL, 'Sales', 'Sales Jewelry', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sale Supervisor (Roadshow Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'นัท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21004.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21007', '21007', 'นางสาวชนัญพัชร์ ภัทรินวัฒนะรัชต์', NULL, 'Supply Chain', 'Supply Chain', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Supply Chain Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เนส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21007.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21015', '21015', 'นางสาวกชกร ศรีประสิทธิ์', NULL, 'Sales', 'Sales Jewelry', 'Officer', 'เซ็นทรัลนครราชสีมา', 'นครราชสีมา', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ใบหม่อน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21015.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21018', '21018', 'นางสาวพิพรรษพร จันทร์เจือแก้ว', NULL, 'Sales', 'Sales Jewelry', 'Officer', 'โรบินสัน สาขาหาดใหญ่', 'สงขลา', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ภา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21018.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21035', '21035', 'นายไชยรัตน์ จินตนาภรณ์', NULL, 'Procurement', 'Raw Material Preparation', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Prepare Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ปุ่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21035.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21036', '21036', 'นายธวัชชัย วงศ์ยะรา', NULL, 'Procurement', 'Gemstones Purchasing', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Purchasing Officer (Gemstones)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'อู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21036.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21037', '21037', 'นายวาร สืบเพ็ง', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Prepare Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วาร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21037.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21038', '21038', 'นางสาวณัฐกานต์ จันทฤทธิ์', NULL, 'Procurement', 'Gemstones Purchasing', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Purchasing Officer (Gemstones)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'นัท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21038.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21039', '21039', 'นายสมเกียรติ อุ่นเรือน', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Prepare Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เกียรติ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21039.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21042', '21042', 'นางสาวภัทรดา อัปมะโห', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Prepare Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21042.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21043', '21043', 'นายไพรรัต ชารีอัน', NULL, 'Procurement', 'Raw Material Preparation', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Prepare Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'รัต', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21043.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22017', '22017', 'นางสาวสนิท จงจอหอ', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22017.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21080', '21080', 'นางสาวณัฏฐพร เอี่ยมผ่อง', NULL, 'Gemologist', 'Gemologist', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Gemologist Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โซดา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21080.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21081', '21081', 'นางสาวศิริลักษณ์ ศรีทะจักร', NULL, 'Procurement', 'Gemstones Purchasing', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Audit System Trainee', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แพท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21081.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('21083', '21083', 'นางสาวสุนิสา น้อมแก้ว', NULL, 'Procurement', 'Procurement (งานแมตซ์สี)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewellry Maker Officer (แมตซ์สี)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21083.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL);
INSERT INTO `users_detail` (`Code_Staff`, `Card_Staff`, `Name_Thai`, `Name_Eng`, `Faction`, `Department`, `Degree`, `Workplace`, `Working_status`, `Position`, `DateofBirth`, `StartDate`, `HireDate`, `IDCardNumber`, `Sex`, `FamilyStatus`, `JGStatus`, `Yearsofservice`, `Age`, `Nickname`, `TelephoneNumber`, `Address`, `Current_Address`, `Resigned_Date`, `Vacation_leave`, `Sick_leave`, `Business_leave_necessary`, `Maternity_leave_paid`, `Maternity_leave_not_paid`, `Ordination_leaven`, `Marriage_leave`, `Accident_leave`, `Military_leave`, `Sterilization_leave`, `Time_offset`, `Leave_without_pay`, `Sick_leave_not_receiving_wages`, `Cremation_leave`, `Leave_instead_of_holidays`, `Leave_to_study`, `Take_a_break`, `Absence_from_work`, `img`, `active`, `Company`, `created_at`, `updated_at`) VALUES
('21085', '21085', 'นางสาวสุภาภรณ์ บูญปก', NULL, 'Procurement', 'Gemstones Purchasing', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Audit System Trainee', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฝ้าย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21085.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22001', '22001', 'นายแสวง แท่นแก้ว', NULL, 'Factory', 'Production', 'Supervisor', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewellry Maker Supervisor (เจียระไน)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'แหว๋ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22001.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22002', '22002', 'นางสาวศิริกร ชีโพธิ์', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เจี๊ยบ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22002.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22003', '22003', 'นางจงลักษณ์ เพ็ชรพะเนาว์', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปุ๊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22003.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22004', '22004', 'นางสมควร สังสี', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เคลือ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22004.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22005', '22005', 'นางสาวศรุดา กุลสันเทียะ', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22005.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22006', '22006', 'นางศรีน้ำ เชาว์กลาง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แมว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22006.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22007', '22007', 'นางศุภลักษณ์ การบรรจง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไข่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22007.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22008', '22008', 'นางขนิษฐา กลิ่นโนนสูง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฐา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22008.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('51033', '51033', 'นางสาวพัฒยา มงคลเกตุ', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51033.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51215', '51215', 'นายรังสิกร มาฆะมนต์', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (บล็อก)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฟุก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51215.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51299', '51299', 'นางอำพร คำสี', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'พร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51299.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('21076', '21076', 'นางสาวจุฑารัตน์ จำปา', NULL, 'Marketing', 'Marketing Communication (Online)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Social Media Coordinator (Officer)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แต๊ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21076.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('61154', '61154', 'นางสาวนันทิญา ร่มโพธิ์', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ฝัง)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไหน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61154.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('91077', '91077', 'นางสาวศริญรัตน์ ศิลาวรรณ์', NULL, 'Management', 'Management', 'Division Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'General Manager (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'เดียร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91077.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91294', '91294', 'นางสาวณัชวิการณ์ ตั้งสะสมวงศ์', NULL, 'Graphic & Design', 'Graphic & Design', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Graphic Design Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แพร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91294.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91471', '91471', 'นางสาวปภาษา นัยวิริยะ', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Admin Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'น้ำตาล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91471.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('85066', '85066', 'นางสาวชนิษฐา รุ่งอรุณ', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'หนา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85066.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('82040', '82040', 'นางสาวชญานี พุสุนพงษ์', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Production Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'ปลา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82040.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('82043', '82043', 'นายกิติกร ทองไร', NULL, 'Factory', 'Production & Maintenance', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Mechanical Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'กิติ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82043.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('82044', '82044', 'นายจิรเมธ สายใจ', NULL, 'Planning & Logistics', 'Warehouse & Logistics', 'Staff', 'สำนักงานราชบุรี', 'ราชบุรี', 'Logistics Staff', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : O', NULL, NULL, 'ตี๋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '82044.jpg', '1', 'TAI MINERE CO., LTD.', NULL, NULL),
('10411', '10411', 'นายอธิวัฒน์ พรพิชัยโยธิน', NULL, 'Sales', 'Sales', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sales  Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'รุจ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10411.jpg', '1', 'NGG TRADE CO., LTD.', NULL, NULL),
('22010', '22010', 'นางสาวดวงชีวัน จุ่มกลาง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อุ้ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22010.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22011', '22011', 'นางสุชิน ครองไธสง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ชิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22011.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22012', '22012', 'นางสาวสงกรานต์ ของโพธิ์', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กาน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22012.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22013', '22013', 'นางรัตนา กองชนิน', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บิ๋ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22013.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22014', '22014', 'นางสาวปภัสสร ปลั่งกลาง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้อ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22014.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22015', '22015', 'นางสาวสมพร เพาะกลาง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ผิ้ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22015.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22016', '22016', 'นางบุญธรรม เปรมกลาง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จุก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22016.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('61155', '61155', 'นางสาวกันญา แย้มสรวลดี', NULL, 'Factory', 'Production (งานขัด)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ขัด)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เขียว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61155.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61163', '61163', 'นายภาคิน ภัคพัตรพิบูล', NULL, 'Creative & Design', 'Creative & Design', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Jewelry Designer Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'บี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61163.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61164', '61164', 'นายธัชทัย มีชัย', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Jewelry Maker Officer (แม่พิมพ์)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'ทัย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61164.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61170', '61170', 'นายทวี ปิตตังนาโพธิ์', NULL, 'Factory', 'Production (งานแต่งประกอบ)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (แต่งประกอบ)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'วี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61170.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61172', '61172', 'นางสาวภัคญภา มากพงษ์', NULL, 'Creative & Design', 'Creative & Design', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Designer Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปิ๊ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61172.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61173', '61173', 'นายเทพบดินทร์ บุญเทียม', NULL, 'Factory', 'Production (งานแกะลาย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (แกะลาย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บาส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61173.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61175', '61175', 'นายฐิติ บุญสุขมาก', NULL, 'Service Controller', 'Service Controller', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Driver Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61175.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61190', '61190', 'นายจตุพร ก้านเหลือง', NULL, 'Factory', 'Production (งานฝัง)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ฝัง)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบิร์ด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61190.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61193', '61193', 'นางสาวดาว หลำเล็ก', NULL, 'Factory', 'Production (งานหล่อ)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (ผ่ายาง)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ดาว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61193.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61197', '61197', 'นายต่อพงศ์ วงศ์จิรัฐิติกาล', NULL, 'Factory', 'Factory', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Factory Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เอ็ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61197.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61200', '61200', 'นายวิทัศน์ ทองพราว', NULL, 'Factory', 'Production (งานหล่อ)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (หล่อ)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หยอง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61200.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61205', '61205', 'นางสาวนิตยา ทองเจริญ', NULL, 'CAD Design', 'CAD Design', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'CAD Designer Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นิด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61205.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61208', '61208', 'นายมานพ วีระศรี', NULL, 'Factory', 'Production (งานแกะลาย)', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Jewelry Maker Officer (แกะลาย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'นพ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61208.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61209', '61209', 'นายอำนวยชัย นาไชยราญ', NULL, 'Factory', 'Production (งานแม่พิมพ์)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (แม่พิมพ์)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อำนวย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61209.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('61212', '61212', 'นายสุรเชษฐ์ ชื่นสินธุ์วน', NULL, 'Brand Development', 'Brand Development', 'Ast.Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Assistant Gold & Jewelry Creative Product Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'บอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61212.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('91086', '91086', 'นายสุขพงศ์ สหัสนันท์', NULL, 'Management', 'Management', 'Division Manager', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'General Manager (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'เบิร์ด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91086.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91098', '91098', 'นายรังสรรค์ ตั้งเจริญสุขสม', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Messenger Officer (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แมน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91098.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91099', '91099', 'นางสาวสิริมา โชคศิริวรรณา', NULL, 'Sales', 'Sales Alternative', 'Officer', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Sale Officer (Support) (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โบว์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91099.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91111', '91111', 'นางสาวฐิติพร ศรีมาจันทร์', NULL, 'Marketing', 'Marketing Communication (Offline)', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'PR Manager (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91111.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91112', '91112', 'นางสาวนันทธนา วัชรปาน', NULL, 'Site Acquisition', 'Site Acquisition', 'Ast.Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Assistant Site Acquisition Manager (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'แคน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91112.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91118', '91118', 'นายสรภูมิ เรืองฤทธิ์', NULL, 'Sales', 'Sales Alternative', 'Manager', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Sale Manager (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'แจ๊ค', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91118.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91129', '91129', 'นางสาววันวิสา ธุวภัทร', NULL, 'Sales', 'Sales Multi Brand', 'Manager', 'เซ็นทรัลอุดรธานี', 'อุดรธานี', 'Sale Manager (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'หญิง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91129.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91148', '91148', 'นางสาววิไลพร จงใจ', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เซ็นทรัลลาดพร้าว', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปุ้ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91148.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91153', '91153', 'นายพัฒน์ภัทรพล สิทธิสูงเนิน', NULL, 'Sales', 'Sales Alternative', 'Officer', 'สยามพารากอน', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ไทร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91153.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91163', '91163', 'นายสุธิวัท ละอองอ่อน', NULL, 'Sales', 'Sales Alternative', 'Officer', 'บลูพอร์ต หัวหิน', 'ประจวบคีรีขันธ์', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'กอล์ฟ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91163.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91164', '91164', 'นางสาวทิพากร สุวรรณชุ่มเอม', NULL, 'Sales', 'Sales Alternative', 'Supervisor', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Sale Supervisor (Roadshow Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'กร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91164.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91191', '91191', 'นายธนภพ ทุมแสน', NULL, 'Customer Service', 'Customer Service', 'Supervisor', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Customer Service Supervisor (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'อู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91191.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91197', '91197', 'นายไชยมงคล ศรีสด', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Messenger Officer (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91197.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91216', '91216', 'นางสาวอนุรักษ์ ปาวงค์', NULL, 'Sales', 'Sales Multi Brand', 'Officer', 'เซ็นทรัลอุดรธานี', 'อุดรธานี', 'PC (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แพรวา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91216.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91218', '91218', 'นางสาวกนกวรรณ วรรณทวี', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Packing Officer (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เก๊อะ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91218.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91303', '91303', 'นางสาวรัตติภรณ์ อมรรัตน์', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เดอะมอลล์บางกะปิ (Be Trend)', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มิ้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91303.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91305', '91305', 'นางสาวเกตุกนก พึ่งเจียม', NULL, 'Sales', 'Sales Multi Brand', 'Officer', 'เซ็นทรัลอุดรธานี', 'อุดรธานี', 'PC (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91305.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91307', '91307', 'นางสาวอารยา ชัยสิทธิ์', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Warehouse & Logistics Officer (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บุ๊ค', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91307.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91318', '91318', 'นายนิกร ทิมเขียว', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เอ็มโพเรียม (Be Trend)', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จ๊อบ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91318.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91321', '91321', 'นายกิตติทัพพ์ จันทร์ฉายทอง', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Warehouse & Logistics Officer (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตี๋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91321.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91324', '91324', 'นางสาวธนาวดี บุญประกอบ', NULL, 'Marketing', 'Marketing Communication (Online)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Social Media Coordinator (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มิลช์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91324.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91326', '91326', 'นางสาวปิยะนุช ต๊ะวิโล', NULL, 'Marketing', 'Marketing', 'Ast.Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Assistant Brand Manager (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'เหมียว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91326.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91332', '91332', 'นางสาวชาญนภัส ศรีสังวร', NULL, 'Marketing', 'Marketing Communication (Online)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Social Media Coordinator (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ป้อน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91332.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91338', '91338', 'นางสาวปราริฉัตร บุตรศรี', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เซ็นทรัลนครราชสีมา', 'นครราชสีมา', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บิ๋ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91338.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91339', '91339', 'นายกิตติกร ธรรมาธิพงศ์', NULL, 'Sales Support', 'Sales Support', 'Ast.Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Assistant Sale & Marketing Manager (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'จ๋อ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91339.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91348', '91348', 'นางสาวรัชนีกร คำมี', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แตงโม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91348.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91350', '91350', 'นายกันตภณ จันทนามนตรี', NULL, 'Marketing', 'Marketing', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Marketing Manager (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'วิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91350.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91351', '91351', 'นายวิศรุต สนั่นก้อง', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เซ็นทรัลภูเก็ต', 'ภูเก็ต', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บ่าว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91351.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91358', '91358', 'นางสาวเปมิกา อินทนาผล', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Finance & Accounting Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เชอรรี่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91358.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91359', '91359', 'นางสาวขนิษฐา คณะศรี', NULL, 'Sales', 'Sales Alternative', 'Officer', 'โรบินสัน พระราม9', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ต๋อม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91359.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91427', '91427', 'นายทัศน์พล หม่องเป้ง', NULL, 'Marketing', 'Sport Marketing', 'Supervisor', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Sport Marketing Executive Supervisor (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'เบียร์์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91427.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91430', '91430', 'นายวรรณรงค์ เนาวะดี', NULL, 'Sales', 'Sales Alternative', 'Officer', 'แฟชั่นไอส์แลนด์', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'โบ้', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91430.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91433', '91433', 'นางอำนวย บุญยอ', NULL, 'Sales Support', 'Sales Support', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sale Support Officer (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91433.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91435', '91435', 'นายดาเนียล แฮร์แบรต์ คัมเบล', NULL, 'Business & Development', 'Business & Development', 'Division Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Chief Operating Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'ดาเนียล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91435.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91440', '91440', 'นางสาวอัมพร จงถาวร', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'แฟชั่นไอส์แลนด์', 'กรุงเทพมหานคร', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91440.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91442', '91442', 'นางสาววราพร จันทราช', NULL, 'Graphic & Design', 'Photographer', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Photographer & Graphic Designer Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'จอย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91442.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91443', '91443', 'นายสมนึก ใจไว', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เอ็มโพเรียม', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบียร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91443.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91465', '91465', 'นางสาวรุ่งนภา บัวปัญญา', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เซ็นทรัลระยอง', 'ระยอง', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พัดลม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91465.jpg', '1', NULL, NULL, NULL),
('85078', '85078', 'นายไพสิน คำดี', NULL, 'Operation', 'Kitchen Team', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Commis Chef', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อาร์ท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85078.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('51222', '51222', 'นายอังสะ แก้วสุโข', NULL, 'Factory', 'Factory', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Factory Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'อิ่ง', '817513653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51222.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('91452', '91452', 'นางสาวอริสา แซ่หลิว', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'เซ็นทรัลภูเก็ต', 'ภูเก็ต', 'PC (CTF) (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มีโอ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91452.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91454', '91454', 'นายสุรเชษฐ์ แจ้งประสงค์', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เทอร์มินอล 21 พัทยา', 'ชลบุรี', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'สอง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91454.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91460', '91460', 'นางสาวจุฑามาศ พุทธาน้อย', NULL, 'Sales', 'Sales Alternative', 'Officer', 'โรบินสันรังสิต', 'ปทุมธานี', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อั่งเปา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91460.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91461', '91461', 'นายกิจจา วรรณทนาพร', NULL, 'Sales', 'Sales Gold & Jewelry', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Sales & Customer Services Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ตี่', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91461.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91464', '91464', 'นางสาวปิยพร ทัดศิริ', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'เทอร์มินอล 21 พัทยา', 'ชลบุรี', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เมย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91464.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91466', '91466', 'นางสาวปัญจรัตน์ ทรัพย์หิรัญกุล', NULL, 'Management', 'Management', 'Ast.Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Assistant Luxury Business Manager (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'เจล', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91466.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91467', '91467', 'นางสาวฐิตาภา ไชยเอก', NULL, 'Sales', 'Sales Gold & Jewelry', 'Officer', 'เทอร์มินอล 21 พัทยา', 'ชลบุรี', 'PC (Jewelry)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'นุช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91467.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91470', '91470', 'นางสาวพรรณวิลาศ อินพิชัย', NULL, 'Sales', 'Sales Alternative', 'Officer', 'เดอะมอลล์บางกะปิ', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อุ๊บอิ๊บ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91470.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('85070', '85070', 'นางสาวสิริยากร สะท้านถิ่น', NULL, 'Management', 'Operetion Management', 'Ast.Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Assistant Operetion Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'อุ๋ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85070.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('85073', '85073', 'นางนันทวรรณ แซ่ปึง', NULL, 'Operation', 'Kitchen Team', 'Sr.Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Chef Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : B', NULL, NULL, 'นัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85073.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('85074', '85074', 'นายพิสิฐ ทองรักษ์', NULL, 'Operation', 'Kitchen Team', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Chef Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'สิฐ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85074.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('85076', '85076', 'นางสาวพิรวรรณ วิชาดี', NULL, 'Operation', 'Kitchen Team', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Commis Chef', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'อ้น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85076.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('94002', '94002', 'นายวาฑิต เตชเสริมภูมิ', NULL, 'System & Security', 'System & Security', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'System & Security Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'อั้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94002.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('94004', '94004', 'นายเก่งกาจ เนียมจ้อย', NULL, 'Front Line & CS', 'IT Helpdesk', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'IT Support Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เก่ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94004.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('94005', '94005', 'นายรุ่งธรรม โชติชวาลรัตนกุล', NULL, 'Back Office & ERP', 'ERP', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'IT & ERP Support Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ป็อป', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94005.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('94008', '94008', 'นายเรวัต หนูปราบ', NULL, 'Back Office & ERP', 'Back Office & ERP', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Enterprise Development Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เรย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94008.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('94012', '94012', 'นายก้องเกียรติ บุญเส็ง', NULL, 'Back Office & ERP', 'Software Development', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'IT & Software Support Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ก้อง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94012.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('94013', '94013', 'นายภาสกร วรกิจพูนผล', NULL, 'Back Office & ERP', 'Software Development', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Software Development Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ซัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94013.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('94015', '94015', 'นางสาวสุภามาศ ทวยจันทร์', NULL, 'Front Line & CS', 'IT Helpdesk', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'IT Support Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มาศ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94015.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('94016', '94016', 'นายสมาน ลาภกระจ่าง', NULL, 'Front Line & CS', 'Front Line & CS', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Microservices Development Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'แซม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94016.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('94018', '94018', 'นายนราธร ข้องหลิม', NULL, 'Back Office & ERP', 'Software Development', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Software Development Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เจมส์', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94018.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('94019', '94019', 'นายเกียรติศักดิ์ พันพู', NULL, 'Back Office & ERP', 'Software Development', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Software Development Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เท่ห์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94019.jpg', '0', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('94020', '94020', 'นายอักษรินทร์ เอี่ยมอมรฤทธิ์', NULL, 'Back Office & ERP', 'ERP', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'ERP Support Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บอส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94020.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('51217', '51217', 'นางสาวภัสดาภรณ์ อิ่มพูล', NULL, 'Human Resource', 'Human Resource Management', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Junior Talent Acquisition Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'แจน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51217.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51218', '51218', 'นายชาคริต เสมามิ่ง', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ก๊อด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51218.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51228', '51228', 'นางสาวภัทราวดี ชินโย', NULL, 'Service Controller', 'Service Controller', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Maid Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มุก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51228.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51234', '51234', 'นายใส ยอดช่าง', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ใส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51234.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51237', '51237', 'นายศักดิ์ชาย ทับกฤษ', NULL, 'General Affairs', 'General Affairs (Messenger)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Messenger Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'บี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51237.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51239', '51239', 'นายธนรัฐ ธีระวรวงศ์', NULL, 'Gold & Metal Group', 'Gold & Metal Group', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Research & Development Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'รถจิ๊บ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51239.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51240', '51240', 'นายธนชาติ ธนากรพิพัฒน์กุล', NULL, 'Business & Development', 'Business & Development', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Engineer Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ทัช', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51240.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51241', '51241', 'นายกัมปนาท สิมมา', NULL, 'Business & Development', 'Business & Development', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Engineer Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ตั๋ง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51241.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51242', '51242', 'นางรัตนวลี พาริตา', NULL, 'Factory', 'Production (งานเจียระไนเพชร)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนเพชร)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เหมียว', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51242.jpg', '1', 'CIEN CO., LTD.', NULL, NULL);
INSERT INTO `users_detail` (`Code_Staff`, `Card_Staff`, `Name_Thai`, `Name_Eng`, `Faction`, `Department`, `Degree`, `Workplace`, `Working_status`, `Position`, `DateofBirth`, `StartDate`, `HireDate`, `IDCardNumber`, `Sex`, `FamilyStatus`, `JGStatus`, `Yearsofservice`, `Age`, `Nickname`, `TelephoneNumber`, `Address`, `Current_Address`, `Resigned_Date`, `Vacation_leave`, `Sick_leave`, `Business_leave_necessary`, `Maternity_leave_paid`, `Maternity_leave_not_paid`, `Ordination_leaven`, `Marriage_leave`, `Accident_leave`, `Military_leave`, `Sterilization_leave`, `Time_offset`, `Leave_without_pay`, `Sick_leave_not_receiving_wages`, `Cremation_leave`, `Leave_instead_of_holidays`, `Leave_to_study`, `Take_a_break`, `Absence_from_work`, `img`, `active`, `Company`, `created_at`, `updated_at`) VALUES
('51248', '51248', 'นายบดินทร์ สัพประทัศเสวี', NULL, 'Human Resource', 'Human Resource Development', 'Sr.Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Senior Human Resource Development Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : D', NULL, NULL, 'เต้ย', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51248.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51255', '51255', 'นายโรนัค บาร์เดีย', NULL, 'Procurement', 'Gemstones Purchasing', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Purchasing Manager (Gemstones)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'บาร์เดีย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51255.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51257', '51257', 'นายวิศิษฏ์ ฐิรายุวัฒน์', NULL, 'Finance & Accounting', 'Finance & Accounting', 'Division Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Chief Financial Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : G', NULL, NULL, 'สิท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51257.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('85042', '85042', 'นางสาวพิม อินปา', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'แพชชั่น ระยอง', 'ระยอง', 'Commis Chef', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พิม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85042.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('85050', '85050', 'นางสาวอาภัสรา วิเศษ', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'แพชชั่น ระยอง', 'ระยอง', 'Commis Chef', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เอม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85050.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('85051', '85051', 'นางสาวฑิตฐิตา สายพันธ์', NULL, 'Akimitsu', 'Kitchen Team', 'Officer', 'แพชชั่น ระยอง', 'ระยอง', 'Commis Chef', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พิม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85051.jpg', '1', 'CHERCHIM CO., LTD.', NULL, NULL),
('51259', '51259', 'นางสาวกรรณิการ์ การเพียร', NULL, 'Factory', 'Production (งานเจียระไนพลอย)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (เจียระไนพลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ฝน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51259.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51156', '51156', 'นางสาวนราธร ทรัพย์เอี่ยม', NULL, 'Factory', 'Production (งานบล็อก)', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Jewelry Maker Officer (บล็อก)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เฟิร์น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51156.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('51262', '51262', 'นายธรรมนูญ สมวงษ์', NULL, 'Human Resource', 'Human Resource Development', 'Supervisor', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Human Resource Development Digital Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'ตั้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51262.jpg', '1', 'CIEN CO., LTD.', NULL, NULL),
('21044', '21044', 'นางสาวเกษศิรินทร์ วีระวงศ์', NULL, 'Procurement', 'Gemstones Purchasing', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Purchasing Officer (Diamond)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ปู', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21044.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('61217', '61217', 'นายอำพล แตระพรพาณิชย์', NULL, 'Creative & Design', 'Creative & Design', 'Manager', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Product Design & Development Manager', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : E', NULL, NULL, 'เกี๊ยก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61217.jpg', '1', 'SESTO SENSO CO., LTD.', NULL, NULL),
('91219', '91219', 'นางสาวสมพร สินทร', NULL, 'Warehouse & Logistics', 'Warehouse & Logistics', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Packing Officer (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'พร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91219.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91363', '91363', 'นายโชคชัย จงเลิศธรรม', NULL, 'Sales', 'Sales Alternative', 'Supervisor', 'สำนักงานพระราม 3', 'กรุงเทพมหานคร', 'Sale Supervisor (Roadshow Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : C', NULL, NULL, 'โชค', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91363.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91472', '91472', 'นายจิรายุ ถุงเงิน', NULL, 'Graphic & Design', 'Photographer', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Photographer & Retoucher Officer', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ยิม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91472.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('94024', '94024', 'นายอภินันท์ อินทรวิจิตร', NULL, 'Front Line & CS', 'Front Line', 'Officer', 'สำนักงานสาธุประดิษฐ์', 'กรุงเทพมหานคร', 'Business System Analyst Supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'เบส', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '94024.jpg', '1', 'NIO ACHIEVES CO., LTD.', NULL, NULL),
('22018', '22018', 'นางออนอุมา เคียงสันเทียะ', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ออน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22018.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22019', '22019', 'นางสาววราภรณ์ เชือกจอหอ', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แดง', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22019.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22020', '22020', 'นางกัญญา แก้วจอหอ', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แหม่ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22020.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22021', '22021', 'นายธณวรรษฐ์ สวาสโพธิ์กลาง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ตุ้ม', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22021.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('91056', '91056', 'นายอพิชิต โถทอง', NULL, 'Sales', 'Sales Alternative', 'Officer', 'Icon Siam', 'กรุงเทพมหานคร', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ซุน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91056.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91250', '91250', 'นายเจษฎา ไชยยา', NULL, 'Sales', 'Sales Alternative', 'Officer', 'นิมมาน เชียงใหม่', 'เชียงใหม่', 'PC (Lifestyle)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แม็ก', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91250.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('91266', '91266', 'นายนิระชัย เรืองแก้ว', NULL, 'Sales', 'Sales Multi Brand', 'Officer', 'เซ็นทรัลเวสเกต', 'นนทบุรี', 'PC (Luxury)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'ระ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '91266.jpg', '1', 'NGG ENTERPRISE CO., LTD.', NULL, NULL),
('22022', '22022', 'นางสาวศรีรัตน์ เงื่อนกลาง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'แวน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22022.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22023', '22023', 'นางยุภา ทองมหา', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'หมุ๋ย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22023.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL),
('22024', '22024', 'นางสาวมัทนา กลีบกลาง', NULL, 'Factory', 'Production', 'Officer', 'สำนักงานโคราช', 'นครราชสีมา', 'Jewelry Maker Officer (เจียระไนเพชร,พลอย)', NULL, NULL, NULL, NULL, NULL, NULL, 'BRAND : A', NULL, NULL, 'มัท', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22024.jpg', '1', 'DTZ LUXURY GROUP CO., LTD.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_group`
--

CREATE TABLE `users_group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_id_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_menu_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `username_id`, `card_id_id`, `name_menu_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '4', '1', NULL, NULL),
(2, 'admin', 'admin', '11', '1', NULL, NULL),
(3, 'admin', 'admin', '15', '1', NULL, NULL),
(4, '51002', '51002', '7', '1', NULL, NULL),
(6, '51003', '51003', '7', '1', NULL, NULL),
(8, '51006', '51006', '7', '1', NULL, NULL),
(10, '51009', '51009', '7', '1', NULL, NULL),
(12, '51011', '51011', '7', '1', NULL, NULL),
(14, '51012', '51012', '7', '1', NULL, NULL),
(16, '51014', '51014', '7', '1', NULL, NULL),
(18, '51018', '51018', '7', '1', NULL, NULL),
(20, '51020', '51020', '7', '1', NULL, NULL),
(22, '51021', '51021', '7', '1', NULL, NULL),
(24, '51023', '51023', '7', '1', NULL, NULL),
(26, '51025', '51025', '7', '1', NULL, NULL),
(28, '51030', '51030', '7', '1', NULL, NULL),
(30, '51031', '51031', '7', '1', NULL, NULL),
(32, '51032', '51032', '7', '1', NULL, NULL),
(34, '51033', '51033', '7', '1', NULL, NULL),
(36, '51038', '51038', '7', '1', NULL, NULL),
(38, '51040', '51040', '7', '1', NULL, NULL),
(40, '51042', '51042', '7', '1', NULL, NULL),
(42, '51043', '51043', '7', '1', NULL, NULL),
(44, '51048', '51048', '7', '1', NULL, NULL),
(46, '51049', '51049', '7', '1', NULL, NULL),
(48, '51053', '51053', '7', '1', NULL, NULL),
(50, '51059', '51059', '7', '1', NULL, NULL),
(52, '51062', '51062', '7', '1', NULL, NULL),
(54, '51064', '51064', '7', '1', NULL, NULL),
(56, '51085', '51085', '7', '1', NULL, NULL),
(58, '51113', '51113', '7', '1', NULL, NULL),
(60, '51115', '51115', '7', '1', NULL, NULL),
(62, '51140', '51140', '7', '1', NULL, NULL),
(64, '51150', '51150', '7', '1', NULL, NULL),
(66, '51156', '51156', '7', '1', NULL, NULL),
(68, '51158', '51158', '7', '1', NULL, NULL),
(70, '51159', '51159', '7', '1', NULL, NULL),
(72, '51168', '51168', '7', '1', NULL, NULL),
(74, '51170', '51170', '7', '1', NULL, NULL),
(76, '51171', '51171', '7', '1', NULL, NULL),
(78, '51172', '51172', '7', '1', NULL, NULL),
(80, '51186', '51186', '7', '1', NULL, NULL),
(82, '51187', '51187', '7', '1', NULL, NULL),
(84, '51189', '51189', '7', '1', NULL, NULL),
(86, '51194', '51194', '7', '1', NULL, NULL),
(88, '51200', '51200', '7', '1', NULL, NULL),
(90, '51201', '51201', '7', '1', NULL, NULL),
(92, '51208', '51208', '7', '1', NULL, NULL),
(94, '51214', '51214', '7', '1', NULL, NULL),
(96, '51215', '51215', '7', '1', NULL, NULL),
(98, '51217', '51217', '7', '1', NULL, NULL),
(100, '51218', '51218', '7', '1', NULL, NULL),
(102, '51222', '51222', '7', '1', NULL, NULL),
(104, '51228', '51228', '7', '1', NULL, NULL),
(106, '51234', '51234', '7', '1', NULL, NULL),
(108, '51235', '51235', '7', '1', NULL, NULL),
(110, '51237', '51237', '7', '1', NULL, NULL),
(112, '51239', '51239', '7', '1', NULL, NULL),
(114, '51240', '51240', '7', '1', NULL, NULL),
(116, '51241', '51241', '7', '1', NULL, NULL),
(118, '51242', '51242', '7', '1', NULL, NULL),
(120, '51248', '51248', '7', '1', NULL, NULL),
(122, '51255', '51255', '7', '1', NULL, NULL),
(124, '51257', '51257', '7', '1', NULL, NULL),
(126, '51259', '51259', '7', '1', NULL, NULL),
(128, '51262', '51262', '7', '1', NULL, NULL),
(130, '51266', '51266', '7', '1', NULL, NULL),
(132, '51270', '51270', '7', '1', NULL, NULL),
(134, '51273', '51273', '7', '1', NULL, NULL),
(136, '51274', '51274', '7', '1', NULL, NULL),
(138, '51275', '51275', '7', '1', NULL, NULL),
(140, '51277', '51277', '7', '1', NULL, NULL),
(142, '51282', '51282', '7', '1', NULL, NULL),
(144, '51283', '51283', '7', '1', NULL, NULL),
(146, '51287', '51287', '7', '1', NULL, NULL),
(148, '51288', '51288', '7', '1', NULL, NULL),
(150, '51289', '51289', '7', '1', NULL, NULL),
(152, '51292', '51292', '7', '1', NULL, NULL),
(154, '51293', '51293', '7', '1', NULL, NULL),
(156, '51294', '51294', '7', '1', NULL, NULL),
(158, '51295', '51295', '7', '1', NULL, NULL),
(160, '51299', '51299', '7', '1', NULL, NULL),
(162, '51300', '51300', '7', '1', NULL, NULL),
(164, '51301', '51301', '7', '1', NULL, NULL),
(166, '51304', '51304', '7', '1', NULL, NULL),
(168, '51306', '51306', '7', '1', NULL, NULL),
(170, '21002', '21002', '7', '1', NULL, NULL),
(172, '21004', '21004', '7', '1', NULL, NULL),
(174, '21007', '21007', '7', '1', NULL, NULL),
(176, '21015', '21015', '7', '1', NULL, NULL),
(178, '21018', '21018', '7', '1', NULL, NULL),
(180, '21035', '21035', '7', '1', NULL, NULL),
(182, '21036', '21036', '7', '1', NULL, NULL),
(184, '21037', '21037', '7', '1', NULL, NULL),
(186, '21038', '21038', '7', '1', NULL, NULL),
(188, '21039', '21039', '7', '1', NULL, NULL),
(190, '21041', '21041', '7', '1', NULL, NULL),
(192, '21042', '21042', '7', '1', NULL, NULL),
(194, '21043', '21043', '7', '1', NULL, NULL),
(196, '21044', '21044', '7', '1', NULL, NULL),
(198, '21045', '21045', '7', '1', NULL, NULL),
(200, '21046', '21046', '7', '1', NULL, NULL),
(202, '21047', '21047', '7', '1', NULL, NULL),
(204, '21049', '21049', '7', '1', NULL, NULL),
(206, '21050', '21050', '7', '1', NULL, NULL),
(208, '21051', '21051', '7', '1', NULL, NULL),
(210, '21054', '21054', '7', '1', NULL, NULL),
(212, '21055', '21055', '7', '1', NULL, NULL),
(214, '21056', '21056', '7', '1', NULL, NULL),
(216, '21057', '21057', '7', '1', NULL, NULL),
(218, '21058', '21058', '7', '1', NULL, NULL),
(220, '21059', '21059', '7', '1', NULL, NULL),
(222, '21063', '21063', '7', '1', NULL, NULL),
(224, '21068', '21068', '7', '1', NULL, NULL),
(226, '21073', '21073', '7', '1', NULL, NULL),
(228, '21074', '21074', '7', '1', NULL, NULL),
(230, '21075', '21075', '7', '1', NULL, NULL),
(232, '21076', '21076', '7', '1', NULL, NULL),
(234, '21080', '21080', '7', '1', NULL, NULL),
(236, '21081', '21081', '7', '1', NULL, NULL),
(238, '21083', '21083', '7', '1', NULL, NULL),
(240, '21085', '21085', '7', '1', NULL, NULL),
(242, '22001', '22001', '7', '1', NULL, NULL),
(244, '22002', '22002', '7', '1', NULL, NULL),
(246, '22003', '22003', '7', '1', NULL, NULL),
(248, '22004', '22004', '7', '1', NULL, NULL),
(250, '22005', '22005', '7', '1', NULL, NULL),
(252, '22006', '22006', '7', '1', NULL, NULL),
(254, '22007', '22007', '7', '1', NULL, NULL),
(256, '22008', '22008', '7', '1', NULL, NULL),
(258, '22009', '22009', '7', '1', NULL, NULL),
(260, '22010', '22010', '7', '1', NULL, NULL),
(262, '22011', '22011', '7', '1', NULL, NULL),
(264, '22012', '22012', '7', '1', NULL, NULL),
(266, '22013', '22013', '7', '1', NULL, NULL),
(268, '22014', '22014', '7', '1', NULL, NULL),
(270, '22015', '22015', '7', '1', NULL, NULL),
(272, '22016', '22016', '7', '1', NULL, NULL),
(274, '22017', '22017', '7', '1', NULL, NULL),
(276, '22018', '22018', '7', '1', NULL, NULL),
(278, '22019', '22019', '7', '1', NULL, NULL),
(280, '22020', '22020', '7', '1', NULL, NULL),
(282, '22021', '22021', '7', '1', NULL, NULL),
(284, '22022', '22022', '7', '1', NULL, NULL),
(286, '22023', '22023', '7', '1', NULL, NULL),
(288, '22024', '22024', '7', '1', NULL, NULL),
(290, '22025', '22025', '7', '1', NULL, NULL),
(292, '22027', '22027', '7', '1', NULL, NULL),
(294, '22028', '22028', '7', '1', NULL, NULL),
(296, '22029', '22029', '7', '1', NULL, NULL),
(298, '22030', '22030', '7', '1', NULL, NULL),
(300, '22031', '22031', '7', '1', NULL, NULL),
(302, '22032', '22032', '7', '1', NULL, NULL),
(304, '22033', '22033', '7', '1', NULL, NULL),
(306, '91006', '91006', '7', '1', NULL, NULL),
(308, '91025', '91025', '7', '1', NULL, NULL),
(310, '91030', '91030', '7', '1', NULL, NULL),
(312, '91047', '91047', '7', '1', NULL, NULL),
(314, '91056', '91056', '7', '1', NULL, NULL),
(316, '91059', '91059', '7', '1', NULL, NULL),
(318, '91060', '91060', '7', '1', NULL, NULL),
(320, '91066', '91066', '7', '1', NULL, NULL),
(322, '91077', '91077', '7', '1', NULL, NULL),
(324, '91086', '91086', '7', '1', NULL, NULL),
(326, '91098', '91098', '7', '1', NULL, NULL),
(328, '91099', '91099', '7', '1', NULL, NULL),
(330, '91111', '91111', '7', '1', NULL, NULL),
(332, '91112', '91112', '7', '1', NULL, NULL),
(334, '91118', '91118', '7', '1', NULL, NULL),
(336, '91129', '91129', '7', '1', NULL, NULL),
(338, '91138', '91138', '7', '1', NULL, NULL),
(340, '91148', '91148', '7', '1', NULL, NULL),
(342, '91153', '91153', '7', '1', NULL, NULL),
(344, '91163', '91163', '7', '1', NULL, NULL),
(346, '91164', '91164', '7', '1', NULL, NULL),
(348, '91191', '91191', '7', '1', NULL, NULL),
(350, '91197', '91197', '7', '1', NULL, NULL),
(352, '91216', '91216', '7', '1', NULL, NULL),
(354, '91218', '91218', '7', '1', NULL, NULL),
(356, '91219', '91219', '7', '1', NULL, NULL),
(358, '91221', '91221', '7', '1', NULL, NULL),
(360, '91230', '91230', '7', '1', NULL, NULL),
(362, '91233', '91233', '7', '1', NULL, NULL),
(364, '91238', '91238', '7', '1', NULL, NULL),
(366, '91247', '91247', '7', '1', NULL, NULL),
(368, '91250', '91250', '7', '1', NULL, NULL),
(370, '91251', '91251', '7', '1', NULL, NULL),
(372, '91254', '91254', '7', '1', NULL, NULL),
(374, '91257', '91257', '7', '1', NULL, NULL),
(376, '91260', '91260', '7', '1', NULL, NULL),
(378, '91262', '91262', '7', '1', NULL, NULL),
(380, '91264', '91264', '7', '1', NULL, NULL),
(382, '91266', '91266', '7', '1', NULL, NULL),
(384, '91275', '91275', '7', '1', NULL, NULL),
(386, '91279', '91279', '7', '1', NULL, NULL),
(388, '91287', '91287', '7', '1', NULL, NULL),
(390, '91290', '91290', '7', '1', NULL, NULL),
(392, '91294', '91294', '7', '1', NULL, NULL),
(394, '91303', '91303', '7', '1', NULL, NULL),
(396, '91305', '91305', '7', '1', NULL, NULL),
(398, '91307', '91307', '7', '1', NULL, NULL),
(400, '91318', '91318', '7', '1', NULL, NULL),
(402, '91321', '91321', '7', '1', NULL, NULL),
(404, '91324', '91324', '7', '1', NULL, NULL),
(406, '91326', '91326', '7', '1', NULL, NULL),
(408, '91327', '91327', '7', '1', NULL, NULL),
(410, '91332', '91332', '7', '1', NULL, NULL),
(412, '91337', '91337', '7', '1', NULL, NULL),
(414, '91338', '91338', '7', '1', NULL, NULL),
(416, '91339', '91339', '7', '1', NULL, NULL),
(418, '91348', '91348', '7', '1', NULL, NULL),
(420, '91350', '91350', '7', '1', NULL, NULL),
(422, '91351', '91351', '7', '1', NULL, NULL),
(424, '91358', '91358', '7', '1', NULL, NULL),
(426, '91359', '91359', '7', '1', NULL, NULL),
(428, '91363', '91363', '7', '1', NULL, NULL),
(430, '91364', '91364', '7', '1', NULL, NULL),
(432, '91373', '91373', '7', '1', NULL, NULL),
(434, '91375', '91375', '7', '1', NULL, NULL),
(436, '91376', '91376', '7', '1', NULL, NULL),
(438, '91385', '91385', '7', '1', NULL, NULL),
(440, '91392', '91392', '7', '1', NULL, NULL),
(442, '91395', '91395', '7', '1', NULL, NULL),
(444, '91396', '91396', '7', '1', NULL, NULL),
(446, '91398', '91398', '7', '1', NULL, NULL),
(448, '91399', '91399', '7', '1', NULL, NULL),
(450, '91400', '91400', '7', '1', NULL, NULL),
(452, '91402', '91402', '7', '1', NULL, NULL),
(454, '91403', '91403', '7', '1', NULL, NULL),
(456, '91405', '91405', '7', '1', NULL, NULL),
(458, '91415', '91415', '7', '1', NULL, NULL),
(460, '91416', '91416', '7', '1', NULL, NULL),
(462, '91418', '91418', '7', '1', NULL, NULL),
(464, '91471', '91471', '7', '1', NULL, NULL),
(466, '91427', '91427', '7', '1', NULL, NULL),
(468, '91430', '91430', '7', '1', NULL, NULL),
(470, '91433', '91433', '7', '1', NULL, NULL),
(472, '91435', '91435', '7', '1', NULL, NULL),
(474, '91440', '91440', '7', '1', NULL, NULL),
(476, '91442', '91442', '7', '1', NULL, NULL),
(478, '91443', '91443', '7', '1', NULL, NULL),
(480, '91450', '91450', '7', '1', NULL, NULL),
(482, '91452', '91452', '7', '1', NULL, NULL),
(484, '91454', '91454', '7', '1', NULL, NULL),
(486, '91460', '91460', '7', '1', NULL, NULL),
(488, '91461', '91461', '7', '1', NULL, NULL),
(490, '91464', '91464', '7', '1', NULL, NULL),
(492, '91466', '91466', '7', '1', NULL, NULL),
(494, '91467', '91467', '7', '1', NULL, NULL),
(496, '91470', '91470', '7', '1', NULL, NULL),
(498, '91472', '91472', '7', '1', NULL, NULL),
(500, '91473', '91473', '7', '1', NULL, NULL),
(502, '91474', '91474', '7', '1', NULL, NULL),
(504, '91475', '91475', '7', '1', NULL, NULL),
(506, '91476', '91476', '7', '1', NULL, NULL),
(508, '91477', '91477', '7', '1', NULL, NULL),
(510, '91478', '91478', '7', '1', NULL, NULL),
(512, '61002', '61002', '7', '1', NULL, NULL),
(514, '61003', '61003', '7', '1', NULL, NULL),
(516, '61035', '61035', '7', '1', NULL, NULL),
(518, '61037', '61037', '7', '1', NULL, NULL),
(520, '61045', '61045', '7', '1', NULL, NULL),
(522, '61050', '61050', '7', '1', NULL, NULL),
(524, '61054', '61054', '7', '1', NULL, NULL),
(526, '61055', '61055', '7', '1', NULL, NULL),
(528, '61060', '61060', '7', '1', NULL, NULL),
(530, '61062', '61062', '7', '1', NULL, NULL),
(532, '61070', '61070', '7', '1', NULL, NULL),
(534, '61072', '61072', '7', '1', NULL, NULL),
(536, '61079', '61079', '7', '1', NULL, NULL),
(538, '61082', '61082', '7', '1', NULL, NULL),
(540, '61109', '61109', '7', '1', NULL, NULL),
(542, '61134', '61134', '7', '1', NULL, NULL),
(544, '61140', '61140', '7', '1', NULL, NULL),
(546, '61142', '61142', '7', '1', NULL, NULL),
(548, '61150', '61150', '7', '1', NULL, NULL),
(550, '61152', '61152', '7', '1', NULL, NULL),
(552, '61154', '61154', '7', '1', NULL, NULL),
(554, '61155', '61155', '7', '1', NULL, NULL),
(556, '61163', '61163', '7', '1', NULL, NULL),
(558, '61164', '61164', '7', '1', NULL, NULL),
(560, '61170', '61170', '7', '1', NULL, NULL),
(562, '61172', '61172', '7', '1', NULL, NULL),
(564, '61173', '61173', '7', '1', NULL, NULL),
(566, '61175', '61175', '7', '1', NULL, NULL),
(568, '61190', '61190', '7', '1', NULL, NULL),
(570, '61191', '61191', '7', '1', NULL, NULL),
(572, '61193', '61193', '7', '1', NULL, NULL),
(574, '61197', '61197', '7', '1', NULL, NULL),
(576, '61200', '61200', '7', '1', NULL, NULL),
(578, '61205', '61205', '7', '1', NULL, NULL),
(580, '61208', '61208', '7', '1', NULL, NULL),
(582, '61209', '61209', '7', '1', NULL, NULL),
(584, '61212', '61212', '7', '1', NULL, NULL),
(586, '61217', '61217', '7', '1', NULL, NULL),
(588, '61218', '61218', '7', '1', NULL, NULL),
(590, '61219', '61219', '7', '1', NULL, NULL),
(592, '61222', '61222', '7', '1', NULL, NULL),
(594, '61224', '61224', '7', '1', NULL, NULL),
(596, '61230', '61230', '7', '1', NULL, NULL),
(598, '61233', '61233', '7', '1', NULL, NULL),
(600, '61234', '61234', '7', '1', NULL, NULL),
(602, '61235', '61235', '7', '1', NULL, NULL),
(604, '85006', '85006', '7', '1', NULL, NULL),
(606, '85013', '85013', '7', '1', NULL, NULL),
(608, '85016', '85016', '7', '1', NULL, NULL),
(610, '85031', '85031', '7', '1', NULL, NULL),
(612, '85033', '85033', '7', '1', NULL, NULL),
(614, '85035', '85035', '7', '1', NULL, NULL),
(616, '85042', '85042', '7', '1', NULL, NULL),
(618, '85050', '85050', '7', '1', NULL, NULL),
(620, '85051', '85051', '7', '1', NULL, NULL),
(622, '85053', '85053', '7', '1', NULL, NULL),
(624, '85055', '85055', '7', '1', NULL, NULL),
(626, '85060', '85060', '7', '1', NULL, NULL),
(628, '85066', '85066', '7', '1', NULL, NULL),
(630, '85070', '85070', '7', '1', NULL, NULL),
(632, '85073', '85073', '7', '1', NULL, NULL),
(634, '85074', '85074', '7', '1', NULL, NULL),
(636, '85076', '85076', '7', '1', NULL, NULL),
(638, '85078', '85078', '7', '1', NULL, NULL),
(640, '81026', '81026', '7', '1', NULL, NULL),
(642, '81047', '81047', '7', '1', NULL, NULL),
(644, '81080', '81080', '7', '1', NULL, NULL),
(646, '81083', '81083', '7', '1', NULL, NULL),
(648, '81086', '81086', '7', '1', NULL, NULL),
(650, '81089', '81089', '7', '1', NULL, NULL),
(652, '81090', '81090', '7', '1', NULL, NULL),
(654, '81096', '81096', '7', '1', NULL, NULL),
(656, '81097', '81097', '7', '1', NULL, NULL),
(658, '81098', '81098', '7', '1', NULL, NULL),
(660, '81099', '81099', '7', '1', NULL, NULL),
(662, '82001', '82001', '7', '1', NULL, NULL),
(664, '82003', '82003', '7', '1', NULL, NULL),
(666, '82004', '82004', '7', '1', NULL, NULL),
(668, '82005', '82005', '7', '1', NULL, NULL),
(670, '82019', '82019', '7', '1', NULL, NULL),
(672, '82023', '82023', '7', '1', NULL, NULL),
(674, '82031', '82031', '7', '1', NULL, NULL),
(676, '82035', '82035', '7', '1', NULL, NULL),
(678, '82037', '82037', '7', '1', NULL, NULL),
(680, '82038', '82038', '7', '1', NULL, NULL),
(682, '82040', '82040', '7', '1', NULL, NULL),
(684, '82043', '82043', '7', '1', NULL, NULL),
(686, '82044', '82044', '7', '1', NULL, NULL),
(688, '94002', '94002', '7', '1', NULL, NULL),
(690, '94003', '94003', '7', '1', NULL, NULL),
(692, '94004', '94004', '7', '1', NULL, NULL),
(694, '94005', '94005', '7', '1', NULL, NULL),
(696, '94008', '94008', '7', '1', NULL, NULL),
(698, '94012', '94012', '7', '1', NULL, NULL),
(700, '94013', '94013', '7', '1', NULL, NULL),
(702, '94015', '94015', '7', '1', NULL, NULL),
(704, '94016', '94016', '7', '1', NULL, NULL),
(706, '94018', '94018', '7', '1', NULL, NULL),
(708, '94019', '94019', '7', '1', NULL, NULL),
(710, '94020', '94020', '7', '1', NULL, NULL),
(712, '94024', '94024', '7', '1', NULL, NULL),
(714, '94026', '94026', '7', '1', NULL, NULL),
(716, '41007', '41007', '7', '1', NULL, NULL),
(718, '41009', '41009', '7', '1', NULL, NULL),
(720, '41011', '41011', '7', '1', NULL, NULL),
(722, '41017', '41017', '7', '1', NULL, NULL),
(724, '10338', '10338', '7', '1', NULL, NULL),
(726, '10384', '10384', '7', '1', NULL, NULL),
(728, '10400', '10400', '7', '1', NULL, NULL),
(730, '10403', '10403', '7', '1', NULL, NULL),
(732, '10411', '10411', '7', '1', NULL, NULL),
(734, '10412', '10412', '7', '1', NULL, NULL),
(736, '10413', '10413', '7', '1', NULL, NULL),
(738, '10414', '10414', '7', '1', NULL, NULL),
(740, '10415', '10415', '7', '1', NULL, NULL),
(742, '70416', '70416', '7', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id_ad`);

--
-- Indexes for table `advertise_heade`
--
ALTER TABLE `advertise_heade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alert_daily`
--
ALTER TABLE `alert_daily`
  ADD PRIMARY KEY (`id_alert`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_family`
--
ALTER TABLE `job_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lavel`
--
ALTER TABLE `lavel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_banner`
--
ALTER TABLE `ngg_banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `ngg_benefits`
--
ALTER TABLE `ngg_benefits`
  ADD PRIMARY KEY (`id_be`);

--
-- Indexes for table `ngg_branchname`
--
ALTER TABLE `ngg_branchname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_chat_group`
--
ALTER TABLE `ngg_chat_group`
  ADD PRIMARY KEY (`code_room`);

--
-- Indexes for table `ngg_chat_group_user`
--
ALTER TABLE `ngg_chat_group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_history_comment`
--
ALTER TABLE `ngg_history_comment`
  ADD PRIMARY KEY (`id_com`);

--
-- Indexes for table `ngg_iform`
--
ALTER TABLE `ngg_iform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_img_group_advertise`
--
ALTER TABLE `ngg_img_group_advertise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_key_notification`
--
ALTER TABLE `ngg_key_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_km_category`
--
ALTER TABLE `ngg_km_category`
  ADD PRIMARY KEY (`id_km_cat`);

--
-- Indexes for table `ngg_km_category_detail`
--
ALTER TABLE `ngg_km_category_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_km_file`
--
ALTER TABLE `ngg_km_file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `ngg_km_img_category_detail`
--
ALTER TABLE `ngg_km_img_category_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_km_separate`
--
ALTER TABLE `ngg_km_separate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_libary_img`
--
ALTER TABLE `ngg_libary_img`
  ADD PRIMARY KEY (`id_img`);

--
-- Indexes for table `ngg_list_benefits`
--
ALTER TABLE `ngg_list_benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_list_mc`
--
ALTER TABLE `ngg_list_mc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_role_sales_shop`
--
ALTER TABLE `ngg_role_sales_shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_sales_api`
--
ALTER TABLE `ngg_sales_api`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ngg_target_daily_sale`
--
ALTER TABLE `ngg_target_daily_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngg_target_single_sales`
--
ALTER TABLE `ngg_target_single_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id_ad` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `advertise_heade`
--
ALTER TABLE `advertise_heade`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `alert_daily`
--
ALTER TABLE `alert_daily`
  MODIFY `id_alert` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_family`
--
ALTER TABLE `job_family`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lavel`
--
ALTER TABLE `lavel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `ngg_banner`
--
ALTER TABLE `ngg_banner`
  MODIFY `id_banner` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `ngg_benefits`
--
ALTER TABLE `ngg_benefits`
  MODIFY `id_be` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_branchname`
--
ALTER TABLE `ngg_branchname`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_chat_group`
--
ALTER TABLE `ngg_chat_group`
  MODIFY `code_room` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ngg_chat_group_user`
--
ALTER TABLE `ngg_chat_group_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ngg_history_comment`
--
ALTER TABLE `ngg_history_comment`
  MODIFY `id_com` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_iform`
--
ALTER TABLE `ngg_iform`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_img_group_advertise`
--
ALTER TABLE `ngg_img_group_advertise`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_key_notification`
--
ALTER TABLE `ngg_key_notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_km_category`
--
ALTER TABLE `ngg_km_category`
  MODIFY `id_km_cat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ngg_km_category_detail`
--
ALTER TABLE `ngg_km_category_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_km_file`
--
ALTER TABLE `ngg_km_file`
  MODIFY `id_file` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_km_img_category_detail`
--
ALTER TABLE `ngg_km_img_category_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_km_separate`
--
ALTER TABLE `ngg_km_separate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_libary_img`
--
ALTER TABLE `ngg_libary_img`
  MODIFY `id_img` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ngg_list_benefits`
--
ALTER TABLE `ngg_list_benefits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_list_mc`
--
ALTER TABLE `ngg_list_mc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ngg_role_sales_shop`
--
ALTER TABLE `ngg_role_sales_shop`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_sales_api`
--
ALTER TABLE `ngg_sales_api`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_target_daily_sale`
--
ALTER TABLE `ngg_target_daily_sale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ngg_target_single_sales`
--
ALTER TABLE `ngg_target_single_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=744;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
