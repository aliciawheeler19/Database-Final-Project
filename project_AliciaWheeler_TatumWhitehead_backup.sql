-- GARDEN SET UP --

create database if not exists wikigarden;
use wikigarden;


-- FLOWER
-- import dataset csv


-- WEATHER
-- import weather csv


-- STATE
drop table if exists state;
create table state (
	state_id int primary key auto_increment,
    state varchar(50) not null,
    state_ab varchar(50) not null
);
insert into state (state_ab, state) values
("AK", "Alaska"),
("AL", "Alabama"),
("AZ", "Arizona"),
("AR", "Arkansas"),
("CA", "California"),
("CO", "Colorado"),
("CT", "Connecticut"),
("DE", "Delaware"),
("DC", "District of Columbia"),
("FL", "Florida"),
("GA", "Georgia"),
("HI", "Hawaii"),
("ID", "Idaho"),
("IL", "Illinois"),
("IN", "Indiana"),
("IA", "Iowa"), 
("KS", "Kansas"),
("KY", "Kentucky"),
("LA", "Louisiana"),
("ME", "Maine"),
("MD", "Maryland"),
("MA", "Massachusetts"),
("MI", "Michigan"),
("MN", "Minnesota"),
("MS", "Mississippi"),
("MO", "Missouri"),
("MT", "Montana"),
("NE", "Nebraska"),
("NV", "Nevada"),
("NH", "New Hampshire"),
("NJ", "New Jersey"),
("NM", "New Mexico"),
("NY", "New York"),
("NC", "North Carolina"),
("ND", "North Dakota"),
("OH", "Ohio"),
("OK", "Oklahoma"),
("OR", "Oregon"),
("PA", "Pennsylvania"),
("PR", "Puerto Rico"),
("RI", "Rhode Island"),
("SC", "South Carolina"),
("SD", "South Dakota"),
("TN", "Tennessee"),
("TX", "Texas"),
("UT", "Utah"),
("VT", "Vermont"),
("VA", "Virginia"),
("WA", "Washington"),
("WV", "West Virginia"),
("WI", "Wisconsin"),
("WY", "Wyoming");


-- USER
drop table if exists user;
create table user (
	user_id int primary key auto_increment, 
    username varchar(50) not null unique,
    email varchar(150) not null unique,
    state_id int,
    constraint fk_user_state1 foreign key (state_id) references state (state_id)
);
insert into user (username, email, state_id) values
	("Eda", "eda@gmail.com", 17),
    ("Emyle", "emyle@gmail.com", 47),
    ("Karlotte", "kar@hotmail.com", 2),
    ("Rosita", "rosita@gmail.com", 10),
    ("Karlik", "karlik@gmail.com", 27),
    ("Ahmed", "ah@mgial.com", 31),
    ("Erwin", "er.@gmai.com", 35),
    ("Beitris", "ebrt@mgial.com", 42),
    ("Lavina", "lav@hotmail.com", 41),
    ("Bernadene", "berd@outlook.com", 50),
    ("Jenifer", "jen@hotmail.com", 19),
    ("Blythe", "bill@gmail.com", 49),
    ("Pattin", "pt@gmail.com", 39),
    ("Nickolas", "ck.a@gmail.com", 36),
    ("Vevay", "vv.vv@hotmail.com", 32),
    ("Lemmy", "lem@gmalil.com", 28),
    ("Daria", "daria@hotmail.com", 8),
    ("Taddeo", "dtadio@mgial.com", 21),
    ("Cecil", "cc@hotmail.com", 17),
    ("Dre", "dc.dre@gmail.com", 30), 
    ("Margaret", "marg@gmail.com", 13),
    ("Lane", "lane@hotmail.com", 20),
    ("Genevieve", "genive@gmail.com", 22),
    ("Brier", "breier@outlook.com", 24),
    ("Willie", "willie@outlook.com", 12),
    ("Hildagarde", "hill@outlook.com", 10),
    ("Roosevelt", "president@gmail.com", 43),
    ("Hillier", "jlliera@gmai.com", 18),
    ("Liana", "linai@nu.com", 2),
    ("Lola", "lollol@gmail.com", 10),
    ("Rolph", "ralph@gmail.com", 20),
    ("Guglielma", "gugu@hotmail.com", 15),
    ("Cordie", "cordie@gmail.com", 1),
    ("Saudra", "sudua@gmail.com", 33),
    ("Orly", "orlay@gmail.com", 44),
    ("Gloria", "gloria@hotmail.com", 49),
    ("Dianemarie", "gods@gmail.com", 14),
    ("Ilyssa", "ilyss@hotmail.com", 32),
    ("Addia", "addiaaa@gmail.com", 45),
    ("Norman", "nor@gog.com", 33),
    ("Yul", "gug@gog.com", 9),
    ("Bayard", "baryad@gmail.com", 8),
    ("Levon", "lev@mgial.com", 25),
    ("Ken", "barab@gmail.com", 43),
    ("Marcile", "mark@gmail.com", 6),
    ("Kevan", "wrong@gmail.com", 42),
    ("Cordy", "cordy@mgail.com", 2),
    ("Dionne", "DD@hotmail.com", 17),
    ("Mozes", "mozes@hotmail.com", 17),
    ("Cathe", "yuck@gmail.com", 7),
    ("Crin", "crin@yahoo.com", 16),
    ("Karlie", "htoamil@gmail.com", 12),
    ("Cherise", "chersei@hotmail.com", 21),
    ("Raven", "raven@mgila.com", 10),
    ("Rosemaria", "rosmarie@hotail.com", 20),
    ("Werner", "werner@hotmail.com", 23),
    ("Marijo", "marijo@gmail.com", 25),
    ("Karel", "karel@gmail.com", 8),
    ("Blinny", "blinny@mgial.com", 11),
    ("Hortensia", "hortniesi@gmail.com", 21),
    ("Annamaria", "annarmedi@gmail.com", 47),
    ("Bendick", "bendicik@gmail.com", 33),
    ("Donielle", "donielle@hotmail.com", 48),
    ("Josiah", "josiah@hotail.com", 47),
    ("Anny", "annay@mgial.com", 44),
    ("Livia", "liviai@gmaoil.com", 25),
    ("Thain", "thain@mgial.com", 16),
    ("Linnet", "linnet@mgial.com", 35),
    ("Garvin", "garvin@gmail.com", 11),
    ("Callean", "callean@gmail.com", 4),
    ("Barnebas", "barnebas@gmail.com", 50),
    ("Keeley", "keelye@hotmail.com", 22),
    ("Benson", "benson@hotmail.com", 37),
    ("Horacio", "horacio@gmail.com", 14),
    ("Lenee", "leneee@gmail.com", 42),
    ("Harcourt", "harcourt@hotmail.com", 17),
    ("Wake", "wake@gmail.com", 18),
    ("Aldrich", "stacia@gmail.com", 46),
    ("Violet", "voilet@hotmail.com", 7),
    ("Vittorio", "vittorio@gmail.com", 21),
    ("Brandise", "rbancidae@homtamil.com", 41),
    ("Cathy", "cathy@mgila.com", 45),
    ("Dorotea", "docoeroa@mgila.ocm", 27),
    ("Malynda", "mayrlnada@gmail.com", 39),
	("Cornelle", "cornella!gmail.com", 4),
    ("Hadrian", "jardian@mgial.com", 26),
    ("Aile", "alile@gmail.com", 14),
    ("Marabel", "marbeale@mgila.ocm", 32),
    ("Mag", "mages@mgial.com", 22),
    ("Kristoffer", "kristoffer@mgial.com", 18),
    ("Corene", "corenea@gmail.com", 31),
    ("Nannie", "navmiian@gmialc.om", 32),
    ("Mayer", "mayer@mgila.com", 1),
    ("Electra", "electa@mgial.com", 14),
    ("Mia", "mia@mgila.com", 13),
    ("Barty", "barty@gmjail.com", 41),
    ("Jard", "jard@hotamil.com", 4),
    ("Cobby", "cobby@mgila.com", 15),
    ("Walliw", "wallow@hotmail.com", 18),
    ("Zilvia", "zoillavai@hotmail.com", 33),
    ("Eloise", "elosia@hotmail.ocm", 34),
    ("Sibelle", "sibukeel@homtail.com", 7),
    ("Odelinda", "eodialenia@homtail.com", 12),
    ("Brina", "brina!@gmail.com", 16),
    ("Arley", "arleu@mgoal.com", 16),
    ("Wanids", "wanid@gmial.com", 3),
    ("Bianca", "binanaca@mgila.com", 39),
    ("Fred", "fred@gmail.com", 48),
    ("Susanetta", "susantee@gmail.com", 46),
    ("Angel", "buffy@gnailm.com", 10),
    ("Raynard", "rayndar@mgila.com", 17),
    ("Iolanthe", "ilonathene@hotmail.com", 30),
    ("Melicent", "meilcent@gmail.com", 26),
    ("Benny", "benny@gnomta.com", 32),
    ("Alister", "alister@hotmail.com", 29),
    ("Simonne", "simmone@hotmail.com", 33),
    ("Stirling", "stirling@hotmail.com", 21),
    ("Danit", "danit@mila.ocm", 33),
    ("Torey", "torey@gmail.com", 8),
    ("Raynerr", "rayner@mgial.com", 48),
    ("Bruis", "bruis@gmail.com", 4),
    ("Lesya", "lesya@jptmal.com", 13),
    ("Evy", "evy@gmial.com", 31),
    ("Linda", "liinda@mgila.com", 32),
    ("Chantalle", "cnatalelles@gmail.com", 47),
    ("Lionello", "lionelleo@mgial.com", 30),
    ("Egon", "egon2@mgila.com", 18),
    ("Wynne", "wynnee@mgial.com", 21),
    ("Obie", "bobaie@mgial.com", 41),
    ("Julie", "juliae@mgial.com", 35),
    ("Diana", "dinane@gmail.com", 12),
    ("Beulah", "beaukhas@hotmail.com", 48),
    ("Oswald", "oswlad@mgila.com", 23),
    ("Glynda", "gylanda@mgila.com", 42),
    ("Rick", "ricky@hotmail.com", 19),
    ("Parry", "parry@hotmail.com", 9),
    ("Corenda", "vcorenda@mgila.com", 23),
    ("Mildred", "mildred@hotnmail.com", 26),
    ("Fabio", "fabio@gmail.com", 38),
    ("Charlean", "charlena@hotmail.com", 22),
    ("Red", "color.@hotmail.com", 50),
    ("Talbert", "talbert@hotmai;.com", 30),
    ("Randene", "randene@hotmilai.com", 48),
    ("Richart", "richart@gmial.com", 38),
    ("Meredithe", "meredith@gmial.com", 2),
    ("Reynold", "reynold@gmjail.com", 12),
    ("Gaelan", "gealena@homtial.com", 48),
    ("Heddie", "heddie@gmial.com", 42),
    ("Cameron", "cameraon@hmail.com", 38),
    ("Wendel", "wendel@hotmail.com", 39),
    ("Harbert", "barhert@mgila.com", 1),
    ("Cherye", "cherye@mbgial.com", 40),
    ("Dimitry", "dimirty@hotna.cil", 12),
    ("Tasia", "tasia@gmail.com", 18),
    ("Georgie", "georigia@mgioal.com", 11),
    ("Rowan", "ronwanaw@mgila.com", 18),
    ("Emmeline", "emmanline@hotmail.com", 49),
    ("Rayner", "rayner@mgila.com", 19),
    ("Boyd", "emily.bkyd@mgila.com", 12),
    ("Lezlie", "leisilie@mgila.com", 42),
    ("Mariska", "markiksa@mgkila.com", 14),
    ("Bernard", "berard@mngila.com", 27),
    ("Gaby", "bfgayk@goma.com", 34),
    ("Dorothee", "borothee@mgila.com", 39),
    ("Candi", "candie@gmail.com", 29),
    ("Helen", "hebelne@mgila.com", 29),
    ("Phillis", "phliilsi@hotmail.com", 43),
    ("Nollie", "nollie@ghomta.com", 6),
    ("Zsa zsa", "szada@hotmilca.com", 12),
    ("Ad", "ad@mngila.com", 19),
    ("Neall", "neal@gmial.com", 2),
    ("Nedi", "nedia@mgila.com", 11),
    ("Heloise", "ehlosia@mngial.com", 6),
    ("Loreen", "loreen@mgial.com", 12),
    ("Brita", "briat@mgila.com", 29),
    ("Rik", "rik@mgila.com", 14),
    ("Morty", "m,orty@mgila.com", 49),
    ("Shela", "shela@gmoat.com", 9),
    ("Bobinette", "bonietee@gmail.com", 39),
    ("Robb", "robb@gmail.com", 22),
    ("Nathalia", "nathalia@gmail.com", 8),
    ("Bab", "bab@mgial.com", 6),
    ("Dom", "bodm@gmial.com", 45),
    ("Baudoin", "baudian@gmail.com", 16),
    ("Maxine", "macine@gmail.com", 30);


-- GARDEN REPORT
drop table if exists garden_report;
create table garden_report (
	garden_report_id int primary key auto_increment,
    height int not null,
    location varchar(50) not null,
    sunlight int not null,
    precipitation int not null,
    soil varchar(50) not null,
    shade varchar(50) not null,
    user_id int,
    flower_id int,
    constraint fk_garden_report_user1 foreign key (user_id) references user (user_id),
    constraint fk_garden_report_flower foreign key (flower_id) references flower (flower_id)
);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (93, 101, 10, 7, "nibh", "congue", 14, 151);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (54, 200, 13, 3, "justo", "cubilia", 113, 167);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (1, 15, 8, 1, "duis", "vestibulum", 166, 6);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (129, 111, 22, 3, "amet sapien", "mi", 68, 75);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (123, 138, 14, 5, "augue", "accumsan odio", 125, 112);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (14, 52, 1, 6, "enim", "mi", 15, 201);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (23, 13, 21, 7, "vehicula condimentum", "quis turpis", 99, 195);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (181, 191, 23, 3, "diam", "curabitur", 169, 94);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (123, 116, 18, 6, "in imperdiet", "posuere metus", 117, 135);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (46, 42, 6, 8, "nulla", "amet", 178, 160);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (65, 114, 23, 6, "eget", "est phasellus", 101, 79);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (19, 165, 16, 1, "amet", "parturient", 134, 29);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (91, 8, 8, 1, "odio", "erat id", 61, 63);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (65, 32, 20, 2, "blandit", "porta", 15, 40);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (37, 182, 8, 9, "sapien", "leo maecenas", 45, 150);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (7, 146, 10, 1, "consequat ut", "ornare", 29, 145);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (88, 55, 14, 2, "mi pede", "in", 82, 116);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (2, 39, 20, 9, "imperdiet", "tempus", 39, 24);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (192, 134, 21, 6, "nunc", "quisque id", 22, 160);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (145, 197, 11, 6, "vestibulum ante", "vel dapibus", 158, 31);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (89, 26, 12, 4, "montes", "sed vestibulum", 115, 164);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (35, 99, 1, 1, "augue vestibulum", "justo aliquam", 122, 193);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (119, 1, 18, 1, "vestibulum rutrum", "sed tincidunt", 3, 101);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (147, 64, 20, 5, "duis bibendum", "nulla sed", 46, 167);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (87, 74, 3, 1, "non velit", "justo lacinia", 124, 144);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (20, 82, 16, 6, "ligula vehicula", "mauris sit", 107, 64);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (164, 25, 6, 1, "enim sit", "sem", 109, 105);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (24, 191, 23, 8, "nulla tempus", "ac", 105, 97);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (3, 8, 15, 1, "in felis", "tellus", 166, 12);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (112, 185, 6, 5, "aliquet", "arcu", 101, 179);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (85, 35, 14, 6, "odio condimentum", "sit amet", 27, 54);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (176, 9, 22, 4, "volutpat sapien", "tempus", 86, 205);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (68, 52, 1, 1, "sed", "lacus purus", 23, 59);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (74, 167, 6, 10, "neque duis", "dui", 179, 189);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (185, 102, 13, 1, "pede", "in tempus", 94, 175);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (126, 40, 16, 1, "duis at", "parturient montes", 42, 114);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (139, 184, 13, 5, "orci pede", "ante ipsum", 171, 185);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (108, 148, 8, 6, "nulla", "consectetuer", 33, 84);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (67, 138, 1, 8, "vestibulum ante", "elementum", 101, 23);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (19, 170, 16, 2, "velit", "vivamus", 146, 22);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (173, 11, 2, 4, "ullamcorper", "cras non", 106, 126);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (192, 39, 10, 9, "lacinia", "in quis", 178, 76);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (153, 106, 2, 1, "eros", "mattis", 12, 3);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (62, 154, 10, 6, "mattis egestas", "pellentesque", 20, 186);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (21, 40, 14, 8, "aliquet ultrices", "curabitur", 131, 120);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (170, 107, 11, 6, "sit", "in", 90, 123);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (41, 126, 19, 6, "dolor morbi", "eros", 96, 180);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (62, 74, 13, 5, "vestibulum", "ipsum dolor", 161, 23);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (64, 47, 10, 10, "in purus", "sociis", 32, 115);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (109, 57, 11, 4, "natoque", "et ultrices", 91, 96);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (40, 161, 14, 5, "tincidunt eu", "orci", 17, 121);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (127, 183, 7, 3, "neque aenean", "cubilia curae", 156, 94);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (19, 84, 15, 4, "consequat", "interdum venenatis", 148, 136);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (77, 43, 1, 5, "sed magna", "potenti", 4, 47);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (20, 11, 9, 3, "lobortis ligula", "arcu", 107, 11);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (97, 99, 8, 1, "proin leo", "diam neque", 175, 41);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (123, 34, 12, 7, "in", "tellus", 160, 170);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (185, 22, 9, 8, "ridiculus mus", "ut suscipit", 123, 193);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (41, 38, 2, 3, "turpis", "fermentum", 185, 73);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (110, 166, 2, 8, "nisi", "donec posuere", 3, 16);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (24, 62, 21, 1, "leo", "quisque arcu", 106, 200);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (173, 127, 18, 2, "nulla", "donec", 157, 188);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (31, 45, 1, 5, "pede", "eros", 122, 48);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (106, 152, 16, 5, "nulla", "ipsum", 172, 121);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (159, 101, 4, 3, "ante", "quisque", 3, 91);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (195, 121, 19, 5, "dolor morbi", "potenti nullam", 124, 176);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (30, 43, 18, 2, "libero", "at nibh", 136, 95);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (125, 7, 21, 5, "euismod", "cubilia curae", 88, 157);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (161, 142, 6, 1, "magna ac", "phasellus", 127, 114);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (150, 125, 23, 1, "faucibus accumsan", "aliquam non", 157, 157);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (140, 189, 1, 9, "ligula", "viverra eget", 92, 119);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (49, 164, 14, 3, "arcu", "sem", 14, 77);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (100, 148, 22, 5, "cum", "accumsan", 170, 74);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (192, 195, 24, 6, "turpis enim", "auctor", 139, 2);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (131, 35, 8, 10, "odio consequat", "ultrices libero", 154, 20);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (103, 32, 16, 2, "arcu adipiscing", "hendrerit", 174, 126);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (133, 94, 2, 10, "amet", "tortor id", 164, 130);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (115, 119, 7, 7, "tempus", "justo", 19, 89);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (141, 29, 2, 5, "sapien arcu", "iaculis diam", 138, 33);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (41, 61, 1, 7, "tempor", "pede", 69, 204);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (15, 118, 1, 9, "nunc", "magna ac", 49, 56);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (136, 205, 1, 5, "dignissim vestibulum", "non interdum", 166, 15);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (52, 110, 24, 6, "ac neque", "mattis", 161, 199);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (47, 146, 16, 2, "erat id", "consectetuer", 23, 23);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (187, 123, 2, 2, "neque sapien", "iaculis", 10, 121);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (29, 187, 9, 8, "eleifend", "fusce", 14, 6);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (118, 122, 19, 6, "semper rutrum", "vestibulum", 70, 70);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (110, 170, 11, 9, "sit amet", "proin", 183, 95);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (144, 49, 22, 1, "sem mauris", "euismod scelerisque", 33, 44);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (175, 43, 24, 7, "sed", "et", 177, 41);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (65, 130, 18, 6, "tortor", "sed", 101, 102);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (149, 127, 16, 2, "sem", "aliquet maecenas", 1, 131);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (185, 111, 4, 4, "nunc", "donec", 133, 71);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (177, 139, 2, 1, "sit amet", "in", 16, 167);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (146, 128, 10, 8, "nam tristique", "hac habitasse", 101, 125);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (175, 169, 13, 2, "purus", "pede posuere", 101, 45);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (60, 97, 24, 5, "morbi vel", "pellentesque viverra", 79, 110);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (7, 63, 13, 1, "interdum mauris", "accumsan tellus", 145, 101);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (41, 128, 1, 10, "turpis integer", "quis augue", 176, 108);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (191, 45, 4, 3, "amet diam", "phasellus sit", 112, 154);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (39, 45, 17, 3, "ornare", "semper interdum", 84, 105);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (106, 106, 20, 10, "nec", "eleifend pede", 148, 75);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (83, 1, 3, 10, "maecenas", "dictumst etiam", 163, 176);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (62, 159, 14, 7, "non interdum", "lectus in", 56, 32);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (163, 53, 11, 9, "sed vestibulum", "aliquam", 98, 8);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (195, 26, 15, 2, "arcu sed", "nulla facilisi", 140, 202);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (129, 61, 10, 1, "ipsum", "luctus", 108, 71);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (14, 72, 7, 5, "fusce consequat", "venenatis tristique", 171, 194);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (179, 17, 20, 1, "primis in", "non velit", 11, 64);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (129, 83, 23, 1, "odio", "vestibulum", 99, 11);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (98, 110, 19, 1, "semper", "vestibulum ante", 137, 1);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (91, 94, 12, 10, "convallis nulla", "in tempor", 54, 171);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (108, 24, 10, 6, "aliquam", "nulla justo", 49, 145);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (164, 64, 24, 9, "vivamus", "rutrum rutrum", 137, 112);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (127, 13, 19, 9, "vivamus in", "aenean", 107, 194);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (77, 182, 8, 1, "lectus", "vel augue", 113, 175);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (73, 167, 8, 6, "curabitur at", "erat", 119, 38);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (141, 125, 1, 1, "ultrices", "dapibus", 88, 18);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (184, 98, 11, 10, "purus phasellus", "quam", 39, 184);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (35, 46, 6, 3, "turpis elementum", "in consequat", 121, 162);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (192, 42, 11, 9, "aenean", "neque sapien", 105, 132);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (197, 51, 13, 4, "in", "pretium", 55, 62);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (181, 68, 24, 7, "fermentum", "proin", 90, 97);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (167, 3, 23, 9, "justo eu", "in eleifend", 138, 100);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (28, 74, 9, 8, "justo", "nec dui", 13, 99);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (192, 58, 16, 10, "laoreet ut", "sed", 62, 173);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (154, 154, 1, 7, "eros elementum", "sit", 122, 51);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (24, 119, 19, 6, "et", "fermentum", 126, 38);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (5, 26, 18, 5, "ante", "dapibus nulla", 75, 179);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (195, 2, 16, 7, "pharetra", "justo", 66, 201);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (124, 143, 19, 9, "consequat lectus", "vivamus vestibulum", 140, 67);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (14, 1, 15, 1, "ridiculus", "ac tellus", 26, 2);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (59, 17, 1, 3, "donec quis", "orci luctus", 23, 14);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (0, 168, 10, 5, "tempor", "integer aliquet", 168, 140);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (190, 70, 1, 1, "quis tortor", "lorem", 43, 67);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (69, 122, 8, 1, "sed", "mauris", 122, 144);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (93, 119, 3, 1, "lacinia erat", "est", 159, 203);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (38, 182, 21, 8, "praesent", "vivamus", 106, 181);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (189, 4, 6, 3, "bibendum", "vestibulum", 50, 132);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (29, 183, 12, 6, "habitasse", "sapien iaculis", 90, 173);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (92, 47, 14, 2, "sed", "massa", 77, 150);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (134, 154, 7, 3, "quis tortor", "condimentum id", 181, 104);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (65, 139, 8, 7, "eu", "magna ac", 11, 26);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (165, 36, 9, 7, "at", "varius", 32, 2);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (163, 176, 3, 10, "ut massa", "curae", 49, 50);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (38, 54, 5, 4, "eu", "id", 128, 177);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (14, 37, 24, 1, "morbi non", "vel nisl", 51, 177);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (36, 133, 4, 1, "venenatis non", "velit donec", 62, 153);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (86, 46, 11, 8, "ut nulla", "ut at", 10, 13);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (0, 137, 5, 10, "suscipit", "nulla", 76, 132);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (96, 198, 20, 4, "volutpat", "vestibulum ante", 153, 2);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (62, 199, 14, 1, "phasellus", "justo maecenas", 126, 35);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (146, 131, 4, 7, "turpis eget", "donec pharetra", 139, 180);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (132, 179, 21, 7, "maecenas leo", "suspendisse accumsan", 38, 57);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (136, 56, 1, 7, "integer ac", "vivamus in", 69, 198);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (159, 110, 5, 9, "lobortis est", "justo", 77, 147);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (111, 145, 8, 1, "in tempor", "pretium quis", 38, 171);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (161, 89, 2, 9, "posuere", "metus", 181, 125);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (125, 126, 24, 1, "integer", "sapien", 158, 23);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (39, 105, 8, 4, "amet", "iaculis diam", 157, 63);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (144, 151, 20, 3, "sit", "sit", 103, 183);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (157, 33, 4, 5, "elementum", "massa", 52, 72);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (87, 127, 2, 10, "ut suscipit", "varius nulla", 33, 77);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (140, 142, 23, 9, "sed accumsan", "quis", 85, 86);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (178, 127, 10, 9, "lacinia sapien", "faucibus orci", 31, 159);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (89, 98, 13, 8, "et magnis", "morbi", 105, 133);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (97, 138, 14, 9, "nam", "pellentesque", 150, 32);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (125, 73, 9, 1, "at turpis", "dui vel", 67, 62);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (72, 36, 8, 1, "eleifend", "tincidunt eget", 40, 37);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (197, 192, 23, 1, "parturient", "et", 110, 153);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (136, 131, 18, 4, "at turpis", "at diam", 116, 62);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (181, 43, 21, 1, "in quis", "orci", 58, 31);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (38, 183, 21, 2, "quam", "orci luctus", 39, 170);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (93, 82, 20, 5, "ut", "turpis a", 7, 136);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (182, 34, 7, 3, "ligula", "at nulla", 152, 72);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (192, 26, 17, 7, "mus", "quis libero", 93, 144);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (164, 13, 8, 5, "quis turpis", "pede ullamcorper", 28, 98);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (138, 44, 8, 3, "pellentesque", "nibh ligula", 15, 155);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (105, 120, 9, 8, "commodo placerat", "purus", 44, 82);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (143, 201, 5, 1, "ut", "blandit nam", 158, 178);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (46, 120, 4, 4, "in", "quisque", 91, 137);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (101, 97, 12, 9, "ultrices enim", "primis", 97, 184);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (98, 87, 24, 1, "vel", "orci", 73, 63);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (61, 152, 6, 2, "lectus pellentesque", "pede malesuada", 83, 167);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (66, 103, 4, 6, "arcu", "ligula", 138, 98);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (179, 27, 1, 2, "adipiscing", "condimentum", 34, 179);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (159, 147, 10, 8, "vel", "ullamcorper purus", 153, 99);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (198, 31, 7, 8, "tincidunt", "sed", 137, 140);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (159, 16, 12, 1, "pellentesque", "nulla elit", 53, 118);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (196, 89, 1, 4, "sapien", "sapien", 9, 56);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (84, 32, 4, 5, "nulla nisl", "convallis eget", 27, 157);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (81, 64, 4, 10, "integer", "mi", 43, 3);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (40, 112, 14, 1, "nulla", "primis in", 153, 198);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (56, 107, 2, 1, "a", "est phasellus", 124, 52);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (108, 62, 2, 1, "vestibulum", "blandit", 72, 11);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (31, 144, 1, 2, "phasellus sit", "libero", 94, 108);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (121, 105, 7, 7, "eget", "elit", 137, 59);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (59, 21, 1, 10, "imperdiet", "nascetur", 38, 204);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (53, 48, 6, 5, "mi", "nonummy integer", 96, 157);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (185, 174, 8, 4, "tellus nulla", "iaculis", 100, 10);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (36, 191, 14, 7, "molestie", "nunc rhoncus", 128, 41);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (25, 146, 22, 5, "quis turpis", "suspendisse ornare", 162, 115);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (192, 169, 4, 1, "in faucibus", "sapien", 38, 8);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (42, 121, 10, 8, "diam", "eget tempus", 128, 183);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (105, 129, 12, 6, "aenean", "sed justo", 41, 117);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (25, 194, 21, 10, "enim", "quisque", 83, 11);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (42, 188, 16, 4, "eros viverra", "rutrum", 28, 160);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (143, 168, 1, 4, "faucibus orci", "augue vel", 79, 4);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (19, 162, 24, 8, "congue", "mattis", 143, 63);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (77, 148, 18, 7, "libero", "interdum", 23, 40);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (50, 88, 22, 4, "eros viverra", "auctor sed", 103, 180);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (66, 172, 19, 10, "faucibus orci", "vel", 73, 118);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (176, 166, 8, 5, "leo pellentesque", "potenti", 135, 205);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (64, 177, 20, 7, "commodo vulputate", "a nibh", 41, 112);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (28, 82, 22, 9, "blandit non", "morbi ut", 74, 88);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (167, 198, 2, 10, "praesent id", "arcu", 125, 153);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (57, 76, 1, 9, "vel enim", "tristique", 18, 169);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (166, 150, 23, 1, "non velit", "ac", 132, 174);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (94, 196, 15, 7, "pretium", "quam pede", 33, 57);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (34, 171, 18, 9, "sed", "ac leo", 124, 20);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (180, 161, 24, 2, "nullam varius", "a feugiat", 141, 133);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (128, 146, 3, 4, "odio elementum", "etiam pretium", 115, 37);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (194, 4, 9, 1, "etiam", "dis parturient", 179, 181);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (77, 77, 3, 9, "at lorem", "sapien varius", 40, 14);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (39, 146, 13, 9, "cursus", "eget", 21, 173);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (0, 65, 1, 3, "justo", "ultrices", 108, 152);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (102, 71, 23, 9, "lacus", "nec", 171, 128);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (183, 107, 6, 2, "aliquet", "auctor", 140, 63);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (78, 123, 11, 1, "sociis natoque", "in", 108, 30);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (19, 111, 24, 10, "interdum", "cum sociis", 116, 148);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (176, 81, 21, 3, "pede lobortis", "lectus", 74, 166);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (40, 38, 1, 2, "at nulla", "natoque penatibus", 41, 6);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (102, 40, 1, 1, "magna ac", "aliquet ultrices", 79, 83);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (103, 188, 5, 7, "primis", "iaculis justo", 164, 169);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (49, 175, 1, 5, "imperdiet sapien", "pede justo", 82, 76);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (8, 109, 12, 10, "potenti", "pede lobortis", 87, 72);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (191, 136, 19, 9, "aenean", "vestibulum", 46, 53);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (132, 142, 22, 9, "risus", "ut", 140, 3);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (129, 149, 20, 3, "erat eros", "pulvinar sed", 2, 76);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (184, 178, 17, 7, "eros elementum", "purus", 121, 35);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (10, 185, 4, 2, "orci mauris", "non", 170, 134);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (191, 162, 12, 10, "nisl", "dolor", 133, 60);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (27, 60, 21, 1, "sit", "odio porttitor", 2, 148);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (95, 82, 1, 9, "in tempor", "tristique", 101, 26);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (178, 88, 24, 1, "sed accumsan", "nec condimentum", 25, 99);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (20, 70, 10, 10, "maecenas tincidunt", "nec", 149, 141);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (53, 122, 1, 8, "massa", "turpis", 44, 140);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (160, 49, 8, 10, "tellus", "duis", 19, 164);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (75, 66, 5, 9, "penatibus et", "erat", 142, 173);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (118, 155, 15, 9, "in sapien", "interdum mauris", 105, 138);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (156, 38, 16, 5, "pede justo", "cras", 110, 148);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (106, 20, 1, 2, "ultrices mattis", "neque", 119, 187);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (126, 135, 14, 9, "amet justo", "nullam varius", 48, 110);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (164, 74, 1, 9, "tincidunt", "mauris", 134, 154);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (95, 188, 24, 2, "at", "vel sem", 170, 47);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (129, 33, 8, 2, "in leo", "at", 108, 14);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (95, 26, 15, 8, "lorem quisque", "et", 34, 177);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (48, 185, 21, 2, "eu magna", "ipsum dolor", 136, 100);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (68, 168, 7, 4, "sem mauris", "curae", 69, 153);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (78, 139, 3, 6, "convallis eget", "eget", 69, 139);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (182, 78, 13, 1, "sapien", "feugiat", 103, 58);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (137, 92, 6, 6, "tristique tortor", "nulla sed", 35, 43);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (182, 189, 24, 9, "vivamus in", "semper sapien", 23, 126);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (39, 128, 14, 8, "id", "tempor", 45, 153);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (147, 21, 24, 2, "velit nec", "platea", 10, 67);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (192, 89, 22, 3, "justo in", "magna bibendum", 121, 147);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (164, 73, 12, 7, "penatibus et", "in", 64, 109);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (81, 149, 10, 3, "velit", "id", 1, 10);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (125, 137, 3, 6, "luctus et", "maecenas ut", 49, 4);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (32, 142, 24, 9, "aenean lectus", "mauris non", 116, 176);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (188, 39, 6, 1, "justo", "urna", 152, 81);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (24, 122, 23, 5, "eu", "vestibulum", 165, 112);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (113, 100, 18, 7, "suspendisse ornare", "mauris non", 65, 178);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (127, 118, 7, 3, "ante ipsum", "etiam", 29, 17);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (145, 131, 19, 1, "ornare imperdiet", "non pretium", 52, 35);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (66, 3, 9, 7, "etiam", "dapibus dolor", 153, 105);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (118, 12, 24, 7, "consequat in", "bibendum", 61, 203);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (198, 86, 24, 3, "erat", "posuere", 30, 50);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (40, 199, 21, 1, "ut", "quisque", 36, 102);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (123, 48, 17, 1, "amet eros", "lectus pellentesque", 179, 200);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (76, 133, 15, 1, "pellentesque", "auctor", 119, 66);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (150, 14, 20, 4, "maecenas rhoncus", "nulla dapibus", 132, 99);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (45, 172, 5, 8, "dapibus at", "tellus", 75, 188);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (145, 165, 6, 1, "blandit", "lectus", 153, 176);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (98, 56, 3, 4, "nunc nisl", "tristique", 178, 35);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (157, 85, 19, 5, "id", "nisi", 52, 9);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (105, 105, 11, 9, "duis", "tellus nisi", 76, 131);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (25, 202, 11, 4, "pretium iaculis", "lobortis convallis", 153, 23);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (142, 113, 4, 2, "quis augue", "ultrices libero", 61, 176);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (85, 200, 6, 1, "in", "maecenas rhoncus", 180, 18);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (69, 168, 5, 10, "sed ante", "mauris morbi", 129, 160);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (17, 43, 22, 1, "quam sollicitudin", "consequat", 34, 108);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (18, 1, 11, 5, "id sapien", "viverra", 20, 108);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (78, 88, 20, 1, "at nunc", "leo pellentesque", 154, 183);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (102, 39, 6, 9, "risus auctor", "tempus", 58, 154);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (12, 6, 22, 4, "nunc proin", "ligula suspendisse", 116, 102);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (53, 29, 11, 1, "lobortis", "mauris non", 61, 130);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (145, 132, 20, 4, "sed", "phasellus in", 67, 36);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (185, 24, 22, 4, "amet", "in", 128, 49);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (78, 3, 23, 6, "mattis", "nulla", 163, 6);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (160, 51, 21, 1, "et ultrices", "lobortis", 175, 126);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (152, 92, 12, 8, "eget", "id turpis", 166, 118);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (112, 116, 4, 10, "luctus", "habitasse platea", 50, 194);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (128, 120, 10, 7, "ut", "cras", 102, 113);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (90, 1, 1, 6, "fusce", "dictumst", 58, 49);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (35, 104, 19, 8, "vel nulla", "aliquet", 165, 76);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (164, 193, 15, 10, "cubilia", "in faucibus", 73, 32);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (44, 151, 1, 9, "eu", "viverra", 179, 89);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (9, 53, 12, 5, "sit", "nunc", 71, 73);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (195, 64, 19, 4, "accumsan odio", "dui vel", 156, 97);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (48, 7, 3, 3, "quis", "donec", 117, 171);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (197, 165, 8, 8, "lectus", "justo sit", 172, 141);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (123, 147, 12, 8, "dictumst", "ut", 156, 49);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (82, 67, 17, 8, "vestibulum ante", "nunc", 63, 200);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (89, 152, 21, 5, "tristique in", "cras", 144, 26);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (13, 183, 4, 6, "volutpat", "donec", 154, 94);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (13, 91, 1, 1, "quisque", "lacus curabitur", 175, 83);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (47, 26, 15, 4, "diam vitae", "aliquet", 84, 130);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (94, 90, 7, 7, "sagittis nam", "mus", 134, 137);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (77, 120, 2, 1, "donec odio", "tortor eu", 101, 161);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (68, 52, 2, 3, "eu", "faucibus", 90, 200);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (33, 42, 16, 1, "blandit", "quis lectus", 150, 77);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (17, 137, 7, 7, "a", "odio condimentum", 44, 144);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (124, 63, 13, 6, "porttitor", "pharetra magna", 56, 30);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (129, 135, 22, 7, "sem", "sapien cursus", 26, 174);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (118, 78, 24, 1, "sed interdum", "morbi non", 163, 62);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (151, 25, 10, 2, "eleifend luctus", "erat", 76, 111);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (59, 24, 23, 6, "donec", "potenti in", 27, 16);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (26, 181, 1, 1, "ante ipsum", "luctus", 103, 180);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (90, 61, 6, 10, "luctus", "dictumst aliquam", 82, 155);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (13, 118, 19, 4, "sem praesent", "etiam faucibus", 77, 106);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (91, 28, 19, 4, "curae duis", "cursus id", 153, 110);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (9, 197, 1, 1, "ultrices", "pharetra magna", 165, 16);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (88, 23, 10, 9, "ac", "in", 86, 130);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (153, 92, 19, 7, "sapien", "iaculis diam", 135, 149);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (182, 15, 15, 3, "donec", "amet", 112, 140);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (20, 201, 21, 3, "at", "posuere metus", 154, 10);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (155, 114, 15, 9, "nulla neque", "vestibulum vestibulum", 176, 77);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (96, 121, 7, 8, "suspendisse potenti", "justo", 131, 112);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (33, 181, 7, 6, "sollicitudin", "a", 153, 182);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (96, 37, 16, 7, "odio donec", "euismod", 165, 169);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (14, 194, 9, 3, "tempus semper", "habitasse platea", 8, 144);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (33, 192, 14, 6, "in", "congue", 173, 113);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (148, 131, 22, 5, "vestibulum ante", "et", 119, 171);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (23, 115, 1, 4, "iaculis", "vitae quam", 143, 112);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (62, 157, 11, 5, "phasellus", "eget congue", 164, 153);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (5, 163, 4, 1, "sit amet", "nisi volutpat", 93, 94);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (144, 101, 20, 1, "sollicitudin", "aliquam convallis", 75, 99);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (118, 90, 13, 4, "in magna", "turpis elementum", 33, 174);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (176, 201, 9, 7, "tortor duis", "erat curabitur", 127, 37);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (191, 39, 24, 3, "luctus", "ultrices", 24, 21);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (171, 71, 2, 6, "tempor turpis", "tortor duis", 96, 121);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (85, 188, 17, 10, "convallis", "id mauris", 16, 11);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (180, 32, 1, 1, "aliquam sit", "consequat", 154, 180);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (122, 80, 20, 6, "orci pede", "sit amet", 77, 5);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (9, 77, 19, 9, "mollis molestie", "nulla", 108, 165);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (53, 193, 18, 3, "gravida", "justo", 82, 99);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (182, 71, 24, 5, "tincidunt", "faucibus accumsan", 86, 136);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (191, 20, 9, 1, "quis orci", "nulla tellus", 21, 154);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (78, 147, 18, 2, "enim", "pulvinar sed", 99, 123);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (133, 4, 11, 9, "aenean", "eu magna", 156, 44);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (78, 118, 16, 10, "sem", "morbi", 15, 133);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (0, 67, 18, 6, "non", "magna", 108, 58);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (6, 47, 22, 3, "mauris eget", "bibendum", 171, 77);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (75, 22, 17, 4, "semper", "vel", 57, 174);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (147, 111, 5, 1, "justo", "sapien", 39, 201);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (150, 100, 1, 3, "fusce", "nunc", 151, 37);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (183, 170, 2, 8, "ut", "nulla eget", 97, 113);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (182, 105, 24, 7, "at", "nulla", 121, 180);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (91, 131, 24, 1, "malesuada in", "aliquet maecenas", 151, 7);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (3, 66, 12, 10, "nisl", "quis", 180, 110);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (142, 42, 11, 1, "neque", "tellus", 128, 31);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (139, 118, 6, 10, "ornare", "amet diam", 45, 84);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (111, 22, 21, 7, "orci", "natoque", 58, 148);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (104, 36, 16, 10, "mi", "sapien", 100, 65);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (184, 30, 24, 4, "ut mauris", "aliquam", 1, 37);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (67, 133, 20, 2, "mi", "duis ac", 170, 59);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (32, 121, 4, 3, "erat", "eget semper", 148, 126);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (165, 90, 20, 4, "libero convallis", "placerat ante", 159, 87);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (111, 200, 2, 7, "ipsum praesent", "justo aliquam", 2, 187);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (49, 31, 8, 6, "diam", "in", 145, 155);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (124, 21, 2, 9, "nec condimentum", "pede ac", 99, 116);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (31, 168, 9, 5, "primis in", "sit", 78, 18);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (183, 144, 8, 8, "quisque", "quam pharetra", 152, 129);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (28, 190, 6, 10, "non mauris", "a", 32, 61);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (194, 26, 24, 2, "sagittis", "accumsan", 148, 165);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (71, 193, 9, 10, "vitae", "donec quis", 111, 122);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (51, 58, 22, 5, "morbi", "placerat", 114, 170);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (15, 4, 1, 8, "mauris", "semper", 39, 84);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (160, 18, 12, 1, "quis lectus", "convallis duis", 56, 19);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (167, 10, 17, 9, "elementum ligula", "quis orci", 100, 21);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (120, 39, 1, 2, "aenean sit", "in", 18, 137);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (118, 177, 22, 4, "suscipit", "bibendum felis", 49, 127);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (48, 167, 11, 3, "rutrum", "bibendum", 112, 172);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (57, 121, 4, 1, "pellentesque", "orci", 133, 158);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (47, 74, 13, 1, "lectus in", "nunc", 1, 119);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (51, 132, 14, 5, "sollicitudin", "non", 27, 7);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (167, 141, 24, 5, "ornare", "cubilia", 4, 67);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (156, 77, 14, 7, "metus arcu", "dictumst etiam", 51, 187);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (58, 67, 3, 7, "montes nascetur", "lobortis est", 27, 35);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (124, 10, 20, 10, "nascetur ridiculus", "nec", 35, 81);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (84, 147, 22, 4, "hendrerit at", "porttitor", 78,  1);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (151, 79, 3, 4, "lorem vitae", "sem mauris", 124, 29);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (3, 85, 2, 1, "vehicula", "etiam justo", 87, 50);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (156, 55, 1, 5, "dui luctus", "augue", 7, 82);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (7, 64, 23, 4, "libero rutrum", "in", 167, 81);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (91, 69, 5, 4, "ipsum", "est lacinia", 71, 32);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (142, 53, 17, 10, "nibh", "orci", 60, 38);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (52, 71, 1, 5, "pellentesque viverra", "magna bibendum", 162, 14);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (45, 165, 22, 4, "platea", "in hac", 137, 100);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (113, 160, 13, 3, "non", "hac habitasse", 105, 43);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (188, 54, 22, 7, "cras", "eleifend", 102, 69);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (167, 106, 16, 1, "at", "parturient", 131, 38);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (181, 120, 23, 5, "magna", "lectus", 58, 98);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (101, 50, 21, 2, "nam", "sed justo", 88, 111);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (158, 9, 17, 8, "neque libero", "ultrices erat", 148, 179);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (114, 5, 23, 2, "dapibus augue", "interdum", 94, 88);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (51, 116, 20, 8, "est donec", "pede", 134, 59);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (169, 128, 6, 9, "a feugiat", "in lectus", 94, 23);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (177, 2, 4, 6, "sed", "tempus", 116, 182);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (197, 138, 15, 8, "et commodo", "ac diam", 44, 60);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (73, 124, 5, 6, "bibendum", "sed", 9, 50);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (131, 15, 5, 10, "odio", "faucibus", 104, 71);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (20, 44, 12, 1, "faucibus", "adipiscing molestie", 28, 131);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (195, 35, 6, 3, "ut nunc", "in", 84, 46);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (34, 203, 4, 8, "quisque", "sed augue", 29, 145);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (169, 113, 4, 5, "rutrum nulla", "sagittis", 67, 14);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (4, 27, 13, 7, "morbi", "sapien non", 28, 156);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (17, 6, 7, 6, "non", "suspendisse accumsan", 24, 170);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (192, 86, 4, 1, "mattis odio", "quisque", 70, 40);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (125, 25, 13, 7, "sociis", "bibendum", 84, 155);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (155, 40, 11, 1, "leo", "lorem", 17, 136);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (115, 112, 1, 1, "amet", "tincidunt", 125, 143);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (169, 111, 11, 5, "lectus", "adipiscing elit", 103, 26);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (3, 130, 19, 8, "ante vestibulum", "luctus", 109, 139);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (189, 158, 20, 8, "volutpat quam", "consequat dui", 138, 67);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (110, 40, 13, 10, "ante nulla", "elit", 71, 59);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (132, 102, 4, 1, "posuere cubilia", "ultrices enim", 126, 109);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (179, 73, 14, 3, "a", "dui proin", 91, 177);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (158, 108, 17, 9, "orci luctus", "pellentesque", 153, 135);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (17, 44, 1, 8, "turpis", "sed", 162, 60);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (65, 192, 21, 5, "eget rutrum", "et ultrices", 13, 123);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (116, 144, 7, 5, "orci", "primis", 139, 140);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (122, 181, 2, 3, "vehicula condimentum", "viverra", 80, 132);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (155, 177, 23, 9, "lorem ipsum", "lectus pellentesque", 123, 42);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (15, 91, 20, 3, "dapibus", "ornare consequat", 139, 7);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (195, 102, 4, 2, "mauris lacinia", "risus", 1, 177);
insert into garden_report (height, location, sunlight, precipitation, soil, shade, user_id, flower_id) values (161, 90, 4, 7, "ultrices posuere", "volutpat", 60, 2);


-- STORE
drop table if exists store;
create table store (
	store_id int primary key auto_increment,
    name varchar(50) not null,
    address varchar(50) not null
);
insert into store (name, address) values ("Graham Group", "05265 Eagle Crest Way");
insert into store (name, address) values ("Lemke and Sons", "7380 Fisk Point");
insert into store (name, address) values ("Lesch-Maggio", "11 Vahlen Point");
insert into store (name, address) values ("Marks Group", "4858 Hanson Court");
insert into store (name, address) values ("Lubowitz-Greenholt", "58 Old Gate Crossing");
insert into store (name, address) values ("Collier and Sons", "131 Manitowish Hill");
insert into store (name, address) values ("Raynor-Heaney", "6015 Fremont Point");
insert into store (name, address) values ("Runolfsdottir, Wyman and Will", "3255 Debs Pass");
insert into store (name, address) values ("Hagenes-Eichmann", "0 Emmet Center");
insert into store (name, address) values ("Cruickshank-Aufderhar", "0 Farwell Junction");
insert into store (name, address) values ("Halvorson, Gleichner and Pacocha", "2012 Farragut Avenue");
insert into store (name, address) values ("Raynor-Abbott", "95132 Main Point");
insert into store (name, address) values ("DuBuque, Jacobson and Dietrich", "7643 Fisk Point");
insert into store (name, address) values ("Gusikowski, Jacobson and VonRueden", "41868 Iowa Junction");
insert into store (name, address) values ("Von and Sons", "5 Dahle Trail");
insert into store (name, address) values ("Nicolas, Willms and Zulauf", "43189 Hollow Ridge Lane");
insert into store (name, address) values ("Dooley, McCullough and Rohan", "08532 Dryden Circle");
insert into store (name, address) values ("Von-Tromp", "70 Tomscot Plaza");
insert into store (name, address) values ("Howell-Huel", "3 Orin Way");
insert into store (name, address) values ("Corwin-Kassulke", "51 Dapin Alley");
insert into store (name, address) values ("Johns-Batz", "5780 Center Circle");
insert into store (name, address) values ("Nikolaus Group", "762 Pennsylvania Avenue");
insert into store (name, address) values ("Dickinson, Wisozk and Sauer", "3064 Southridge Center");
insert into store (name, address) values ("Cremin, Breitenberg and Pagac", "54372 Mcguire Point");
insert into store (name, address) values ("McClure, Johnston and Kovacek", "863 Hayes Parkway");
insert into store (name, address) values ("Thiel, Zboncak and Kemmer", "07 Knutson Place");
insert into store (name, address) values ("Labadie and Sons", "9501 Kinsman Circle");
insert into store (name, address) values ("Kirlin-Gutmann", "5924 Bayside Way");
insert into store (name, address) values ("Raynor, Ullrich and Breitenberg", "07067 Eggendart Plaza");
insert into store (name, address) values ("Erdman, Bauch and Hammes", "0 Sunbrook Plaza");
insert into store (name, address) values ("Stracke-Bins", "81 Memorial Street");
insert into store (name, address) values ("Friesen LLC", "89 Talmadge Lane");
insert into store (name, address) values ("Wisoky-Weissnat", "09 Kropf Trail");
insert into store (name, address) values ("Feest, Eichmann and Aufderhar", "0 Stang Junction");
insert into store (name, address) values ("Mitchell LLC", "2377 Oak Way");
insert into store (name, address) values ("Bauch and Sons", "499 Glacier Hill Terrace");
insert into store (name, address) values ("O""Conner, Kub and Collins", "467 Buhler Plaza");
insert into store (name, address) values ("D""Amore Group", "44 Luster Plaza");
insert into store (name, address) values ("Pacocha, Spencer and Towne", "36519 Meadow Ridge Park");
insert into store (name, address) values ("Marvin, Haag and Murphy", "9 Larry Street");
insert into store (name, address) values ("Stroman LLC", "6 Surrey Drive");
insert into store (name, address) values ("Blanda, Haley and Medhurst", "56 La Follette Hill");
insert into store (name, address) values ("Rempel and Sons", "265 Sullivan Alley");
insert into store (name, address) values ("Wuckert-Pacocha", "83 Bluestem Street");
insert into store (name, address) values ("Stokes-McCullough", "68601 Norway Maple Circle");
insert into store (name, address) values ("Gottlieb Group", "35 Graceland Street");
insert into store (name, address) values ("Wolff LLC", "56968 Longview Point");
insert into store (name, address) values ("Rempel, Parker and Gleason", "326 Lotheville Alley");
insert into store (name, address) values ("Bode-Mraz", "523 Swallow Alley");
insert into store (name, address) values ("Gleason, Gerlach and Reinger", "415 Cambridge Trail");
insert into store (name, address) values ("Kunde and Sons", "088 Scoville Road");
insert into store (name, address) values ("King-Farrell", "74507 Meadow Vale Court");
insert into store (name, address) values ("Jacobson, Kunze and Sanford", "60917 Southridge Trail");
insert into store (name, address) values ("Yundt Inc", "8 Spohn Drive");
insert into store (name, address) values ("Kassulke-Greenfelder", "2 Cardinal Drive");
insert into store (name, address) values ("Simonis Group", "1171 Hoepker Plaza");
insert into store (name, address) values ("Brakus, Senger and Ernser", "3 Burning Wood Center");
insert into store (name, address) values ("Kertzmann-Dickinson", "672 Surrey Road");
insert into store (name, address) values ("Champlin-Kuvalis", "641 Riverside Point");
insert into store (name, address) values ("Beahan, Baumbach and Jacobson", "837 Delladonna Lane");
insert into store (name, address) values ("Abshire, Doyle and Hackett", "622 Carey Drive");
insert into store (name, address) values ("Pollich, Walter and Zboncak", "37 Butterfield Avenue");
insert into store (name, address) values ("Buckridge-Reinger", "0305 Sachtjen Way");
insert into store (name, address) values ("Krajcik-Vandervort", "39 Morningstar Way");
insert into store (name, address) values ("Gorczany, Toy and Runolfsdottir", "1 Fuller Lane");
insert into store (name, address) values ("Schuppe and Sons", "93077 Oneill Court");
insert into store (name, address) values ("Ankunding LLC", "2229 Meadow Ridge Street");
insert into store (name, address) values ("Miller, Hagenes and Prosacco", "3648 Warbler Avenue");
insert into store (name, address) values ("Flatley and Sons", "6 Hovde Hill");
insert into store (name, address) values ("Lubowitz, Mayer and Paucek", "982 Blaine Lane");
insert into store (name, address) values ("Daugherty, Cummings and Yundt", "58 Sunfield Place");
insert into store (name, address) values ("Harris-Roob", "5 Caliangt Point");
insert into store (name, address) values ("Stanton and Sons", "64921 Kenwood Place");
insert into store (name, address) values ("Morissette and Sons", "614 Eggendart Court");
insert into store (name, address) values ("Romaguera, McLaughlin and Mertz", "6811 Lunder Pass");
insert into store (name, address) values ("Jast-Walker", "0473 Sutteridge Drive");
insert into store (name, address) values ("Beer-Heidenreich", "4234 Oriole Place");
insert into store (name, address) values ("O""Hara-Mills", "5860 Straubel Center");
insert into store (name, address) values ("Rutherford, Murray and Denesik", "8113 Sheridan Street");
insert into store (name, address) values ("Botsford, Doyle and Macejkovic", "301 Mendota Point");
insert into store (name, address) values ("Haley, Turner and Borer", "4 Crowley Drive");
insert into store (name, address) values ("Strosin, Kutch and Volkman", "4302 Dovetail Street");
insert into store (name, address) values ("Heidenreich Inc", "94 Fulton Crossing");
insert into store (name, address) values ("Strosin-Nicolas", "2 Schurz Junction");
insert into store (name, address) values ("Toy-Halvorson", "92124 Warrior Crossing");
insert into store (name, address) values ("Leannon and Sons", "542 Reindahl Junction");
insert into store (name, address) values ("Haley-Kirlin", "2 Everett Trail");
insert into store (name, address) values ("Hettinger-Rau", "3 Garrison Avenue");
insert into store (name, address) values ("Tillman-Hegmann", "5 Loftsgordon Center");
insert into store (name, address) values ("Dare, Crona and Hilll", "781 Rusk Street");
insert into store (name, address) values ("Gibson LLC", "15820 Lien Plaza");
insert into store (name, address) values ("Satterfield-Hermann", "46 7th Drive");
insert into store (name, address) values ("Lowe Inc", "6 Kinsman Trail");
insert into store (name, address) values ("Jast Inc", "82 Stuart Parkway");
insert into store (name, address) values ("Pacocha, Koelpin and Schowalter", "97419 Karstens Way");
insert into store (name, address) values ("Weissnat-Wolf", "7 Raven Way");
insert into store (name, address) values ("Kuphal-Balistreri", "2 Annamark Road");
insert into store (name, address) values ("Nitzsche-Herzog", "5 Northland Hill");
insert into store (name, address) values ("Nitzsche, Marks and Hyatt", "11181 Delaware Park");
insert into store (name, address) values ("Mohr Inc", "12905 Boyd Trail");
insert into store (name, address) values ("Renner, Torphy and Rolfson", "72 Morningstar Road");
insert into store (name, address) values ("Kozey-Shanahan", "62 Anzinger Circle");
insert into store (name, address) values ("Hahn-Feil", "88076 Beilfuss Road");
insert into store (name, address) values ("Frami-O""Reilly", "0520 Elgar Terrace");
insert into store (name, address) values ("Bahringer, Greenfelder and Hansen", "4 Hanson Park");
insert into store (name, address) values ("Fritsch-Lynch", "83 Eliot Place");
insert into store (name, address) values ("Moore, Becker and Ward", "43742 Sachs Trail");
insert into store (name, address) values ("Shields Inc", "8 Bluejay Junction");
insert into store (name, address) values ("Kilback, Walter and Oberbrunner", "7 Lake View Road");
insert into store (name, address) values ("Harber, Schmeler and Gislason", "3 Village Way");
insert into store (name, address) values ("Halvorson-McKenzie", "386 Eastlawn Park");
insert into store (name, address) values ("Nienow-Torp", "78212 Riverside Plaza");
insert into store (name, address) values ("Runolfsson-Sauer", "7161 Rutledge Way");
insert into store (name, address) values ("Steuber, Lakin and Sporer", "1 Stuart Point");
insert into store (name, address) values ("Ondricka, Stanton and Hahn", "7 Arizona Avenue");
insert into store (name, address) values ("Bartell, Harvey and Parisian", "69700 Homewood Trail");
insert into store (name, address) values ("Bechtelar Inc", "6082 Waxwing Circle");
insert into store (name, address) values ("Marquardt-Gottlieb", "40 Sauthoff Street");
insert into store (name, address) values ("Herman Group", "23 Gerald Trail");
insert into store (name, address) values ("Prosacco-Reilly", "1 Milwaukee Point");
insert into store (name, address) values ("Spinka, Hayes and Koss", "52952 Mcguire Alley");
insert into store (name, address) values ("Keebler-Gaylord", "091 Judy Lane");
insert into store (name, address) values ("Pagac-Torphy", "90109 Sycamore Pass");
insert into store (name, address) values ("Hoppe-Heaney", "79 Kingsford Terrace");
insert into store (name, address) values ("Prohaska, Nitzsche and Morar", "591 Northview Junction");
insert into store (name, address) values ("Thompson, McCullough and Cassin", "11 Center Park");
insert into store (name, address) values ("Waelchi, Kihn and Veum", "9 Red Cloud Street");
insert into store (name, address) values ("Wolf, Osinski and Olson", "4728 Dwight Road");
insert into store (name, address) values ("Sawayn-Dietrich", "5 West Center");
insert into store (name, address) values ("Reilly LLC", "25978 Scofield Road");
insert into store (name, address) values ("Cummings, Flatley and Murray", "78 Mayfield Junction");
insert into store (name, address) values ("Stanton-Legros", "1 East Lane");
insert into store (name, address) values ("Jerde and Sons", "4997 Loftsgordon Lane");
insert into store (name, address) values ("Gorczany-Strosin", "6 Vermont Center");
insert into store (name, address) values ("Yost, Lakin and Johnson", "2327 Mcbride Plaza");
insert into store (name, address) values ("Beatty and Sons", "5 Roth Pass");
insert into store (name, address) values ("Wiegand-Stokes", "90 La Follette Road");
insert into store (name, address) values ("Gerhold and Sons", "2 Mifflin Pass");
insert into store (name, address) values ("Brakus-Treutel", "35816 Grasskamp Drive");
insert into store (name, address) values ("Muller Group", "4946 Barby Parkway");
insert into store (name, address) values ("Schiller-Cremin", "6595 Eliot Crossing");
insert into store (name, address) values ("Murazik-Bruen", "2377 1st Pass");
insert into store (name, address) values ("McGlynn-Schuster", "494 Mallory Alley");
insert into store (name, address) values ("Lehner, Witting and Flatley", "3 Mccormick Drive");
insert into store (name, address) values ("Labadie, Littel and Monahan", "4544 Loomis Point");
insert into store (name, address) values ("Witting, Kuhic and Murazik", "3880 Pawling Plaza");
insert into store (name, address) values ("Price-Douglas", "06 Del Sol Circle");
insert into store (name, address) values ("Torp, Parker and Adams", "0 Shelley Way");
insert into store (name, address) values ("Beatty, Rohan and Wiza", "802 Huxley Place");
insert into store (name, address) values ("Rolfson, Bosco and Klein", "06647 Manley Place");


-- JOIN TABLE FOR WEATHER AND STATE: STATEWEATHER
drop table if exists stateweather;
create table stateweather (
	state_id int,
    weather_id int,
    constraint fk_stateweather_state1 foreign key (state_id) references state (state_id),
    constraint fk_stateweather_weather1 foreign key (weather_id) references weather (weather_id)
);
insert into stateweather (state_id, weather_id)
select s.state_id, w.weather_id
from state s
join weather w on w.State = s.state;


-- JOINS TABLE FOR USER AND FLOWER: USERFLOWER
drop table if exists userflower;
create table userflower (
	user_id int,
    flower_id int, 
    constraint fk_userflower_user foreign key (user_id) references user (user_id),
    constraint fk_userflower_flower1 foreign key (flower_id) references flower (flower_id)
);
insert into userflower (user_id, flower_id) values (5, 40);
insert into userflower (user_id, flower_id) values (32, 59);
insert into userflower (user_id, flower_id) values (74, 35);
insert into userflower (user_id, flower_id) values (80, 64);
insert into userflower (user_id, flower_id) values (19, 76);
insert into userflower (user_id, flower_id) values (39, 53);
insert into userflower (user_id, flower_id) values (50, 17);
insert into userflower (user_id, flower_id) values (92, 88);
insert into userflower (user_id, flower_id) values (50, 24);
insert into userflower (user_id, flower_id) values (91, 74);
insert into userflower (user_id, flower_id) values (46, 72);
insert into userflower (user_id, flower_id) values (3, 81);
insert into userflower (user_id, flower_id) values (18, 30);
insert into userflower (user_id, flower_id) values (2, 67);
insert into userflower (user_id, flower_id) values (81, 1);
insert into userflower (user_id, flower_id) values (78, 5);
insert into userflower (user_id, flower_id) values (29, 25);
insert into userflower (user_id, flower_id) values (47, 44);
insert into userflower (user_id, flower_id) values (13, 90);
insert into userflower (user_id, flower_id) values (55, 76);
insert into userflower (user_id, flower_id) values (82, 53);
insert into userflower (user_id, flower_id) values (84, 63);
insert into userflower (user_id, flower_id) values (18, 4);
insert into userflower (user_id, flower_id) values (14, 89);
insert into userflower (user_id, flower_id) values (45, 73);
insert into userflower (user_id, flower_id) values (56, 17);
insert into userflower (user_id, flower_id) values (34, 7);
insert into userflower (user_id, flower_id) values (96, 43);
insert into userflower (user_id, flower_id) values (8, 41);
insert into userflower (user_id, flower_id) values (57, 81);
insert into userflower (user_id, flower_id) values (9, 17);
insert into userflower (user_id, flower_id) values (96, 2);
insert into userflower (user_id, flower_id) values (94, 26);
insert into userflower (user_id, flower_id) values (14, 73);
insert into userflower (user_id, flower_id) values (23, 33);
insert into userflower (user_id, flower_id) values (58, 68);
insert into userflower (user_id, flower_id) values (52, 20);
insert into userflower (user_id, flower_id) values (3, 88);
insert into userflower (user_id, flower_id) values (94, 37);
insert into userflower (user_id, flower_id) values (6, 22);
insert into userflower (user_id, flower_id) values (55, 88);
insert into userflower (user_id, flower_id) values (15, 64);
insert into userflower (user_id, flower_id) values (72, 82);
insert into userflower (user_id, flower_id) values (43, 33);
insert into userflower (user_id, flower_id) values (36, 43);
insert into userflower (user_id, flower_id) values (96, 62);
insert into userflower (user_id, flower_id) values (12, 39);
insert into userflower (user_id, flower_id) values (53, 85);
insert into userflower (user_id, flower_id) values (87, 84);
insert into userflower (user_id, flower_id) values (9, 53);
insert into userflower (user_id, flower_id) values (14, 5);
insert into userflower (user_id, flower_id) values (70, 64);
insert into userflower (user_id, flower_id) values (22, 35);
insert into userflower (user_id, flower_id) values (16, 85);
insert into userflower (user_id, flower_id) values (85, 65);
insert into userflower (user_id, flower_id) values (44, 8);
insert into userflower (user_id, flower_id) values (28, 73);
insert into userflower (user_id, flower_id) values (99, 25);
insert into userflower (user_id, flower_id) values (85, 13);
insert into userflower (user_id, flower_id) values (80, 69);
insert into userflower (user_id, flower_id) values (36, 40);
insert into userflower (user_id, flower_id) values (48, 18);
insert into userflower (user_id, flower_id) values (52, 6);
insert into userflower (user_id, flower_id) values (84, 68);
insert into userflower (user_id, flower_id) values (56, 63);
insert into userflower (user_id, flower_id) values (85, 55);
insert into userflower (user_id, flower_id) values (16, 31);
insert into userflower (user_id, flower_id) values (19, 83);
insert into userflower (user_id, flower_id) values (2, 21);
insert into userflower (user_id, flower_id) values (66, 15);
insert into userflower (user_id, flower_id) values (49, 60);
insert into userflower (user_id, flower_id) values (23, 49);
insert into userflower (user_id, flower_id) values (37, 83);
insert into userflower (user_id, flower_id) values (83, 46);
insert into userflower (user_id, flower_id) values (66, 7);
insert into userflower (user_id, flower_id) values (78, 20);
insert into userflower (user_id, flower_id) values (72, 23);
insert into userflower (user_id, flower_id) values (24, 70);
insert into userflower (user_id, flower_id) values (3, 54);
insert into userflower (user_id, flower_id) values (47, 80);
insert into userflower (user_id, flower_id) values (30, 17);
insert into userflower (user_id, flower_id) values (92, 4);
insert into userflower (user_id, flower_id) values (71, 77);
insert into userflower (user_id, flower_id) values (91, 21);
insert into userflower (user_id, flower_id) values (47, 45);
insert into userflower (user_id, flower_id) values (32, 62);
insert into userflower (user_id, flower_id) values (7, 26);
insert into userflower (user_id, flower_id) values (81, 90);
insert into userflower (user_id, flower_id) values (20, 62);
insert into userflower (user_id, flower_id) values (57, 66);
insert into userflower (user_id, flower_id) values (77, 33);
insert into userflower (user_id, flower_id) values (87, 90);
insert into userflower (user_id, flower_id) values (42, 55);
insert into userflower (user_id, flower_id) values (56, 11);
insert into userflower (user_id, flower_id) values (62, 57);
insert into userflower (user_id, flower_id) values (39, 70);
insert into userflower (user_id, flower_id) values (98, 68);
insert into userflower (user_id, flower_id) values (95, 72);
insert into userflower (user_id, flower_id) values (4, 44);
insert into userflower (user_id, flower_id) values (35, 77);


-- JOINS TABLE FOR USER AND STORE: USERSTORE
drop table if exists userstore;
create table userstore (
	user_id int,
    store_id int,
    constraint fk_userstores_user1 foreign key (user_id) references user (user_id),
    constraint fk_userstores_store1 foreign key (store_id) references store (store_id)
);
insert into userstore (user_id, store_id) values (124, 10);
insert into userstore (user_id, store_id) values (90, 52);
insert into userstore (user_id, store_id) values (149, 46);
insert into userstore (user_id, store_id) values (55, 11);
insert into userstore (user_id, store_id) values (83, 133);
insert into userstore (user_id, store_id) values (81, 113);
insert into userstore (user_id, store_id) values (118, 89);
insert into userstore (user_id, store_id) values (87, 144);
insert into userstore (user_id, store_id) values (160, 109);
insert into userstore (user_id, store_id) values (66, 108);
insert into userstore (user_id, store_id) values (26, 71);
insert into userstore (user_id, store_id) values (156, 138);
insert into userstore (user_id, store_id) values (146, 83);
insert into userstore (user_id, store_id) values (99, 39);
insert into userstore (user_id, store_id) values (12, 120);
insert into userstore (user_id, store_id) values (49, 145);
insert into userstore (user_id, store_id) values (106, 124);
insert into userstore (user_id, store_id) values (37, 106);
insert into userstore (user_id, store_id) values (73, 7);
insert into userstore (user_id, store_id) values (96, 10);
insert into userstore (user_id, store_id) values (125, 147);
insert into userstore (user_id, store_id) values (113, 144);
insert into userstore (user_id, store_id) values (65, 20);
insert into userstore (user_id, store_id) values (173, 13);
insert into userstore (user_id, store_id) values (169, 26);
insert into userstore (user_id, store_id) values (44, 76);
insert into userstore (user_id, store_id) values (88, 65);
insert into userstore (user_id, store_id) values (13, 23);
insert into userstore (user_id, store_id) values (35, 52);
insert into userstore (user_id, store_id) values (26, 25);
insert into userstore (user_id, store_id) values (168, 10);
insert into userstore (user_id, store_id) values (102, 140);
insert into userstore (user_id, store_id) values (40, 42);
insert into userstore (user_id, store_id) values (150, 138);
insert into userstore (user_id, store_id) values (116, 2);
insert into userstore (user_id, store_id) values (27, 9);
insert into userstore (user_id, store_id) values (35, 36);
insert into userstore (user_id, store_id) values (69, 98);
insert into userstore (user_id, store_id) values (44, 117);
insert into userstore (user_id, store_id) values (159, 11);
insert into userstore (user_id, store_id) values (110, 85);
insert into userstore (user_id, store_id) values (169, 33);
insert into userstore (user_id, store_id) values (103, 87);
insert into userstore (user_id, store_id) values (81, 140);
insert into userstore (user_id, store_id) values (36, 108);
insert into userstore (user_id, store_id) values (174, 23);
insert into userstore (user_id, store_id) values (159, 89);
insert into userstore (user_id, store_id) values (54, 72);
insert into userstore (user_id, store_id) values (64, 117);
insert into userstore (user_id, store_id) values (173, 141);
insert into userstore (user_id, store_id) values (78, 27);
insert into userstore (user_id, store_id) values (59, 10);
insert into userstore (user_id, store_id) values (72, 8);
insert into userstore (user_id, store_id) values (126, 98);
insert into userstore (user_id, store_id) values (37, 75);
insert into userstore (user_id, store_id) values (45, 6);
insert into userstore (user_id, store_id) values (139, 149);
insert into userstore (user_id, store_id) values (30, 132);
insert into userstore (user_id, store_id) values (72, 121);
insert into userstore (user_id, store_id) values (75, 12);
insert into userstore (user_id, store_id) values (66, 47);
insert into userstore (user_id, store_id) values (28, 99);
insert into userstore (user_id, store_id) values (70, 57);
insert into userstore (user_id, store_id) values (125, 40);
insert into userstore (user_id, store_id) values (87, 4);
insert into userstore (user_id, store_id) values (92, 145);
insert into userstore (user_id, store_id) values (50, 20);
insert into userstore (user_id, store_id) values (100, 5);
insert into userstore (user_id, store_id) values (143, 19);
insert into userstore (user_id, store_id) values (151, 99);
insert into userstore (user_id, store_id) values (54, 29);
insert into userstore (user_id, store_id) values (117, 109);
insert into userstore (user_id, store_id) values (103, 4);
insert into userstore (user_id, store_id) values (112, 28);
insert into userstore (user_id, store_id) values (88, 87);
insert into userstore (user_id, store_id) values (61, 35);
insert into userstore (user_id, store_id) values (57, 106);
insert into userstore (user_id, store_id) values (26, 34);
insert into userstore (user_id, store_id) values (60, 74);
insert into userstore (user_id, store_id) values (6, 144);
insert into userstore (user_id, store_id) values (137, 77);
insert into userstore (user_id, store_id) values (114, 127);
insert into userstore (user_id, store_id) values (68, 126);
insert into userstore (user_id, store_id) values (184, 46);
insert into userstore (user_id, store_id) values (91, 55);
insert into userstore (user_id, store_id) values (46, 10);
insert into userstore (user_id, store_id) values (115, 83);
insert into userstore (user_id, store_id) values (23, 134);
insert into userstore (user_id, store_id) values (81, 130);
insert into userstore (user_id, store_id) values (172, 92);
insert into userstore (user_id, store_id) values (45, 70);
insert into userstore (user_id, store_id) values (89, 41);
insert into userstore (user_id, store_id) values (96, 113);
insert into userstore (user_id, store_id) values (82, 13);
insert into userstore (user_id, store_id) values (9, 127);
insert into userstore (user_id, store_id) values (173, 94);
insert into userstore (user_id, store_id) values (144, 101);
insert into userstore (user_id, store_id) values (175, 109);
insert into userstore (user_id, store_id) values (154, 135);
insert into userstore (user_id, store_id) values (182, 13);
insert into userstore (user_id, store_id) values (42, 31);
insert into userstore (user_id, store_id) values (156, 112);
insert into userstore (user_id, store_id) values (97, 69);
insert into userstore (user_id, store_id) values (38, 42);
insert into userstore (user_id, store_id) values (50, 35);
insert into userstore (user_id, store_id) values (162, 50);
insert into userstore (user_id, store_id) values (163, 15);
insert into userstore (user_id, store_id) values (105, 55);
insert into userstore (user_id, store_id) values (30, 89);
insert into userstore (user_id, store_id) values (11, 98);
insert into userstore (user_id, store_id) values (101, 85);
insert into userstore (user_id, store_id) values (129, 113);
insert into userstore (user_id, store_id) values (174, 17);
insert into userstore (user_id, store_id) values (56, 73);
insert into userstore (user_id, store_id) values (168, 113);
insert into userstore (user_id, store_id) values (50, 20);
insert into userstore (user_id, store_id) values (59, 48);
insert into userstore (user_id, store_id) values (132, 79);
insert into userstore (user_id, store_id) values (164, 61);
insert into userstore (user_id, store_id) values (166, 27);
insert into userstore (user_id, store_id) values (40, 114);
insert into userstore (user_id, store_id) values (157, 104);
insert into userstore (user_id, store_id) values (155, 33);
insert into userstore (user_id, store_id) values (66, 58);
insert into userstore (user_id, store_id) values (128, 3);
insert into userstore (user_id, store_id) values (122, 88);
insert into userstore (user_id, store_id) values (121, 21);
insert into userstore (user_id, store_id) values (54, 109);
insert into userstore (user_id, store_id) values (165, 65);
insert into userstore (user_id, store_id) values (34, 46);
insert into userstore (user_id, store_id) values (35, 135);
insert into userstore (user_id, store_id) values (55, 138);
insert into userstore (user_id, store_id) values (74, 8);
insert into userstore (user_id, store_id) values (140, 90);
insert into userstore (user_id, store_id) values (11, 40);
insert into userstore (user_id, store_id) values (103, 98);
insert into userstore (user_id, store_id) values (33, 73);
insert into userstore (user_id, store_id) values (16, 85);
insert into userstore (user_id, store_id) values (109, 108);
insert into userstore (user_id, store_id) values (119, 34);
insert into userstore (user_id, store_id) values (59, 116);
insert into userstore (user_id, store_id) values (91, 4);
insert into userstore (user_id, store_id) values (92, 23);
insert into userstore (user_id, store_id) values (12, 56);
insert into userstore (user_id, store_id) values (65, 5);
insert into userstore (user_id, store_id) values (24, 100);
insert into userstore (user_id, store_id) values (148, 40);
insert into userstore (user_id, store_id) values (120, 28);
insert into userstore (user_id, store_id) values (118, 110);
insert into userstore (user_id, store_id) values (156, 114);
insert into userstore (user_id, store_id) values (48, 46);
insert into userstore (user_id, store_id) values (137, 111);
insert into userstore (user_id, store_id) values (49, 17);
insert into userstore (user_id, store_id) values (55, 17);
insert into userstore (user_id, store_id) values (91, 91);
insert into userstore (user_id, store_id) values (19, 140);
insert into userstore (user_id, store_id) values (41, 40);
insert into userstore (user_id, store_id) values (161, 78);
insert into userstore (user_id, store_id) values (20, 83);
insert into userstore (user_id, store_id) values (38, 135);
insert into userstore (user_id, store_id) values (15, 146);
insert into userstore (user_id, store_id) values (151, 139);
insert into userstore (user_id, store_id) values (24, 100);
insert into userstore (user_id, store_id) values (39, 19);
insert into userstore (user_id, store_id) values (82, 86);
insert into userstore (user_id, store_id) values (53, 107);
insert into userstore (user_id, store_id) values (8, 31);
insert into userstore (user_id, store_id) values (21, 42);
insert into userstore (user_id, store_id) values (161, 96);
insert into userstore (user_id, store_id) values (32, 140);
insert into userstore (user_id, store_id) values (179, 25);
insert into userstore (user_id, store_id) values (141, 145);
insert into userstore (user_id, store_id) values (20, 30);
insert into userstore (user_id, store_id) values (142, 96);
insert into userstore (user_id, store_id) values (30, 44);
insert into userstore (user_id, store_id) values (162, 140);
insert into userstore (user_id, store_id) values (136, 81);
insert into userstore (user_id, store_id) values (3, 40);
insert into userstore (user_id, store_id) values (116, 131);
insert into userstore (user_id, store_id) values (96, 68);
insert into userstore (user_id, store_id) values (94, 75);
insert into userstore (user_id, store_id) values (153, 149);
insert into userstore (user_id, store_id) values (170, 55);
insert into userstore (user_id, store_id) values (75, 27);
insert into userstore (user_id, store_id) values (87, 107);
insert into userstore (user_id, store_id) values (102, 38);
insert into userstore (user_id, store_id) values (126, 122);
insert into userstore (user_id, store_id) values (156, 21);
insert into userstore (user_id, store_id) values (97, 136);
insert into userstore (user_id, store_id) values (176, 86);
insert into userstore (user_id, store_id) values (106, 77);


-- JOINS TABLE FOR USER AND FLOWER: FLOWERSTORE
drop table if exists flowerstore;
create table flowerstore (
	flower_id int,
    store_id int, 
    constraint fk_flowerstores_flower1 foreign key (flower_id) references flower (flower_id),
    constraint fk_flowerstores_stores1 foreign key (store_id) references store (store_id)
);
insert into flowerstore (flower_id, store_id) values (15, 72);
insert into flowerstore (flower_id, store_id) values (200, 59);
insert into flowerstore (flower_id, store_id) values (3, 22);
insert into flowerstore (flower_id, store_id) values (53, 86);
insert into flowerstore (flower_id, store_id) values (1, 56);
insert into flowerstore (flower_id, store_id) values (9, 75);
insert into flowerstore (flower_id, store_id) values (185, 59);
insert into flowerstore (flower_id, store_id) values (124, 18);
insert into flowerstore (flower_id, store_id) values (78, 48);
insert into flowerstore (flower_id, store_id) values (42, 2);
insert into flowerstore (flower_id, store_id) values (107, 73);
insert into flowerstore (flower_id, store_id) values (187, 70);
insert into flowerstore (flower_id, store_id) values (113, 47);
insert into flowerstore (flower_id, store_id) values (96, 36);
insert into flowerstore (flower_id, store_id) values (187, 75);
insert into flowerstore (flower_id, store_id) values (58, 49);
insert into flowerstore (flower_id, store_id) values (19, 63);
insert into flowerstore (flower_id, store_id) values (55, 52);
insert into flowerstore (flower_id, store_id) values (175, 5);
insert into flowerstore (flower_id, store_id) values (1, 85);
insert into flowerstore (flower_id, store_id) values (3, 24);
insert into flowerstore (flower_id, store_id) values (119, 41);
insert into flowerstore (flower_id, store_id) values (4, 34);
insert into flowerstore (flower_id, store_id) values (41, 27);
insert into flowerstore (flower_id, store_id) values (145, 23);
insert into flowerstore (flower_id, store_id) values (160, 46);
insert into flowerstore (flower_id, store_id) values (101, 9);
insert into flowerstore (flower_id, store_id) values (163, 35);
insert into flowerstore (flower_id, store_id) values (167, 44);
insert into flowerstore (flower_id, store_id) values (44, 24);
insert into flowerstore (flower_id, store_id) values (77, 22);
insert into flowerstore (flower_id, store_id) values (104, 4);
insert into flowerstore (flower_id, store_id) values (205, 47);
insert into flowerstore (flower_id, store_id) values (177, 80);
insert into flowerstore (flower_id, store_id) values (152, 55);
insert into flowerstore (flower_id, store_id) values (193, 78);
insert into flowerstore (flower_id, store_id) values (47, 17);
insert into flowerstore (flower_id, store_id) values (198, 16);
insert into flowerstore (flower_id, store_id) values (141, 52);
insert into flowerstore (flower_id, store_id) values (31, 34);
insert into flowerstore (flower_id, store_id) values (27, 61);
insert into flowerstore (flower_id, store_id) values (11, 33);
insert into flowerstore (flower_id, store_id) values (92, 17);
insert into flowerstore (flower_id, store_id) values (49, 54);
insert into flowerstore (flower_id, store_id) values (15, 13);
insert into flowerstore (flower_id, store_id) values (94, 50);
insert into flowerstore (flower_id, store_id) values (9, 9);
insert into flowerstore (flower_id, store_id) values (116, 2);
insert into flowerstore (flower_id, store_id) values (102, 89);
insert into flowerstore (flower_id, store_id) values (200, 86);
insert into flowerstore (flower_id, store_id) values (29, 42);
insert into flowerstore (flower_id, store_id) values (34, 3);
insert into flowerstore (flower_id, store_id) values (1, 41);
insert into flowerstore (flower_id, store_id) values (10, 90);
insert into flowerstore (flower_id, store_id) values (200, 89);
insert into flowerstore (flower_id, store_id) values (78, 43);
insert into flowerstore (flower_id, store_id) values (59, 45);
insert into flowerstore (flower_id, store_id) values (152, 33);
insert into flowerstore (flower_id, store_id) values (13, 4);
insert into flowerstore (flower_id, store_id) values (63, 16);
insert into flowerstore (flower_id, store_id) values (18, 48);
insert into flowerstore (flower_id, store_id) values (99, 50);
insert into flowerstore (flower_id, store_id) values (126, 10);
insert into flowerstore (flower_id, store_id) values (134, 47);
insert into flowerstore (flower_id, store_id) values (105, 83);
insert into flowerstore (flower_id, store_id) values (93, 86);
insert into flowerstore (flower_id, store_id) values (33, 29);
insert into flowerstore (flower_id, store_id) values (118, 76);
insert into flowerstore (flower_id, store_id) values (199, 87);
insert into flowerstore (flower_id, store_id) values (57, 68);
insert into flowerstore (flower_id, store_id) values (202, 19);
insert into flowerstore (flower_id, store_id) values (38, 29);
insert into flowerstore (flower_id, store_id) values (45, 71);
insert into flowerstore (flower_id, store_id) values (104, 48);
insert into flowerstore (flower_id, store_id) values (107, 35);
insert into flowerstore (flower_id, store_id) values (131, 62);
insert into flowerstore (flower_id, store_id) values (183, 43);
insert into flowerstore (flower_id, store_id) values (137, 57);
insert into flowerstore (flower_id, store_id) values (147, 15);
insert into flowerstore (flower_id, store_id) values (196, 28);
insert into flowerstore (flower_id, store_id) values (145, 55);
insert into flowerstore (flower_id, store_id) values (33, 54);
insert into flowerstore (flower_id, store_id) values (14, 69);
insert into flowerstore (flower_id, store_id) values (188, 62);
insert into flowerstore (flower_id, store_id) values (69, 37);
insert into flowerstore (flower_id, store_id) values (112, 28);
insert into flowerstore (flower_id, store_id) values (183, 88);
insert into flowerstore (flower_id, store_id) values (197, 46);
insert into flowerstore (flower_id, store_id) values (1, 28);
insert into flowerstore (flower_id, store_id) values (81, 8);
insert into flowerstore (flower_id, store_id) values (136, 69);
insert into flowerstore (flower_id, store_id) values (10, 91);
insert into flowerstore (flower_id, store_id) values (175, 45);
insert into flowerstore (flower_id, store_id) values (161, 15);
insert into flowerstore (flower_id, store_id) values (141, 3);
insert into flowerstore (flower_id, store_id) values (132, 11);
insert into flowerstore (flower_id, store_id) values (68, 18);
insert into flowerstore (flower_id, store_id) values (57, 54);
insert into flowerstore (flower_id, store_id) values (87, 33);
insert into flowerstore (flower_id, store_id) values (77, 54);
insert into flowerstore (flower_id, store_id) values (23, 10);
insert into flowerstore (flower_id, store_id) values (134, 45);
insert into flowerstore (flower_id, store_id) values (54, 87);
insert into flowerstore (flower_id, store_id) values (25, 47);
insert into flowerstore (flower_id, store_id) values (59, 7);
insert into flowerstore (flower_id, store_id) values (3, 2);
insert into flowerstore (flower_id, store_id) values (30, 68);
insert into flowerstore (flower_id, store_id) values (106, 9);
insert into flowerstore (flower_id, store_id) values (193, 59);
insert into flowerstore (flower_id, store_id) values (120, 53);
insert into flowerstore (flower_id, store_id) values (91, 8);
insert into flowerstore (flower_id, store_id) values (87, 41);
insert into flowerstore (flower_id, store_id) values (1, 74);
insert into flowerstore (flower_id, store_id) values (108, 31);
insert into flowerstore (flower_id, store_id) values (145, 17);
insert into flowerstore (flower_id, store_id) values (75, 31);
insert into flowerstore (flower_id, store_id) values (135, 72);
insert into flowerstore (flower_id, store_id) values (47, 81);
insert into flowerstore (flower_id, store_id) values (114, 73);
insert into flowerstore (flower_id, store_id) values (15, 52);
insert into flowerstore (flower_id, store_id) values (112, 84);
insert into flowerstore (flower_id, store_id) values (15, 73);
insert into flowerstore (flower_id, store_id) values (70, 38);
insert into flowerstore (flower_id, store_id) values (126, 18);
insert into flowerstore (flower_id, store_id) values (192, 18);
insert into flowerstore (flower_id, store_id) values (18, 44);
insert into flowerstore (flower_id, store_id) values (52, 85);
insert into flowerstore (flower_id, store_id) values (69, 82);
insert into flowerstore (flower_id, store_id) values (48, 66);
insert into flowerstore (flower_id, store_id) values (202, 83);
insert into flowerstore (flower_id, store_id) values (95, 60);
insert into flowerstore (flower_id, store_id) values (170, 26);
insert into flowerstore (flower_id, store_id) values (96, 12);
insert into flowerstore (flower_id, store_id) values (30, 38);
insert into flowerstore (flower_id, store_id) values (64, 1);
insert into flowerstore (flower_id, store_id) values (132, 15);
insert into flowerstore (flower_id, store_id) values (199, 37);
insert into flowerstore (flower_id, store_id) values (179, 35);
insert into flowerstore (flower_id, store_id) values (74, 81);
insert into flowerstore (flower_id, store_id) values (158, 68);
insert into flowerstore (flower_id, store_id) values (137, 16);
insert into flowerstore (flower_id, store_id) values (192, 67);
insert into flowerstore (flower_id, store_id) values (177, 33);
insert into flowerstore (flower_id, store_id) values (170, 58);
insert into flowerstore (flower_id, store_id) values (145, 30);
insert into flowerstore (flower_id, store_id) values (48, 86);
insert into flowerstore (flower_id, store_id) values (121, 3);
insert into flowerstore (flower_id, store_id) values (73, 9);
insert into flowerstore (flower_id, store_id) values (139, 28);
insert into flowerstore (flower_id, store_id) values (80, 2);
insert into flowerstore (flower_id, store_id) values (199, 7);
insert into flowerstore (flower_id, store_id) values (35, 29);
insert into flowerstore (flower_id, store_id) values (102, 66);
insert into flowerstore (flower_id, store_id) values (80, 33);
insert into flowerstore (flower_id, store_id) values (129, 90);
insert into flowerstore (flower_id, store_id) values (149, 83);
insert into flowerstore (flower_id, store_id) values (90, 18);
insert into flowerstore (flower_id, store_id) values (72, 58);
insert into flowerstore (flower_id, store_id) values (119, 19);
insert into flowerstore (flower_id, store_id) values (181, 49);
insert into flowerstore (flower_id, store_id) values (110, 64);
insert into flowerstore (flower_id, store_id) values (70, 65);
insert into flowerstore (flower_id, store_id) values (118, 86);
insert into flowerstore (flower_id, store_id) values (147, 52);
insert into flowerstore (flower_id, store_id) values (5, 49);
insert into flowerstore (flower_id, store_id) values (96, 62);
insert into flowerstore (flower_id, store_id) values (121, 78);
insert into flowerstore (flower_id, store_id) values (144, 88);
insert into flowerstore (flower_id, store_id) values (75, 7);
insert into flowerstore (flower_id, store_id) values (117, 32);
insert into flowerstore (flower_id, store_id) values (47, 20);
insert into flowerstore (flower_id, store_id) values (36, 59);
insert into flowerstore (flower_id, store_id) values (181, 47);
insert into flowerstore (flower_id, store_id) values (107, 15);
insert into flowerstore (flower_id, store_id) values (40, 90);
insert into flowerstore (flower_id, store_id) values (61, 91);
insert into flowerstore (flower_id, store_id) values (26, 50);
insert into flowerstore (flower_id, store_id) values (204, 89);
insert into flowerstore (flower_id, store_id) values (67, 32);
insert into flowerstore (flower_id, store_id) values (164, 77);
insert into flowerstore (flower_id, store_id) values (40, 30);
insert into flowerstore (flower_id, store_id) values (40, 91);
insert into flowerstore (flower_id, store_id) values (76, 55);
insert into flowerstore (flower_id, store_id) values (28, 90);
insert into flowerstore (flower_id, store_id) values (191, 46);
insert into flowerstore (flower_id, store_id) values (68, 52);
insert into flowerstore (flower_id, store_id) values (81, 50);
insert into flowerstore (flower_id, store_id) values (101, 15);
insert into flowerstore (flower_id, store_id) values (195, 86);
insert into flowerstore (flower_id, store_id) values (118, 2);
insert into flowerstore (flower_id, store_id) values (201, 19);
insert into flowerstore (flower_id, store_id) values (97, 59);
insert into flowerstore (flower_id, store_id) values (39, 55);
insert into flowerstore (flower_id, store_id) values (121, 86);
insert into flowerstore (flower_id, store_id) values (40, 21);
insert into flowerstore (flower_id, store_id) values (175, 86);
insert into flowerstore (flower_id, store_id) values (23, 18);
insert into flowerstore (flower_id, store_id) values (144, 11);
insert into flowerstore (flower_id, store_id) values (142, 89);
insert into flowerstore (flower_id, store_id) values (105, 78);
insert into flowerstore (flower_id, store_id) values (53, 67);
insert into flowerstore (flower_id, store_id) values (178, 35);
insert into flowerstore (flower_id, store_id) values (159, 66);
insert into flowerstore (flower_id, store_id) values (195, 31);
insert into flowerstore (flower_id, store_id) values (42, 74);
insert into flowerstore (flower_id, store_id) values (193, 27);
insert into flowerstore (flower_id, store_id) values (84, 78);
insert into flowerstore (flower_id, store_id) values (88, 47);
insert into flowerstore (flower_id, store_id) values (56, 21);
insert into flowerstore (flower_id, store_id) values (128, 14);
insert into flowerstore (flower_id, store_id) values (89, 2);
insert into flowerstore (flower_id, store_id) values (149, 85);
insert into flowerstore (flower_id, store_id) values (68, 43);
insert into flowerstore (flower_id, store_id) values (29, 82);
insert into flowerstore (flower_id, store_id) values (142, 88);
insert into flowerstore (flower_id, store_id) values (198, 32);
insert into flowerstore (flower_id, store_id) values (67, 13);
insert into flowerstore (flower_id, store_id) values (178, 50);
insert into flowerstore (flower_id, store_id) values (189, 44);
insert into flowerstore (flower_id, store_id) values (109, 9);
insert into flowerstore (flower_id, store_id) values (108, 74);
insert into flowerstore (flower_id, store_id) values (35, 10);
insert into flowerstore (flower_id, store_id) values (178, 67);
insert into flowerstore (flower_id, store_id) values (174, 58);
insert into flowerstore (flower_id, store_id) values (161, 78);
insert into flowerstore (flower_id, store_id) values (58, 54);
insert into flowerstore (flower_id, store_id) values (191, 83);
insert into flowerstore (flower_id, store_id) values (59, 29);
insert into flowerstore (flower_id, store_id) values (121, 82);
insert into flowerstore (flower_id, store_id) values (63, 29);
insert into flowerstore (flower_id, store_id) values (57, 16);
insert into flowerstore (flower_id, store_id) values (43, 30);
insert into flowerstore (flower_id, store_id) values (164, 91);
insert into flowerstore (flower_id, store_id) values (156, 14);
insert into flowerstore (flower_id, store_id) values (83, 27);
insert into flowerstore (flower_id, store_id) values (194, 4);
insert into flowerstore (flower_id, store_id) values (101, 21);
insert into flowerstore (flower_id, store_id) values (59, 29);
insert into flowerstore (flower_id, store_id) values (134, 57);
insert into flowerstore (flower_id, store_id) values (119, 63);
insert into flowerstore (flower_id, store_id) values (75, 38);
insert into flowerstore (flower_id, store_id) values (67, 53);
insert into flowerstore (flower_id, store_id) values (114, 5);
insert into flowerstore (flower_id, store_id) values (48, 2);
insert into flowerstore (flower_id, store_id) values (104, 7);
insert into flowerstore (flower_id, store_id) values (35, 52);
insert into flowerstore (flower_id, store_id) values (6, 77);
insert into flowerstore (flower_id, store_id) values (204, 60);
insert into flowerstore (flower_id, store_id) values (14, 27);
insert into flowerstore (flower_id, store_id) values (196, 77);
insert into flowerstore (flower_id, store_id) values (130, 76);
insert into flowerstore (flower_id, store_id) values (63, 34);
insert into flowerstore (flower_id, store_id) values (66, 44);
insert into flowerstore (flower_id, store_id) values (134, 70);
insert into flowerstore (flower_id, store_id) values (26, 90);
insert into flowerstore (flower_id, store_id) values (110, 53);
insert into flowerstore (flower_id, store_id) values (132, 12);
insert into flowerstore (flower_id, store_id) values (181, 49);
insert into flowerstore (flower_id, store_id) values (37, 36);
insert into flowerstore (flower_id, store_id) values (148, 83);
insert into flowerstore (flower_id, store_id) values (3, 21);
insert into flowerstore (flower_id, store_id) values (186, 43);
insert into flowerstore (flower_id, store_id) values (167, 30);
insert into flowerstore (flower_id, store_id) values (109, 57);
insert into flowerstore (flower_id, store_id) values (184, 53);
insert into flowerstore (flower_id, store_id) values (31, 33);
insert into flowerstore (flower_id, store_id) values (175, 3);
insert into flowerstore (flower_id, store_id) values (192, 66);
insert into flowerstore (flower_id, store_id) values (148, 45);
insert into flowerstore (flower_id, store_id) values (76, 40);
insert into flowerstore (flower_id, store_id) values (13, 24);
insert into flowerstore (flower_id, store_id) values (12, 9);
insert into flowerstore (flower_id, store_id) values (103, 54);
insert into flowerstore (flower_id, store_id) values (187, 82);
insert into flowerstore (flower_id, store_id) values (156, 88);
insert into flowerstore (flower_id, store_id) values (173, 22);
insert into flowerstore (flower_id, store_id) values (128, 65);
insert into flowerstore (flower_id, store_id) values (107, 88);
insert into flowerstore (flower_id, store_id) values (13, 79);
insert into flowerstore (flower_id, store_id) values (163, 59);
insert into flowerstore (flower_id, store_id) values (192, 77);
insert into flowerstore (flower_id, store_id) values (159, 8);
insert into flowerstore (flower_id, store_id) values (175, 5);
insert into flowerstore (flower_id, store_id) values (162,  1);
insert into flowerstore (flower_id, store_id) values (159, 31);
insert into flowerstore (flower_id, store_id) values (110, 8);
insert into flowerstore (flower_id, store_id) values (1, 47);
insert into flowerstore (flower_id, store_id) values (195, 16);
insert into flowerstore (flower_id, store_id) values (102, 86);
insert into flowerstore (flower_id, store_id) values (64, 72);
insert into flowerstore (flower_id, store_id) values (4, 19);
insert into flowerstore (flower_id, store_id) values (176, 77);
insert into flowerstore (flower_id, store_id) values (193, 52);
insert into flowerstore (flower_id, store_id) values (92, 9);
insert into flowerstore (flower_id, store_id) values (174, 77);
insert into flowerstore (flower_id, store_id) values (96, 62);
insert into flowerstore (flower_id, store_id) values (132, 36);
insert into flowerstore (flower_id, store_id) values (120, 91);
insert into flowerstore (flower_id, store_id) values (34, 89);
insert into flowerstore (flower_id, store_id) values (34, 91);
insert into flowerstore (flower_id, store_id) values (14, 88);
insert into flowerstore (flower_id, store_id) values (171, 88);
insert into flowerstore (flower_id, store_id) values (40, 43);
insert into flowerstore (flower_id, store_id) values (47, 67);
insert into flowerstore (flower_id, store_id) values (44, 91);
insert into flowerstore (flower_id, store_id) values (33, 41);
insert into flowerstore (flower_id, store_id) values (153, 9);
insert into flowerstore (flower_id, store_id) values (121, 17);
insert into flowerstore (flower_id, store_id) values (191, 57);
insert into flowerstore (flower_id, store_id) values (63, 32);
insert into flowerstore (flower_id, store_id) values (24, 44);
insert into flowerstore (flower_id, store_id) values (180, 1);
insert into flowerstore (flower_id, store_id) values (57, 5);
insert into flowerstore (flower_id, store_id) values (70, 85);
insert into flowerstore (flower_id, store_id) values (196, 79);
insert into flowerstore (flower_id, store_id) values (10, 13);
insert into flowerstore (flower_id, store_id) values (35, 58);
insert into flowerstore (flower_id, store_id) values (200, 83);
insert into flowerstore (flower_id, store_id) values (94, 75);
insert into flowerstore (flower_id, store_id) values (16, 18);
insert into flowerstore (flower_id, store_id) values (183, 50);
insert into flowerstore (flower_id, store_id) values (84, 60);
insert into flowerstore (flower_id, store_id) values (151, 9);
insert into flowerstore (flower_id, store_id) values (129, 49);
insert into flowerstore (flower_id, store_id) values (9, 3);
insert into flowerstore (flower_id, store_id) values (30, 70);
insert into flowerstore (flower_id, store_id) values (21, 25);
insert into flowerstore (flower_id, store_id) values (202, 38);
insert into flowerstore (flower_id, store_id) values (33, 68);
insert into flowerstore (flower_id, store_id) values (171, 83);
insert into flowerstore (flower_id, store_id) values (81, 56);
insert into flowerstore (flower_id, store_id) values (87, 29);
insert into flowerstore (flower_id, store_id) values (70, 24);
insert into flowerstore (flower_id, store_id) values (198, 91);
insert into flowerstore (flower_id, store_id) values (1, 69);
insert into flowerstore (flower_id, store_id) values (3, 62);
insert into flowerstore (flower_id, store_id) values (115, 43);
insert into flowerstore (flower_id, store_id) values (183, 85);
insert into flowerstore (flower_id, store_id) values (119, 64);
insert into flowerstore (flower_id, store_id) values (2, 52);
insert into flowerstore (flower_id, store_id) values (45, 40);
insert into flowerstore (flower_id, store_id) values (177, 40);
insert into flowerstore (flower_id, store_id) values (118, 3);
insert into flowerstore (flower_id, store_id) values (170, 91);
insert into flowerstore (flower_id, store_id) values (95, 69);
insert into flowerstore (flower_id, store_id) values (118, 18);
insert into flowerstore (flower_id, store_id) values (79, 35);
insert into flowerstore (flower_id, store_id) values (136, 27);
insert into flowerstore (flower_id, store_id) values (85, 18);
insert into flowerstore (flower_id, store_id) values (69, 71);
insert into flowerstore (flower_id, store_id) values (20, 22);
insert into flowerstore (flower_id, store_id) values (40, 83);
insert into flowerstore (flower_id, store_id) values (194, 67);
insert into flowerstore (flower_id, store_id) values (127, 85);
insert into flowerstore (flower_id, store_id) values (34, 52);
insert into flowerstore (flower_id, store_id) values (52, 48);
insert into flowerstore (flower_id, store_id) values (145, 11);
insert into flowerstore (flower_id, store_id) values (96, 35);
insert into flowerstore (flower_id, store_id) values (147, 13);
insert into flowerstore (flower_id, store_id) values (173, 72);
insert into flowerstore (flower_id, store_id) values (69, 78);
insert into flowerstore (flower_id, store_id) values (55, 88);
insert into flowerstore (flower_id, store_id) values (183, 63);
insert into flowerstore (flower_id, store_id) values (69, 85);
insert into flowerstore (flower_id, store_id) values (41, 28);
insert into flowerstore (flower_id, store_id) values (154, 67);
insert into flowerstore (flower_id, store_id) values (3, 29);
insert into flowerstore (flower_id, store_id) values (163, 18);
insert into flowerstore (flower_id, store_id) values (204, 44);
insert into flowerstore (flower_id, store_id) values (20, 3);
insert into flowerstore (flower_id, store_id) values (86, 28);
insert into flowerstore (flower_id, store_id) values (98, 69);
insert into flowerstore (flower_id, store_id) values (101, 62);
insert into flowerstore (flower_id, store_id) values (79, 43);
insert into flowerstore (flower_id, store_id) values (106, 89);
insert into flowerstore (flower_id, store_id) values (22, 50);
insert into flowerstore (flower_id, store_id) values (58, 80);
insert into flowerstore (flower_id, store_id) values (72, 57);
insert into flowerstore (flower_id, store_id) values (18, 16);
insert into flowerstore (flower_id, store_id) values (64, 13);
insert into flowerstore (flower_id, store_id) values (28, 52);
insert into flowerstore (flower_id, store_id) values (163, 83);
insert into flowerstore (flower_id, store_id) values (185, 60);
insert into flowerstore (flower_id, store_id) values (193, 48);
insert into flowerstore (flower_id, store_id) values (19, 80);
insert into flowerstore (flower_id, store_id) values (16, 12);
insert into flowerstore (flower_id, store_id) values (15, 57);
insert into flowerstore (flower_id, store_id) values (59, 76);
insert into flowerstore (flower_id, store_id) values (22, 53);
insert into flowerstore (flower_id, store_id) values (121, 88);
insert into flowerstore (flower_id, store_id) values (147, 6);
insert into flowerstore (flower_id, store_id) values (114, 10);
insert into flowerstore (flower_id, store_id) values (67, 27);
insert into flowerstore (flower_id, store_id) values (194, 4);
insert into flowerstore (flower_id, store_id) values (46, 75);
insert into flowerstore (flower_id, store_id) values (8, 58);
insert into flowerstore (flower_id, store_id) values (146, 8);
insert into flowerstore (flower_id, store_id) values (203, 44);
insert into flowerstore (flower_id, store_id) values (99, 63);
insert into flowerstore (flower_id, store_id) values (172, 33);
insert into flowerstore (flower_id, store_id) values (162, 75);
insert into flowerstore (flower_id, store_id) values (65, 4);
insert into flowerstore (flower_id, store_id) values (3, 26);
insert into flowerstore (flower_id, store_id) values (106, 38);
insert into flowerstore (flower_id, store_id) values (137, 57);
insert into flowerstore (flower_id, store_id) values (144, 3);
insert into flowerstore (flower_id, store_id) values (146, 86);
insert into flowerstore (flower_id, store_id) values (20, 74);
insert into flowerstore (flower_id, store_id) values (15, 76);
insert into flowerstore (flower_id, store_id) values (202, 31);
insert into flowerstore (flower_id, store_id) values (40, 34);
insert into flowerstore (flower_id, store_id) values (60, 39);
insert into flowerstore (flower_id, store_id) values (189, 76);
insert into flowerstore (flower_id, store_id) values (145, 29);
insert into flowerstore (flower_id, store_id) values (8, 48);
insert into flowerstore (flower_id, store_id) values (21, 89);
insert into flowerstore (flower_id, store_id) values (19, 23);
insert into flowerstore (flower_id, store_id) values (148, 41);
insert into flowerstore (flower_id, store_id) values (163, 42);
insert into flowerstore (flower_id, store_id) values (31, 58);
insert into flowerstore (flower_id, store_id) values (37, 35);
insert into flowerstore (flower_id, store_id) values (27, 37);
insert into flowerstore (flower_id, store_id) values (167, 40);
insert into flowerstore (flower_id, store_id) values (182, 22);
insert into flowerstore (flower_id, store_id) values (183, 14);
insert into flowerstore (flower_id, store_id) values (146, 77);
insert into flowerstore (flower_id, store_id) values (45, 41);
insert into flowerstore (flower_id, store_id) values (148, 64);
insert into flowerstore (flower_id, store_id) values (64, 83);
insert into flowerstore (flower_id, store_id) values (143, 25);
insert into flowerstore (flower_id, store_id) values (125, 90);
insert into flowerstore (flower_id, store_id) values (65, 54);
insert into flowerstore (flower_id, store_id) values (102, 79);
insert into flowerstore (flower_id, store_id) values (61, 46);
insert into flowerstore (flower_id, store_id) values (86, 54);
insert into flowerstore (flower_id, store_id) values (63, 39);
insert into flowerstore (flower_id, store_id) values (127, 7);
insert into flowerstore (flower_id, store_id) values (172, 6);
insert into flowerstore (flower_id, store_id) values (160, 86);
insert into flowerstore (flower_id, store_id) values (192, 1);
insert into flowerstore (flower_id, store_id) values (48, 40);
insert into flowerstore (flower_id, store_id) values (146, 71);
insert into flowerstore (flower_id, store_id) values (159, 76);
insert into flowerstore (flower_id, store_id) values (30, 50);
insert into flowerstore (flower_id, store_id) values (92, 87);
insert into flowerstore (flower_id, store_id) values (54, 71);
insert into flowerstore (flower_id, store_id) values (76, 16);
insert into flowerstore (flower_id, store_id) values (67, 31);
insert into flowerstore (flower_id, store_id) values (4, 52);
insert into flowerstore (flower_id, store_id) values (195, 32);
insert into flowerstore (flower_id, store_id) values (25, 17);
insert into flowerstore (flower_id, store_id) values (193, 62);
insert into flowerstore (flower_id, store_id) values (183, 54);
insert into flowerstore (flower_id, store_id) values (70, 18);
insert into flowerstore (flower_id, store_id) values (126, 47);
insert into flowerstore (flower_id, store_id) values (163, 22);
insert into flowerstore (flower_id, store_id) values (39, 33);
insert into flowerstore (flower_id, store_id) values (86, 7);
insert into flowerstore (flower_id, store_id) values (144, 30);
insert into flowerstore (flower_id, store_id) values (77, 40);
insert into flowerstore (flower_id, store_id) values (38, 82);
insert into flowerstore (flower_id, store_id) values (186, 12);
insert into flowerstore (flower_id, store_id) values (21, 89);
insert into flowerstore (flower_id, store_id) values (131, 83);
insert into flowerstore (flower_id, store_id) values (61, 5);
insert into flowerstore (flower_id, store_id) values (165, 18);
insert into flowerstore (flower_id, store_id) values (175, 31);
insert into flowerstore (flower_id, store_id) values (37, 51);
insert into flowerstore (flower_id, store_id) values (112, 81);
insert into flowerstore (flower_id, store_id) values (133, 46);
insert into flowerstore (flower_id, store_id) values (143, 68);
insert into flowerstore (flower_id, store_id) values (36, 64);
insert into flowerstore (flower_id, store_id) values (53, 4);
insert into flowerstore (flower_id, store_id) values (13, 83);
insert into flowerstore (flower_id, store_id) values (148, 28);
insert into flowerstore (flower_id, store_id) values (134, 35);
insert into flowerstore (flower_id, store_id) values (179, 10);
insert into flowerstore (flower_id, store_id) values (196, 19);
insert into flowerstore (flower_id, store_id) values (173, 67);
insert into flowerstore (flower_id, store_id) values (163, 60);
insert into flowerstore (flower_id, store_id) values (66, 75);
insert into flowerstore (flower_id, store_id) values (137, 16);
insert into flowerstore (flower_id, store_id) values (35, 79);
insert into flowerstore (flower_id, store_id) values (75, 9);
insert into flowerstore (flower_id, store_id) values (47, 84);
insert into flowerstore (flower_id, store_id) values (51, 59);
insert into flowerstore (flower_id, store_id) values (194, 53);
insert into flowerstore (flower_id, store_id) values (48, 57);
insert into flowerstore (flower_id, store_id) values (76, 5);
insert into flowerstore (flower_id, store_id) values (28, 13);
insert into flowerstore (flower_id, store_id) values (24, 86);
insert into flowerstore (flower_id, store_id) values (10, 6);
insert into flowerstore (flower_id, store_id) values (68, 77);
insert into flowerstore (flower_id, store_id) values (62, 28);
insert into flowerstore (flower_id, store_id) values (35, 81);
insert into flowerstore (flower_id, store_id) values (29, 58);
insert into flowerstore (flower_id, store_id) values (19, 86);

