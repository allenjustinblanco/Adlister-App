create database if not exists users_db;
use users_db;

select *
from users;

select *
from ads;

select *
from category;

select *
from ads_category;

-- For a given ad, what is the email address of the user that created it?

select user_email
from users
join ads on ads.user_id = users.id
where ads.id = 2;

-- For a given ad, what category, or categories, does it belong to?

select categories
from category
join ads_category as adc on adc.categories_id = category.id
join ads as ad on ad.id = adc.ads_id
where ad.id = 2;

-- For a given category, show all the ads that are in that category.

select title
from ads
join ads_category as adc on adc.ads_id = ads.id
join category as cat on cat.id = adc.categories_id
where cat.id = 2;


-- For a given user, show all the ads they have posted.

select ads


