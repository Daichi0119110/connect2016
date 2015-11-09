create database connect;

grant all on connect.* to dbuser@localhost identified by 'connect2016';

use connect;

/*usersのテーブル作成*/
create table users (
    id int not null auto_increment primary key,
    facebook_id bigint,
    username varchar(50),
    email varchar(255),
    university_id int,
    self_introduction varchar(400),
    japanese_university varchar(100),
    study_start date,
    study_finish date,
    study_grade varchar(255),
    study_major varchar(255),
    birthday date,
    gender varchar(50), 
    created datetime default null,
    modified datetime default null
);

/*postsのテーブル作成*/
create table posts (
    id int not null auto_increment primary key,
    user_id int,
    university_id int,
    title text,
    body text,
    created datetime default null,
    modified datetime default null
);

/*reviewsのテーブル作成*/
create table reviews (
    id int not null auto_increment primary key,
    user_id int,
    university_id int,
    category_id int,
    body text,
    created datetime default null,
    modified datetime default null
);



/*countriesのテーブル作成*/
create table countries (
    id int not null auto_increment primary key,
    countryname varchar(255)
  );

/*データの挿入*/
insert into countries (countryname) values
('America'),
('Japan'),
('Belgium'),
('France'),
('Italy'),
('Korea'),
('China'),
('India');


/*universitiesのテーブル作成*/
create table universities (
    id int not null auto_increment primary key,
    country_id int ,
    universityname varchar(255)
   );

/*データの挿入*/
insert into universities (country_id, universityname) values 
(3,'Ghent'),
(1,'UCLA'),
(2,'Keio'),
(2,'Titech');

/*categoriesのテーブル作成*/
create table categories (
    id int not null auto_increment primary key,
    categoryname varchar(50)
    );

/*データの挿入*/
insert into categories (categoryname) values 
('city'),
('university'),
('food');
