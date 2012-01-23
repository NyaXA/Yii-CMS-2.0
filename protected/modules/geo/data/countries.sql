#
# Структура для таблицы `countries`: 
#

CREATE TABLE `countries` (
  `id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название',
  PRIMARY KEY USING BTREE (`id`) COMMENT '',
  UNIQUE INDEX `name` USING BTREE (`name`) COMMENT ''
)ENGINE=InnoDB
AUTO_INCREMENT=352 AVG_ROW_LENGTH=58 CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci'
COMMENT=''
;

#
# Data for the `countries` table  (LIMIT -221,500)
#

INSERT INTO `countries` (`id`, `name`) VALUES

  (1,'Россия'),
  (2,'Украина'),
  (3,'Абхазия'),
  (4,'Австралия'),
  (5,'Австрия'),
  (6,'Азербайджан'),
  (7,'Албания'),
  (8,'Алжир'),
  (9,'Ангола'),
  (10,'Ангуилья'),
  (11,'Андорра'),
  (12,'Антигуа и Барбуда'),
  (13,'Антильские о-ва'),
  (14,'Аргентина'),
  (15,'Армения'),
  (16,'Арулько'),
  (17,'Афганистан'),
  (18,'Багамские о-ва'),
  (19,'Бангладеш'),
  (20,'Барбадос'),
  (21,'Бахрейн'),
  (22,'Белоруссия'),
  (23,'Белиз'),
  (24,'Бельгия'),
  (25,'Бенин'),
  (26,'Бермуды'),
  (27,'Болгария'),
  (28,'Боливия'),
  (29,'Босния/Герцеговина'),
  (30,'Ботсвана'),
  (31,'Бразилия'),
  (32,'Британские Виргинские о-ва'),
  (33,'Бруней'),
  (34,'Буркина Фасо'),
  (35,'Бурунди'),
  (36,'Бутан'),
  (37,'Валлис и Футуна о-ва'),
  (38,'Вануату'),
  (39,'Великобритания'),
  (40,'Венгрия'),
  (41,'Венесуэла'),
  (42,'Восточный Тимор'),
  (43,'Вьетнам'),
  (44,'Габон'),
  (45,'Гаити'),
  (46,'Гайана'),
  (47,'Гамбия'),
  (48,'Гана'),
  (49,'Гваделупа'),
  (50,'Гватемала'),
  (51,'Гвинея'),
  (52,'Гвинея-Бисау'),
  (53,'Германия'),
  (54,'Гернси о-в'),
  (55,'Гибралтар'),
  (56,'Гондурас'),
  (57,'Гонконг'),
  (58,'Гренада'),
  (59,'Гренландия'),
  (60,'Греция'),
  (61,'Грузия'),
  (62,'Дания'),
  (63,'Джерси о-в'),
  (64,'Джибути'),
  (65,'Доминиканская республика'),
  (66,'Египет'),
  (67,'Замбия'),
  (68,'Западная Сахара'),
  (69,'Зимбабве'),
  (70,'Израиль'),
  (71,'Индия'),
  (72,'Индонезия'),
  (73,'Иордания'),
  (74,'Ирак'),
  (75,'Иран'),
  (76,'Ирландия'),
  (77,'Исландия'),
  (78,'Испания'),
  (79,'Италия'),
  (80,'Йемен'),
  (81,'Кабо-Верде'),
  (82,'Казахстан'),
  (83,'Камбоджа'),
  (84,'Камерун'),
  (85,'Канада'),
  (86,'Катар'),
  (87,'Кения'),
  (88,'Кипр'),
  (89,'Кирибати'),
  (90,'Китай'),
  (91,'Колумбия'),
  (92,'Коморские о-ва'),
  (93,'Конго (Brazzaville)'),
  (94,'Конго (Kinshasa)'),
  (95,'Коста-Рика'),
  (96,'Кот-д''Ивуар'),
  (97,'Куба'),
  (98,'Кувейт'),
  (99,'Кука о-ва'),
  (100,'Кыргызстан'),
  (101,'Лаос'),
  (102,'Латвия'),
  (103,'Лесото'),
  (104,'Либерия'),
  (105,'Ливан'),
  (106,'Ливия'),
  (107,'Литва'),
  (108,'Лихтенштейн'),
  (109,'Люксембург'),
  (110,'Маврикий'),
  (111,'Мавритания'),
  (112,'Мадагаскар'),
  (113,'Македония'),
  (114,'Малави'),
  (115,'Малайзия'),
  (116,'Мали'),
  (117,'Мальдивские о-ва'),
  (118,'Мальта'),
  (119,'Мартиника о-в'),
  (120,'Мексика'),
  (121,'Мозамбик'),
  (122,'Молдова'),
  (123,'Монако'),
  (124,'Монголия'),
  (125,'Марокко'),
  (126,'Мьянма (Бирма)'),
  (127,'Мэн о-в'),
  (128,'Намибия'),
  (129,'Науру'),
  (130,'Непал'),
  (131,'Нигер'),
  (132,'Нигерия'),
  (133,'Голландия'),
  (134,'Никарагуа'),
  (135,'Новая Зеландия'),
  (136,'Новая Каледония о-в'),
  (137,'Норвегия'),
  (138,'Норфолк о-в'),
  (139,'О.А.Э.'),
  (140,'Оман'),
  (141,'Пакистан'),
  (142,'Панама'),
  (143,'Папуа Новая Гвинея'),
  (144,'Парагвай'),
  (145,'Перу'),
  (146,'Питкэрн о-в'),
  (147,'Польша'),
  (148,'Португалия'),
  (149,'Пуэрто Рико'),
  (150,'Реюньон'),
  (151,'Руанда'),
  (152,'Румыния'),
  (153,'США'),
  (154,'Сальвадор'),
  (155,'Самоа'),
  (156,'Сан-Марино'),
  (157,'Сан-Томе и Принсипи'),
  (158,'Саудовская Аравия'),
  (159,'Свазиленд'),
  (160,'Святая Люсия'),
  (161,'Святой Елены о-в'),
  (162,'Северная Корея'),
  (163,'Сейшеллы'),
  (164,'Сен-Пьер и Микелон'),
  (165,'Сенегал'),
  (166,'Сент Китс и Невис'),
  (167,'Сент-Винсент и Гренадины'),
  (168,'Сербия'),
  (169,'Сингапур'),
  (170,'Сирия'),
  (171,'Словакия'),
  (172,'Словения'),
  (173,'Соломоновы о-ва'),
  (174,'Сомали'),
  (175,'Судан'),
  (176,'Суринам'),
  (177,'Сьерра-Леоне'),
  (178,'Таджикистан'),
  (179,'Тайвань'),
  (180,'Таиланд'),
  (181,'Танзания'),
  (182,'Того'),
  (183,'Токелау о-ва'),
  (184,'Тонга'),
  (185,'Тринидад и Тобаго'),
  (186,'Тувалу'),
  (187,'Тунис'),
  (188,'Туркменистан'),
  (189,'Туркс и Кейкос'),
  (190,'Турция'),
  (191,'Уганда'),
  (192,'Узбекистан'),
  (193,'Уругвай'),
  (194,'Фарерские о-ва'),
  (195,'Фиджи'),
  (196,'Филиппины'),
  (197,'Финляндия'),
  (198,'Франция'),
  (199,'Французская Гвинея'),
  (200,'Французская Полинезия'),
  (201,'Хорватия'),
  (202,'Чад'),
  (203,'Черногория'),
  (204,'Чехия'),
  (205,'Чили'),
  (206,'Швейцария'),
  (207,'Швеция'),
  (208,'Шри-Ланка'),
  (209,'Эквадор'),
  (210,'Экваториальная Гвинея'),
  (211,'Эритрея'),
  (212,'Эстония'),
  (213,'Эфиопия'),
  (214,'ЮАР'),
  (215,'Южная Корея'),
  (216,'Южная Осетия'),
  (217,'Ямайка'),
  (218,'Япония'),
  (220,'Англия'),
  (258,'Босния и Герцеговина'),
  (294,'Фарерские острова'),
  (295,'Молдавия'),
  (296,'Северная Ирландия'),
  (297,'Шотландия'),
  (298,'Уэльс'),
  (299,'Корея'),
  (300,'Кот д-Ивуар'),
  (301,'ОАЭ'),
  (302,'Буркина-Фасо'),
  (303,'КНДР'),
  (304,'Чехословакия'),
  (305,'Сербия и Черногория'),
  (306,'Новая Каледония'),
  (307,'ДР Конго'),
  (308,'Туркмения'),
  (309,'Мьянма'),
  (310,'Киргизия'),
  (311,'Югославия'),
  (312,'Конго'),
  (313,'Нидерландские Антилы'),
  (314,'Центрально-Африканская Республика'),
  (315,'Коморы'),
  (316,'Мартиника'),
  (317,'Сейшелы'),
  (318,'Сент-Этьен'),
  (319,'Нанси'),
  (320,'Лион'),
  (321,'Кан'),
  (322,'Ренн'),
  (323,'Страсбур'),
  (324,'Тулуза'),
  (325,'Ницца'),
  (326,'Марсель'),
  (327,'Ланс'),
  (328,'Осер'),
  (329,'Лорьян'),
  (330,'Мец'),
  (331,'Сошо'),
  (332,'Ле Ман'),
  (333,'Лилль'),
  (334,'Бордо'),
  (335,'Пари Сен-Жермен'),
  (336,'Валансьен'),
  (337,'Гавр'),
  (338,'Нант'),
  (339,'Гренобль'),
  (340,'Булонь'),
  (341,'Монпелье'),
  (342,'Аяччо'),
  (343,'Труа'),
  (344,'Седан'),
  (345,'Тур'),
  (346,'Бастия'),
  (347,'Истр'),
  (348,'Генгам'),
  (349,'Арль-Авиньон'),
  (350,'Брест'),
  (351,'Москва');
COMMIT;

