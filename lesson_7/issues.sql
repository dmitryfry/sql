select u.name from users u join orders o on u.id = o.user_id;

select  c2.name, p2.name from catalogs c2 join products p2 on c2.id = p2.catalog_id and c2.name = 'Процессоры';
