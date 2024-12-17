-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: shop_db
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postal_code` varchar(10) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `house_number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'344288','г. Тихорецк','ул. Чехова','1'),(2,'614164','г. Тихорецк','ул. Степная','30'),(3,'394242','г. Тихорецк','ул. Коммунистическая','43'),(4,'660540','г. Тихорецк','ул. Солнечная','25'),(5,'125837','г. Тихорецк','ул. Шоссейная','40'),(6,'125703','г. Тихорецк','ул. Партизанская','49'),(7,'625283','г. Тихорецк','ул. Победы','46'),(8,'614611','г. Тихорецк','ул. Молодежная','50'),(9,'454311','г. Тихорецк','ул. Новая','19'),(10,'660007','г. Тихорецк','ул. Октябрьская','19'),(11,'603036','г. Тихорецк','ул. Садовая','4'),(12,'450983','г. Тихорецк','ул. Комсомольская','26'),(13,'394782','г. Тихорецк','ул. Чехова','3'),(14,'603002','г. Тихорецк','ул. Дзержинского','28'),(15,'450558','г. Тихорецк','ул. Набережная','30'),(16,'394060','г. Тихорецк','ул. Фрунзе','43'),(17,'410661','г. Тихорецк','ул. Школьная','50'),(18,'625590','г. Тихорецк','ул. Коммунистическая','20'),(19,'625683','г. Тихорецк','ул. 8 Марта',NULL),(20,'400562','г. Тихорецк','ул. Зеленая','32'),(21,'614510','г. Тихорецк','ул. Маяковского','47'),(22,'410542','г. Тихорецк','ул. Светлая','46'),(23,'620839','г. Тихорецк','ул. Цветочная','8'),(24,'443890','г. Тихорецк','ул. Коммунистическая','1'),(25,'603379','г. Тихорецк','ул. Спортивная','46'),(26,'603721','г. Тихорецк','ул. Гоголя','41'),(27,'410172','г. Тихорецк','ул. Северная','13'),(28,'420151','г. Тихорецк','ул. Вишневая','32'),(29,'125061','г. Тихорецк','ул. Подгорная','8'),(30,'630370','г. Тихорецк','ул. Шоссейная','24'),(31,'614751','г. Тихорецк','ул. Полевая','35'),(32,'426030','г. Тихорецк','ул. Маяковского','44'),(33,'450375','г. Тихорецк','ул. Клубная','44'),(34,'625560','г. Тихорецк','ул. Некрасова','12'),(35,'630201','г. Тихорецк','ул. Комсомольская','17'),(36,'190949','г. Тихорецк','ул. Мичурина','26');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_number` int DEFAULT NULL,
  `order_contents` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `pickup_point` int DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `pickup_code` varchar(50) DEFAULT NULL,
  `order_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'А112Т4, 10, R259E6, 2','2022-05-18','2022-05-24',3,'Высоцкая Майя Давидовна','311','Новый'),(2,2,'A346R4, 10, T564P5, 1','2022-05-19','2022-05-25',4,'Агеев Дамир Давидович','312','Завершен'),(3,3,'B730E2, 10, G278R6, 10','2022-05-20','2022-05-26',5,NULL,'313','Новый'),(4,4,'H452A3, 10, A543T6, 10','2022-05-21','2022-05-27',6,NULL,'314','Новый'),(5,5,'F719R5, 1, D419T7, 1','2022-05-22','2022-05-28',7,NULL,'315','Завершен'),(6,6,'N459R6, 2, S276E6, 15','2022-05-23','2022-05-29',10,NULL,'316','Новый'),(7,7,'J539R3, 20, Z539E3, 1','2022-05-24','2022-05-30',11,NULL,'317','Новый'),(8,8,'A567R4, 5, K932R4, 1','2022-05-25','2022-05-31',20,'Терентьев Филипп Богданович','318','Новый'),(9,9,'K753R3, 1, S563T6, 1','2022-05-26','2022-06-01',30,'Голубева Лея Петровна','319','Новый'),(10,10,'S425T6, 5, A340R5, 3','2022-05-27','2022-06-02',33,NULL,'320','Новый');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `max_discount` decimal(10,2) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `current_discount` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'А112Т4','Ручка шариковая','шт.',12.00,30.00,'Pilot','Комус','Школьные пренадлежности',2.30,6,'Ручка шариковая с синими чернилами, толщина стержня 7 мм','А112Т4.jpg'),(2,'A346R4','Ручка шариковая автоматическая','шт.',35.00,20.00,'Attache','Комус','Школьные принадлежности',3.00,23,'Ручка шариковая автоматическая с синими чернилами, диаметр шарика 0,9 мм','A346R4.jpg'),(3,'T564P5','Набор шариковых ручек одноразовых','уп.',50.00,15.00,'Attache','Комус','Школьные принадлежности',9.00,5,'Набор шариковых ручек одноразовых Attache Economy Spinner 10 цветов (толщина линии 0.5 мм)','T564P5.jpg'),(4,'B730E2','Ручка шариковая','шт.',41.00,10.00,'Unimax','Комус','Школьные принадлежности',3.00,45,'Ручка шариковая одноразовая автоматическая Unimax Fab GP синяя (толщина линии 0.5 мм)','B730E2.jpg'),(5,'G278R6','Ручка шариковая','шт.',15.00,30.00,'FLEXOFFICE CANDEE','Буквоед','Для офиса',7.00,23,'Ручка шариковая FLEXOFFICE CANDEE 0,6 мм, синяя','G278R6.png'),(6,'R259E6','Бумага офисная','уп.',299.00,25.00,'Svetocopy','Буквоед','Бумага офисная',4.00,32,'Бумага офисная Svetocopy NEW A4 80г 500л','R259E6.jpg'),(7,'H452A3','Тетрадь','шт.',10.00,8.00,'Hatber','Буквоед','Тетради школьные',3.00,25,'Тетрадь, 24 листа, Зелёная обложка Hatber/Хатбер, офсет, клетка с полями','H452A3.png'),(8,'A543T6','Ручка шариковая','шт.',13.00,30.00,'Erich Krause','Буквоед','Для офиса',6.00,12,'Ручка шариковая Erich Krause, R-301 ORANGE 0.7 Stick, синий','A543T6.jpg'),(9,'F719R5','Папка-скоросшиватель','шт.',18.00,20.00,'Hatber','Буквоед','Для офиса',3.00,8,'Папка-скоросшиватель, А4 Hatber/Хатбер 140/180мкм АССОРТИ, пластиковая с перфорацией прозрачный верх','F719R5.jpg'),(10,'D419T7','Клей-карандаш','шт.',61.00,18.00,'Erich Krause','Буквоед','Для офиса',4.00,26,'Клей-карандаш Erich Krause 15 гр.','D419T7.png'),(11,'N592T4','Стикеры','уп.',34.00,15.00,'Attache','Комус','Для офиса',2.00,17,'Стикеры Attache 76x76 мм пастельные желтые (1 блок, 100 листов)',NULL),(12,'N459R6','Стикеры','уп.',194.00,25.00,'Attache','Комус','Для офиса',3.00,9,'Стикеры Attache Selection 51х51 мм неоновые 5 цветов (1 блок, 250 листов)',NULL),(13,'S276E6','Скрепки','уп.',46.00,30.00,'Комус','Комус','Для офиса',2.00,14,'Скрепки Комус металлические никелированные 33 мм (100 штук в упаковке)',NULL),(14,'S453G7','Скрепки','уп.',21.00,15.00,'Attache','Комус','Для офиса',4.00,20,'Скрепки 28 мм Attache металлические (100 штук в упаковке)',NULL),(15,'J539R3','Кнопки','уп.',96.00,20.00,'Комус','Комус','Для офиса',3.00,24,'Кнопки канцелярские Комус металлические цветные (50 штук в упаковке)',NULL),(16,'Z539E3','Лента клейкая','шт.',16.00,15.00,'Hatber','Буквоед','Для офиса',2.00,14,'Лента клейкая 12мм33м прозрачная, Hatber/Хатбер',NULL),(17,'A297U6','Ручка гелевая','шт.',52.00,20.00,'Erich Krause','Буквоед','Школьные принадлежности',4.00,18,'Ручка гелевая ErichKrause® G-Cube®, цвет чернил черный',NULL),(18,'A567R4','Ручка шариковая','шт.',64.00,30.00,'Pilot','Буквоед','Школьные принадлежности',2.00,32,'Шариковая ручка PILOT SuperGrip 0,7 мм синяя BPGP-10R-F-L',NULL),(19,'K932R4','Корректирующая лента','шт.',70.00,25.00,'GoodMark','Буквоед','Для офиса',3.00,16,'Корректор лента 5мм4м, блистер, GoodMark',NULL),(20,'K345R5','Корректирующая лента','шт.',87.00,20.00,'Attache','Комус','Для офиса',3.00,12,'Корректирующая лента Attache Economy 5 мм x 5 м',NULL),(21,'K753R3','Корректирующая жидкость','шт.',50.00,30.00,'Attache','Комус','Школьные принадлежности',2.00,5,'Корректирующая жидкость (штрих) Attache быстросохнущая 20 мл',NULL),(22,'S563T6','Степлер','шт.',231.00,25.00,'Attache','Комус','Для офиса',4.00,17,'Степлер Attache 8215 до 25 листов черный',NULL),(23,'S425T6','Скобы','уп.',25.00,20.00,'Attache','Комус','Для офиса',2.00,16,'Скобы для степлера №24/6 Attache оцинкованные (1000 штук в упаковке)',NULL),(24,'A340R5','Маркер','шт.',66.00,15.00,'GoodMark','Буквоед','Для офиса',4.00,27,'Маркер перманентный GoodMark 2-х сторонний. для СD/DVD черный',NULL),(25,'A384T5','Тетрадь','уп.',87.00,20.00,'Hatber','Буквоед','Школьные принадлежности',3.00,23,'Тетрадь, 18 листов, А5 линейка Hatber/Хатбер Серия Зеленая 10шт в блистере',NULL),(26,'K502T9','Карандаш-корректор','шт.',70.00,25.00,'GoodMark','Буквоед','Для офиса',2.00,7,'Карандаш-корректор GoodMark, морозостойкий, 8мл, металлический наконечник',NULL),(27,'S512T7','Скобы','уп.',25.00,15.00,'GoodMark','Буквоед','Для офиса',3.00,32,'Скобы №10 1000шт, к/к, GoodMark',NULL),(28,'D367R4','Клей ПВА','шт.',26.00,20.00,'Hatber','Буквоед','Школьные принадлежности',4.00,16,'Клей ПВА 85г Hatber/Хатбер',NULL),(29,'M892R4','Ножницы','шт.',209.00,15.00,'Attache','Комус','Школьные принадлежности',5.00,13,'Ножницы 195 мм Attache с пластиковыми прорезиненными анатомическими ручками бирюзового/черного цвета',NULL),(30,'Z390R4','Лента клейкая','шт.',195.00,20.00,'Комус','Комус','Для офиса',2.00,9,'Клейкая лента упаковочная Комус 50 мм x 100 м 50 мкм прозрачная',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Чернова Агата Данииловна','loginDElhk2018','Okk0jY','Менеджер'),(2,'Лыткина Ульяна Станиславовна','loginDEazg2018','s3bb|V','Клиент'),(3,'Лаврентьев Леонид Игнатьевич','loginDEaba2018','#ИМЯ?','Администратор'),(4,'Кулаков Юрий Владленович','loginDEtco2018','tTKDJB','Клиент'),(5,'Соловьёв Андрей Александрович','loginDEsyq2018','2QbpBN','Менеджер'),(6,'Корнилова Марфа Макаровна','loginDEpxi2018','+5X&hy','Клиент'),(7,'Белоусова Любовь Георгьевна','loginDEicr2018','3+|Sn{','Клиент'),(8,'Анисимов Никита Гордеевич','loginDEcui2018','Zi1Tth','Менеджер'),(9,'Стрелкова Фаина Федосеевна','loginDEpxc2018','G+nFsv','Клиент'),(10,'Осипов Евгений Иванович','loginDEqrd2018','sApUbt','Администратор'),(11,'Владимирова Иванна Павловна','loginDEsso2018','#ИМЯ?','Менеджер'),(12,'Кудрявцева Жанна Демьяновна','loginDErsy2018','{Aa6nS','Менеджер'),(13,'Матвиенко Яков Брониславович','loginDEvpz2018','mS0UxK','Менеджер'),(14,'Селезнёв Егор Артёмович','loginDEfog2018','glICay','Клиент'),(15,'Брагин Куприян Митрофанович','loginDEpii2018','Ob}RZB','Клиент'),(16,'Гордеев Виктор Эдуардович','loginDEhyk2018','gN}Tc','Администратор'),(17,'Мартынов Онисим Брониславович','loginDEdxi2018','ywLUbA','Менеджер'),(18,'Никонова Евгения Павловна','loginDEzro2018','B24s6o','Менеджер'),(19,'Полякова Анна Денисовна','loginDEuxg2018','K8jui7','Клиент'),(20,'Макарова Пелагея Антониновна','loginDEllw2018','jNtNUr','Клиент'),(21,'Андреева Анна Вячеславовна','loginDEddg2018','gGGhvD','Администратор'),(22,'Кудрявцева Кира Ефимовна','loginDEpdz2018','#ИМЯ?','Клиент'),(23,'Шилова Кира Егоровна','loginDEyiw2018','cnj3QR','Менеджер'),(24,'Ситников Игорь Борисович','loginDEqup2018','95AU|R','Администратор'),(25,'Русаков Борис Христофорович','loginDExil2018','w+++Ht','Администратор'),(26,'Капустина Ульяна Игоревна','loginDEkuv2018','Ade++|','Менеджер'),(27,'Беляков Семён Германнович','loginDEmox2018','Je}9e7','Менеджер'),(28,'Гурьев Ириней Игнатьевич','loginDEvug2018','lEa{Cn','Клиент'),(29,'Мишин Христофор Леонидович','loginDEzre2018','NVX+G','Клиент'),(30,'Лазарева Антонина Христофоровна','loginDEbes2018','NaVtyH','Менеджер'),(31,'Маркова Ираида Сергеевна','loginDEkfg2018','r1060q','Клиент'),(32,'Носкова Пелагея Валерьевна','loginDEyek2018','KY2BL4','Клиент'),(33,'Баранов Станислав Дмитрьевич','loginDEloq2018','NZV5WR','Администратор'),(34,'Ефремов Демьян Артёмович','loginDEjfb2018','TNT+}h','Менеджер'),(35,'Константинов Всеволод Мэлсович','loginDEueq2018','GqAUZ6','Менеджер'),(36,'Ситникова Ираида Андреевна','loginDEpqz2018','F0Bp7F','Менеджер'),(37,'Матвеев Кондрат Иванович','loginDEovk2018','JyJM{A','Администратор');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'shop_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-17  7:18:33
