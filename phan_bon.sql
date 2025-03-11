-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2025 at 10:42 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phan_bon`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1741687450),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1741687450;', 1741687450),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1741685375),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1741685375;', 1741685375);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_11_091447_create_news_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `ten`, `slug`, `anh`, `noi_dung`, `created_at`, `updated_at`) VALUES
(1, 'Cách bón phân cho mai vàng? Lịch bón phân cho mai vàng theo từng tháng', 'cach-bon-phan-cho-mai-vang-lich-bon-phan-cho-mai-vang-theo-tung-thang', '01JP2A36HCJ8MRGGVR11XB4X9H.jpg', '<h2><strong>1.Cách chọn đất trồng mai phù hợp</strong></h2><h3><strong>Đối với mai trồng dưới đất</strong></h3><p>Mai vàng có khả năng thích nghi tốt với nhiều loại đất nhưng phát triển mạnh nhất trên đất thịt nhẹ, giàu dinh dưỡng, thoát nước tốt. Đất trồng không được nhiễm phèn, mặn hoặc chứa hóa chất độc hại, vì những yếu tố này có thể ảnh hưởng đến sự phát triển của rễ cây. Nếu trồng mai trên đất vườn hoặc líp, bà con nên bổ sung phân hữu cơ hoai mục để cải thiện độ tơi xốp và tăng hàm lượng dinh dưỡng.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-chon-dat-trong-mai-phu-hop.jpg&quot;,&quot;width&quot;:720}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-chon-dat-trong-mai-phu-hop.jpg\" width=\"720\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure><br>Cách chọn đất trồng mai phù hợp<br><br></p><h3><strong>Đối với mai trồng trong chậu</strong></h3><p>Khi trồng mai trong chậu, đất cần đảm bảo độ thông thoáng và giữ ẩm tốt. Tỷ lệ phối trộn đất thích hợp là 70-80% đất sạch kết hợp với 20-30% phân hữu cơ hoai mục (phân bò, phân trùn quế, mùn dừa, tro trấu). Nếu có điều kiện, bà con có thể trộn thêm đá perlite hoặc đất trồng chuyên dụng dành cho mai để giúp cây phát triển tốt hơn.</p><h2><strong>2.Cách bón phân cho mai vàng đúng chuẩn kỹ thuật</strong></h2><h3><strong>Cách bón phân cho mai vàng trồng dưới đất</strong></h3><p>Khi trồng mai trực tiếp trên đất vườn, bà con cần thực hiện bón phân theo từng giai đoạn phát triển của cây:</p><ul><li>Bón lót khi trồng: Trộn 5-10kg phân chuồng hoai mục, 200-300g vôi bột, 50-100g lân Đầu Trâu vào hố trồng để giúp cây có nguồn dinh dưỡng ban đầu.</li><li>Bón thúc: Khi cây bắt đầu ra rễ (khoảng 10-15 ngày sau trồng), có thể hòa loãng NPK 20-20-15+TE để tưới, liều lượng 50-100g/10-15 lít nước, tưới mỗi 20-30 ngày/lần.</li><li>Bón duy trì: Khi cây đã phát triển ổn định, bón NPK 16-12-8-11+TE khoảng 20-50g/gốc mỗi 1-2 tháng/lần.</li></ul><p>Ngoài ra, vào các giai đoạn quan trọng như sau Tết, đầu mùa mưa, giữa mùa mưa và trước khi cây ra hoa, bà con cần bổ sung 5-10kg phân hữu cơ/gốc để giúp cây có đủ dinh dưỡng.</p><h3><strong>Cách bón phân cho cây mai trồng trong chậu</strong></h3><p>Việc bón phân cho mai trồng chậu cũng tương tự nhưng cần điều chỉnh lượng phân để phù hợp với không gian chậu:</p><ul><li>Bón phân định kỳ: Tùy vào kích thước chậu, lượng phân bón dao động từ 20-50g/chậu/lần, với chậu lớn có thể bón 50-80g/chậu/lần.</li><li>Cách bón: Tạo rãnh xung quanh chậu, sâu khoảng 3-5cm, rải phân vào rãnh rồi lấp đất và tưới đủ ẩm.</li><li>Thay đất hàng năm: Để cây mai hấp thụ dinh dưỡng tốt, mỗi năm nên thay đất hoặc bổ sung 2-3kg phân hữu cơ vào chậu vào đầu mùa mưa.</li></ul><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-bon-phan-cho-mai-vang-dung-chuan-ky-thuat.jpg&quot;,&quot;width&quot;:720}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-bon-phan-cho-mai-vang-dung-chuan-ky-thuat.jpg\" width=\"720\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure><br>Cách bón phân cho mai vàng đúng chuẩn kỹ thuật<br><br></p><p>Bên cạnh phân bón qua đất, bà con có thể kết hợp phân bón lá như Đầu Trâu 501 (thúc ra lá), Đầu Trâu 701 (thúc ra bông), Đầu Trâu 901 (dưỡng bông) để tăng hiệu quả sinh trưởng.</p><h2><strong>3.Lịch bón phân cho mai vàng theo từng tháng</strong></h2><h3><strong>Bón phân cho mai trong giai đoạn phục hồi và tăng trưởng từ tháng 1 đến tháng 6 âm lịch</strong></h3><p>Sau khi mai ra hoa vào dịp Tết, bà con cần cắt tỉa cành, thay đất, bón phân để cây hồi phục. Trong giai đoạn này:</p><ul><li>Bón phân hữu cơ hoai mục để cải thiện đất.</li><li>Sử dụng NPK 20-20-15+TE để kích thích ra lá và cành mới, định kỳ 2-3 tuần/lần.</li><li>Bổ sung phân bón lá Đầu Trâu 501 để thúc đẩy quá trình ra lá non.</li></ul><h3><strong>Bón phân cho cây mai trong giai đoạn hình thành và phát triển nụ hoa (tháng 7 đến tháng 10 âm lịch)</strong></h3><p>Đây là thời điểm quan trọng để cây mai tích lũy dinh dưỡng và chuẩn bị cho quá trình ra hoa. Lúc này cần:</p><ul><li>Giảm lượng đạm, tăng cường phân lân và kali để giúp cây hình thành nụ tốt hơn.</li><li>Bón NPK 6-30-30 hoặc 10-55-10 định kỳ 15-20 ngày/lần.</li><li>Sử dụng phân bón lá Đầu Trâu để thúc đẩy sự phát triển của nụ.</li></ul><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://ttpglobal.com.vn/wp-content/uploads/2025/02/Lich-bon-phan-cho-mai-vang-theo-tung-thang.jpg&quot;,&quot;width&quot;:720}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ttpglobal.com.vn/wp-content/uploads/2025/02/Lich-bon-phan-cho-mai-vang-theo-tung-thang.jpg\" width=\"720\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure><br>Lịch bón phân cho mai vàng theo từng tháng<br><br></p><h3><strong>Bón phân cho mai từ khoảng giữa tháng 10 đến cuối tháng 11 âm lịch</strong></h3><p>Thời gian này cây mai ngừng sinh trưởng để tập trung vào việc phát triển nụ hoa:</p><ul><li>Giữ lá xanh tốt để đảm bảo quang hợp.</li><li>Nếu nụ nhỏ, cần bón NPK 6-30-30 để kích thích nụ phát triển.</li><li>Nếu nụ quá to, sử dụng NPK 30-10-10 để kìm hãm tốc độ ra hoa sớm.</li></ul><p><br></p>', '2025-03-11 02:55:38', '2025-03-11 02:55:38'),
(2, '30+ các loại hoa lan đẹp phổ biến dễ trồng', '30-cac-loai-hoa-lan-dep-pho-bien-de-trong', '01JP2AH1DP8FF73HAB0PSN2EW8.jpg', '<h2><strong>1.Cách chọn đất trồng mai phù hợp</strong></h2><h3><strong>Đối với mai trồng dưới đất</strong></h3><p>Mai vàng có khả năng thích nghi tốt với nhiều loại đất nhưng phát triển mạnh nhất trên đất thịt nhẹ, giàu dinh dưỡng, thoát nước tốt. Đất trồng không được nhiễm phèn, mặn hoặc chứa hóa chất độc hại, vì những yếu tố này có thể ảnh hưởng đến sự phát triển của rễ cây. Nếu trồng mai trên đất vườn hoặc líp, bà con nên bổ sung phân hữu cơ hoai mục để cải thiện độ tơi xốp và tăng hàm lượng dinh dưỡng.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-chon-dat-trong-mai-phu-hop.jpg&quot;,&quot;width&quot;:720}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-chon-dat-trong-mai-phu-hop.jpg\" width=\"720\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure><br>Cách chọn đất trồng mai phù hợp<br><br></p><h3><strong>Đối với mai trồng trong chậu</strong></h3><p>Khi trồng mai trong chậu, đất cần đảm bảo độ thông thoáng và giữ ẩm tốt. Tỷ lệ phối trộn đất thích hợp là 70-80% đất sạch kết hợp với 20-30% phân hữu cơ hoai mục (phân bò, phân trùn quế, mùn dừa, tro trấu). Nếu có điều kiện, bà con có thể trộn thêm đá perlite hoặc đất trồng chuyên dụng dành cho mai để giúp cây phát triển tốt hơn.</p><h2><strong>2.Cách bón phân cho mai vàng đúng chuẩn kỹ thuật</strong></h2><h3><strong>Cách bón phân cho mai vàng trồng dưới đất</strong></h3><p>Khi trồng mai trực tiếp trên đất vườn, bà con cần thực hiện bón phân theo từng giai đoạn phát triển của cây:</p><ul><li>Bón lót khi trồng: Trộn 5-10kg phân chuồng hoai mục, 200-300g vôi bột, 50-100g lân Đầu Trâu vào hố trồng để giúp cây có nguồn dinh dưỡng ban đầu.</li><li>Bón thúc: Khi cây bắt đầu ra rễ (khoảng 10-15 ngày sau trồng), có thể hòa loãng NPK 20-20-15+TE để tưới, liều lượng 50-100g/10-15 lít nước, tưới mỗi 20-30 ngày/lần.</li><li>Bón duy trì: Khi cây đã phát triển ổn định, bón NPK 16-12-8-11+TE khoảng 20-50g/gốc mỗi 1-2 tháng/lần.</li></ul><p>Ngoài ra, vào các giai đoạn quan trọng như sau Tết, đầu mùa mưa, giữa mùa mưa và trước khi cây ra hoa, bà con cần bổ sung 5-10kg phân hữu cơ/gốc để giúp cây có đủ dinh dưỡng.</p><h3><strong>Cách bón phân cho cây mai trồng trong chậu</strong></h3><p>Việc bón phân cho mai trồng chậu cũng tương tự nhưng cần điều chỉnh lượng phân để phù hợp với không gian chậu:</p><ul><li>Bón phân định kỳ: Tùy vào kích thước chậu, lượng phân bón dao động từ 20-50g/chậu/lần, với chậu lớn có thể bón 50-80g/chậu/lần.</li><li>Cách bón: Tạo rãnh xung quanh chậu, sâu khoảng 3-5cm, rải phân vào rãnh rồi lấp đất và tưới đủ ẩm.</li><li>Thay đất hàng năm: Để cây mai hấp thụ dinh dưỡng tốt, mỗi năm nên thay đất hoặc bổ sung 2-3kg phân hữu cơ vào chậu vào đầu mùa mưa.</li></ul><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-bon-phan-cho-mai-vang-dung-chuan-ky-thuat.jpg&quot;,&quot;width&quot;:720}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-bon-phan-cho-mai-vang-dung-chuan-ky-thuat.jpg\" width=\"720\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure><br>Cách bón phân cho mai vàng đúng chuẩn kỹ thuật<br><br></p><p>Bên cạnh phân bón qua đất, bà con có thể kết hợp phân bón lá như Đầu Trâu 501 (thúc ra lá), Đầu Trâu 701 (thúc ra bông), Đầu Trâu 901 (dưỡng bông) để tăng hiệu quả sinh trưởng.</p><h2><strong>3.Lịch bón phân cho mai vàng theo từng tháng</strong></h2><h3><strong>Bón phân cho mai trong giai đoạn phục hồi và tăng trưởng từ tháng 1 đến tháng 6 âm lịch</strong></h3><p>Sau khi mai ra hoa vào dịp Tết, bà con cần cắt tỉa cành, thay đất, bón phân để cây hồi phục. Trong giai đoạn này:</p><ul><li>Bón phân hữu cơ hoai mục để cải thiện đất.</li><li>Sử dụng NPK 20-20-15+TE để kích thích ra lá và cành mới, định kỳ 2-3 tuần/lần.</li><li>Bổ sung phân bón lá Đầu Trâu 501 để thúc đẩy quá trình ra lá non.</li></ul><h3><strong>Bón phân cho cây mai trong giai đoạn hình thành và phát triển nụ hoa (tháng 7 đến tháng 10 âm lịch)</strong></h3><p>Đây là thời điểm quan trọng để cây mai tích lũy dinh dưỡng và chuẩn bị cho quá trình ra hoa. Lúc này cần:</p><ul><li>Giảm lượng đạm, tăng cường phân lân và kali để giúp cây hình thành nụ tốt hơn.</li><li>Bón NPK 6-30-30 hoặc 10-55-10 định kỳ 15-20 ngày/lần.</li><li>Sử dụng phân bón lá Đầu Trâu để thúc đẩy sự phát triển của nụ.</li></ul><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://ttpglobal.com.vn/wp-content/uploads/2025/02/Lich-bon-phan-cho-mai-vang-theo-tung-thang.jpg&quot;,&quot;width&quot;:720}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ttpglobal.com.vn/wp-content/uploads/2025/02/Lich-bon-phan-cho-mai-vang-theo-tung-thang.jpg\" width=\"720\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure><br>Lịch bón phân cho mai vàng theo từng tháng<br><br></p><h3><strong>Bón phân cho mai từ khoảng giữa tháng 10 đến cuối tháng 11 âm lịch</strong></h3><p>Thời gian này cây mai ngừng sinh trưởng để tập trung vào việc phát triển nụ hoa:</p><ul><li>Giữ lá xanh tốt để đảm bảo quang hợp.</li><li>Nếu nụ nhỏ, cần bón NPK 6-30-30 để kích thích nụ phát triển.</li><li>Nếu nụ quá to, sử dụng NPK 30-10-10 để kìm hãm tốc độ ra hoa sớm.</li></ul><p><br></p>', '2025-03-11 03:02:12', '2025-03-11 03:03:11'),
(3, 'Đặc điểm các loại cỏ dại trong vườn thường gặp', 'dac-diem-cac-loai-co-dai-trong-vuon-thuong-gap', '01JP2AHPQ6AP78VG6DETNFWBZY.jpg', '<h2><strong>1.Cách chọn đất trồng mai phù hợp</strong></h2><h3><strong>Đối với mai trồng dưới đất</strong></h3><p>Mai vàng có khả năng thích nghi tốt với nhiều loại đất nhưng phát triển mạnh nhất trên đất thịt nhẹ, giàu dinh dưỡng, thoát nước tốt. Đất trồng không được nhiễm phèn, mặn hoặc chứa hóa chất độc hại, vì những yếu tố này có thể ảnh hưởng đến sự phát triển của rễ cây. Nếu trồng mai trên đất vườn hoặc líp, bà con nên bổ sung phân hữu cơ hoai mục để cải thiện độ tơi xốp và tăng hàm lượng dinh dưỡng.</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-chon-dat-trong-mai-phu-hop.jpg&quot;,&quot;width&quot;:720}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-chon-dat-trong-mai-phu-hop.jpg\" width=\"720\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure><br>Cách chọn đất trồng mai phù hợp<br><br></p><h3><strong>Đối với mai trồng trong chậu</strong></h3><p>Khi trồng mai trong chậu, đất cần đảm bảo độ thông thoáng và giữ ẩm tốt. Tỷ lệ phối trộn đất thích hợp là 70-80% đất sạch kết hợp với 20-30% phân hữu cơ hoai mục (phân bò, phân trùn quế, mùn dừa, tro trấu). Nếu có điều kiện, bà con có thể trộn thêm đá perlite hoặc đất trồng chuyên dụng dành cho mai để giúp cây phát triển tốt hơn.</p><h2><strong>2.Cách bón phân cho mai vàng đúng chuẩn kỹ thuật</strong></h2><h3><strong>Cách bón phân cho mai vàng trồng dưới đất</strong></h3><p>Khi trồng mai trực tiếp trên đất vườn, bà con cần thực hiện bón phân theo từng giai đoạn phát triển của cây:</p><ul><li>Bón lót khi trồng: Trộn 5-10kg phân chuồng hoai mục, 200-300g vôi bột, 50-100g lân Đầu Trâu vào hố trồng để giúp cây có nguồn dinh dưỡng ban đầu.</li><li>Bón thúc: Khi cây bắt đầu ra rễ (khoảng 10-15 ngày sau trồng), có thể hòa loãng NPK 20-20-15+TE để tưới, liều lượng 50-100g/10-15 lít nước, tưới mỗi 20-30 ngày/lần.</li><li>Bón duy trì: Khi cây đã phát triển ổn định, bón NPK 16-12-8-11+TE khoảng 20-50g/gốc mỗi 1-2 tháng/lần.</li></ul><p>Ngoài ra, vào các giai đoạn quan trọng như sau Tết, đầu mùa mưa, giữa mùa mưa và trước khi cây ra hoa, bà con cần bổ sung 5-10kg phân hữu cơ/gốc để giúp cây có đủ dinh dưỡng.</p><h3><strong>Cách bón phân cho cây mai trồng trong chậu</strong></h3><p>Việc bón phân cho mai trồng chậu cũng tương tự nhưng cần điều chỉnh lượng phân để phù hợp với không gian chậu:</p><ul><li>Bón phân định kỳ: Tùy vào kích thước chậu, lượng phân bón dao động từ 20-50g/chậu/lần, với chậu lớn có thể bón 50-80g/chậu/lần.</li><li>Cách bón: Tạo rãnh xung quanh chậu, sâu khoảng 3-5cm, rải phân vào rãnh rồi lấp đất và tưới đủ ẩm.</li><li>Thay đất hàng năm: Để cây mai hấp thụ dinh dưỡng tốt, mỗi năm nên thay đất hoặc bổ sung 2-3kg phân hữu cơ vào chậu vào đầu mùa mưa.</li></ul><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-bon-phan-cho-mai-vang-dung-chuan-ky-thuat.jpg&quot;,&quot;width&quot;:720}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ttpglobal.com.vn/wp-content/uploads/2025/02/Cach-bon-phan-cho-mai-vang-dung-chuan-ky-thuat.jpg\" width=\"720\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure><br>Cách bón phân cho mai vàng đúng chuẩn kỹ thuật<br><br></p><p>Bên cạnh phân bón qua đất, bà con có thể kết hợp phân bón lá như Đầu Trâu 501 (thúc ra lá), Đầu Trâu 701 (thúc ra bông), Đầu Trâu 901 (dưỡng bông) để tăng hiệu quả sinh trưởng.</p><h2><strong>3.Lịch bón phân cho mai vàng theo từng tháng</strong></h2><h3><strong>Bón phân cho mai trong giai đoạn phục hồi và tăng trưởng từ tháng 1 đến tháng 6 âm lịch</strong></h3><p>Sau khi mai ra hoa vào dịp Tết, bà con cần cắt tỉa cành, thay đất, bón phân để cây hồi phục. Trong giai đoạn này:</p><ul><li>Bón phân hữu cơ hoai mục để cải thiện đất.</li><li>Sử dụng NPK 20-20-15+TE để kích thích ra lá và cành mới, định kỳ 2-3 tuần/lần.</li><li>Bổ sung phân bón lá Đầu Trâu 501 để thúc đẩy quá trình ra lá non.</li></ul><h3><strong>Bón phân cho cây mai trong giai đoạn hình thành và phát triển nụ hoa (tháng 7 đến tháng 10 âm lịch)</strong></h3><p>Đây là thời điểm quan trọng để cây mai tích lũy dinh dưỡng và chuẩn bị cho quá trình ra hoa. Lúc này cần:</p><ul><li>Giảm lượng đạm, tăng cường phân lân và kali để giúp cây hình thành nụ tốt hơn.</li><li>Bón NPK 6-30-30 hoặc 10-55-10 định kỳ 15-20 ngày/lần.</li><li>Sử dụng phân bón lá Đầu Trâu để thúc đẩy sự phát triển của nụ.</li></ul><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:480,&quot;url&quot;:&quot;https://ttpglobal.com.vn/wp-content/uploads/2025/02/Lich-bon-phan-cho-mai-vang-theo-tung-thang.jpg&quot;,&quot;width&quot;:720}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://ttpglobal.com.vn/wp-content/uploads/2025/02/Lich-bon-phan-cho-mai-vang-theo-tung-thang.jpg\" width=\"720\" height=\"480\"><figcaption class=\"attachment__caption\"></figcaption></figure><br>Lịch bón phân cho mai vàng theo từng tháng<br><br></p><h3><strong>Bón phân cho mai từ khoảng giữa tháng 10 đến cuối tháng 11 âm lịch</strong></h3><p>Thời gian này cây mai ngừng sinh trưởng để tập trung vào việc phát triển nụ hoa:</p><ul><li>Giữ lá xanh tốt để đảm bảo quang hợp.</li><li>Nếu nụ nhỏ, cần bón NPK 6-30-30 để kích thích nụ phát triển.</li><li>Nếu nụ quá to, sử dụng NPK 30-10-10 để kìm hãm tốc độ ra hoa sớm.</li></ul><p><br></p>', '2025-03-11 03:02:32', '2025-03-11 03:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1MBw6iA9u78wPpaGxZVdzJRDzKDTJ4iS5AWHyFau', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTXFOTkZRZWx0cEtPY3lxOGZlTHpZQTRQcjQ3cTdjY1ZLSTJWbmFwOSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWRtaW4vbmV3cy8zL2VkaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkajNML2NZbDV2eXgucXo1ZnlkZ25VT0JvRkdpQ011a1I1THpRSTFQOUhhWXJCYnhaWFpITEciO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1741687423),
('51Wm7JFB1lnieGPY4XNjokXwuyckcAsbg0l0cYuc', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiT2ZndzR2Y0VSbkpDOWhjSVZkRmRQZ1Q3VUs0M09GYjRxR2dxcmJsVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkajNML2NZbDV2eXgucXo1ZnlkZ25VT0JvRkdpQ011a1I1THpRSTFQOUhhWXJCYnhaWFpITEciO30=', 1741689754),
('7aiKP6THhnuJKfQMeFVZKjAaCUNwainLIPgfWKS0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0pZSkhXZTBxUm95MUVlNVZabXFxanp6Mld2bUFIZ2p3SlBBTGRCMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741689059),
('i1te7rf5rn6rSCV6kr8tx6UYtprtk71h9V7JgGOl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnpodzNRM2FHcXhXR1NucTNHSUZob0tSVFhaR0l0ZzUxWVZzU3BkUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzL2NhYy1sb2FpLWhvYS1sYW4tZGVwLXBoby1iaWVuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741687865),
('jJtW1POrOvb8JzIlkhl9gwJKlkzxYombVfpxbFd2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSllQTGc3SU9XVjhibERSNE94STQ2Sk92MzB3a2ZVeE9BZE1jV2J4bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741689055),
('X5JXNK1QeSpK6dj3Srbq1yRpfIPqQU11ajEy6671', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaGRVN1ljbnl0VkM1RTh2MkFFcFR3cGNBOHJoV0NuZGtyZm1TTTBrWiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741689058);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'giang', 'admin@gmail.com', NULL, '$2y$12$j3L/cYl5vyx.qz5fydgnUOBoFGiCMukR5LzQI1P9HaYrBbxZXZHLG', '83bA09MTgf3gwE2KBnKixn809T6QA95aETCoFAXumfgmxNKafNdZ442HaCx9', '2025-03-11 02:27:55', '2025-03-11 02:27:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
