create database Fifa

create table Teams(
teamId int primary key,
teamName varchar(50) unique,
country varchar(40),
teamFlag varchar(1000),
teamJersey varchar(1000)
)
insert into Teams values(11, 'France National Football Team', 'France','https://www.fifaratings.com/wp-content/uploads/360-404.png','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9hWWYzyEDxX5ms-0d68fyG99THTKQdb3Kvw&usqp=CAU')
insert into Teams values(12, 'England National Football Team', 'England','https://www.fifaratings.com/wp-content/uploads/360-402.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_4720000/ff_4720473-c5299cc46ae955eb9188_full.jpg&w=340')
insert into Teams values(13, 'Argentina National Football Team', 'Argentina','https://www.fifaratings.com/wp-content/uploads/360-393.png','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfPX-9ag4ooXs-9D3Cnb5xdDEIRDHbcnCnMA&usqp=CAU')
insert into Teams values(14, 'Portugal National Football Team', 'Portugal','https://www.fifaratings.com/wp-content/uploads/360-416.png','https://d2j6dbq0eux0bg.cloudfront.net/images/19089807/2925158066.jpg')
insert into Teams values(15, 'Spain National Football Team', 'Spain','https://www.fifaratings.com/wp-content/uploads/360-421.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3741000/ff_3741657-a94674fe26875c7fc417_full.jpg&w=340')
insert into Teams values(16, 'Belgian National Football Team', 'Belgium','https://www.fifaratings.com/wp-content/uploads/360-396.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_4159000/ff_4159547-94f1beb853f36d9006e2_full.jpg&w=340')
insert into Teams values(17, 'Germany National Football Team', 'Germany','https://www.fifaratings.com/wp-content/uploads/360-405.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_4308000/ff_4308009-d4255e4d3364b2e3cc2f_full.jpg&w=340')
insert into Teams values(18, 'Italy National Football Team', 'Italy','https://www.fifaratings.com/wp-content/uploads/360-409.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_4483000/ff_4483546-c952a46e04aa990894c2_full.jpg&w=340')
insert into Teams values(19, 'Netherlands National Football Team', 'Netherlands','https://www.fifaratings.com/wp-content/uploads/360-411.png','https://cdn.shopify.com/s/files/1/0012/9744/9048/products/olanda_holland_netherlands_nederland_niederlande_nike_soccer_jersey_2021_2022_maillot_euro_football_shirt_pays_bas_national_team_kit_camiseta_trikot_1024x1024@2x.jpg?v=1648304650')
insert into Teams values(20, 'Brazil National Football Team', 'Brazil','https://www.fifaratings.com/wp-content/uploads/360-397.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_4091000/ff_4091073-765e0dd6a02bc266813a_full.jpg&w=340')
insert into Teams values(21, 'Denmark National Football Team', 'Denmark','https://www.fifaratings.com/wp-content/uploads/360-401.png','https://www.sportingplus.net/4092-large_default/denmark-national-team-home-football-shirt-201415-adidas.jpg')
insert into Teams values(22, 'Mexico National Football Team', 'Mexico','https://www.fifaratings.com/wp-content/uploads/360-410.png','https://www.sportingplus.net/3543-large_default/mexico-national-football-team-away-shirt-201213-adidas.jpg')
insert into Teams values(23, 'Poland National Football Team ', 'Poland','https://www.fifaratings.com/wp-content/uploads/360-415.png','https://www.amstadion.com/media/catalog/product/cache/2/thumbnail/500x500/9df78eab33525d08d6e5fb8d27136e95/p/l/pl-kh02001.jpg')
insert into Teams values(24, 'Austria National Football Team', 'Austria','https://www.fifaratings.com/wp-content/uploads/360-395.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3723000/ff_3723038-8ea36f00fe4b1e5430f3_full.jpg&w=340')
insert into Teams values(25, 'Sweden National Football Team', 'Sweden','https://www.fifaratings.com/wp-content/uploads/360-422.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_4437000/ff_4437428-56600a68a6a8af5ed6d6_full.jpg&w=340')
insert into Teams values(26, 'Czech Republic National Football Team', 'Czech Republic','https://www.fifaratings.com/wp-content/uploads/360-400.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3723000/ff_3723036-faca7062586f98dd4851_full.jpg&w=340')
insert into Teams values(27, 'Norway National Football Team', 'Norway','https://www.fifaratings.com/wp-content/uploads/360-414.png','https://www.sportingplus.net/6408-large_default/norway-national-team-home-football-shirt-2015-nike.jpg')
insert into Teams values(28, 'Ukraine National Football Team', 'Ukraine','https://www.fifaratings.com/wp-content/uploads/360-423.png','https://2.bp.blogspot.com/-7KvCLiQjwIk/Xw8CaYpOarI/AAAAAAACXps/qUy_e2oLHCQMJeX2U0NWs5mz66WCcnXjACLcBGAsYHQ/s1600/ukraine-2020-kits-2.jpg')
insert into Teams values(29, 'Russia National Football Team', 'Russia','https://www.fifaratings.com/wp-content/uploads/360-419.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2524000/ff_2524468_full.jpg&w=340')
insert into Teams values(30, 'United States National Football Team', 'United States','https://www.fifaratings.com/wp-content/uploads/360-424.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_4331000/ff_4331323-fe1acd5fa6e8248f6a1a_full.jpg&w=340')
insert into Teams values(31, 'Scotland National Football Team', 'Scotland','https://www.fifaratings.com/wp-content/uploads/360-420.png','https://cdn.shopify.com/s/files/1/0012/9744/9048/products/maglia_calcio_scozia_nazionale_home_2018_2019_adidas_soccer_jersey-scotland_scottish_scotts_shirt_football_camiseta_futbol_escocia_ecosse_maillot_domicile_bleu_blau_heimtrikot_schottl_1024x1024@2x.jpg?v=1621093979')
insert into Teams values(32, 'Greece National Football Team', 'Greece','https://www.fifaratings.com/wp-content/uploads/360-406.png','https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/c7079af3-bd8d-4f28-8d6c-4095cf9e615d/greece-2020-stadium-home-football-shirt-qRkv01.png')
insert into Teams values(33, 'Wales National Football Team', 'Wales','https://www.fifaratings.com/wp-content/uploads/360-425.png','https://u-mercari-images.mercdn.net/photos/m49932081981_1.jpg?width=1024&height=1024&format=pjpg&auto=webp&fit=crop&_=1638059462')
insert into Teams values(34, 'Canada National Football Team', 'Canada','https://www.fifaratings.com/wp-content/uploads/360-398.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_4755000/ff_4755438-7fac5cac53f74009b678_full.jpg&w=340')
insert into Teams values(35, 'Hungary National Football Team', 'Hungary','https://www.fifaratings.com/wp-content/uploads/360-407.png','https://www.sportingplus.net/3520-large_default/hungary-national-team-home-football-shirt-201214-adidas.jpg')
insert into Teams values(36, 'Republic of Ireland National Football', 'Ireland','https://www.fifaratings.com/wp-content/uploads/360-417.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_4711000/ff_4711984-4a60891dea4d183433bf_full.jpg&w=340')
insert into Teams values(37, 'Australia National Football Team', 'Australia','https://www.fifaratings.com/wp-content/uploads/360-394.png','https://www.sportingplus.net/3378-large_default/australia-national-team-home-football-shirt-201415-nike.jpg')
insert into Teams values(38, 'Romania National Football Team', 'Romania','https://www.fifaratings.com/wp-content/uploads/360-418.png','https://i0.wp.com/footballfashion.org/wordpress/wp-content/uploads/2021/03/romania-2021-2022-joma-kit-3.jpg?w=1292&ssl=1')
insert into Teams values(39, 'Finland National Football Team', 'Finland','https://www.fifaratings.com/wp-content/uploads/360-403.png','https://i0.wp.com/footballfashion.org/wordpress/wp-content/uploads/2020/09/finland-2020-2021-nike-kit-4.jpg?ssl=1')
insert into Teams values(40, 'Iceland National Football Team', 'Iceland','https://www.fifaratings.com/wp-content/uploads/360-408.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_4171000/ff_4171310-c9a70555a29672de0468_full.jpg&w=340')
insert into Teams values(41, 'China PR National Football Team', 'China','https://www.fifaratings.com/wp-content/uploads/360-399.png','https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3886000/ff_3886418-4011b15ab257e1c48ea5_full.jpg&w=340')
insert into Teams values(42, 'New Zealand National Football Team', 'New Zealand','https://www.fifaratings.com/wp-content/uploads/360-412.png','https://www.sportingplus.net/3450-large_default/new-zealand-national-team-home-football-shirt-201415-nike.jpg')

create table Players(
playerId int primary key,
playerName varchar(60) unique,
playerPosition varchar(50),
playerTeamId int,
playerImage varchar(1000),
constraint FK_Id foreign key (playerTeamId) references Teams(teamId)
)
insert into Players values(70,'Kylian Mbappé', 'Striker',11,'https://www.fifaratings.com/wp-content/uploads/22_180-2.png')
insert into Players values(71,'N’Golo Kanté','Center Defensive Midfielder',11,'https://www.fifaratings.com/wp-content/uploads/22_180-7.png')
insert into Players values(72,'Karim Benzema','Center Forward',11,'https://www.fifaratings.com/wp-content/uploads/22_180-11.png')
insert into Players values(73,'Paul Pogba','Center Midfielder',11,'https://www.fifaratings.com/wp-content/uploads/22_180-41.png')
insert into Players values(74,'Hugo Lloris','GoalKeeper',11,'https://www.fifaratings.com/wp-content/uploads/22_180-35.png')
insert into Players values(75,'Raphaël Varane','Center Back',11,'https://www.fifaratings.com/wp-content/uploads/22_180-58.png')
insert into Players values(76,'Kingsley Coman','Left Midfielder',11,'https://www.fifaratings.com/wp-content/uploads/22_180-60.png')
insert into Players values(77,'Antoine Griezmann','Center Attacker Midfielder',11,'https://www.fifaratings.com/wp-content/uploads/22_180-77.png')
insert into Players values(78,'Mike Maignan','GoalKeeper',11,'https://www.fifaratings.com/wp-content/uploads/22_180-106.png')
insert into Players values(79,'Lucas Digne','Left Back',11,'https://www.fifaratings.com/wp-content/uploads/22_180-133.png')

insert into Players values(100,'Harry Kane','Striker',12,'https://www.fifaratings.com/wp-content/uploads/22_180-8.png')
insert into Players values(101,'Raheem Sterling','Left Wing',12,'https://www.fifaratings.com/wp-content/uploads/22_180-24.png')
insert into Players values(102,'Trent Alexander-Arnold','Right Back',12,'https://www.fifaratings.com/wp-content/uploads/22_180-32.png')
insert into Players values(103,'Jadon Sancho','Center Attacking Midfielder',12,'https://www.fifaratings.com/wp-content/uploads/22_180-45.png')
insert into Players values(104,'Marcus Rashford','Center Attacking Midfielder',12,'https://www.fifaratings.com/wp-content/uploads/22_180-92.png')
insert into Players values(105,'Kyle Walker','Right Back',12,'https://www.fifaratings.com/wp-content/uploads/22_180-71.png')
insert into Players values(106,'Phil Foden','Center Attacking Midfielder',12,'https://www.fifaratings.com/wp-content/uploads/22_180-108.png')
insert into Players values(107,'Luke Shaw','Left Back',12,'https://www.fifaratings.com/wp-content/uploads/22_180-119.png')
insert into Players values(108,'Harry Maguire','Center Back',12,'https://www.fifaratings.com/wp-content/uploads/22_180-136.png')

insert into Players values(300,'Lionel Messi','Right Wing',13,'https://www.fifaratings.com/wp-content/uploads/22_180.png')
insert into Players values(301,'Paulo Dybala','Center Attacking Midfielder',13,'https://www.fifaratings.com/wp-content/uploads/22_180-42.png')
insert into Players values(302,'Ángel Di María','Right Wing',13,'https://www.fifaratings.com/wp-content/uploads/22_180-37.png')
insert into Players values(303,'Sergio Agüero','Striker',13,'https://www.fifaratings.com/wp-content/uploads/22_180-40.png')
insert into Players values(304,'Lautaro Martínez','Striker',13,'https://www.fifaratings.com/wp-content/uploads/22_180-91.png')
insert into Players values(305,'Alejandro Gómez','Center Attacking Midfielder',13,'https://www.fifaratings.com/wp-content/uploads/22_180-95.png')
insert into Players values(306,'Emiliano Martínez','GoalKeeper',13,'https://www.fifaratings.com/wp-content/uploads/22_180-135.png')
insert into Players values(307,'Marcos Acuña','Left Back',13,'https://www.fifaratings.com/wp-content/uploads/22_180-113.png')
insert into Players values(308,'Ángel Correa','Center Attacking Midfielder',13,'https://www.fifaratings.com/wp-content/uploads/22_180-142.png')
insert into Players values(309,'Cristian Romero','Center Back',13,'https://www.fifaratings.com/wp-content/uploads/22_180-204.png')

insert into Players values(200,'C. Ronaldo dos Santos Aveiro','Striker',14,'https://www.fifaratings.com/wp-content/uploads/22_180-6.png')
insert into Players values(201,'Bruno Miguel Borges Fernandes','Center Attacking Midfielder',14,'https://www.fifaratings.com/wp-content/uploads/22_180-23.png')
insert into Players values(202,'Rúben Santos Gato Alves Dias','Center Back',14,'https://www.fifaratings.com/wp-content/uploads/22_180-30.png')
insert into Players values(203,'João Pedro Cavaco Cancelo','Right Back',14,'https://www.fifaratings.com/wp-content/uploads/22_180-53.png')
insert into Players values(204,'Bernardo Mota Carvalho e Silva','Center Attacking Midfielder',14,'https://www.fifaratings.com/wp-content/uploads/22_180-50.png')
insert into Players values(205,'André Miguel Valente da Silva','Striker',14,'https://www.fifaratings.com/wp-content/uploads/22_180-114.png')
insert into Players values(206,'Raphaël Guerreiro','Left Back',14,'https://www.fifaratings.com/wp-content/uploads/22_180-103.png')
insert into Players values(207,'João Félix Sequeira','Center Attacking Midfielder',14,'https://www.fifaratings.com/wp-content/uploads/22_180-164.png')
insert into Players values(208,'Rúben Diogo da Silva','Center Midfielder',14,'https://www.fifaratings.com/wp-content/uploads/22_180-222.png')

insert into Players values(40,'Sergio Ramos García','Center Back',15,'https://www.fifaratings.com/wp-content/uploads/22_180-29.png')
insert into Players values(41,'Marcos Llorente Moreno','Center Attacking Midfielder',15,'https://www.fifaratings.com/wp-content/uploads/22_180-49.png')
insert into Players values(42,'Rodrigo Hernández Cascante','Center Defensive Midfielder',15,'https://www.fifaratings.com/wp-content/uploads/22_180-48.png')
insert into Players values(43,'Aymeric Laporte','Center Back',15,'https://www.fifaratings.com/wp-content/uploads/22_180-52.png')
insert into Players values(44,'Jordi Alba Ramos','Left Back',15,'https://www.fifaratings.com/wp-content/uploads/22_180-64.png')
insert into Players values(45,'Thiago Alcântara','Center Midfielder',15,'https://www.fifaratings.com/wp-content/uploads/22_180-68.png')
insert into Players values(46,'Gerard Moreno Balagueró','Striker',15,'https://www.fifaratings.com/wp-content/uploads/22_180-56.png')
insert into Players values(47,'Sergio Busquets Burgos','Center Defensive Midfielder',15,'https://www.fifaratings.com/wp-content/uploads/22_180-62.png')
insert into Players values(48,'Mikel Oyarzabal Ugarte','Left Wing',15,'https://www.fifaratings.com/wp-content/uploads/22_180-90.png')
insert into Players values(49,'Jorge Resurrección','Center Midfielder',15,'https://www.fifaratings.com/wp-content/uploads/22_180-81.png')

insert into Players values(170,'Kevin De Bruyne','Center Midfielder',16,'https://www.fifaratings.com/wp-content/uploads/22_180-4.png')
insert into Players values(171,'Thibaut Courtois','GoalKeeper',16,'https://www.fifaratings.com/wp-content/uploads/22_180-12.png')
insert into Players values(172,'Romelu Lukaku','Striker',16,'https://www.fifaratings.com/wp-content/uploads/22_180-26.png')
insert into Players values(173,'Eden Hazard','Left Wing',16,'https://www.fifaratings.com/wp-content/uploads/22_180-76.png')
insert into Players values(174,'Youri Tielemans','Center Midfielder',16,'https://www.fifaratings.com/wp-content/uploads/22_180-107.png')
insert into Players values(175,'Yannick Carrasco','Left Midfielder',16,'https://www.fifaratings.com/wp-content/uploads/22_180-100.png')
insert into Players values(176,'Dries Mertens','Center Forward',16,'https://www.fifaratings.com/wp-content/uploads/22_180-123.png')
insert into Players values(177,'Axel Witsel','Center Defensive Midfielder',16,'https://www.fifaratings.com/wp-content/uploads/22_180-151.png')
insert into Players values(178,'Toby Alderweireld','Center Back',16,'https://www.fifaratings.com/wp-content/uploads/22_180-195.png')
insert into Players values(179,'Thorgan Hazard','Left Midfielder',16,'https://www.fifaratings.com/wp-content/uploads/22_180-234.png')

insert into Players values(10,'Manuel Neuer','GoalKeeper',17,'https://www.fifaratings.com/wp-content/uploads/22_180-10.png')
insert into Players values(11,'Joshua Kimmich','Center Defensive Midfielder',17,'https://www.fifaratings.com/wp-content/uploads/22_180-18.png')
insert into Players values(12,'Leon Goretzka','Center Midfielder',17,'https://www.fifaratings.com/wp-content/uploads/22_180-46.png')
insert into Players values(13,'Serge Gnabry','Right Midfielder',17,'https://www.fifaratings.com/wp-content/uploads/22_180-87.png')
insert into Players values(14,'İlkay Gündoğan','Center Midfielder',17,'https://www.fifaratings.com/wp-content/uploads/22_180-73.png')
insert into Players values(15,'Kai Havertz','Center Attacking Midfielder',17,'https://www.fifaratings.com/wp-content/uploads/22_180-138.png')
insert into Players values(16,'Leroy Sané','Striker',17,'https://www.fifaratings.com/wp-content/uploads/22_180-111.png')
insert into Players values(17,'Timo Werner','Striker',17,'https://www.fifaratings.com/wp-content/uploads/22_180-105.png')
insert into Players values(18,'Antonio Rüdiger','Center Back',17,'https://www.fifaratings.com/wp-content/uploads/22_180-149.png')
insert into Players values(19,'Bernd Leno','GoalKeeper',17,'https://www.fifaratings.com/wp-content/uploads/22_180-189.png')

insert into Players values(50,'Gianluigi Donnarumma','GoalKeeper',18,'https://www.fifaratings.com/wp-content/uploads/22_180-20.png')
insert into Players values(51,'Marco Verratti','Center Midfielder',18,'https://www.fifaratings.com/wp-content/uploads/22_180-43.png')
insert into Players values(52,'Ciro Immobile','Striker',18,'https://www.fifaratings.com/wp-content/uploads/22_180-33.png')
insert into Players values(53,'Lorenzo Insigne','Left Wing',18,'https://www.fifaratings.com/wp-content/uploads/22_180-61.png')
insert into Players values(54,'Giorgio Chiellini','Center Back',18,'https://www.fifaratings.com/wp-content/uploads/22_180-67.png')
insert into Players values(55,'Luiz Frello Filho Jorge','Center Midfielder',18,'https://www.fifaratings.com/wp-content/uploads/22_180-86.png')
insert into Players values(56,'Leonardo Bonucci','Center Back',18,'https://www.fifaratings.com/wp-content/uploads/22_180-75.png')
insert into Players values(57,'Nicolò Barella','Center Midfielder',18,'https://www.fifaratings.com/wp-content/uploads/22_180-112.png')
insert into Players values(58,'Federico Chiesa','Center Attacking Midfielder',18,'https://www.fifaratings.com/wp-content/uploads/22_180-167.png')
insert into Players values(59,'Francesco Acerbi','Center Back',18,'https://www.fifaratings.com/wp-content/uploads/22_180-140.png')