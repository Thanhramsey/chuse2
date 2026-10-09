-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2026 at 09:01 AM
-- Server version: 5.5.41
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caosu2`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci,
  `extra_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `slug`, `category_id`, `status`, `cover_path`, `excerpt`, `content_html`, `extra_url`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'Thành tích', 'thanh-tich', NULL, 'published', 'assets/uploads/f13c0f42871d3c39c37fe7fdf038156b.jpg', '', '<p>Thành tích</p>', NULL, '2026-09-29 10:09:17', 1, 1, '2026-09-29 10:09:17', '2026-09-29 10:09:17'),
(7, 'siêu cấp', 'sieu-cap', NULL, 'published', 'assets/uploads/a5d3d0c9c353bfbc2855716fd41dfaf6.png', '', '<p>hehe</p>', NULL, '2026-09-29 10:09:37', 1, 1, '2026-09-29 10:09:37', '2026-09-29 10:09:37'),
(8, 'Danh hiệu Anh hùng Lao động thời kỳ đổi mới', 'anh-hung-lao-dong-thoi-ky-doi-moi', NULL, 'published', NULL, 'Phần thưởng cao quý ghi nhận thành tích của tập thể Công ty trong lao động và xây dựng.', '<p>Năm 2000, Công ty được phong tặng danh hiệu Anh hùng Lao động trong thời kỳ đổi mới.</p><p>Danh hiệu là dấu mốc nổi bật trong lịch sử phát triển và là động lực để các thế hệ người lao động tiếp tục đổi mới.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://chuserubber.vn/thanh-tich/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://chuserubber.vn/thanh-tich/', '2000-12-31 08:00:00', 1, 1, '2000-12-31 08:00:00', '2026-10-05 01:31:29'),
(9, 'Huân chương và các phần thưởng tiêu biểu', 'huan-chuong-va-cac-phan-thuong-tieu-bieu', NULL, 'published', NULL, 'Các phần thưởng của Đảng, Nhà nước và tổ chức cấp trên ghi nhận đóng góp của Công ty.', '<p>Công ty được tặng Huân chương Độc lập hạng Ba năm 2008; các Huân chương Lao động vào các năm 1995, 1996 và 2004.</p><p>Nhiều cờ thi đua, bằng khen khác cũng ghi nhận thành tích sản xuất kinh doanh, chăm lo người lao động và đóng góp cho địa phương.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://chuserubber.vn/thanh-tich/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://chuserubber.vn/thanh-tich/', '2008-12-31 08:00:00', 1, 1, '2008-12-31 08:00:00', '2026-10-05 01:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci,
  `extra_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `slug`, `category_id`, `status`, `cover_path`, `excerpt`, `content_html`, `extra_url`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'dummy', 'dummy', NULL, 'published', 'assets/uploads/947ff749bf116af320306a8e8bf128fb.png', '', '', NULL, '2026-09-29 10:08:45', 1, 1, '2026-09-29 10:08:45', '2026-09-29 10:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `resource` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sort_order` smallint(5) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `resource`, `item_id`, `title`, `file_path`, `file_ext`, `file_size`, `sort_order`, `created_at`) VALUES
(2, 'news', 24, 'Tai-Xuat-nhap-khau_drawio.pdf', 'assets/uploads/f6e1838903eebc6ff18e6b7451de3cf1.pdf', 'pdf', 345915, 0, '2026-09-29 09:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` smallint(5) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `type`, `name`, `slug`, `description`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(3, 'news', 'Tin nội bộ', 'tin-noi-bo', '', 0, 1, '2026-09-29 05:16:38', '2026-09-29 05:16:38'),
(4, 'news', 'Tin tức - sự kiện', 'tin-tuc-su-kien', NULL, 1, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(5, 'news', 'Phát triển bền vững', 'phat-trien-ben-vung', NULL, 2, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(6, 'internal', 'Hoạt động công đoàn', 'hoat-dong-cong-doan', NULL, 1, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(7, 'internal', 'Hoạt động đoàn thanh niên', 'hoat-dong-doan-thanh-nien', NULL, 2, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(8, 'internal', 'Gương người tốt việc tốt', 'guong-nguoi-tot-viec-tot', NULL, 3, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(9, 'internal', 'Ý tưởng - sáng kiến', 'y-tuong-sang-kien', NULL, 4, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `resource` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `author_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `moderated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `resource`, `item_id`, `author_name`, `email`, `body`, `status`, `created_at`, `moderated_at`) VALUES
(1, 'news', 25, 'Người dùng thử', 'bl@example.com', 'Bình luận kiểm thử.', 'pending', '2026-09-29 09:17:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn Test', 'test@example.com', '', 'Chủ đề kiểm thử', 'Nội dung kiểm thử biểu mẫu liên hệ.', 'new', NULL, '2026-09-29 09:16:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disclosures`
--

CREATE TABLE `disclosures` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci,
  `extra_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disclosures`
--

INSERT INTO `disclosures` (`id`, `title`, `slug`, `category_id`, `status`, `cover_path`, `excerpt`, `content_html`, `extra_url`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Kế hoạch sản xuất kinh doanh và đầu tư phát triển 5 năm 2017-2021', 'ke-hoach-san-xuat-kinh-doanh-va-dau-tu-2017-2021', NULL, 'published', NULL, 'Tài liệu công bố kế hoạch sản xuất kinh doanh và đầu tư phát triển giai đoạn 2017-2021.', '<p>Tài liệu được công bố dưới định dạng PDF để tổ chức, cá nhân thuận tiện tra cứu.</p><p>Nhấn vào liên kết nguồn để mở tài liệu gốc trên website doanh nghiệp.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/images/K%E1%BA%BE_HO%E1%BA%A0CH_SXKD__%C4%90TPT_5__N%C4%82M_2017-2021.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">Tài liệu PDF chính thức</a>.</p>', 'https://www.chuserubber.vn/images/K%E1%BA%BE_HO%E1%BA%A0CH_SXKD__%C4%90TPT_5__N%C4%82M_2017-2021.pdf', '2021-12-31 08:00:00', 1, 1, '2021-12-31 08:00:00', '2026-10-05 01:31:29'),
(2, 'Thực trạng quản trị và cơ cấu tổ chức doanh nghiệp năm 2019', 'thuc-trang-quan-tri-va-co-cau-to-chuc-nam-2019', NULL, 'published', NULL, 'Báo cáo về quản trị và cơ cấu tổ chức doanh nghiệp năm 2019.', '<p>Nội dung cung cấp thông tin phục vụ minh bạch hoạt động quản trị và tổ chức doanh nghiệp.</p><p>Nhấn vào liên kết nguồn để xem bản PDF do Công ty công bố.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://chuserubber.vn/images/Th%E1%BB%B1c_tr%E1%BA%A1ng_v%C3%A0_c%C6%A1_c%E1%BA%A5u_t%E1%BB%95_ch%E1%BB%A9c_doanh_nghi%E1%BB%87p_n%C4%83m_2019.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">Tài liệu PDF chính thức</a>.</p>', 'https://chuserubber.vn/images/Th%E1%BB%B1c_tr%E1%BA%A1ng_v%C3%A0_c%C6%A1_c%E1%BA%A5u_t%E1%BB%95_ch%E1%BB%A9c_doanh_nghi%E1%BB%87p_n%C4%83m_2019.pdf', '2019-12-31 08:00:00', 1, 1, '2019-12-31 08:00:00', '2026-10-05 01:31:29'),
(3, 'Thuyết minh báo cáo tài chính', 'thuyet-minh-bao-cao-tai-chinh', NULL, 'published', NULL, 'Tài liệu thuyết minh báo cáo tài chính được doanh nghiệp công bố.', '<p>Tài liệu bổ sung thông tin chi tiết cho các chỉ tiêu và chính sách trình bày trong báo cáo tài chính.</p><p>Nhấn vào liên kết nguồn để xem nội dung PDF trên website chính thức.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/images/THUYET_MINH_BCTC.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">Tài liệu PDF chính thức</a>.</p>', 'https://www.chuserubber.vn/images/THUYET_MINH_BCTC.pdf', '2020-12-31 08:00:00', 1, 1, '2020-12-31 08:00:00', '2026-10-05 01:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci,
  `extra_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `slug`, `category_id`, `status`, `cover_path`, `excerpt`, `content_html`, `extra_url`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Công ty hoạt động trong những lĩnh vực nào?', 'cong-ty-hoat-dong-trong-nhung-linh-vuc-nao', NULL, 'published', NULL, 'Các nhóm hoạt động chính của Cao su Chư Sê.', '<p>Hoạt động chính gồm trồng, chăm sóc, khai thác, thu mua, chế biến và kinh doanh cao su thiên nhiên; chế biến gỗ; hạ tầng khu công nghiệp; nông nghiệp công nghệ cao và năng lượng xanh.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://www.chuserubber.vn/', '2026-01-01 08:00:00', 1, 1, '2026-01-01 08:00:00', '2026-10-05 01:31:29'),
(2, 'Công ty hiện có những sản phẩm cao su nào?', 'cong-ty-co-nhung-san-pham-cao-su-nao', NULL, 'published', NULL, 'Thông tin nhanh về danh mục sản phẩm.', '<p>Danh mục được giới thiệu trên website chính thức có các dòng RSS3 và SVR 3L. Quy cách và khả năng cung ứng cụ thể được xác nhận theo từng thời điểm với bộ phận kinh doanh.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://chuserubber.vn/san-pham/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://chuserubber.vn/san-pham/', '2026-01-01 08:00:00', 1, 1, '2026-01-01 08:00:00', '2026-10-05 01:31:29'),
(3, 'Làm thế nào để liên hệ với Công ty?', 'lam-the-nao-de-lien-he-voi-cong-ty', NULL, 'published', NULL, 'Địa chỉ, điện thoại, email và biểu mẫu liên hệ.', '<p>Có thể liên hệ tại 420 Hùng Vương, xã Chư Sê, tỉnh Gia Lai; điện thoại 0269 385 1159; email chusecrc@gmail.com hoặc gửi biểu mẫu trên trang Liên hệ.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/lien-he/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://www.chuserubber.vn/lien-he/', '2026-01-01 08:00:00', 1, 1, '2026-01-01 08:00:00', '2026-10-05 01:31:29'),
(4, 'Tra cứu tài liệu công bố doanh nghiệp ở đâu?', 'tra-cuu-tai-lieu-cong-bo-doanh-nghiep-o-dau', NULL, 'published', NULL, 'Hướng dẫn tìm tài liệu đã công bố.', '<p>Các kế hoạch, báo cáo quản trị và tài liệu tài chính được tổng hợp tại mục Công bố thông tin. Mỗi nội dung có liên kết tới tài liệu nguồn để tải hoặc xem trực tuyến.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://www.chuserubber.vn/', '2026-01-01 08:00:00', 1, 1, '2026-01-01 08:00:00', '2026-10-05 01:31:29'),
(5, 'Công ty áp dụng những hệ thống quản lý nào?', 'cong-ty-ap-dung-nhung-he-thong-quan-ly-nao', NULL, 'published', NULL, 'Thông tin về quản lý chất lượng, môi trường và thử nghiệm.', '<p>Website chính thức giới thiệu các chứng nhận ISO 9001:2015, ISO 14001:2015 và IEC 17025. Phạm vi chứng nhận cụ thể cần được đối chiếu trên chứng thư còn hiệu lực.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://www.chuserubber.vn/', '2026-01-01 08:00:00', 1, 1, '2026-01-01 08:00:00', '2026-10-05 01:31:29'),
(6, 'Gửi câu hỏi hoặc góp ý bằng cách nào?', 'gui-cau-hoi-hoac-gop-y-bang-cach-nao', NULL, 'published', NULL, 'Kênh tiếp nhận phản hồi của người dùng.', '<p>Bạn có thể sử dụng biểu mẫu Liên hệ trên website, cung cấp họ tên, thông tin liên lạc và nội dung cần hỗ trợ. Bộ phận quản trị sẽ tiếp nhận và chuyển yêu cầu tới đơn vị phù hợp.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/lien-he/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://www.chuserubber.vn/lien-he/', '2026-01-01 08:00:00', 1, 1, '2026-01-01 08:00:00', '2026-10-05 01:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `section_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main',
  `section_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'html',
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_resource` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_category_id` int(10) UNSIGNED DEFAULT NULL,
  `item_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT '4',
  `sort_order` smallint(5) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `section_key`, `title`, `title_en`, `subtitle`, `position`, `section_type`, `content_html`, `image_path`, `link_label`, `link_url`, `source_resource`, `source_category_id`, `item_limit`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kcn_nam_pleiku', 'Dự án tiêu biểu', 'Featured projects', '', 'left', 'content', '', NULL, 'Xem dự án', '/du-an', 'projects', NULL, 3, 1, 1, '2026-09-29 05:29:57', '2026-10-05 01:41:10'),
(2, 'photo_bank', 'Ngân hàng ảnh', 'Photo gallery', '', 'left', 'content', '<p>là sapo</p>', 'assets/uploads/a0a8a471f49408071261adecc6cc5437.png', '', '/ngan-hang-anh', 'albums', NULL, 4, 2, 0, '2026-09-29 05:29:57', '2026-10-05 01:41:10'),
(3, 'videos', 'Video', 'Videos', NULL, 'left', 'content', '', NULL, NULL, '/video', 'videos', NULL, 4, 3, 0, '2026-09-29 05:29:57', '2026-10-05 01:41:10'),
(4, 'union', 'Hoạt động công đoàn', 'Trade union activities', NULL, 'left', 'content', '', NULL, NULL, NULL, 'internal', 6, 4, 4, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(5, 'youth', 'Hoạt động đoàn thanh niên', 'Youth union activities', NULL, 'left', 'content', '', NULL, NULL, NULL, 'internal', 7, 4, 5, 0, '2026-09-29 05:29:57', '2026-10-05 01:41:10'),
(6, 'good_deeds', 'Gương người tốt việc tốt', 'Good people, good deeds', NULL, 'left', 'content', '', NULL, NULL, NULL, 'internal', 8, 4, 6, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(7, 'slider', 'Slider trang chủ', 'Home slider', NULL, 'main', 'slider', '', NULL, NULL, NULL, NULL, NULL, 5, 1, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(8, 'intro', 'Giới thiệu', 'Introduction', 'Hơn 40 năm vun bồi giá trị từ vùng đất Tây Nguyên', 'main', 'html', '<div class=\"home-intro\"><p class=\"home-intro-lead\">Thành lập ngày 17/8/1984, Công ty TNHH MTV Cao su Chư Sê phát triển chuỗi hoạt động từ trồng, chăm sóc, khai thác đến chế biến và kinh doanh cao su thiên nhiên; đồng thời mở rộng sang hạ tầng khu công nghiệp, nông nghiệp công nghệ cao và năng lượng xanh.</p><div class=\"home-highlights\"><div class=\"home-highlight\"><span>01</span><strong>Truyền thống</strong><p>Đơn vị Anh hùng Lao động thời kỳ đổi mới.</p></div><div class=\"home-highlight\"><span>02</span><strong>Chất lượng</strong><p>Quản lý theo các tiêu chuẩn quốc tế.</p></div><div class=\"home-highlight\"><span>03</span><strong>Bền vững</strong><p>Gắn sản xuất với môi trường và cộng đồng.</p></div></div></div>', NULL, 'Khám phá về chúng tôi', '/trang/lich-su-hinh-thanh-va-phat-trien', NULL, NULL, 1, 2, 1, '2026-09-29 05:29:57', '2026-10-05 01:41:10'),
(9, 'products', 'Sản phẩm', 'Products', NULL, 'main', 'content', '', NULL, 'Xem toàn bộ', '/san-pham', 'products', NULL, 6, 3, 1, '2026-09-29 05:29:57', '2026-10-05 01:41:10'),
(10, 'achievements', 'Thành tích', 'Achievements', NULL, 'right', 'content', '', NULL, 'Xem thành tích', '/thanh-tich', 'achievements', NULL, 6, 1, 1, '2026-09-29 05:29:57', '2026-10-05 01:41:10'),
(11, 'faqs', 'Hỏi đáp của người lao động', 'Employee Q&A', NULL, 'right', 'content', '', NULL, NULL, '/hoi-dap', 'faqs', NULL, 5, 2, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(12, 'ideas', 'Lĩnh vực hoạt động', 'Business fields', NULL, 'right', 'content', '', NULL, 'Xem toàn bộ', '/linh-vuc', 'services', NULL, 4, 3, 1, '2026-09-29 05:29:57', '2026-10-05 01:41:10'),
(13, 'sustainability', 'Phát triển bền vững', 'Sustainable development', NULL, 'right', 'content', '', NULL, NULL, NULL, 'news', 5, 2, 4, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(14, 'orientation', 'Định hướng phát triển', 'Development orientation', 'Hiệu quả kinh tế - Trách nhiệm xã hội - Bảo vệ môi trường', 'full', 'html', '<div class=\"home-orientation\"><div><strong>Phát triển vùng nguyên liệu</strong><p>Ứng dụng kỹ thuật, bảo vệ vườn cây và nâng cao năng suất trên nền tảng quản trị minh bạch.</p></div><div><strong>Nâng cao giá trị sản phẩm</strong><p>Kiểm soát chất lượng, hiện đại hóa chế biến và đáp ứng nhu cầu của khách hàng.</p></div><div><strong>Đồng hành cùng cộng đồng</strong><p>Chăm lo người lao động, đóng góp an sinh và sử dụng hiệu quả tài nguyên.</p></div></div>', NULL, 'Tìm hiểu định hướng', '/trang/chat-luong-va-moi-truong', NULL, NULL, 1, 4, 1, '2026-09-29 05:29:57', '2026-10-05 03:28:39'),
(15, 'news', 'Tin tức', 'News', NULL, 'full', 'content', '', NULL, 'Xem toàn bộ', '/tin-tuc', 'news', NULL, 6, 5, 1, '2026-09-29 05:29:57', '2026-10-05 03:28:39'),
(16, 'certifications', 'Chứng nhận', 'Certifications', NULL, 'footer', 'html', '<div class=\"footer-cert-list\"><span>ISO 9001:2015</span><span>ISO 14001:2015</span><span>IEC 17025</span></div>', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2026-09-29 05:29:57', '2026-10-05 01:41:10'),
(17, 'company_numbers', 'Cao su Chư Sê qua những con số', 'Chu Se Rubber in numbers', 'Năng lực sau sáp nhập theo thông tin giới thiệu doanh nghiệp', 'full', 'html', '<div class=\"home-stats\"><div class=\"home-stat\"><strong data-count=\"14043\" data-suffix=\" ha\">14.043 ha</strong><span>Diện tích cao su</span></div><div class=\"home-stat\"><strong data-count=\"23000\" data-suffix=\" tấn/năm\">23.000 tấn/năm</strong><span>Công suất chế biến</span></div><div class=\"home-stat\"><strong data-count=\"2052\" data-suffix=\" người\">2.052 người</strong><span>Người lao động</span></div><div class=\"home-stat\"><strong data-count=\"13\" data-suffix=\" đội\">13 đội</strong><span>Đơn vị sản xuất cao su</span></div></div>', NULL, 'Xem năng lực hoạt động', '/trang/nang-luc-hoat-dong', NULL, NULL, 1, 3, 1, '2026-10-05 01:41:10', '2026-10-05 03:28:39'),
(18, 'business_fields', 'Lĩnh vực hoạt động', 'Business fields', 'Năng lực cốt lõi và những hướng phát triển mới', 'full', 'content', '', NULL, 'Xem toàn bộ lĩnh vực', '/linh-vuc', 'services', NULL, 4, 1, 1, '2026-10-05 01:41:10', '2026-10-05 03:28:39'),
(19, 'featured_projects', 'Dự án và chuyển đổi', 'Projects and transformation', 'Hạ tầng, nông nghiệp công nghệ cao và quản trị số', 'full', 'content', '', NULL, 'Xem toàn bộ dự án', '/du-an', 'projects', NULL, 3, 2, 1, '2026-10-05 01:41:10', '2026-10-05 03:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `internal`
--

CREATE TABLE `internal` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci,
  `extra_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `internal`
--

INSERT INTO `internal` (`id`, `title`, `slug`, `category_id`, `status`, `cover_path`, `excerpt`, `content_html`, `extra_url`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Hoạt động công đoàn', 'hoat-dong-cong-doan', 6, 'published', 'assets/uploads/1c171cac44a4076dfda1d066ebb89f5e.png', '12312312', '<p><br></p>', NULL, '2026-09-29 10:17:18', 1, 1, '2026-09-29 10:17:18', '2026-09-29 10:17:18'),
(2, 'tin hoạt động số 2', 'tin-hoat-dong-so-2', 6, 'published', 'assets/uploads/85f83002f34dea12782c64f3ff578620.png', '', '<p>tin hoạt động số 2</p>', NULL, '2026-09-29 10:17:43', 1, 1, '2026-09-29 10:17:43', '2026-09-29 10:17:43'),
(3, 'Công đoàn chăm lo người lao động sau sáp nhập', 'cong-doan-cham-lo-nguoi-lao-dong-sau-sap-nhap', 6, 'published', NULL, 'Các chương trình nhà ở và hỗ trợ đời sống tiếp tục được triển khai cho gần 2.100 người lao động.', '<p>Trong 9 tháng năm 2026, Công đoàn Công ty dành hơn 415 triệu đồng hỗ trợ xây mới 5 căn nhà, sửa chữa 3 căn, xây 1 nhà tình nghĩa và khu nhà tập thể cho 18 gia đình.</p><p>Sau sáp nhập, tổ chức công đoàn tiếp tục ổn định bộ máy, đồng hành cùng gần 2.100 người lao động và vận động hoàn thành nhiệm vụ sản xuất cuối năm.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://news.vrg.vn/hoat-dong-cong-doan/cong-doan-cao-su-chu-se-on-dinh-to-chuc-sau-sap-nhap-cham-lo-tot-doi-song-nguoi-lao-dong/\" target=\"_blank\" rel=\"noopener noreferrer\">Tin tức VRG</a>.</p>', 'https://news.vrg.vn/hoat-dong-cong-doan/cong-doan-cao-su-chu-se-on-dinh-to-chuc-sau-sap-nhap-cham-lo-tot-doi-song-nguoi-lao-dong/', '2026-10-01 08:00:00', 1, 1, '2026-10-01 08:00:00', '2026-10-05 01:31:29'),
(4, 'Trao 63 suất quà cho công nhân có hoàn cảnh khó khăn', 'trao-63-suat-qua-cho-cong-nhan-kho-khan', 6, 'published', NULL, 'Hoạt động thiết thực trong Tháng Công nhân và Tháng hành động về an toàn, vệ sinh lao động.', '<p>Ngày 20/5/2026, Công ty phối hợp với Vietcombank Gia Lai trao 63 suất quà cho công nhân có hoàn cảnh khó khăn.</p><p>Chương trình thể hiện sự quan tâm tới đời sống người lao động và tinh thần đồng hành của doanh nghiệp, tổ chức công đoàn cùng đơn vị đối tác.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/trao-tang-63-suat-qua-cho-cong-nhan-kho-khan/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://www.chuserubber.vn/trao-tang-63-suat-qua-cho-cong-nhan-kho-khan/', '2026-05-20 08:00:00', 1, 1, '2026-05-20 08:00:00', '2026-10-05 01:31:29'),
(5, 'Hơn 95% học viên lớp khai thác mủ đạt loại khá, giỏi', 'hon-95-phan-tram-hoc-vien-khai-thac-mu-dat-kha-gioi', 8, 'published', NULL, 'Lớp đào tạo 82 học viên góp phần chuẩn hóa kỹ thuật và bổ sung lực lượng khai thác.', '<p>Lớp đào tạo kỹ thuật khai thác mủ có 82 học viên tham gia và trên 95% đạt kết quả khá, giỏi.</p><p>Đào tạo thực hành giúp người lao động nắm vững quy trình, bảo vệ vườn cây và nâng cao chất lượng mủ nguyên liệu.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://news.vrg.vn/hoat-dong-co-so/cao-su-chu-se-be-mac-lop-khai-thac-mu-voi-tren-95-hoc-vien-dat-loai-kha-gioi/\" target=\"_blank\" rel=\"noopener noreferrer\">Tin tức VRG</a>.</p>', 'https://news.vrg.vn/hoat-dong-co-so/cao-su-chu-se-be-mac-lop-khai-thac-mu-voi-tren-95-hoc-vien-dat-loai-kha-gioi/', '2026-03-30 08:00:00', 1, 1, '2026-03-30 08:00:00', '2026-10-05 01:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `location` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `sort_order` smallint(5) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `location`, `parent_id`, `title`, `title_en`, `url`, `target`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'main', NULL, 'Trang chủ', 'Home', '/', '_self', 1, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(2, 'main', NULL, 'Giới thiệu', 'About us', '/gioi-thieu', '_self', 2, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(3, 'main', 2, 'Giới thiệu chung', 'General introduction', '/trang/gioi-thieu-chung', '_self', 1, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(4, 'main', 2, 'Sơ đồ tổ chức', 'Organisation chart', '/trang/so-do-to-chuc', '_self', 2, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(5, 'main', NULL, 'Lĩnh vực hoạt động', 'Business lines', '/linh-vuc', '_self', 3, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(6, 'main', NULL, 'Tin tức sự kiện', 'News & events', '/tin-tuc', '_self', 4, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(7, 'main', NULL, 'Sản phẩm', 'Products', '/san-pham', '_self', 5, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(8, 'main', NULL, 'Công bố thông tin', 'Information disclosure', '/cong-bo-thong-tin', '_self', 6, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(9, 'main', NULL, 'Thông tin nội bộ', 'Internal information', '/thong-tin-noi-bo', '_self', 7, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(10, 'main', 9, 'Hoạt động công đoàn', 'Trade union activities', '/thong-tin-noi-bo/hoat-dong-cong-doan', '_self', 1, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(11, 'main', 9, 'Hoạt động đoàn thanh niên', 'Youth union activities', '/thong-tin-noi-bo/hoat-dong-doan-thanh-nien', '_self', 2, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(12, 'main', 9, 'Gương người tốt việc tốt', 'Good people, good deeds', '/thong-tin-noi-bo/guong-nguoi-tot-viec-tot', '_self', 3, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(13, 'main', 9, 'Ý tưởng - sáng kiến', 'Ideas & initiatives', '/thong-tin-noi-bo/y-tuong-sang-kien', '_self', 4, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(14, 'main', NULL, 'Liên hệ', 'Contact', '/lien-he', '_self', 8, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(15, 'footer', NULL, 'Giới thiệu', 'About us', '/gioi-thieu', '_self', 1, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57'),
(16, 'footer', NULL, 'Liên hệ', 'Contact', '/lien-he', '_self', 2, 1, '2026-09-29 05:29:57', '2026-09-29 05:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20261005140000);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `category_id`, `status`, `cover_path`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `excerpt`, `content_html`) VALUES
(24, 'Demo', 'demo', 3, 'published', 'assets/uploads/6990da19f717e74008439e1481ee6939.png', '2026-09-29 09:35:23', 1, 1, '2026-09-29 05:17:36', '2026-09-29 09:35:23', 'Demo', '<p>đae21e13đff234234</p><p><br></p><p><img src=\"http://localhost/chuse/assets/uploads/559f5315205693361449b27b5705e86d.png\" width=\"300\"></p><p><br></p><p><br></p>'),
(25, 'Cao su Chư Sê tập trung nguồn lực hoàn thành kế hoạch năm 2026', 'cao-su-chu-se-tap-trung-nguon-luc-hoan-thanh-ke-hoach-2026', 4, 'published', NULL, '2026-09-11 08:00:00', 1, 1, '2026-09-11 08:00:00', '2026-10-05 01:31:29', 'Các đơn vị tập trung sản xuất, thu mua, chế biến và tiêu thụ để hoàn thành cao nhất kế hoạch năm 2026.', '<p>Trong 8 tháng đầu năm 2026, Công ty khai thác 5.937 tấn cao su, đạt 52,87% kế hoạch; thu mua 1.742 tấn, đạt 124,43% kế hoạch.</p><p>Sản lượng chế biến đạt 7.453 tấn và tiêu thụ đạt 8.752 tấn. Kết quả là cơ sở để các đơn vị tiếp tục điều hành linh hoạt trong những tháng cuối năm.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://news.vrg.vn/hoat-dong-co-so/cao-su-chu-se-va-chu-prong-tap-trung-nguon-luc-quyet-liet-hoan-thanh-cao-nhat-ke-hoach-nam-2026/\" target=\"_blank\" rel=\"noopener noreferrer\">Tin tức VRG</a>.</p>'),
(26, 'Ra quân thu hoạch mủ, quyết tâm vượt kế hoạch năm 2026', 'ra-quan-thu-hoach-mu-quyet-tam-vuot-ke-hoach-2026', 4, 'published', NULL, '2026-05-02 08:00:00', 1, 1, '2026-05-02 08:00:00', '2026-10-05 01:31:29', 'Công ty phát động mùa thu hoạch mới với mục tiêu khai thác trên 5.100 tấn mủ quy khô.', '<p>Ngày 2/5/2026, Công ty tổ chức ra quân thu hoạch mủ và đặt mục tiêu khai thác trên 5.100 tấn mủ quy khô.</p><p>Kết quả năm 2025 vượt kế hoạch 8,1% và hoàn thành sớm 18 ngày tạo động lực để người lao động tiếp tục nâng cao năng suất, chất lượng vườn cây.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/cao-su-chu-se-quyet-tam-khai-thac-vuot-5-100-tan-ke-hoach-tro-len/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>'),
(27, 'Thu nhập người lao động đạt trên 10,6 triệu đồng mỗi tháng', 'thu-nhap-nguoi-lao-dong-tren-10-6-trieu-dong-moi-thang', 4, 'published', NULL, '2026-02-06 08:00:00', 1, 1, '2026-02-06 08:00:00', '2026-10-05 01:31:29', 'Thu nhập bình quân của người lao động năm 2025 đạt trên 10,6 triệu đồng/người/tháng.', '<p>Năm 2025, thu nhập bình quân của người lao động Công ty đạt trên 10,6 triệu đồng/người/tháng, bằng 134% kế hoạch.</p><p>Hoạt động đầu tư ngoài ngành mang về hơn 103,5 tỷ đồng cổ tức, góp phần củng cố nguồn lực tài chính và chăm lo đời sống cho 895 người lao động trước thời điểm sáp nhập.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://news.vrg.vn/su-kien-van-de/thu-nhap-cua-nguoi-lao-dong-cao-su-chu-se-dat-tren-106-trieu-dong-nguoi-thang/\" target=\"_blank\" rel=\"noopener noreferrer\">Tin tức VRG</a>.</p>'),
(28, '41 năm phát huy truyền thống Anh hùng Lao động', '41-nam-phat-huy-truyen-thong-anh-hung-lao-dong', 4, 'published', NULL, '2025-08-19 08:00:00', 1, 1, '2025-08-19 08:00:00', '2026-10-05 01:31:29', 'Dấu mốc 41 năm xây dựng và phát triển gắn với ba trụ cột kinh tế, an sinh xã hội và môi trường.', '<p>Thành lập ngày 17/8/1984, Cao su Chư Sê từng bước xây dựng vùng nguyên liệu, cơ sở chế biến và đội ngũ lao động tại Tây Nguyên.</p><p>Truyền thống Anh hùng Lao động là nền tảng để Công ty theo đuổi định hướng phát triển xanh, chăm lo cộng đồng và nâng cao hiệu quả sản xuất.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://news.vrg.vn/hoat-dong-co-so/41-nam-hinh-thanh-va-phat-trien-cao-su-chu-se-phat-huy-truyen-thong-anh-hung-xay-dung-cong-ty-phat-trien-xanh-va-ben-vung/\" target=\"_blank\" rel=\"noopener noreferrer\">Tin tức VRG</a>.</p>'),
(29, 'Chính thức vận hành nền tảng số Base Platform', 'chinh-thuc-van-hanh-nen-tang-so-base-platform', 5, 'published', NULL, '2025-08-22 08:00:00', 1, 1, '2025-08-22 08:00:00', '2026-10-05 01:31:29', 'Nền tảng quản trị số được đưa vào vận hành nhằm chuẩn hóa quy trình và tăng hiệu quả phối hợp.', '<p>Ngày 22/8/2025, Công ty chính thức vận hành Base Platform sau giai đoạn khảo sát, thiết lập, chạy thử và đào tạo người dùng.</p><p>Hệ thống hỗ trợ quản trị công việc tập trung, tăng khả năng theo dõi tiến độ và tạo nền tảng cho quá trình chuyển đổi số lâu dài.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://chuserubber.vn/cao-su-chu-se-chinh-thuc-van-hanh-nen-tang-so-base-platform/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>'),
(30, 'Định hướng phát triển xanh và bền vững', 'dinh-huong-phat-trien-xanh-va-ben-vung', 5, 'published', NULL, '2026-01-15 08:00:00', 1, 1, '2026-01-15 08:00:00', '2026-10-05 01:31:29', 'Công ty gắn hiệu quả sản xuất với bảo vệ môi trường, an sinh xã hội và quản trị minh bạch.', '<p>Cao su Chư Sê xác định phát triển bền vững dựa trên sự cân bằng giữa hiệu quả kinh tế, trách nhiệm với người lao động và bảo vệ tài nguyên.</p><p>Các hệ thống quản lý chất lượng, môi trường và năng lực thử nghiệm là công cụ hỗ trợ kiểm soát hoạt động theo hướng chuyên nghiệp.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>'),
(31, 'Lãnh đạo tỉnh Gia Lai kiểm tra tiến độ KCN Nam Pleiku', 'lanh-dao-tinh-gia-lai-kiem-tra-tien-do-kcn-nam-pleiku', 4, 'published', 'assets/uploads/kcn-nam-pleiku-lanh-dao-tinh.jpg', '2026-09-14 00:00:00', NULL, NULL, '2026-10-09 15:34:15', '2026-10-09 15:34:15', 'Đoàn công tác của tỉnh Gia Lai khảo sát tiến độ Khu công nghiệp Nam Pleiku; chủ đầu tư báo cáo tình hình mặt bằng và thu hút nhà đầu tư thứ cấp.', '<h2>Đoàn công tác khảo sát dự án</h2><p>Theo thông tin đăng tải ngày 14/09/2026, trong chuyến công tác tại khu vực phía Tây tỉnh Gia Lai, Chủ tịch UBND tỉnh Phạm Anh Tuấn đã khảo sát tình hình triển khai Khu công nghiệp Nam Pleiku. Đại diện Công ty TNHH MTV Cao su Chư Sê báo cáo tiến độ dự án và công tác chuẩn bị mặt bằng.</p><h2>Tập trung hoàn thiện hạ tầng</h2><p>Bài viết nguồn cho biết các vị trí đã có nhà đầu tư đăng ký cơ bản hoàn thành san lấp. Có 14 nhà đầu tư đăng ký với tổng diện tích khoảng 50 ha; Công ty Tiến Thịnh đã động thổ xây dựng nhà xưởng. Lãnh đạo tỉnh đề nghị tiếp tục đẩy nhanh hạ tầng kỹ thuật và lựa chọn nhà đầu tư phù hợp với định hướng của khu công nghiệp.</p><p>Khu công nghiệp Nam Pleiku được giới thiệu có quy mô khoảng 205 ha, do Công ty TNHH MTV Cao su Chư Sê làm chủ đầu tư.</p><p><strong>Nguồn tham khảo và hình ảnh:</strong> <a href=\"https://kcnvrggialai.com/chu-tich-ubnd-tinh-gia-lai-pham-anh-tuan-thi-sat-khu-cong-nghiep-nam-pleiku-135-25.html\" target=\"_blank\" rel=\"noopener noreferrer\">KCN VRG Gia Lai</a>.</p>'),
(32, 'Nhà đầu tư đầu tiên xây dựng nhà xưởng tại KCN Nam Pleiku', 'nha-dau-tu-dau-tien-xay-dung-nha-xuong-kcn-nam-pleiku', 4, 'published', 'assets/uploads/kcn-nam-pleiku-nha-dau-tu.jpg', '2026-09-14 00:00:00', NULL, NULL, '2026-10-09 15:34:15', '2026-10-09 15:34:15', 'Trung tâm chế biến nông sản xuất khẩu Tây Nguyên triển khai nhà xưởng tại KCN Nam Pleiku, mở đầu cho hoạt động đầu tư thứ cấp tại dự án.', '<h2>Khởi động dự án đầu tư thứ cấp</h2><p>KCN VRG Gia Lai cho biết Trung tâm chế biến nông sản xuất khẩu Tây Nguyên, thuộc Công ty Cổ phần Tiến Thịnh Gia Lai, là nhà đầu tư đầu tiên triển khai xây dựng cơ sở tại Khu công nghiệp Nam Pleiku.</p><p>Dự án hướng đến chế biến trái cây tươi đóng gói, trái cây cô đặc và sản phẩm cấp đông. Theo thông tin công bố, tổng công suất thiết kế của các nhóm sản phẩm lần lượt là 3.000, 4.000 và 3.000 tấn mỗi năm.</p><h2>Thêm cơ hội cho chuỗi chế biến địa phương</h2><p>Nguồn tin ghi nhận 14 nhà đầu tư đã đăng ký diện tích hơn 50 ha; 11 doanh nghiệp ký hợp đồng nguyên tắc thuê hạ tầng với diện tích khoảng 44 ha. Dự án chế biến nông sản có thể tạo thêm việc làm và tăng nhu cầu liên kết với vùng nguyên liệu trong khu vực.</p><p><strong>Nguồn tham khảo và hình ảnh:</strong> <a href=\"https://kcnvrggialai.com/khu-cong-nghiep-nam-pleiku-co-nha-dau-tu-dau-tien-xay-dung-nha-xuong-136-25.html\" target=\"_blank\" rel=\"noopener noreferrer\">KCN VRG Gia Lai</a>.</p>'),
(33, 'Thư mời hợp tác đầu tư tại KCN Nam Pleiku và các cụm công nghiệp', 'thu-ngo-moi-goi-dau-tu-kcn-nam-pleiku-va-ccn-dak-doa', 4, 'published', 'assets/uploads/kcn-nam-pleiku-ban-do-ket-noi.png', '2026-09-14 00:00:00', NULL, NULL, '2026-10-09 15:34:15', '2026-10-09 15:34:15', 'Chi nhánh KCN VRG Gia Lai giới thiệu cơ hội hợp tác tại KCN Nam Pleiku và ba cụm công nghiệp Đak Đoa, Đak Đoa 3, Đak Đoa 4.', '<h2>Danh mục dự án kêu gọi hợp tác</h2><p>Trong thư ngỏ ngày 14/09/2026, Chi nhánh KCN VRG Gia Lai – Công ty TNHH MTV Cao su Chư Sê mời các nhà đầu tư tìm hiểu cơ hội tại KCN Nam Pleiku và ba cụm công nghiệp Đak Đoa, Đak Đoa 3, Đak Đoa 4 trên địa bàn tỉnh Gia Lai.</p><p>KCN Nam Pleiku có quy mô được công bố là 205,06 ha. Quy hoạch dành khoảng 127,06 ha cho nhà máy và kho bãi. Dự án định hướng phát triển hạ tầng đồng bộ, kết nối giao thông liên vùng và phục vụ hoạt động sản xuất, chế biến.</p><h2>Thông tin và khảo sát dự án</h2><p>Chi nhánh cho biết đang tập trung triển khai hạ tầng, đồng thời mời nhà đầu tư khảo sát thực địa để tìm hiểu vị trí, diện tích và điều kiện đầu tư phù hợp. Thư ngỏ nêu kế hoạch dự kiến đưa KCN Nam Pleiku vào vận hành khai thác thương mại trong quý I năm 2027; tiến độ thực tế cần được xác nhận với đơn vị phụ trách.</p><p><strong>Nguồn tham khảo và hình ảnh bản đồ:</strong> <a href=\"https://kcnvrggialai.com/thu-ngo-134-25.html\" target=\"_blank\" rel=\"noopener noreferrer\">Thư ngỏ trên KCN VRG Gia Lai</a>.</p>'),
(34, 'Hạ tầng KCN Nam Pleiku hướng tới vận hành đồng bộ, bền vững', 'ha-tang-ky-thuat-kcn-nam-pleiku-dap-ung-nhu-cau-doanh-nghiep', 4, 'published', 'assets/uploads/kcn-nam-pleiku-xu-ly-nuoc-thai.jpg', '2026-10-09 00:00:00', NULL, NULL, '2026-10-09 15:34:15', '2026-10-09 15:34:15', 'Thông tin hạ tầng dự án đề cập hệ thống điện, cấp nước, xử lý nước thải tập trung, cây xanh và mạng lưới giao thông nội khu.', '<h2>Các hạng mục hạ tầng thiết yếu</h2><p>Theo thông tin giới thiệu dự án, KCN Nam Pleiku quy hoạch các hạng mục phục vụ sản xuất gồm cấp điện, cấp nước, xử lý nước thải tập trung, giao thông nội khu, cây xanh và hồ điều tiết.</p><ul><li>Trạm biến áp được công bố công suất 110 MVA.</li><li>Công suất cấp nước dự kiến tối đa 6.700 m³/ngày đêm.</li><li>Giai đoạn 1 của hệ thống xử lý nước thải tập trung đã hoàn thành, công suất 2.000 m³/ngày đêm.</li><li>Trục đường D1 có lộ giới 60 m; các trục D2 và D4 được giới thiệu có lộ giới lần lượt 42 m và 30 m.</li></ul><p>Thông số trên được tóm lược từ nội dung website dự án. Nhà đầu tư nên liên hệ Chi nhánh KCN VRG Gia Lai để xác nhận tình trạng vận hành và thông tin kỹ thuật mới nhất trước khi lập phương án đầu tư.</p><p><strong>Nguồn tham khảo và hình ảnh:</strong> <a href=\"https://kcnvrggialai.com/co-so-ha-tang-54-25.html\" target=\"_blank\" rel=\"noopener noreferrer\">Cơ sở hạ tầng KCN Nam Pleiku</a>.</p>'),
(35, 'Gia Lai – điểm đến đầu tư giàu tiềm năng', 'gia-lai-diem-den-dau-tu-giau-tiem-nang', 4, 'published', 'assets/uploads/kcn-gia-lai-ban-do.png', '2026-09-11 00:00:00', NULL, NULL, '2026-10-09 15:45:05', '2026-10-09 15:45:05', 'Khái quát lợi thế về vị trí, quy mô, vùng nguyên liệu và tiềm năng phát triển công nghiệp của tỉnh Gia Lai.', '<h2>Gia Lai hội tụ nhiều lợi thế phát triển</h2><p>Theo bài giới thiệu trên website KCN VRG Gia Lai, tỉnh có không gian phát triển rộng, kết nối khu vực Tây Nguyên với duyên hải miền Trung và cửa khẩu quốc tế. Địa hình cao nguyên, vùng đất bazan cùng các vùng sản xuất cà phê, cao su, hồ tiêu và nông sản tạo nền tảng cho công nghiệp chế biến và dịch vụ logistics.</p><p>Định hướng phát triển còn gắn với nông nghiệp công nghệ cao, năng lượng tái tạo và các ngành công nghiệp hỗ trợ. Đây là những lợi thế tham khảo để doanh nghiệp tìm hiểu địa điểm đầu tư phù hợp.</p><p>Các số liệu và định hướng trong bài được tóm lược từ nguồn tham khảo, có thể thay đổi theo thời điểm. Nhà đầu tư nên xác nhận thông tin hiện hành với cơ quan chức năng trước khi lập dự án.</p><p><strong>Nguồn tham khảo và hình ảnh:</strong> <a href=\"https://kcnvrggialai.com/gioi-thieu-ve-tinh-gia-lai-133-25.html\" target=\"_blank\" rel=\"noopener noreferrer\">Giới thiệu về tỉnh Gia Lai – KCN VRG Gia Lai</a>.</p>'),
(36, '5 bước tìm hiểu và triển khai dự án tại KCN Nam Pleiku', '5-buoc-trien-khai-du-an-kcn-nam-pleiku', 4, 'published', 'assets/uploads/kcn-nam-pleiku-quy-trinh.png', '2026-10-09 00:00:00', NULL, NULL, '2026-10-09 15:45:05', '2026-10-09 15:45:05', 'Quy trình tham khảo từ lựa chọn vị trí đến ký hợp đồng thuê lại đất và bàn giao mặt bằng.', '<h2>Quy trình tham khảo dành cho nhà đầu tư</h2><p>Website KCN VRG Gia Lai giới thiệu quy trình gồm năm bước: tìm hiểu và lựa chọn vị trí; thống nhất nguyên tắc và đặt cọc; thực hiện thủ tục pháp lý đầu tư; ký hợp đồng thuê lại đất có hạ tầng; cuối cùng là bàn giao mặt bằng.</p><ol><li>Trao đổi nhu cầu diện tích, ngành nghề và tiến độ dự kiến.</li><li>Khảo sát vị trí và thống nhất các điều khoản nguyên tắc.</li><li>Thực hiện thủ tục đầu tư theo quy định hiện hành.</li><li>Hoàn tất hợp đồng thuê lại đất và các thỏa thuận liên quan.</li><li>Tiếp nhận mặt bằng theo biên bản bàn giao.</li></ol><p>Trình tự thực tế và hồ sơ phụ thuộc vào dự án, quy định tại thời điểm thực hiện. Doanh nghiệp cần làm việc trực tiếp với đơn vị quản lý KCN và cơ quan có thẩm quyền; sơ đồ trên chỉ mang tính tham khảo.</p><p><strong>Nguồn tham khảo và hình ảnh:</strong> <a href=\"https://kcnvrggialai.com/quy-trinh-dau-tu-59-25.html\" target=\"_blank\" rel=\"noopener noreferrer\">Quy trình đầu tư – KCN VRG Gia Lai</a>.</p>'),
(37, 'Nam Pleiku kết nối vùng nguyên liệu và các hành lang giao thương', 'nam-pleiku-ket-noi-vung-nguyen-lieu-hanh-lang-giao-thuong', 4, 'published', 'assets/uploads/kcn-nam-pleiku-ket-noi-vung.png', '2026-10-09 00:00:00', NULL, NULL, '2026-10-09 15:45:05', '2026-10-09 15:45:05', 'Vị trí KCN Nam Pleiku kết nối các tuyến giao thông, sân bay, cửa khẩu và cảng biển trong khu vực.', '<h2>Kết nối là một lợi thế cho hoạt động sản xuất</h2><p>Theo thông tin giới thiệu của KCN VRG Gia Lai, Nam Pleiku nằm gần các trục giao thông chính của Tây Nguyên, kết nối với thành phố Pleiku, sân bay, cửa khẩu Lệ Thanh và các cảng biển miền Trung. Bản đồ minh họa của đơn vị thể hiện các hướng kết nối khu vực phục vụ vận chuyển hàng hóa và tiếp cận thị trường.</p><p>Vị trí này cũng giúp doanh nghiệp cân nhắc nguồn cung nguyên liệu từ các vùng nông nghiệp, lâm nghiệp trong khu vực. Chi phí và thời gian vận chuyển thực tế tùy thuộc tuyến đường, phương thức vận tải và điều kiện khai thác tại từng thời điểm.</p><p><strong>Nguồn tham khảo và hình ảnh:</strong> <a href=\"https://kcnvrggialai.com/tiem-luc-loi-the-canh-tranh-114-25.html\" target=\"_blank\" rel=\"noopener noreferrer\">Tiềm lực và lợi thế cạnh tranh – KCN VRG Gia Lai</a>.</p>'),
(38, 'Tìm hiểu quy hoạch phân khu KCN Nam Pleiku', 'tim-hieu-quy-hoach-phan-khu-nam-pleiku', 4, 'published', 'assets/uploads/kcn-nam-pleiku-quy-hoach.png', '2026-10-09 00:00:00', NULL, NULL, '2026-10-09 15:45:05', '2026-10-09 15:45:05', 'Bản đồ phân khu giúp doanh nghiệp tham khảo cách bố trí lô đất và các hạng mục trong KCN.', '<h2>Bản đồ quy hoạch giúp hình dung tổng thể dự án</h2><p>Sơ đồ trên website KCN VRG Gia Lai thể hiện cách phân chia các khu chức năng, lô đất công nghiệp, giao thông nội khu và một số hạng mục dịch vụ. Đây là tài liệu trực quan để doanh nghiệp bước đầu tìm hiểu mặt bằng và chuẩn bị trao đổi nhu cầu sử dụng đất.</p><p>Ranh giới, diện tích từng lô, ngành nghề tiếp nhận và tình trạng cho thuê có thể thay đổi theo hồ sơ được phê duyệt và tiến độ triển khai. Nhà đầu tư cần liên hệ đơn vị quản lý để nhận bản vẽ và thông tin cập nhật trước khi ra quyết định.</p><p><strong>Nguồn tham khảo và hình ảnh:</strong> <a href=\"https://kcnvrggialai.com/khu-cong-nghiep-132-25.html\" target=\"_blank\" rel=\"noopener noreferrer\">Khu công nghiệp Nam Pleiku – KCN VRG Gia Lai</a>.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` datetime NOT NULL,
  `unsubscribed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `email`, `status`, `created_at`, `unsubscribed_at`) VALUES
(1, 'sub@example.com', 'subscribed', '2026-09-29 09:17:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci,
  `extra_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `category_id`, `status`, `cover_path`, `excerpt`, `content_html`, `extra_url`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu chung', 'gioi-thieu-chung', NULL, 'published', NULL, '', '<p>Đoạn nội dung mẫu dùng để kiểm tra bố cục hiển thị của giao diện public. Nội dung thật sẽ do bộ phận quản trị nhập.</p><h3>Tiêu đề phụ</h3><p>Dòng thứ hai của nội dung mẫu.</p>', NULL, '2026-09-29 09:38:16', NULL, 1, '2026-09-29 05:29:57', '2026-09-29 09:38:16'),
(2, 'Sơ đồ tổ chức', 'so-do-to-chuc', NULL, 'published', NULL, '', '<p>Sơ đồ tổ chức</p>', NULL, '2026-09-29 09:38:23', NULL, 1, '2026-09-29 05:29:57', '2026-09-29 09:38:23'),
(3, 'Lịch sử hình thành và phát triển', 'lich-su-hinh-thanh-va-phat-trien', NULL, 'published', NULL, 'Hơn bốn thập kỷ xây dựng vùng cao su và đồng hành cùng địa phương.', '<p>Công ty được thành lập ngày 17/8/1984 theo Quyết định số 71/QĐ-TCCB. Qua hơn bốn thập kỷ, doanh nghiệp từng bước xây dựng vùng nguyên liệu, nhà máy chế biến và hệ thống đơn vị sản xuất.</p><p>Năm 2000, tập thể Công ty được phong tặng danh hiệu Anh hùng Lao động trong thời kỳ đổi mới. Truyền thống này tiếp tục được phát huy trong giai đoạn phát triển xanh và bền vững.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/gioi-thieu/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://www.chuserubber.vn/gioi-thieu/', '2026-01-01 08:00:00', 1, 1, '2026-01-01 08:00:00', '2026-10-05 01:31:29'),
(4, 'Năng lực hoạt động', 'nang-luc-hoat-dong', NULL, 'published', NULL, 'Tổng quan quỹ đất, vườn cây, nhà máy và lực lượng lao động của Công ty.', '<p>Sau sáp nhập, Công ty quản lý trên 17.139 ha đất, trong đó đất nông nghiệp trên 16.896 ha và diện tích cao su trên 14.043 ha.</p><p>Doanh nghiệp có 7 phòng chuyên môn, 2 nhà máy chế biến với tổng công suất 23.000 tấn/năm, 1 khu công nghiệp, 1 bệnh viện, 13 đội sản xuất và 2.052 lao động theo số liệu giới thiệu chính thức.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/gioi-thieu/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://www.chuserubber.vn/gioi-thieu/', '2026-01-01 08:00:00', 1, 1, '2026-01-01 08:00:00', '2026-10-05 01:31:29'),
(5, 'Chất lượng và môi trường', 'chat-luong-va-moi-truong', NULL, 'published', NULL, 'Các hệ thống quản lý hỗ trợ kiểm soát chất lượng sản phẩm và tác động môi trường.', '<p>Công ty giới thiệu các chứng nhận ISO 9001:2015 về quản lý chất lượng, ISO 14001:2015 về quản lý môi trường và IEC 17025 về năng lực phòng thử nghiệm.</p><p>Việc duy trì hệ thống quản lý giúp chuẩn hóa quy trình, theo dõi chất lượng và cải tiến hoạt động một cách có hệ thống.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://www.chuserubber.vn/', '2026-01-01 08:00:00', 1, 1, '2026-01-01 08:00:00', '2026-10-05 01:31:29'),
(6, 'Thông tin liên hệ và hợp tác', 'thong-tin-lien-he-va-hop-tac', NULL, 'published', NULL, 'Đầu mối liên hệ chính thức của Công ty TNHH MTV Cao su Chư Sê.', '<p>Trụ sở: 420 Hùng Vương, xã Chư Sê, tỉnh Gia Lai. Điện thoại: 0269 385 1159. Email: chusecrc@gmail.com.</p><p>Khách hàng và đối tác có thể gửi yêu cầu qua trang Liên hệ để được chuyển tới bộ phận phụ trách.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/lien-he/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://www.chuserubber.vn/lien-he/', '2026-01-01 08:00:00', 1, 1, '2026-01-01 08:00:00', '2026-10-05 01:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `created_at`) VALUES
(1, 'news.view', 'news.view', '2026-09-29 03:31:13'),
(2, 'news.create', 'news.create', '2026-09-29 03:31:13'),
(3, 'news.update_own', 'news.update_own', '2026-09-29 03:31:13'),
(4, 'news.update_any', 'news.update_any', '2026-09-29 03:31:13'),
(5, 'news.publish', 'news.publish', '2026-09-29 03:31:13'),
(6, 'news.delete', 'news.delete', '2026-09-29 03:31:13'),
(7, 'projects.manage', 'projects.manage', '2026-09-29 03:31:13'),
(8, 'services.manage', 'services.manage', '2026-09-29 03:31:13'),
(9, 'sliders.manage', 'sliders.manage', '2026-09-29 03:31:13'),
(10, 'media.upload', 'media.upload', '2026-09-29 03:31:13'),
(11, 'media.delete', 'media.delete', '2026-09-29 03:31:13'),
(12, 'comments.moderate', 'comments.moderate', '2026-09-29 03:31:13'),
(13, 'contacts.view', 'contacts.view', '2026-09-29 03:31:13'),
(14, 'contacts.manage', 'contacts.manage', '2026-09-29 03:31:13'),
(15, 'users.create', 'users.create', '2026-09-29 03:31:13'),
(16, 'users.assign_role', 'users.assign_role', '2026-09-29 03:31:13'),
(17, 'settings.manage', 'settings.manage', '2026-09-29 03:31:13'),
(18, 'users.view', 'Xem ngu?i d¨ng', '2026-09-29 10:51:16'),
(19, 'categories.manage', 'categories.manage', '2026-09-29 04:30:49'),
(21, 'menus.manage', 'menus.manage', '2026-09-29 05:29:57'),
(22, 'home.manage', 'home.manage', '2026-09-29 05:29:57'),
(23, 'internal.manage', 'internal.manage', '2026-09-29 05:29:57'),
(24, 'disclosures.manage', 'disclosures.manage', '2026-09-29 05:29:57'),
(25, 'products.manage', 'products.manage', '2026-09-29 05:29:57'),
(26, 'pages.manage', 'pages.manage', '2026-09-29 05:29:57'),
(27, 'albums.manage', 'albums.manage', '2026-09-29 05:29:57'),
(28, 'videos.manage', 'videos.manage', '2026-09-29 05:29:57'),
(29, 'achievements.manage', 'achievements.manage', '2026-09-29 05:29:57'),
(30, 'faqs.manage', 'faqs.manage', '2026-09-29 05:29:57'),
(32, 'newsletter.manage', 'newsletter.manage', '2026-09-29 07:48:25'),
(34, 'partners.manage', 'partners.manage', '2026-09-29 07:48:25'),
(35, 'testimonials.manage', 'testimonials.manage', '2026-09-29 07:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci,
  `extra_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `category_id`, `status`, `cover_path`, `excerpt`, `content_html`, `extra_url`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Cao su tờ xông khói RSS3', 'cao-su-to-xong-khoi-rss3', NULL, 'published', 'assets/uploads/chuse-rss3.jpg', 'Sản phẩm cao su tờ xông khói phục vụ nhu cầu sản xuất công nghiệp.', '<p>RSS3 là một trong các dòng sản phẩm cao su thiên nhiên được Công ty giới thiệu tới khách hàng.</p><p>Sản phẩm được sản xuất trong hệ thống chế biến có quy trình kiểm soát chất lượng và môi trường.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://chuserubber.vn/san-pham/rss3_1/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://chuserubber.vn/san-pham/rss3_1/', '2026-01-10 08:00:00', 1, 1, '2026-01-10 08:00:00', '2026-10-05 01:31:29'),
(2, 'Cao su khối SVR 3L', 'cao-su-khoi-svr-3l', NULL, 'published', 'assets/uploads/chuse-svr3l.jpg', 'Dòng cao su khối sáng màu dùng làm nguyên liệu cho nhiều ngành công nghiệp.', '<p>SVR 3L thuộc danh mục sản phẩm cao su thiên nhiên của Công ty, hướng tới yêu cầu ổn định về chất lượng nguyên liệu.</p><p>Khách hàng có thể liên hệ bộ phận kinh doanh để nhận thông tin quy cách, chứng thư và kế hoạch cung ứng.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://chuserubber.vn/san-pham/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://chuserubber.vn/san-pham/', '2026-01-09 08:00:00', 1, 1, '2026-01-09 08:00:00', '2026-10-05 01:31:29'),
(3, 'Cao su thiên nhiên sơ chế', 'cao-su-thien-nhien-so-che', NULL, 'published', 'assets/uploads/chuse-svr-natural.jpg', 'Nguồn nguyên liệu được khai thác, thu mua và chế biến trong chuỗi hoạt động của Công ty.', '<p>Công ty tổ chức khai thác, thu mua và chế biến mủ cao su thiên nhiên tại khu vực Tây Nguyên.</p><p>Hai nhà máy chế biến sau sáp nhập có tổng công suất thiết kế khoảng 23.000 tấn mỗi năm.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/gioi-thieu/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>', 'https://www.chuserubber.vn/gioi-thieu/', '2026-01-08 08:00:00', 1, 1, '2026-01-08 08:00:00', '2026-10-05 01:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `category_id`, `status`, `cover_path`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `excerpt`, `content_html`) VALUES
(1, 'Khu công nghiệp Nam Pleiku', 'khu-cong-nghiep-nam-pleiku', NULL, 'published', 'assets/uploads/kcn-nam-pleiku-nha-dau-tu.jpg', '2026-01-03 08:00:00', 1, 1, '2026-01-03 08:00:00', '2026-10-05 01:31:29', 'Hạ tầng phục vụ thu hút đầu tư và phát triển công nghiệp tại khu vực Nam Pleiku.', '<p>Khu công nghiệp Nam Pleiku là một cấu phần trong hệ sinh thái hoạt động của Công ty sau quá trình phát triển và mở rộng.</p><p>Dự án hướng tới cung cấp hạ tầng đồng bộ, tạo điều kiện kết nối sản xuất và thu hút nhà đầu tư.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/gioi-thieu/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>'),
(2, 'Vùng nông nghiệp công nghệ cao', 'vung-nong-nghiep-cong-nghe-cao', NULL, 'published', 'assets/uploads/chuse-banner-3.jpg', '2026-01-02 08:00:00', 1, 1, '2026-01-02 08:00:00', '2026-10-05 01:31:29', 'Quy mô trên 478 ha dành cho định hướng nông nghiệp ứng dụng công nghệ.', '<p>Theo thông tin giới thiệu doanh nghiệp, diện tích nông nghiệp công nghệ cao của Công ty đạt trên 478 ha.</p><p>Đây là nguồn lực để đa dạng hóa sản phẩm và thử nghiệm các mô hình canh tác hiệu quả, bền vững.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/gioi-thieu/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>'),
(3, 'Chuyển đổi số quản trị doanh nghiệp', 'chuyen-doi-so-quan-tri-doanh-nghiep', NULL, 'published', 'assets/uploads/chuse-digital-transformation.jpg', '2025-08-22 08:00:00', 1, 1, '2025-08-22 08:00:00', '2026-10-05 01:31:29', 'Chuẩn hóa công việc và tăng khả năng phối hợp trên nền tảng số.', '<p>Dự án Base Platform được triển khai qua bốn giai đoạn: khảo sát và thiết lập, chạy thử, đào tạo, vận hành chính thức.</p><p>Việc số hóa hỗ trợ minh bạch tiến độ, giảm phân tán thông tin và từng bước hình thành môi trường làm việc hiện đại.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://chuserubber.vn/cao-su-chu-se-cong-bo-van-hanh-chinh-thuc-he-thong-base-platform/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`) VALUES
(1, 'superadmin', 'Quản trị toàn hệ thống', '2026-09-29 03:31:13'),
(2, 'content_manager', 'Quản lý nội dung', '2026-09-29 03:31:13'),
(3, 'editor', 'Biên tập viên', '2026-09-29 03:31:13'),
(4, 'support', 'Hỗ trợ', '2026-09-29 03:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2),
(1, 3),
(2, 3),
(3, 3),
(1, 4),
(2, 4),
(1, 5),
(2, 5),
(1, 6),
(2, 6),
(1, 7),
(2, 7),
(1, 8),
(2, 8),
(1, 9),
(2, 9),
(1, 10),
(2, 10),
(3, 10),
(1, 11),
(2, 11),
(1, 12),
(2, 12),
(4, 12),
(1, 13),
(4, 13),
(1, 14),
(2, 14),
(4, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(2, 19),
(1, 21),
(2, 21),
(1, 22),
(2, 22),
(1, 23),
(2, 23),
(1, 24),
(2, 24),
(1, 25),
(2, 25),
(1, 26),
(2, 26),
(1, 27),
(2, 27),
(1, 28),
(2, 28),
(1, 29),
(2, 29),
(1, 30),
(2, 30),
(1, 32),
(2, 32),
(1, 34),
(2, 34),
(1, 35),
(2, 35);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `category_id`, `status`, `cover_path`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `excerpt`, `content_html`) VALUES
(1, 'Trồng, chăm sóc và khai thác cao su', 'trong-cham-soc-va-khai-thac-cao-su', NULL, 'published', 'assets/uploads/chuse-banner-2.jpg', '2026-01-07 08:00:00', 1, 1, '2026-01-07 08:00:00', '2026-10-05 01:31:29', 'Tổ chức sản xuất cao su từ kiến thiết cơ bản đến khai thác vườn cây.', '<p>Hoạt động cốt lõi gồm trồng mới, chăm sóc, bảo vệ và khai thác vườn cây cao su.</p><p>Quy trình sản xuất chú trọng kỹ thuật, năng suất, an toàn lao động và chất lượng mủ nguyên liệu.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/gioi-thieu/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>'),
(2, 'Thu mua và chế biến mủ cao su', 'thu-mua-va-che-bien-mu-cao-su', NULL, 'published', 'assets/uploads/chuse-rss3.jpg', '2026-01-06 08:00:00', 1, 1, '2026-01-06 08:00:00', '2026-10-05 01:31:29', 'Dịch vụ thu mua nguyên liệu và chế biến các dòng cao su thiên nhiên.', '<p>Công ty thu mua mủ cao su và tổ chức chế biến tại các nhà máy trực thuộc.</p><p>Năng lực chế biến được kết nối với hệ thống quản lý chất lượng, môi trường và thử nghiệm sản phẩm.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>'),
(3, 'Hạ tầng Khu công nghiệp Nam Pleiku', 'ha-tang-khu-cong-nghiep-nam-pleiku', NULL, 'published', 'assets/uploads/kcn-nam-pleiku-nha-dau-tu.jpg', '2026-01-05 08:00:00', 1, 1, '2026-01-05 08:00:00', '2026-10-05 01:31:29', 'Đầu tư, kinh doanh và hỗ trợ khai thác hạ tầng khu công nghiệp.', '<p>Kinh doanh hạ tầng khu công nghiệp là một trong các lĩnh vực hoạt động mở rộng của Công ty.</p><p>Thông tin chi tiết về quỹ đất, hạ tầng và cơ hội hợp tác được cung cấp qua đầu mối liên hệ doanh nghiệp.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/gioi-thieu/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>'),
(4, 'Nông nghiệp công nghệ cao và năng lượng xanh', 'nong-nghiep-cong-nghe-cao-va-nang-luong-xanh', NULL, 'published', 'assets/uploads/chuse-banner-3.jpg', '2026-01-04 08:00:00', 1, 1, '2026-01-04 08:00:00', '2026-10-05 01:31:29', 'Phát triển các mô hình nông nghiệp ứng dụng công nghệ và năng lượng tái tạo.', '<p>Bên cạnh cao su, Công ty định hướng đầu tư nông nghiệp công nghệ cao, năng lượng xanh và năng lượng tái tạo.</p><p>Các hoạt động mới được triển khai theo hướng khai thác hiệu quả quỹ đất và giảm tác động tới môi trường.</p><p><strong>Nguồn tham khảo:</strong> <a href=\"https://www.chuserubber.vn/\" target=\"_blank\" rel=\"noopener noreferrer\">Cao su Chư Sê</a>.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_key`, `setting_value`, `updated_at`) VALUES
('address', '420 Hùng Vương, xã Chư Sê, tỉnh Gia Lai', '2026-09-29 10:26:21'),
('address_en', '', '2026-09-29 10:26:21'),
('business_registration', '', '2026-09-29 10:26:21'),
('company_name', 'Công ty TNHH MTV Cao su Chư Sê', '2026-09-29 10:26:21'),
('company_name_en', 'Chu Se Rubber One Member Co., Ltd', '2026-09-29 10:26:21'),
('email', 'chusecrc@gmail.com', '2026-09-29 10:26:21'),
('english_site_url', 'http://localhost/chuse2/index.php?lang=en', '2026-09-29 10:26:21'),
('facebook_url', 'https://www.facebook.com/BANKAI', '2026-09-29 10:26:21'),
('fax', '', '2026-09-29 10:26:21'),
('group_name', 'Tập đoàn Công nghiệp Cao su Việt Nam', '2026-09-29 10:26:21'),
('group_name_en', 'Vietnam Rubber Group', '2026-09-29 10:26:21'),
('header_banner', '', '2026-09-29 10:26:21'),
('hotline', '0269 385 1159', '2026-09-29 10:26:21'),
('logo_path', '', '2026-09-29 10:26:21'),
('map_embed_url', '', '2026-09-29 17:26:41'),
('meta_description', 'Thông tin hoạt động, sản phẩm cao su thiên nhiên, công bố doanh nghiệp và định hướng phát triển bền vững của Công ty TNHH MTV Cao su Chư Sê.', '2026-10-05 01:31:29'),
('meta_description_en', '', '2026-09-29 10:26:21'),
('meta_title', 'Công ty TNHH MTV Cao su Chư Sê', '2026-10-05 01:31:29'),
('meta_title_en', '', '2026-09-29 10:26:21'),
('phone', '0269 385 1159', '2026-09-29 10:26:21'),
('slogan', 'Cao su - Dòng chảy cuộc sống', '2026-10-05 01:31:29'),
('slogan_en', '', '2026-09-29 10:26:21'),
('working_hours', '', '2026-09-29 10:26:21'),
('youtube_url', '', '2026-09-29 10:26:21'),
('zalo_url', '', '2026-09-29 10:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint(5) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `image_path`, `link_url`, `alt_text`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Giá trị bền vững từ đất bazan', 'Kiến tạo tương lai xanh cùng người lao động và cộng đồng', 'assets/images/hero-rubber-plantation.webp', '/trang/lich-su-hinh-thanh-va-phat-trien', 'Vườn cao su Chư Sê trong ánh nắng ban mai', 0, 1, '2026-09-29 10:01:09', '2026-10-05 01:44:13'),
(5, 'Hành trình từ vườn cây đến giá trị bền vững', 'Gắn bó cùng người lao động, vun bồi giá trị từ thiên nhiên', 'assets/uploads/chuse-banner-2.jpg', NULL, 'Công nhân khai thác mủ trong vườn cao su', 10, 1, '2026-10-09 15:51:11', '2026-10-09 15:51:11'),
(6, 'Ươm mầm tương lai xanh', 'Phát triển vùng nguyên liệu và nông nghiệp công nghệ cao', 'assets/uploads/chuse-banner-3.jpg', NULL, 'Vườn ươm cây giống phục vụ sản xuất', 20, 1, '2026-10-09 15:51:11', '2026-10-09 15:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` smallint(6) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `failed_login_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `locked_until` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password_hash`, `status`, `failed_login_count`, `locked_until`, `last_login_at`, `created_at`, `updated_at`) VALUES
(1, 'Local Administrator', 'admin@chuse.local', '$2y$10$VCNuws/yklpCSChfCpR0Le1XKd9dAwSRqZdzi58kGSOGf4.O8z4Dq', 1, 0, NULL, '2026-10-05 02:33:56', '2026-09-29 10:34:34', '2026-10-05 02:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `cover_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content_html` mediumtext COLLATE utf8mb4_unicode_ci,
  `extra_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_achievements_slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_achievements_category` (`category_id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_albums_slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_albums_category` (`category_id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resource_item_id` (`resource`,`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_categories_type_slug` (`type`,`slug`),
  ADD KEY `idx_categories_type_sort` (`type`,`sort_order`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resource_item_id` (`resource`,`item_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `disclosures`
--
ALTER TABLE `disclosures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_disclosures_slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_disclosures_category` (`category_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_faqs_slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_faqs_category` (`category_id`);

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_home_sections_key` (`section_key`),
  ADD KEY `position_sort_order` (`position`,`sort_order`),
  ADD KEY `idx_home_sections_category` (`source_category_id`);

--
-- Indexes for table `internal`
--
ALTER TABLE `internal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_internal_slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_internal_category` (`category_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_parent_id_sort_order` (`location`,`parent_id`,`sort_order`),
  ADD KEY `idx_menus_parent` (`parent_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_news_slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_news_category` (`category_id`);

--
-- Indexes for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_pages_slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_pages_category` (`category_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_permissions_name` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_products_slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_products_category` (`category_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_projects_slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_projects_category` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_roles_name` (`name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_services_slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_services_category` (`category_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_sort_order` (`status`,`sort_order`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_users_email` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_videos_slug` (`slug`),
  ADD KEY `status` (`status`),
  ADD KEY `idx_videos_category` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `disclosures`
--
ALTER TABLE `disclosures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `internal`
--
ALTER TABLE `internal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achievements`
--
ALTER TABLE `achievements`
  ADD CONSTRAINT `fk_achievements_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `fk_albums_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `disclosures`
--
ALTER TABLE `disclosures`
  ADD CONSTRAINT `fk_disclosures_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `fk_faqs_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD CONSTRAINT `fk_home_sections_category` FOREIGN KEY (`source_category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `internal`
--
ALTER TABLE `internal`
  ADD CONSTRAINT `fk_internal_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `fk_menus_parent` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_news_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `fk_pages_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `fk_projects_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `fk_role_permissions_permission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_role_permissions_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `fk_services_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `fk_user_roles_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_roles_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `fk_videos_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
