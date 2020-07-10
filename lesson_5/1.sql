-- issue 1.1
UPDATE users SET created_at = NOW(), updated_at = NOW();
-- issue 1.2
ALTER TABLE users MODIFY COLUMN created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE users MODIFY COLUMN updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
-- issue 1.3
SELECT value FROM storehouses_products order by case value when 0 then 2 else 1 end, value

-- issue 2.1
SELECT
AVG( YEAR(now()) - YEAR(birthday)) as avg_age
FROM users
WHERE birthday IS NOT NULL;

-- issue 2.2
Select COUNT(*) as monday from users where weekday(birthday) = 1;
Select COUNT(*) as tuesday from users where weekday(birthday) = 2;
Select COUNT(*) as wednesday from users where weekday(birthday) = 3;
Select COUNT(*) as thursday from users where weekday(birthday) = 4;
Select COUNT(*) as friday from users where weekday(birthday) = 5;
Select COUNT(*) as saturday from users where weekday(birthday) = 6;
Select COUNT(*) as sunday from users where weekday(birthday) = 7;
