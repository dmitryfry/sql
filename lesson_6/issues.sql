select if((select count(*) from likes where id IN (select user_id from profiles where gender = 'w')) >
(select count(*) man from likes where id IN (select user_id from profiles where gender = 'm')), 'woman', 'man');

select count(*) from likes where target_type_id = 2 and target_id in (select * from (select id
from
  users
order by birthday DESC
limit 10) as temp);

select user_id from posts group by user_id order by count(body) limit 10;
