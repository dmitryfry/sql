-- 1. Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.

CREATE INDEX posts_head_idx on posts (head);
CREATE INDEX users_first_name_last_name_idx ON users (first_name, last_name);

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

SELECT DISTINCT communities.name,communities.id,
 	((select count(*) from users) / (select count(*) from communities)) as user_avg,
	FIRST_VALUE(users.id) OVER wa AS oldest_user_in_group,
	FIRST_VALUE(users.id) OVER wd AS youngest_user_in_group,
	COUNT(communities_users.user_id) OVER w AS all_users_count_group,
	(select count(*) from users),
	COUNT(communities_users.user_id) OVER w / (select count(*) from users) * 100 AS "%%"
	    FROM communities
	      JOIN communities_users
	        ON communities.id = communities_users.community_id
	      JOIN users
	     	on communities_users.user_id = users.id
	     	WINDOW w AS (PARTITION BY communities.id),
					wa AS (PARTITION BY communities.id ORDER BY users.birthday),
					wd AS (PARTITION BY communities.id ORDER BY users.birthday DESC);

-- хотелось бы увидеть как должно это в идеале быть, оконные функции для меня в новинку.
