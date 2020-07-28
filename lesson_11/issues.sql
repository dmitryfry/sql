-- Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs
-- и products в таблицу logs помещается время и дата создания записи, название таблицы,
-- идентификатор первичного ключа и содержимое поля name.

CREATE TABLE logs (
  `table_name` VARCHAR(255) COMMENT 'Имя таблицы',
  `record_id`  int(10) unsigned NOT NULL COMMENT 'Ссылка на id записи',
  `record_name` VARCHAR(255) COMMENT 'Имя записи',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки'
) ENGINE=Archive;

DELIMITER -

CREATE TRIGGER users_insert_logs
AFTER INSERT
ON users FOR EACH ROW
BEGIN
        INSERT INTO logs(table_name, record_id, record_name)
        VALUES('users',new.id,  CONCAT(new.first_name, ' ' , new.last_name));
END-

CREATE TRIGGER catalogs_insert_logs
AFTER INSERT
ON catalogs FOR EACH ROW
BEGIN
        INSERT INTO logs(table_name, record_id, record_name)
        VALUES('catalogs', new.id,  new.name);
END-

CREATE TRIGGER products_insert_logs
AFTER INSERT
ON products FOR EACH ROW
BEGIN
        INSERT INTO logs(table_name, record_id, record_name)
        VALUES('products',new.id,  new.name);
END-

DELIMITER ;

INSERT users(first_name, last_name, email, phone) VALUES ('Rex1', 'Veum1', 'ejones@example1.org2', '1-232-905-3858x69912');

SELECT * from logs;
