use users_db;

create table users (
id int unsigned not null auto_increment,
user_email VARCHAR(50),
user_password VARCHAR(50),
primary key (id)
);

alter table users
add unique (user_password);

alter table users
add unique (user_email);

create table ads (
id int unsigned not null auto_increment,
title VARCHAR (50),
description VARCHAR(200),
user_id int unsigned not null,
primary key (id),
foreign key (user_id) references users(id)
);

create table category (
categories VARCHAR(20),
ads_id int unsigned not null,
foreign key (ads_id) references ads(id)
);

insert into users(user_email, user_password)
values('sarahb@example.com', 'sarab'),
      ('lexim@example.com', 'lexim');

