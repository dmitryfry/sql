create database examples;
create table users(id serial  primary key, name varchar(255));
create database sample;

/*
mysqldump examples > examples.sql
mysql sample < examples.sql

mysqldump --opt --where="1 limit 100" examples users > examples_users_100.sql
*/
