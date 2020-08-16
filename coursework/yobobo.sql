-- база данных для приложения показывающего рекламу за бонусы
-- в основном от ритейла
-- ведется учет пользователей, их счетов и анкет для таргетирования.

use yobobo;

DROP TABLE IF EXISTS `user_video_actions`;
DROP TABLE IF EXISTS `customers`;
DROP TABLE IF EXISTS `admins`;
DROP TABLE IF EXISTS `user_gift_cards`;
DROP TABLE IF EXISTS `giftcards`;
DROP TABLE IF EXISTS `ad_compaings`;
DROP TABLE IF EXISTS `questionnaires`;
DROP TABLE IF EXISTS `videos`;
DROP TABLE IF EXISTS `b2b_clients`;
DROP TABLE IF EXISTS `users`;
-- users пользователь мобильного приложения

CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` int DEFAULT NULL,
  `pin` int DEFAULT NULL,
  `emailChecked` tinyint(1) DEFAULT '0',
  `confirm_token` varchar(255) DEFAULT NULL,
  `lastDateOnline` varchar(255) DEFAULT NULL,
  `current_video_coeff` float DEFAULT NULL,
  `current_balance` float DEFAULT NULL,
  `location_coeff` int DEFAULT NULL,
  `user_coeff` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- b2b_clients пользователи веб сайта создающие рекламные компании
CREATE TABLE `b2b_clients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `company_name` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_b2b_clients_on_email` (`email`),
  UNIQUE KEY `index_b2b_clients_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- videos рекламные видеоматериалы
CREATE TABLE `videos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `b2b_client_id` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `was_watched` int DEFAULT NULL,
  `ad_compaing_ids` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_videos_on_b2b_client_id` (`b2b_client_id`),
  FOREIGN KEY (b2b_client_id) REFERENCES b2b_clients(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- questionnaires анкета для users в мобильном приложении
CREATE TABLE `questionnaires` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `education` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `income` varchar(255) DEFAULT NULL,
  `family` varchar(255) DEFAULT NULL,
  `children` int DEFAULT NULL,
  `car` int DEFAULT NULL,
  `motorcycle` int DEFAULT NULL,
  `computer_games` int DEFAULT NULL,
  `banks` int DEFAULT NULL,
  `cinema` int DEFAULT NULL,
  `alcohol` varchar(255) DEFAULT NULL,
  `tobacco` varchar(255) DEFAULT NULL,
  `vegeterian` varchar(255) DEFAULT NULL,
  `sport` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_questionnaires_on_user_id` (`user_id`),
  FOREIGN KEY (user_id) REFERENCES users(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ad_compaings рекламная компания
CREATE TABLE `ad_compaings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `b2b_client_id` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `family_status` varchar(255) DEFAULT NULL,
  `children` tinyint(1) DEFAULT NULL,
  `car_owner` tinyint(1) DEFAULT NULL,
  `moto_owner` tinyint(1) DEFAULT NULL,
  `alcohol` varchar(255) DEFAULT NULL,
  `tabaco` varchar(255) DEFAULT NULL,
  `vegetarian` tinyint(1) DEFAULT NULL,
  `computer_games` tinyint(1) DEFAULT NULL,
  `fitness` tinyint(1) DEFAULT NULL,
  `bank_cards` tinyint(1) DEFAULT NULL,
  `regions` varchar(255) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `each_person_viewing` int DEFAULT NULL,
  `each_person_insequense_viewing` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `age_group` varchar(255) DEFAULT NULL,
  `income` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ad_compaings_on_b2b_client_id` (`b2b_client_id`),
  FOREIGN KEY (b2b_client_id) REFERENCES b2b_clients(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- customers пользователи веб сайта, которые администрируют подарочные карты
CREATE TABLE `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- giftcards шаблоны подарочных карт, возможные к покупке за баллы
CREATE TABLE `giftcards` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ad_compaing_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_giftcards_on_ad_compaing_id` (`ad_compaing_id`),
  FOREIGN KEY (ad_compaing_id) REFERENCES ad_compaings(id),
  FOREIGN KEY (customer_id) REFERENCES customers(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- user_gift_cards подарочные карты пользователя мобильного приложения
CREATE TABLE `user_gift_cards` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `giftcard_id` bigint DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `day_bought` datetime DEFAULT NULL,
  `is_activated` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `paid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_user_gift_cards_on_user_id` (`user_id`),
  KEY `index_user_gift_cards_on_giftcard_id` (`giftcard_id`),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (giftcard_id) REFERENCES giftcards(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- admin администраторы системы (админка на веб сайте)
CREATE TABLE `admins` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- user_video_actions учет отсмотренного видеоматериала пользователями мобильного приложения
CREATE TABLE `user_video_actions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `video_id` bigint DEFAULT NULL,
  `action_type` int DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `income` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `was_watched` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_video_actions_on_user_id` (`user_id`),
  KEY `index_user_video_actions_on_video_id` (`video_id`),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (video_id) REFERENCES videos(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
