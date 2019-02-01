drop database if exists users_db;
create database if not exists users_db;
use users_db;

drop table if exists users;
create table users (
id int unsigned not null auto_increment primary key,
user_name varchar(50) unique,
user_email VARCHAR(50) unique ,
user_password VARCHAR(50) unique
);

drop table if exists ads;
create table ads (
id int unsigned not null auto_increment primary key,
title VARCHAR (50) not null ,
description VARCHAR(200) not null ,
category varchar(50) not null,
user_id int unsigned not null,
foreign key (user_id) references users(id)
);

drop table if exists category;
create table category (
categories VARCHAR(20),
id int unsigned not null auto_increment primary key
);

drop table if exists ads_category;
create table ads_category(
  ads_id int unsigned not null,
  categories_id int unsigned not null,
  foreign key (ads_id) references ads(id),
  foreign key (categories_id) references category(id)
);

INSERT INTO category (categories)
values
('community'),
('services'),
('housing'),
('for sale'),
('jobs');


insert into users(user_name, user_email, user_password)
values('Sarah','sarahb@example.com', 'saraB'),
      ('Lexi', 'lexim@example.com', 'lexiM'),
      ('Justin', 'Justinb@example.com', 'Justino'),
      ('Karla', 'Karla@example.com', 'Karlangas');


insert into ads(title, description,category, user_id)
values
('title1', 'ad1','housing', 1),
('title2', 'ad2','jobs, community', 2),
('title3', 'ad3','community, services', 3),
('title4', 'ad4','jobs', 4),
('title5', 'ad5','housing, services', 3),
('title6', 'ad6','jobs', 2),
('title7', 'ad7','housing, for sale', 4);


insert into ads_category(ads_id, categories_id)
values (1,3),
(2, 5),
(2, 1),
(3,1),
(3,2),
(4,5),
(5,2),
(5,3),
(6,5),
(7,3),
(7,4);





