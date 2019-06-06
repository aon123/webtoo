-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- 생성 시간: 18-12-16 19:57
-- 서버 버전: 5.7.23
-- PHP 버전: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `ytmt`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `toon`
--

CREATE TABLE `toon` (
  `toon_index` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `thum_link` varchar(225) DEFAULT NULL,
  `webtoon_link` varchar(225) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  `week` varchar(45) DEFAULT NULL,
  `latest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `toon`
--

INSERT INTO `toon` (`toon_index`, `name`, `thum_link`, `webtoon_link`, `site`, `week`, `latest`) VALUES
(194, '대작 (2010)', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/55277C7D043EDE0001', 'http://webtoon.daum.net/webtoon/view/drinkingtogether', 'daum', 'FRI', 0),
(553, '어쿠스틱 라이프', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/55277772023D470003', 'http://webtoon.daum.net/webtoon/view/acoustic', 'daum', 'FRI', 0),
(783, '창백한 말', 'http://t1.daumcdn.net/webtoon/op/86943651213dd579461e3c356e41889909ff8a08', 'http://webtoon.daum.net/webtoon/view/palehorse', 'daum', 'WED', 0),
(792, '블랙 베히모스', 'http://t1.daumcdn.net/webtoon/op/71b9d2fc3b2481111ba98385e9afb589b02f9447', 'http://webtoon.daum.net/webtoon/view/blackbehemoth', 'daum', 'WED', 0),
(816, '뿔', 'http://t1.daumcdn.net/webtoon/op/4145a8bd80e66f951ea8f1b22181f0d6206e0ae7', 'http://webtoon.daum.net/webtoon/view/bbul', 'daum', 'THU', 0),
(823, '레드스톰', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/552623AB0208EF0001', 'http://webtoon.daum.net/webtoon/view/redstorm', 'daum', 'SAT', 0),
(869, '천연 天緣', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/5684BB140635A10001', 'http://webtoon.daum.net/webtoon/view/heavencouple', 'daum', 'SAT', 0),
(877, '나의 밤은 당신의 낮보다 아름답다', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/552644680367060001', 'http://webtoon.daum.net/webtoon/view/mynight', 'daum', 'TUE', 0),
(933, '뽀짜툰', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/55262152043C6D0004', 'http://webtoon.daum.net/webtoon/view/cattoon', 'daum', 'THU', 0),
(940, '어제 오늘 그리고 내일', 'http://t1.daumcdn.net/webtoon/op/18e9b9dae0a0a66a2a2998224dc5f7d47cc5762d', 'http://webtoon.daum.net/webtoon/view/tomorrow', 'daum', 'TUE', 0),
(982, '도깨비언덕에 왜 왔니?', 'http://t1.daumcdn.net/webtoon/op/aa9a5ee6704ce35907272b217323c058ff230046', 'http://webtoon.daum.net/webtoon/view/goblinhill', 'daum', 'MON', 0),
(1047, '트레이스', 'http://t1.daumcdn.net/webtoon/op/f18e47d6ca375b35ab937eb4e44486cfdb3c958b', 'http://webtoon.daum.net/webtoon/view/trace2', 'daum', 'MON', 0),
(1089, '멀리서 보면 푸른 봄', 'http://t1.daumcdn.net/webtoon/op/9dd019ade22fd33a7a7de656bc70645bde3c3652', 'http://webtoon.daum.net/webtoon/view/campuslife', 'daum', 'SAT', 0),
(1121, '홍도', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/55263582023C270001', 'http://webtoon.daum.net/webtoon/view/hongdo', 'daum', 'SAT', 0),
(1133, '유치원의 하루', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/552634DB044DD50002', 'http://webtoon.daum.net/webtoon/view/kindergarten', 'daum', 'MON', 0),
(1137, '이게뭐야', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/552634950218BC0007', 'http://webtoon.daum.net/webtoon/view/zeezii', 'daum', 'WED', 0),
(1140, '일단 질러! 질렐루야', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/5526346602394B0001', 'http://webtoon.daum.net/webtoon/view/impulsebuyer', 'daum', 'MON', 0),
(1190, '나는 엄마다', 'http://t1.daumcdn.net/webtoon/op/08c3160a6dabca73d58170fbafb99778f10ad4cc', 'http://webtoon.daum.net/webtoon/view/iammother', 'daum', 'TUE', 0),
(1202, '죽어도 좋아♡ (2015)', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/55276FBC0275410005', 'http://webtoon.daum.net/webtoon/view/verygood', 'daum', 'THU', 0),
(1229, '대치동 일타강사', 'http://t1.daumcdn.net/webtoon/op/b50e42f45adc280ea732a4c2e3bc5fcc134e5ac8', 'http://webtoon.daum.net/webtoon/view/1punchTeacher', 'daum', 'SUN', 0),
(1230, '언더그라운드 블러드팩', 'http://t1.daumcdn.net/webtoon/op/84bbf9ee159b4b021697984d0a1d409628d59cf5', 'http://webtoon.daum.net/webtoon/view/bloodpack', 'daum', 'WED', 0),
(1244, '얌얌숲 당근길 토요요', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/55E5573D0213590002', 'http://webtoon.daum.net/webtoon/view/toyoyo', 'daum', 'WED', 0),
(1258, '풀 뜯어먹는 소리', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/566A81290233790001', 'http://webtoon.daum.net/webtoon/view/grass_sound', 'daum', 'SAT', 0),
(1262, '주간소년열애사', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/567A5F810217A40002', 'http://webtoon.daum.net/webtoon/view/weeklyboys', 'daum', 'FRI', 0),
(1273, '영원한 빛', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/56CC06EF0235450001', 'http://webtoon.daum.net/webtoon/view/eternallight2', 'daum', 'THU', 0),
(1288, '간이역에 겨울이 오면', 'http://t1.daumcdn.net/webtoon/op/68b294c76b583b5df05a93d80f87bbde6b9f39e4', 'http://webtoon.daum.net/webtoon/view/station', 'daum', 'MON', 0),
(1295, '퀴퀴한 일기', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/5742D034062D9D0001', 'http://webtoon.daum.net/webtoon/view/ficnonfic', 'daum', 'SUN', 0),
(1299, '쌍갑포차', 'http://t1.daumcdn.net/webtoon/op/211959e24bc40489572231df0214d41a0912d679', 'http://webtoon.daum.net/webtoon/view/pocha', 'daum', 'WED', 0),
(1301, '인간을 먹는 성', 'http://t1.daumcdn.net/webtoon/op/73f5cf953ae5b2ad47bb04295adbed6ec25554ee', 'http://webtoon.daum.net/webtoon/view/eathuman', 'daum', 'TUE', 0),
(1304, '소녀신선', 'http://t1.daumcdn.net/webtoon/op/8966f696ba45f43e918e05d07ee10921bc7f29b5', 'http://webtoon.daum.net/webtoon/view/girlsinsun', 'daum', 'TUE', 0),
(1309, '아쿠아맨', 'http://t1.daumcdn.net/webtoon/op/8cc3b938d6d1c665f7e19b5949c3161e85d8b41d', 'http://webtoon.daum.net/webtoon/view/aquaman', 'daum', 'SAT', 0),
(1314, '발자국이 녹기 전에', 'http://i1.cartoon.daumcdn.net/svc/image/U03/cartoon/57B3BF8402115F0001', 'http://webtoon.daum.net/webtoon/view/BeforeWarm', 'daum', 'SAT', 0),
(1336, '헤븐 투 헬', 'http://t1.daumcdn.net/webtoon/op/34c23e38e4d0616aca8d2439e73b22d27604c3aa', 'http://webtoon.daum.net/webtoon/view/HeavenToHell', 'daum', 'FRI', 0),
(1341, '티라레', 'http://t1.daumcdn.net/cartoon/589BF7170242880001', 'http://webtoon.daum.net/webtoon/view/Tirare', 'daum', 'FRI', 0),
(1342, '왕 그리고 황제', 'http://t1.daumcdn.net/webtoon/op/463877bce59c2c435f9544434972562fca9fe07e', 'http://webtoon.daum.net/webtoon/view/KingAndEmperor', 'daum', 'TUE', 0),
(1345, '들쥐', 'http://t1.daumcdn.net/cartoon/58991EA20574BA0001', 'http://webtoon.daum.net/webtoon/view/fieldmouse', 'daum', 'THU', 0),
(1346, '헬로 브리', 'http://t1.daumcdn.net/webtoon/op/c322e194f13b593622a1ba583f3f6ab129bb799b', 'http://webtoon.daum.net/webtoon/view/hellobree', 'daum', 'SUN', 0),
(1347, '반지하셋방', 'http://t1.daumcdn.net/cartoon/589C32130248A30001', 'http://webtoon.daum.net/webtoon/view/UnderRoom', 'daum', 'SAT', 0),
(1351, '이토록 보통의', 'http://t1.daumcdn.net/cartoon/58A6AC20042CC40002', 'http://webtoon.daum.net/webtoon/view/NormalLikeThis', 'daum', 'SUN', 0),
(1352, '20세 보고서', 'http://t1.daumcdn.net/cartoon/58AA9BEF0233AE0001', 'http://webtoon.daum.net/webtoon/view/TwentyReport', 'daum', 'TUE', 0),
(1354, '버닝 이펙트', 'http://t1.daumcdn.net/cartoon/58C0F2B2057F650001', 'http://webtoon.daum.net/webtoon/view/BurningEffect', 'daum', 'SUN', 0),
(1360, '트라이앵글', 'http://t1.daumcdn.net/cartoon/58F71577051F4E0001', 'http://webtoon.daum.net/webtoon/view/Triangle', 'daum', 'THU', 0),
(1361, '프레너미', 'http://t1.daumcdn.net/webtoon/op/f30f9a5532b7727d5df7d2dbaf3be6b50c67902a', 'http://webtoon.daum.net/webtoon/view/Frenemy', 'daum', 'THU', 0),
(1364, '도나스 학교괴담', 'http://t1.daumcdn.net/webtoon/op/a5c5f4c32e94339faf033a32770cd1d9b0ce3fbe', 'http://webtoon.daum.net/webtoon/view/Donas', 'daum', 'MON', 0),
(1366, '빛나는 손을', 'http://t1.daumcdn.net/cartoon/5913FC9E02380C0001', 'http://webtoon.daum.net/webtoon/view/Hand', 'daum', 'SAT', 0),
(1367, '태양의 시', 'http://t1.daumcdn.net/webtoon/op/bcbee791950f4298a5a6d54d2103a2ddd82a77e8', 'http://webtoon.daum.net/webtoon/view/PoetrySun', 'daum', 'SUN', 0),
(1368, '헤븐즈 소울', 'http://t1.daumcdn.net/webtoon/op/c8523d37e4f1271e735b0beab1ea0e9563078f9b', 'http://webtoon.daum.net/webtoon/view/HeavensSoul', 'daum', 'WED', 0),
(1369, '지옥사원', 'http://t1.daumcdn.net/webtoon/op/17b38f55433209c0d858f7a96001f8d2ca287dba', 'http://webtoon.daum.net/webtoon/view/hellTemple', 'daum', 'TUE', 0),
(1370, '과격자매단', 'http://t1.daumcdn.net/webtoon/op/8b3feea3e1629a44161e2c6572413cba95074760', 'http://webtoon.daum.net/webtoon/view/SISTERS', 'daum', 'MON', 0),
(1372, '집행자여', 'http://t1.daumcdn.net/cartoon/5939466C0211E70001', 'http://webtoon.daum.net/webtoon/view/RTX', 'daum', 'MON', 0),
(1374, '어떻게든 중간만 간다면', 'http://t1.daumcdn.net/webtoon/op/f6df13cba138bce8e5526e71fd46ecb1d8433520', 'http://webtoon.daum.net/webtoon/view/AnywayMidway', 'daum', 'SAT', 0),
(1375, '오랑캐', 'http://t1.daumcdn.net/webtoon/op/a76afedfa22bda2cc20411865b8e197c522c70a0', 'http://webtoon.daum.net/webtoon/view/Barbarian', 'daum', 'SUN', 0),
(1376, '박살소녀', 'http://t1.daumcdn.net/cartoon/596497460239F20001', 'http://webtoon.daum.net/webtoon/view/SmashGirl', 'daum', 'WED', 0),
(1378, '고양이 마마님', 'http://t1.daumcdn.net/webtoon/op/d91682c78485c52d99df12e234f864b9dc8b3ffb', 'http://webtoon.daum.net/webtoon/view/CatQueen', 'daum', 'MON', 0),
(1381, '후크', 'http://t1.daumcdn.net/webtoon/op/92eef75a3b8f3c6d846ad21072ca5744a8c77b2a', 'http://webtoon.daum.net/webtoon/view/TheHook', 'daum', 'WED', 0),
(1386, '우리학교 김선생님', 'http://t1.daumcdn.net/webtoon/op/525981d034d69ae71788f1b976419d10c73ad511', 'http://webtoon.daum.net/webtoon/view/KimTeachers', 'daum', 'WED', 0),
(1395, '아비무쌍', 'http://t1.daumcdn.net/webtoon/op/49bb2a8f72c35ae85af3bb6193cf59ab5db53c2a', 'http://webtoon.daum.net/webtoon/view/Matchless', 'daum', 'TUE', 0),
(1397, '유사과학 탐구영역', 'http://t1.daumcdn.net/webtoon/op/8b20acdb59bde54687be67a055381d083c67bad7', 'http://webtoon.daum.net/webtoon/view/PseudoScience', 'daum', 'THU', 0),
(1400, '오리지널 씬2', 'http://t1.daumcdn.net/webtoon/op/5d4e8519ae7f3063b8b4608d84f9f8366d766ecc', 'http://webtoon.daum.net/webtoon/view/originalscene', 'daum', 'FRI', 0),
(1405, '바리공주', 'http://t1.daumcdn.net/webtoon/op/a6c59cfa2a0241ab6b63d35ecc04d1f50d2ca4eb', 'http://webtoon.daum.net/webtoon/view/princessbari', 'daum', 'FRI', 0),
(1407, '작약만가 : 불환곡', 'http://t1.daumcdn.net/webtoon/op/12c8806469ce29866533bc6b0f9031432d116623', 'http://webtoon.daum.net/webtoon/view/nodesires', 'daum', 'FRI', 0),
(1409, '그놈의 스캔들', 'http://t1.daumcdn.net/webtoon/op/549b2f73de97c806ea3616d49828432324a3c9c3', 'http://webtoon.daum.net/webtoon/view/scandal', 'daum', 'THU', 0),
(1410, '영웅의 변수', 'http://t1.daumcdn.net/webtoon/op/6e3aea7c319ade085c9b2e7b40b79c742767e447', 'http://webtoon.daum.net/webtoon/view/herosvariable', 'daum', 'THU', 0),
(1417, '여의주', 'http://t1.daumcdn.net/webtoon/op/a69e6a141cf04d466ac5f8810bf6fda13407419a', 'http://webtoon.daum.net/webtoon/view/politics', 'daum', 'SAT', 0),
(1418, '대디보이', 'http://t1.daumcdn.net/webtoon/op/6b9cdda23ddb9468c46b7dfc7d307230c8d5bf0f', 'http://webtoon.daum.net/webtoon/view/daddyboy', 'daum', 'SUN', 0),
(1419, '노동본색', 'http://t1.daumcdn.net/webtoon/op/8eb832a046fd147f9f291ff42dd131c318f359e5', 'http://webtoon.daum.net/webtoon/view/workinstinct', 'daum', 'MON', 0),
(1420, '포 더 프린세스', 'http://t1.daumcdn.net/webtoon/op/1e8a42b6d4e813f5e51bccb53815c762c633655a', 'http://webtoon.daum.net/webtoon/view/fortheprincess', 'daum', 'WED', 0),
(1421, '옥탑빵', 'http://t1.daumcdn.net/webtoon/op/ccc31762cd582e0d1ed041ad3f6c0c4f2fbaf293', 'http://webtoon.daum.net/webtoon/view/rooftopbread', 'daum', 'WED', 0),
(1439, '끼리끼리', 'http://t1.daumcdn.net/webtoon/op/f2733be537d05d9c530059c9c479c72318e49cbd', 'http://webtoon.daum.net/webtoon/view/kkirikkiri', 'daum', 'FRI', 0),
(1441, '무능력자', 'http://t1.daumcdn.net/webtoon/op/f7587dd5f291c6a107320ed90a68a4a77e231d7e', 'http://webtoon.daum.net/webtoon/view/powerless', 'daum', 'FRI', 0),
(1444, '우두커니', 'http://t1.daumcdn.net/webtoon/op/3e3e702fba7ea866735b4db119ddeb61470f7d28', 'http://webtoon.daum.net/webtoon/view/vacantly', 'daum', 'TUE', 0),
(1450, '취향저격 그녀', 'http://t1.daumcdn.net/webtoon/op/392a8e0be0879ccce568f1c58c3b63b161a31281', 'http://webtoon.daum.net/webtoon/view/favorite', 'daum', 'SUN', 0),
(1454, '계약우정', 'http://t1.daumcdn.net/webtoon/op/f01f2628bf8465c069567b4a7f1d360571d47d2a', 'http://webtoon.daum.net/webtoon/view/friendcontract', 'daum', 'TUE', 0),
(1458, '우리 남매의 일상은', 'http://t1.daumcdn.net/webtoon/op/e8d549ecffa0311c9f88f089624e885143dd79ea', 'http://webtoon.daum.net/webtoon/view/brothersister', 'daum', 'SUN', 0),
(1459, '껍데기', 'http://t1.daumcdn.net/webtoon/op/24eec365d0fcc5327e2fba7cc86e0d3a634d9787', 'http://webtoon.daum.net/webtoon/view/shell', 'daum', 'SUN', 0),
(1460, '노인의 집', 'http://t1.daumcdn.net/webtoon/op/3e89245e27ecc924870392ca4b402f01354f9a53', 'http://webtoon.daum.net/webtoon/view/homeofelder', 'daum', 'WED', 0),
(1465, '하면 좋습니까?', 'http://t1.daumcdn.net/webtoon/op/b811bc27a571a04c04b3c6cbd9d4f34d57634fb3', 'http://webtoon.daum.net/webtoon/view/isitgood', 'daum', 'WED', 0),
(1466, '새벽날개', 'http://t1.daumcdn.net/webtoon/op/7f939ab64918cb9ea50a38ef656fa3c07e04867a', 'http://webtoon.daum.net/webtoon/view/dawnwings', 'daum', 'WED', 0),
(1467, '구리의 구리구리 컴백', 'http://t1.daumcdn.net/webtoon/op/2de21997fa824a6e383c62d7ba7c6e50c0b7de54', 'http://webtoon.daum.net/webtoon/view/guricomeback', 'daum', 'THU', 0),
(1468, '우리가 사랑하는 방법', 'http://t1.daumcdn.net/webtoon/op/86da57b3de5ac5ae0f14f0bd967aa1668b626091', 'http://webtoon.daum.net/webtoon/view/loveway', 'daum', 'WED', 0),
(1469, '곤조 스트릿', 'http://t1.daumcdn.net/webtoon/op/288d844db24d7dccd1814bcdf1a4bb07af301c17', 'http://webtoon.daum.net/webtoon/view/gzstreet', 'daum', 'MON', 0),
(1479, 'N번째 연애', 'http://t1.daumcdn.net/webtoon/op/2fd32a32dd162515eb0abf476b9ba0d563303da1', 'http://webtoon.daum.net/webtoon/view/numberN', 'daum', 'WED', 0),
(1480, '고등패왕전기', 'http://t1.daumcdn.net/webtoon/op/b60d57b2998959102471851a63fa57efdde47343', 'http://webtoon.daum.net/webtoon/view/overlord', 'daum', 'FRI', 0),
(1481, '말괄량이 길들이기', 'http://t1.daumcdn.net/webtoon/op/d1c5734009cb075ad17f37f6ccefe9be9e633b85', 'http://webtoon.daum.net/webtoon/view/tomboy', 'daum', 'SUN', 0),
(1492, '아티스트', 'http://t1.daumcdn.net/webtoon/op/09865e2dced2d5d31fc6e37dcd33a85e4974b6de', 'http://webtoon.daum.net/webtoon/view/artist', 'daum', 'TUE', 0),
(1494, '사생', 'http://t1.daumcdn.net/webtoon/op/380268da58c9515c84f1a82c36415e68334420ff', 'http://webtoon.daum.net/webtoon/view/sasaeng', 'daum', 'MON', 0),
(1495, '더블랙LABEL', 'http://t1.daumcdn.net/webtoon/op/1c5704e1eac47ec783ea58c01454024305cf0bc0', 'http://webtoon.daum.net/webtoon/view/theBLACKLABEL', 'daum', 'TUE', 0),
(1496, '너도 나랑', 'http://t1.daumcdn.net/webtoon/op/3b942a6e815a426ce33768825f40b3ac01a40e64', 'http://webtoon.daum.net/webtoon/view/youwithme', 'daum', 'FRI', 0),
(1497, '주말 도미 시식회', 'http://t1.daumcdn.net/webtoon/op/3a3957cc369e93787e10fbd7e2df42216f6b7660', 'http://webtoon.daum.net/webtoon/view/weekendseabream', 'daum', 'SAT', 0),
(1500, '취준생물', 'http://t1.daumcdn.net/webtoon/op/493dacc2609da00e43a3c0f2578a7db196d7924c', 'http://webtoon.daum.net/webtoon/view/lookingforajob', 'daum', 'MON', 0),
(1501, '이병 일학년', 'http://t1.daumcdn.net/webtoon/op/56d363cb0799d124ea75df0a5dffba356b8fd9af', 'http://webtoon.daum.net/webtoon/view/privatefreshman', 'daum', 'THU', 0),
(1502, '달리는 여자', 'http://t1.daumcdn.net/webtoon/op/b6a0a829b579340585887cb44e762d664e055e7d', 'http://webtoon.daum.net/webtoon/view/runningwoman', 'daum', 'SAT', 0),
(1503, '달에 사는 사람들', 'http://t1.daumcdn.net/webtoon/op/87b76e32aa1e29fffac41b10abc268f7a7998407', 'http://webtoon.daum.net/webtoon/view/livinginthemoon', 'daum', 'SUN', 0),
(1513, '단짠남녀', 'http://t1.daumcdn.net/webtoon/op/2e590ec5e4594f5636dccae8956035af5ee80809', 'http://webtoon.daum.net/webtoon/view/sweetsalty', 'daum', 'THU', 0),
(1519, '미래의 너에게', 'http://t1.daumcdn.net/webtoon/op/136821ba412287a73a2a39d1632aac6031433e3c', 'http://webtoon.daum.net/webtoon/view/futuretoyou', 'daum', 'TUE', 0),
(1523, '환상숲', 'http://t1.daumcdn.net/webtoon/op/69e34353817bc03f11c94ffdc6648a638e6c6e10', 'http://webtoon.daum.net/webtoon/view/fantasyforest', 'daum', 'SUN', 0),
(1525, '경이로운 소문', 'http://t1.daumcdn.net/webtoon/op/4e17cf3e45ab2c26c33f202eb88ecdcff5ba3ad3', 'http://webtoon.daum.net/webtoon/view/AmazingRumor', 'daum', 'THU', 0),
(1526, '겟 레디 위드 미', 'http://t1.daumcdn.net/webtoon/op/59a1f8f2637e523d7aa98f53df1c1f59b1185557', 'http://webtoon.daum.net/webtoon/view/getreadywithme', 'daum', 'TUE', 0),
(1531, '별똥별이 떨어지는 그 곳에서 기다려', 'http://t1.daumcdn.net/webtoon/op/a2ccfaca58b1b916a76cdfce327213a44728551c', 'http://webtoon.daum.net/webtoon/view/shootingstar', 'daum', 'SAT', 0),
(1532, '밤의 향', 'http://t1.daumcdn.net/webtoon/op/b2224e6bd2e25d217bb1554c95306b32f318226f', 'http://webtoon.daum.net/webtoon/view/nightperfume', 'daum', 'SUN', 0),
(1533, '헬로 마이 안드로이드', 'http://t1.daumcdn.net/webtoon/op/512e7d8fea67c1a19fdf0d1fc9c3ae308fee782f', 'http://webtoon.daum.net/webtoon/view/hellomyandroid', 'daum', 'TUE', 0),
(1543, '리세터', 'http://t1.daumcdn.net/webtoon/op/dfe8d4a0242ed30d2e6fcabe9601d80d8f231e29', 'http://webtoon.daum.net/webtoon/view/Reseter', 'daum', 'MON', 0),
(1544, '거울 죽이기', 'http://t1.daumcdn.net/webtoon/op/6dc4f8779b561e525bce272598c5ba8e34dd73e1', 'http://webtoon.daum.net/webtoon/view/mirrorkill', 'daum', 'TUE', 0),
(1545, '풍검', 'http://t1.daumcdn.net/webtoon/op/c1720cbf8011703f10040cb37bc5179063d11eed', 'http://webtoon.daum.net/webtoon/view/windsword', 'daum', 'SAT', 0),
(1546, '굿바이 사돈!', 'http://t1.daumcdn.net/webtoon/op/298c9c67267cdb9d96dc87a32475dbc447a3fcb4', 'http://webtoon.daum.net/webtoon/view/goodbyeinlaw', 'daum', 'MON', 0),
(1549, '애휴', 'http://t1.daumcdn.net/webtoon/op/760831f7f757e13c0b20e6af548d4a043a27577b', 'http://webtoon.daum.net/webtoon/view/sadstop', 'daum', 'FRI', 0),
(1558, '유리의 벽', 'http://t1.daumcdn.net/webtoon/op/1a4b4970ef67ce4f953cc2823a34dea1ddc2df3a', 'http://webtoon.daum.net/webtoon/view/glassblock', 'daum', 'FRI', 0),
(1563, '네 살 차이', 'http://t1.daumcdn.net/webtoon/op/f3b4dd461782908d311eb3e974cd7f4254d179e0', 'http://webtoon.daum.net/webtoon/view/4yearsdifference', 'daum', 'FRI', 0),
(1564, '위대한 로맨스', 'http://t1.daumcdn.net/webtoon/op/79ce4e43ad1203d0f4614aa0af37a7f32c8a5e88', 'http://webtoon.daum.net/webtoon/view/greatromance', 'daum', 'SAT', 0),
(1568, '학교대표', 'http://t1.daumcdn.net/webtoon/op/3da09ed54b5891d7942aab6dd937b5d8006e97e0', 'http://webtoon.daum.net/webtoon/view/nege', 'daum', 'TUE', 0),
(1572, '겨울과 봄사이', 'http://t1.daumcdn.net/webtoon/op/7fbf579b7694c8febf16223f7b53cc943c2c5463', 'http://webtoon.daum.net/webtoon/view/winterspring', 'daum', 'THU', 0),
(1573, '프롬,스타', 'http://t1.daumcdn.net/webtoon/op/b3210e81820d93e1ab0c0a8db8ecb9714e7ee457', 'http://webtoon.daum.net/webtoon/view/fromstar', 'daum', 'SAT', 0),
(1575, '슬프게도 이게 내 인생', 'http://t1.daumcdn.net/webtoon/op/a707d8f136c6a2adaa3f99360a2da46d4ec4fc58', 'http://webtoon.daum.net/webtoon/view/whatasadlife', 'daum', 'SUN', 0),
(1576, '허세남길들이기', 'http://t1.daumcdn.net/webtoon/op/729e789663ee0c3071bde08c3dd2c4662ad33863', 'http://webtoon.daum.net/webtoon/view/bluffingguy', 'daum', 'TUE', 0),
(1577, '키몽의 호구로운 생활', 'http://t1.daumcdn.net/webtoon/op/019e2a918c2af63e5be549bedd5d41e91347a815', 'http://webtoon.daum.net/webtoon/view/kimonglife', 'daum', 'FRI', 0),
(1584, '배고픈 자들의 도시', 'http://t1.daumcdn.net/webtoon/op/42bcfdde864763f6a807a8409f2745a10047dd69', 'http://webtoon.daum.net/webtoon/view/hungrycity', 'daum', 'THU', 0),
(1595, '차이니즈 봉봉클럽 광저우편', 'http://t1.daumcdn.net/webtoon/op/3e95da99aed6da8140e677f07f813c2638a21d9c', 'http://webtoon.daum.net/webtoon/view/chabong4', 'daum', 'THU', 0),
(20853, '마음의소리', 'https://shared-comic.pstatic.net/thumb/webtoon/20853/thumbnail/thumbnail_IMAG10_545c2365-1d18-4cd3-afd9-27b161a4c664.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=20853&weekday=tue', 'naver', 'tue', 1151),
(21815, '히어로메이커', 'https://shared-comic.pstatic.net/thumb/webtoon/21815/thumbnail/thumbnail_title_21815_83x90.gif', 'http://comic.naver.com/webtoon/list.nhn?titleId=21815&weekday=mon', 'naver', 'mon', 645),
(22897, '호랭총각', 'https://shared-comic.pstatic.net/thumb/webtoon/22897/thumbnail/thumbnail_title_22897_83x90.gif', 'http://comic.naver.com/webtoon/list.nhn?titleId=22897&weekday=sun', 'naver', 'sun', 575),
(25455, '노블레스', 'https://shared-comic.pstatic.net/thumb/webtoon/25455/thumbnail/title_thumbnail_20100614120245_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=25455&weekday=tue', 'naver', 'tue', 541),
(64997, '나이트런', 'https://shared-comic.pstatic.net/thumb/webtoon/64997/thumbnail/title_thumbnail_20110515001535_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=64997&weekday=sat', 'naver', 'sat', 446),
(119874, '덴마', 'https://shared-comic.pstatic.net/thumb/webtoon/119874/thumbnail/title_thumbnail_20150706185233_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=119874&weekday=tue', 'naver', 'tue', 1252),
(131385, '쿠베라', 'https://shared-comic.pstatic.net/thumb/webtoon/131385/thumbnail/thumbnail_IMAG10_c5053bcc-3b95-473d-bfe1-e4256bf56b58.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=131385&weekday=thu', 'naver', 'thu', 378),
(160469, '특수 영능력 수사반', 'https://shared-comic.pstatic.net/thumb/webtoon/160469/thumbnail/title_thumbnail_20100616174201_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=160469&weekday=thu', 'naver', 'thu', 303),
(183559, '신의 탑', 'https://shared-comic.pstatic.net/thumb/webtoon/183559/thumbnail/title_thumbnail_20160516123017_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=183559&weekday=mon', 'naver', 'mon', 413),
(316909, '그 판타지 세계에서 사는 법', 'https://shared-comic.pstatic.net/thumb/webtoon/316909/thumbnail/thumbnail_IMAG10_da706b81-7dc2-456f-a047-0a67c0c48ab7.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=316909&weekday=wed', 'naver', 'wed', 225),
(318995, '갓 오브 하이스쿨', 'https://shared-comic.pstatic.net/thumb/webtoon/318995/thumbnail/title_thumbnail_20110407182655_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=318995&weekday=fri', 'naver', 'fri', 392),
(400739, '에이머', 'https://shared-comic.pstatic.net/thumb/webtoon/400739/thumbnail/title_thumbnail_20150504175746_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=400739&weekday=tue', 'naver', 'tue', 309),
(524520, '트럼프', 'https://shared-comic.pstatic.net/thumb/webtoon/524520/thumbnail/title_thumbnail_20161007190526_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=524520&weekday=sat', 'naver', 'sat', 256),
(552960, '더 게이머', 'https://shared-comic.pstatic.net/thumb/webtoon/552960/thumbnail/title_thumbnail_20130905153649_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=552960&weekday=fri', 'naver', 'fri', 254),
(557672, '기기괴괴', 'https://shared-comic.pstatic.net/thumb/webtoon/557672/thumbnail/title_thumbnail_20130508182053_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=557672&weekday=thu', 'naver', 'thu', 257),
(557676, '다이스(DICE)', 'https://shared-comic.pstatic.net/thumb/webtoon/557676/thumbnail/thumbnail_IMAG10_e44c2148-c07b-4ccb-b53a-1fee1c6e2122.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=557676&weekday=sun', 'naver', 'sun', 273),
(570503, '연애혁명', 'https://shared-comic.pstatic.net/thumb/webtoon/570503/thumbnail/thumbnail_IMAG10_5719a3fe-81f4-4a0c-8c27-eca1631e8384.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=570503&weekday=thu', 'naver', 'thu', 248),
(570506, '최강전설 강해효', 'https://shared-comic.pstatic.net/thumb/webtoon/570506/thumbnail/title_thumbnail_20130710192300_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=570506&weekday=thu', 'naver', 'thu', 275),
(578108, '강변살다', 'https://shared-comic.pstatic.net/thumb/webtoon/578108/thumbnail/title_thumbnail_20140127223051_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=578108&weekday=fri', 'naver', 'fri', 189),
(597447, '프리드로우', 'https://shared-comic.pstatic.net/thumb/webtoon/597447/thumbnail/title_thumbnail_20131102162055_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=597447&weekday=sat', 'naver', 'sat', 263),
(597478, '평범한 8반', 'https://shared-comic.pstatic.net/thumb/webtoon/597478/thumbnail/thumbnail_IMAG10_487d19d8-3547-43a0-aa94-10ef7fc94cda.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=597478&weekday=mon', 'naver', 'mon', 246),
(602287, '신의 언어', 'https://shared-comic.pstatic.net/thumb/webtoon/602287/thumbnail/thumbnail_IMAG10_9c263219-ce76-4050-8af8-0f3c1853a36d.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=602287&weekday=tue', 'naver', 'tue', 236),
(602910, '윈드브레이커', 'https://shared-comic.pstatic.net/thumb/webtoon/602910/thumbnail/thumbnail_IMAG10_ec235b6e-c4fa-47ab-8141-36c4f1572a79.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=602910&weekday=mon', 'naver', 'mon', 245),
(603159, '레사 시즌2~3', 'https://shared-comic.pstatic.net/thumb/webtoon/603159/thumbnail/thumbnail_IMAG10_9c8174b9-022f-466f-acd5-1274aecee71c.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=603159&weekday=wed', 'naver', 'wed', 134),
(616239, '윌유메리미', 'https://shared-comic.pstatic.net/thumb/webtoon/616239/thumbnail/title_thumbnail_20161031214436_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=616239&weekday=tue', 'naver', 'tue', 482),
(622644, '아메리카노 엑소더스', 'https://shared-comic.pstatic.net/thumb/webtoon/622644/thumbnail/title_thumbnail_20150127152059_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=622644&weekday=sat', 'naver', 'sat', 188),
(626906, '패밀리 사이즈', 'https://shared-comic.pstatic.net/thumb/webtoon/626906/thumbnail/title_thumbnail_20150810235651_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=626906&weekday=tue', 'naver', 'tue', 441),
(626907, '복학왕', 'https://shared-comic.pstatic.net/thumb/webtoon/626907/thumbnail/title_thumbnail_20150407141027_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=626907&weekday=wed', 'naver', 'wed', 228),
(626939, '둥굴레차!', 'https://shared-comic.pstatic.net/thumb/webtoon/626939/thumbnail/thumbnail_IMAG10_821c4cf8-e1a4-47ec-be73-ee6163307441.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=626939&weekday=sun', 'naver', 'sun', 80),
(635174, '씬커', 'https://shared-comic.pstatic.net/thumb/webtoon/635174/thumbnail/title_thumbnail_20161108161056_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=635174&weekday=wed', 'naver', 'wed', 162),
(637931, '전자오락수호대', 'https://shared-comic.pstatic.net/thumb/webtoon/637931/thumbnail/thumbnail_IMAG10_064f190a-2f70-4149-b9af-760bfdede057.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=637931&weekday=thu', 'naver', 'thu', 180),
(641253, '외모지상주의', 'https://shared-comic.pstatic.net/thumb/webtoon/641253/thumbnail/title_thumbnail_20141120112141_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=641253&weekday=fri', 'naver', 'fri', 212),
(642598, '조선왕조실톡', 'https://shared-comic.pstatic.net/thumb/webtoon/642598/thumbnail/title_thumbnail_20160117000448_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=642598&weekday=wed', 'naver', 'wed', 365),
(642653, '사이드킥 2~3', 'https://shared-comic.pstatic.net/thumb/webtoon/642653/thumbnail/thumbnail_IMAG10_7a019732-5db6-4c88-85fb-a65e69748797.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=642653&weekday=tue', 'naver', 'tue', 90),
(642700, '공복의 저녁식사', 'https://shared-comic.pstatic.net/thumb/webtoon/642700/thumbnail/title_thumbnail_20141219235553_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=642700&weekday=sat', 'naver', 'sat', 193),
(644112, '몽홀', 'https://shared-comic.pstatic.net/thumb/webtoon/644112/thumbnail/title_thumbnail_20150105174647_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=644112&weekday=fri', 'naver', 'fri', 194),
(646358, '백귀야행지', 'https://shared-comic.pstatic.net/thumb/webtoon/646358/thumbnail/title_thumbnail_20150120174956_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=646358&weekday=thu', 'naver', 'thu', 203),
(648419, '뷰티풀 군바리', 'https://shared-comic.pstatic.net/thumb/webtoon/648419/thumbnail/thumbnail_IMAG10_1421195d-13be-4cde-bcf9-0c78d51c5ea3.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=648419&weekday=mon', 'naver', 'mon', 194),
(650305, '호랑이형님', 'https://shared-comic.pstatic.net/thumb/webtoon/650305/thumbnail/title_thumbnail_20161209212128_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=650305&weekday=sat', 'naver', 'sat', 187),
(651617, '연애의 정령', 'https://shared-comic.pstatic.net/thumb/webtoon/651617/thumbnail/thumbnail_IMAG10_6e112c5d-a48f-4eca-9e0f-b8f8fb048346.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=651617&weekday=sun', 'naver', 'sun', 188),
(651664, '밥 먹고 갈래요?', 'https://shared-comic.pstatic.net/thumb/webtoon/651664/thumbnail/title_thumbnail_20150326153630_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=651664&weekday=fri', 'naver', 'fri', 183),
(651673, '유미의 세포들', 'https://shared-comic.pstatic.net/thumb/webtoon/651673/thumbnail/thumbnail_IMAG10_3c7a2e4c-376e-4856-9f03-6ba554dcd62a.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=651673&weekday=wed', 'naver', 'wed', 352),
(654138, '은주의 방 2~3부', 'https://shared-comic.pstatic.net/thumb/webtoon/654138/thumbnail/thumbnail_IMAG10_6703cec5-78ee-4a87-9362-e46b6763b432.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=654138&weekday=tue', 'naver', 'tue', 144),
(654774, '소녀의 세계', 'https://shared-comic.pstatic.net/thumb/webtoon/654774/thumbnail/thumbnail_IMAG10_b85f5350-ca68-4300-ab15-036d9ee060c8.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=654774&weekday=mon', 'naver', 'mon', 173),
(655746, '마법스크롤 상인 지오', 'https://shared-comic.pstatic.net/thumb/webtoon/655746/thumbnail/thumbnail_IMAG10_0a5175a6-514f-47f8-8d70-6d3893d396c0.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=655746&weekday=sun', 'naver', 'sun', 177),
(662774, '고수', 'https://shared-comic.pstatic.net/thumb/webtoon/662774/thumbnail/thumbnail_IMAG10_fddc4c8b-fbe6-422c-9777-590d98f4dc9e.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=662774&weekday=wed', 'naver', 'wed', 162),
(667573, '연놈', 'https://shared-comic.pstatic.net/thumb/webtoon/667573/thumbnail/title_thumbnail_20151120112903_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=667573&weekday=wed', 'naver', 'wed', 157),
(668101, '결계녀', 'https://shared-comic.pstatic.net/thumb/webtoon/668101/thumbnail/title_thumbnail_20151203204442_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=668101&weekday=fri', 'naver', 'fri', 156),
(668723, '이상하고 아름다운', 'https://shared-comic.pstatic.net/thumb/webtoon/668723/thumbnail/thumbnail_IMAG10_7d4eefd4-c96e-4e85-acdb-c65dac816c46.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=668723&weekday=mon', 'naver', 'mon', 147),
(670139, '부활남', 'https://shared-comic.pstatic.net/thumb/webtoon/670139/thumbnail/thumbnail_IMAG10_7293f981-bf32-45ae-b75e-df181b253688.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=670139&weekday=sat', 'naver', 'sat', 124),
(670140, '203호 저승사자', 'https://shared-comic.pstatic.net/thumb/webtoon/670140/thumbnail/thumbnail_IMAG10_9f5deabc-dc5b-4401-8548-35d98126bb14.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=670140&weekday=wed', 'naver', 'wed', 57),
(670143, '헬퍼 2 : 킬베로스', 'https://shared-comic.pstatic.net/thumb/webtoon/670143/thumbnail/title_thumbnail_20160108202909_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=670143&weekday=wed', 'naver', 'wed', 150),
(670144, '가담항설', 'https://shared-comic.pstatic.net/thumb/webtoon/670144/thumbnail/title_thumbnail_20151230192753_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=670144&weekday=thu', 'naver', 'thu', 152),
(670145, '킬더킹', 'https://shared-comic.pstatic.net/thumb/webtoon/670145/thumbnail/title_thumbnail_20160105121235_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=670145&weekday=thu', 'naver', 'thu', 154),
(670149, '테러맨', 'https://shared-comic.pstatic.net/thumb/webtoon/670149/thumbnail/thumbnail_IMAG10_e7b9a026-42a9-447c-a5b5-af0c71626e50.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=670149&weekday=fri', 'naver', 'fri', 136),
(670150, '나노리스트', 'https://shared-comic.pstatic.net/thumb/webtoon/670150/thumbnail/title_thumbnail_20160122200146_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=670150&weekday=sat', 'naver', 'sat', 147),
(670152, '열렙전사', 'https://shared-comic.pstatic.net/thumb/webtoon/670152/thumbnail/title_thumbnail_20160122210643_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=670152&weekday=sun', 'naver', 'sun', 151),
(671421, '언덕 위의 제임스', 'https://shared-comic.pstatic.net/thumb/webtoon/671421/thumbnail/thumbnail_IMAG10_b0f7d54d-f2f8-4b8e-a521-f8dd96ff65f1.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=671421&weekday=wed', 'naver', 'wed', 152),
(675554, '가우스전자 시즌3~4', 'https://shared-comic.pstatic.net/thumb/webtoon/675554/thumbnail/thumbnail_IMAG10_66613407-1041-4f4f-ad8a-1983361f932e.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=675554&weekday=mon', 'naver', 'mon', 681),
(676695, '제로게임', 'https://shared-comic.pstatic.net/thumb/webtoon/676695/thumbnail/thumbnail_IMAG10_45724aa5-2db0-4002-956e-573d4e1686a2.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=676695&weekday=tue', 'naver', 'tue', 128),
(677737, '대가리', 'https://shared-comic.pstatic.net/thumb/webtoon/677737/thumbnail/title_thumbnail_20160415184239_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=677737&weekday=sat', 'naver', 'sat', 137),
(678494, '동토의 여명', 'https://shared-comic.pstatic.net/thumb/webtoon/678494/thumbnail/thumbnail_IMAG10_915c9e1a-ecb0-4ed0-ad7a-0fe64db3dc3b.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=678494&weekday=sat', 'naver', 'sat', 84),
(679519, '대학일기', 'https://shared-comic.pstatic.net/thumb/webtoon/679519/thumbnail/title_thumbnail_20160601180804_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=679519&weekday=mon', 'naver', 'mon', 265),
(679568, '마이너스의 손', 'https://shared-comic.pstatic.net/thumb/webtoon/679568/thumbnail/title_thumbnail_20160729221220_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=679568&weekday=mon', 'naver', 'mon', 110),
(679570, '귀각시', 'https://shared-comic.pstatic.net/thumb/webtoon/679570/thumbnail/title_thumbnail_20160617142441_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=679570&weekday=sat', 'naver', 'sat', 125),
(682637, '놓지마 정신줄 시즌2', 'https://shared-comic.pstatic.net/thumb/webtoon/682637/thumbnail/title_thumbnail_20160729190602_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=682637&weekday=tue', 'naver', 'tue', 246),
(683496, '신도림', 'https://shared-comic.pstatic.net/thumb/webtoon/683496/thumbnail/title_thumbnail_20160805110206_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=683496&weekday=tue', 'naver', 'tue', 120),
(684435, '구구까까', 'https://shared-comic.pstatic.net/thumb/webtoon/684435/thumbnail/title_thumbnail_20160820210349_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=684435&weekday=sun', 'naver', 'sun', 121),
(685460, '골든 체인지', 'https://shared-comic.pstatic.net/thumb/webtoon/685460/thumbnail/title_thumbnail_20161013114305_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=685460&weekday=fri', 'naver', 'fri', 113),
(686312, '열정호구', 'https://shared-comic.pstatic.net/thumb/webtoon/686312/thumbnail/title_thumbnail_20161010182406_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=686312&weekday=tue', 'naver', 'tue', 109),
(687915, '꿈의 기업', 'https://shared-comic.pstatic.net/thumb/webtoon/687915/thumbnail/thumbnail_IMAG10_e03acc4a-a1ce-4ebc-a021-e3cc07af5f20.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=687915&weekday=mon', 'naver', 'mon', 108),
(690503, '도망자', 'https://shared-comic.pstatic.net/thumb/webtoon/690503/thumbnail/title_thumbnail_20170106153614_t83x90.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=690503&weekday=sun', 'naver', 'sun', 101),
(693444, 'Doll 체인지', 'https://shared-comic.pstatic.net/thumb/webtoon/693444/thumbnail/thumbnail_IMAG10_35e3e217-ec81-4f9c-9bb6-36c2bc956b68.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=693444&weekday=thu', 'naver', 'thu', 90),
(694805, '하나의 하루', 'https://shared-comic.pstatic.net/thumb/webtoon/694805/thumbnail/thumbnail_IMAG10_8859cee3-a70b-45ff-b047-04a8be9d2c46.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=694805&weekday=thu', 'naver', 'thu', 81),
(694807, '마왕이 되는 중2야', 'https://shared-comic.pstatic.net/thumb/webtoon/694807/thumbnail/thumbnail_IMAG10_49a1f978-53e4-4f40-8d66-42ee26d14cfc.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=694807&weekday=mon', 'naver', 'mon', 84),
(695321, '빙탕후루', 'https://shared-comic.pstatic.net/thumb/webtoon/695321/thumbnail/thumbnail_IMAG10_ed636544-e826-4b9b-96f2-fce37c9f8e54.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=695321&weekday=tue', 'naver', 'tue', 86),
(695796, '내일', 'https://shared-comic.pstatic.net/thumb/webtoon/695796/thumbnail/thumbnail_IMAG10_715d2406-1940-48ad-9ca5-fb84693769b6.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=695796&weekday=sun', 'naver', 'sun', 82),
(697254, '푸른사막 아아루', 'https://shared-comic.pstatic.net/thumb/webtoon/697254/thumbnail/thumbnail_IMAG10_373726b6-d41b-4a6d-bb8e-68b6e344471f.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=697254&weekday=wed', 'naver', 'wed', 78),
(697533, '미시령', 'https://shared-comic.pstatic.net/thumb/webtoon/697533/thumbnail/thumbnail_IMAG10_d8ba91a4-6234-4699-a44e-34d03b5c5429.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=697533&weekday=wed', 'naver', 'wed', 78),
(697535, '웅이는 배고파', 'https://shared-comic.pstatic.net/thumb/webtoon/697535/thumbnail/thumbnail_IMAG10_18d07ed4-3a67-4e36-8406-c7d78f7aa163.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=697535&weekday=sun', 'naver', 'sun', 76),
(697537, '허니허니 웨딩', 'https://shared-comic.pstatic.net/thumb/webtoon/697537/thumbnail/thumbnail_IMAG10_b3568141-bbd3-4bd2-85fd-7996263ad332.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=697537&weekday=sun', 'naver', 'sun', 79),
(697656, '조의 영역', 'https://shared-comic.pstatic.net/thumb/webtoon/697656/thumbnail/thumbnail_IMAG10_7d08e994-e6e9-437f-9001-e3cd28892a8a.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=697656&weekday=sun', 'naver', 'sun', 78),
(697685, '신과함께 (재)', 'https://shared-comic.pstatic.net/thumb/webtoon/697685/thumbnail/thumbnail_IMAG10_f8d868ff-0505-498c-ac37-d11a7f952496.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=697685&weekday=thu', 'naver', 'thu', 194),
(698247, '찬란하지 않아도 괜찮아', 'https://shared-comic.pstatic.net/thumb/webtoon/698247/thumbnail/thumbnail_IMAG10_0760e4a0-ccb9-4466-aec3-672fd34db52c.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=698247&weekday=mon', 'naver', 'mon', 75),
(698469, '언원티드', 'https://shared-comic.pstatic.net/thumb/webtoon/698469/thumbnail/thumbnail_IMAG10_890975d8-f226-4e26-87b2-a002af9c9ebf.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=698469&weekday=sun', 'naver', 'sun', 75),
(698888, '이것도 친구라고', 'https://shared-comic.pstatic.net/thumb/webtoon/698888/thumbnail/thumbnail_IMAG10_f15db563-bed6-416e-8163-e2efe5055023.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=698888&weekday=mon', 'naver', 'mon', 72),
(698918, '원주민 공포만화', 'https://shared-comic.pstatic.net/thumb/webtoon/698918/thumbnail/thumbnail_IMAG10_1ffbcabb-b5fd-41d8-9500-faaee1d3cbb4.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=698918&weekday=tue', 'naver', 'tue', 72),
(699415, '간 떨어지는 동거', 'https://shared-comic.pstatic.net/thumb/webtoon/699415/thumbnail/thumbnail_IMAG10_64dbd565-a463-4cb8-b4bb-131bd082cc44.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=699415&weekday=thu', 'naver', 'thu', 71),
(699658, '오늘도 사랑스럽개', 'https://shared-comic.pstatic.net/thumb/webtoon/699658/thumbnail/thumbnail_IMAG10_7a3fecc7-6bcf-4fcd-b1cb-101e8b480480.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=699658&weekday=sun', 'naver', 'sun', 71),
(699659, '좋아하는 부분', 'https://shared-comic.pstatic.net/thumb/webtoon/699659/thumbnail/thumbnail_IMAG10_e12f7293-375d-4612-87e7-1b1db2dc9fb0.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=699659&weekday=thu', 'naver', 'thu', 65),
(700843, '우리 오빠는 아이돌', 'https://shared-comic.pstatic.net/thumb/webtoon/700843/thumbnail/thumbnail_IMAG10_6e188e8d-cd5d-4531-93e1-cc297d03a98e.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=700843&weekday=sat', 'naver', 'sat', 65),
(700844, '걸어서 30분', 'https://shared-comic.pstatic.net/thumb/webtoon/700844/thumbnail/thumbnail_IMAG10_7511a21d-75f1-4ac8-9d24-df2e89f535b2.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=700844&weekday=fri', 'naver', 'fri', 64),
(700858, '닥터 하운드', 'https://shared-comic.pstatic.net/thumb/webtoon/700858/thumbnail/thumbnail_IMAG10_a01d69ed-7018-4f26-8c9e-e081b66037eb.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=700858&weekday=mon', 'naver', 'mon', 67),
(701081, '스위트홈', 'https://shared-comic.pstatic.net/thumb/webtoon/701081/thumbnail/thumbnail_IMAG10_7120be5e-b5c7-4727-aba5-cb500c6098ab.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=701081&weekday=fri', 'naver', 'fri', 61),
(701535, '격기3반', 'https://shared-comic.pstatic.net/thumb/webtoon/701535/thumbnail/thumbnail_IMAG10_fbf4c573-a426-4e0c-80e8-620286e58986.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=701535&weekday=wed', 'naver', 'wed', 60),
(701700, '트롤트랩', 'https://shared-comic.pstatic.net/thumb/webtoon/701700/thumbnail/thumbnail_IMAG10_91d1c77b-9ad9-43ce-8299-ed986700c65a.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=701700&weekday=thu', 'naver', 'thu', 60),
(702422, '니편내편', 'https://shared-comic.pstatic.net/thumb/webtoon/702422/thumbnail/thumbnail_IMAG10_8a7d3a98-291e-4fec-b399-7b8219c90854.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=702422&weekday=mon', 'naver', 'mon', 59),
(702608, '랜덤채팅의 그녀!', 'https://shared-comic.pstatic.net/thumb/webtoon/702608/thumbnail/thumbnail_IMAG10_85425026-fd1c-4a8a-8d58-e257bbf892c0.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=702608&weekday=tue', 'naver', 'tue', 55),
(702672, '노곤하개', 'https://shared-comic.pstatic.net/thumb/webtoon/702672/thumbnail/thumbnail_IMAG10_4313f60c-b034-49ae-9edc-877c859b64f3.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=702672&weekday=tue', 'naver', 'tue', 97),
(703307, '신암행어사', 'https://shared-comic.pstatic.net/thumb/webtoon/703307/thumbnail/thumbnail_IMAG10_0c6ab332-3b2b-4d18-bc97-b512c038087a.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703307&weekday=tue', 'naver', 'tue', 166),
(703308, '신석기녀', 'https://shared-comic.pstatic.net/thumb/webtoon/703308/thumbnail/thumbnail_IMAG10_33415f77-8f6d-4a14-aec9-fcaa74e20a8a.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703308&weekday=wed', 'naver', 'wed', 50),
(703628, '성공한 덕후', 'https://shared-comic.pstatic.net/thumb/webtoon/703628/thumbnail/thumbnail_IMAG10_eed4a3ca-783c-4bac-baaf-08ac5c3fab74.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703628&weekday=wed', 'naver', 'wed', 52),
(703629, '열대어', 'https://shared-comic.pstatic.net/thumb/webtoon/703629/thumbnail/thumbnail_IMAG10_e92d5bd9-01a6-462a-9bd8-6b8e697875ea.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703629&weekday=mon', 'naver', 'mon', 98),
(703630, '어글리후드', 'https://shared-comic.pstatic.net/thumb/webtoon/703630/thumbnail/thumbnail_IMAG10_f0337ccf-b55e-47d9-bb47-131b396f1bb6.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703630&weekday=sat', 'naver', 'sat', 53),
(703631, '방백남녀', 'https://shared-comic.pstatic.net/thumb/webtoon/703631/thumbnail/thumbnail_IMAG10_a08e8d07-ab88-4eaa-90e5-1085c606f4ee.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703631&weekday=sat', 'naver', 'sat', 48),
(703633, '안녕, 대학생', 'https://shared-comic.pstatic.net/thumb/webtoon/703633/thumbnail/thumbnail_IMAG10_bb71f1fd-2777-4406-b107-505257fec051.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703633&weekday=wed', 'naver', 'wed', 47),
(703635, '오직 나의 주인님', 'https://shared-comic.pstatic.net/thumb/webtoon/703635/thumbnail/thumbnail_IMAG10_3ff49f08-1841-482b-9514-cfa14880b858.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703635&weekday=mon', 'naver', 'mon', 54),
(703833, '점핑오버', 'https://shared-comic.pstatic.net/thumb/webtoon/703833/thumbnail/thumbnail_IMAG10_2f2d822e-e4fc-4433-8273-3053039a6208.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703833&weekday=sun', 'naver', 'sun', 23),
(703836, '파도를 찾아라!', 'https://shared-comic.pstatic.net/thumb/webtoon/703836/thumbnail/thumbnail_IMAG10_0b455b43-e9f1-463c-9245-f95df0b37572.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703836&weekday=thu', 'naver', 'thu', 51),
(703838, '홍차리브레', 'https://shared-comic.pstatic.net/thumb/webtoon/703838/thumbnail/thumbnail_IMAG10_e473ae37-18af-44f6-83ee-a0d63e153cdb.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703838&weekday=mon', 'naver', 'mon', 50),
(703839, '홍시는 날 좋아해!', 'https://shared-comic.pstatic.net/thumb/webtoon/703839/thumbnail/thumbnail_IMAG10_32bf5fad-670c-4673-b5d1-fd327e17f151.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703839&weekday=sat', 'naver', 'sat', 52),
(703841, '꽃 피는 날', 'https://shared-comic.pstatic.net/thumb/webtoon/703841/thumbnail/thumbnail_IMAG10_f6a90bdf-571f-43d7-a9a6-efb4d23b165a.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703841&weekday=sun', 'naver', 'sun', 49),
(703843, '비질란테', 'https://shared-comic.pstatic.net/thumb/webtoon/703843/thumbnail/thumbnail_IMAG10_c587a99e-c3e7-49a4-985a-88c8d950017f.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703843&weekday=sat', 'naver', 'sat', 33),
(703846, '여신강림', 'https://shared-comic.pstatic.net/thumb/webtoon/703846/thumbnail/thumbnail_IMAG10_35503130-16ce-4236-b913-0fe76226de36.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703846&weekday=tue', 'naver', 'tue', 36),
(703847, '35cm', 'https://shared-comic.pstatic.net/thumb/webtoon/703847/thumbnail/thumbnail_IMAG10_84e87edb-b292-4d7d-bd7e-c04f1f07de39.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703847&weekday=thu', 'naver', 'thu', 34),
(703849, '요리GO', 'https://shared-comic.pstatic.net/thumb/webtoon/703849/thumbnail/thumbnail_IMAG10_b903b6f6-bb52-4307-9060-8933a78a188c.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703849&weekday=wed', 'naver', 'wed', 43),
(703850, '자판귀', 'https://shared-comic.pstatic.net/thumb/webtoon/703850/thumbnail/thumbnail_IMAG10_d093ab2d-a006-457b-92b5-1da097bc3af1.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703850&weekday=tue', 'naver', 'tue', 40),
(703851, '꼬리', 'https://shared-comic.pstatic.net/thumb/webtoon/703851/thumbnail/thumbnail_IMAG10_d31dfbb9-f429-4e74-963e-8b6726b62465.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703851&weekday=fri', 'naver', 'fri', 40),
(703852, '바른연애 길잡이', 'https://shared-comic.pstatic.net/thumb/webtoon/703852/thumbnail/thumbnail_IMAG10_be0db503-bd1a-4a2a-8cb3-6601ec3e929e.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703852&weekday=tue', 'naver', 'tue', 39),
(703853, '수학 잘하는 법', 'https://shared-comic.pstatic.net/thumb/webtoon/703853/thumbnail/thumbnail_IMAG10_15e1a4f5-bbe4-454f-b86b-f810a162f9b7.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703853&weekday=sun', 'naver', 'sun', 22),
(703854, '식스틴', 'https://shared-comic.pstatic.net/thumb/webtoon/703854/thumbnail/thumbnail_IMAG10_8a8a49a6-d16f-4cd5-8386-15cf735f15a1.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703854&weekday=fri', 'naver', 'fri', 36),
(703855, '창궐', 'https://shared-comic.pstatic.net/thumb/webtoon/703855/thumbnail/thumbnail_IMAG10_457d3f68-c245-4dcc-8142-846525319b6c.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703855&weekday=tue', 'naver', 'tue', 17),
(703856, '8월의 눈보라', 'https://shared-comic.pstatic.net/thumb/webtoon/703856/thumbnail/thumbnail_IMAG10_02d21b41-99e9-4507-844a-ffd2797191fe.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=703856&weekday=sun', 'naver', 'sun', 6),
(705328, '환상적인 소년', 'https://shared-comic.pstatic.net/thumb/webtoon/705328/thumbnail/thumbnail_IMAG10_bbe95df8-1860-41b5-b03b-12bd4bc2cf21.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=705328&weekday=sat', 'naver', 'sat', 45),
(706590, '피플', 'https://shared-comic.pstatic.net/thumb/webtoon/706590/thumbnail/thumbnail_IMAG10_f9ce8f3e-0dd3-4979-a9de-7a01f8f3ce49.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=706590&weekday=mon', 'naver', 'mon', 39),
(706770, '언데드', 'https://shared-comic.pstatic.net/thumb/webtoon/706770/thumbnail/thumbnail_IMAG10_ea61efd9-4069-4998-81cd-e1f30f558c3b.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=706770&weekday=sat', 'naver', 'sat', 44),
(707671, '소유', 'https://shared-comic.pstatic.net/thumb/webtoon/707671/thumbnail/thumbnail_IMAG10_0d9e9403-412a-4848-9f8c-3f98b49bd2ff.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=707671&weekday=thu', 'naver', 'thu', 40),
(708378, '타인은 지옥이다', 'https://shared-comic.pstatic.net/thumb/webtoon/708378/thumbnail/thumbnail_IMAG10_a274b9a0-0775-44b2-b34f-3199b07a4db4.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=708378&weekday=thu', 'naver', 'thu', 79),
(708452, '냐한남자', 'https://shared-comic.pstatic.net/thumb/webtoon/708452/thumbnail/thumbnail_IMAG10_a6869252-f41d-4dfc-8f43-db2714798982.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=708452&weekday=fri', 'naver', 'fri', 39),
(708453, '고교생을 환불해 주세요', 'https://shared-comic.pstatic.net/thumb/webtoon/708453/thumbnail/thumbnail_IMAG10_0aa12c46-5f04-4394-b7b8-853e68ad8031.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=708453&weekday=wed', 'naver', 'wed', 76),
(709628, '나의 짝사랑 고백법', 'https://shared-comic.pstatic.net/thumb/webtoon/709628/thumbnail/thumbnail_IMAG10_b6183b6e-a7d8-46aa-be17-5f7b44f68eb1.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=709628&weekday=fri', 'naver', 'fri', 35),
(709731, '유일무이 로맨스', 'https://shared-comic.pstatic.net/thumb/webtoon/709731/thumbnail/thumbnail_IMAG10_ed364623-7f67-49a0-bc8f-e8d894fe2c81.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=709731&weekday=mon', 'naver', 'mon', 36),
(709732, '하르모니아', 'https://shared-comic.pstatic.net/thumb/webtoon/709732/thumbnail/thumbnail_IMAG10_31fc5ed9-747c-4fda-a7b4-f7112ef3f707.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=709732&weekday=fri', 'naver', 'fri', 34),
(709992, '옆반의 인어', 'https://shared-comic.pstatic.net/thumb/webtoon/709992/thumbnail/thumbnail_IMAG10_d5b1e472-1f5e-4077-bacd-7c21c58558b7.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=709992&weekday=wed', 'naver', 'wed', 35),
(710081, '암흑도시', 'https://shared-comic.pstatic.net/thumb/webtoon/710081/thumbnail/thumbnail_IMAG10_da068076-1e25-4174-81db-1abd73769f0f.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710081&weekday=fri', 'naver', 'fri', 34),
(710390, '비둘기가 물고 온 남자', 'https://shared-comic.pstatic.net/thumb/webtoon/710390/thumbnail/thumbnail_IMAG10_7c16a585-dd55-48a3-b382-4264b7da7dd2.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710390&weekday=thu', 'naver', 'thu', 33);
INSERT INTO `toon` (`toon_index`, `name`, `thum_link`, `webtoon_link`, `site`, `week`, `latest`) VALUES
(710639, '5kg을 위하여', 'https://shared-comic.pstatic.net/thumb/webtoon/710639/thumbnail/thumbnail_IMAG10_b8254d4d-67b7-4f18-867b-1ff63e5f304a.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710639&weekday=thu', 'naver', 'thu', 66),
(710741, '부로콜리왕자', 'https://shared-comic.pstatic.net/thumb/webtoon/710741/thumbnail/thumbnail_IMAG10_c0dd56d6-d08a-4552-91f2-3be36b397349.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710741&weekday=mon', 'naver', 'mon', 30),
(710747, '세상은 돈과 권력', 'https://shared-comic.pstatic.net/thumb/webtoon/710747/thumbnail/thumbnail_IMAG10_b1079a8d-2d5e-49df-8f30-05b3e215170b.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710747&weekday=wed', 'naver', 'wed', 32),
(710748, '호러와 로맨스', 'https://shared-comic.pstatic.net/thumb/webtoon/710748/thumbnail/thumbnail_IMAG10_669c1d34-7e18-4e90-ba56-0acdac0931b9.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710748&weekday=thu', 'naver', 'thu', 32),
(710750, '악마와 계약연애', 'https://shared-comic.pstatic.net/thumb/webtoon/710750/thumbnail/thumbnail_IMAG10_3a696e07-a3a3-4f68-b532-f34172091ab1.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710750&weekday=tue', 'naver', 'tue', 32),
(710751, '약한영웅', 'https://shared-comic.pstatic.net/thumb/webtoon/710751/thumbnail/thumbnail_IMAG10_eed99ea4-5908-4445-b89a-d3881797f909.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710751&weekday=sun', 'naver', 'sun', 32),
(710752, '혈투', 'https://shared-comic.pstatic.net/thumb/webtoon/710752/thumbnail/thumbnail_IMAG10_42d92808-f5e6-4f2d-a33b-9c8b56cc7b25.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710752&weekday=mon', 'naver', 'mon', 33),
(710754, '화장 지워주는 남자', 'https://shared-comic.pstatic.net/thumb/webtoon/710754/thumbnail/thumbnail_IMAG10_88e596b9-3712-4ff4-95a7-280b663200ae.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710754&weekday=fri', 'naver', 'fri', 32),
(710755, '그랜드 배틀 토너먼트', 'https://shared-comic.pstatic.net/thumb/webtoon/710755/thumbnail/thumbnail_IMAG10_c5aa159d-596e-417a-a575-efc4c7c06bc2.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710755&weekday=thu', 'naver', 'thu', 29),
(710756, '일진에게 회초리', 'https://shared-comic.pstatic.net/thumb/webtoon/710756/thumbnail/thumbnail_IMAG10_af763a48-1b08-495e-b16a-a666ca931e38.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710756&weekday=mon', 'naver', 'mon', 0),
(710757, '완벽하지 않은 키스', 'https://shared-comic.pstatic.net/thumb/webtoon/710757/thumbnail/thumbnail_IMAG10_7411efd2-cc52-4275-8262-aa3e901d0b28.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710757&weekday=sun', 'naver', 'sun', 31),
(710758, '문래빗', 'https://shared-comic.pstatic.net/thumb/webtoon/710758/thumbnail/thumbnail_IMAG10_92008068-e8b4-448d-951d-490cbb09db42.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710758&weekday=tue', 'naver', 'tue', 30),
(710760, '이츠마인', 'https://shared-comic.pstatic.net/thumb/webtoon/710760/thumbnail/thumbnail_IMAG10_c87cd43e-e5a1-4b66-b0c5-c6f9bdbacd51.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710760&weekday=wed', 'naver', 'wed', 28),
(710761, '하드캐리', 'https://shared-comic.pstatic.net/thumb/webtoon/710761/thumbnail/thumbnail_IMAG10_9f8253a1-2318-4c0d-8d9e-f044f2203d4c.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710761&weekday=thu', 'naver', 'thu', 27),
(710762, '반투명인간', 'https://shared-comic.pstatic.net/thumb/webtoon/710762/thumbnail/thumbnail_IMAG10_fb5a947c-767b-4188-9f65-eacdcba55e8f.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710762&weekday=mon', 'naver', 'mon', 32),
(710763, '황금의 핸드메이커', 'https://shared-comic.pstatic.net/thumb/webtoon/710763/thumbnail/thumbnail_IMAG10_96ab5771-9c3e-4118-a51f-d231c2121bff.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710763&weekday=sun', 'naver', 'sun', 30),
(710765, '펀브로커', 'https://shared-comic.pstatic.net/thumb/webtoon/710765/thumbnail/thumbnail_IMAG10_3007aa70-706a-4871-8350-d14dc795d0f3.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710765&weekday=wed', 'naver', 'wed', 30),
(710766, '불괴', 'https://shared-comic.pstatic.net/thumb/webtoon/710766/thumbnail/thumbnail_IMAG10_1bd4e331-5ea4-413c-b4df-0eb8ec2b5c9f.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710766&weekday=tue', 'naver', 'tue', 0),
(710767, '엔드리스', 'https://shared-comic.pstatic.net/thumb/webtoon/710767/thumbnail/thumbnail_IMAG10_a34ac08b-8436-474c-a670-4dc6d3e0d45f.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710767&weekday=fri', 'naver', 'fri', 30),
(710768, '아르마', 'https://shared-comic.pstatic.net/thumb/webtoon/710768/thumbnail/thumbnail_IMAG10_c369febb-0d09-42b1-9adc-88a0caf3a0d4.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710768&weekday=thu', 'naver', 'thu', 31),
(710769, '2인용 인간', 'https://shared-comic.pstatic.net/thumb/webtoon/710769/thumbnail/thumbnail_IMAG10_dcc06312-0493-4633-9b0a-2f56f6fa3434.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=710769&weekday=sat', 'naver', 'sat', 30),
(711422, '삼국지톡', 'https://shared-comic.pstatic.net/thumb/webtoon/711422/thumbnail/thumbnail_IMAG10_93d0ea21-a066-4842-b164-1b7b363139cf.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=711422&weekday=tue', 'naver', 'tue', 59),
(711899, '와장창창! 자취맨', 'https://shared-comic.pstatic.net/thumb/webtoon/711899/thumbnail/thumbnail_IMAG10_c071339d-044d-43dc-9232-b3625a35d733.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=711899&weekday=mon', 'naver', 'mon', 56),
(712362, '개를 낳았다', 'https://shared-comic.pstatic.net/thumb/webtoon/712362/thumbnail/thumbnail_IMAG10_568fc3ff-2c5f-40f9-a8d0-34c3e59fa0a5.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=712362&weekday=fri', 'naver', 'fri', 27),
(712694, 'MZ-레이징 인페르노', 'https://shared-comic.pstatic.net/thumb/webtoon/712694/thumbnail/thumbnail_IMAG10_e6e99b78-fec2-414f-bb8e-2fc0246aa043.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=712694&weekday=sat', 'naver', 'sat', 27),
(712901, '위장불륜 (僞裝不倫)', 'https://shared-comic.pstatic.net/thumb/webtoon/712901/thumbnail/thumbnail_IMAG10_7a0e2734-13a7-452f-8e2b-e90d192cf845.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=712901&weekday=tue', 'naver', 'tue', 25),
(713055, '호곡', 'https://shared-comic.pstatic.net/thumb/webtoon/713055/thumbnail/thumbnail_IMAG10_3d9f8073-002d-4634-98ca-444c97d0a540.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=713055&weekday=sun', 'naver', 'sun', 25),
(713289, '참새는 새!신부', 'https://shared-comic.pstatic.net/thumb/webtoon/713289/thumbnail/thumbnail_IMAG10_9e9e344d-17f5-42b1-9e2e-80b906acc5a6.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=713289&weekday=tue', 'naver', 'tue', 23),
(713294, '왕으로 살다', 'https://shared-comic.pstatic.net/thumb/webtoon/713294/thumbnail/thumbnail_IMAG10_5d620522-1f91-4336-8566-a6a87dd44733.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=713294&weekday=fri', 'naver', 'fri', 25),
(713334, '이름을 불러주세요', 'https://shared-comic.pstatic.net/thumb/webtoon/713334/thumbnail/thumbnail_IMAG10_02945840-0ecf-413e-bdc3-e80e74e31f6c.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=713334&weekday=mon', 'naver', 'mon', 22),
(713581, '내 여자친구는 상남자', 'https://shared-comic.pstatic.net/thumb/webtoon/713581/thumbnail/thumbnail_IMAG10_fce3c3c1-2356-4916-aba2-0f561f579c1c.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=713581&weekday=mon', 'naver', 'mon', 46),
(713975, '데드라이프', 'https://shared-comic.pstatic.net/thumb/webtoon/713975/thumbnail/thumbnail_IMAG10_2c34bc9e-747c-4257-bf48-a67a560dca0a.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=713975&weekday=mon', 'naver', 'mon', 22),
(714185, '링크보이', 'https://shared-comic.pstatic.net/thumb/webtoon/714185/thumbnail/thumbnail_IMAG10_b09f7c2d-7083-467b-95bc-4dace9c21b6f.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=714185&weekday=mon', 'naver', 'mon', 21),
(714293, '캉타우', 'https://shared-comic.pstatic.net/thumb/webtoon/714293/thumbnail/thumbnail_IMAG10_c41a3966-caa6-4dce-8620-5c2fc683be50.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=714293&weekday=thu', 'naver', 'thu', 17),
(714834, '자취로운 생활', 'https://shared-comic.pstatic.net/thumb/webtoon/714834/thumbnail/thumbnail_IMAG10_e8f48301-bbcf-40d2-ac92-9a8e45ee2d5d.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=714834&weekday=wed', 'naver', 'wed', 36),
(714839, '병의 맛', 'https://shared-comic.pstatic.net/thumb/webtoon/714839/thumbnail/thumbnail_IMAG10_ab5de504-0445-42ca-bfb6-c4afe885a85a.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=714839&weekday=sat', 'naver', 'sat', 19),
(714886, '신을 죽이는 방법', 'https://shared-comic.pstatic.net/thumb/webtoon/714886/thumbnail/thumbnail_IMAG10_dbf1c5f4-08ec-47f6-bd6d-ab6304d907de.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=714886&weekday=mon', 'naver', 'mon', 19),
(715159, '갓핑크', 'https://shared-comic.pstatic.net/thumb/webtoon/715159/thumbnail/thumbnail_IMAG10_737639f2-e795-46b5-a83d-5fa42ad3e604.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=715159&weekday=sat', 'naver', 'sat', 17),
(715772, '좀비딸', 'https://shared-comic.pstatic.net/thumb/webtoon/715772/thumbnail/thumbnail_IMAG10_45108665-e46e-49f7-9ee5-ded04dbbc6d0.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=715772&weekday=thu', 'naver', 'thu', 16),
(715935, '롤랑롤랑', 'https://shared-comic.pstatic.net/thumb/webtoon/715935/thumbnail/thumbnail_IMAG10_59de051a-22f9-4912-a5b8-d627993835fc.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=715935&weekday=thu', 'naver', 'thu', 14),
(716163, '늑대와 빨간모자', 'https://shared-comic.pstatic.net/thumb/webtoon/716163/thumbnail/thumbnail_IMAG10_1557dca4-212c-479e-a995-6ffffa391a0e.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=716163&weekday=sat', 'naver', 'sat', 15),
(716164, '로베스의 완전감각', 'https://shared-comic.pstatic.net/thumb/webtoon/716164/thumbnail/thumbnail_IMAG10_102d6869-4bc9-444d-94d0-c7b12f92d8af.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=716164&weekday=wed', 'naver', 'wed', 14),
(716776, '고인의 명복', 'https://shared-comic.pstatic.net/thumb/webtoon/716776/thumbnail/thumbnail_IMAG10_00f246df-42e5-4ac0-bba1-da551be9f3c0.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=716776&weekday=sat', 'naver', 'sat', 14),
(716857, '오늘의 순정망화', 'https://shared-comic.pstatic.net/thumb/webtoon/716857/thumbnail/thumbnail_IMAG10_cf1f325d-f0de-452d-a996-7e95cee200f4.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=716857&weekday=mon', 'naver', 'mon', 40),
(717059, '12차원 소년들', 'https://shared-comic.pstatic.net/thumb/webtoon/717059/thumbnail/thumbnail_IMAG10_38805445-b276-49e4-8295-25d5786b9386.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=717059&weekday=wed', 'naver', 'wed', 12),
(717481, '일렉시드', 'https://shared-comic.pstatic.net/thumb/webtoon/717481/thumbnail/thumbnail_IMAG10_a5c5d545-d995-465e-b8ed-f6bfc0a2464d.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=717481&weekday=wed', 'naver', 'wed', 10),
(718016, '소녀 연대기', 'https://shared-comic.pstatic.net/thumb/webtoon/718016/thumbnail/thumbnail_IMAG10_0100ea0c-8cab-4c35-a6ab-3c748d94cccd.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=718016&weekday=fri', 'naver', 'fri', 8),
(718018, '알고있지만', 'https://shared-comic.pstatic.net/thumb/webtoon/718018/thumbnail/thumbnail_IMAG10_87cf0268-b797-42c7-beac-13234b03eaff.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=718018&weekday=thu', 'naver', 'thu', 8),
(718019, '옆집친구', 'https://shared-comic.pstatic.net/thumb/webtoon/718019/thumbnail/thumbnail_IMAG10_dd283c57-0f9e-44b3-916a-d1d68a282398.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=718019&weekday=fri', 'naver', 'fri', 8),
(718020, '귀곡의 문', 'https://shared-comic.pstatic.net/thumb/webtoon/718020/thumbnail/thumbnail_IMAG10_7c551d69-62f1-4869-b365-88f38a70553f.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=718020&weekday=wed', 'naver', 'wed', 8),
(718022, '신시의 손님', 'https://shared-comic.pstatic.net/thumb/webtoon/718022/thumbnail/thumbnail_IMAG10_7cfdb8d1-273a-40e7-8230-3d5858e59b00.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=718022&weekday=wed', 'naver', 'wed', 5),
(718023, '너 사용법', 'https://shared-comic.pstatic.net/thumb/webtoon/718023/thumbnail/thumbnail_IMAG10_7b2f9051-3a07-46c7-9aaa-66bca52a4e1e.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=718023&weekday=fri', 'naver', 'fri', 7),
(718707, '한남동 케이하우스', 'https://shared-comic.pstatic.net/thumb/webtoon/718707/thumbnail/thumbnail_IMAG10_946627a6-4083-4a78-8476-cb93d20d754e.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=718707&weekday=thu', 'naver', 'thu', 1),
(719154, '부릉부릉 천리마마트', 'https://shared-comic.pstatic.net/thumb/webtoon/719154/thumbnail/thumbnail_IMAG10_a4c94c0f-b3d8-4f45-88c5-2347fbc5dc1c.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=719154&weekday=fri', 'naver', 'fri', 6),
(719277, '허니버니', 'https://shared-comic.pstatic.net/thumb/webtoon/719277/thumbnail/thumbnail_IMAG10_ec6a12ad-271b-415a-a66d-5fab92c55b0a.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=719277&weekday=wed', 'naver', 'wed', 3),
(719507, '냥하무인', 'https://shared-comic.pstatic.net/thumb/webtoon/719507/thumbnail/thumbnail_IMAG10_422bf843-a65e-4aa0-b25d-e57e7e64c03c.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=719507&weekday=sun', 'naver', 'sun', 4),
(719508, '헬58', 'https://shared-comic.pstatic.net/thumb/webtoon/719508/thumbnail/thumbnail_IMAG10_5f9cbfcd-5c23-4bad-ba9b-93c10883cc03.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=719508&weekday=tue', 'naver', 'tue', 3),
(719899, '살인자o난감 (재)', 'https://shared-comic.pstatic.net/thumb/webtoon/719899/thumbnail/thumbnail_IMAG10_8e13850c-04dc-4adc-9f4e-8a70bec6a0ab.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=719899&weekday=tue', 'naver', 'tue', 1),
(720117, '킬러분식 (재)', 'https://shared-comic.pstatic.net/thumb/webtoon/720117/thumbnail/thumbnail_IMAG10_5c1c9870-957b-4cce-ba63-48dde3407104.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=720117&weekday=sun', 'naver', 'sun', 2),
(720120, '내 어린고양이와 늙은개 (재)', 'https://shared-comic.pstatic.net/thumb/webtoon/720120/thumbnail/thumbnail_IMAG10_97de015a-6d49-442e-8fd9-ddee2c1ed6b7.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=720120&weekday=mon', 'naver', 'mon', 3),
(720128, '금요일 베스트', 'https://shared-comic.pstatic.net/thumb/webtoon/720128/thumbnail/thumbnail_IMAG10_c59fe3ad-84b1-44ff-80c9-4272b6a6ba78.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=720128&weekday=thu', 'naver', 'thu', 1),
(720190, '머니게임', 'https://shared-comic.pstatic.net/thumb/webtoon/720190/thumbnail/thumbnail_IMAG10_cb6bddb2-2fb9-4814-b49b-56391e290f9f.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=720190&weekday=sat', 'naver', 'sat', 3),
(720810, '블랙엔젤', 'https://shared-comic.pstatic.net/thumb/webtoon/720810/thumbnail/thumbnail_IMAG10_9db2ecac-e105-4a6d-af55-afc31b24562c.jpg', 'http://comic.naver.com/webtoon/list.nhn?titleId=720810&weekday=tue', 'naver', 'tue', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE `user` (
  `id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`id`) VALUES
(2),
(968383525),
(979568744);

-- --------------------------------------------------------

--
-- 테이블 구조 `user_toon_relation`
--

CREATE TABLE `user_toon_relation` (
  `user_id` int(11) DEFAULT NULL,
  `toon_index` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `user_toon_relation`
--

INSERT INTO `user_toon_relation` (`user_id`, `toon_index`) VALUES
(968383525, 553),
(968383525, 1584),
(968383525, 1568),
(968383525, 1575),
(968383525, 1523),
(2, 1523),
(968383525, 713975),
(979568744, 654774);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `toon`
--
ALTER TABLE `toon`
  ADD PRIMARY KEY (`toon_index`);

--
-- 테이블의 인덱스 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `user_toon_relation`
--
ALTER TABLE `user_toon_relation`
  ADD KEY `FK_U_ID` (`user_id`),
  ADD KEY `FK_Toon_Index` (`toon_index`);

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `user_toon_relation`
--
ALTER TABLE `user_toon_relation`
  ADD CONSTRAINT `FK_Toon_Index` FOREIGN KEY (`toon_index`) REFERENCES `toon` (`toon_index`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_U_ID` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
