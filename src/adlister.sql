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


insert into users(user_email, user_password)
values('sarahb@example.com', 'saraB'),
      ('lexim@example.com', 'lexiM');


insert into ads(title, description,category, user_id)
values
('example_title', 'example_description','housing', 1),
('example_description_2', 'example_description_2','jobs', 2);

describe category;



