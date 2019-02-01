create database if not exists users_db;
use users_db;

create table if not exists users (
user_id int unsigned not null auto_increment,
user_email VARCHAR(50),
user_password VARCHAR(50),
primary key (user_id)
);

alter table users
add unique (user_password);

alter table users
add unique (user_email);

create table if not exists ads (
ads_id int unsigned not null auto_increment,
title VARCHAR (50),
description VARCHAR(200),
user_id int unsigned not null,l
primary key (ads_id),
foreign key (user_id) references users(user_id)
);

create table if not exists category (
categories VARCHAR(20),
ads_id int unsigned not null,
foreign key (ads_id) references ads(ads_id)
);

insert into users(user_email, user_password)
values('sarahb@example.com', 'sarab'),
      ('lexim@example.com', 'lexim');



select * from users;


