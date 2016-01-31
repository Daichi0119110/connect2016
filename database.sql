drop database connect;

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
    gender varchar(10), /*man or woman*/
    self_intro text,
    study_start varchar(255),
    study_end varchar(255),
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

/*picturesのテーブル作成*/
create table pictures (
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

/*areasのダミーデータ*/
insert into areas (id, area) values (1, 'Asia');
insert into areas (id, area) values (2, 'Europe');
insert into areas (id, area) values (3, 'North America');
insert into areas (id, area) values (4, 'South America');
insert into areas (id, area) values (5, 'Oceania');
insert into areas (id, area) values (6, 'Africa');


/*countriesのダミーデータ*/
insert into countries (id, country, area_id) values (1, 'アメリカ', 3);
insert into countries (id, country, area_id) values (2, 'ベルギー', 2);
insert into countries (id, country, area_id) values (3, 'スイス', 2);


/*universitiesのダミーデータ*/
insert into universities (id, university, country_id, created, modified) values (1, 'ゲント大学', 2, '2014/08/07', '2015/07/28');
insert into universities (id, university, country_id, created, modified) values (2, 'シアトル大学', 1, '2014/07/25', '2015/06/07');
insert into universities (id, university, country_id, created, modified) values (3, 'スイス王立工科大学チューリッヒ校', 3, '2013/12/04', '2015/05/29');


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
insert into clips (id, user_id, review_id, answer_id, created, modified) values (1, 78, 1, null, '2014/08/11', '2015/06/06');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (2, 78, null, 3, '2014/07/17', '2015/06/23');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (3, 78, 4, null, '2014/04/23', '2015/11/16');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (4, 78, null, 16, '2014/07/15', '2014/12/27');
insert into clips (id, user_id, review_id, answer_id, created, modified) values (5, 78, 5, null, '2014/07/16', '2015/11/07');



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


/*picturesのダミーデータ　（写真のデータは実際はない）*/
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (1, 'ghent.jpg', 1, 63, 'ゲントの街の写真', '2014/04/27', '2015/06/24');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (2, 'Seattle.jpg', 2, 19, 'シアトルの街の写真', '2014/07/20', '2015/11/09');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (3, 'ETH.jpg', 3, 73, 'ETHキャンパスの写真', '2014/10/23', '2015/04/01');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (4, 'ullamcorper purus.gif', 2, 58, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2014/02/03', '2015/11/19');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (5, 'vel dapibus.png', 1, 15, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2014/11/21', '2015/06/12');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (6, 'sem praesent.png', 1, 52, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2014/05/08', '2015/11/13');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (7, 'tortor sollicitudin.tiff', 3, 67, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2014/04/12', '2015/09/04');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (8, 'fermentum.gif', 4, 3, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2014/11/22', '2014/12/08');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (9, 'dui proin.jpeg', 3, 21, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2014/03/18', '2015/07/21');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (10, 'curae.gif', 2, 74, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2014/11/13', '2015/05/28');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (11, 'morbi quis tortor.tiff', 6, 44, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2014/06/20', '2015/07/24');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (12, 'diam cras.jpeg', 3, 29, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2014/09/21', '2014/12/10');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (13, 'dolor.gif', 2, 50, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2014/05/26', '2015/03/17');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (14, 'ipsum aliquam.jpeg', 5, 30, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2014/07/31', '2015/04/23');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (15, 'erat nulla tempus.png', 1, 10, 'Fusce consequat. Nulla nisl. Nunc nisl.', '2014/05/16', '2014/12/30');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (16, 'nam tristique tortor.jpeg', 3, 22, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2014/09/10', '2015/05/30');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (17, 'imperdiet sapien.png', 2, 64, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2014/06/21', '2015/11/24');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (18, 'sagittis sapien cum.tiff', 1, 47, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2014/04/08', '2015/04/12');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (19, 'rutrum nulla.jpeg', 2, 51, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2014/09/10', '2015/06/15');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (20, 'habitasse platea dictumst.tiff', 5, 2, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2014/09/08', '2015/06/29');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (21, 'convallis.gif', 6, 21, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2014/08/26', '2015/11/24');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (22, 'ipsum.gif', 6, 70, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2014/09/12', '2015/09/28');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (23, 'consequat metus sapien.tiff', 5, 3, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2014/08/21', '2015/09/30');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (24, 'diam id ornare.jpeg', 2, 14, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2014/08/28', '2015/10/03');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (25, 'magnis.gif', 6, 51, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2014/06/21', '2015/05/02');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (26, 'lectus vestibulum.png', 6, 6, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2014/05/05', '2015/03/05');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (27, 'ante.tiff', 5, 12, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/04/13', '2015/05/28');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (28, 'sed.tiff', 6, 34, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2014/06/06', '2014/12/06');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (29, 'libero.jpeg', 3, 28, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2014/10/19', '2015/08/05');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (30, 'in purus eu.tiff', 6, 3, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2014/03/20', '2015/03/21');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (31, 'amet.tiff', 1, 47, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2014/10/04', '2015/11/13');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (32, 'sociis natoque.jpeg', 2, 69, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2013/12/26', '2015/07/02');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (33, 'orci luctus.tiff', 4, 17, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2014/07/13', '2015/10/11');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (34, 'est donec.png', 1, 31, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2014/10/18', '2015/09/19');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (35, 'ultrices.tiff', 5, 50, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2014/02/13', '2014/12/08');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (36, 'mauris lacinia.jpeg', 6, 5, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2014/04/15', '2015/09/02');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (37, 'tincidunt.png', 4, 13, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2014/07/26', '2015/10/07');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (38, 'etiam faucibus cursus.jpeg', 2, 50, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/06/24', '2015/04/02');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (39, 'ut.gif', 6, 33, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2014/10/28', '2015/03/17');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (40, 'libero.jpeg', 5, 61, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2014/10/16', '2015/03/04');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (41, 'accumsan felis ut.png', 4, 23, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2014/09/10', '2015/03/20');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (42, 'habitasse platea.gif', 1, 66, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/03/03', '2015/02/09');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (43, 'quisque.tiff', 2, 65, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2014/05/08', '2015/08/27');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (44, 'ornare imperdiet sapien.gif', 5, 24, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2014/05/25', '2015/01/16');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (45, 'aliquet.jpeg', 4, 7, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2014/11/28', '2015/02/13');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (46, 'maecenas rhoncus.tiff', 3, 34, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2014/08/11', '2015/06/23');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (47, 'primis in.jpeg', 4, 4, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2014/05/18', '2014/12/22');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (48, 'massa.tiff', 6, 37, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2014/04/04', '2015/06/28');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (49, 'eu.gif', 5, 75, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/02/09', '2015/11/07');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (50, 'libero nullam.jpeg', 4, 71, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/01/16', '2015/07/19');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (51, 'molestie lorem quisque.tiff', 4, 54, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2014/11/01', '2015/02/20');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (52, 'massa.jpeg', 4, 5, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2014/08/07', '2015/01/01');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (53, 'consequat.png', 1, 1, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2014/01/29', '2015/07/17');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (54, 'varius.tiff', 5, 67, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/06/14', '2015/06/18');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (55, 'eu orci mauris.tiff', 5, 1, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2014/06/09', '2015/11/19');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (56, 'in.jpeg', 6, 16, 'Fusce consequat. Nulla nisl. Nunc nisl.', '2013/12/04', '2015/10/31');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (57, 'accumsan odio.png', 5, 29, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2014/02/19', '2015/11/18');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (58, 'a feugiat et.gif', 2, 48, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2014/08/27', '2015/11/21');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (59, 'libero nullam sit.tiff', 3, 55, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2014/09/11', '2015/01/25');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (60, 'at.jpeg', 6, 49, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2014/06/19', '2015/04/17');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (61, 'aliquam augue quam.tiff', 6, 52, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2014/04/12', '2015/01/13');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (62, 'purus phasellus in.jpeg', 4, 13, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2013/12/08', '2015/11/21');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (63, 'nulla tellus in.png', 4, 34, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2014/03/11', '2015/05/16');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (64, 'nulla nunc.tiff', 4, 63, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2014/02/18', '2015/07/13');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (65, 'vestibulum.png', 3, 58, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2014/08/17', '2015/11/21');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (66, 'venenatis.tiff', 5, 48, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2014/10/25', '2015/05/26');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (67, 'at velit.png', 1, 39, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2014/04/07', '2014/12/24');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (68, 'nam nulla.tiff', 4, 13, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/11/09', '2015/06/02');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (69, 'vulputate.gif', 6, 74, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2014/03/11', '2014/12/24');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (70, 'consequat lectus in.tiff', 6, 23, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2014/08/08', '2015/01/05');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (71, 'enim leo rhoncus.jpeg', 6, 72, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2014/03/14', '2015/11/21');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (72, 'fusce lacus purus.jpeg', 2, 63, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2014/02/17', '2015/10/24');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (73, 'fusce.jpeg', 5, 11, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2014/07/20', '2015/11/11');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (74, 'donec.jpeg', 4, 4, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2014/07/31', '2015/03/26');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (75, 'justo maecenas rhoncus.gif', 5, 32, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2013/12/17', '2015/02/07');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (76, 'lobortis sapien.gif', 1, 54, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2014/10/10', '2015/10/19');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (77, 'congue.gif', 4, 14, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2014/03/03', '2015/02/03');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (78, 'elit.png', 1, 2, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2014/04/24', '2015/04/13');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (79, 'tellus.png', 5, 63, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2013/12/08', '2015/04/24');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (80, 'a ipsum integer.jpeg', 2, 11, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2014/01/20', '2015/06/26');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (81, 'ante.jpeg', 4, 38, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2014/11/04', '2015/02/04');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (82, 'et ultrices.jpeg', 5, 30, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2014/10/09', '2015/07/06');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (83, 'quis.tiff', 4, 20, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2014/11/20', '2014/12/04');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (84, 'molestie.jpeg', 6, 2, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2014/10/21', '2015/05/13');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (85, 'eu.jpeg', 3, 71, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2014/02/13', '2015/07/25');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (86, 'morbi odio odio.png', 4, 15, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2014/03/05', '2015/06/26');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (87, 'dis parturient montes.jpeg', 2, 15, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2014/06/30', '2015/05/24');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (88, 'porttitor.jpeg', 5, 30, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2014/05/07', '2014/12/13');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (89, 'morbi vestibulum.jpeg', 1, 28, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2014/02/09', '2015/08/21');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (90, 'massa id nisl.gif', 4, 63, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2014/11/07', '2015/10/30');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (91, 'quis.jpeg', 1, 1, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2014/11/05', '2015/05/31');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (92, 'a.tiff', 3, 73, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2014/04/30', '2015/04/30');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (93, 'convallis duis consequat.gif', 4, 10, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2014/07/17', '2015/03/22');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (94, 'sit amet.png', 4, 34, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2014/06/20', '2015/07/03');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (95, 'tempus semper est.tiff', 4, 66, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2013/12/25', '2015/06/25');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (96, 'sed sagittis.png', 1, 27, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2014/09/13', '2015/10/15');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (97, 'pede.tiff', 5, 48, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2014/03/31', '2015/04/09');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (98, 'nisl.jpeg', 1, 76, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '2014/08/28', '2015/11/16');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (99, 'duis aliquam convallis.jpeg', 4, 12, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2014/11/22', '2015/01/17');
insert into pictures (id, image, university_id, user_id, comment, created, modified) values (100, 'vulputate elementum nullam.jpeg', 5, 36, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2014/04/02', '2015/01/16');
