select profiles.gender, count(likes.id) from likes
	join users on users.id = likes.user_id
	join profiles on users.id = profiles.user_id
	group by gender limit 1;

-- без вложеного запроса не вышло
select count(likes.id) from users
	join likes on users.id = likes.target_id and likes.target_type_id = 2 and users.id in (select * from (select users.id
from
  users
order by users.birthday DESC
limit 10) as temp);

-- запрос был без вложенного запроса, так что и джоина тут не нужно.
select user_id from posts group by user_id order by count(body) limit 10;
