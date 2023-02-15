use homework;

create table if not exists phone                            -- Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными
(
    id int primary key auto_increment,
    phone_name varchar(20),
    manufacturer varchar(20),
    phone_count int,
    price decimal
);

insert phone (phone_name, manufacturer, phone_count, price)
values ('iPhone X', 'Apple', 3, 76000),
       ('iPhone 8', 'Apple', 2, 51000),
       ('Galaxy S9', 'Samsung', 2, 56000),
       ('Galaxy S8', 'Samsung', 1, 41000),
       ('P20 Pro', 'Huawei', 5, 36000);

select                                                      -- Выведите название, производителя и цену для товаров, количество которых превышает 2
    phone_name as name,
    manufacturer,
    price
from
    phone
where
    phone_count > 2;

select phone_name from phone where manufacturer = 'Apple';  -- Выведите весь ассортимент товаров марки “Samsung”

select                                                      -- Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000**
    phone_name,
    phone_count * price as total_check
from
    phone
where
    phone_count * price between 10000 and 145000;

                                                            -- С помощью регулярных выражений найти
select * from phone where phone_name like '%iPhone%';       -- Товары, в которых есть упоминание "Iphone"

select * from phone where phone_name like '%Galaxy%';       -- "Galaxy"

select * from phone where phone_name regexp '[0-9]';        -- Товары, в которых есть ЦИФРЫ

select * from phone where phone_name regexp '8';            -- Товары, в которых есть ЦИФРА "8"
