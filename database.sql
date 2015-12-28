create database connect;

grant all on connect.* to dbuser@localhost identified by 'connect2016';
use connect;

/*usersのテーブル作成*/
create table users (
    id int not null auto_increment primary key,
    facebook_id bigint,
    name varchar(50),
    image varchar(255),
    university_id int,
    birthday date,
    gender varchar(10), /*女or男*/
    self_intro text,
    study_end date,
    study_start date,
    study_grade varchar(255),
    study_major varchar(255),
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
    supplement varchar(255),
    question text,
    example text,
    image varchar(255)
);

/*tagsのテーブル作成*/
create table tags (
    id int not null auto_increment primary key,
    tag varchar(255),
    question text,
    good text,
    bad text
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
create table clips (
    id int not null auto_increment primary key,
    user_id int,
    review_id int,
    answer_id int,
    created datetime default null,
    modified datetime default null
);

/*favorite_usesのテーブル作成*/
create table favorite_uses (
    id int not null auto_increment primary key,
    user_id int,
    target int, /*target = お気に入りした人のid*/
    created datetime default null,
    modified datetime default null
);

/*favorite_unisのテーブル作成*/
create table favorite_unis (
    id int not null auto_increment primary key,
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
    question_id int,
    created datetime default null,
    modified datetime default null
);

/*picture_unisのテーブル作成*/
create table picture_unis (
    id int not null auto_increment primary key,
    image varchar(255),
    university_id int,
    user_id int,
    comment text,
    created datetime default null,
    modified datetime default null
);

/*reportsのテーブル作成*/
create table reports (
    id int not null auto_increment primary key,
    user_id int,
    university_id int,
    filename varchar(255),
    created datetime default null,
    modified datetime default null
);

/*usersのダミーデータ*/
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (1, 2, 'Female', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Virginia Peters', 'Engineer IV', 'lorem id.tiff', '1992/12/17', '2012/05/14', '2013/04/10', 'Biology', 'B4', '2014/02/06', '2015-02-04');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (2, 2, 'Female', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Diana Duncan', 'Civil Engineer', 'nulla pede ullamcorper.png', '1991/04/06', '2012/05/09', '2013/04/04', 'Literature', 'B2', '2014/08/31', '2015-10-16');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (3, 3, 'Female', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Christina Young', 'Senior Sales Associate', 'ut massa volutpat.gif', '1992/04/28', '2012/09/20', '2013/10/28', 'Phisics', 'M1', '2014/05/25', '2015-10-08');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (4, 2, 'Male', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Harold West', 'GIS Technical Architect', 'a suscipit.png', '1995/07/06', '2012/07/21', '2013/10/01', 'Phisics', 'D1', '2014/02/17', '2015-01-14');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (5, 4, 'Male', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Scott Wilson', 'Actuary', 'varius ut blandit.tiff', '1993/05/09', '2012/09/13', '2013/08/21', 'Phisics', 'B3', '2014/11/28', '2015-02-10');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (6, 1, 'Male', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Scott Crawford', 'Research Assistant III', 'vestibulum sit amet.tiff', '1994/12/10', '2012/02/15', '2013/09/12', 'Mechanics', 'D1', '2014/02/27', '2015-04-15');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (7, 4, 'Male', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Patrick Carter', 'VP Accounting', 'integer tincidunt.png', '1991/12/04', '2012/08/21', '2012/12/29', 'Economy', 'D1', '2014/06/29', '2015-03-19');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (8, 3, 'Female', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'Irene Grant', 'Technical Writer', 'porttitor lorem.jpeg', '1991/09/30', '2012/11/01', '2013/08/28', 'Literature', 'D1', '2014/11/10', '2014-12-16');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (9, 1, 'Male', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'William Long', 'Recruiting Manager', 'habitasse.tiff', '1992/09/29', '2012/08/19', '2013/10/14', 'Biology', 'M1', '2014/06/03', '2015-06-30');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (10, 1, 'Male', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Jerry Willis', 'Programmer Analyst IV', 'consequat dui nec.tiff', '1991/08/30', '2012/04/15', '2013/03/19', 'Mechanics', 'M1', '2014/05/22', '2015-02-28');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (11, 4, 'Male', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Randy Torres', 'Quality Control Specialist', 'duis.gif', '1995/09/16', '2012/09/10', '2013/04/25', 'Mechanics', 'B1', '2013/12/23', '2015-07-23');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (12, 1, 'Female', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Helen Mendoza', 'Paralegal', 'molestie.png', '1994/03/02', '2012/05/11', '2013/10/28', 'Literature', 'B4', '2014/01/21', '2015-01-18');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (13, 3, 'Male', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Matthew Thomas', 'Systems Administrator II', 'sit.jpeg', '1993/11/15', '2012/03/01', '2013/11/09', 'Phisics', 'D1', '2014/11/10', '2015-08-23');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (14, 4, 'Male', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Jeremy Gilbert', 'Community Outreach Specialist', 'turpis eget elit.png', '1993/09/03', '2011/12/21', '2013/05/25', 'Mechanics', 'B1', '2014/05/08', '2014-12-22');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (15, 2, 'Female', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Susan Campbell', 'Safety Technician I', 'proin leo.jpeg', '1991/10/30', '2012/02/17', '2013/05/21', 'Economy', 'B3', '2013/12/11', '2015-08-11');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (16, 3, 'Female', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Frances Taylor', 'Chemical Engineer', 'pellentesque ultrices phasellus.png', '1991/12/26', '2012/11/19', '2013/09/02', 'Economy', 'B2', '2013/12/10', '2015-11-14');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (17, 2, 'Male', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Joe Mason', 'Speech Pathologist', 'diam.tiff', '1992/07/07', '2012/11/10', '2013/10/05', 'Phisics', 'B2', '2014/01/20', '2015-09-15');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (18, 4, 'Male', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Todd Fox', 'Business Systems Development Analyst', 'amet diam in.jpeg', '1991/06/18', '2011/12/26', '2013/03/24', 'Mathematics', 'B3', '2014/05/29', '2015-11-28');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (19, 1, 'Male', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Benjamin Rice', 'Nurse', 'morbi quis.tiff', '1995/10/09', '2012/04/26', '2013/06/02', 'Phisics', 'D2', '2014/07/19', '2015-08-10');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (20, 1, 'Female', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Lillian Reed', 'Human Resources Assistant IV', 'diam cras.gif', '1995/04/11', '2012/04/05', '2013/07/13', 'Mechanics', 'B3', '2014/01/14', '2015-04-09');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (21, 4, 'Female', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Margaret Brown', 'Operator', 'aliquam non mauris.png', '1995/11/21', '2012/01/30', '2013/11/04', 'Mechanics', 'M2', '2014/01/21', '2015-01-24');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (22, 3, 'Female', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Michelle Berry', 'Nurse', 'pharetra.jpeg', '1992/04/30', '2012/01/06', '2013/06/01', 'Literature', 'M1', '2014/08/10', '2015-10-01');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (23, 3, 'Male', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Timothy Cunningham', 'Civil Engineer', 'convallis tortor.jpeg', '1994/07/22', '2012/08/15', '2013/11/03', 'Mechanics', 'B3', '2014/02/08', '2015-10-25');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (24, 2, 'Female', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Jean Gordon', 'Chief Design Engineer', 'blandit non.png', '1993/08/14', '2012/06/27', '2013/10/19', 'Mechanics', 'B1', '2014/04/13', '2015-04-09');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (25, 1, 'Male', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Aaron Flores', 'Account Coordinator', 'maecenas rhoncus aliquam.jpeg', '1991/11/05', '2012/07/04', '2013/05/28', 'Literature', 'M1', '2014/02/19', '2015-10-07');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (26, 2, 'Female', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Kimberly Young', 'Desktop Support Technician', 'est.png', '1992/06/23', '2012/04/29', '2012/12/06', 'Literature', 'D1', '2014/10/01', '2014-12-08');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (27, 4, 'Female', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Christine Gray', 'Operator', 'rhoncus aliquam lacus.tiff', '1991/01/06', '2012/05/16', '2013/07/21', 'Mechanics', 'D2', '2014/01/25', '2015-02-21');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (28, 1, 'Female', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Linda Holmes', 'Civil Engineer', 'suspendisse ornare.gif', '1993/10/18', '2012/01/18', '2013/09/19', 'Biology', 'B3', '2014/08/25', '2015-08-01');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (29, 1, 'Male', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Ronald Jordan', 'Chemical Engineer', 'consectetuer adipiscing.png', '1994/10/20', '2012/09/23', '2013/08/26', 'Literature', 'M1', '2014/11/26', '2015-01-10');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (30, 2, 'Female', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Nancy Stephens', 'Software Consultant', 'volutpat.tiff', '1992/11/11', '2011/12/27', '2013/10/30', 'Economy', 'B4', '2014/09/15', '2014-11-30');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (31, 3, 'Female', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Amy Harris', 'Structural Engineer', 'phasellus in felis.tiff', '1993/02/06', '2012/05/14', '2013/03/15', 'Economy', 'D1', '2014/01/19', '2015-03-18');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (32, 1, 'Male', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'James Bailey', 'Assistant Manager', 'id.tiff', '1995/09/09', '2012/07/15', '2013/03/17', 'Mechanics', 'B3', '2014/03/24', '2015-06-11');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (33, 1, 'Male', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Eugene Ross', 'Associate Professor', 'congue elementum in.gif', '1994/04/01', '2012/11/11', '2013/09/14', 'Phisics', 'B3', '2014/02/17', '2015-03-19');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (34, 3, 'Male', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Jack Warren', 'Pharmacist', 'sit amet consectetuer.tiff', '1993/12/07', '2012/02/13', '2013/09/25', 'Mathematics', 'M1', '2014/04/02', '2015-07-20');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (35, 1, 'Female', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Laura Griffin', 'Analog Circuit Design manager', 'orci luctus.png', '1994/04/29', '2012/09/22', '2012/12/02', 'Mathematics', 'B4', '2014/09/24', '2015-05-27');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (36, 2, 'Female', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Kathryn Bowman', 'Research Assistant II', 'odio cras.png', '1992/09/04', '2012/05/04', '2012/12/14', 'Biology', 'B3', '2014/07/16', '2014-12-30');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (37, 1, 'Female', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Melissa Richards', 'Account Representative I', 'ut nulla sed.tiff', '1992/07/29', '2012/10/02', '2013/06/23', 'Mathematics', 'B4', '2014/02/07', '2015-06-02');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (38, 1, 'Male', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Samuel Hart', 'Programmer Analyst III', 'volutpat.jpeg', '1991/03/26', '2012/08/05', '2013/04/17', 'Mechanics', 'B2', '2014/05/09', '2015-07-12');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (39, 1, 'Male', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Arthur Lopez', 'Administrative Assistant II', 'nisl duis ac.gif', '1992/05/13', '2012/05/12', '2013/04/10', 'Mathematics', 'B4', '2013/12/26', '2015-02-11');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (40, 4, 'Male', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'Benjamin Cooper', 'Product Engineer', 'volutpat erat quisque.gif', '1993/07/15', '2012/01/19', '2012/12/22', 'Literature', 'M1', '2014/11/27', '2015-01-24');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (41, 3, 'Male', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Benjamin Williamson', 'Developer IV', 'odio curabitur.jpeg', '1991/11/04', '2012/09/08', '2013/03/26', 'Literature', 'B1', '2014/11/25', '2015-03-23');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (42, 4, 'Female', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Emily Bell', 'VP Sales', 'eros.tiff', '1991/12/13', '2012/02/08', '2013/04/26', 'Mathematics', 'D2', '2014/06/28', '2015-11-09');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (43, 1, 'Female', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Irene Adams', 'Occupational Therapist', 'vestibulum.tiff', '1993/03/20', '2012/11/11', '2013/10/16', 'Economy', 'B1', '2014/09/12', '2015-01-13');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (44, 3, 'Female', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Andrea Hunt', 'Accounting Assistant II', 'aliquam.jpeg', '1991/07/11', '2012/05/14', '2013/05/16', 'Phisics', 'B3', '2014/01/22', '2015-05-29');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (45, 2, 'Male', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Robert Ruiz', 'Dental Hygienist', 'ac nibh.jpeg', '1993/09/15', '2012/09/19', '2013/09/20', 'Phisics', 'M1', '2014/10/20', '2015-03-28');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (46, 4, 'Female', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Catherine Price', 'Director of Sales', 'etiam justo.jpeg', '1994/10/02', '2012/08/25', '2013/01/09', 'Biology', 'D2', '2014/06/12', '2015-01-18');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (47, 4, 'Male', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Brandon Hart', 'Dental Hygienist', 'volutpat eleifend.jpeg', '1995/10/01', '2012/08/07', '2013/11/27', 'Mathematics', 'M2', '2014/11/04', '2014-12-07');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (48, 3, 'Female', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Susan Bennett', 'Database Administrator II', 'mi.jpeg', '1991/04/07', '2012/08/23', '2013/05/03', 'Biology', 'B2', '2014/11/19', '2015-04-16');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (49, 2, 'Female', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Heather Miller', 'Web Developer III', 'augue aliquam.jpeg', '1995/04/29', '2012/01/19', '2012/12/24', 'Phisics', 'B3', '2014/04/29', '2015-08-24');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (50, 4, 'Female', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Ashley Rice', 'Programmer Analyst I', 'mauris.tiff', '1991/11/05', '2012/09/14', '2013/02/26', 'Biology', 'B2', '2014/03/03', '2015-09-10');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (51, 1, 'Male', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Antonio Jacobs', 'Legal Assistant', 'a libero nam.gif', '1991/05/16', '2012/02/29', '2013/01/11', 'Literature', 'M2', '2014/05/20', '2015-09-01');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (52, 3, 'Male', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Johnny Campbell', 'Assistant Manager', 'mauris laoreet ut.jpeg', '1994/01/12', '2012/01/02', '2013/08/08', 'Economy', 'D1', '2014/03/08', '2015-08-24');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (53, 4, 'Female', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Teresa Garcia', 'Web Designer II', 'rutrum rutrum.jpeg', '1993/05/04', '2012/08/21', '2013/09/23', 'Mechanics', 'B4', '2014/05/05', '2015-02-02');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (54, 2, 'Male', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Keith Diaz', 'Senior Editor', 'fusce.gif', '1990/12/26', '2012/08/07', '2012/12/27', 'Mechanics', 'M1', '2014/06/03', '2015-08-13');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (55, 2, 'Male', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Peter Washington', 'Executive Secretary', 'porttitor.jpeg', '1993/03/01', '2012/02/27', '2013/08/27', 'Economy', 'M1', '2014/02/12', '2015-11-12');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (56, 1, 'Male', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Martin Kennedy', 'Geological Engineer', 'at.tiff', '1990/12/04', '2012/05/10', '2013/08/04', 'Literature', 'B3', '2014/08/28', '2015-04-23');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (57, 2, 'Female', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Jacqueline Vasquez', 'Social Worker', 'donec quis orci.png', '1992/07/17', '2012/07/02', '2013/06/13', 'Mechanics', 'M2', '2014/05/28', '2015-10-28');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (58, 1, 'Male', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Fred Mitchell', 'Statistician I', 'vivamus in.gif', '1992/09/29', '2012/01/09', '2013/06/29', 'Phisics', 'B2', '2014/05/01', '2015-10-14');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (59, 1, 'Male', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Gerald Green', 'Assistant Manager', 'convallis nulla.jpeg', '1992/03/13', '2012/09/05', '2012/12/06', 'Mechanics', 'D1', '2014/01/22', '2015-10-19');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (60, 3, 'Male', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'James Taylor', 'Senior Quality Engineer', 'habitasse platea dictumst.jpeg', '1991/02/04', '2012/04/22', '2012/12/25', 'Economy', 'B3', '2014/07/28', '2015-11-18');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (61, 4, 'Male', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Shawn Brown', 'Staff Scientist', 'mauris.jpeg', '1991/03/09', '2012/08/21', '2013/05/01', 'Mathematics', 'B1', '2014/08/10', '2015-02-21');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (62, 4, 'Male', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Victor West', 'Budget/Accounting Analyst II', 'porta volutpat.tiff', '1991/06/07', '2012/07/26', '2013/10/16', 'Mechanics', 'D1', '2014/05/25', '2015-01-24');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (63, 4, 'Male', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Edward Larson', 'Desktop Support Technician', 'nunc purus.jpeg', '1990/12/02', '2012/03/28', '2013/09/24', 'Biology', 'D2', '2014/08/19', '2015-04-07');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (64, 2, 'Male', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Jesse Lewis', 'Senior Quality Engineer', 'feugiat non pretium.gif', '1995/02/12', '2012/01/18', '2013/05/10', 'Phisics', 'B1', '2014/06/19', '2014-12-06');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (65, 3, 'Male', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Eric Mcdonald', 'Account Representative II', 'aliquet.jpeg', '1993/11/21', '2012/02/13', '2013/07/29', 'Economy', 'B2', '2014/05/13', '2015-05-03');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (66, 2, 'Female', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Carol Payne', 'Civil Engineer', 'mauris lacinia sapien.tiff', '1992/08/31', '2012/04/25', '2012/12/27', 'Mathematics', 'B1', '2014/03/11', '2015-11-21');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (67, 4, 'Female', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Paula Stewart', 'GIS Technical Architect', 'cras in purus.tiff', '1992/06/02', '2012/08/15', '2013/03/09', 'Phisics', 'B3', '2014/11/22', '2015-04-10');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (68, 2, 'Male', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Eric Torres', 'GIS Technical Architect', 'ultrices posuere cubilia.jpeg', '1995/05/23', '2012/09/24', '2013/10/23', 'Mathematics', 'D2', '2014/04/07', '2015-02-21');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (69, 3, 'Male', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Ernest Jordan', 'Structural Engineer', 'bibendum.png', '1992/02/13', '2012/01/28', '2013/01/24', 'Literature', 'B2', '2014/10/13', '2015-07-16');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (70, 3, 'Female', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Ruth Gomez', 'Pharmacist', 'phasellus.tiff', '1995/03/27', '2012/07/10', '2013/05/25', 'Phisics', 'B1', '2014/06/01', '2015-10-11');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (71, 4, 'Male', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Sean Hart', 'Marketing Manager', 'erat volutpat in.tiff', '1995/10/15', '2012/09/18', '2013/09/06', 'Mathematics', 'B4', '2014/06/20', '2015-06-18');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (72, 3, 'Male', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Gregory Elliott', 'Computer Systems Analyst II', 'leo odio porttitor.tiff', '1994/06/04', '2012/03/19', '2013/07/03', 'Biology', 'B2', '2014/06/12', '2015-08-18');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (73, 2, 'Female', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Carol Bradley', 'Marketing Assistant', 'adipiscing.tiff', '1990/12/12', '2012/07/27', '2012/12/23', 'Literature', 'B4', '2014/04/16', '2015-10-27');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (74, 1, 'Male', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Roy Knight', 'VP Product Management', 'ipsum dolor sit.png', '1994/10/30', '2012/03/25', '2013/05/02', 'Biology', 'B3', '2014/08/26', '2015-06-19');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (75, 3, 'Male', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Eric Stevens', 'Data Coordiator', 'diam cras.tiff', '1993/04/02', '2011/12/10', '2013/04/10', 'Biology', 'B3', '2014/08/10', '2015-09-17');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (76, 4, 'Female', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Anne Montgomery', 'Programmer I', 'rhoncus aliquet pulvinar.jpeg', '1992/04/28', '2012/06/10', '2013/08/10', 'Phisics', 'D2', '2013/12/22', '2015-07-03');
insert into users (id, university_id, gender, self_intro, name, facebook_id, image, birthday, study_start, study_end, study_major, study_grade, created, modified) values (77, 4, 'Female', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Brenda Washington', 'Environmental Specialist', 'blandit.png', '1993/10/01', '2011/12/11', '2013/05/29', 'Economy', 'M1', '2014/11/01', '2015-11-17');


/*areasのダミーデータ*/
insert into areas (id, area) values (1, 'Asia');
insert into areas (id, area) values (2, 'Europe');
insert into areas (id, area) values (3, 'North America');
insert into areas (id, area) values (4, 'South America');
insert into areas (id, area) values (5, 'Oceania');
insert into areas (id, area) values (6, 'Africa');


/*countriesのダミーデータ*/
insert into countries (id, country, area_id) values (1, 'China', 1);
insert into countries (id, country, area_id) values (2, 'UK', 2);
insert into countries (id, country, area_id) values (3, 'America', 3);
insert into countries (id, country, area_id) values (4, 'Canada', 3);
insert into countries (id, country, area_id) values (5, 'France', 2);
insert into countries (id, country, area_id) values (6, 'Belgium', 2);


/*universitiesのダミーデータ*/
insert into universities (id, university, country_id, created, modified) values (1, 'Ghent', 6, '2014/08/07', '2015/07/28');
insert into universities (id, university, country_id, created, modified) values (2, 'UCLA', 3, '2014/07/25', '2015/06/07');
insert into universities (id, university, country_id, created, modified) values (3, 'Stanford', 3, '2013/12/04', '2015/05/29');
insert into universities (id, university, country_id, created, modified) values (4, 'Oxford', 2, '2014/05/08', '2014/12/01');


/*categoriesのダミーデータ*/
insert into categories (id, category, supplement, question, example, image) values (1, '旅行', 'その地域からの旅行の行きやすさ', 'その地域からの国内旅行や近辺の地域への旅行のしやすさについて教えてください。(地理的な影響や交通機関へのアクセスなど）', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'category_travel.jpg');
insert into categories (id, category, supplement, question, example, image) values (2, '環境','その町や大学キャンパスの特徴に関してと、授業外の時間の過ごし方', '勉強以外の時間の使い方を教えてください。（授業後の遊びや周辺の娯楽施設など）', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'category_environment.jpg');
insert into categories (id, category, supplement, question, example, image) values (3, '物価', '日本と比べた時のその地域物価', 'その地域の物価は日本に比べて高いか低いか教えて下さい。目安として1ヶ月の生活費とその内訳を教えて下さい。', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'category_money.jpg');
insert into categories (id, category, supplement, question, example, image) values (4, '住居', '大学寮などの住居環境', '家賃や住居環境について教えて下さい。', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'category_apartment.jpg');
insert into categories (id, category, supplement, question, example, image) values (5, '食事', 'レストランや自炊などの食事', 'その地域では、日常的にどんなものを食べることが多いか教えてください。', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'category_food.jpg');
insert into categories (id, category, supplement, question, example, image) values (6, '治安', '町中や周辺地域の治安', 'その地域の治安は良かったですか。危険な目にあってしまった経験があれば教えてください。', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'category_safety.jpg');
insert into categories (id, category, supplement, question, example, image) values (7, '授業', '受講していた授業の具体例とその課題の量', '大学ではどのような授業を受けましたか。いくつか例をあげてください。また、課題の量はどの程度でしたか？', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'category_study.jpg');
insert into categories (id, category, supplement, question, example, image) values (8, '留学生', '大学全体の留学生の比率と、留学生内の日本人の比率', '他の留学生は何人くらいいましたか。どのような地域からの留学生が多かったかも合わせて教えて下さい。', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'category_student.jpg');
insert into categories (id, category, supplement, question, example, image) values (9, '言語', '大学内や町内で使用されている言語', '街では英語は通じますか？他の言語が使用されている場合はその言語が何語か教えてください。', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'category_language.jpg');


/*tagsのダミーデータ*/
insert into tags (id, tag, question, good, bad) values (1, '旅行のしやすさ', 'その地域からの国内旅行や近辺の地域への旅行のしやすさに関して','便利','不便');
insert into tags (id, tag, question, good, bad) values (2, '町の過ごしやすさ','その町の過ごしやすさに関して','過ごしやすい','過ごしにくい');
insert into tags (id, tag, question, good, bad) values (3, '大学キャンパスの快適さ','大学キャンパスの快適度合いに関して','満足','不満');
insert into tags (id, tag, question, good, bad) values (4, '授業のレベルの高さ','周りの学生や教授の学力水準に関して','高い','低い');
insert into tags (id, tag, question, good, bad) values (5, '物価の手軽さ','その地域の物価に関して(日本と比べて高いか低いか)','高い','低い');
insert into tags (id, tag, question, good, bad) values (6, '住居環境の良さ','家賃や住居環境に関して','住みやすい','住みにくい');
insert into tags (id, tag, question, good, bad) values (7, '食事面での満足度','食事面での満足度に関して','美味しい','不味い');
insert into tags (id, tag, question, good, bad) values (8, '治安の良さ','その地域の治安に関して','良い','悪い');


/*reviewsのダミーデータ*/
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (1, 37, 5, 4, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2014/03/31', '2015/06/12');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (2, 53, 7, 4, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2014/05/03', '2015/06/20');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (3, 28, 3, 3, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2014/03/14', '2015/06/26');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (4, 75, 7, 6, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2014/07/18', '2015/09/13');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (5, 49, 9, 3, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2014/07/07', '2015/05/09');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (6, 32, 4, 2, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2014/06/18', '2015/06/20');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (7, 7, 7, 4, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2014/01/03', '2015/03/01');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (8, 53, 8, 4, 'Fusce consequat. Nulla nisl. Nunc nisl.', '2013/12/22', '2015/04/13');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (9, 55, 5, 5, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2014/06/10', '2015/10/22');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (10, 65, 8, 1, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2014/10/11', '2015/03/07');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (11, 52, 5, 1, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2013/12/24', '2015/05/28');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (12, 18, 7, 4, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2014/09/12', '2015/11/01');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (13, 31, 2, 5, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2014/01/24', '2015/07/11');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (14, 20, 9, 5, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2014/05/31', '2015/10/16');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (15, 53, 1, 4, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2014/08/10', '2015/09/15');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (16, 17, 8, 1, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/01/16', '2015/06/28');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (17, 56, 5, 2, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2014/03/14', '2015/07/29');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (18, 71, 2, 1, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2013/12/13', '2015/01/19');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (19, 63, 9, 2, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2013/12/13', '2015/06/19');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (20, 70, 6, 1, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2014/10/29', '2014/12/20');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (21, 10, 8, 6, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2014/06/13', '2015/04/22');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (22, 55, 3, 3, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2014/08/08', '2015/11/09');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (23, 40, 3, 3, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2013/12/15', '2015/03/19');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (24, 34, 1, 2, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2014/05/06', '2015/07/04');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (25, 22, 6, 4, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2014/11/05', '2015/02/13');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (26, 45, 8, 6, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2013/12/27', '2015/07/29');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (27, 65, 1, 3, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2014/01/07', '2015/03/11');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (28, 27, 3, 2, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2014/04/30', '2015/09/12');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (29, 6, 8, 4, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2014/06/16', '2015/08/01');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (30, 54, 4, 3, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2014/10/06', '2015/06/23');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (31, 56, 5, 2, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2014/11/26', '2015/08/04');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (32, 63, 9, 4, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2014/02/11', '2014/12/01');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (33, 64, 2, 3, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/01/08', '2015/04/03');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (34, 16, 2, 1, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/01/23', '2015/01/23');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (35, 11, 2, 1, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2014/04/29', '2015/09/26');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (36, 53, 6, 4, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2014/05/07', '2015/08/16');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (37, 18, 2, 6, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2014/04/01', '2015/04/23');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (38, 2, 4, 5, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2014/09/27', '2015/11/02');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (39, 27, 4, 3, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2014/03/09', '2014/12/17');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (40, 72, 7, 1, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2013/12/05', '2015/07/10');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (41, 16, 5, 1, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2014/03/05', '2015/11/11');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (42, 51, 1, 2, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2014/09/14', '2014/12/04');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (43, 57, 9, 5, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/01/07', '2015/02/06');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (44, 36, 1, 5, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2013/12/20', '2015/05/24');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (45, 16, 4, 3, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2014/04/02', '2015/06/07');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (46, 61, 5, 5, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2014/06/17', '2015/03/17');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (47, 25, 1, 4, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2013/12/14', '2015/03/06');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (48, 72, 2, 3, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2014/08/20', '2015/05/18');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (49, 65, 6, 5, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2014/08/10', '2015/04/28');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (50, 16, 5, 5, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2014/01/30', '2014/12/21');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (51, 24, 6, 2, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2014/11/11', '2015/09/24');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (52, 44, 1, 3, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2014/10/27', '2015/08/13');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (53, 77, 3, 1, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2014/09/04', '2014/12/26');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (54, 32, 2, 3, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2014/03/12', '2014/12/04');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (55, 66, 3, 1, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2014/01/21', '2015/06/18');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (56, 5, 7, 3, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2014/04/30', '2015/06/03');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (57, 2, 8, 6, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2014/03/19', '2015/07/07');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (58, 13, 1, 3, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2013/12/21', '2015/04/09');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (59, 42, 5, 6, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2014/02/23', '2015/01/13');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (60, 53, 7, 3, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2014/01/12', '2015/10/06');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (61, 7, 8, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2014/05/19', '2015/07/14');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (62, 24, 3, 1, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2014/07/05', '2015/11/04');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (63, 54, 4, 4, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2014/06/11', '2015/04/07');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (64, 13, 8, 5, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2014/02/06', '2015/04/26');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (65, 66, 4, 2, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2014/07/06', '2015/10/21');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (66, 11, 2, 2, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2014/06/28', '2015/02/22');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (67, 6, 9, 4, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2014/05/16', '2015/07/02');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (68, 54, 1, 2, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2014/11/10', '2015/04/02');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (69, 68, 5, 1, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2013/12/29', '2015/11/08');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (70, 51, 4, 3, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/01/14', '2015/06/13');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (71, 1, 2, 3, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2013/11/30', '2015/06/29');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (72, 38, 8, 1, 'Fusce consequat. Nulla nisl. Nunc nisl.', '2013/12/09', '2015/05/11');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (73, 40, 7, 3, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2014/11/24', '2015/08/25');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (74, 69, 9, 3, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2014/08/25', '2015/02/05');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (75, 53, 2, 4, 'Fusce consequat. Nulla nisl. Nunc nisl.', '2014/04/23', '2015/03/25');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (76, 2, 6, 6, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2014/07/09', '2015/04/04');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (77, 68, 7, 4, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2014/06/20', '2015/08/27');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (78, 27, 8, 4, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2014/02/13', '2015/02/15');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (79, 56, 8, 1, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2014/01/18', '2015/03/12');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (80, 36, 9, 5, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/01/14', '2015/05/23');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (81, 36, 4, 2, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2014/08/20', '2015/08/05');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (82, 25, 9, 1, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2014/06/12', '2015/05/25');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (83, 22, 3, 3, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2014/02/18', '2015/09/22');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (84, 13, 6, 3, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2014/08/25', '2014/12/15');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (85, 48, 1, 1, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2014/05/02', '2015/08/25');
insert into reviews (id, user_id, category_id, university_id, content, created, modified) values (86, 26, 6, 1, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2014/06/07', '2015/10/22');



/*scoresのダミーデータ*/
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (1, 1, 2, 5, 3, '2014/05/05', '2015/01/16');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (2, 38, 1, 5, 4, '2014/11/21', '2015/07/08');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (3, 16, 5, 6, 2, '2014/09/16', '2014/12/25');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (4, 5, 3, 5, 3, '2014/10/07', '2015/01/01');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (5, 52, 4, 3, 4, '2014/04/16', '2015/01/30');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (6, 39, 9, 6, 4, '2014/11/08', '2015/06/18');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (7, 65, 6, 1, 2, '2014/03/20', '2015/05/19');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (8, 20, 9, 5, 4, '2014/08/13', '2015/10/19');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (9, 20, 5, 3, 1, '2014/04/09', '2014/12/02');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (10, 42, 9, 1, 5, '2014/02/13', '2015/02/25');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (11, 49, 4, 4, 5, '2014/02/27', '2015/05/13');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (12, 27, 5, 4, 1, '2013/12/28', '2015/11/08');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (13, 58, 6, 4, 5, '2013/12/30', '2015/03/16');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (14, 46, 6, 6, 3, '2014/01/06', '2015/08/15');
insert into scores (id, user_id, tag_id, university_id, score, created, modified) values (15, 60, 2, 4, 5, '2014/07/06', '2015/02/13');



/*clipsのダミーデータ*/
insert into clips (id, user_id, review_id, answer_id, created, modified) values (1, 37, null, null, '2014/08/11', '2015/06/06');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (2, 13, null, null, '2014/07/17', '2015/06/23');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (3, 42, null, null, '2014/04/23', '2015/11/16');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (4, 69, 696, 16, '2014/07/15', '2014/12/27');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (5, 65, null, null, '2014/07/16', '2015/11/07');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (6, 50, null, null, '2014/03/29', '2015/10/28');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (7, 67, null, null, '2014/05/08', '2015/08/05');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (8, 9, null, null, '2014/11/07', '2015/01/18');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (9, 20, null, null, '2014/03/11', '2015/10/23');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (10, 64, null, null, '2014/08/02', '2015/01/06');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (11, 26, 34, 14, '2014/03/26', '2015/03/19');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (12, 39, 821, 25, '2014/02/28', '2015/02/04');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (13, 47, 541, 68, '2014/09/04', '2015/03/12');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (14, 68, null, null, '2014/06/09', '2014/12/04');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (15, 17, 315, 95, '2014/05/19', '2015/05/15');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (16, 63, 894, 76, '2014/01/27', '2015/08/07');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (17, 31, 935, 42, '2014/02/08', '2015/03/31');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (18, 9, null, null, '2014/08/17', '2015/05/30');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (19, 12, 704, 23, '2014/06/14', '2015/04/10');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (20, 70, null, null, '2013/12/18', '2015/03/13');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (21, 14, null, null, '2013/11/30', '2015/06/30');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (22, 55, 103, 72, '2014/02/12', '2015/09/11');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (23, 66, null, null, '2014/05/11', '2015/05/11');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (24, 58, 250, 77, '2014/05/09', '2015/06/18');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (25, 12, null, null, '2014/07/03', '2015/07/11');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (26, 73, 593, 59, '2014/08/17', '2015/11/07');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (27, 17, 317, 35, '2014/03/30', '2015/07/09');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (28, 28, 308, 43, '2014/07/24', '2015/08/30');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (29, 13, 415, 45, '2014/02/07', '2015/03/12');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (30, 13, null, null, '2014/11/12', '2015/05/04');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (31, 66, null, null, '2014/10/08', '2015/11/21');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (32, 72, 931, 5, '2014/04/30', '2015/06/23');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (33, 67, 856, 62, '2014/06/25', '2015/07/23');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (34, 27, null, null, '2014/11/26', '2015/07/13');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (35, 65, 424, 97, '2014/02/27', '2015/01/03');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (36, 33, null, null, '2014/09/12', '2014/12/19');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (37, 49, null, null, '2014/06/30', '2015/05/10');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (38, 62, null, null, '2014/03/07', '2015/10/05');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (39, 24, null, null, '2014/01/06', '2015/08/18');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (40, 13, null, null, '2014/03/25', '2015/05/31');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (41, 69, null, null, '2014/10/30', '2015/05/23');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (42, 27, null, null, '2014/06/22', '2015/08/30');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (43, 47, 596, 10, '2014/10/13', '2015/07/29');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (44, 77, 365, 100, '2014/03/11', '2015/06/18');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (45, 38, null, null, '2014/02/28', '2015/10/02');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (46, 52, 617, 59, '2014/10/04', '2015/01/03');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (47, 62, null, null, '2013/12/05', '2015/06/01');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (48, 23, null, null, '2013/11/29', '2015/08/23');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (49, 2, 648, 75, '2014/07/28', '2015/07/05');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (50, 11, null, null, '2014/10/06', '2015/03/07');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (51, 11, 311, 63, '2014/05/19', '2015/01/29');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (52, 10, 197, 2, '2014/09/07', '2015/02/11');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (53, 65, 774, 10, '2014/04/07', '2014/12/15');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (54, 64, 299, 17, '2013/12/07', '2015/09/11');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (55, 8, 752, 30, '2014/06/30', '2015/08/15');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (56, 20, null, null, '2014/06/14', '2015/04/04');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (57, 31, null, null, '2014/11/14', '2015/01/04');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (58, 77, 843, 88, '2014/08/11', '2015/02/04');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (59, 51, null, null, '2014/04/27', '2015/07/05');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (60, 59, 367, 44, '2014/07/11', '2015/09/01');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (61, 66, null, null, '2014/06/15', '2015/07/20');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (62, 76, 347, 41, '2014/11/19', '2015/10/09');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (63, 16, 396, 46, '2014/05/22', '2015/04/19');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (64, 43, 933, 69, '2014/09/07', '2015/09/12');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (65, 38, 981, 79, '2014/05/17', '2015/10/20');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (66, 11, 634, 12, '2014/11/09', '2015/02/21');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (67, 37, 357, 50, '2014/04/02', '2015/08/03');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (68, 39, 708, 61, '2014/09/01', '2015/05/31');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (69, 47, 480, 16, '2014/07/06', '2015/02/22');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (70, 40, 441, 23, '2014/11/14', '2015/01/08');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (71, 42, null, null, '2013/12/25', '2015/02/04');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (72, 3, 724, 54, '2014/09/18', '2015/09/28');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (73, 50, null, null, '2014/01/09', '2015/04/26');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (74, 33, 389, 7, '2014/04/25', '2015/02/22');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (75, 56, null, null, '2014/06/05', '2015/01/11');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (76, 53, 820, 52, '2014/10/29', '2015/11/19');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (77, 24, 444, 25, '2014/04/13', '2015/08/16');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (78, 67, null, null, '2014/10/14', '2015/05/06');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (79, 44, null, null, '2014/03/13', '2015/07/10');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (80, 56, null, null, '2014/09/23', '2015/05/04');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (81, 12, 914, 90, '2014/11/09', '2015/02/25');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (82, 61, null, null, '2014/06/09', '2015/06/22');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (83, 36, null, null, '2014/01/11', '2014/12/14');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (84, 13, null, null, '2014/05/23', '2015/01/01');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (85, 43, 780, 62, '2013/12/22', '2015/10/24');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (86, 14, null, null, '2014/01/03', '2015/01/12');



/*favorite_usesのダミーデータ*/
insert into favorite_uses (id, user_id, target, created, modified) values (1, 35, 54, '2014/01/17', '2015/02/06');
insert into favorite_uses (id, user_id, target, created, modified) values (2, 9, 63, '2013/12/24', '2015/04/05');
insert into favorite_uses (id, user_id, target, created, modified) values (3, 17, 45, '2014/02/25', '2015/07/25');
insert into favorite_uses (id, user_id, target, created, modified) values (4, 62, 31, '2014/03/15', '2015/11/25');
insert into favorite_uses (id, user_id, target, created, modified) values (5, 33, 54, '2014/01/26', '2015/10/23');
insert into favorite_uses (id, user_id, target, created, modified) values (6, 52, 20, '2014/09/11', '2015/10/26');
insert into favorite_uses (id, user_id, target, created, modified) values (7, 9, 32, '2014/11/11', '2015/03/31');
insert into favorite_uses (id, user_id, target, created, modified) values (8, 1, 47, '2014/07/21', '2015/08/31');
insert into favorite_uses (id, user_id, target, created, modified) values (9, 22, 68, '2014/03/27', '2015/03/25');
insert into favorite_uses (id, user_id, target, created, modified) values (10, 48, 49, '2014/10/20', '2015/02/06');
insert into favorite_uses (id, user_id, target, created, modified) values (11, 22, 61, '2014/07/18', '2015/02/21');
insert into favorite_uses (id, user_id, target, created, modified) values (12, 28, 33, '2014/05/03', '2015/05/16');
insert into favorite_uses (id, user_id, target, created, modified) values (13, 73, 31, '2014/11/16', '2015/07/02');
insert into favorite_uses (id, user_id, target, created, modified) values (14, 33, 34, '2014/03/12', '2014/12/08');
insert into favorite_uses (id, user_id, target, created, modified) values (15, 41, 75, '2013/12/04', '2015/08/13');
insert into favorite_uses (id, user_id, target, created, modified) values (16, 19, 34, '2014/07/27', '2015/04/30');
insert into favorite_uses (id, user_id, target, created, modified) values (17, 76, 36, '2014/03/25', '2015/10/18');
insert into favorite_uses (id, user_id, target, created, modified) values (18, 51, 27, '2014/04/22', '2015/09/18');
insert into favorite_uses (id, user_id, target, created, modified) values (19, 62, 37, '2014/05/04', '2015/08/11');
insert into favorite_uses (id, user_id, target, created, modified) values (20, 28, 47, '2014/02/14', '2015/04/14');
insert into favorite_uses (id, user_id, target, created, modified) values (21, 47, 41, '2014/04/19', '2015/01/07');
insert into favorite_uses (id, user_id, target, created, modified) values (22, 32, 40, '2014/01/23', '2015/04/21');
insert into favorite_uses (id, user_id, target, created, modified) values (23, 6, 62, '2014/10/14', '2015/04/08');
insert into favorite_uses (id, user_id, target, created, modified) values (24, 59, 29, '2014/09/19', '2015/08/30');
insert into favorite_uses (id, user_id, target, created, modified) values (25, 67, 22, '2014/08/17', '2014/11/30');
insert into favorite_uses (id, user_id, target, created, modified) values (26, 70, 32, '2014/07/24', '2015/10/10');
insert into favorite_uses (id, user_id, target, created, modified) values (27, 74, 54, '2014/01/27', '2015/11/06');
insert into favorite_uses (id, user_id, target, created, modified) values (28, 37, 76, '2014/07/18', '2015/07/04');
insert into favorite_uses (id, user_id, target, created, modified) values (29, 13, 11, '2014/05/21', '2015/02/28');
insert into favorite_uses (id, user_id, target, created, modified) values (30, 35, 42, '2014/05/25', '2015/11/20');
insert into favorite_uses (id, user_id, target, created, modified) values (31, 11, 30, '2014/07/17', '2015/07/27');
insert into favorite_uses (id, user_id, target, created, modified) values (32, 6, 11, '2014/11/17', '2015/11/03');
insert into favorite_uses (id, user_id, target, created, modified) values (33, 28, 28, '2014/02/16', '2015/09/30');
insert into favorite_uses (id, user_id, target, created, modified) values (34, 30, 14, '2014/04/25', '2015/05/22');
insert into favorite_uses (id, user_id, target, created, modified) values (35, 19, 14, '2014/04/06', '2015/03/25');
insert into favorite_uses (id, user_id, target, created, modified) values (36, 13, 19, '2014/07/18', '2015/11/04');
insert into favorite_uses (id, user_id, target, created, modified) values (37, 51, 66, '2014/09/23', '2015/10/17');
insert into favorite_uses (id, user_id, target, created, modified) values (38, 10, 12, '2014/08/23', '2015/03/17');
insert into favorite_uses (id, user_id, target, created, modified) values (39, 9, 27, '2014/05/27', '2015/03/18');
insert into favorite_uses (id, user_id, target, created, modified) values (40, 49, 10, '2014/08/08', '2015/04/05');
insert into favorite_uses (id, user_id, target, created, modified) values (41, 73, 60, '2014/01/02', '2015/03/30');
insert into favorite_uses (id, user_id, target, created, modified) values (42, 22, 50, '2014/05/16', '2015/04/22');
insert into favorite_uses (id, user_id, target, created, modified) values (43, 9, 18, '2014/02/25', '2015/10/09');
insert into favorite_uses (id, user_id, target, created, modified) values (44, 5, 65, '2014/07/11', '2014/12/05');
insert into favorite_uses (id, user_id, target, created, modified) values (45, 67, 55, '2014/01/02', '2015/08/20');
insert into favorite_uses (id, user_id, target, created, modified) values (46, 19, 66, '2014/09/29', '2015/03/20');
insert into favorite_uses (id, user_id, target, created, modified) values (47, 29, 26, '2014/02/22', '2015/09/16');
insert into favorite_uses (id, user_id, target, created, modified) values (48, 58, 9, '2014/06/27', '2015/07/11');
insert into favorite_uses (id, user_id, target, created, modified) values (49, 62, 34, '2014/07/18', '2014/12/28');
insert into favorite_uses (id, user_id, target, created, modified) values (50, 6, 9, '2014/05/24', '2015/03/31');
insert into favorite_uses (id, user_id, target, created, modified) values (51, 21, 28, '2014/10/04', '2015/05/11');
insert into favorite_uses (id, user_id, target, created, modified) values (52, 49, 68, '2014/05/22', '2015/04/12');
insert into favorite_uses (id, user_id, target, created, modified) values (53, 3, 68, '2014/10/07', '2015/04/29');
insert into favorite_uses (id, user_id, target, created, modified) values (54, 47, 38, '2013/12/12', '2015/08/28');
insert into favorite_uses (id, user_id, target, created, modified) values (55, 25, 37, '2014/03/03', '2015/02/02');
insert into favorite_uses (id, user_id, target, created, modified) values (56, 31, 59, '2014/04/23', '2015/01/17');
insert into favorite_uses (id, user_id, target, created, modified) values (57, 36, 55, '2014/11/18', '2015/08/19');
insert into favorite_uses (id, user_id, target, created, modified) values (58, 39, 10, '2014/01/20', '2015/05/16');
insert into favorite_uses (id, user_id, target, created, modified) values (59, 21, 20, '2014/11/06', '2015/08/14');
insert into favorite_uses (id, user_id, target, created, modified) values (60, 24, 30, '2014/08/16', '2015/10/28');
insert into favorite_uses (id, user_id, target, created, modified) values (61, 6, 27, '2014/03/24', '2015/09/17');
insert into favorite_uses (id, user_id, target, created, modified) values (62, 54, 31, '2014/08/02', '2014/12/14');
insert into favorite_uses (id, user_id, target, created, modified) values (63, 57, 74, '2014/02/15', '2014/12/26');
insert into favorite_uses (id, user_id, target, created, modified) values (64, 53, 6, '2014/04/21', '2015/09/13');
insert into favorite_uses (id, user_id, target, created, modified) values (65, 34, 72, '2014/01/28', '2014/11/29');
insert into favorite_uses (id, user_id, target, created, modified) values (66, 28, 13, '2014/10/01', '2015/02/18');
insert into favorite_uses (id, user_id, target, created, modified) values (67, 19, 60, '2014/06/17', '2015/04/29');



/*favorite_unisのダミーデータ*/
insert into favorite_unis (id, user_id, university_id, created, modified) values (1, 10, 2, '2014/11/02', '2015/05/16');
insert into favorite_unis (id, user_id, university_id, created, modified) values (2, 75, 1, '2014/11/22', '2015/11/17');
insert into favorite_unis (id, user_id, university_id, created, modified) values (3, 67, 2, '2013/12/19', '2015/08/23');
insert into favorite_unis (id, user_id, university_id, created, modified) values (4, 23, 1, '2014/11/24', '2015/09/02');
insert into favorite_unis (id, user_id, university_id, created, modified) values (5, 10, 3, '2014/10/13', '2015/05/13');
insert into favorite_unis (id, user_id, university_id, created, modified) values (6, 16, 4, '2014/01/28', '2015/09/25');
insert into favorite_unis (id, user_id, university_id, created, modified) values (7, 27, 1, '2014/11/19', '2015/11/13');
insert into favorite_unis (id, user_id, university_id, created, modified) values (8, 35, 5, '2014/11/06', '2014/12/09');
insert into favorite_unis (id, user_id, university_id, created, modified) values (9, 56, 3, '2014/07/13', '2015/08/30');
insert into favorite_unis (id, user_id, university_id, created, modified) values (10, 75, 6, '2014/07/09', '2015/05/12');
insert into favorite_unis (id, user_id, university_id, created, modified) values (11, 32, 5, '2014/04/22', '2014/12/04');
insert into favorite_unis (id, user_id, university_id, created, modified) values (12, 62, 4, '2014/03/16', '2015/08/20');
insert into favorite_unis (id, user_id, university_id, created, modified) values (13, 23, 1, '2014/03/15', '2015/04/23');
insert into favorite_unis (id, user_id, university_id, created, modified) values (14, 50, 3, '2014/05/31', '2015/08/26');
insert into favorite_unis (id, user_id, university_id, created, modified) values (15, 56, 5, '2014/08/03', '2015/04/10');
insert into favorite_unis (id, user_id, university_id, created, modified) values (16, 51, 1, '2014/05/24', '2015/05/16');
insert into favorite_unis (id, user_id, university_id, created, modified) values (17, 37, 3, '2014/11/03', '2015/08/05');
insert into favorite_unis (id, user_id, university_id, created, modified) values (18, 14, 4, '2014/09/01', '2015/05/19');
insert into favorite_unis (id, user_id, university_id, created, modified) values (19, 59, 6, '2014/08/08', '2015/07/13');
insert into favorite_unis (id, user_id, university_id, created, modified) values (20, 62, 6, '2014/05/20', '2015/03/09');
insert into favorite_unis (id, user_id, university_id, created, modified) values (21, 53, 2, '2014/04/16', '2015/10/22');
insert into favorite_unis (id, user_id, university_id, created, modified) values (22, 48, 6, '2014/09/06', '2015/09/11');
insert into favorite_unis (id, user_id, university_id, created, modified) values (23, 49, 1, '2014/04/28', '2015/03/13');
insert into favorite_unis (id, user_id, university_id, created, modified) values (24, 33, 6, '2014/05/25', '2015/11/04');
insert into favorite_unis (id, user_id, university_id, created, modified) values (25, 15, 1, '2014/05/15', '2015/08/28');
insert into favorite_unis (id, user_id, university_id, created, modified) values (26, 28, 2, '2014/01/26', '2014/12/04');
insert into favorite_unis (id, user_id, university_id, created, modified) values (27, 23, 2, '2014/06/21', '2015/01/21');
insert into favorite_unis (id, user_id, university_id, created, modified) values (28, 38, 4, '2014/02/14', '2015/03/25');
insert into favorite_unis (id, user_id, university_id, created, modified) values (29, 67, 2, '2014/07/20', '2015/07/16');
insert into favorite_unis (id, user_id, university_id, created, modified) values (30, 41, 3, '2014/09/21', '2015/06/05');
insert into favorite_unis (id, user_id, university_id, created, modified) values (31, 58, 2, '2014/05/08', '2015/08/09');
insert into favorite_unis (id, user_id, university_id, created, modified) values (32, 36, 4, '2014/04/19', '2015/09/21');
insert into favorite_unis (id, user_id, university_id, created, modified) values (33, 1, 4, '2014/08/24', '2015/01/18');
insert into favorite_unis (id, user_id, university_id, created, modified) values (34, 54, 4, '2014/05/09', '2015/05/01');
insert into favorite_unis (id, user_id, university_id, created, modified) values (35, 10, 1, '2014/08/01', '2015/09/22');
insert into favorite_unis (id, user_id, university_id, created, modified) values (36, 27, 3, '2014/02/17', '2015/10/10');
insert into favorite_unis (id, user_id, university_id, created, modified) values (37, 1, 6, '2014/09/17', '2015/06/05');
insert into favorite_unis (id, user_id, university_id, created, modified) values (38, 42, 2, '2014/11/04', '2015/03/21');
insert into favorite_unis (id, user_id, university_id, created, modified) values (39, 14, 3, '2014/07/29', '2015/06/18');
insert into favorite_unis (id, user_id, university_id, created, modified) values (40, 70, 2, '2014/05/30', '2015/10/05');
insert into favorite_unis (id, user_id, university_id, created, modified) values (41, 50, 1, '2014/10/27', '2014/12/19');
insert into favorite_unis (id, user_id, university_id, created, modified) values (42, 10, 4, '2013/12/21', '2015/11/14');
insert into favorite_unis (id, user_id, university_id, created, modified) values (43, 66, 2, '2014/07/10', '2015/05/24');
insert into favorite_unis (id, user_id, university_id, created, modified) values (44, 35, 1, '2014/06/01', '2014/12/17');
insert into favorite_unis (id, user_id, university_id, created, modified) values (45, 41, 3, '2014/08/12', '2015/08/25');
insert into favorite_unis (id, user_id, university_id, created, modified) values (46, 51, 1, '2014/07/30', '2015/05/05');
insert into favorite_unis (id, user_id, university_id, created, modified) values (47, 4, 2, '2014/01/04', '2015/05/28');
insert into favorite_unis (id, user_id, university_id, created, modified) values (48, 3, 2, '2014/10/11', '2015/04/11');
insert into favorite_unis (id, user_id, university_id, created, modified) values (49, 29, 4, '2014/10/09', '2015/07/28');
insert into favorite_unis (id, user_id, university_id, created, modified) values (50, 60, 3, '2014/01/13', '2015/04/30');
insert into favorite_unis (id, user_id, university_id, created, modified) values (51, 22, 2, '2014/06/04', '2015/09/20');
insert into favorite_unis (id, user_id, university_id, created, modified) values (52, 30, 2, '2014/03/14', '2015/09/02');
insert into favorite_unis (id, user_id, university_id, created, modified) values (53, 69, 6, '2014/06/25', '2015/02/24');
insert into favorite_unis (id, user_id, university_id, created, modified) values (54, 12, 5, '2014/07/25', '2015/09/11');
insert into favorite_unis (id, user_id, university_id, created, modified) values (55, 5, 4, '2014/11/18', '2015/05/30');
insert into favorite_unis (id, user_id, university_id, created, modified) values (56, 35, 4, '2014/04/22', '2015/07/02');
insert into favorite_unis (id, user_id, university_id, created, modified) values (57, 57, 1, '2014/07/25', '2015/10/08');
insert into favorite_unis (id, user_id, university_id, created, modified) values (58, 8, 1, '2014/05/04', '2015/11/13');
insert into favorite_unis (id, user_id, university_id, created, modified) values (59, 42, 6, '2014/04/29', '2015/03/27');
insert into favorite_unis (id, user_id, university_id, created, modified) values (60, 24, 6, '2014/03/27', '2015/10/03');
insert into favorite_unis (id, user_id, university_id, created, modified) values (61, 5, 5, '2014/08/18', '2015/08/25');
insert into favorite_unis (id, user_id, university_id, created, modified) values (62, 25, 4, '2014/06/24', '2015/08/21');
insert into favorite_unis (id, user_id, university_id, created, modified) values (63, 48, 6, '2013/12/06', '2015/08/30');
insert into favorite_unis (id, user_id, university_id, created, modified) values (64, 69, 1, '2014/01/02', '2015/04/06');
insert into favorite_unis (id, user_id, university_id, created, modified) values (65, 72, 4, '2014/06/17', '2014/12/31');
insert into favorite_unis (id, user_id, university_id, created, modified) values (66, 76, 2, '2014/11/09', '2015/08/06');
insert into favorite_unis (id, user_id, university_id, created, modified) values (67, 49, 6, '2014/08/04', '2015/03/11');
insert into favorite_unis (id, user_id, university_id, created, modified) values (68, 73, 1, '2014/07/31', '2015/10/23');
insert into favorite_unis (id, user_id, university_id, created, modified) values (69, 2, 2, '2014/03/01', '2015/10/31');
insert into favorite_unis (id, user_id, university_id, created, modified) values (70, 7, 3, '2013/12/22', '2015/06/07');
insert into favorite_unis (id, user_id, university_id, created, modified) values (71, 35, 5, '2014/11/11', '2015/02/03');
insert into favorite_unis (id, user_id, university_id, created, modified) values (72, 1, 6, '2014/01/29', '2015/10/30');
insert into favorite_unis (id, user_id, university_id, created, modified) values (73, 60, 6, '2014/03/11', '2014/12/25');
insert into favorite_unis (id, user_id, university_id, created, modified) values (74, 71, 4, '2014/03/16', '2015/07/30');
insert into favorite_unis (id, user_id, university_id, created, modified) values (75, 77, 6, '2014/09/22', '2015/03/01');
insert into favorite_unis (id, user_id, university_id, created, modified) values (76, 34, 1, '2014/09/09', '2015/03/13');
insert into favorite_unis (id, user_id, university_id, created, modified) values (77, 33, 1, '2014/03/05', '2015/05/31');
insert into favorite_unis (id, user_id, university_id, created, modified) values (78, 50, 4, '2014/04/05', '2015/11/20');
insert into favorite_unis (id, user_id, university_id, created, modified) values (79, 70, 1, '2014/07/02', '2015/11/09');
insert into favorite_unis (id, user_id, university_id, created, modified) values (80, 70, 6, '2014/10/03', '2015/03/10');
insert into favorite_unis (id, user_id, university_id, created, modified) values (81, 2, 6, '2014/07/07', '2015/01/15');
insert into favorite_unis (id, user_id, university_id, created, modified) values (82, 68, 2, '2014/03/17', '2015/02/02');
insert into favorite_unis (id, user_id, university_id, created, modified) values (83, 54, 1, '2013/12/25', '2015/03/19');
insert into favorite_unis (id, user_id, university_id, created, modified) values (84, 26, 4, '2014/10/11', '2015/08/16');
insert into favorite_unis (id, user_id, university_id, created, modified) values (85, 44, 2, '2014/02/13', '2015/06/28');
insert into favorite_unis (id, user_id, university_id, created, modified) values (86, 4, 4, '2014/07/04', '2015/04/15');
insert into favorite_unis (id, user_id, university_id, created, modified) values (87, 49, 1, '2014/06/16', '2015/08/30');
insert into favorite_unis (id, user_id, university_id, created, modified) values (88, 1, 3, '2014/04/06', '2015/06/17');
insert into favorite_unis (id, user_id, university_id, created, modified) values (89, 26, 4, '2014/08/30', '2015/09/29');
insert into favorite_unis (id, user_id, university_id, created, modified) values (90, 8, 2, '2014/03/25', '2015/10/17');
insert into favorite_unis (id, user_id, university_id, created, modified) values (91, 50, 5, '2014/05/04', '2015/11/27');
insert into favorite_unis (id, user_id, university_id, created, modified) values (92, 68, 4, '2014/02/05', '2015/04/12');
insert into favorite_unis (id, user_id, university_id, created, modified) values (93, 75, 1, '2014/04/10', '2015/02/17');
insert into favorite_unis (id, user_id, university_id, created, modified) values (94, 66, 2, '2014/11/14', '2015/11/24');
insert into favorite_unis (id, user_id, university_id, created, modified) values (95, 52, 6, '2013/12/23', '2015/10/22');
insert into favorite_unis (id, user_id, university_id, created, modified) values (96, 46, 5, '2014/04/17', '2015/11/22');
insert into favorite_unis (id, user_id, university_id, created, modified) values (97, 27, 4, '2014/04/08', '2015/08/25');
insert into favorite_unis (id, user_id, university_id, created, modified) values (98, 8, 5, '2014/03/23', '2015/05/03');
insert into favorite_unis (id, user_id, university_id, created, modified) values (99, 33, 4, '2014/11/07', '2015/01/10');
insert into favorite_unis (id, user_id, university_id, created, modified) values (100, 28, 6, '2014/03/15', '2015/06/24');


/*questionsのダミーデータ*/
insert into questions (id, user_id, question, university_id, created, modified) values (1, 69, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 1, '2014/02/04', '2015/08/26');
insert into questions (id, user_id, question, university_id, created, modified) values (2, 29, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 6, '2014/01/08', '2015/07/24');
insert into questions (id, user_id, question, university_id, created, modified) values (3, 6, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 6, '2014/08/13', '2015/05/29');
insert into questions (id, user_id, question, university_id, created, modified) values (4, 26, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 3, '2014/09/26', '2015/09/22');
insert into questions (id, user_id, question, university_id, created, modified) values (5, 56, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 3, '2014/02/01', '2015/01/26');
insert into questions (id, user_id, question, university_id, created, modified) values (6, 42, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 1, '2014/08/03', '2015/08/17');
insert into questions (id, user_id, question, university_id, created, modified) values (7, 16, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 5, '2014/03/18', '2015/02/26');
insert into questions (id, user_id, question, university_id, created, modified) values (8, 36, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 5, '2014/02/18', '2015/09/18');
insert into questions (id, user_id, question, university_id, created, modified) values (9, 19, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 4, '2014/02/17', '2015/01/29');
insert into questions (id, user_id, question, university_id, created, modified) values (10, 14, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 3, '2014/11/02', '2015/10/23');
insert into questions (id, user_id, question, university_id, created, modified) values (11, 3, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 2, '2014/09/16', '2015/10/11');
insert into questions (id, user_id, question, university_id, created, modified) values (12, 3, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 5, '2013/12/04', '2015/11/22');
insert into questions (id, user_id, question, university_id, created, modified) values (13, 36, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 4, '2014/02/15', '2015/09/28');
insert into questions (id, user_id, question, university_id, created, modified) values (14, 36, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 6, '2014/08/04', '2015/03/09');
insert into questions (id, user_id, question, university_id, created, modified) values (15, 42, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 4, '2014/07/31', '2015/02/25');
insert into questions (id, user_id, question, university_id, created, modified) values (16, 24, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 1, '2013/11/29', '2015/06/26');
insert into questions (id, user_id, question, university_id, created, modified) values (17, 35, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 1, '2013/12/09', '2015/10/08');
insert into questions (id, user_id, question, university_id, created, modified) values (18, 71, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 6, '2014/02/13', '2015/11/16');
insert into questions (id, user_id, question, university_id, created, modified) values (19, 74, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 5, '2014/08/31', '2015/07/13');
insert into questions (id, user_id, question, university_id, created, modified) values (20, 1, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 4, '2013/12/01', '2015/11/10');
insert into questions (id, user_id, question, university_id, created, modified) values (21, 29, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 3, '2014/10/22', '2015/03/20');
insert into questions (id, user_id, question, university_id, created, modified) values (22, 6, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 3, '2014/05/03', '2015/10/11');
insert into questions (id, user_id, question, university_id, created, modified) values (23, 61, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 3, '2014/07/28', '2015/05/10');
insert into questions (id, user_id, question, university_id, created, modified) values (24, 64, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 4, '2014/01/08', '2015/11/21');
insert into questions (id, user_id, question, university_id, created, modified) values (25, 40, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 4, '2013/12/08', '2015/04/20');
insert into questions (id, user_id, question, university_id, created, modified) values (26, 70, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 4, '2014/07/30', '2015/01/01');
insert into questions (id, user_id, question, university_id, created, modified) values (27, 20, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 6, '2014/03/17', '2015/04/21');
insert into questions (id, user_id, question, university_id, created, modified) values (28, 53, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 6, '2014/08/19', '2015/06/24');
insert into questions (id, user_id, question, university_id, created, modified) values (29, 12, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 1, '2014/07/17', '2015/05/07');
insert into questions (id, user_id, question, university_id, created, modified) values (30, 15, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 1, '2014/06/04', '2015/07/27');
insert into questions (id, user_id, question, university_id, created, modified) values (31, 47, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 5, '2014/09/10', '2015/07/12');
insert into questions (id, user_id, question, university_id, created, modified) values (32, 5, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 5, '2014/09/27', '2015/07/08');
insert into questions (id, user_id, question, university_id, created, modified) values (33, 48, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 1, '2014/02/10', '2015/01/08');
insert into questions (id, user_id, question, university_id, created, modified) values (34, 15, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 5, '2014/07/17', '2015/08/24');
insert into questions (id, user_id, question, university_id, created, modified) values (35, 47, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 1, '2014/07/11', '2015/05/18');
insert into questions (id, user_id, question, university_id, created, modified) values (36, 64, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 4, '2014/06/12', '2015/02/10');
insert into questions (id, user_id, question, university_id, created, modified) values (37, 44, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 2, '2014/07/10', '2015/05/27');
insert into questions (id, user_id, question, university_id, created, modified) values (38, 75, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 5, '2014/03/29', '2015/10/25');
insert into questions (id, user_id, question, university_id, created, modified) values (39, 55, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 2, '2014/03/13', '2015/02/10');
insert into questions (id, user_id, question, university_id, created, modified) values (40, 4, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 6, '2013/12/03', '2015/10/03');
insert into questions (id, user_id, question, university_id, created, modified) values (41, 41, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 5, '2014/02/22', '2015/09/06');
insert into questions (id, user_id, question, university_id, created, modified) values (42, 25, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 6, '2014/01/13', '2015/08/19');
insert into questions (id, user_id, question, university_id, created, modified) values (43, 22, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 6, '2014/01/19', '2015/04/05');
insert into questions (id, user_id, question, university_id, created, modified) values (44, 2, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 6, '2013/12/10', '2015/11/01');
insert into questions (id, user_id, question, university_id, created, modified) values (45, 33, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 6, '2014/03/10', '2015/09/24');
insert into questions (id, user_id, question, university_id, created, modified) values (46, 23, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 1, '2014/08/10', '2015/06/26');
insert into questions (id, user_id, question, university_id, created, modified) values (47, 34, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 4, '2014/10/01', '2015/09/28');
insert into questions (id, user_id, question, university_id, created, modified) values (48, 43, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 1, '2014/06/06', '2015/03/17');
insert into questions (id, user_id, question, university_id, created, modified) values (49, 14, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 2, '2014/02/17', '2015/06/16');
insert into questions (id, user_id, question, university_id, created, modified) values (50, 22, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 1, '2014/09/22', '2015/08/07');
insert into questions (id, user_id, question, university_id, created, modified) values (51, 17, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 1, '2013/12/08', '2015/07/07');
insert into questions (id, user_id, question, university_id, created, modified) values (52, 33, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 5, '2014/10/19', '2015/03/13');
insert into questions (id, user_id, question, university_id, created, modified) values (53, 42, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 6, '2014/06/30', '2015/01/17');
insert into questions (id, user_id, question, university_id, created, modified) values (54, 4, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 6, '2014/01/29', '2015/02/03');
insert into questions (id, user_id, question, university_id, created, modified) values (55, 19, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 1, '2014/08/11', '2014/12/28');
insert into questions (id, user_id, question, university_id, created, modified) values (56, 46, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 4, '2014/10/12', '2015/09/05');
insert into questions (id, user_id, question, university_id, created, modified) values (57, 14, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 1, '2014/11/28', '2015/01/25');
insert into questions (id, user_id, question, university_id, created, modified) values (58, 16, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 5, '2014/09/19', '2015/10/13');
insert into questions (id, user_id, question, university_id, created, modified) values (59, 42, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 6, '2014/09/18', '2015/03/15');
insert into questions (id, user_id, question, university_id, created, modified) values (60, 12, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 4, '2014/04/17', '2015/03/29');
insert into questions (id, user_id, question, university_id, created, modified) values (61, 50, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 4, '2014/02/12', '2015/01/03');
insert into questions (id, user_id, question, university_id, created, modified) values (62, 68, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 5, '2014/10/02', '2014/12/14');
insert into questions (id, user_id, question, university_id, created, modified) values (63, 32, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 3, '2014/01/17', '2015/11/13');
insert into questions (id, user_id, question, university_id, created, modified) values (64, 76, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 4, '2014/02/01', '2015/08/29');
insert into questions (id, user_id, question, university_id, created, modified) values (65, 75, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 3, '2014/11/16', '2015/01/18');
insert into questions (id, user_id, question, university_id, created, modified) values (66, 38, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 1, '2014/06/16', '2015/07/25');
insert into questions (id, user_id, question, university_id, created, modified) values (67, 30, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 1, '2014/07/20', '2015/10/21');
insert into questions (id, user_id, question, university_id, created, modified) values (68, 23, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 2, '2013/12/23', '2015/02/27');
insert into questions (id, user_id, question, university_id, created, modified) values (69, 40, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 6, '2014/08/10', '2015/07/27');
insert into questions (id, user_id, question, university_id, created, modified) values (70, 41, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 1, '2014/07/22', '2015/01/14');
insert into questions (id, user_id, question, university_id, created, modified) values (71, 13, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 4, '2014/08/22', '2015/04/15');
insert into questions (id, user_id, question, university_id, created, modified) values (72, 1, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 5, '2014/10/05', '2015/09/08');
insert into questions (id, user_id, question, university_id, created, modified) values (73, 37, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 2, '2014/02/01', '2015/04/15');
insert into questions (id, user_id, question, university_id, created, modified) values (74, 28, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 1, '2014/07/02', '2015/03/30');
insert into questions (id, user_id, question, university_id, created, modified) values (75, 43, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 5, '2014/07/01', '2015/07/30');
insert into questions (id, user_id, question, university_id, created, modified) values (76, 39, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 2, '2014/04/14', '2015/09/24');
insert into questions (id, user_id, question, university_id, created, modified) values (77, 56, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 4, '2014/10/01', '2015/10/14');
insert into questions (id, user_id, question, university_id, created, modified) values (78, 69, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 2, '2013/12/08', '2014/12/04');
insert into questions (id, user_id, question, university_id, created, modified) values (79, 9, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 6, '2014/10/16', '2015/10/27');
insert into questions (id, user_id, question, university_id, created, modified) values (80, 45, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 1, '2014/01/16', '2015/10/08');
insert into questions (id, user_id, question, university_id, created, modified) values (81, 14, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 2, '2014/01/13', '2015/10/29');
insert into questions (id, user_id, question, university_id, created, modified) values (82, 8, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 5, '2014/10/02', '2015/01/28');
insert into questions (id, user_id, question, university_id, created, modified) values (83, 34, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 1, '2014/03/01', '2015/03/10');
insert into questions (id, user_id, question, university_id, created, modified) values (84, 27, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 3, '2014/10/23', '2015/08/22');
insert into questions (id, user_id, question, university_id, created, modified) values (85, 29, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 3, '2014/08/11', '2015/10/17');
insert into questions (id, user_id, question, university_id, created, modified) values (86, 73, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 2, '2014/07/23', '2015/03/06');
insert into questions (id, user_id, question, university_id, created, modified) values (87, 35, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 4, '2014/03/31', '2015/04/18');
insert into questions (id, user_id, question, university_id, created, modified) values (88, 71, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 3, '2014/05/12', '2015/03/30');
insert into questions (id, user_id, question, university_id, created, modified) values (89, 72, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 1, '2014/04/11', '2015/05/21');
insert into questions (id, user_id, question, university_id, created, modified) values (90, 29, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 3, '2014/11/20', '2015/10/23');
insert into questions (id, user_id, question, university_id, created, modified) values (91, 25, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 2, '2014/07/25', '2015/05/01');
insert into questions (id, user_id, question, university_id, created, modified) values (92, 42, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 3, '2014/08/29', '2015/07/15');
insert into questions (id, user_id, question, university_id, created, modified) values (93, 4, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 3, '2014/03/29', '2015/07/16');
insert into questions (id, user_id, question, university_id, created, modified) values (94, 17, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 1, '2014/02/08', '2015/05/20');
insert into questions (id, user_id, question, university_id, created, modified) values (95, 2, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 4, '2014/07/19', '2015/11/19');
insert into questions (id, user_id, question, university_id, created, modified) values (96, 45, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 1, '2014/08/05', '2015/02/03');
insert into questions (id, user_id, question, university_id, created, modified) values (97, 57, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 1, '2014/04/01', '2015/10/04');
insert into questions (id, user_id, question, university_id, created, modified) values (98, 11, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 5, '2014/06/01', '2015/07/30');
insert into questions (id, user_id, question, university_id, created, modified) values (99, 37, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 1, '2014/08/04', '2015/10/26');
insert into questions (id, user_id, question, university_id, created, modified) values (100, 39, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 1, '2014/11/13', '2015/09/26');


/*answersのダミーデータ*/
insert into answers (id, user_id, answer, question_id, created, modified) values (1, 47, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 65, '2014/03/25', '2015/02/17');
insert into answers (id, user_id, answer, question_id, created, modified) values (2, 73, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 98, '2014/05/22', '2015/02/04');
insert into answers (id, user_id, answer, question_id, created, modified) values (3, 22, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 6, '2014/11/01', '2015/01/05');
insert into answers (id, user_id, answer, question_id, created, modified) values (4, 36, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 37, '2014/02/18', '2015/08/18');
insert into answers (id, user_id, answer, question_id, created, modified) values (5, 43, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 47, '2014/07/12', '2015/03/01');
insert into answers (id, user_id, answer, question_id, created, modified) values (6, 74, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 48, '2014/01/03', '2015/10/04');
insert into answers (id, user_id, answer, question_id, created, modified) values (7, 18, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 5, '2014/07/14', '2015/08/27');
insert into answers (id, user_id, answer, question_id, created, modified) values (8, 28, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 55, '2014/05/03', '2015/09/19');
insert into answers (id, user_id, answer, question_id, created, modified) values (9, 15, 'Fusce consequat. Nulla nisl. Nunc nisl.', 51, '2014/11/11', '2015/09/30');
insert into answers (id, user_id, answer, question_id, created, modified) values (10, 4, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 70, '2014/01/25', '2015/11/15');
insert into answers (id, user_id, answer, question_id, created, modified) values (11, 75, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 11, '2014/07/21', '2014/12/23');
insert into answers (id, user_id, answer, question_id, created, modified) values (12, 63, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 84, '2014/08/26', '2014/11/30');
insert into answers (id, user_id, answer, question_id, created, modified) values (13, 63, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 83, '2013/12/26', '2015/08/19');
insert into answers (id, user_id, answer, question_id, created, modified) values (14, 58, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 73, '2014/10/23', '2015/07/15');
insert into answers (id, user_id, answer, question_id, created, modified) values (15, 33, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 85, '2014/06/10', '2015/11/13');
insert into answers (id, user_id, answer, question_id, created, modified) values (16, 58, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 71, '2014/06/15', '2014/12/04');
insert into answers (id, user_id, answer, question_id, created, modified) values (17, 58, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 17, '2014/05/20', '2015/01/04');
insert into answers (id, user_id, answer, question_id, created, modified) values (18, 55, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 96, '2014/05/12', '2015/06/22');
insert into answers (id, user_id, answer, question_id, created, modified) values (19, 23, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 39, '2014/08/15', '2015/10/25');
insert into answers (id, user_id, answer, question_id, created, modified) values (20, 49, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 100, '2014/01/07', '2015/10/26');
insert into answers (id, user_id, answer, question_id, created, modified) values (21, 65, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 43, '2014/08/09', '2015/08/13');
insert into answers (id, user_id, answer, question_id, created, modified) values (22, 18, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 69, '2013/12/18', '2015/06/11');
insert into answers (id, user_id, answer, question_id, created, modified) values (23, 53, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 100, '2014/08/07', '2015/07/03');
insert into answers (id, user_id, answer, question_id, created, modified) values (24, 69, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 20, '2013/12/25', '2015/09/11');
insert into answers (id, user_id, answer, question_id, created, modified) values (25, 19, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 50, '2014/01/03', '2015/05/19');
insert into answers (id, user_id, answer, question_id, created, modified) values (26, 23, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 48, '2014/01/10', '2015/05/15');
insert into answers (id, user_id, answer, question_id, created, modified) values (27, 71, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 98, '2014/08/07', '2014/12/24');
insert into answers (id, user_id, answer, question_id, created, modified) values (28, 7, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 55, '2014/10/06', '2015/10/10');
insert into answers (id, user_id, answer, question_id, created, modified) values (29, 13, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 45, '2014/11/24', '2015/03/16');
insert into answers (id, user_id, answer, question_id, created, modified) values (30, 51, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 47, '2014/02/23', '2015/11/27');
insert into answers (id, user_id, answer, question_id, created, modified) values (31, 50, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 76, '2014/08/15', '2015/01/07');
insert into answers (id, user_id, answer, question_id, created, modified) values (32, 66, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 69, '2014/11/23', '2014/12/20');
insert into answers (id, user_id, answer, question_id, created, modified) values (33, 13, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 46, '2014/06/05', '2014/12/25');
insert into answers (id, user_id, answer, question_id, created, modified) values (34, 14, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 43, '2013/12/03', '2015/06/04');
insert into answers (id, user_id, answer, question_id, created, modified) values (35, 50, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 5, '2014/02/24', '2015/03/28');
insert into answers (id, user_id, answer, question_id, created, modified) values (36, 27, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 35, '2014/11/07', '2015/11/19');
insert into answers (id, user_id, answer, question_id, created, modified) values (37, 73, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 47, '2014/01/23', '2015/10/01');
insert into answers (id, user_id, answer, question_id, created, modified) values (38, 37, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 64, '2014/08/21', '2015/06/21');
insert into answers (id, user_id, answer, question_id, created, modified) values (39, 41, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 2, '2014/02/22', '2015/07/11');
insert into answers (id, user_id, answer, question_id, created, modified) values (40, 37, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 74, '2014/05/30', '2015/09/22');
insert into answers (id, user_id, answer, question_id, created, modified) values (41, 5, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 96, '2014/11/16', '2015/08/23');
insert into answers (id, user_id, answer, question_id, created, modified) values (42, 24, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 29, '2014/09/20', '2015/05/01');
insert into answers (id, user_id, answer, question_id, created, modified) values (43, 22, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 12, '2014/09/13', '2015/01/22');
insert into answers (id, user_id, answer, question_id, created, modified) values (44, 52, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 68, '2014/01/04', '2015/09/27');
insert into answers (id, user_id, answer, question_id, created, modified) values (45, 45, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 55, '2014/06/26', '2015/07/22');
insert into answers (id, user_id, answer, question_id, created, modified) values (46, 54, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 25, '2013/12/08', '2015/04/29');
insert into answers (id, user_id, answer, question_id, created, modified) values (47, 25, 'Fusce consequat. Nulla nisl. Nunc nisl.', 97, '2014/10/17', '2015/05/23');
insert into answers (id, user_id, answer, question_id, created, modified) values (48, 75, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 76, '2014/09/11', '2015/10/06');
insert into answers (id, user_id, answer, question_id, created, modified) values (49, 30, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 45, '2014/01/16', '2015/05/21');
insert into answers (id, user_id, answer, question_id, created, modified) values (50, 76, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 34, '2014/10/04', '2014/12/01');
insert into answers (id, user_id, answer, question_id, created, modified) values (51, 52, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 98, '2014/05/05', '2015/03/04');
insert into answers (id, user_id, answer, question_id, created, modified) values (52, 32, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 54, '2014/09/16', '2015/09/23');
insert into answers (id, user_id, answer, question_id, created, modified) values (53, 2, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 92, '2014/11/26', '2014/12/09');
insert into answers (id, user_id, answer, question_id, created, modified) values (54, 17, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 39, '2014/10/01', '2014/12/28');
insert into answers (id, user_id, answer, question_id, created, modified) values (55, 67, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 94, '2013/12/08', '2015/04/22');
insert into answers (id, user_id, answer, question_id, created, modified) values (56, 44, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 29, '2014/09/21', '2015/01/29');
insert into answers (id, user_id, answer, question_id, created, modified) values (57, 16, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 65, '2014/07/03', '2015/07/31');
insert into answers (id, user_id, answer, question_id, created, modified) values (58, 33, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 24, '2014/10/07', '2015/01/10');
insert into answers (id, user_id, answer, question_id, created, modified) values (59, 54, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 93, '2014/04/22', '2015/01/11');
insert into answers (id, user_id, answer, question_id, created, modified) values (60, 63, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 20, '2013/12/05', '2015/04/04');
insert into answers (id, user_id, answer, question_id, created, modified) values (61, 26, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 54, '2014/06/26', '2015/11/21');
insert into answers (id, user_id, answer, question_id, created, modified) values (62, 76, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 25, '2014/11/13', '2015/08/26');
insert into answers (id, user_id, answer, question_id, created, modified) values (63, 71, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 17, '2014/11/13', '2015/05/05');
insert into answers (id, user_id, answer, question_id, created, modified) values (64, 20, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 78, '2014/03/04', '2015/09/13');
insert into answers (id, user_id, answer, question_id, created, modified) values (65, 58, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 50, '2014/05/20', '2015/08/29');
insert into answers (id, user_id, answer, question_id, created, modified) values (66, 40, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 4, '2014/10/11', '2015/08/09');
insert into answers (id, user_id, answer, question_id, created, modified) values (67, 44, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 84, '2014/11/06', '2015/09/21');
insert into answers (id, user_id, answer, question_id, created, modified) values (68, 74, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 66, '2014/02/24', '2015/11/27');
insert into answers (id, user_id, answer, question_id, created, modified) values (69, 55, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 2, '2014/02/23', '2014/12/11');
insert into answers (id, user_id, answer, question_id, created, modified) values (70, 44, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 54, '2014/04/09', '2015/10/23');
insert into answers (id, user_id, answer, question_id, created, modified) values (71, 21, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 91, '2014/03/06', '2015/01/02');
insert into answers (id, user_id, answer, question_id, created, modified) values (72, 60, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 1, '2014/01/04', '2015/06/13');
insert into answers (id, user_id, answer, question_id, created, modified) values (73, 22, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 10, '2014/06/17', '2015/07/16');
insert into answers (id, user_id, answer, question_id, created, modified) values (74, 46, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 29, '2014/06/23', '2015/03/31');
insert into answers (id, user_id, answer, question_id, created, modified) values (75, 18, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 56, '2014/04/27', '2015/01/31');
insert into answers (id, user_id, answer, question_id, created, modified) values (76, 77, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 95, '2014/05/16', '2015/02/11');
insert into answers (id, user_id, answer, question_id, created, modified) values (77, 13, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 17, '2014/01/03', '2015/01/11');
insert into answers (id, user_id, answer, question_id, created, modified) values (78, 38, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 69, '2014/06/02', '2015/10/19');
insert into answers (id, user_id, answer, question_id, created, modified) values (79, 29, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 10, '2014/01/28', '2015/03/19');
insert into answers (id, user_id, answer, question_id, created, modified) values (80, 22, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 32, '2014/08/02', '2015/02/15');
insert into answers (id, user_id, answer, question_id, created, modified) values (81, 47, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 59, '2014/06/11', '2015/10/26');
insert into answers (id, user_id, answer, question_id, created, modified) values (82, 69, 'Fusce consequat. Nulla nisl. Nunc nisl.', 5, '2013/12/26', '2014/12/16');
insert into answers (id, user_id, answer, question_id, created, modified) values (83, 42, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 98, '2014/07/30', '2015/11/06');
insert into answers (id, user_id, answer, question_id, created, modified) values (84, 41, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 67, '2014/11/07', '2015/05/25');
insert into answers (id, user_id, answer, question_id, created, modified) values (85, 2, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 26, '2014/03/07', '2015/01/24');
insert into answers (id, user_id, answer, question_id, created, modified) values (86, 69, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 53, '2014/07/03', '2015/08/16');
insert into answers (id, user_id, answer, question_id, created, modified) values (87, 44, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 15, '2014/09/13', '2015/02/04');
insert into answers (id, user_id, answer, question_id, created, modified) values (88, 14, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 77, '2014/10/05', '2015/07/01');
insert into answers (id, user_id, answer, question_id, created, modified) values (89, 33, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 76, '2014/03/07', '2015/04/19');
insert into answers (id, user_id, answer, question_id, created, modified) values (90, 70, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 20, '2014/01/02', '2015/10/10');
insert into answers (id, user_id, answer, question_id, created, modified) values (91, 13, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 6, '2014/01/06', '2015/07/25');
insert into answers (id, user_id, answer, question_id, created, modified) values (92, 46, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 95, '2014/08/11', '2015/08/01');
insert into answers (id, user_id, answer, question_id, created, modified) values (93, 50, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 72, '2014/08/22', '2015/03/19');
insert into answers (id, user_id, answer, question_id, created, modified) values (94, 15, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 69, '2014/11/09', '2015/02/19');
insert into answers (id, user_id, answer, question_id, created, modified) values (95, 27, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 22, '2014/07/21', '2015/04/23');
insert into answers (id, user_id, answer, question_id, created, modified) values (96, 56, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 14, '2014/10/22', '2015/08/20');
insert into answers (id, user_id, answer, question_id, created, modified) values (97, 23, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 55, '2013/12/30', '2015/05/08');
insert into answers (id, user_id, answer, question_id, created, modified) values (98, 76, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 43, '2014/06/23', '2015/02/11');
insert into answers (id, user_id, answer, question_id, created, modified) values (99, 44, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 71, '2014/04/19', '2015/02/21');
insert into answers (id, user_id, answer, question_id, created, modified) values (100, 56, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 34, '2014/01/01', '2015/07/16');


/*picture_unisのダミーデータ　（写真のデータは実際はない）*/
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (1, 'aliquam.tiff', 1, 63, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2014/04/27', '2015/06/24');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (2, 'erat nulla tempus.png', 5, 19, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2014/07/20', '2015/11/09');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (3, 'leo odio condimentum.gif', 4, 73, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2014/10/23', '2015/04/01');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (4, 'ullamcorper purus.gif', 2, 58, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2014/02/03', '2015/11/19');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (5, 'vel dapibus.png', 1, 15, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2014/11/21', '2015/06/12');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (6, 'sem praesent.png', 1, 52, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2014/05/08', '2015/11/13');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (7, 'tortor sollicitudin.tiff', 3, 67, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2014/04/12', '2015/09/04');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (8, 'fermentum.gif', 4, 3, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2014/11/22', '2014/12/08');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (9, 'dui proin.jpeg', 3, 21, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2014/03/18', '2015/07/21');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (10, 'curae.gif', 2, 74, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2014/11/13', '2015/05/28');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (11, 'morbi quis tortor.tiff', 6, 44, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2014/06/20', '2015/07/24');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (12, 'diam cras.jpeg', 3, 29, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2014/09/21', '2014/12/10');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (13, 'dolor.gif', 2, 50, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2014/05/26', '2015/03/17');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (14, 'ipsum aliquam.jpeg', 5, 30, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2014/07/31', '2015/04/23');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (15, 'erat nulla tempus.png', 1, 10, 'Fusce consequat. Nulla nisl. Nunc nisl.', '2014/05/16', '2014/12/30');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (16, 'nam tristique tortor.jpeg', 3, 22, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2014/09/10', '2015/05/30');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (17, 'imperdiet sapien.png', 2, 64, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2014/06/21', '2015/11/24');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (18, 'sagittis sapien cum.tiff', 1, 47, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2014/04/08', '2015/04/12');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (19, 'rutrum nulla.jpeg', 2, 51, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2014/09/10', '2015/06/15');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (20, 'habitasse platea dictumst.tiff', 5, 2, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2014/09/08', '2015/06/29');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (21, 'convallis.gif', 6, 21, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2014/08/26', '2015/11/24');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (22, 'ipsum.gif', 6, 70, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2014/09/12', '2015/09/28');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (23, 'consequat metus sapien.tiff', 5, 3, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2014/08/21', '2015/09/30');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (24, 'diam id ornare.jpeg', 2, 14, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2014/08/28', '2015/10/03');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (25, 'magnis.gif', 6, 51, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2014/06/21', '2015/05/02');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (26, 'lectus vestibulum.png', 6, 6, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2014/05/05', '2015/03/05');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (27, 'ante.tiff', 5, 12, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/04/13', '2015/05/28');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (28, 'sed.tiff', 6, 34, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2014/06/06', '2014/12/06');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (29, 'libero.jpeg', 3, 28, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2014/10/19', '2015/08/05');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (30, 'in purus eu.tiff', 6, 3, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2014/03/20', '2015/03/21');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (31, 'amet.tiff', 1, 47, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2014/10/04', '2015/11/13');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (32, 'sociis natoque.jpeg', 2, 69, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2013/12/26', '2015/07/02');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (33, 'orci luctus.tiff', 4, 17, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2014/07/13', '2015/10/11');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (34, 'est donec.png', 1, 31, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2014/10/18', '2015/09/19');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (35, 'ultrices.tiff', 5, 50, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2014/02/13', '2014/12/08');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (36, 'mauris lacinia.jpeg', 6, 5, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2014/04/15', '2015/09/02');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (37, 'tincidunt.png', 4, 13, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2014/07/26', '2015/10/07');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (38, 'etiam faucibus cursus.jpeg', 2, 50, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/06/24', '2015/04/02');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (39, 'ut.gif', 6, 33, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2014/10/28', '2015/03/17');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (40, 'libero.jpeg', 5, 61, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2014/10/16', '2015/03/04');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (41, 'accumsan felis ut.png', 4, 23, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2014/09/10', '2015/03/20');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (42, 'habitasse platea.gif', 1, 66, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/03/03', '2015/02/09');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (43, 'quisque.tiff', 2, 65, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2014/05/08', '2015/08/27');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (44, 'ornare imperdiet sapien.gif', 5, 24, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2014/05/25', '2015/01/16');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (45, 'aliquet.jpeg', 4, 7, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2014/11/28', '2015/02/13');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (46, 'maecenas rhoncus.tiff', 3, 34, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2014/08/11', '2015/06/23');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (47, 'primis in.jpeg', 4, 4, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2014/05/18', '2014/12/22');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (48, 'massa.tiff', 6, 37, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2014/04/04', '2015/06/28');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (49, 'eu.gif', 5, 75, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/02/09', '2015/11/07');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (50, 'libero nullam.jpeg', 4, 71, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/01/16', '2015/07/19');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (51, 'molestie lorem quisque.tiff', 4, 54, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2014/11/01', '2015/02/20');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (52, 'massa.jpeg', 4, 5, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2014/08/07', '2015/01/01');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (53, 'consequat.png', 1, 1, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2014/01/29', '2015/07/17');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (54, 'varius.tiff', 5, 67, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/06/14', '2015/06/18');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (55, 'eu orci mauris.tiff', 5, 1, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2014/06/09', '2015/11/19');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (56, 'in.jpeg', 6, 16, 'Fusce consequat. Nulla nisl. Nunc nisl.', '2013/12/04', '2015/10/31');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (57, 'accumsan odio.png', 5, 29, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2014/02/19', '2015/11/18');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (58, 'a feugiat et.gif', 2, 48, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2014/08/27', '2015/11/21');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (59, 'libero nullam sit.tiff', 3, 55, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2014/09/11', '2015/01/25');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (60, 'at.jpeg', 6, 49, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2014/06/19', '2015/04/17');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (61, 'aliquam augue quam.tiff', 6, 52, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2014/04/12', '2015/01/13');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (62, 'purus phasellus in.jpeg', 4, 13, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2013/12/08', '2015/11/21');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (63, 'nulla tellus in.png', 4, 34, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2014/03/11', '2015/05/16');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (64, 'nulla nunc.tiff', 4, 63, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2014/02/18', '2015/07/13');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (65, 'vestibulum.png', 3, 58, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2014/08/17', '2015/11/21');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (66, 'venenatis.tiff', 5, 48, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2014/10/25', '2015/05/26');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (67, 'at velit.png', 1, 39, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2014/04/07', '2014/12/24');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (68, 'nam nulla.tiff', 4, 13, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/11/09', '2015/06/02');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (69, 'vulputate.gif', 6, 74, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2014/03/11', '2014/12/24');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (70, 'consequat lectus in.tiff', 6, 23, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2014/08/08', '2015/01/05');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (71, 'enim leo rhoncus.jpeg', 6, 72, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/03/14', '2015/11/21');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (72, 'fusce lacus purus.jpeg', 2, 63, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2014/02/17', '2015/10/24');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (73, 'fusce.jpeg', 5, 11, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2014/07/20', '2015/11/11');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (74, 'donec.jpeg', 4, 4, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2014/07/31', '2015/03/26');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (75, 'justo maecenas rhoncus.gif', 5, 32, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2013/12/17', '2015/02/07');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (76, 'lobortis sapien.gif', 1, 54, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2014/10/10', '2015/10/19');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (77, 'congue.gif', 4, 14, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2014/03/03', '2015/02/03');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (78, 'elit.png', 1, 2, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2014/04/24', '2015/04/13');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (79, 'tellus.png', 5, 63, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2013/12/08', '2015/04/24');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (80, 'a ipsum integer.jpeg', 2, 11, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2014/01/20', '2015/06/26');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (81, 'ante.jpeg', 4, 38, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2014/11/04', '2015/02/04');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (82, 'et ultrices.jpeg', 5, 30, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2014/10/09', '2015/07/06');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (83, 'quis.tiff', 4, 20, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2014/11/20', '2014/12/04');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (84, 'molestie.jpeg', 6, 2, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2014/10/21', '2015/05/13');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (85, 'eu.jpeg', 3, 71, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2014/02/13', '2015/07/25');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (86, 'morbi odio odio.png', 4, 15, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/03/05', '2015/06/26');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (87, 'dis parturient montes.jpeg', 2, 15, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2014/06/30', '2015/05/24');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (88, 'porttitor.jpeg', 5, 30, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2014/05/07', '2014/12/13');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (89, 'morbi vestibulum.jpeg', 1, 28, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2014/02/09', '2015/08/21');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (90, 'massa id nisl.gif', 4, 63, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2014/11/07', '2015/10/30');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (91, 'quis.jpeg', 1, 1, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2014/11/05', '2015/05/31');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (92, 'a.tiff', 3, 73, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2014/04/30', '2015/04/30');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (93, 'convallis duis consequat.gif', 4, 10, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2014/07/17', '2015/03/22');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (94, 'sit amet.png', 4, 34, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2014/06/20', '2015/07/03');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (95, 'tempus semper est.tiff', 4, 66, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2013/12/25', '2015/06/25');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (96, 'sed sagittis.png', 1, 27, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2014/09/13', '2015/10/15');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (97, 'pede.tiff', 5, 48, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2014/03/31', '2015/04/09');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (98, 'nisl.jpeg', 1, 76, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2014/08/28', '2015/11/16');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (99, 'duis aliquam convallis.jpeg', 4, 12, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2014/11/22', '2015/01/17');
insert into picture_unis (id, image, university_id, user_id, comment, created, modified) values (100, 'vulputate elementum nullam.jpeg', 5, 36, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2014/04/02', '2015/01/16');
