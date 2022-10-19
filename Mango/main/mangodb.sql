-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.8-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- mangodb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `mangodb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `mangodb`;

-- 테이블 mangodb.ask 구조 내보내기
CREATE TABLE IF NOT EXISTS `ask` (
  `ask_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ask_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ask_email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ask_phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ask_type` int(10) DEFAULT 0,
  `ask_typeDetail` int(10) DEFAULT 0,
  `ask_cat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ask_catDetail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ask_email_recv` int(20) DEFAULT 0,
  `ask_sms_recv` int(20) DEFAULT 0,
  `ask_subject` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ask_content` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ask_status` int(20) DEFAULT 0,
  `ask_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ask_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.ask:~31 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ask` DISABLE KEYS */;
INSERT IGNORE INTO `ask` (`ask_id`, `id`, `ask_name`, `ask_email`, `ask_phone`, `ask_type`, `ask_typeDetail`, `ask_cat`, `ask_catDetail`, `ask_email_recv`, `ask_sms_recv`, `ask_subject`, `ask_content`, `ask_status`, `ask_date`) VALUES
	(1, NULL, '안유진', 'youu@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '이번에 영화 나오나요', '이번에 무슨 영화 나오냐오', 0, '2022-10-01 14:36:36'),
	(2, NULL, '장원영', 'd@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '공포영화 리스트', '알려주세요', 0, '2022-10-01 14:37:26'),
	(3, NULL, '테스트', 'f@test.com', '01000001111', 0, 0, NULL, NULL, 0, 0, '해당 영화관 운영 하나요', '영화관 운영 하는건가요??', 0, '2022-10-01 14:42:33'),
	(4, NULL, '안유진', 'youu@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '이번에 영화 나오나요', '이번에 무슨 영화 나오냐오', 0, '2022-10-01 14:36:36'),
	(5, NULL, '장원영', 'd@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '공포영화 리스트', '알려주세요', 0, '2022-10-01 14:37:26'),
	(6, NULL, '테스트', 'f@test.com', '01000001111', 0, 0, NULL, NULL, 0, 0, '해당 영화관 운영 하나요', '영화관 운영 하는건가요??', 0, '2022-10-01 14:42:33'),
	(7, NULL, '안유진', 'youu@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '이번에 영화 나오나요', '이번에 무슨 영화 나오냐오', 0, '2022-10-01 14:36:36'),
	(8, NULL, '장원영', 'd@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '공포영화 리스트', '알려주세요', 0, '2022-10-01 14:37:26'),
	(9, NULL, '테스트', 'f@test.com', '01000001111', 0, 0, NULL, NULL, 0, 0, '해당 영화관 운영 하나요', '영화관 운영 하는건가요??', 0, '2022-10-01 14:42:33'),
	(10, NULL, '안유진', 'youu@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '이번에 영화 나오나요', '이번에 무슨 영화 나오냐오', 0, '2022-10-01 14:36:36'),
	(11, NULL, '장원영', 'd@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '공포영화 리스트', '알려주세요', 0, '2022-10-01 14:37:26'),
	(12, NULL, '테스트', 'f@test.com', '01000001111', 0, 0, NULL, NULL, 0, 0, '해당 영화관 운영 하나요', '영화관 운영 하는건가요??', 0, '2022-10-01 14:42:33'),
	(13, NULL, '안유진', 'youu@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '이번에 영화 나오나요', '이번에 무슨 영화 나오냐오', 0, '2022-10-01 14:36:36'),
	(14, NULL, '장원영', 'd@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '공포영화 리스트', '알려주세요', 0, '2022-10-01 14:37:26'),
	(15, NULL, '테스트', 'f@test.com', '01000001111', 0, 0, NULL, NULL, 0, 0, '해당 영화관 운영 하나요', '영화관 운영 하는건가요??', 0, '2022-10-01 14:42:33'),
	(16, NULL, '장원영', 'd@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '공포영화 리스트', '알려주세요', 0, '2022-10-01 14:37:26'),
	(17, NULL, '테스트', 'f@test.com', '01000001111', 0, 0, NULL, NULL, 0, 0, '해당 영화관 운영 하나요', '영화관 운영 하는건가요??', 0, '2022-10-01 14:42:33'),
	(18, NULL, '안유진', 'youu@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '이번에 영화 나오나요', '이번에 무슨 영화 나오냐오', 0, '2022-10-01 14:36:36'),
	(19, NULL, '장원영', 'd@test.com', '01111112222', 0, 0, NULL, NULL, 0, 0, '공포영화 리스트', '알려주세요', 0, '2022-10-01 14:37:26'),
	(20, NULL, '테스트', 'f@test.com', '01000001111', 0, 0, NULL, NULL, 0, 0, '해당 영화관 운영 하나요', '영화관 운영 하는건가요??', 0, '2022-10-01 14:42:33'),
	(35, NULL, 'ㅇㅇ', 'd@naver.com', '01000000000', 1, 0, '100', '2', 0, 0, '테스트', '테스트', 0, '2022-10-07 14:23:46'),
	(36, NULL, '1111', '111@11', '11', 0, 71, '300', '2', 0, 0, '11', '11', 0, '2022-10-18 20:06:37'),
	(37, NULL, '11', '111@11', '11', 0, 41, '300', '2', 0, 0, '11', '11', 0, '2022-10-19 11:35:35'),
	(38, NULL, '345345', '34534534@431', '34534', 0, 70, '200', '2', 0, 0, '123151652435', '345345', 0, '2022-10-19 11:36:03'),
	(39, NULL, '444', '34534534@431', '44', 0, 42, '100', '2', 0, 0, '213', '213', 0, '2022-10-19 11:51:24'),
	(40, NULL, '444', '34534534@431', '44', 0, 42, '100', '2', 0, 0, '213', '213', 0, '2022-10-19 11:57:47'),
	(41, NULL, '444', '34534534@431', '44', 0, 42, '100', '2', 0, 0, '213', '213', 0, '2022-10-19 11:58:56'),
	(42, NULL, '444', '34534534@431', '44', 0, 42, '100', '2', 0, 0, '213', '213', 0, '2022-10-19 11:59:56'),
	(43, 'son1', '111', 'asd@314', '1111111', 0, 22, '100', '2', 0, 0, '123', '123', 0, '2022-10-19 12:04:45'),
	(44, 'son1', '111', 'asd@314', '1111111', 0, 22, '100', '2', 0, 0, '123', '123', 0, '2022-10-19 12:05:14'),
	(45, 'son1', '111', '34534534@431', '1111111', 0, 22, '300', '1', 0, 0, '문의드립니다', '문의요', 0, '2022-10-19 12:05:34');
/*!40000 ALTER TABLE `ask` ENABLE KEYS */;

-- 테이블 mangodb.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `board_id` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contents` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writer` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writer_id` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.board:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- 테이블 mangodb.cart 구조 내보내기
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '장바구니 번호',
  `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '상품 번호',
  `goods_price` int(11) NOT NULL COMMENT '상품 가격',
  `id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '고객 아이디',
  `goods_qty` int(11) NOT NULL COMMENT '상품 수량',
  `delivery_price` int(11) NOT NULL DEFAULT 0 COMMENT '배송비',
  `seller_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '판매자샵 이름',
  `goods_img` varchar(8000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품 이미지',
  `goods_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품 이름',
  `cart_date` date NOT NULL DEFAULT sysdate(6) COMMENT '카트등록날짜',
  `orderYN` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'N' COMMENT '주문여부',
  PRIMARY KEY (`cart_id`),
  KEY `id` (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.cart:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT IGNORE INTO `cart` (`cart_id`, `goods_id`, `goods_price`, `id`, `goods_qty`, `delivery_price`, `seller_name`, `goods_img`, `goods_name`, `cart_date`, `orderYN`) VALUES
	(284, 233, 4000, 'son1', 1, 2500, '굿즈샵', 'https://m.upinews.kr/data/upi/image/20190502/p1065586937092904_555_thum.jpg', '애나벨', '2022-10-13', '\'N\''),
	(285, 233, 4000, 'son1', 1, 2500, '굿즈샵', 'https://m.upinews.kr/data/upi/image/20190502/p1065586937092904_555_thum.jpg', '애나벨', '2022-10-14', '\'N\''),
	(286, 231, 10000, 'son1', 1, 0, '굿즈샵', 'http://openimage.interpark.com/goods_image_big/6/7/8/7/9099316787_l.jpg', '해리포터', '2022-10-18', 'N'),
	(287, 233, 4000, 'son1', 1, 2500, '굿즈샵', 'https://m.upinews.kr/data/upi/image/20190502/p1065586937092904_555_thum.jpg', '애나벨', '2022-10-18', 'N');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- 테이블 mangodb.crawling 구조 내보내기
CREATE TABLE IF NOT EXISTS `crawling` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `rank` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_openDate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`seq`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.crawling:~19 rows (대략적) 내보내기
/*!40000 ALTER TABLE `crawling` DISABLE KEYS */;
INSERT IGNORE INTO `crawling` (`seq`, `rank`, `img`, `movie_title`, `movie_rate`, `movie_openDate`) VALUES
	(27532, 'No.1', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86323/86323_320.jpg', '블랙 아담', '37.7%', '2022.10.19 개봉'),
	(27533, 'No.2', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86267/86267_320.jpg', '귀못', '10.2%', '2022.10.19 개봉'),
	(27534, 'No.3', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86155/86155_320.jpg', '공조2-인터내셔날', '4.0%', '2022.09.07 개봉'),
	(27535, 'No.4', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000083/83821/83821_320.jpg', '인생은 아름다워', '3.7%', '2022.09.28 개봉'),
	(27536, 'No.5', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86205/86205_320.jpg', '에브리씽 에브리웨어 올 앳 원스', '3.2%', '2022.10.12 개봉'),
	(27537, 'No.6', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86276/86276_320.jpg', '오펀-천사의 탄생', '2.4%', '2022.10.12 개봉'),
	(27538, 'No.7', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86201/86201_320.jpg', '극장판 5등분의 신부', '2.4%', '2022.09.22 개봉'),
	(27539, 'No.8', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86371/86371_320.jpg', '그 남자, 좋은 간호사', '1.7%', '2022.10.19 개봉'),
	(27540, 'No.9', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86215/86215_320.jpg', '미혹', '1.6%', '2022.10.19 개봉'),
	(27541, 'No.10', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86194/86194_320.jpg', '극장판 짱구는 못말려-수수께끼! 꽃피는 천하떡잎학교', '1.6%', '2022.09.28 개봉'),
	(27542, 'No.11', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86191/86191_320.jpg', '정직한 후보2', '1.2%', '2022.09.28 개봉'),
	(27543, 'No.12', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86274/86274_320.jpg', '엑스칼리버 더 뮤지컬 다큐멘터리: 도겸의 찬란한 여정', '1.0%', '2022.10.05 개봉'),
	(27544, 'No.13', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86275/86275_320.jpg', '대무가', '0.9%', '2022.10.12 개봉'),
	(27545, 'No.14', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86282/86282_320.jpg', '티켓 투 파라다이스', '0.5%', '2022.10.12 개봉'),
	(27546, 'No.15', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86283/86283_320.jpg', '나를 죽여줘', '0.4%', '2022.10.19 개봉'),
	(27547, 'No.16', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85603/85603_320.jpg', '극장판 주술회전 0', '0.3%', '2022.02.17 개봉'),
	(27548, 'No.17', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86305/86305_320.jpg', '녹색 광선', '0.3%', '2022.10.13 개봉'),
	(27549, 'No.18', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86311/86311_320.jpg', '수집가', '0.3%', '2022.10.13 개봉'),
	(27550, 'No.19', 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000086/86300/86300_320.jpg', '4DX 문유', '0.3%', '2022.10.12 개봉');
/*!40000 ALTER TABLE `crawling` ENABLE KEYS */;

-- 테이블 mangodb.cs 구조 내보내기
CREATE TABLE IF NOT EXISTS `cs` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT,
  `cs_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cs_content` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cs_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cs_category` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cs_fileName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cs_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`cs_id`),
  KEY `fk_member_cs` (`id`),
  CONSTRAINT `fk_member_cs` FOREIGN KEY (`id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.cs:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `cs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs` ENABLE KEYS */;

-- 테이블 mangodb.goods 구조 내보내기
CREATE TABLE IF NOT EXISTS `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '상품 아이디',
  `goods_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품 카테고리',
  `goods_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품 이름',
  `seller_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '판매자 이름',
  `goods_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '판매중' COMMENT '상품 상태',
  `goods_detail` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품 상세내용',
  `goods_price` int(11) NOT NULL COMMENT '상품 가격',
  `goods_stock` int(11) NOT NULL DEFAULT 0 COMMENT '상품 재고',
  `goods_img_path` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '상품이미지경로',
  `delivery_price` int(11) NOT NULL DEFAULT 0 COMMENT '배송비',
  `goods_discount` int(2) NOT NULL DEFAULT 0 COMMENT '할인율',
  `gno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.goods:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;

-- 테이블 mangodb.img_file 구조 내보내기
CREATE TABLE IF NOT EXISTS `img_file` (
  `ID` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ORGIN_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `열 3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.img_file:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `img_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `img_file` ENABLE KEYS */;

-- 테이블 mangodb.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'auth:2일 경우 담당자',
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'auth:2일 경우 담당자',
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'auth:2일 경우 담당자',
  `auth` int(20) NOT NULL COMMENT 'auth 3:일반2:사업주1:관리자',
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'auth:2일 경우 회사',
  `zipno` int(11) DEFAULT NULL COMMENT 'auth:2일 경우 회사',
  `registerdate` date NOT NULL DEFAULT sysdate(6),
  `unregisterdate` date DEFAULT NULL,
  `ownername` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '대표자명',
  `businessnumber` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '사업자등록번호',
  `sellername` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '매장명',
  `logoimg` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '매장로고',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.member:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT IGNORE INTO `member` (`id`, `password`, `name`, `phone`, `email`, `auth`, `address`, `zipno`, `registerdate`, `unregisterdate`, `ownername`, `businessnumber`, `sellername`, `logoimg`) VALUES
	('son1', '1111', '111', '1111111', 'sd@nsd.com', 3, '갈마동1', 11, '2022-10-19', NULL, NULL, NULL, NULL, NULL),
	('son123', '12345', '손규동', '01023143970', 'sgd3970@naver.com', 2, '대전광역시 서구 갈마중로50번길 61, 12345(갈마동)', 35273, '2022-10-19', NULL, '망고쟁이', '1351321654', '망고', 'bg-registration-form-1.jpg'),
	('son2', '12345', '손규동', '01023143970', 'sgd3970@naver.com', 2, '대전광역시 서구 갈마중로50번길 61, 1234(갈마동)', 35273, '2022-10-19', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 mangodb.notice 구조 내보내기
CREATE TABLE IF NOT EXISTS `notice` (
  `noti_id` int(11) NOT NULL AUTO_INCREMENT,
  `noti_num` int(11) DEFAULT NULL,
  `id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noti_subject` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noti_content` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noti_fileName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noti_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`noti_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.notice:~24 rows (대략적) 내보내기
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT IGNORE INTO `notice` (`noti_id`, `noti_num`, `id`, `noti_subject`, `noti_content`, `noti_fileName`, `noti_date`) VALUES
	(1, 1, '관리자', '영화관람권 가격 변경 안내', '테스트 공지입니다1', NULL, '2022-10-05 00:00:00'),
	(2, 2, '관리자', '2D 일반 관람권 활용 스페셜관 이용 안내', '테스트 공지입니다2', NULL, '2022-10-05 00:00:00'),
	(3, 3, '관리자', '	V3 백신 엔진 악성코드 오진 안내', '테스트 공지입니다3', NULL, '2022-10-05 00:00:00'),
	(4, 4, '관리자', 'GS&POINT 시스템 작업안내', '테스트 공지입니다4', NULL, '2022-10-05 00:00:00'),
	(5, 5, '관리자', '	[리워드 존] 종료 안내', '테스트 공지입니다5', NULL, '2022-10-05 00:00:00'),
	(6, 6, '관리자', '영화관람권 가격 변경 안내', '테스트 공지입니다1', NULL, '2022-10-05 00:00:00'),
	(7, 7, '관리자', '2D 일반 관람권 활용 스페셜관 이용 안내', '테스트 공지입니다2', NULL, '2022-10-05 00:00:00'),
	(8, 8, '관리자', '	V3 백신 엔진 악성코드 오진 안내', '테스트 공지입니다3', NULL, '2022-10-05 00:00:00'),
	(9, 9, '관리자', 'GS&POINT 시스템 작업안내', '테스트 공지입니다4', NULL, '2022-10-05 00:00:00'),
	(10, 10, '관리자', '	[리워드 존] 종료 안내', '테스트 공지입니다5', NULL, '2022-10-05 00:00:00'),
	(11, 11, '관리자', '2D 일반 관람권 활용 스페셜관 이용 안내', '테스트 공지입니다2', NULL, '2022-10-05 00:00:00'),
	(12, 12, '관리자', '	V3 백신 엔진 악성코드 오진 안내', '테스트 공지입니다3', NULL, '2022-10-05 00:00:00'),
	(13, 13, '관리자', 'GS&POINT 시스템 작업안내', '테스트 공지입니다4', NULL, '2022-10-05 00:00:00'),
	(14, 14, '관리자', '	[리워드 존] 종료 안내', '테스트 공지입니다5', NULL, '2022-10-05 00:00:00'),
	(15, 15, '관리자', '영화관람권 가격 변경 안내', '테스트 공지입니다1', NULL, '2022-10-05 00:00:00'),
	(16, 16, '관리자', '2D 일반 관람권 활용 스페셜관 이용 안내', '테스트 공지입니다2', NULL, '2022-10-05 00:00:00'),
	(17, 17, '관리자', '	V3 백신 엔진 악성코드 오진 안내', '테스트 공지입니다3', NULL, '2022-10-05 00:00:00'),
	(18, 18, '관리자', 'GS&POINT 시스템 작업안내', '테스트 공지입니다4', NULL, '2022-10-05 00:00:00'),
	(19, 19, '관리자', '	[리워드 존] 종료 안내', '테스트 공지입니다5', NULL, '2022-10-05 00:00:00'),
	(20, 20, '관리자', '영화관람권 가격 변경 안내', '테스트 공지입니다1', NULL, '2022-10-05 00:00:00'),
	(21, 21, '관리자', '2D 일반 관람권 활용 스페셜관 이용 안내', '테스트 공지입니다2', NULL, '2022-10-05 00:00:00'),
	(22, 22, '관리자', '	V3 백신 엔진 악성코드 오진 안내', '테스트 공지입니다3', NULL, '2022-10-05 00:00:00'),
	(23, 23, '관리자', 'GS&POINT 시스템 작업안내', '테스트 공지입니다4', NULL, '2022-10-05 00:00:00'),
	(24, 24, '관리자', '	[리워드 존] 종료 안내', '테스트 공지입니다5', NULL, '2022-10-05 00:00:00');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;

-- 테이블 mangodb.orders 구조 내보내기
CREATE TABLE IF NOT EXISTS `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '주문 번호',
  `id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '고객 아이디',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '고객 이름',
  `goods_all_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '상품 가격',
  `receiver_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수령인 이름',
  `receiver_phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수령인 전화번호',
  `receiver_zipno` int(11) NOT NULL,
  `receiver_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '수령인 주소',
  `payment` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '결제 수단',
  `total_price` int(11) NOT NULL DEFAULT 0,
  `creDate` date NOT NULL DEFAULT sysdate(6) COMMENT '주문 일자',
  PRIMARY KEY (`orders_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.orders:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT IGNORE INTO `orders` (`orders_id`, `id`, `name`, `goods_all_name`, `receiver_name`, `receiver_phone`, `receiver_zipno`, `receiver_address`, `payment`, `total_price`, `creDate`) VALUES
	(32, 'son1', '손', '애나벨', '손', '0102223333', 23, '가나다라', '카카오페이', 6500, '2022-10-18'),
	(33, 'son1', '손', '애나벨', '손', '0102223333', 23, '가나다라', '카카오페이', 6500, '2022-10-18'),
	(34, 'son1', '손', '애나벨', '손', '0102223333', 23, '가나다라', '카카오페이', 6500, '2022-10-18');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- 테이블 mangodb.orderspay 구조 내보내기
CREATE TABLE IF NOT EXISTS `orderspay` (
  `id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_pay_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orders_pay_money` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.orderspay:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `orderspay` DISABLE KEYS */;
INSERT IGNORE INTO `orderspay` (`id`, `orders_id`, `orders_pay_date`, `orders_pay_money`) VALUES
	('son1', 32, '2022-10-18 18:53:16.759773', '6500'),
	('son1', 33, '2022-10-18 18:54:12.743793', '6500'),
	('son1', 34, '2022-10-18 18:54:46.679795', '6500');
/*!40000 ALTER TABLE `orderspay` ENABLE KEYS */;

-- 테이블 mangodb.pay 구조 내보내기
CREATE TABLE IF NOT EXISTS `pay` (
  `id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reserve_seq` int(20) DEFAULT NULL,
  `pay_date` date DEFAULT sysdate(6),
  `pay_money` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `reserve_seq` (`reserve_seq`),
  CONSTRAINT `FK_pay_reserve` FOREIGN KEY (`reserve_seq`) REFERENCES `reserve` (`reserve_seq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.pay:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay` ENABLE KEYS */;

-- 테이블 mangodb.qa 구조 내보내기
CREATE TABLE IF NOT EXISTS `qa` (
  `qa_id` int(11) NOT NULL AUTO_INCREMENT,
  `qa_num` int(11) DEFAULT NULL,
  `qa_cat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qa_subject` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qa_content` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qa_fileName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qa_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`qa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.qa:~20 rows (대략적) 내보내기
/*!40000 ALTER TABLE `qa` DISABLE KEYS */;
INSERT IGNORE INTO `qa` (`qa_id`, `qa_num`, `qa_cat`, `qa_subject`, `qa_content`, `qa_fileName`, `qa_date`) VALUES
	(1, 1, '예매', '영화티켓 예매 및 취소는 어떻게 하나요?', '테스트1', NULL, '2022-10-06 10:31:22'),
	(2, 2, '할인', '2D 일반 관람권 활용 스페셜관 이용 안내', '테스트1', NULL, '2022-10-06 10:29:45'),
	(3, 3, '스토어', '비회원도 스토어 이용이 가능한가요?', '테스트1', NULL, '2022-10-06 10:30:31'),
	(4, 4, '할인', 'BC카드 현장 할인은 어떻게 받나요?', '테스트1', NULL, '2022-10-06 10:30:45'),
	(5, 5, '예매', '비회원으로 예매가 가능한가요?', '테스트1', NULL, '2022-10-06 10:31:38'),
	(6, 1, '예매', '영화티켓 예매 및 취소는 어떻게 하나요?', '테스트1', NULL, '2022-10-06 10:31:22'),
	(7, 2, '할인', '2D 일반 관람권 활용 스페셜관 이용 안내', '테스트1', NULL, '2022-10-06 10:29:45'),
	(8, 3, '스토어', '비회원도 스토어 이용이 가능한가요?', '테스트1', NULL, '2022-10-06 10:30:31'),
	(9, 4, '할인', 'BC카드 현장 할인은 어떻게 받나요?', '테스트1', NULL, '2022-10-06 10:30:45'),
	(10, 5, '예매', '비회원으로 예매가 가능한가요?', '테스트1', NULL, '2022-10-06 10:31:38'),
	(11, 1, '예매', '영화티켓 예매 및 취소는 어떻게 하나요?', '테스트1', NULL, '2022-10-06 10:31:22'),
	(12, 2, '할인', '2D 일반 관람권 활용 스페셜관 이용 안내', '테스트1', NULL, '2022-10-06 10:29:45'),
	(13, 3, '스토어', '비회원도 스토어 이용이 가능한가요?', '테스트1', NULL, '2022-10-06 10:30:31'),
	(14, 4, '할인', 'BC카드 현장 할인은 어떻게 받나요?', '테스트1', NULL, '2022-10-06 10:30:45'),
	(15, 5, '예매', '비회원으로 예매가 가능한가요?', '테스트1', NULL, '2022-10-06 10:31:38'),
	(16, 1, '예매', '영화티켓 예매 및 취소는 어떻게 하나요?', '테스트1', NULL, '2022-10-06 10:31:22'),
	(17, 2, '할인', '2D 일반 관람권 활용 스페셜관 이용 안내', '테스트1', NULL, '2022-10-06 10:29:45'),
	(18, 3, '스토어', '비회원도 스토어 이용이 가능한가요?', '테스트1', NULL, '2022-10-06 10:30:31'),
	(19, 4, '할인', 'BC카드 현장 할인은 어떻게 받나요?', '테스트1', NULL, '2022-10-06 10:30:45'),
	(20, 5, '예매', '비회원으로 예매가 가능한가요?', '테스트1', NULL, '2022-10-06 10:31:38');
/*!40000 ALTER TABLE `qa` ENABLE KEYS */;

-- 테이블 mangodb.reserve 구조 내보내기
CREATE TABLE IF NOT EXISTS `reserve` (
  `id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reserve_seq` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `running_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movie_age` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movie_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reserve_date` date DEFAULT sysdate(6),
  `ticket_number` int(20) DEFAULT NULL,
  `selected_seat` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selected_theater` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`reserve_seq`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.reserve:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `reserve` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserve` ENABLE KEYS */;

-- 테이블 mangodb.reserve_seq 구조 내보내기
CREATE TABLE IF NOT EXISTS `reserve_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;

-- 테이블 데이터 mangodb.reserve_seq:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `reserve_seq` DISABLE KEYS */;
INSERT IGNORE INTO `reserve_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
	(1, 1, 9223372036854775806, 1, 1, 1000, 0, 0);
/*!40000 ALTER TABLE `reserve_seq` ENABLE KEYS */;

-- 테이블 mangodb.theater 구조 내보내기
CREATE TABLE IF NOT EXISTS `theater` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poi_nm` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_nm` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mcate_cd` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sido_nm` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sgg_nm` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bemd_nm` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beonji` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `x` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 mangodb.theater:~334 rows (대략적) 내보내기
/*!40000 ALTER TABLE `theater` DISABLE KEYS */;
INSERT IGNORE INTO `theater` (`id`, `poi_nm`, `branch_nm`, `mcate_cd`, `sido_nm`, `sgg_nm`, `bemd_nm`, `beonji`, `x`, `y`) VALUES
	('KCDMTPO21N000000001', '메가박스', '대전점', '3', '대전광역시', '서구', '탄방동', '746', '127.3879894', '36.34759506'),
	('KCDMTPO21N000000002', 'CGV', '광주첨단점', '1', '광주광역시', '광산구', '쌍암동', '694-35', '126.8507207', '35.21637788'),
	('KCDMTPO21N000000003', '롯데시네마', '서귀포점', '2', '제주특별자치도', '서귀포시', '법환동', '914', '126.508319', '33.24588502'),
	('KCDMTPO21N000000006', '메가박스', '원주점', '3', '강원도', '원주시', '단계동', '873', '127.9297614', '37.34502796'),
	('KCDMTPO21N000000012', '메가박스', '논산점', '3', '충청남도', '논산시', '내동', '382-32', '127.0990918', '36.18983366'),
	('KCDMTPO21N000000021', 'CGV', '동백점', '1', '경기도', '용인시 기흥구', '중동', '833', '127.1510684', '37.27770362'),
	('KCDMTPO21N000000022', '롯데시네마', '서산점', '2', '충청남도', '서산시', '동문동', '193-1', '126.4656145', '36.77878991'),
	('KCDMTPO21N000000023', '메가박스', '속초점', '3', '강원도', '속초시', '조양동', '1506-1', '128.5859173', '38.18908086'),
	('KCDMTPO21N000000024', 'CGV', '거제점', '1', '경상남도', '거제시', '장평동', '1211', '128.6161666', '34.89119747'),
	('KCDMTPO21N000000025', '롯데시네마', '동해점', '2', '강원도', '동해시', '천곡동', '863', '129.1153767', '37.52225538'),
	('KCDMTPO21N000000030', 'CGV', '평택소사점', '1', '경기도', '평택시', '비전동', '1090-2', '127.1115197', '37.00056599'),
	('KCDMTPO21N000000035', 'CGV', '오산중앙점', '1', '경기도', '오산시', '원동', '335-10', '127.0710131', '37.14201389'),
	('KCDMTPO21N000000036', '메가박스', '세종청사점', '3', '세종특별자치시', '세종특별자치시', '어진동', '510', '127.2577468', '36.5026067'),
	('KCDMTPO21N000000047', 'CGV', '구리점', '1', '경기도', '구리시', '인창동', '676-2', '127.1420962', '37.60180047'),
	('KCDMTPO21N000000048', 'CGV', '동탄역점', '1', '경기도', '화성시', '오산동', '1019', '127.0980926', '37.20238469'),
	('KCDMTPO21N000000054', '메가박스', '전주혁신점', '3', '전라북도', '전주시 덕진구', '장동', '1111', '127.059136', '35.83932451'),
	('KCDMTPO21N000000065', '메가박스', '북대구점', '3', '대구광역시', '북구', '동천동', '895-2', '128.5617055', '35.94414752'),
	('KCDMTPO21N000000069', '롯데시네마', '경산점', '2', '경상북도', '경산시', '대평동', '439-7', '128.7334042', '35.83470483'),
	('KCDMTPO21N000000071', '롯데시네마', '구리아울렛점', '2', '경기도', '구리시', '인창동', '419-7', '127.1405517', '37.61189193'),
	('KCDMTPO21N000000075', 'CGV', '수유점', '1', '서울특별시', '강북구', '수유동', '168-12', '127.0298301', '37.64239741'),
	('KCDMTPO21N000000076', '메가박스', '강동점', '3', '서울특별시', '강동구', '성내동', '549-1', '127.1253814', '37.52845383'),
	('KCDMTPO21N000000086', '롯데시네마', '서울대입구점', '2', '서울특별시', '관악구', '봉천동', '862-1', '126.9522717', '37.48086276'),
	('KCDMTPO21N000000087', '메가박스', '충주점', '3', '충청북도', '충주시', '성서동', '387', '127.9330208', '36.97051602'),
	('KCDMTPO21N000000090', 'CGV', '송파점', '1', '서울특별시', '송파구', '문정동', '634', '127.1258204', '37.47710306'),
	('KCDMTPO21N000000091', '메가박스', '상봉점', '3', '서울특별시', '중랑구', '상봉동', '130-3', '127.0747188', '37.59317439'),
	('KCDMTPO21N000000092', '롯데시네마', '서면점', '2', '부산광역시', '부산진구', '전포동', '668-1', '129.0627437', '35.15723474'),
	('KCDMTPO21N000000094', '메가박스', '첨단점', '3', '광주광역시', '광산구', '쌍암동', '688-4', '126.8524012', '35.22123213'),
	('KCDMTPO21N000000095', 'CGV', '인천연수점', '1', '인천광역시', '연수구', '동춘동', '926', '126.6832999', '37.40635492'),
	('KCDMTPO21N000000096', '롯데시네마', '서청주점', '2', '충청북도', '청주시 흥덕구', '비하동', '811', '127.4216618', '36.64488747'),
	('KCDMTPO21N000000097', '롯데시네마', '합정점', '2', '서울특별시', '마포구', '서교동', '490', '126.9134906', '37.5503732'),
	('KCDMTPO21N000000102', 'CGV', '광주하남점', '1', '광주광역시', '광산구', '산정동', '832', '126.8064251', '35.17796186'),
	('KCDMTPO21N000000104', 'CGV', '대전가수원점', '1', '대전광역시', '서구', '가수원동', '1042', '127.3505828', '36.30544455'),
	('KCDMTPO21N000000114', 'CGV', '목포점', '1', '전라남도', '목포시', '상동', '892', '126.4199187', '34.80251804'),
	('KCDMTPO21N000000115', 'CGV', '용산아이파크몰점', '1', '서울특별시', '용산구', '한강로3가', '40-999', '126.9652637', '37.52930768'),
	('KCDMTPO21N000000116', '롯데시네마', '센텀시티점', '2', '부산광역시', '해운대구', '우동', '1496', '129.1310465', '35.16992736'),
	('KCDMTPO21N000000117', 'CGV', '안산점', '1', '경기도', '안산시 단원구', '고잔동', '725-1', '126.8310385', '37.31336168'),
	('KCDMTPO21N000000119', '롯데시네마', '춘천점', '2', '강원도', '춘천시', '죽림동', '189', '127.728386', '37.87811541'),
	('KCDMTPO21N000000135', 'CGV', '수원점', '1', '경기도', '수원시 팔달구', '매산로1가', '18', '127.0003809', '37.26564132'),
	('KCDMTPO21N000000143', 'CGV', '여수웅천점', '1', '전라남도', '여수시', '웅천동', '1720-3', '127.6787868', '34.74871172'),
	('KCDMTPO21N000000153', 'CGV', '김해율하점', '1', '경상남도', '김해시', '율하동', '1347-2', '128.8135052', '35.17001168'),
	('KCDMTPO21N000000160', 'CGV', '동수원점', '1', '경기도', '수원시 팔달구', '인계동', '1113-11', '127.0321842', '37.26380027'),
	('KCDMTPO21N000000161', '롯데시네마', '남원주점', '2', '강원도', '원주시', '단구동', '1511-2', '127.9489111', '37.3308637'),
	('KCDMTPO21N000000162', '메가박스', '수원점', '3', '경기도', '수원시 권선구', '권선동', '1189', '127.019706', '37.25026579'),
	('KCDMTPO21N000000163', 'CGV', '마산점', '1', '경상남도', '창원시 마산회원구', '합성동', '126-4', '128.5823953', '35.23754229'),
	('KCDMTPO21N000000164', '롯데시네마', '홍대입구점', '2', '서울특별시', '마포구', '동교동', '166-14', '126.9250188', '37.55722813'),
	('KCDMTPO21N000000180', 'CGV', '계양점', '1', '인천광역시', '계양구', '작전동', '899-1', '126.7344749', '37.533766'),
	('KCDMTPO21N000000182', 'CGV', '김해점', '1', '경상남도', '김해시', '내동', '1131-4', '128.8686045', '35.24220434'),
	('KCDMTPO21N000000184', 'CGV', '정읍점', '1', '전라북도', '정읍시', '수성동', '525-1', '126.8494904', '35.56988024'),
	('KCDMTPO21N000000187', '롯데시네마', '의정부민락점', '2', '경기도', '의정부시', '민락동', '804-6', '127.0963701', '37.74435168'),
	('KCDMTPO21N000000188', '메가박스', '양산점', '3', '경상남도', '양산시', '중부동', '685-6', '129.0268902', '35.33833221'),
	('KCDMTPO21N000000189', '롯데시네마', '대전센트럴점', '2', '대전광역시', '서구', '둔산동', '1279', '127.3795063', '36.35195153'),
	('KCDMTPO21N000000202', 'CGV', '홍대입구역점', '1', '서울특별시', '마포구', '동교동', '167-2', '126.9259084', '37.55769972'),
	('KCDMTPO21N000000204', '롯데시네마', '노원점', '2', '서울특별시', '노원구', '상계동', '713', '127.0613703', '37.65482999'),
	('KCDMTPO21N000000205', 'CGV', '천안터미널점', '1', '충청남도', '천안시 동남구', '신부동', '354-1', '127.1553363', '36.81925974'),
	('KCDMTPO21N000000231', 'CGV', '피카디리1958점', '1', '서울특별시', '종로구', '돈의동', '137', '126.9912026', '37.57107103'),
	('KCDMTPO21N000000235', '롯데시네마', '대구율하점', '2', '대구광역시', '동구', '율하동', '1117', '128.6940883', '35.86788572'),
	('KCDMTPO21N000000236', 'CGV', '인천논현점', '1', '인천광역시', '남동구', '논현동', '646-2', '126.7086067', '37.40229578'),
	('KCDMTPO21N000000239', '롯데시네마', '오투점', '2', '부산광역시', '금정구', '부곡동', '298-2', '129.0897817', '35.22831406'),
	('KCDMTPO21N000000240', '메가박스', '하남스타필드점', '3', '경기도', '하남시', '신장동', '616', '127.2236736', '37.54541841'),
	('KCDMTPO21N000000241', '롯데시네마', '청주용암점', '2', '충청북도', '청주시 상당구', '용암동', '1703', '127.5030804', '36.60704497'),
	('KCDMTPO21N000000246', '메가박스', '남양주점', '3', '경기도', '남양주시', '호평동', '640', '127.2441147', '37.65507014'),
	('KCDMTPO21N000000252', 'CGV', '안성점', '1', '경기도', '안성시', '석정동', '139-1', '127.2572103', '37.01219093'),
	('KCDMTPO21N000000263', '롯데시네마', '송탄점', '2', '경기도', '평택시', '서정동', '818-36', '127.0608902', '37.067275'),
	('KCDMTPO21N000000264', 'CGV', '아시아드점', '1', '부산광역시', '연제구', '거제동', '1208', '129.0621351', '35.19134127'),
	('KCDMTPO21N000000265', 'CGV', '화정점', '1', '경기도', '고양시 덕양구', '화정동', '966-1', '126.8331866', '37.63574956'),
	('KCDMTPO21N000000269', '메가박스', '영통점', '3', '경기도', '수원시 영통구', '영통동', '960-1', '127.0718954', '37.25299459'),
	('KCDMTPO21N000000270', 'CGV', '평택점', '1', '경기도', '평택시', '평택동', '185-579', '127.0857779', '36.99098979'),
	('KCDMTPO21N000000271', '롯데시네마', '신도림점', '2', '서울특별시', '구로구', '신도림동', '692', '126.8890356', '37.50879868'),
	('KCDMTPO21N000000272', 'CGV', '홍대점', '1', '서울특별시', '마포구', '동교동', '159-8', '126.9226315', '37.55649549'),
	('KCDMTPO21N000000273', '메가박스', '남춘천점', '3', '강원도', '춘천시', '온의동', '587-8', '127.7202216', '37.86640243'),
	('KCDMTPO21N000000278', '롯데시네마', '상주점', '2', '경상북도', '상주시', '남성동', '140-2', '128.1543644', '36.41591862'),
	('KCDMTPO21N000000280', '메가박스', '세종나성점', '3', '세종특별자치시', '세종특별자치시', '나성동', '206', '127.2637422', '36.48349077'),
	('KCDMTPO21N000000284', 'CGV', '진주혁신점', '1', '경상남도', '진주시', '충무공동', '225-1', '128.1438456', '35.18061816'),
	('KCDMTPO21N000000287', '롯데시네마', '부천역점', '2', '경기도', '부천시', '심곡동', '175-6', '126.7824842', '37.48541962'),
	('KCDMTPO21N000000294', '메가박스', '검단점', '3', '인천광역시', '서구', '당하동', '1098-5', '126.6752977', '37.58814003'),
	('KCDMTPO21N000000296', '메가박스', '파주운정점', '3', '경기도', '파주시', '야당동', '483-3', '126.7587304', '37.70575721'),
	('KCDMTPO21N000000300', 'CGV', '스타필드시티위례점', '1', '경기도', '하남시', '학암동', '660', '127.148453', '37.4800855'),
	('KCDMTPO21N000000303', '롯데시네마', '오산점', '2', '경기도', '오산시', '원동', '300-8', '127.0738862', '37.14236869'),
	('KCDMTPO21N000000307', '롯데시네마', '에비뉴엘점', '2', '서울특별시', '중구', '소공동', '130', '126.9816885', '37.564195'),
	('KCDMTPO21N000000310', '롯데시네마', '통영점', '2', '경상남도', '통영시', '무전동', '986', '128.4302995', '34.85936014'),
	('KCDMTPO21N000000314', 'CGV', '이천점', '1', '경기도', '이천시', '중리동', '201-1', '127.4441601', '37.2796373'),
	('KCDMTPO21N000000329', 'CGV', '용인점', '1', '경기도', '용인시 처인구', '김량장동', '301-3', '127.2058277', '37.23510641'),
	('KCDMTPO21N000000334', '롯데시네마', '서수원점', '2', '경기도', '수원시 권선구', '금곡동', '1114-1', '126.9540776', '37.27498439'),
	('KCDMTPO21N000000335', '메가박스', '청주사창점', '3', '충청북도', '청주시 서원구', '사창동', '488', '127.4604593', '36.63258698'),
	('KCDMTPO21N000000338', '메가박스', 'ARTNINE', '3', '서울특별시', '동작구', '사당동', '147-53', '126.9816555', '37.48466422'),
	('KCDMTPO21N000000341', '롯데시네마', '평택비전점', '2', '경기도', '평택시', '비전동', '830-1', '127.1125879', '36.99536692'),
	('KCDMTPO21N000000344', 'CGV', '중계점', '1', '서울특별시', '노원구', '중계동', '509-2', '127.0686963', '37.63976942'),
	('KCDMTPO21N000000347', '롯데시네마', '독산점', '2', '서울특별시', '금천구', '독산동', '291-5', '126.8969648', '37.46941046'),
	('KCDMTPO21N000000348', '롯데시네마', '안양일번가점', '2', '경기도', '안양시 만안구', '안양동', '676-1', '126.9202145', '37.39963457'),
	('KCDMTPO21N000000349', '메가박스', '창동점', '3', '서울특별시', '도봉구', '창동', '715-14', '127.0387763', '37.65461871'),
	('KCDMTPO21N000000353', '롯데시네마', '광주광산점', '2', '광주광역시', '광산구', '우산동', '1597-1', '126.8096092', '35.16006893'),
	('KCDMTPO21N000000355', '롯데시네마', '제주삼화지구', '2', '제주특별자치도', '제주시', '삼양이동', '1477-8', '126.5881336', '33.5204218'),
	('KCDMTPO21N000000356', '롯데시네마', '용인역북점', '2', '경기도', '용인시 처인구', '역북동', '802', '127.1882529', '37.23557796'),
	('KCDMTPO21N000000358', '롯데시네마', '수지점', '2', '경기도', '용인시 수지구', '성복동', '789', '127.081742', '37.31269012'),
	('KCDMTPO21N000000360', 'CGV', '인천학익점', '1', '인천광역시', '미추홀구', '학익동', '401-21', '126.6518232', '37.44562026'),
	('KCDMTPO21N000000363', '메가박스', '목동점', '3', '서울특별시', '양천구', '목동', '917-6', '126.8760087', '37.52965966'),
	('KCDMTPO21N000000364', 'CGV', '여의도점', '1', '서울특별시', '영등포구', '여의도동', '23', '126.9255542', '37.52569561'),
	('KCDMTPO21N000000365', 'CGV', '대구수성점', '1', '대구광역시', '수성구', '범물동', '1273', '128.6402885', '35.8212552'),
	('KCDMTPO21N000000368', '메가박스', '파주금촌점', '3', '경기도', '파주시', '금촌동', '329-158', '126.7745623', '37.76483954'),
	('KCDMTPO21N000000369', '메가박스', '목포하당점', '3', '전라남도', '목포시', '상동', '860-1', '126.4262064', '34.80742177'),
	('KCDMTPO21N000000370', '롯데시네마', '파주운정점', '2', '경기도', '파주시', '목동동', '927', '126.7365497', '37.72980502'),
	('KCDMTPO21N000000386', '메가박스', '남양주현대아울렛스페이스원', '3', '경기도', '남양주시', '다산동', '6141', '127.1524291', '37.61625803'),
	('KCDMTPO21N000000388', '롯데시네마', '포항점', '2', '경상북도', '포항시 북구', '대흥동', '563-3', '129.3629361', '36.03671356'),
	('KCDMTPO21N000000392', 'CGV', '서현점', '1', '경기도', '성남시 분당구', '서현동', '256', '127.1224057', '37.38734368'),
	('KCDMTPO21N000000405', 'CGV', '범계점', '1', '경기도', '안양시 동안구', '호계동', '1039-3', '126.9514327', '37.38942199'),
	('KCDMTPO21N000000407', 'CGV', '유성노은점', '1', '대전광역시', '유성구', '지족동', '905-4', '127.318509', '36.37254024'),
	('KCDMTPO21N000000423', '롯데시네마', '주엽점', '2', '경기도', '고양시 일산서구', '주엽동', '22', '126.7609936', '37.67067803'),
	('KCDMTPO21N000000425', 'CGV', '부천점', '1', '경기도', '부천시', '중동', '1165', '126.7605709', '37.50465176'),
	('KCDMTPO21N000000431', 'CGV', '천호점', '1', '서울특별시', '강동구', '천호동', '42', '127.1422682', '37.54574049'),
	('KCDMTPO21N000000432', 'CGV', '해운대점', '1', '부산광역시', '해운대구', '우동', '539-10', '129.1586654', '35.16309207'),
	('KCDMTPO21N000000434', 'CGV', '김해장유점', '1', '경상남도', '김해시', '대청동', '302-5', '128.8021295', '35.19194316'),
	('KCDMTPO21N000000435', 'CGV', '광교상현점', '1', '경기도', '용인시 수지구', '상현동', '1116-4', '127.0681271', '37.2968614'),
	('KCDMTPO21N000000439', '롯데시네마', '프리미엄구미센트럴점', '2', '경상북도', '구미시', '원평동', '147-9', '128.3347508', '36.12896696'),
	('KCDMTPO21N000000440', 'CGV', '오산점', '1', '경기도', '오산시', '원동', '763-21', '127.0704192', '37.14605864'),
	('KCDMTPO21N000000443', 'CGV', '성남모란', '1', '경기도', '성남시 중원구', '성남동', '3499', '127.1297621', '37.43139093'),
	('KCDMTPO21N000000445', '메가박스', '강남점', '3', '서울특별시', '서초구', '서초동', '1317-20', '127.0264837', '37.49805677'),
	('KCDMTPO21N000000448', 'CGV', '광주상무점', '1', '광주광역시', '서구', '치평동', '1218-1', '126.8509717', '35.15455988'),
	('KCDMTPO21N000000449', '메가박스', '일산벨라시타점', '3', '경기도', '고양시 일산동구', '백석동', '1237', '126.7923891', '37.6423859'),
	('KCDMTPO21N000000454', '메가박스', '용인테크노밸리점', '3', '경기도', '용인시 기흥구', '청덕동', '556', '127.1484847', '37.2912051'),
	('KCDMTPO21N000000455', '메가박스', '성수점', '3', '서울특별시', '성동구', '성수동1가', '656-335', '127.0450084', '37.54187023'),
	('KCDMTPO21N000000460', 'CGV', '강남점', '1', '서울특별시', '강남구', '역삼동', '814-6', '127.0263387', '37.50166171'),
	('KCDMTPO21N000000461', 'CGV', '부평점', '1', '인천광역시', '부평구', '청천동', '386', '126.7041056', '37.52227837'),
	('KCDMTPO21N000000467', '롯데시네마', '수원점', '2', '경기도', '수원시 권선구', '서둔동', '381', '126.9972748', '37.26412483'),
	('KCDMTPO21N000000469', '롯데시네마', '광명점', '2', '경기도', '광명시', '광명동', '150-19', '126.8558522', '37.47934383'),
	('KCDMTPO21N000000472', '메가박스', '상암월드컵경기장점', '3', '서울특별시', '마포구', '성산동', '515', '126.8983043', '37.56847457'),
	('KCDMTPO21N000000474', 'CGV', '청주율량점', '1', '충청북도', '청주시 청원구', '율량동', '500-3', '127.4943997', '36.66607624'),
	('KCDMTPO21N000000490', 'CGV', '울산삼산점', '1', '울산광역시', '남구', '삼산동', '1569-1', '129.3388849', '35.54134536'),
	('KCDMTPO21N000000491', '롯데시네마', '김해아울렛점', '2', '경상남도', '김해시', '신문동', '1414', '128.8293851', '35.18514558'),
	('KCDMTPO21N000000492', '메가박스', '문경점', '3', '경상북도', '문경시', '모전동', '859-2', '128.1903668', '36.58735623'),
	('KCDMTPO21N000000493', '메가박스', '대구신세계점', '3', '대구광역시', '동구', '신천동', '1506', '128.6289002', '35.87783716'),
	('KCDMTPO21N000000498', '롯데시네마', '성남중앙점', '2', '경기도', '성남시 수정구', '신흥동', '4124', '127.1464467', '37.44132402'),
	('KCDMTPO21N000000509', 'CGV', '불광점', '1', '서울특별시', '은평구', '대조동', '240', '126.9291167', '37.60963277'),
	('KCDMTPO21N000000513', 'CGV', '대전가오점', '1', '대전광역시', '동구', '가오동', '557', '127.4583856', '36.30693123'),
	('KCDMTPO21N000000517', 'CGV', '광양점', '1', '전라남도', '광양시', '금호동', '624-24', '127.723102', '34.93548509'),
	('KCDMTPO21N000000528', 'CGV', '제주점', '1', '제주특별자치도', '제주시', '이도이동', '1776-3', '126.5272806', '33.50011694'),
	('KCDMTPO21N000000529', 'CGV', '일산점', '1', '경기도', '고양시 일산동구', '장항동', '868', '126.772888', '37.65489471'),
	('KCDMTPO21N000000530', '롯데시네마', '대전점', '2', '대전광역시', '서구', '괴정동', '423-1', '127.389704', '36.34055498'),
	('KCDMTPO21N000000531', '롯데시네마', '부평점', '2', '인천광역시', '부평구', '부평동', '152-1', '126.7266387', '37.49355902'),
	('KCDMTPO21N000000532', '롯데시네마', '사상점', '2', '부산광역시', '사상구', '괘법동', '533-1', '128.9834186', '35.16335832'),
	('KCDMTPO21N000000534', '메가박스', '코엑스점', '3', '서울특별시', '강남구', '삼성동', '159', '127.0589757', '37.5108223'),
	('KCDMTPO21N000000535', 'CGV', '청담씨네시티점', '1', '서울특별시', '강남구', '신사동', '651-21', '127.0370337', '37.5228943'),
	('KCDMTPO21N000000536', 'CGV', '포항점', '1', '경상북도', '포항시 남구', '상도동', '582', '129.3485942', '36.01296708'),
	('KCDMTPO21N000000540', '롯데시네마', '평촌점', '2', '경기도', '안양시 동안구', '호계동', '1039', '126.950418', '37.39036227'),
	('KCDMTPO21N000000549', '롯데시네마', '속초점', '2', '강원도', '속초시', '금호동', '473-235', '128.5890945', '38.20338076'),
	('KCDMTPO21N000000554', 'CGV', '연수역', '1', '인천광역시', '연수구', '청학동', '496-4', '126.6772501', '37.41765563'),
	('KCDMTPO21N000000557', 'CGV', '대구칠곡점', '1', '대구광역시', '북구', '동천동', '894-1', '128.5600404', '35.94419523'),
	('KCDMTPO21N000000559', '롯데시네마', '동래점', '2', '부산광역시', '동래구', '온천동', '502-3', '129.077521', '35.21107361'),
	('KCDMTPO21N000000561', '메가박스', '킨텍스점', '3', '경기도', '고양시 일산서구', '대화동', '2602', '126.751987', '37.66795442'),
	('KCDMTPO21N000000565', '메가박스', '송천점', '3', '전라북도', '전주시 덕진구', '송천동2가', '661-15', '127.1140055', '35.8694954'),
	('KCDMTPO21N000000569', 'CGV', '목동점', '1', '서울특별시', '양천구', '목동', '916', '126.8749882', '37.52655642'),
	('KCDMTPO21N000000572', 'CGV', '통영점', '1', '경상남도', '통영시', '북신동', '698-1', '128.425573', '34.85725822'),
	('KCDMTPO21N000000575', '메가박스', '시흥배곧점', '3', '경기도', '시흥시', '정왕동', '2514', '126.7305286', '37.36981332'),
	('KCDMTPO21N000000582', '메가박스', '용인기흥점', '3', '경기도', '용인시 기흥구', '고매동', '889', '127.1142482', '37.22341518'),
	('KCDMTPO21N000000593', '롯데시네마', '안산점', '2', '경기도', '안산시 상록구', '성포동', '590', '126.845836', '37.31785711'),
	('KCDMTPO21N000000601', '메가박스', '백석점', '3', '경기도', '고양시 일산동구', '백석동', '1242', '126.7898286', '37.64380867'),
	('KCDMTPO21N000000602', '메가박스', '덕천점', '3', '부산광역시', '북구', '덕천동', '398-2', '129.0076314', '35.21097527'),
	('KCDMTPO21N000000615', '롯데시네마', '대전관저점', '2', '대전광역시', '서구', '관저동', '1735', '127.333718', '36.30254463'),
	('KCDMTPO21N000000622', 'CGV', '김포운양점', '1', '경기도', '김포시', '운양동', '1296-9', '126.6840432', '37.65491848'),
	('KCDMTPO21N000000638', '롯데시네마', '병점점', '2', '경기도', '화성시', '병점동', '844-1', '127.0425364', '37.21398751'),
	('KCDMTPO21N000000639', '롯데시네마', '부평역사점', '2', '인천광역시', '부평구', '부평동', '738-21', '126.7234056', '37.48951726'),
	('KCDMTPO21N000000642', '메가박스', '안산중앙점', '3', '경기도', '안산시 단원구', '고잔동', '535-1', '126.8356564', '37.31794894'),
	('KCDMTPO21N000000644', '메가박스', '김천점', '3', '경상북도', '김천시', '평화동', '245-82', '128.1107647', '36.12532927'),
	('KCDMTPO21N000000645', 'CGV', '대구월성점', '1', '대구광역시', '달서구', '월성동', '1846', '128.5267135', '35.82456701'),
	('KCDMTPO21N000000646', '메가박스', '고양스타필드점', '3', '경기도', '고양시 덕양구', '동산동', '370', '126.8937974', '37.64661944'),
	('KCDMTPO21N000000653', '메가박스', '구미강동점', '3', '경상북도', '구미시', '진평동', '1023-2', '128.4179068', '36.10721517'),
	('KCDMTPO21N000000655', 'CGV', '평촌점', '1', '경기도', '안양시 동안구', '관양동', '1606', '126.9622513', '37.39298667'),
	('KCDMTPO21N000000660', '롯데시네마', '북수원점', '2', '경기도', '수원시 장안구', '천천동', '516', '126.9841028', '37.3006966'),
	('KCDMTPO21N000000663', '롯데시네마', '당진', '2', '충청남도', '당진시', '수청동', '1041', '126.6466784', '36.88711674'),
	('KCDMTPO21N000000665', '롯데시네마', '성서점', '2', '대구광역시', '달서구', '이곡동', '1244-1', '128.5077599', '35.85439527'),
	('KCDMTPO21N000000666', 'CGV', '서면점', '1', '부산광역시', '부산진구', '전포동', '892-20', '129.0644907', '35.14955177'),
	('KCDMTPO21N000000667', '롯데시네마', '전주평화점', '2', '전라북도', '전주시 완산구', '평화동1가', '604-1', '127.1327211', '35.79629436'),
	('KCDMTPO21N000000670', 'CGV', '창원더시티점', '1', '경상남도', '창원시 의창구', '대원동', '121', '128.653086', '35.2405455'),
	('KCDMTPO21N000000673', 'CGV', '전주고사점', '1', '전라북도', '전주시 완산구', '고사동', '355-1', '127.1420611', '35.8203354'),
	('KCDMTPO21N000000680', '메가박스', '광주하남점', '3', '광주광역시', '광산구', '우산동', '1587-1', '126.8117466', '35.16293596'),
	('KCDMTPO21N000000685', 'CGV', '하단아트몰링점', '1', '부산광역시', '사하구', '하단동', '526-6', '128.9663119', '35.10676047'),
	('KCDMTPO21N000000693', 'CGV', '김포한강점', '1', '경기도', '김포시', '걸포동', '1574-3', '126.7071981', '37.6322164'),
	('KCDMTPO21N000000694', 'CGV', '정왕점', '1', '경기도', '시흥시', '정왕동', '1734-2', '126.7368715', '37.34594214'),
	('KCDMTPO21N000000700', 'CGV', '대구이시아점', '1', '대구광역시', '동구', '봉무동', '1545', '128.6373091', '35.92127537'),
	('KCDMTPO21N000000701', 'CGV', '대구스타디움점', '1', '대구광역시', '수성구', '대흥동', '504', '128.686472', '35.83219268'),
	('KCDMTPO21N000000712', 'CGV', '인천점', '1', '인천광역시', '남동구', '구월동', '1130', '126.7019185', '37.45151527'),
	('KCDMTPO21N000000713', '롯데시네마', '센트럴락점', '2', '경기도', '안산시 단원구', '고잔동', '539-2', '126.8379796', '37.31862781'),
	('KCDMTPO21N000000714', 'CGV', '압구정점', '1', '서울특별시', '강남구', '신사동', '602', '127.0294042', '37.52435733'),
	('KCDMTPO21N000000717', '롯데시네마', '수완점', '2', '광주광역시', '광산구', '장덕동', '1678', '126.8193337', '35.18879719'),
	('KCDMTPO21N000000734', 'CGV', '대전탄방점', '1', '대전광역시', '서구', '탄방동', '744', '127.3888265', '36.34702553'),
	('KCDMTPO21N000000735', 'CGV', '산본점', '1', '경기도', '군포시', '산본동', '1142-2', '126.9331645', '37.35881719'),
	('KCDMTPO21N000000745', '롯데시네마', '울산점', '2', '울산광역시', '남구', '삼산동', '1480-1', '129.3382382', '35.53804757'),
	('KCDMTPO21N000000746', 'CGV', '청주터미널점', '1', '충청북도', '청주시 흥덕구', '가경동', '1416-3', '127.4311524', '36.62617796'),
	('KCDMTPO21N000000747', 'CGV', '북포항점', '1', '경상북도', '포항시 북구', '덕산동', '235-4', '129.3681986', '36.04070751'),
	('KCDMTPO21N000000751', '롯데시네마', '청량리점', '2', '서울특별시', '동대문구', '전농동', '591-53', '127.0491486', '37.58075971'),
	('KCDMTPO21N000000752', '롯데시네마', '인덕원점', '2', '경기도', '안양시 동안구', '관양동', '1502-6', '126.9761447', '37.4003452'),
	('KCDMTPO21N000000753', '롯데시네마', '광명아울렛점', '2', '경기도', '광명시', '일직동', '500', '126.8844155', '37.42421712'),
	('KCDMTPO21N000000755', '롯데시네마', '상인점', '2', '대구광역시', '달서구', '상인동', '241', '128.5392746', '35.81644072'),
	('KCDMTPO21N000000756', '메가박스', '마곡점', '3', '서울특별시', '강서구', '마곡동', '797-1', '126.8350607', '37.55933279'),
	('KCDMTPO21N000000766', '롯데시네마', '창원점', '2', '경상남도', '창원시 성산구', '상남동', '79', '128.6822073', '35.22466642'),
	('KCDMTPO21N000000767', 'CGV', '야탑점', '1', '경기도', '성남시 분당구', '야탑동', '341', '127.1266529', '37.41338397'),
	('KCDMTPO21N000000776', 'CGV', '파주야당점', '1', '경기도', '파주시', '야당동', '1066', '126.7599075', '37.71322596'),
	('KCDMTPO21N000000778', '메가박스', '부천스타필드시티점', '3', '경기도', '부천시', '옥길동', '768', '126.8140347', '37.4614684'),
	('KCDMTPO21N000000785', 'CGV', '대연점', '1', '부산광역시', '남구', '대연동', '73-15', '129.0992617', '35.13733667'),
	('KCDMTPO21N000000788', '메가박스', '부산대점', '3', '부산광역시', '금정구', '장전동', '292-4', '129.0880404', '35.23021774'),
	('KCDMTPO21N000000791', '롯데시네마', '대전둔산점', '2', '대전광역시', '서구', '월평동', '243', '127.3789171', '36.36191448'),
	('KCDMTPO21N000000795', 'CGV', '나주점', '1', '전라남도', '나주시', '빛가람동', '203-3', '126.7929484', '35.02390453'),
	('KCDMTPO21N000000796', 'CGV', '제주노형점', '1', '제주특별자치도', '제주시', '노형동', '1288-5', '126.4782974', '33.48578746'),
	('KCDMTPO21N000000801', '롯데시네마', '별내점', '2', '경기도', '남양주시', '별내동', '1005', '127.1268641', '37.64502632'),
	('KCDMTPO21N000000802', '메가박스', '대전중앙로점', '3', '대전광역시', '중구', '대흥동', '205-1', '127.4241002', '36.32765923'),
	('KCDMTPO21N000000806', 'CGV', '인천도화', '1', '인천광역시', '미추홀구', '도화동', '1011', '126.6645292', '37.46954267'),
	('KCDMTPO21N000000809', '메가박스', '천안점', '3', '충청남도', '천안시 서북구', '두정동', '68-16', '127.1475601', '36.83238237'),
	('KCDMTPO21N000000817', 'CGV', '서전주점', '1', '전라북도', '전주시 완산구', '효자동3가', '1531-2', '127.1064703', '35.81680549'),
	('KCDMTPO21N000000825', 'CGV', '천안점', '1', '충청남도', '천안시 동남구', '대흥동', '102-10', '127.1483932', '36.80772408'),
	('KCDMTPO21N000000826', '롯데시네마', '라페스타점', '2', '경기도', '고양시 일산동구', '장항동', '764', '126.7685829', '37.66156646'),
	('KCDMTPO21N000000827', '메가박스', '일산점', '3', '경기도', '고양시 일산서구', '덕이동', '219-8', '126.7570209', '37.68949417'),
	('KCDMTPO21N000000829', '롯데시네마', '대구광장점', '2', '대구광역시', '서구', '내당동', '463-62', '128.5506431', '35.85569753'),
	('KCDMTPO21N000000833', '롯데시네마', '안산고잔점', '2', '경기도', '안산시 단원구', '고잔동', '717-1', '126.828949', '37.30912319'),
	('KCDMTPO21N000000835', '롯데시네마', '수락산점', '2', '서울특별시', '노원구', '상계동', '1132-35', '127.0556866', '37.67661272'),
	('KCDMTPO21N000000836', '메가박스', '의정부민락점', '3', '경기도', '의정부시', '민락동', '813-3', '127.0959794', '37.74577903'),
	('KCDMTPO21N000000847', '롯데시네마', '프리미엄해운대점', '2', '부산광역시', '해운대구', '좌동', '1479-1', '129.1766604', '35.16914729'),
	('KCDMTPO21N000000848', 'CGV', '대구한일점', '1', '대구광역시', '중구', '동성로2가', '88-22', '128.5953119', '35.87044089'),
	('KCDMTPO21N000000856', '롯데시네마', '군산나운점', '2', '전라북도', '군산시', '나운동', '114-34', '126.7048621', '35.96165934'),
	('KCDMTPO21N000000865', 'CGV', '논산점', '1', '충청남도', '논산시', '내동', '452', '127.0978235', '36.1829286'),
	('KCDMTPO21N000000870', '메가박스', '해운대점', '3', '부산광역시', '해운대구', '좌동', '1467-4', '129.177053', '35.1705523'),
	('KCDMTPO21N000000872', 'CGV', '센텀시티점', '1', '부산광역시', '해운대구', '우동', '1495', '129.1292993', '35.16881162'),
	('KCDMTPO21N000000878', 'CGV', '세종점', '1', '세종특별자치시', '세종특별자치시', '종촌동', '673', '127.2476495', '36.50251446'),
	('KCDMTPO21N000000880', 'CGV', '군산점', '1', '전라북도', '군산시', '나운동', '124-4', '126.705453', '35.9643393'),
	('KCDMTPO21N000000884', '롯데시네마', '충주점', '2', '충청북도', '충주시', '달천동', '786-3', '127.898245', '36.9615213'),
	('KCDMTPO21N000000887', '메가박스', '동대문점', '3', '서울특별시', '중구', '을지로6가', '18-21', '127.0073312', '37.56646452'),
	('KCDMTPO21N000000889', 'CGV', '대구현대점', '1', '대구광역시', '중구', '계산동2가', '200', '128.5906407', '35.86669304'),
	('KCDMTPO21N000000890', '롯데시네마', '아산터미널점', '2', '충청남도', '아산시', '모종동', '555-5', '127.0160813', '36.78445737'),
	('KCDMTPO21N000000895', '롯데시네마', '위례점', '2', '경기도', '성남시 수정구', '창곡동', '505', '127.14121', '37.47363447'),
	('KCDMTPO21N000000898', 'CGV', '김포웰라움', '1', '경기도', '김포시', '풍무동', '202-1', '126.7235187', '37.60699954'),
	('KCDMTPO21N000000899', 'CGV', '부천옥길점', '1', '경기도', '부천시', '옥길동', '745-5', '126.8235936', '37.46744938'),
	('KCDMTPO21N000000906', 'CGV', '남주안점', '1', '인천광역시', '미추홀구', '주안동', '141-8', '126.6807758', '37.46331131'),
	('KCDMTPO21N000000908', '롯데시네마', '원주무실점', '2', '강원도', '원주시', '무실동', '1857-10', '127.9300917', '37.3349052'),
	('KCDMTPO21N000000911', 'CGV', '구로점', '1', '서울특별시', '구로구', '구로동', '573', '126.8827731', '37.50116016'),
	('KCDMTPO21N000000920', 'CGV', '죽전점', '1', '경기도', '용인시 수지구', '죽전동', '1285', '127.1081117', '37.32504856'),
	('KCDMTPO21N000000921', 'CGV', '목포평화광장점', '1', '전라남도', '목포시', '상동', '1129-6', '126.43323', '34.79920857'),
	('KCDMTPO21N000000922', '메가박스', '울산점', '3', '울산광역시', '중구', '성남동', '251-8', '129.3210647', '35.5543977'),
	('KCDMTPO21N000000923', 'CGV', '청주성안길점', '1', '충청북도', '청주시 상당구', '북문로1가', '170-1', '127.4879252', '36.63528687'),
	('KCDMTPO21N000000924', 'CGV', '소풍점', '1', '경기도', '부천시', '상동', '539-1', '126.7563365', '37.50355699'),
	('KCDMTPO21N000000925', 'CGV', '의정부점', '1', '경기도', '의정부시', '의정부동', '168-54', '127.0461683', '37.73719771'),
	('KCDMTPO21N000000928', '메가박스', '화곡점', '3', '서울특별시', '강서구', '화곡동', '1073-10', '126.8375677', '37.54058109'),
	('KCDMTPO21N000000929', 'CGV', '판교점', '1', '경기도', '성남시 분당구', '백현동', '541', '127.1121267', '37.3927861'),
	('KCDMTPO21N000000934', '롯데시네마', '용인기흥점', '2', '경기도', '용인시 기흥구', '구갈동', '234-3', '127.116766', '37.27453947'),
	('KCDMTPO21N000000938', 'CGV', '동두천점', '1', '경기도', '동두천시', '생연동', '364-1', '127.0583663', '37.89722969'),
	('KCDMTPO21N000000949', 'CGV', '남포점', '1', '부산광역시', '중구', '남포동6가', '91', '129.0273039', '35.09835297'),
	('KCDMTPO21N000000950', '메가박스', '전대점', '3', '광주광역시', '북구', '중흥동', '362-2', '126.9125372', '35.17263291'),
	('KCDMTPO21N000000953', '롯데시네마', '부천점', '2', '경기도', '부천시', '중동', '1141-2', '126.7732071', '37.50289486'),
	('KCDMTPO21N000000955', 'CGV', '천안펜타포트점', '1', '충청남도', '천안시 서북구', '불당동', '1289', '127.10143', '36.79842237'),
	('KCDMTPO21N000000956', 'CGV', '신촌아트레온점', '1', '서울특별시', '서대문구', '창천동', '20-25', '126.9401956', '37.55661676'),
	('KCDMTPO21N000000957', 'CGV', '전주효자점', '1', '전라북도', '전주시 완산구', '효자동1가', '434', '127.1159161', '35.80708516'),
	('KCDMTPO21N000000960', 'CGV', '서산점', '1', '충청남도', '서산시', '동문동', '1029-1', '126.4565256', '36.77821041'),
	('KCDMTPO21N000000961', '롯데시네마', '은평점', '2', '서울특별시', '은평구', '진관동', '63', '126.9179161', '37.637541'),
	('KCDMTPO21N000000964', '메가박스', '군자점', '3', '서울특별시', '광진구', '군자동', '477-12', '127.078393', '37.55579953'),
	('KCDMTPO21N000000968', '롯데시네마', '중랑점', '2', '서울특별시', '중랑구', '묵동', '234-1', '127.0760456', '37.61519099'),
	('KCDMTPO21N000000975', '롯데시네마', '월드타워점', '2', '서울특별시', '송파구', '신천동', '29', '127.105006', '37.51399997'),
	('KCDMTPO21N000000985', '메가박스', '파주출판도시점', '3', '경기도', '파주시', '문발동', '510-1', '126.6878663', '37.71415154'),
	('KCDMTPO21N000000988', 'CGV', '상봉점', '1', '서울특별시', '중랑구', '상봉동', '501', '127.0922552', '37.59741852'),
	('KCDMTPO21N000000989', '롯데시네마', '산본피트인점', '2', '경기도', '군포시', '산본동', '1145-6', '126.930654', '37.35780064'),
	('KCDMTPO21N000000990', '메가박스', '강남대로씨티점', '3', '서울특별시', '강남구', '역삼동', '816', '127.0269962', '37.5003928'),
	('KCDMTPO21N000000995', 'CGV', '울산신천점', '1', '울산광역시', '북구', '신천동', '51', '129.355753', '35.63496682'),
	('KCDMTPO21N000000996', 'CGV', '광교점', '1', '경기도', '수원시 영통구', '하동', '1017-2', '127.0573146', '37.28538136'),
	('KCDMTPO21N000001004', '롯데시네마', '신림점', '2', '서울특별시', '관악구', '신림동', '1641-2', '126.9302971', '37.48404826'),
	('KCDMTPO21N000001006', '롯데시네마', '프리미엄안동점', '2', '경상북도', '안동시', '옥동', '734', '128.6997309', '36.56636186'),
	('KCDMTPO21N000001008', 'CGV', '보령점', '1', '충청남도', '보령시', '대천동', '324-4', '126.5928447', '36.34956359'),
	('KCDMTPO21N000001013', 'CGV', '고양행신점', '1', '경기도', '고양시 덕양구', '행신동', '762-2', '126.8344955', '37.61352164'),
	('KCDMTPO21N000001022', '메가박스', '마산점', '3', '경상남도', '창원시 마산합포구', '해운동', '68', '128.5637995', '35.1819925'),
	('KCDMTPO21N000001025', 'CGV', '인천공항점', '1', '인천광역시', '중구', '운서동', '2851', '126.4526796', '37.44726103'),
	('KCDMTPO21N000001030', '메가박스', '송파파크하비오점', '3', '서울특별시', '송파구', '문정동', '618', '127.1235503', '37.48197601'),
	('KCDMTPO21N000001031', 'CGV', '청라점', '1', '인천광역시', '서구', '청라동', '155-7', '126.6416898', '37.53248279'),
	('KCDMTPO21N000001041', 'CGV', '동래점', '1', '부산광역시', '동래구', '온천동', '153-8', '129.0854672', '35.22180823'),
	('KCDMTPO21N000001042', 'CGV', '강릉점', '1', '강원도', '강릉시', '옥천동', '189', '128.8988575', '37.75593826'),
	('KCDMTPO21N000001043', '롯데시네마', '마산점', '2', '경상남도', '창원시 마산회원구', '합성동', '267', '128.5833128', '35.23856458'),
	('KCDMTPO21N000001044', '롯데시네마', '김해부원점', '2', '경상남도', '김해시', '부원동', '1046', '128.8841181', '35.22592936'),
	('KCDMTPO21N000001045', '메가박스', '별내점', '3', '경기도', '남양주시', '별내동', '936-4', '127.1266226', '37.65584486'),
	('KCDMTPO21N000001048', '메가박스', '청라지젤점', '3', '인천광역시', '서구', '청라동', '165-12', '126.6556226', '37.53369512'),
	('KCDMTPO21N000001050', 'CGV', '양산삼호점', '1', '경상남도', '양산시', '삼호동', '1010-3', '129.1677798', '35.41381924'),
	('KCDMTPO21N000001057', 'CGV', '익산점', '1', '전라북도', '익산시', '영등동', '149-1', '126.973774', '35.95815693'),
	('KCDMTPO21N000001058', '롯데시네마', '부산본점', '2', '부산광역시', '부산진구', '부전동', '503-15', '129.0560889', '35.15721384'),
	('KCDMTPO21N000001071', 'CGV', '양주옥정점', '1', '경기도', '양주시', '옥정동', '963-12', '127.0921261', '37.81939584'),
	('KCDMTPO21N000001080', '메가박스', '제주점', '3', '제주특별자치도', '제주시', '삼도이동', '108-13', '126.5225564', '33.51160125'),
	('KCDMTPO21N000001088', '메가박스', '대구이시아점', '3', '대구광역시', '동구', '봉무동', '1548', '128.6359096', '35.92066871'),
	('KCDMTPO21N000001097', '롯데시네마', '영등포점', '2', '서울특별시', '영등포구', '영등포동', '618-496', '126.9085232', '37.5160675'),
	('KCDMTPO21N000001098', 'CGV', '하계점', '1', '서울특별시', '노원구', '중계동', '506-1', '127.0648071', '37.63866894'),
	('KCDMTPO21N000001099', 'CGV', '북수원점', '1', '경기도', '수원시 장안구', '조원동', '893', '127.0075533', '37.30318382'),
	('KCDMTPO21N000001100', 'CGV', '춘천점', '1', '강원도', '춘천시', '퇴계동', '1017', '127.7440493', '37.85066401'),
	('KCDMTPO21N000001105', '메가박스', '대전유성점', '3', '대전광역시', '유성구', '봉명동', '1016-7', '127.3445752', '36.3522124'),
	('KCDMTPO21N000001107', '롯데시네마', '인천아시아드점', '2', '인천광역시', '서구', '연희동', '826', '126.6679429', '37.54755498'),
	('KCDMTPO21N000001113', '롯데시네마', '익산모현점', '2', '전라북도', '익산시', '모현동1가', '876', '126.9397144', '35.94981931'),
	('KCDMTPO21N000001114', '롯데시네마', '제주아라점', '2', '제주특별자치도', '제주시', '아라일동', '2574', '126.5359089', '33.48380739'),
	('KCDMTPO21N000001115', '롯데시네마', '영종하늘도시점', '2', '인천광역시', '중구', '중산동', '1883-12', '126.5613397', '37.48970399'),
	('KCDMTPO21N000001123', 'CGV', '충주교현점', '1', '충청북도', '충주시', '교현동', '539-1', '127.9279582', '36.98101911'),
	('KCDMTPO21N000001125', '롯데시네마', '장안점', '2', '서울특별시', '동대문구', '장안동', '368-1', '127.0724048', '37.57190919'),
	('KCDMTPO21N000001127', '롯데시네마', '전주점', '2', '전라북도', '전주시 완산구', '서신동', '971', '127.1219433', '35.83470496'),
	('KCDMTPO21N000001128', 'CGV', '원주점', '1', '강원도', '원주시', '단계동', '877-1', '127.9307418', '37.34505269'),
	('KCDMTPO21N000001130', '롯데시네마', '김포공항점', '2', '서울특별시', '강서구', '방화동', '886', '126.8036974', '37.56390908'),
	('KCDMTPO21N000001133', 'CGV', '부천역점', '1', '경기도', '부천시', '심곡동', '383-1', '126.7810058', '37.4858796'),
	('KCDMTPO21N000001135', '롯데시네마', '광교아울렛점', '2', '경기도', '수원시 영통구', '이의동', '1338', '127.0561562', '37.28632763'),
	('KCDMTPO21N000001136', '메가박스', '인천논현점', '3', '인천광역시', '남동구', '논현동', '747-1', '126.7274528', '37.39749404'),
	('KCDMTPO21N000001138', '메가박스', '삼천포점', '3', '경상남도', '사천시', '실안동', '1265', '128.0370843', '34.94938672'),
	('KCDMTPO21N000001143', '메가박스', '순천점', '3', '전라남도', '순천시', '덕암동', '151', '127.5108708', '34.94131521'),
	('KCDMTPO21N000001144', '메가박스', '공주점', '3', '충청남도', '공주시', '신관동', '248-11', '127.138875', '36.47357363'),
	('KCDMTPO21N000001150', 'CGV', '안동점', '1', '경상북도', '안동시', '용상동', '1426-1', '128.749339', '36.56116303'),
	('KCDMTPO21N000001154', '메가박스', '여수웅천점', '3', '전라남도', '여수시', '웅천동', '1720-1', '127.6790529', '34.74900279'),
	('KCDMTPO21N000001156', 'CGV', '서면삼정타워점', '1', '부산광역시', '부산진구', '부전동', '227-2', '129.0596819', '35.15293846'),
	('KCDMTPO21N000001157', '롯데시네마', '엠비씨네진주점', '2', '경상남도', '진주시', '가좌동', '700-1', '128.1073435', '35.16375896'),
	('KCDMTPO21N000001165', 'CGV', '강변점', '1', '서울특별시', '광진구', '구의동', '546-4', '127.0962519', '37.53586361'),
	('KCDMTPO21N000001166', 'CGV', '왕십리점', '1', '서울특별시', '성동구', '행당동', '168-151', '127.0381551', '37.56193879'),
	('KCDMTPO21N000001167', 'CGV', '영등포점', '1', '서울특별시', '영등포구', '영등포동4가', '442', '126.9027135', '37.5168438'),
	('KCDMTPO21N000001176', '롯데시네마', '영주점', '2', '경상북도', '영주시', '영주동', '497', '128.6177455', '36.82726807'),
	('KCDMTPO21N000001177', '메가박스', '미사강변점', '3', '경기도', '하남시', '망월동', '1079-2', '127.1896516', '37.56640415'),
	('KCDMTPO21N000001191', 'CGV', '역곡점', '1', '경기도', '부천시', '괴안동', '113-1', '126.8111404', '37.48468107'),
	('KCDMTPO21N000001195', '롯데시네마', '진주혁신점', '2', '경상남도', '진주시', '충무공동', '35', '128.1399343', '35.18025242'),
	('KCDMTPO21N000001196', '롯데시네마', '군산몰점', '2', '전라북도', '군산시', '조촌동', '450-21', '126.7391302', '35.97642462'),
	('KCDMTPO21N000001207', 'CGV', '오리점', '1', '경기도', '성남시 분당구', '구미동', '159', '127.1067444', '37.34104949'),
	('KCDMTPO21N000001210', 'CGV', '동탄점', '1', '경기도', '화성시', '반송동', '96', '127.0693595', '37.20519049'),
	('KCDMTPO21N000001216', '롯데시네마', '진해점', '2', '경상남도', '창원시 진해구', '석동', '543-3', '128.6974517', '35.15880692'),
	('KCDMTPO21N000001217', '롯데시네마', '울산성남점', '2', '울산광역시', '중구', '성남동', '256-24', '129.3203869', '35.5531899'),
	('KCDMTPO21N000001219', 'CGV', '김천율곡점', '1', '경상북도', '김천시', '율곡동', '1123', '128.1834542', '36.11495212'),
	('KCDMTPO21N000001231', '롯데시네마', '시화점', '2', '경기도', '시흥시', '정왕동', '27-Feb', '126.7417824', '37.35135156'),
	('KCDMTPO21N000001237', '롯데시네마', '인천터미널점', '2', '인천광역시', '미추홀구', '관교동', '15', '126.7012268', '37.44261452'),
	('KCDMTPO21N000001242', 'CGV', '동탄호수공원점', '1', '경기도', '화성시', '송동', '694', '127.1060841', '37.17210167'),
	('KCDMTPO21N000001249', '롯데시네마', '경주황성점', '2', '경상북도', '경주시', '황성동', '800-22', '129.2180103', '35.88080337'),
	('KCDMTPO21N000001251', '롯데시네마', '판교', '2', '경기도', '성남시 수정구', '시흥동', '296-3', '127.0980218', '37.41329567'),
	('KCDMTPO21N000001252', '롯데시네마', '건대입구점', '2', '서울특별시', '광진구', '자양동', '227-7', '127.0723622', '37.53874786'),
	('KCDMTPO21N000001254', '메가박스', '이수점', '3', '서울특별시', '동작구', '사당동', '147-53', '126.9816528', '37.48465997'),
	('KCDMTPO21N000001255', '메가박스', '제천점', '3', '충청북도', '제천시', '남천동', '1145', '128.2123407', '37.1352931'),
	('KCDMTPO21N000001258', 'CGV', '당진점', '1', '충청남도', '당진시', '읍내동', '1532', '126.6302064', '36.90196356'),
	('KCDMTPO21N000001270', '롯데시네마', '구미공단점', '2', '경상북도', '구미시', '공단동', '253-2', '128.3850181', '36.10428397'),
	('KCDMTPO21N000001271', '메가박스', '분당점', '3', '경기도', '성남시 분당구', '서현동', '262-2', '127.1223284', '37.38554797'),
	('KCDMTPO21N000001273', 'CGV', '의정부태흥점', '1', '경기도', '의정부시', '의정부동', '494', '127.0440225', '37.73801207'),
	('KCDMTPO21N000001274', 'CGV', '시흥점', '1', '경기도', '시흥시', '대야동', '568-1', '126.7916197', '37.44701092'),
	('KCDMTPO21N000001278', '롯데시네마', '프리미엄칠곡점', '2', '대구광역시', '북구', '구암동', '769-1', '128.563895', '35.94217707'),
	('KCDMTPO21N000001281', '롯데시네마', '수유점', '2', '서울특별시', '강북구', '번동', '449-1', '127.0238534', '37.63566803'),
	('KCDMTPO21N000001284', '메가박스', '홍대점', '3', '서울특별시', '마포구', '동교동', '160-4', '126.9220644', '37.55604538'),
	('KCDMTPO21N000001285', '롯데시네마', '도곡점', '2', '서울특별시', '강남구', '도곡동', '174-3', '127.0471342', '37.48747492'),
	('KCDMTPO21N000001286', '메가박스', '대전현대아울렛점', '3', '대전광역시', '유성구', '용산동', '579', '127.3986036', '36.42299619');
/*!40000 ALTER TABLE `theater` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
