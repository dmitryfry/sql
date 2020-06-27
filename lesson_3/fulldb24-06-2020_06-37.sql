#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (101, 'and Sons', '1973-12-19 02:56:16', '1983-07-15 17:18:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (102, 'Inc', '1977-02-01 01:53:57', '1997-10-27 02:23:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (103, 'LLC', '1984-04-17 08:45:29', '1984-05-01 10:46:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (105, 'PLC', '1972-06-02 09:30:37', '1985-08-31 02:57:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (108, 'Group', '1974-07-11 05:25:52', '1997-07-25 10:04:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (112, 'Ltd', '2015-06-14 11:31:41', '1972-01-02 03:56:28');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 1, '1999-04-21 03:21:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 7, '1973-06-25 01:57:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 13, '2010-11-15 21:56:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 19, '1999-12-10 05:35:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 25, '2003-07-13 14:59:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 31, '2006-11-25 01:50:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 37, '1978-03-25 01:21:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 43, '2016-03-24 12:31:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 49, '1987-06-10 08:49:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 55, '2003-04-07 08:44:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 61, '1993-10-13 00:31:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 67, '1971-06-08 18:53:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 73, '1974-05-11 00:39:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 79, '1990-01-06 11:26:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 85, '2007-09-17 20:10:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 91, '2013-08-19 21:41:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (101, 97, '1970-10-27 07:24:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 2, '2018-06-16 11:32:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 8, '1972-01-31 04:50:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 14, '2009-04-16 16:15:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 20, '2005-01-10 00:14:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 26, '1991-09-14 01:23:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 32, '1972-08-13 05:33:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 38, '1977-04-11 22:10:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 44, '2013-11-04 23:42:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 50, '1977-05-12 15:09:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 56, '1991-12-02 15:23:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 62, '2010-09-06 03:18:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 68, '2011-11-08 11:57:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 74, '1991-06-11 06:24:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 80, '2007-03-07 13:41:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 86, '2001-01-21 23:19:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 92, '1976-06-28 21:27:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (102, 98, '2005-02-16 21:27:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 3, '2007-05-14 06:47:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 9, '2000-12-25 18:53:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 15, '2003-02-06 09:05:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 21, '1975-04-06 15:27:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 27, '1990-04-03 00:29:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 33, '2016-10-11 15:09:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 39, '2009-06-14 05:40:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 45, '1986-05-14 12:50:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 51, '2005-07-31 04:02:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 57, '1995-05-31 03:11:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 63, '1974-08-20 13:48:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 69, '1971-03-22 13:52:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 75, '2019-02-17 20:01:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 81, '1994-11-04 19:17:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 87, '1985-08-27 08:31:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 93, '1997-11-10 05:21:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (103, 99, '1971-09-29 03:50:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 4, '1970-09-10 01:22:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 10, '1989-10-02 15:08:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 16, '1999-12-19 09:17:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 22, '2001-05-02 22:13:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 28, '2017-07-29 17:49:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 34, '2015-06-12 15:58:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 40, '1975-03-22 19:39:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 46, '2009-09-12 15:09:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 52, '1984-08-24 18:25:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 58, '1976-09-19 12:29:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 64, '1990-01-19 00:46:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 70, '2004-06-18 00:26:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 76, '2016-06-11 16:00:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 82, '1991-02-07 10:28:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 88, '2005-05-21 10:24:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 94, '1996-10-06 19:17:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (105, 100, '1985-03-30 05:58:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 5, '2006-03-08 05:25:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 11, '2013-01-03 05:22:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 17, '2009-07-24 18:50:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 23, '2001-10-29 04:57:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 29, '2007-07-28 21:13:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 35, '1975-07-06 13:19:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 41, '2001-03-02 08:54:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 47, '2009-01-28 16:47:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 53, '1979-04-17 18:52:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 59, '1979-01-14 17:13:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 65, '1990-12-17 01:45:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 71, '1996-06-16 05:43:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 77, '2008-11-24 18:26:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 83, '1977-01-03 14:48:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 89, '2017-08-04 01:32:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (108, 95, '1987-11-17 00:39:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 6, '1994-12-23 06:51:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 12, '2010-09-13 22:01:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 18, '1987-06-10 23:01:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 24, '2006-03-28 11:37:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 30, '2014-06-21 07:18:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 36, '2018-09-25 19:20:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 42, '1974-03-02 15:29:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 48, '1989-05-11 04:37:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 54, '2001-06-30 04:02:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 60, '2002-05-19 10:22:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 66, '1992-01-04 20:22:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 72, '1980-11-07 09:35:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 78, '1987-08-17 08:14:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 84, '1981-12-20 13:22:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 90, '2008-10-28 05:56:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (112, 96, '1974-05-16 14:02:41');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2015-03-17 19:01:33', '2017-05-01 17:23:59', '2000-03-07 05:07:41', '1981-07-20 02:30:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2005-01-03 08:09:36', '2010-05-20 10:34:15', '1987-05-30 14:55:48', '2008-01-23 21:03:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2010-03-04 21:07:48', '1999-02-18 11:04:17', '1993-03-01 13:28:42', '2001-12-19 13:25:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '1974-03-06 04:49:52', '2002-07-07 15:40:36', '2016-10-14 13:29:12', '1970-01-24 01:39:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 5, '1973-07-26 17:10:09', '1989-06-08 05:01:04', '1993-11-18 08:06:03', '1996-09-23 09:09:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 6, '1992-08-17 03:07:00', '1985-03-15 08:41:31', '1981-10-10 20:13:16', '1970-02-18 09:21:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 7, '2006-01-10 08:55:45', '2011-08-28 17:33:51', '1993-09-20 13:48:51', '1978-06-22 09:17:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 8, '2011-12-12 18:05:25', '2012-04-07 08:08:49', '2008-01-29 13:33:37', '2008-10-11 07:18:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 9, '1971-09-19 01:58:32', '2003-09-15 18:23:35', '1972-07-27 23:31:40', '2004-02-13 08:33:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 10, '1999-03-30 22:46:02', '2020-03-18 08:10:46', '2010-05-18 04:02:28', '2015-12-20 21:25:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 11, '1982-11-11 11:34:00', '2013-11-28 11:30:51', '1973-03-19 17:11:53', '1998-05-15 02:54:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 12, '2004-09-05 08:59:57', '1979-04-26 20:27:45', '1978-12-10 19:25:03', '2019-01-03 19:33:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 13, '1997-12-02 21:59:40', '2017-12-27 21:51:47', '2001-01-28 15:33:14', '1997-01-08 08:13:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 14, '1990-03-20 01:54:49', '1980-03-17 07:34:32', '1996-06-28 17:13:02', '1997-03-08 08:07:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 15, '2003-07-25 06:03:56', '1987-04-06 06:23:50', '1996-11-27 19:55:58', '1995-05-20 14:19:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 16, '2015-04-09 11:13:18', '1987-10-27 18:20:08', '2003-03-12 00:13:33', '2001-04-20 22:53:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 17, '1977-06-17 20:34:09', '1980-09-15 18:20:17', '2016-09-25 05:29:24', '1992-03-16 00:00:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 18, '1975-11-19 19:24:40', '1986-03-01 20:23:25', '1979-09-16 11:49:52', '2009-08-04 15:12:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 19, '2008-09-22 02:59:54', '1990-04-15 18:05:09', '1987-10-31 20:45:37', '2006-09-08 06:46:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 20, '2000-09-16 09:10:51', '1972-08-24 00:11:17', '1994-08-13 05:24:24', '1989-03-15 19:48:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 21, '1992-11-18 14:26:40', '2011-01-04 01:19:08', '1978-04-30 03:28:44', '1995-06-07 00:19:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 22, '1972-03-08 00:19:15', '1989-11-05 23:20:43', '1992-12-28 04:26:59', '2014-10-31 19:38:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 23, '2000-12-25 11:38:21', '2014-09-24 02:57:41', '1974-08-28 06:25:57', '2004-07-28 05:38:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 24, '1998-11-24 04:04:03', '2008-11-21 03:12:16', '1978-01-12 10:33:46', '1996-03-10 12:44:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 25, '1978-07-07 00:13:25', '2004-08-24 01:13:12', '2000-12-02 11:10:49', '2006-09-22 00:42:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 26, '1975-02-19 11:34:59', '1979-11-17 05:39:03', '2004-06-08 22:03:44', '1987-11-19 08:37:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 27, '1999-04-01 09:36:23', '2009-04-25 01:27:12', '1991-07-31 20:18:50', '2006-05-28 03:57:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 28, '2003-03-28 20:49:22', '1985-04-18 19:21:40', '1981-06-02 07:21:37', '1986-02-16 11:37:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 29, '2005-04-20 15:30:40', '2011-04-03 14:06:59', '1974-11-16 02:37:13', '1978-10-28 10:46:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 30, '1996-03-26 19:00:19', '2012-09-08 14:20:27', '1981-11-29 21:20:03', '1977-06-14 16:15:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 31, '2004-07-10 03:44:57', '2001-02-05 10:54:00', '2004-08-27 05:19:28', '2007-12-25 17:31:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 32, '1971-04-28 11:26:29', '2002-06-12 04:17:13', '2018-04-02 03:32:12', '1985-11-26 22:52:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 33, '1973-12-26 02:02:11', '1996-01-02 06:31:21', '1973-07-13 06:40:28', '1973-03-16 15:31:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 34, '2018-07-17 07:38:04', '1981-02-24 21:57:30', '1974-08-13 18:14:09', '2014-07-24 15:42:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 35, '1974-07-24 00:43:45', '2017-03-04 15:19:31', '2007-02-23 20:20:06', '2009-07-23 14:07:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 36, '1974-05-25 02:32:53', '1971-01-20 10:15:44', '1989-03-06 20:37:11', '1986-10-22 09:53:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 37, '1984-05-18 15:01:27', '1992-01-10 16:16:16', '1970-01-02 19:03:12', '1985-05-16 07:13:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 38, '2019-10-01 08:05:38', '2001-12-07 23:27:13', '1979-04-30 11:48:49', '2018-07-14 16:41:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 39, '1992-10-23 22:45:51', '1970-10-08 16:17:43', '2006-05-26 22:04:18', '2014-11-08 18:18:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 40, '1992-05-17 18:39:55', '2017-12-30 19:40:03', '1998-10-17 00:14:54', '2010-05-11 22:15:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 41, '1977-03-12 22:45:47', '1973-10-23 00:25:08', '1977-12-08 07:26:11', '2016-09-24 16:50:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 42, '2008-10-13 02:42:43', '1971-03-23 03:58:30', '1986-03-02 06:43:34', '1994-11-09 09:32:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 43, '1973-03-23 03:27:10', '1977-06-09 00:59:15', '1989-02-24 21:38:14', '2003-02-06 22:42:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 44, '1981-11-19 21:06:31', '1978-08-12 11:12:47', '1971-02-09 20:15:06', '1999-09-02 07:28:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 45, '1993-04-28 01:38:08', '1984-11-29 14:56:14', '1982-11-30 05:48:09', '1985-03-08 13:34:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 46, '1989-06-15 12:45:37', '1986-09-03 00:05:35', '1972-01-14 17:41:12', '2000-08-07 17:55:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 47, '1993-01-17 15:44:46', '1970-05-03 17:51:18', '1992-10-08 08:06:29', '1994-10-20 03:20:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 48, '1982-08-09 00:50:59', '2002-03-05 16:36:42', '1986-05-10 14:10:51', '2003-07-20 12:02:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 49, '1977-07-27 10:28:42', '2016-09-29 21:03:35', '1989-07-26 03:22:32', '1976-07-17 18:37:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 50, '2008-01-30 07:17:57', '2016-01-30 20:26:22', '1994-11-18 00:52:02', '1973-03-19 05:18:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 51, '2020-02-02 06:16:04', '2019-03-16 00:56:09', '1988-09-18 12:23:55', '1988-10-02 00:44:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 52, '1997-07-04 11:07:56', '1990-04-15 10:39:14', '2007-06-11 14:28:34', '2011-01-31 04:37:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 53, '1970-09-14 12:15:34', '1979-02-21 23:15:56', '1990-07-17 11:09:48', '1971-02-22 06:33:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 54, '1976-12-29 09:28:25', '2016-10-12 20:28:45', '1972-03-04 21:10:17', '2012-06-18 19:03:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 55, '2002-12-11 03:20:40', '1998-09-19 03:49:24', '2006-11-23 22:36:51', '1986-04-23 00:13:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 56, '1984-09-30 00:18:58', '1992-09-29 07:41:58', '2007-11-18 09:48:12', '1985-02-20 10:50:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 57, '1995-09-15 13:30:21', '2011-02-05 05:38:25', '1998-05-09 00:49:43', '1972-04-05 15:53:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 58, '2005-08-20 03:15:33', '2013-08-27 23:57:16', '1987-11-07 03:20:53', '1986-11-21 13:49:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 59, '1987-04-17 18:24:52', '1978-12-22 00:21:15', '1984-08-30 09:32:47', '2017-10-15 09:06:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 60, '1987-09-14 16:25:30', '2019-10-17 07:47:46', '2013-09-09 00:47:02', '1971-09-24 19:10:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 61, '1978-01-04 10:40:13', '1985-12-12 03:26:55', '2010-07-24 02:34:54', '1976-03-12 01:18:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 62, '1999-09-13 23:19:22', '1991-07-02 21:44:49', '1981-12-11 01:31:57', '2016-12-04 12:27:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 63, '2017-04-01 05:43:48', '1982-08-26 09:05:05', '2006-07-07 20:49:00', '1991-08-08 17:04:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 64, '2007-10-23 11:43:11', '2005-10-05 14:03:04', '2006-07-03 11:20:33', '1998-08-27 22:33:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 65, '1997-02-16 00:30:57', '2012-06-07 10:43:19', '2009-08-16 22:19:01', '2006-05-09 23:33:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 66, '1988-08-13 10:26:09', '1987-02-27 16:48:38', '1990-02-06 19:50:18', '1970-05-16 06:21:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 67, '1978-05-23 19:11:33', '1995-07-03 10:50:21', '1980-06-29 04:29:05', '2006-02-22 14:02:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 68, '1999-04-28 06:41:22', '1986-10-04 22:34:42', '1994-08-29 06:11:29', '1987-12-09 01:24:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 69, '1995-11-11 10:16:50', '1982-07-15 05:50:28', '1994-07-23 12:58:31', '2005-07-05 23:42:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 70, '1987-01-15 16:04:58', '2014-12-14 07:10:45', '1997-05-30 04:02:34', '1978-03-07 11:56:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 71, '1974-09-29 06:17:38', '2002-06-20 10:12:29', '1977-02-19 15:18:42', '1996-09-18 10:56:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 72, '1973-10-11 16:32:01', '1993-11-26 03:31:40', '2009-02-02 13:02:53', '1996-07-14 18:42:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 73, '1986-08-21 04:04:40', '1985-01-28 08:23:57', '2001-11-17 11:56:59', '1978-09-30 00:59:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 74, '2007-07-30 14:12:54', '2008-08-10 13:03:04', '1999-01-08 22:14:15', '1990-05-14 23:12:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 75, '1997-01-25 01:43:30', '2006-01-03 06:57:55', '1972-09-26 07:56:24', '1976-03-05 02:25:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 76, '1994-07-26 15:06:36', '1992-02-09 06:06:49', '1975-07-23 17:59:43', '2012-09-09 09:50:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 77, '2018-11-02 19:09:08', '1984-05-04 22:43:24', '1982-10-22 10:14:23', '2013-08-30 15:49:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 78, '1988-10-16 01:42:41', '1978-08-22 23:21:31', '1991-03-14 05:39:29', '2006-01-16 07:53:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 79, '1974-12-27 00:38:31', '2016-08-21 03:46:43', '1992-11-16 21:40:47', '1998-02-20 13:50:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 80, '1993-05-09 19:14:14', '1983-11-21 18:06:19', '1989-11-18 04:44:28', '2009-11-07 23:25:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 81, '2016-10-12 02:59:28', '1995-12-23 23:20:45', '2003-01-26 18:40:43', '1995-09-17 03:00:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 82, '1983-01-01 02:30:01', '1985-10-29 04:53:41', '1993-09-25 09:59:30', '2007-03-10 13:56:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 83, '2007-09-07 21:21:15', '1970-06-25 16:43:07', '2016-03-23 16:48:50', '2016-09-09 03:38:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 84, '1984-07-23 19:05:38', '1980-06-28 20:02:04', '2013-02-11 16:13:22', '1975-05-23 01:07:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 85, '1990-10-08 16:29:15', '2011-06-29 21:23:52', '2007-08-20 05:16:37', '2020-05-20 01:06:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 86, '1977-08-22 18:06:10', '2007-03-24 19:38:03', '1975-03-06 15:05:58', '2014-07-02 16:45:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 87, '2010-09-20 17:17:52', '1995-06-28 18:22:55', '2013-04-25 03:35:53', '2008-10-19 06:19:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 88, '1988-12-02 09:51:27', '2003-07-06 18:06:41', '2017-04-16 03:03:33', '1978-06-25 02:31:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 89, '1992-12-15 04:32:17', '2001-05-11 09:07:47', '2010-07-02 18:49:26', '2000-09-01 10:58:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 90, '2006-08-28 05:21:40', '2018-05-13 14:02:31', '2002-06-20 14:15:06', '1976-02-02 22:27:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 91, '1991-04-29 23:47:14', '2015-04-30 23:35:20', '1972-03-26 07:30:44', '1991-05-16 11:54:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 92, '2015-04-08 16:43:33', '2016-05-19 10:21:48', '1970-05-25 07:52:31', '2015-09-24 07:17:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 93, '1984-04-22 15:37:51', '2006-12-15 23:28:09', '2004-08-01 14:38:06', '2006-10-02 05:08:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 94, '2002-08-10 03:38:09', '1979-05-02 22:48:20', '1976-11-09 01:06:31', '2009-04-04 23:21:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 95, '2011-06-25 09:45:03', '2001-12-17 05:22:01', '2004-10-10 12:30:26', '2002-10-08 11:22:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 96, '2011-11-24 01:01:04', '2007-11-25 09:47:20', '2004-06-20 12:52:09', '1987-06-12 07:02:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 97, '1970-07-08 01:25:03', '2008-10-17 01:56:50', '1998-01-22 08:49:37', '1987-07-08 20:47:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 98, '2016-06-11 18:11:03', '2009-10-13 12:20:44', '2003-12-15 12:48:27', '2012-08-23 04:06:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 99, '1993-04-18 03:11:24', '1990-08-12 11:43:31', '1982-01-30 02:09:52', '1974-05-27 21:48:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 100, '2017-06-16 15:16:43', '1971-11-24 01:02:59', '2015-01-11 16:35:43', '2011-04-24 08:49:15');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'nam', '2000-02-18 17:40:12', '2009-04-29 12:48:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'nihil', '2002-03-24 07:12:57', '1977-11-02 18:29:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'odit', '2005-12-22 15:39:58', '1971-06-14 10:19:25');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'labore', '1976-12-10 02:28:16', '2012-04-12 17:01:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'voluptatum', '1981-01-06 13:02:35', '2009-06-28 10:28:20');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'quia', 7265, NULL, 1, '2009-06-25 02:04:24', '2005-03-06 03:35:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'illum', 9212, NULL, 2, '2000-07-13 02:51:11', '1987-07-30 19:53:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'quo', 20, NULL, 3, '2008-09-14 09:53:07', '1984-02-24 20:01:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'molestias', 0, NULL, 4, '1972-11-18 22:05:33', '1992-03-20 06:11:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'quo', 8917424, NULL, 5, '1982-11-01 11:33:17', '2019-07-11 07:34:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'impedit', 4, NULL, 6, '1994-09-04 20:20:19', '2004-12-01 17:02:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'repellat', 1, NULL, 7, '2005-11-20 03:08:22', '1979-04-12 23:15:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'nemo', 76, NULL, 8, '1974-10-26 18:10:15', '1992-10-12 21:45:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'explicabo', 0, NULL, 9, '1998-10-02 08:03:13', '2016-05-04 14:50:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'nihil', 1, NULL, 10, '1985-04-12 21:49:53', '2000-07-01 04:49:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'quod', 49143790, NULL, 11, '2006-02-15 16:42:07', '2006-09-15 23:42:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'qui', 1648599, NULL, 12, '1989-02-01 00:21:05', '2013-04-08 21:35:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'dolorem', 98962, NULL, 13, '1972-06-01 02:31:56', '2015-09-08 11:24:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'et', 0, NULL, 14, '1991-06-02 01:01:41', '2005-05-30 20:20:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'eligendi', 8, NULL, 15, '2015-12-09 13:34:07', '1985-02-02 21:20:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'cumque', 159362, NULL, 16, '2019-12-13 23:02:48', '2001-04-01 23:56:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'commodi', 6, NULL, 17, '1983-04-03 18:52:18', '1973-11-09 11:30:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'nemo', 825775, NULL, 18, '1995-09-15 12:16:08', '2012-04-18 10:21:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'voluptatem', 7114, NULL, 19, '1995-09-04 23:07:36', '1996-10-24 17:12:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'et', 49895762, NULL, 20, '1987-04-10 16:01:12', '2014-11-07 09:48:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'magnam', 8924, NULL, 21, '1991-03-12 12:45:11', '2009-03-31 16:09:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'repellat', 4373, NULL, 22, '1983-04-29 04:50:28', '1971-01-10 01:53:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'ut', 56658013, NULL, 23, '1973-06-06 13:59:08', '1985-01-09 08:19:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'aut', 592986, NULL, 24, '1979-06-19 23:53:37', '2000-05-21 10:56:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'sed', 4305, NULL, 25, '2008-07-04 05:28:47', '1986-02-04 23:49:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'ab', 38388091, NULL, 26, '1983-10-02 23:36:58', '2011-05-17 08:55:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'at', 66, NULL, 27, '2011-09-28 23:27:52', '2010-06-24 07:43:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'sapiente', 53127646, NULL, 28, '2017-03-06 09:41:33', '2015-09-27 16:11:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'itaque', 2763228, NULL, 29, '1978-08-05 22:54:02', '2001-09-30 07:40:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'ut', 0, NULL, 30, '1979-06-02 18:37:38', '1993-10-27 13:48:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'vel', 0, NULL, 31, '1997-02-09 15:36:01', '1986-08-18 14:41:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'sequi', 7, NULL, 32, '2012-11-02 05:11:12', '1995-12-27 03:18:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'architecto', 4553647, NULL, 33, '1977-11-27 22:26:17', '2013-05-17 02:29:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'veniam', 7, NULL, 34, '2014-03-20 17:24:39', '1996-10-02 14:36:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'ab', 41233246, NULL, 35, '2006-03-13 15:45:10', '1989-11-30 07:45:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'in', 35, NULL, 36, '2007-12-17 10:50:22', '1994-12-22 08:00:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'perspiciatis', 0, NULL, 37, '2001-09-18 21:06:24', '1993-06-03 07:17:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'sed', 0, NULL, 38, '2009-01-01 09:28:43', '1980-10-28 15:44:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'qui', 396637801, NULL, 39, '2005-07-18 14:12:01', '2002-11-18 14:37:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'ipsam', 1069502, NULL, 40, '2009-01-22 02:30:04', '2009-01-07 17:43:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'enim', 655535431, NULL, 41, '1976-06-03 00:49:15', '1981-01-08 06:23:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'doloremque', 16623324, NULL, 42, '1971-04-12 20:32:57', '1990-02-15 21:31:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'consequuntur', 830111, NULL, 43, '1987-11-22 21:00:41', '2012-08-01 15:36:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'nulla', 579466, NULL, 44, '1986-08-24 15:57:56', '2017-05-08 00:47:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'tempore', 45497, NULL, 45, '1974-01-07 11:29:50', '2011-03-06 14:59:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'vel', 372, NULL, 46, '2020-06-11 17:54:18', '2001-05-24 07:33:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'aut', 8930, NULL, 47, '2013-04-29 00:41:41', '1981-01-17 22:34:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'sunt', 2, NULL, 48, '2007-04-11 18:23:18', '2016-06-10 18:37:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'repellendus', 37, NULL, 49, '1988-08-09 12:40:37', '2011-11-25 07:27:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'illo', 50, NULL, 50, '2017-11-27 13:29:06', '2014-11-12 06:13:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'deserunt', 1578, NULL, 51, '1982-01-03 20:00:31', '1980-08-07 16:05:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'exercitationem', 41126844, NULL, 52, '2011-07-23 14:59:13', '1992-07-07 02:05:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'perspiciatis', 2372, NULL, 53, '1978-05-21 18:08:09', '1978-09-11 06:47:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'sit', 6169319, NULL, 54, '1986-09-08 21:26:07', '1975-06-18 12:22:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'vitae', 0, NULL, 55, '2010-08-15 08:04:22', '1983-07-25 03:23:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'adipisci', 426, NULL, 56, '2007-10-25 03:08:40', '1984-05-28 08:18:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'tenetur', 67600, NULL, 57, '1992-10-29 12:33:26', '2005-02-18 06:50:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'consequatur', 49458, NULL, 58, '2009-06-27 09:56:44', '1975-12-28 04:31:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'ab', 87, NULL, 59, '2016-07-16 09:44:15', '1971-02-15 22:43:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'placeat', 5, NULL, 60, '1971-01-28 19:15:08', '2018-07-09 04:04:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'ut', 926, NULL, 61, '2016-04-13 06:08:42', '1991-08-06 08:19:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'laudantium', 7, NULL, 62, '2014-12-02 12:43:21', '1985-06-18 04:07:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'illum', 817178791, NULL, 63, '1993-01-05 17:25:12', '2002-06-06 08:09:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'qui', 69, NULL, 64, '1972-11-28 01:41:28', '2018-03-03 00:51:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'nulla', 46651556, NULL, 65, '1998-08-09 22:37:13', '2020-06-14 15:37:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'eligendi', 8765296, NULL, 66, '1996-08-25 14:04:13', '1984-09-19 11:40:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'et', 51157, NULL, 67, '1983-04-09 04:03:06', '1989-05-19 03:18:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'est', 1125, NULL, 68, '2014-09-15 20:08:12', '1980-01-02 13:54:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'similique', 34389, NULL, 69, '2009-04-08 17:41:36', '1997-12-14 18:53:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'sit', 87833, NULL, 70, '2002-07-24 01:45:26', '1975-05-28 11:49:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'animi', 80493, NULL, 71, '2005-04-09 21:02:05', '1995-11-14 13:47:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'nihil', 51303593, NULL, 72, '1992-10-29 04:31:51', '2000-06-19 09:55:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'hic', 20756, NULL, 73, '1985-08-03 10:15:19', '1995-06-09 11:48:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'molestiae', 0, NULL, 74, '2015-08-25 03:07:22', '2018-05-13 09:26:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'quam', 94, NULL, 75, '2017-12-12 00:11:49', '1992-11-07 10:27:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'vitae', 94, NULL, 76, '1972-04-06 13:24:41', '1988-05-21 19:25:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'aperiam', 895230743, NULL, 77, '1997-06-30 10:01:32', '1971-05-20 12:21:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'facilis', 36, NULL, 78, '1972-05-29 07:14:52', '1991-10-07 10:06:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'sit', 323, NULL, 79, '1977-09-14 22:58:03', '1995-03-11 16:36:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'fuga', 38292725, NULL, 80, '1970-07-03 07:49:37', '1973-08-07 03:40:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'omnis', 0, NULL, 81, '1970-02-16 20:41:00', '1971-12-04 09:10:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'quod', 531, NULL, 82, '2006-02-16 11:02:17', '1991-02-16 04:57:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'sit', 40226577, NULL, 83, '2001-06-27 13:12:00', '2007-11-18 12:31:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'distinctio', 41, NULL, 84, '2007-07-31 14:34:50', '1979-03-20 01:46:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'occaecati', 4244919, NULL, 85, '1996-04-02 10:36:53', '1991-08-18 11:12:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'modi', 875195, NULL, 86, '2015-10-15 01:04:03', '2002-09-13 18:44:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'qui', 80681, NULL, 87, '1976-06-14 02:06:57', '1990-01-10 06:17:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'aperiam', 588706477, NULL, 88, '1978-09-28 22:42:42', '1984-01-10 20:27:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'molestiae', 5084, NULL, 89, '1990-09-07 02:03:41', '1986-09-07 15:02:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'consectetur', 946, NULL, 90, '1995-04-22 18:05:12', '1977-05-30 15:30:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'voluptatum', 12776, NULL, 91, '2003-12-01 11:53:39', '1989-01-25 12:53:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'modi', 891004621, NULL, 92, '1971-12-29 10:20:59', '1971-07-12 00:23:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'itaque', 79613927, NULL, 93, '2016-06-29 10:21:43', '2014-04-19 04:24:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'est', 598, NULL, 94, '1977-03-08 16:33:44', '2013-11-09 20:37:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'excepturi', 52914, NULL, 95, '1972-11-14 18:46:54', '2009-05-19 23:48:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'natus', 60055191, NULL, 96, '2016-02-12 21:42:50', '2018-11-03 20:19:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'reiciendis', 9, NULL, 97, '2003-05-14 23:07:12', '1993-08-13 06:02:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'at', 10881, NULL, 98, '1998-12-18 21:00:50', '1972-10-17 12:20:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'commodi', 967347, NULL, 99, '2009-10-19 01:38:56', '2007-08-13 12:35:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'labore', 1, NULL, 100, '2019-03-15 03:29:50', '2017-11-13 00:01:34');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'in', '2000-06-06 06:29:34', '2014-05-25 19:30:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'est', '2010-03-07 18:00:18', '2014-01-17 21:59:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'incidunt', '2015-12-29 17:24:27', '2015-08-28 08:16:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'aut', '1985-03-04 12:50:37', '1987-06-06 05:45:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'officiis', '2014-08-19 22:48:39', '2000-02-26 07:47:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'necessitatibus', '1977-12-19 18:24:59', '1989-05-10 22:46:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'voluptate', '1980-04-13 01:39:07', '2006-09-10 22:42:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'sit', '1992-03-19 05:36:23', '1986-01-06 23:50:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'aliquid', '1999-01-11 02:53:03', '2014-05-10 20:27:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'possimus', '2005-10-05 19:37:51', '1972-12-07 04:37:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'rerum', '2017-05-01 10:28:49', '1991-10-03 00:43:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'quas', '2003-04-22 02:21:20', '2018-07-28 06:04:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'tenetur', '1974-08-02 11:11:17', '1995-07-01 01:11:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'et', '1978-02-05 08:06:08', '1976-09-08 17:00:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'voluptas', '1983-09-30 08:58:54', '2011-09-21 12:25:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'magnam', '1975-07-26 14:25:48', '1994-10-17 20:20:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'magni', '2004-11-26 16:47:00', '1978-12-07 11:46:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'dolores', '2019-02-20 12:10:06', '2008-01-30 04:59:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'ullam', '2005-08-29 06:53:47', '1999-03-31 22:12:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'laborum', '2004-09-11 12:46:43', '1982-10-30 02:39:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'praesentium', '2014-12-03 06:15:08', '2012-04-27 10:32:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'nisi', '2010-10-08 16:10:55', '2019-08-28 21:33:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'qui', '1995-05-29 23:17:42', '2016-02-26 04:38:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'quasi', '1976-04-17 19:30:40', '2001-02-27 16:53:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'accusamus', '1972-01-10 10:27:21', '2002-11-24 07:27:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'sed', '2010-12-01 20:43:55', '2011-01-29 23:48:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'veniam', '1989-08-09 06:39:57', '2011-09-20 00:59:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'voluptatem', '2013-02-10 14:19:36', '2000-11-13 13:34:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'nihil', '2003-01-19 20:59:16', '1996-05-30 08:28:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'ut', '1989-01-19 04:27:59', '2013-08-31 09:35:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'quia', '1993-06-06 11:23:06', '1995-04-01 19:38:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'accusantium', '1978-02-19 02:14:45', '2019-09-28 22:09:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'placeat', '2004-02-03 13:32:02', '1977-04-21 00:31:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'delectus', '1987-03-19 17:44:24', '1981-02-26 19:02:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'at', '1973-11-08 01:19:06', '1996-09-15 02:45:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'iure', '1996-07-08 21:37:43', '1989-01-02 00:40:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'similique', '2015-10-01 00:25:10', '1992-07-24 23:36:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'omnis', '1971-01-11 06:14:14', '2002-05-15 11:54:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'commodi', '1978-07-07 09:25:52', '1993-10-15 02:48:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'dolore', '1975-09-13 11:39:16', '1992-11-15 20:55:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'laudantium', '1985-07-19 11:56:42', '1970-04-25 18:12:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'dolorem', '1971-11-02 03:51:49', '1982-09-11 14:33:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'blanditiis', '1975-11-09 08:38:02', '1986-12-26 04:51:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'molestias', '2018-08-27 07:08:11', '1982-09-28 19:13:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'sunt', '2015-09-05 21:13:08', '2002-12-30 21:21:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'odio', '2014-10-26 10:04:38', '2016-07-23 10:14:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'ea', '1989-07-15 02:07:12', '1997-09-11 20:01:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'inventore', '2008-12-29 19:12:26', '1982-04-18 19:03:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'vel', '1989-07-19 01:53:27', '2000-04-24 14:14:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'laboriosam', '2003-08-05 17:41:22', '1993-05-03 01:46:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'quae', '1973-08-09 10:26:55', '1975-12-01 23:29:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'minus', '1992-05-31 12:19:11', '1975-08-14 18:13:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'a', '1973-07-12 10:03:38', '1974-10-17 07:58:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'numquam', '2004-04-13 14:04:49', '2009-07-06 13:42:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'culpa', '1975-10-03 11:55:21', '2017-07-05 18:36:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'rem', '1996-05-21 12:34:07', '2005-12-12 16:59:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'consequuntur', '1975-10-20 07:35:04', '2008-05-04 05:40:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'maiores', '2011-10-01 03:09:46', '2019-04-08 08:49:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'non', '1987-11-01 17:25:29', '1988-06-13 05:16:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'nam', '1984-11-08 20:34:17', '2020-01-22 21:01:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'distinctio', '1980-07-20 06:34:06', '2005-04-30 08:06:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'ducimus', '2004-07-02 01:49:43', '1994-10-14 13:33:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'sint', '1994-08-26 12:24:42', '1993-12-13 19:57:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'facere', '1979-03-26 22:12:56', '1997-05-26 08:12:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'alias', '1976-06-20 09:45:08', '1973-10-04 14:33:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'autem', '2009-09-23 01:19:51', '1978-12-06 04:37:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'recusandae', '2015-05-20 13:10:32', '1972-06-04 03:05:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'deleniti', '1979-09-07 10:25:08', '2005-03-16 08:15:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'illum', '1986-07-04 13:27:34', '1980-02-26 11:09:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'provident', '2008-08-03 09:25:31', '2012-03-11 19:16:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'vitae', '1975-05-24 01:35:13', '2000-07-30 04:50:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'porro', '1985-12-05 15:12:42', '2016-06-17 05:29:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'ipsum', '2010-01-17 12:30:19', '2000-10-26 22:32:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'pariatur', '1974-09-11 06:04:21', '1977-05-30 23:44:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'ratione', '1991-05-27 05:39:57', '1996-01-05 01:08:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'esse', '2017-12-03 00:07:05', '1992-04-08 04:54:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'officia', '2015-01-08 20:53:12', '2012-06-07 22:03:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'beatae', '1974-07-05 03:13:30', '1998-03-01 18:11:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'excepturi', '2007-03-17 07:10:28', '1978-03-29 04:39:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'quos', '1986-04-03 16:06:35', '2000-08-26 21:23:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'cumque', '2011-04-20 10:46:37', '1986-12-14 07:48:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'quo', '2000-10-09 01:56:34', '1986-06-29 23:39:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'molestiae', '2018-09-08 19:31:45', '1974-04-26 14:27:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'perspiciatis', '1983-05-16 02:49:57', '2008-01-30 21:50:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'soluta', '1986-02-01 16:32:38', '1994-06-05 23:16:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'enim', '1976-04-24 13:20:26', '1972-10-09 00:06:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'quidem', '1988-10-27 20:05:30', '1996-02-14 06:41:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'maxime', '2007-07-18 08:58:22', '1976-10-09 08:34:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'deserunt', '1997-09-27 15:03:03', '2015-02-10 05:39:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'occaecati', '1994-07-30 02:01:04', '1976-04-21 12:37:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'eveniet', '1980-03-31 00:15:27', '2000-03-19 01:38:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'eligendi', '2000-03-15 20:58:58', '1998-03-28 07:36:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'consequatur', '1975-11-28 10:46:30', '1997-01-26 16:48:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'unde', '1986-11-01 20:13:16', '2014-12-30 21:44:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'doloribus', '2019-12-06 23:15:59', '2016-08-19 02:24:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'vero', '1998-02-11 18:06:58', '1970-02-21 13:04:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'eaque', '2006-03-11 14:00:51', '1975-05-21 07:39:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'libero', '1979-02-20 21:20:29', '1990-09-21 04:53:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'dolor', '1988-05-21 18:11:40', '2015-12-25 09:32:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'id', '1972-02-06 11:00:10', '1978-09-16 18:08:06');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'Et laborum debitis qui iste vitae qui accusantium. Occaecati voluptatem aliquid et repellat quis. Rerum quia neque est harum consequatur sint iusto.', 1, 1, '2009-05-06 03:03:08', '1985-09-18 16:11:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'Nihil laboriosam ab ut facilis. Quam nulla hic omnis quam sed similique. Nostrum consectetur et repellat placeat nulla in qui cumque. Aut commodi adipisci nesciunt.', 1, 0, '1971-01-24 11:54:37', '2004-11-01 18:50:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'Est recusandae cupiditate fugit laborum. Quidem praesentium earum libero. Enim atque totam sit quia.', 1, 0, '2008-03-16 03:01:05', '2013-01-19 05:08:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'Quis enim error quidem. Quo non architecto aut vel ratione. Aut fugiat commodi et adipisci. Est unde aperiam voluptatum molestias tempora quas neque. Quaerat natus et iste dolores est tempore nisi.', 0, 1, '1995-06-13 14:41:40', '2006-11-30 14:01:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'Velit voluptatem omnis dolorem ratione iure officia pariatur. In asperiores in quidem eveniet magnam magni non.', 1, 0, '1975-03-26 05:03:56', '2005-05-05 15:48:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 6, 6, 'Quia aperiam aut repellendus iure eum sapiente. Deserunt voluptatem vel harum maiores fugit mollitia. Rerum officiis quae rerum voluptatibus facilis alias. Rerum ut quo a eos.', 1, 0, '2018-02-12 16:01:15', '2010-04-04 02:42:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 7, 7, 'Repellat quam ut possimus eos vel eos. Dolor labore qui quos expedita enim quos. Officiis deserunt quia cum eius. Enim molestias ut nihil quibusdam cupiditate et earum. Ut odit aspernatur nostrum numquam est facilis ullam.', 0, 1, '1994-09-18 10:27:50', '1994-01-08 17:05:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 8, 8, 'Doloremque quis debitis est explicabo sit magnam cumque. Neque non labore aut. Ut architecto eos autem voluptate unde in. Est doloribus ipsam vel omnis beatae repudiandae magnam.', 1, 0, '2002-01-12 05:30:23', '1978-07-29 18:49:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 9, 9, 'Veritatis itaque mollitia asperiores. Aut voluptatem autem magni voluptates laboriosam fugiat. Est omnis pariatur pariatur corporis quo.', 1, 1, '1996-11-26 01:07:15', '1986-10-02 22:31:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 10, 10, 'Dolor beatae quas nisi sed facilis. Minima et vel explicabo quos neque accusantium.', 0, 1, '1982-05-01 04:57:25', '1981-12-07 17:19:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 11, 11, 'At mollitia delectus dolor quasi possimus est suscipit. Minima dignissimos neque quisquam similique vero perspiciatis occaecati magnam.', 0, 1, '2019-12-25 07:41:14', '1986-09-12 03:45:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 12, 12, 'Veritatis ab odio nihil molestias officia vel similique. Et atque quis est repudiandae facilis. Sed labore sit libero tenetur a veniam ipsum eveniet.', 0, 0, '1998-07-01 18:13:51', '2009-08-07 01:46:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 13, 13, 'Sequi quo et velit id. Explicabo sed alias dolorem excepturi pariatur.', 0, 0, '2011-09-07 23:03:50', '2018-04-12 16:04:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 14, 14, 'Assumenda est sint aut est natus. Dolores similique iure a et. Corporis quo temporibus voluptatibus sint omnis autem delectus nihil. Iusto numquam beatae mollitia sequi. Quibusdam ratione rem necessitatibus.', 0, 0, '2019-02-11 03:28:57', '2016-09-11 11:19:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 15, 15, 'Magnam aut suscipit et enim dolorem non. Assumenda incidunt autem dolor rerum. Rerum quae ea non adipisci pariatur. Neque necessitatibus nobis beatae molestias cupiditate facere voluptatem voluptate.', 0, 0, '2002-10-26 22:04:59', '1983-09-27 01:43:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 16, 16, 'Et et cupiditate consequatur enim necessitatibus ut. Explicabo consequatur vero quia accusamus officia reiciendis. Minus culpa ut earum aliquid tempore.', 0, 0, '1971-08-05 23:45:38', '1975-09-01 08:55:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 17, 17, 'Necessitatibus eveniet aliquid ab numquam. Rerum voluptatem iure harum animi nihil. Dolorum est iste delectus suscipit molestiae.', 1, 1, '1997-07-31 12:31:53', '2016-03-11 14:37:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 18, 18, 'Quas dolore distinctio minima et expedita inventore rerum. Fugiat aut non adipisci corrupti iure itaque sint. Similique est ex quibusdam ad. Quis expedita quia quas qui voluptates fugit vitae.', 0, 0, '1972-01-19 02:20:25', '1986-09-13 09:57:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 19, 19, 'Dolore ipsa sequi quas reprehenderit alias iure. Corrupti ut doloremque aliquam quidem consequatur. Dolores asperiores ducimus exercitationem labore magnam dolor.', 1, 1, '1992-08-09 19:23:24', '2019-09-24 09:00:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 20, 20, 'Atque quo nam vel magni fugit qui. Doloremque earum aliquid omnis earum aut fuga autem. Asperiores omnis porro voluptas id.', 0, 0, '1989-12-17 12:36:13', '2017-08-28 18:51:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 21, 21, 'Inventore officiis omnis qui. Ea nemo repellat laudantium voluptatem quia doloribus quos. Soluta iure consequatur aliquam praesentium quo a numquam corrupti. Itaque iure tempore dolore quia.', 0, 1, '1998-09-09 03:25:47', '1984-01-17 23:10:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 22, 22, 'Necessitatibus laborum quae vero saepe omnis est consequatur. Quis eum corporis voluptas et vitae voluptas itaque. Aut id consectetur iste quia sequi enim in hic. Dolorem nisi ipsa ipsa.', 1, 0, '2014-03-04 09:07:15', '1996-11-19 06:41:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 23, 23, 'Dolorem eveniet rerum et reiciendis dignissimos. Quis et aut at aut molestias voluptatum. Minus quas aliquid dolores amet maiores non deleniti veniam.', 0, 0, '1974-07-05 22:25:19', '2009-03-20 16:58:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 24, 24, 'Sint facere veritatis et voluptatem et. Praesentium illo ut a ducimus natus. Debitis dolor ut ut magni fuga. Possimus dolorum nostrum sed sint. Sit quis debitis quia ea quia et praesentium.', 1, 1, '1979-01-15 02:15:26', '2015-07-09 05:52:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 25, 25, 'Modi in voluptatem rem repellendus doloremque. Rerum quae soluta et amet possimus omnis. Voluptatibus praesentium cupiditate dolores illo quos quae.', 0, 1, '1993-12-13 09:09:29', '1988-08-11 10:11:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 26, 26, 'Nam dolores aut nam nobis dolores numquam. Officia voluptate ipsum id sit quo exercitationem qui.', 1, 0, '1981-07-27 23:42:21', '2012-05-20 13:55:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 27, 27, 'Nesciunt cum occaecati exercitationem eum. Debitis eum sit omnis. Qui vel quisquam et facilis et non qui earum.', 1, 1, '2015-12-18 03:33:07', '1970-08-20 17:12:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 28, 28, 'Harum rerum sit tempora facere. Laborum dolorum quos voluptas blanditiis. Asperiores mollitia laudantium rerum aut.', 0, 0, '1988-09-03 19:42:20', '2000-10-28 21:17:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 29, 29, 'Nemo qui accusantium enim autem consectetur doloribus. Eos non sed sunt aut ut occaecati ut qui.', 0, 0, '1976-02-15 08:37:06', '2009-10-31 15:36:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 30, 30, 'Sequi perspiciatis dolores voluptatum consequatur. Sed qui qui quam. Nemo corporis similique laborum. Possimus quia veniam ad et aut et.', 1, 0, '2004-09-12 14:14:13', '1986-06-29 18:42:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 31, 31, 'Aut odit quaerat tempora sint saepe velit. Sint sed minus beatae et. Expedita aut provident fuga soluta tempore molestiae. Ducimus magnam autem omnis voluptas placeat modi eligendi.', 1, 1, '1983-02-13 01:54:12', '2001-04-24 01:08:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 32, 32, 'Praesentium explicabo qui inventore veniam assumenda aut. Nemo omnis rem nisi aut. Qui accusantium dolores sint quia ut.', 0, 0, '1990-06-30 13:33:12', '1979-10-04 09:54:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 33, 33, 'Dolorum excepturi et sed. Rerum quibusdam incidunt aut cum qui.', 1, 0, '2005-10-20 11:59:25', '1970-07-12 03:52:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 34, 34, 'Totam voluptates eaque ratione dolorem molestias unde. Et quia iste ea cupiditate. Quis dolorem consectetur veritatis architecto minus neque a consectetur.', 1, 0, '2010-12-24 23:41:52', '1981-01-17 13:23:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 35, 35, 'Sed ducimus cumque quasi accusamus asperiores. Eius aut minima rerum minus praesentium. Provident et fugiat in ut commodi.', 1, 1, '2014-07-29 07:40:03', '1991-11-25 01:07:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 36, 36, 'Molestiae culpa aut ipsum veritatis consectetur. Dolores voluptates quod laudantium amet ullam est ex. Corrupti rerum doloribus vero omnis. Perferendis sint sit repellendus est omnis magni omnis aut.', 1, 0, '2005-04-18 16:50:09', '2001-07-06 02:05:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 37, 37, 'Pariatur consequatur sed aut vero quis consectetur. Occaecati quia dolore quo eius dolor laboriosam. Commodi similique corrupti maxime ipsum libero.', 0, 0, '1978-09-25 10:32:57', '1991-02-13 10:52:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 38, 38, 'Blanditiis consequatur rerum aut consequatur. Dolor occaecati iste molestiae vero in itaque voluptates. Maiores et ipsa laudantium enim. Quidem nostrum quia et ea eaque facilis.', 1, 1, '1985-11-29 13:55:20', '2006-03-25 07:42:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 39, 39, 'Amet at et aut minima cumque totam. Praesentium enim natus laudantium molestiae perferendis consequatur. Nihil cupiditate provident nisi. Nemo aut pariatur facere officia deleniti blanditiis nobis error.', 0, 0, '2009-10-07 08:07:11', '1975-05-06 17:16:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 40, 40, 'Id sit dicta quo quia qui. Quam et ut incidunt magnam sed sunt. Dolores laboriosam minus consequatur iure velit.', 0, 1, '2006-12-18 10:37:24', '2000-09-10 09:12:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 41, 41, 'Id sed qui dolorem. Ex dolor sit illo et. Omnis asperiores a accusantium.', 1, 1, '1983-07-16 23:46:44', '1972-12-18 10:37:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 42, 42, 'Est est id sint et a veritatis. Quia esse sit quas omnis. Ut ratione aut ad inventore laboriosam nulla. Fuga pariatur consequatur aliquam laborum eum.', 1, 1, '2001-11-30 20:02:47', '2010-07-27 16:18:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 43, 43, 'Dolorum voluptas inventore ut numquam et sit id. Aut in in sunt delectus rerum. Et iure sequi architecto rerum asperiores. Et at assumenda vel voluptate aliquid.', 1, 1, '2011-02-15 19:05:15', '2009-01-01 13:28:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 44, 44, 'Aut ratione consectetur ea iusto incidunt labore explicabo. Ut et reprehenderit doloribus veritatis. A enim sed vel facere sed. Officiis non est veritatis dolor nihil soluta officiis non.', 0, 1, '1988-04-30 06:40:15', '1995-01-14 02:50:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 45, 45, 'Consequatur expedita quia enim qui voluptatum. Enim ratione ex a facere qui impedit. Veniam eveniet at doloremque nulla mollitia quia quis. Distinctio consequatur est a repudiandae.', 0, 1, '1973-09-28 15:22:52', '2002-12-10 18:28:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 46, 46, 'Et unde quia molestias vel similique amet odio. Ducimus veritatis nobis vel. Dolor dolor sint est sit saepe eaque. Ea recusandae amet aut veniam aut enim.', 1, 0, '1972-06-17 04:32:45', '1974-09-30 04:56:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 47, 47, 'Qui soluta iste praesentium qui libero autem. Molestias sed dolorum provident ratione nostrum ut. Placeat iste aut nisi rerum rerum sint. Et velit praesentium tempora voluptatem voluptas omnis.', 1, 1, '2017-09-11 21:37:38', '1999-12-28 04:38:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 48, 48, 'Reprehenderit accusantium delectus non quos inventore architecto et. Et accusantium cupiditate quia at. Tempora earum explicabo saepe consequuntur atque in atque.', 0, 1, '1995-07-28 03:14:44', '1971-01-16 10:44:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 49, 49, 'Possimus ipsa modi esse natus. Beatae iusto dolores assumenda adipisci voluptatem laborum ipsa. Tempora aut aut assumenda ratione aliquam. Sunt nulla sint mollitia voluptates optio placeat minus. Aliquid omnis et doloremque unde.', 1, 0, '2015-10-15 19:30:46', '1999-03-23 12:56:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 50, 50, 'Nihil dolor earum beatae impedit sit. Ullam ea veritatis maxime. Sint iure minima maxime ea. Et corporis numquam beatae possimus.', 1, 0, '1994-10-03 09:09:59', '1996-07-04 08:32:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 51, 51, 'Rerum quasi omnis ipsa recusandae recusandae atque. Tempore voluptas alias ut deserunt eligendi quia. Qui fuga ea saepe aliquam aut minus qui.', 0, 1, '1983-02-12 10:34:02', '1974-10-08 12:30:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 52, 52, 'Est animi consequatur animi est odit rerum non reiciendis. Nobis cumque ea aut quidem quia ut. Laudantium sed doloremque facilis exercitationem. Unde dignissimos eligendi et eius consequuntur. Enim necessitatibus tempore iste.', 1, 0, '1988-10-07 04:40:03', '2004-06-11 05:42:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 53, 53, 'Maxime nulla cupiditate distinctio illo molestias. Explicabo ut occaecati consequatur voluptas possimus consectetur. Amet enim esse sit tempore placeat. Aliquam laudantium consequuntur recusandae dolorem maxime optio. Quia ut cumque reiciendis cumque.', 1, 0, '1981-10-18 12:02:20', '2014-03-15 07:39:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 54, 54, 'Quia tempore est quia sapiente. Sed tenetur sed eveniet fugiat provident soluta voluptate. Tempore cum dolor veniam cupiditate qui suscipit.', 1, 0, '2012-04-30 21:53:55', '1987-02-18 17:49:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 55, 55, 'Odio eligendi dicta vel qui aspernatur. Dolore qui minus cupiditate aliquid veritatis ab. Aut natus dolorum optio asperiores. Ut quibusdam animi unde fugit accusantium aut.', 1, 0, '2018-06-28 00:44:00', '2009-05-04 02:33:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 56, 56, 'Pariatur nihil voluptas rerum adipisci animi dolor occaecati. Tenetur ea quibusdam et sit. Sapiente quam quia et nisi quis. Asperiores minima harum quia rerum molestiae.', 1, 1, '2008-01-09 20:57:27', '2011-03-20 00:12:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 57, 57, 'Dolorem mollitia deleniti voluptatem hic similique. Magnam praesentium ut ea eum mollitia dolorem minus voluptas. At et eligendi magni quibusdam fuga incidunt.', 0, 1, '1996-01-31 21:41:45', '1980-05-26 10:23:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 58, 58, 'Cumque blanditiis doloribus officiis ut voluptate maiores sint. Possimus dolorem tenetur officia. Qui omnis quia vel natus inventore placeat fuga tenetur.', 1, 0, '2010-06-15 20:19:59', '1972-10-16 11:32:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 59, 59, 'Et est voluptas rerum provident suscipit sit eligendi. Qui itaque ad qui aut odio magnam repellendus labore. Et eius exercitationem vero quaerat a placeat.', 0, 1, '2008-01-26 05:30:13', '1999-05-23 10:11:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 60, 60, 'Quisquam voluptatem libero eius aliquid rem aut aspernatur. Aperiam sequi autem quod ut consequatur incidunt odit. Rerum cum culpa commodi et officiis fugit optio.', 0, 0, '2012-12-29 09:07:28', '1995-01-19 18:23:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 61, 61, 'Est perferendis aut saepe. Voluptatem quia voluptas rerum praesentium. Eos quam fuga est minus quidem.', 1, 0, '1987-01-28 05:47:13', '2001-09-22 08:54:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 62, 62, 'Dolores aut reiciendis aut rerum. Cupiditate ullam ipsam sequi quam mollitia nisi. Rem consequatur voluptate voluptatem voluptas. Ut porro molestiae voluptate dolore.', 1, 1, '1993-04-08 12:28:00', '2013-03-29 08:54:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 63, 63, 'Eos consequuntur placeat dolorum ad. Temporibus nisi ea eveniet ad rem nihil nostrum. Voluptates praesentium nisi quas odit eum. A consectetur expedita id omnis saepe sed architecto.', 1, 1, '2000-08-24 19:13:09', '1983-02-11 03:08:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 64, 64, 'Eius reiciendis natus ut. Mollitia omnis labore qui quia. Facilis dolor laudantium deserunt unde corporis eum nemo.', 0, 0, '1994-11-26 07:46:19', '1979-11-14 08:13:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 65, 65, 'Cupiditate pariatur assumenda consequatur repellendus dolor. Omnis harum dolorum qui enim eum dolor. Minus sunt enim ad ipsa.', 1, 0, '2006-09-27 14:59:47', '1994-02-17 10:14:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 66, 66, 'Accusantium facilis rem consequatur veritatis. Dolor excepturi et atque libero. Sed provident ullam architecto possimus consequuntur tempore. Nostrum totam qui veritatis nihil voluptatem id.', 1, 0, '2011-06-26 10:40:57', '2017-05-04 00:12:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 67, 67, 'Aut itaque qui nemo quasi maiores. Perspiciatis excepturi commodi alias modi earum aut. Hic quae omnis natus dignissimos. Molestiae atque eligendi aperiam a ipsa.', 0, 1, '2001-03-23 14:09:00', '2009-03-31 22:29:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 68, 68, 'Incidunt consequatur alias dolorem consectetur perferendis eum cumque voluptatibus. Porro laborum saepe et.', 0, 0, '1994-05-02 23:09:00', '1977-10-21 17:07:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 69, 69, 'Earum excepturi delectus est esse a tempora architecto. Perspiciatis inventore sit aut corporis illo modi ea. Incidunt ab dicta quos consequatur nemo illo. Fugit fugiat cumque aut veritatis voluptates blanditiis.', 0, 0, '1993-08-18 01:45:20', '1972-06-18 08:12:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 70, 70, 'Amet vel alias ea voluptate eveniet. Ea nobis omnis repellat adipisci ut voluptatem. Voluptates reiciendis nemo maiores voluptas ut commodi. Numquam tempore ducimus veritatis explicabo molestiae expedita.', 0, 0, '1995-02-03 08:19:06', '1989-02-26 23:08:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 71, 71, 'Voluptates omnis culpa consequatur. Ab nihil velit rem quae necessitatibus suscipit. Veritatis est corrupti ipsum dolorem.', 0, 0, '2003-12-04 08:14:46', '1998-01-17 18:07:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 72, 72, 'Ex id alias molestiae. Et eum esse eius ut dolores consequatur at. Repellat molestiae et et.', 1, 0, '1976-04-21 03:37:29', '2009-09-28 07:40:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 73, 73, 'Voluptas illum omnis dolor quod. Neque saepe doloribus laboriosam. Laboriosam nostrum officiis culpa deleniti ut itaque.', 1, 0, '1992-09-20 14:19:26', '1988-12-27 21:30:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 74, 74, 'Debitis sed dignissimos in ut maxime. Repudiandae animi iure magni.', 1, 0, '1993-01-19 07:52:52', '1974-11-11 05:45:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 75, 75, 'Quisquam eum a repellat sit voluptas. Porro eaque deleniti ea aut fugit voluptatem. Ut officia non laudantium.', 0, 1, '1992-07-02 10:28:34', '2001-06-21 04:10:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 76, 76, 'Facilis cumque architecto impedit quae inventore sunt corporis. Quos quia est sit fugiat ut omnis. Tenetur laborum repellendus reprehenderit.', 1, 1, '1972-08-25 12:53:13', '2014-10-18 04:31:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 77, 77, 'Tenetur necessitatibus quibusdam voluptates rerum. Sint distinctio quo laborum nesciunt quidem et et. Velit et mollitia in.', 0, 0, '1994-07-15 07:24:30', '2014-04-17 08:09:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 78, 78, 'Non omnis sequi excepturi dolorem. Molestiae qui qui amet deleniti. Vel consequatur dolores suscipit reiciendis consequatur quaerat debitis. Praesentium cupiditate sequi optio tempore nesciunt.', 1, 0, '1975-06-30 23:39:21', '2004-11-28 05:16:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 79, 79, 'Ut ad nesciunt hic temporibus qui. Rem eos quod non sed aut possimus modi. Omnis eius placeat dignissimos aliquam animi quo. Dolores veritatis exercitationem sit voluptatem odio blanditiis aut id.', 0, 1, '2016-07-22 04:15:03', '1984-03-29 17:00:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 80, 80, 'Non sint natus qui omnis. Suscipit sed quis harum odio amet expedita harum. Laudantium dicta praesentium doloribus perspiciatis sint.', 0, 1, '1978-09-18 19:21:26', '2008-10-21 20:59:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 81, 81, 'Et sunt occaecati iste consectetur eaque dolor voluptatem et. Earum molestias et autem veritatis dolore qui pariatur. Debitis et id sapiente et alias. Quia eos et officia ad.', 0, 1, '1986-08-03 07:18:03', '1986-04-23 03:30:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 82, 82, 'Molestiae molestiae ut et aperiam aperiam nostrum quia. Velit cumque adipisci officiis dolorum nostrum eum suscipit. Omnis qui cum praesentium alias omnis quos qui quia. Mollitia dolore placeat id cumque natus deserunt repudiandae.', 1, 1, '2008-06-12 09:55:41', '2013-04-21 06:57:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 83, 83, 'Quo dolorem dolor temporibus fuga maiores nihil. Sint laborum at neque unde omnis ipsa et. Magnam soluta eum odio sed asperiores facilis aut.', 0, 1, '1988-07-08 10:36:00', '2000-03-17 00:45:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 84, 84, 'Repellat id labore commodi vel hic. Quia id aliquid est ad quia. Odit culpa molestiae omnis nesciunt alias necessitatibus qui eius.', 1, 0, '1995-06-02 18:24:04', '1998-11-28 18:57:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 85, 85, 'Omnis illum qui quis explicabo dolores. Sequi et doloremque sit aut inventore in ut non. Optio animi voluptas nesciunt repellendus.', 0, 1, '1984-12-06 06:08:51', '1978-10-19 18:47:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 86, 86, 'Eaque voluptas velit commodi voluptatem magni aperiam et. Sed odit soluta optio necessitatibus reiciendis. Voluptas consequatur qui ut non reprehenderit.', 1, 1, '1983-11-01 12:06:24', '1989-10-14 06:04:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 87, 87, 'Dolores assumenda atque sint porro iure. Id culpa pariatur expedita voluptatem sit. Deserunt autem sint delectus.', 0, 1, '2001-04-23 15:58:43', '2013-10-02 13:26:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 88, 88, 'Impedit voluptatem accusamus nihil facere esse architecto doloribus maiores. Officia doloremque blanditiis et amet accusamus voluptas delectus animi. Non adipisci quae et quae rerum molestias laboriosam. Repellat quasi labore ea error eum nisi autem incidunt.', 0, 0, '2012-04-08 05:54:32', '2003-05-16 04:09:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 89, 89, 'Qui id dolor nihil omnis. Nihil soluta neque vel sed incidunt unde architecto. Et vero placeat eveniet et explicabo rerum ut ut. Corporis magni enim et recusandae.', 1, 1, '2001-12-02 01:46:28', '1976-08-02 03:38:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 90, 90, 'Illo voluptatem voluptatem facere deserunt odit laudantium itaque aut. Eveniet molestias quidem in optio itaque voluptatem. Autem reiciendis facilis ea est vel dignissimos rerum provident. Quo ut neque dolor provident.', 1, 1, '1995-03-06 15:32:43', '2009-05-03 23:16:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 91, 91, 'Rerum aliquam atque beatae aliquid veritatis ut. Dignissimos officia a sunt praesentium quibusdam quia. Vero fuga quidem amet excepturi eos et facere placeat. Ipsa totam nihil temporibus velit omnis.', 0, 0, '2012-08-07 22:21:16', '2015-07-11 19:23:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 92, 92, 'Quia facere voluptatibus qui delectus. Fugiat totam reprehenderit aut. Est minus facere dolorem similique cum sit itaque quis. Aut ut perspiciatis blanditiis.', 1, 1, '2000-03-21 23:47:33', '2019-07-04 13:10:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 93, 93, 'Impedit necessitatibus natus officiis omnis repellat. Voluptates non veritatis accusamus quis voluptates iure rerum. Quia quisquam voluptatibus praesentium aut maxime non dignissimos.', 0, 0, '2018-05-24 17:02:24', '2014-05-12 00:58:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 94, 94, 'Rerum eos magni rerum fugit rem laboriosam explicabo enim. Nihil neque voluptatem et ex. Facilis libero vel accusamus aut praesentium libero.', 1, 1, '1976-06-12 15:34:04', '1985-02-21 03:18:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 95, 95, 'Et iure dolorum occaecati pariatur. Quo facere non corrupti ea hic dignissimos et. Similique exercitationem est incidunt velit facere fugit eos. Facere magni ullam perspiciatis esse illo explicabo.', 0, 1, '1989-01-17 08:49:42', '2002-06-21 19:10:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 96, 96, 'Explicabo temporibus corrupti id et eveniet similique. Et assumenda itaque sed ea dolor. Vero eligendi ab occaecati itaque quia quibusdam et. Qui velit error praesentium corrupti deleniti voluptatem labore.', 0, 0, '1986-02-27 17:31:58', '1974-09-17 20:41:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 97, 97, 'Aperiam ut ducimus sit excepturi explicabo ea sit. Voluptate nihil placeat enim eum explicabo ipsa omnis. Eos voluptatem voluptatem enim nemo modi. Voluptas aut unde qui minima ut saepe.', 0, 0, '2002-10-16 06:29:19', '2017-10-13 12:57:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 98, 98, 'Suscipit adipisci asperiores et perspiciatis facilis maiores odio. Eveniet odit labore aut architecto ratione quibusdam. Dolores nulla sequi et cum officia.', 0, 0, '1984-05-14 19:34:47', '2016-06-13 00:09:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 99, 99, 'Eaque ab inventore repellendus quia ut. Animi facere aut fugit et. Quia nam maxime voluptatem voluptate similique. Commodi consequatur nulla ipsa architecto qui est.', 0, 0, '1989-12-16 12:23:47', '2014-01-26 00:18:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 100, 100, 'Et quia saepe sequi autem enim aut quo. Et numquam et rerum quae maxime. Tenetur voluptatem et unde praesentium. Quas earum in in in temporibus quibusdam et. Voluptas et consequatur quasi maxime aut aut.', 1, 0, '1970-11-28 16:29:46', '1990-12-23 12:06:21');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'w', '2016-02-17', 22, 'Stephonland', '5113867', '2015-02-06 15:15:48', '1978-12-19 06:34:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '1994-06-23', 36, 'East Weldonview', '167', '1972-10-25 05:39:55', '2007-01-21 03:12:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'w', '1987-03-12', 68, 'Lioneltown', '62', '2012-07-25 18:57:22', '1976-04-27 12:14:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'w', '1980-05-19', 58, 'Darleneburgh', '2636', '1985-06-01 23:18:32', '2011-12-03 12:43:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'm', '2003-12-15', 5, 'Gracielachester', '', '1985-01-21 13:28:00', '1997-10-30 17:50:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '1970-05-23', 87, 'Joyshire', '116', '2012-04-25 16:41:46', '1998-07-28 10:48:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'm', '1989-09-26', 36, 'North Luthershire', '1031', '2006-02-12 01:32:23', '2007-04-06 18:45:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'w', '2016-03-03', 17, 'Port Destinee', '1047', '2003-09-05 05:30:23', '1983-03-05 00:13:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'm', '1999-09-22', 28, 'West Faustino', '9417448', '2004-04-10 02:14:50', '1974-09-12 16:41:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'w', '2001-02-15', 68, 'East Lambert', '5377', '1998-07-04 18:41:56', '2008-04-08 04:40:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'w', '2020-06-22', 18, 'Lake Kaneville', '195573', '1975-04-21 05:17:11', '2011-08-21 04:23:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'm', '1984-02-20', 89, 'Creminmouth', '301667', '2004-05-04 21:48:09', '2003-07-25 07:52:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '1981-05-19', 80, 'East Cletatown', '2', '1977-10-22 00:35:20', '1970-10-21 15:51:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'w', '1973-12-15', 81, 'Russelberg', '68', '1993-04-26 20:14:38', '1972-08-28 21:10:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'w', '2005-09-26', 8, 'East Laurence', '726064', '2003-07-20 02:12:11', '1988-03-08 11:04:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'w', '2004-12-05', 61, 'Cooperborough', '114', '1972-10-31 22:37:57', '1979-01-10 10:00:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'm', '2013-09-28', 2, 'Reingerton', '18837', '2015-07-08 01:41:48', '2015-10-06 00:01:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'm', '1985-10-25', 31, 'New Sienna', '', '1979-04-22 02:41:52', '2001-08-12 17:06:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'm', '1996-12-12', 50, 'South Harveyview', '2282', '1974-06-23 18:26:43', '1971-08-19 21:29:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'w', '1994-09-20', 41, 'Vandervorthaven', '4432419', '2017-04-22 22:01:13', '1978-05-04 03:03:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'm', '2008-01-01', 66, 'Pricemouth', '1', '1990-03-26 18:50:48', '1990-01-20 05:22:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'w', '1988-06-27', 67, 'South Leopoldo', '32962', '2003-01-07 19:52:16', '2002-08-02 10:16:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'w', '2002-04-22', 72, 'Nicholasmouth', '84', '1975-08-20 06:20:10', '1998-06-27 07:26:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'w', '1982-10-22', 89, 'Port Macmouth', '170906', '1987-04-16 11:51:53', '1983-11-12 02:47:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'w', '1976-03-04', 63, 'Kuhicville', '848949096', '1975-02-14 22:54:18', '2014-04-06 01:20:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'm', '1994-12-25', 35, 'Port Vickie', '64123', '2012-07-03 12:46:44', '2016-01-14 09:45:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'w', '2019-02-05', 17, 'North Corbin', '6', '1978-03-22 00:39:18', '1971-01-06 02:22:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'w', '1973-12-30', 82, 'Gulgowskiberg', '6545425', '1993-11-11 01:32:29', '2007-06-03 20:30:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'w', '1972-03-27', 30, 'Frankburgh', '', '1981-12-22 13:28:20', '2009-10-04 10:36:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '1994-01-07', 49, 'Barrowsfurt', '4863', '2016-07-27 13:31:28', '1999-12-27 10:58:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '1988-02-16', 56, 'Theodorastad', '36109435', '1988-07-23 06:48:36', '2014-09-29 11:38:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'm', '2008-06-17', 2, 'Denaview', '9', '1991-05-16 09:19:43', '1975-09-30 01:27:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'w', '2008-07-19', 81, 'Leschfort', '7', '1983-07-06 06:53:48', '2014-12-30 13:53:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'm', '1989-07-20', 31, 'New Kayli', '9', '2018-08-17 08:58:23', '2019-04-18 09:21:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'w', '1973-12-14', 95, 'Medhursthaven', '84633970', '1992-12-03 00:39:32', '2015-03-19 04:53:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'w', '1975-12-10', 33, 'North Chase', '62151620', '2013-12-24 02:19:47', '2020-02-18 22:39:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '2000-06-04', 97, 'Ramonastad', '2', '1970-09-18 20:21:00', '1982-04-11 10:28:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'w', '1997-03-10', 72, 'New Jaida', '8867801', '1987-06-02 21:34:04', '1995-09-09 11:43:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'w', '1994-06-02', 77, 'East Christ', '945', '1984-11-28 10:29:00', '2008-02-14 00:14:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'w', '2012-05-14', 77, 'North Dashawn', '247753510', '1975-02-20 15:42:03', '1989-03-15 09:56:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'm', '1994-07-13', 14, 'Juliaside', '1605', '2012-06-23 17:03:28', '2019-05-10 05:53:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'm', '1999-04-29', 67, 'Bahringerberg', '913', '1972-03-05 01:58:52', '1980-03-04 16:37:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'm', '1987-01-12', 64, 'Hassanport', '', '2013-07-28 18:29:43', '1973-06-14 16:49:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'w', '1983-07-19', 1, 'Mohammadside', '77425856', '2017-04-29 21:04:24', '2014-03-02 09:19:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'm', '1971-08-31', 1, 'Lake Cristian', '1', '1991-04-27 23:44:54', '1991-01-27 09:02:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'm', '2003-09-24', 20, 'Tylerhaven', '403167139', '1976-08-24 01:44:27', '1992-10-27 15:55:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'm', '1980-05-03', 68, 'Port Laverna', '198366907', '1970-10-04 17:03:21', '1973-05-13 02:26:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'w', '1978-11-28', 95, 'Kristyville', '8445748', '2007-03-12 23:16:12', '1983-11-30 15:36:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'm', '1994-09-22', 77, 'Alexandrialand', '80', '2003-09-10 10:58:10', '2012-05-08 15:56:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'w', '1980-09-27', 95, 'Aylinfort', '1536286', '2008-02-19 07:44:24', '1991-09-28 12:11:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'w', '2004-03-25', 86, 'Judyshire', '6', '1983-12-31 22:29:15', '1974-09-06 03:00:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'm', '2000-08-25', 85, 'Murphyhaven', '24361649', '1995-07-11 17:25:37', '2001-11-30 23:43:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'm', '2002-04-06', 16, 'Lake Artfort', '62916135', '1978-03-07 14:32:16', '1978-02-06 19:43:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '1991-02-16', 90, 'DuBuqueside', '45596', '2000-07-16 03:08:58', '2017-09-23 22:06:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'm', '1981-12-26', 36, 'West Lavern', '968', '1979-12-12 14:12:06', '2009-12-22 21:03:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'm', '2007-01-22', 16, 'Glenview', '79085', '2015-11-11 22:52:29', '1999-04-10 00:07:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'w', '2011-01-08', 35, 'West Davinfort', '4', '2019-03-17 15:16:53', '1973-06-19 11:26:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'w', '1973-10-13', 89, 'New Goldenmouth', '26', '2018-03-01 11:50:36', '1979-12-09 02:43:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'm', '1991-09-17', 62, 'Rippinberg', '31', '1988-01-03 23:43:04', '1998-02-11 23:53:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'm', '1977-12-31', 3, 'Morrismouth', '993', '2000-04-06 11:22:04', '2007-12-01 06:54:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'm', '1993-02-03', 84, 'South Aydenshire', '', '1993-05-27 17:10:18', '2017-08-03 05:14:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'm', '1991-08-21', 40, 'East Arvidside', '66', '2009-02-06 21:18:50', '2019-10-17 22:01:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'm', '2007-11-06', 60, 'Margetown', '', '2011-01-29 09:00:51', '1999-11-07 14:14:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'm', '2010-02-19', 48, 'Carletonchester', '946', '1994-08-11 07:25:25', '1998-11-17 12:16:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'w', '1988-06-27', 66, 'Reillyland', '', '1982-05-22 19:49:51', '2017-08-02 06:14:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'w', '2011-12-24', 86, 'Port Chauncey', '3', '1989-05-25 06:21:01', '1987-01-15 13:28:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'w', '1990-03-31', 35, 'South Jaden', '6181', '1980-09-09 04:15:02', '1994-06-13 07:25:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'w', '1997-12-23', 27, 'Dooleyfort', '72180', '1981-04-07 03:22:50', '1990-04-10 08:43:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'm', '2009-06-06', 34, 'New Glennaport', '', '2019-12-01 06:49:18', '2003-10-01 04:42:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'm', '2013-02-05', 19, 'Zulaufton', '11413600', '1986-12-15 15:40:57', '1993-08-22 22:57:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'm', '1974-02-23', 57, 'Kundemouth', '89', '1981-04-10 15:15:33', '1970-10-03 01:19:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'm', '1996-04-04', 38, 'Dameonfort', '40608', '2006-04-02 22:46:07', '1984-11-11 09:29:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'm', '2006-05-17', 1, 'East Dantebury', '6071844', '2001-04-06 23:52:57', '1983-01-05 07:08:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'm', '1979-10-19', 43, 'Maceymouth', '85483', '1977-04-26 18:17:31', '2010-10-06 19:59:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'm', '2015-09-02', 76, 'Dawsonside', '22070414', '2012-05-01 04:46:33', '2020-06-13 00:23:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'm', '1996-04-22', 66, 'Ephraimburgh', '28', '1999-01-21 06:55:09', '1988-06-12 13:11:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'm', '1996-05-01', 71, 'New Wilmamouth', '2219', '2019-09-08 18:28:11', '1982-11-03 04:14:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'w', '1974-07-06', 2, 'New Bethanymouth', '56136019', '2006-10-25 18:57:01', '2001-12-02 21:19:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'w', '1983-06-08', 15, 'North Morris', '95', '2019-11-11 13:54:03', '1985-10-22 03:12:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'w', '1982-01-16', 71, 'Dibbertton', '92456990', '2001-10-24 11:00:32', '1976-06-15 07:35:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'm', '2012-07-01', 20, 'Port Anissa', '536', '2001-01-06 21:12:38', '1998-11-24 08:59:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'w', '2013-07-02', 46, 'Lake Eddie', '2', '1993-04-25 10:03:14', '1986-10-05 06:08:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'm', '1985-05-08', 87, 'Port Petestad', '305602121', '2009-03-24 06:17:41', '1981-02-06 03:02:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'w', '2008-11-06', 4, 'Kulasfurt', '595941', '2003-10-17 07:31:59', '1991-06-21 03:09:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'w', '1994-03-16', 80, 'East Melyssaburgh', '95', '2009-02-24 19:30:31', '1989-11-25 08:34:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'w', '2016-02-21', 80, 'East Misael', '767542597', '2005-03-16 16:15:26', '1976-01-17 03:57:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'm', '2019-03-27', 74, 'West Eloiseland', '', '1995-03-28 14:27:39', '1998-10-14 22:44:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'm', '1993-02-20', 27, 'Velvamouth', '50', '2002-10-24 20:33:56', '1990-04-18 14:53:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'm', '2008-08-04', 31, 'New Greg', '118380', '2018-11-03 03:00:19', '1978-05-05 00:06:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'w', '1981-08-22', 92, 'Port Ronfort', '547', '2007-05-16 14:32:01', '2003-05-31 06:27:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'm', '1972-11-09', 72, 'Valentinafort', '924', '2002-12-11 00:43:08', '2014-11-26 16:36:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'm', '1971-11-02', 14, 'Lake Dedric', '5554159', '1997-05-23 18:11:26', '2005-07-07 17:22:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'w', '1973-01-01', 65, 'O\'Haraburgh', '73036265', '2012-05-10 08:12:26', '2002-09-11 01:43:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'w', '1992-03-08', 23, 'South Seth', '237615591', '2007-07-15 10:22:48', '1994-06-04 10:32:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'w', '2017-12-29', 11, 'Jastmouth', '553144', '1988-10-25 00:33:26', '2005-01-12 14:56:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'w', '2001-08-20', 55, 'Paucekbury', '3', '2007-06-23 01:57:28', '2017-09-28 22:11:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'm', '2016-08-08', 64, 'Goldnerbury', '938', '2007-01-02 10:48:36', '2014-04-25 12:44:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'w', '2009-11-20', 86, 'Zboncakburgh', '7', '1970-09-15 04:21:19', '1999-12-05 13:37:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'm', '1979-05-03', 8, 'South Rethahaven', '82', '1996-06-11 07:24:23', '1995-10-27 15:38:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'w', '1986-08-18', 77, 'West Rosemarieburgh', '942', '2006-12-09 15:11:19', '1994-06-17 03:59:03');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Ewell', 'Heaney', 'rogahn.violette@example.com', '844-006-1994x0006', '1971-01-03 00:23:08', '2002-09-11 03:21:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Shaniya', 'Farrell', 'grant.krystal@example.com', '+73(5)8958760771', '1978-08-05 08:29:37', '1976-01-12 10:09:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Blanca', 'Kuvalis', 'pwilliamson@example.net', '(679)030-4842', '2017-08-25 15:09:13', '1986-01-02 02:16:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Willie', 'Nolan', 'sibyl78@example.com', '(535)272-6714x043', '1981-03-27 11:03:55', '2020-04-28 11:39:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Susana', 'Goyette', 'lubowitz.winston@example.com', '922-816-4548', '1999-10-01 16:17:10', '1983-01-02 13:57:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Giles', 'Reinger', 'adonis21@example.org', '(503)274-1733x27679', '2019-09-18 04:18:25', '1973-05-13 10:00:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Royce', 'Rowe', 'laurence04@example.org', '(783)374-5236x292', '2006-09-04 16:24:13', '1978-07-14 18:40:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Samanta', 'Abshire', 'marco.barton@example.net', '625.467.7245x81091', '1975-08-08 16:52:06', '1978-01-19 12:55:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Elody', 'Deckow', 'melyssa18@example.org', '1-796-446-5668x44825', '1991-05-01 01:06:29', '1986-05-11 22:41:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Nikko', 'Kub', 'eliezer.beier@example.net', '01343486417', '1980-08-23 03:01:00', '1979-12-31 06:55:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Jarrell', 'Weber', 'mmurphy@example.org', '(024)859-2993x629', '2009-01-14 23:40:48', '1983-01-10 03:22:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Cielo', 'Morissette', 'vivien92@example.org', '(756)799-7019', '1986-12-04 05:48:16', '1978-01-27 01:54:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Sandrine', 'Torphy', 'jtowne@example.org', '193-981-2946x79504', '1992-04-15 13:17:02', '1981-03-21 00:13:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Timmy', 'Hilll', 'adele.botsford@example.com', '859.648.9294x736', '2015-05-02 20:14:33', '1978-04-14 04:06:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Etha', 'Herman', 'aubree86@example.org', '756.809.6811', '2007-07-01 19:52:23', '1974-07-18 19:12:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Elwyn', 'Terry', 'aimee.spencer@example.net', '1-432-213-4248x218', '1986-11-05 23:35:13', '2008-10-15 05:28:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Giovani', 'Gottlieb', 'newell.beatty@example.org', '09409697591', '2018-08-04 03:48:12', '1980-03-24 02:02:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Claud', 'McCullough', 'nbuckridge@example.org', '516.404.9033x7707', '1991-08-24 15:31:05', '2008-12-12 08:35:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Monique', 'Bode', 'douglas.leffler@example.net', '02891207511', '2020-05-05 18:47:57', '2014-04-04 03:40:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Merlin', 'Harber', 'vmclaughlin@example.com', '(352)411-9310x293', '2001-05-15 04:33:46', '1981-06-05 03:16:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Cathrine', 'Ebert', 'koby93@example.org', '359-812-3190', '1980-03-06 10:26:02', '1987-07-22 20:17:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Vergie', 'Abshire', 'goyette.ethel@example.com', '879.900.9497x2113', '1999-12-11 17:53:03', '1992-02-21 17:58:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Cortez', 'Mohr', 'yost.xander@example.org', '(231)791-5559x838', '1995-09-28 21:07:04', '2006-02-08 04:58:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Angelo', 'Homenick', 'lockman.juliana@example.com', '714.555.9408', '2000-08-27 17:27:55', '1995-05-08 12:44:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Norval', 'Powlowski', 'gutmann.terrence@example.com', '536.679.6312x87638', '2018-05-14 06:25:51', '1983-09-23 08:02:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Eleonore', 'Rice', 'alberta29@example.com', '351.626.9679x462', '1990-04-24 23:43:42', '1985-03-18 10:47:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Taylor', 'Borer', 'hchristiansen@example.org', '123.956.2183x34898', '1984-02-28 20:42:00', '1990-02-24 13:44:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Alden', 'Nikolaus', 'shawna14@example.com', '676.985.1746x218', '2003-11-18 16:19:27', '2013-05-06 10:39:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Jennyfer', 'Schumm', 'asmitham@example.net', '932.614.2947', '1994-01-21 05:35:41', '1974-10-11 23:47:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Grace', 'Welch', 'omari97@example.com', '+53(6)8199016074', '2018-01-05 03:48:02', '1976-03-19 05:05:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Solon', 'Jones', 'sandra26@example.org', '482.917.5842x9879', '2018-10-03 20:33:33', '2006-09-26 15:58:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Johnson', 'Braun', 'lurline45@example.org', '433-827-8515', '1980-03-24 17:25:51', '1970-04-23 23:52:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Alek', 'Barton', 'twilderman@example.net', '665.637.7235', '2006-06-15 18:35:05', '1970-12-08 02:30:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Ansley', 'Rempel', 'dooley.angeline@example.net', '431.007.7694x6637', '2006-05-07 22:47:16', '1987-11-09 10:53:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Amari', 'McDermott', 'kstroman@example.com', '1-972-214-9903x7624', '2012-05-20 01:50:37', '2011-09-18 22:04:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Brady', 'Kohler', 'johnston.marjory@example.net', '1-498-860-1465x88202', '1991-12-28 04:04:56', '2014-11-28 10:27:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Aracely', 'Thompson', 'maverick77@example.com', '(027)718-9717', '2016-02-01 00:04:27', '1973-08-14 13:30:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Jarred', 'Johnson', 'cdenesik@example.org', '1-979-796-7104x3215', '1995-07-30 03:49:14', '2013-04-06 21:23:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Oran', 'Kilback', 'kuhn.edwardo@example.org', '03616925036', '1988-01-24 13:37:07', '1976-07-23 16:00:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Anahi', 'Welch', 'charles.kutch@example.com', '1-678-939-0772', '1987-12-04 01:54:43', '1976-01-23 20:25:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Brennan', 'Weimann', 'kovacek.gustave@example.net', '(535)118-0119x0597', '1993-02-09 03:20:51', '1999-11-28 08:35:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Renee', 'Klocko', 'lorenz.gutmann@example.com', '334-444-4225', '1972-06-01 00:55:03', '1994-03-26 21:49:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Savanah', 'O\'Keefe', 'cole.harber@example.com', '01130475921', '1989-05-27 22:10:37', '1976-07-22 14:03:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Myrtis', 'Brekke', 'greg67@example.com', '532-322-1884', '1981-11-09 17:53:33', '2006-10-12 00:00:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Dorris', 'Koss', 'tracey.wilderman@example.com', '(550)757-9448x724', '1989-11-28 18:03:52', '1987-10-10 00:07:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Marilyne', 'Buckridge', 'zkuhic@example.org', '(272)585-6017x18841', '1973-03-09 12:37:07', '2014-12-05 19:03:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Vada', 'Fisher', 'karlie28@example.net', '(696)896-8364x329', '1982-03-01 21:13:53', '1985-01-23 13:35:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Kristopher', 'O\'Hara', 'lind.trevion@example.org', '(933)162-1963', '2010-07-03 04:55:58', '2005-08-17 13:18:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Allison', 'Ledner', 'hamill.litzy@example.com', '694-783-4015', '2003-11-18 03:12:33', '2014-04-12 08:48:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Ima', 'Stracke', 'tdeckow@example.net', '06959884604', '1983-04-08 12:29:53', '1997-07-27 05:02:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Fidel', 'Walsh', 'brice05@example.org', '04397879314', '1975-07-16 22:37:45', '1975-08-15 10:32:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Roberto', 'Homenick', 'kautzer.marcella@example.com', '1-872-414-0699x15989', '1997-03-11 15:44:49', '1971-01-04 07:27:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Aiyana', 'Schamberger', 'alden.ferry@example.com', '02033517198', '1989-08-25 13:02:59', '1989-06-12 03:14:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Elisabeth', 'Terry', 'salvador08@example.org', '1-244-757-6732x522', '1980-12-31 06:43:23', '2016-06-24 06:16:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Angelina', 'Cole', 'torp.westley@example.org', '+20(1)5022696799', '1989-04-30 18:05:40', '2006-03-15 18:59:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Maddison', 'Pacocha', 'waelchi.judd@example.com', '906.214.6856x60562', '2006-04-02 00:50:21', '1996-05-17 02:33:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Chadrick', 'Howe', 'bailee.hodkiewicz@example.com', '543.884.3591x108', '1984-08-31 14:34:15', '2014-03-21 11:56:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Ernestine', 'Bailey', 'candelario.krajcik@example.org', '+24(1)7604882239', '2010-10-27 12:05:39', '1971-05-07 13:11:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Ella', 'Lakin', 'david.wehner@example.net', '1-294-773-6329x1677', '1998-12-13 23:26:17', '1970-03-14 07:14:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Danika', 'Goyette', 'gdeckow@example.net', '1-586-858-5266x63422', '2008-01-30 07:44:55', '1976-07-09 01:43:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Jake', 'Ullrich', 'pollich.duane@example.com', '+14(6)7921983464', '2012-11-17 22:38:51', '2008-08-30 10:44:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Cristian', 'Murazik', 'edythe.sawayn@example.org', '266-616-4589x091', '1975-02-07 15:13:39', '2020-04-26 21:48:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Jayden', 'Kohler', 'lhammes@example.com', '128.389.9892x9165', '1977-04-15 09:10:58', '1975-05-31 11:12:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Felicita', 'Bernier', 'rachel.marquardt@example.org', '(681)658-9259x080', '1974-08-06 22:34:50', '1980-02-18 23:18:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Celia', 'Towne', 'norberto.lang@example.com', '679.298.8691', '1986-03-21 13:09:07', '1989-01-25 00:43:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Freda', 'McCullough', 'yvette21@example.net', '047-356-9742x9353', '1981-05-09 06:11:15', '1982-11-03 21:50:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Carey', 'Goyette', 'murazik.mattie@example.net', '1-141-221-4104x222', '1985-05-18 12:29:05', '2009-12-07 20:54:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Schuyler', 'Casper', 'mmcclure@example.net', '1-515-247-4962x70801', '1973-09-30 00:30:13', '1971-03-23 01:29:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Vernice', 'Lindgren', 'zhackett@example.com', '188-456-6622', '2020-05-04 05:56:48', '1983-08-05 07:43:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Raquel', 'Hilpert', 'cruz.hessel@example.com', '1-044-240-8084', '1971-07-16 15:37:07', '1991-06-29 11:19:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Willy', 'Kohler', 'dcruickshank@example.org', '+93(1)9965433613', '1974-03-31 14:26:48', '1972-06-16 11:25:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Demetris', 'Wiza', 'green.adele@example.net', '+18(1)9964302655', '1970-09-19 01:14:43', '1981-09-11 18:33:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Jeffery', 'Donnelly', 'esteban.prosacco@example.net', '(918)140-0232x062', '1994-05-12 06:10:18', '2018-07-26 19:26:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Chelsie', 'Kub', 'ugaylord@example.com', '+35(5)4733077069', '2003-12-12 20:53:48', '2018-04-24 04:58:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Susana', 'Jacobi', 'sbatz@example.net', '+08(1)3664157579', '1985-11-19 13:48:02', '1993-06-29 09:50:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Madge', 'Shanahan', 'augustus98@example.net', '464.524.9207x003', '2008-03-26 10:37:09', '2010-11-22 11:16:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Brad', 'Kerluke', 'labadie.willy@example.com', '870-773-6386', '1984-10-14 14:41:34', '2009-08-14 09:52:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Charles', 'Tillman', 'markus.rohan@example.net', '101-994-8026x82636', '1979-10-14 00:59:26', '2001-09-22 20:14:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Darrell', 'Gerhold', 'casey56@example.net', '01517149051', '1975-03-12 18:19:41', '1995-07-17 19:08:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'George', 'Lesch', 'stokes.paige@example.org', '+34(6)9619455711', '2015-11-06 23:05:07', '2008-03-05 17:10:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Samanta', 'Ward', 'west.jarrod@example.net', '1-326-462-2446x8160', '1985-03-16 02:26:02', '1992-09-24 02:38:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Cordell', 'Kutch', 'aufderhar.ariane@example.com', '207.870.9135x89729', '2009-11-22 12:47:16', '2017-09-07 13:38:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Remington', 'Hyatt', 'lindsey15@example.net', '01146951776', '1995-05-24 16:45:55', '2008-11-22 16:52:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Delpha', 'McClure', 'qgaylord@example.net', '(347)795-8129x66887', '2008-04-08 00:26:23', '2008-07-05 11:15:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Mallie', 'Quigley', 'dolly.ondricka@example.com', '(045)206-8947x806', '2004-08-01 20:45:42', '1970-11-22 21:15:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Agnes', 'Cronin', 'xwalsh@example.org', '146.361.0103', '1991-01-31 20:24:34', '2018-04-21 04:26:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Ryleigh', 'Beahan', 'adrienne37@example.net', '834-822-3826x50209', '1983-08-17 08:16:05', '2010-05-10 19:19:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Hector', 'Douglas', 'spinka.wilfred@example.com', '+90(1)7202187796', '1981-07-28 03:43:19', '2012-09-11 01:31:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Cody', 'Bauch', 'jammie08@example.com', '(323)058-1793x91690', '1983-07-11 06:34:07', '1999-12-02 11:25:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Mable', 'Stiedemann', 'jacobson.burley@example.com', '151-581-8512', '2007-10-02 22:17:04', '2019-09-10 11:55:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Kathleen', 'Deckow', 'ufritsch@example.com', '392.236.2795', '2003-08-22 11:49:22', '1992-04-08 09:12:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Ursula', 'Wilkinson', 'lesch.betsy@example.net', '05087391824', '1972-11-13 02:03:04', '1993-10-26 23:51:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Camylle', 'Lang', 'o\'connell.harold@example.net', '(785)222-3667x740', '1991-04-06 05:09:36', '1997-07-06 08:59:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Felicity', 'Green', 'vida79@example.org', '(830)790-1018x68940', '1974-06-22 13:29:36', '1987-12-15 14:17:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Angeline', 'Moore', 'streich.tamara@example.com', '(741)514-7828', '2003-07-03 13:48:24', '1973-06-26 10:12:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Joshua', 'Abernathy', 'cory.haley@example.org', '1-410-722-5157x2541', '1976-07-05 04:29:18', '1971-01-29 15:44:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Damaris', 'Barton', 'stroman.kylie@example.org', '1-869-210-3970x15446', '1992-10-26 17:07:41', '1974-10-07 15:42:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Chanelle', 'Jerde', 'dicki.kyleigh@example.org', '403.174.4398x4472', '1984-11-04 13:15:37', '2002-01-15 11:45:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Rebeca', 'Wintheiser', 'martine.vonrueden@example.org', '002.264.7568x2829', '1978-09-03 22:25:06', '2016-06-21 19:16:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Rex', 'Veum', 'ejones@example.org', '1-232-905-3858x699', '1970-02-22 16:22:16', '1989-07-15 14:24:42');


