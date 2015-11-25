create database connect;

grant all on connect.* to dbuser@localhost identified by 'connect2016';
use connect;

/*usersのテーブル作成*/
create table users (
    id int not null auto_increment primary key,
    facebook_id bigint,
    name varchar(50),
    filename varchar(255),
    university_id int,
    birthday date,
    gender varchar(10), /*女or男*/
    self_intro text,
    study_end date,
    study_start date,
    study_grade varchar(255),
    study_major varchar(255),
    last_login date,
    created datetime default null,
    modified datetime default null
);

/*areasのテーブル作成*/
create table areas (
    id int not null auto_increment primary key,
    area varchar(255)
);

/*countriesのテーブル作成*/
create table countries (
    id int not null auto_increment primary key,
    country varchar(255),
    area_id int
);

/*universitiesのテーブル作成*/
create table universities (
    id int not null auto_increment primary key,
    university varchar(255),
    country_id int,
    created datetime default null,
    modified datetime default null
);

/*categoriesのテーブル作成*/
create table categories (
    id int not null auto_increment primary key,
    category varchar(255),
    question text
);

/*tagsのテーブル作成*/
create table tags (
    id int not null auto_increment primary key,
    tag varchar(255)
);



/*reviewsのテーブル作成*/
create table reviews (
    id int not null auto_increment primary key,
    user_id int,
    category_id int,
    university_id int,
    content text,
    created datetime default null,
    modified datetime default null
);

/*scoresのテーブル作成*/
create table scores (
    id int not null auto_increment primary key,
    user_id int,
    tag_id int,
    university_id int,
    score int,
    created datetime default null,
    modified datetime default null
);

/*favorite_revsのテーブル作成*/
create table favorite_revs (
    id int not null auto_increment primary key,
    fav_flg int,
    user_id int,
    review_id int,
    created datetime default null,
    modified datetime default null
);

/*favorite_usesのテーブル作成*/
create table favorite_uses (
    id int not null auto_increment primary key,
    fav_flg int,
    user_id int,
    target int, /*target = お気に入りした人のid*/
    created datetime default null,
    modified datetime default null
);

/*favorite_unisのテーブル作成*/
create table favorite_unis (
    id int not null auto_increment primary key,
    fav_flg int,
    user_id int,
    university_id int,
    created datetime default null,
    modified datetime default null
);

/*questionsのテーブル作成*/
create table questions (
    id int not null auto_increment primary key,
    user_id int,
    question text,
    university_id int,
    created datetime default null,
    modified datetime default null
);

/*answersのテーブル作成*/
create table answers (
    id int not null auto_increment primary key,
    user_id int,
    answer text,
    university_id int,
    created datetime default null,
    modified datetime default null
);

/*picturesのテーブル作成*/
create table pictures (
    id int not null auto_increment primary key,
    filename varchar(255),
    university_id int,
    user_id int,
    comment text,
    created datetime default null,
    modified datetime default null
);

