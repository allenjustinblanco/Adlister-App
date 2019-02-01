create database if not exists users_db;
use users_db;
drop table users;
create table if not exists users (
user_id int unsigned not null auto_increment,
user_name varchar(50),
user_email VARCHAR(50),
user_password VARCHAR(50),
primary key (user_id)
);

alter table users
add unique (user_name);

alter table users
add unique (user_password);

alter table users
add unique (user_email);

create table if not exists ads (
ads_id int unsigned not null auto_increment,
title VARCHAR (50),
description VARCHAR(200),
user_id int unsigned not null,
primary key (ads_id),
foreign key (user_id) references users(user_id)
);

create table if not exists category (
categories VARCHAR(20),
ads_id int unsigned not null,
foreign key (ads_id) references ads(ads_id)
);

INSERT INTO category (categories, ads_id) VALUES ('community', 1);
INSERT INTO category (categories, ads_id) VALUES ('services', 2);
INSERT INTO category (categories, ads_id) VALUES ('housing', 3);
INSERT INTO category (categories, ads_id) VALUES ('for sale', 4);
INSERT INTO category (categories, ads_id) VALUES ('jobs', 1);


# insert into users(user_email, user_password)
# values('sarahb@example.com', 'saraB'),
#       ('lexim@example.com', 'lexiM');


insert into ads(title, description, user_id)
values
('example_title', 'example_description', 1),
('example_description_2', 'example_description_2', 2);



