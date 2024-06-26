BEGIN;
CREATE DATABASE orders;
USE orders;
CREATE TABLE Orders (
            OrderID INTEGER PRIMARY KEY,
            FirstName TEXT,
            LastName TEXT,
            Email TEXT,
            PhoneNumber TEXT,
            ShippingAddress TEXT
        );
INSERT INTO Orders VALUES(1,'Theodore','Peterson','tpeterson@terpmail.umd.edu','937-104-4015','90229 Zimmerman Islands Apt. 035, Maryland, 56786');
INSERT INTO Orders VALUES(2,'Jaxon','Alexander','jalexander@terpmail.umd.edu','540-899-3802','2803 Regina Knoll Apt. 533, Arizona, 74136');
INSERT INTO Orders VALUES(3,'Emily','Coleman','coleman_emily@umd.edu','(667) 325-4405','2813 Lisa Land Apt. 625, Maryland, 75081');
INSERT INTO Orders VALUES(4,'Asher','Walker','walker_asher@umd.edu','651-102-3360','9792 Jason Oval, Maryland, 28792');
INSERT INTO Orders VALUES(5,'Daniel','Washington','daniel_washington@terpmail.umd.edu','(443) 682-1186','87191 Thomas Islands Apt. 163, Maryland, 45031');
INSERT INTO Orders VALUES(6,'Eli','King','elik_2003@terpmail.umd.edu','(301) 865-2876','042 Kaufman Heights Apt. 213, Maryland, 38667');
INSERT INTO Orders VALUES(7,'Christian','Jenkins','christian_jenkins_2003@umd.edu','(443) 710-7316','10291 Don Creek, Maryland, 49276');
INSERT INTO Orders VALUES(8,'Ella','Hughes','ella_hughes@umd.edu','(443) 252-9764','085 Scott Port, Maryland, 35604');
INSERT INTO Orders VALUES(9,'Cameron','Cox','cox_cameron_2003@umd.edu','(410) 544-3318','1637 Christopher Mountains, Maryland, 37616');
INSERT INTO Orders VALUES(10,'Oscar','Edwards','oscar_edwards@terpmail.umd.edu','(667) 811-3014','777 Julie Mission Suite 038, Maryland, 78980');
INSERT INTO Orders VALUES(11,'Lily','Lewis','lilyl_2004@terpmail.umd.edu','(410) 686-7506','5468 Crawford Center, Maryland, 66040');
INSERT INTO Orders VALUES(12,'David','Allen','david.allen@terpmail.umd.edu','(410) 553-8482','655 Garcia Avenue Apt. 519, Maryland, 89643');
INSERT INTO Orders VALUES(13,'Abigail','Thomas','abigail.thomas.1996@terpmail.umd.edu','913-637-8510','5630 Johnson Junction, Maryland, 75598');
INSERT INTO Orders VALUES(14,'Charlie','Taylor','charlie_t@terpmail.umd.edu','296-477-1109','73516 Angela Green, Maryland, 23038');
INSERT INTO Orders VALUES(15,'Everly','Roberts','everly.roberts@terpmail.umd.edu','(207) 348-1434','3765 Hendrix Neck Suite 149, Georgia, 40327');
INSERT INTO Orders VALUES(16,'Natalie','Peterson','nataliep@terpmail.umd.edu','(443) 195-6622','58659 Clark Hollow Suite 605, Maryland, 81310');
INSERT INTO Orders VALUES(17,'Emma','James','emmaj1995@umd.edu','(805) 390-2829','382 Duncan Stravenue, Georgia, 62999');
INSERT INTO Orders VALUES(18,'Anna','Bryant','anna_bryant@umd.edu','(292) 304-7186','5894 Daniel Turnpike, Texas, 33389');
INSERT INTO Orders VALUES(19,'Avery','Harris','avery.harris@terpmail.umd.edu','218-196-4940','24111 Turner Rapid, Maryland, 71870');
INSERT INTO Orders VALUES(20,'Leah','Johnson','leahj@umd.edu','(202) 433-8472','07919 Burns Dam, Maryland, 23551');
INSERT INTO Orders VALUES(21,'Carter','Rodriguez','carter_r@umd.edu','709-861-9034','004 Christine Union Suite 959, Maryland, 56249');
INSERT INTO Orders VALUES(22,'Eli','Hernandez','eli_h@umd.edu','837-180-5127','4751 Williams Vista Suite 778, Maryland, 27358');
INSERT INTO Orders VALUES(23,'Everly','Roberts','everly.roberts@terpmail.umd.edu','(207) 348-1434','772 Mark Fall Suite 008, Georgia, 40327');
INSERT INTO Orders VALUES(24,'Mohammed','Roberts','mohammed_r@terpmail.umd.edu','(301) 357-3569','88912 Howard Hill Suite 164, Maryland, 13467');
INSERT INTO Orders VALUES(25,'Everly','Roberts','everly.roberts@terpmail.umd.edu','(207) 348-1434','576 Brown Lodge, Georgia, 40327');
INSERT INTO Orders VALUES(26,'Aria','Clark','clark_aria@terpmail.umd.edu','(202) 694-3719','2445 Jared Road, Maryland, 94341');
INSERT INTO Orders VALUES(27,'Leah','Sanders','leah_s@umd.edu','(410) 954-1832','7770 Lopez Plaza Suite 821, Maryland, 90558');
INSERT INTO Orders VALUES(28,'Elizabeth','Russell','elizabethr_1997@terpmail.umd.edu','(443) 318-2986','700 Andrew Park, Maryland, 35913');
INSERT INTO Orders VALUES(29,'Lucy','Torres','lucytorres@umd.edu','686-119-5235','058 Taylor Pines, Maryland, 54780');
INSERT INTO Orders VALUES(30,'Elizabeth','Lopez','lopez_elizabeth_2000@umd.edu','(301) 897-6079','4202 Alyssa Cove, Maryland, 61297');
INSERT INTO Orders VALUES(31,'Nicholas','Gonzales','ngonzales@terpmail.umd.edu','123-707-6660','6289 Jared Park, Maryland, 79450');
INSERT INTO Orders VALUES(32,'Colton','Smith','colton_s@umd.edu','660-205-6659','38047 Kevin Corners Apt. 516, Maryland, 10192');
INSERT INTO Orders VALUES(33,'Ella','Hughes','ella_hughes@umd.edu','(443) 252-9764','0799 Cruz Springs Suite 873, Maryland, 35604');
INSERT INTO Orders VALUES(34,'David','Howard','howarddavid_1993@umd.edu','524-478-2952','154 Jimenez Track, Maryland, 85006');
INSERT INTO Orders VALUES(35,'Natalie','Peterson','nataliep@terpmail.umd.edu','(443) 195-6622','3691 Michael Pines Apt. 378, Maryland, 81310');
INSERT INTO Orders VALUES(36,'James','Allen','allen_james@terpmail.umd.edu','(667) 927-4272','2419 Bell Corner, Maryland, 37498');
INSERT INTO Orders VALUES(37,'Caleb','Phillips','calebp@terpmail.umd.edu','798-205-2584','0253 James Meadow, Illinois, 92750');
INSERT INTO Orders VALUES(38,'Andrew','Hall','andrew_h@umd.edu','(202) 534-6888','4639 Johnson Motorway, Maryland, 79588');
INSERT INTO Orders VALUES(39,'Maverick','Watson','mwatson@terpmail.umd.edu','(443) 843-1153','9559 Monica Throughway, Maryland, 63100');
INSERT INTO Orders VALUES(40,'Lucy','Washington','lucyw@umd.edu','822-513-8102','64819 Simon Crest, Virginia, 40616');
INSERT INTO Orders VALUES(41,'Jaxon','Alexander','jalexander@terpmail.umd.edu','540-899-3802','850 Jessica Rapids, Arizona, 74136');
INSERT INTO Orders VALUES(42,'Mohammed','Roberts','mohammed_r@terpmail.umd.edu','(301) 357-3569','605 Moody Field, Maryland, 13467');
INSERT INTO Orders VALUES(43,'Colton','Bell','colton_bell@umd.edu','(225) 228-6336','021 Davis Flat Apt. 495, Florida, 78281');
INSERT INTO Orders VALUES(44,'Maverick','Watson','mwatson@terpmail.umd.edu','(443) 843-1153','77286 Felicia Forks, Maryland, 63100');
INSERT INTO Orders VALUES(45,'Hudson','Jackson','jackson_hudson@terpmail.umd.edu','(818) 559-8693','384 Young Cape Apt. 372, Utah, 22590');
INSERT INTO Orders VALUES(46,'James','Allen','allen_james@terpmail.umd.edu','(667) 927-4272','43733 Rogers Green, Maryland, 37498');
INSERT INTO Orders VALUES(47,'Colton','Bell','colton_bell@umd.edu','(225) 228-6336','714 Chambers Hollow, Florida, 78281');
INSERT INTO Orders VALUES(48,'Ezra','Lee','ezra.lee@umd.edu','(301) 394-6720','8054 Taylor Springs Suite 138, Maryland, 65528');
INSERT INTO Orders VALUES(49,'Grace','Stewart','gstewart@terpmail.umd.edu','955-405-9867','14038 Soto Crest, Delaware, 64774');
INSERT INTO Orders VALUES(50,'Lucas','Kelly','lucaskelly@umd.edu','503-246-1817','76047 Michael Stream, Maryland, 59062');
INSERT INTO Orders VALUES(51,'Lily','Anderson','lily_a@umd.edu','(410) 238-4617','55523 Desiree Glen, Maryland, 17967');
INSERT INTO Orders VALUES(52,'Mason','Nelson','mason.nelson.2000@umd.edu','820-777-4910','71762 Gardner Keys, Maryland, 88288');
INSERT INTO Orders VALUES(53,'Mohammed','Coleman','mohammed.coleman@umd.edu','387-472-2105','5125 Pham Drive Apt. 179, Maryland, 48886');
INSERT INTO Orders VALUES(54,'David','Adams','davida@umd.edu','925-425-5227','665 Harper Plains, Maryland, 41865');
INSERT INTO Orders VALUES(55,'Mohammed','Coleman','mohammed.coleman@umd.edu','387-472-2105','1200 Jeff Turnpike, Maryland, 48886');
INSERT INTO Orders VALUES(56,'Carter','Rodriguez','crodriguez@terpmail.umd.edu','(163) 923-5463','10351 Katie Grove Apt. 465, North Carolina, 10608');
INSERT INTO Orders VALUES(57,'Sebastian','Wright','sebastianw@terpmail.umd.edu','(202) 647-6918','437 Pacheco Port, Maryland, 88252');
INSERT INTO Orders VALUES(58,'Aurora','Walker','awalker@terpmail.umd.edu','804-517-3576','02843 Ryan Gardens, Texas, 49805');
INSERT INTO Orders VALUES(59,'Owen','Wright','owen_w@terpmail.umd.edu','(667) 652-9276','74738 Michael Spring, Maryland, 62710');
INSERT INTO Orders VALUES(60,'Lucy','Young','lucyy@terpmail.umd.edu','(800) 380-9829','25760 Ashley Street Suite 933, Vermont, 52482');
INSERT INTO Orders VALUES(61,'Jonathan','Lewis','jonathanlewis@umd.edu','(202) 823-5851','75006 David Cliffs, Maryland, 63223');
INSERT INTO Orders VALUES(62,'Ruby','Harris','ruby_harris@umd.edu','672-960-5791','3003 Samuel Highway, Maryland, 39504');
INSERT INTO Orders VALUES(63,'Caleb','Phillips','calebp@terpmail.umd.edu','798-205-2584','302 Byrd Points Apt. 611, Illinois, 92750');
INSERT INTO Orders VALUES(64,'Lucy','Washington','lucyw@umd.edu','822-513-8102','79317 James Ridges, Virginia, 40616');
INSERT INTO Orders VALUES(65,'Jaxon','Alexander','jalexander@terpmail.umd.edu','540-899-3802','707 Yoder Stream Apt. 894, Arizona, 74136');
INSERT INTO Orders VALUES(66,'Eli','King','elik_2003@terpmail.umd.edu','(301) 865-2876','666 Cox Port Suite 048, Maryland, 38667');
INSERT INTO Orders VALUES(67,'Abigail','Thomas','abigail.thomas.1996@terpmail.umd.edu','913-637-8510','14886 William Island, Maryland, 75598');
INSERT INTO Orders VALUES(68,'Alex','Hill','alex_h@terpmail.umd.edu','(410) 771-1215','88542 Jones Falls Suite 249, Maryland, 51255');
INSERT INTO Orders VALUES(69,'Josiah','Robinson','josiahrobinson@umd.edu','(577) 878-6319','20822 William Haven Suite 045, Maine, 29210');
INSERT INTO Orders VALUES(70,'Jaxon','Parker','jaxonp_1990@terpmail.umd.edu','176-415-4324','56617 White Point, Maryland, 90406');
INSERT INTO Orders VALUES(71,'Alex','Hill','alex_h@terpmail.umd.edu','(410) 771-1215','392 Edwards Pines, Maryland, 51255');
INSERT INTO Orders VALUES(72,'Bryson','Edwards','bryson_e@terpmail.umd.edu','337-298-7697','056 Jason Crescent, Maryland, 78316');
INSERT INTO Orders VALUES(73,'Leah','Sanders','leah_s@umd.edu','(410) 954-1832','506 Mckinney Divide Apt. 992, Maryland, 90558');
INSERT INTO Orders VALUES(74,'Lily','Anderson','lily_a@umd.edu','(410) 238-4617','094 Adrian Place Suite 098, Maryland, 17967');
INSERT INTO Orders VALUES(75,'Adrian','Rodriguez','arodriguez@umd.edu','283-374-9938','797 Victoria Vista, Maryland, 12287');
INSERT INTO Orders VALUES(76,'Jillian','Simmons','jillian_s@umd.edu','317-646-7177','431 Huang Green Apt. 848, Maryland, 55670');
INSERT INTO Orders VALUES(77,'David','Howard','howarddavid_1993@umd.edu','524-478-2952','441 Welch Stream, Maryland, 85006');
INSERT INTO Orders VALUES(78,'Isabelle','Murphy','isabellem@terpmail.umd.edu','529-626-3833','69971 Sherry Motorway, Maryland, 22420');
INSERT INTO Orders VALUES(79,'Isabelle','Thompson','isabellet@umd.edu','929-859-1649','121 Lyons Landing Apt. 416, Colorado, 34918');
INSERT INTO Orders VALUES(80,'Colton','Bell','colton_bell@umd.edu','(225) 228-6336','3034 Jeffrey Lights Apt. 230, Florida, 78281');
INSERT INTO Orders VALUES(81,'Theodore','Peterson','tpeterson@terpmail.umd.edu','937-104-4015','6114 Smith Burgs Suite 988, Maryland, 56786');
INSERT INTO Orders VALUES(82,'Brooklyn','Henderson','brooklynh1992@terpmail.umd.edu','(701) 214-9779','66813 Franklin Drives Suite 551, West Virginia, 90444');
INSERT INTO Orders VALUES(83,'Luke','Lewis','luke_l@terpmail.umd.edu','(202) 832-6696','4269 Lambert Shoals, Maryland, 92617');
INSERT INTO Orders VALUES(84,'Emma','Alexander','emma_alexander@terpmail.umd.edu','(552) 298-8473','90182 White Extension, Indiana, 25149');
INSERT INTO Orders VALUES(85,'Lucy','Washington','lucyw@umd.edu','822-513-8102','809 Sandra Vista Suite 665, Virginia, 40616');
INSERT INTO Orders VALUES(86,'Charlie','Rogers','crogers@umd.edu','431-967-7044','6412 Laura Terrace, Maryland, 87594');
INSERT INTO Orders VALUES(87,'Isaac','Powell','isaac_powell_1997@umd.edu','411-127-6210','82312 Judy Tunnel Apt. 266, Maryland, 10300');
INSERT INTO Orders VALUES(88,'Charlie','Rogers','crogers@umd.edu','431-967-7044','64999 Andrews Center Apt. 812, Maryland, 87594');
INSERT INTO Orders VALUES(89,'Aria','Clark','clark_aria@terpmail.umd.edu','(202) 694-3719','93514 Robert Curve, Maryland, 94341');
INSERT INTO Orders VALUES(90,'Ezra','Lopez','ezra.lopez.1992@umd.edu','274-851-5805','88478 Meghan Hills, Maryland, 67358');
INSERT INTO Orders VALUES(91,'Nicholas','Gonzales','ngonzales@terpmail.umd.edu','123-707-6660','2860 Henry Pine Apt. 290, Maryland, 79450');
INSERT INTO Orders VALUES(92,'Bryson','Edwards','bryson_e@terpmail.umd.edu','337-298-7697','56216 Kelley Orchard, Maryland, 78316');
INSERT INTO Orders VALUES(93,'Everly','Roberts','everly.roberts@terpmail.umd.edu','(207) 348-1434','40293 Amy Lakes, Georgia, 40327');
INSERT INTO Orders VALUES(94,'Owen','Wright','owen_w@terpmail.umd.edu','(667) 652-9276','1785 Peter Meadows, Maryland, 62710');
INSERT INTO Orders VALUES(95,'Mohammed','Coleman','mohammed.coleman@umd.edu','387-472-2105','49486 Garcia Inlet Suite 869, Maryland, 48886');
INSERT INTO Orders VALUES(96,'Brooklyn','Henderson','brooklynh1992@terpmail.umd.edu','(701) 214-9779','3488 Gregory Row Suite 100, West Virginia, 90444');
INSERT INTO Orders VALUES(97,'Emma','Rivera','erivera@terpmail.umd.edu','(443) 149-7232','46124 Alexandra Grove Apt. 267, Maryland, 88716');
INSERT INTO Orders VALUES(98,'Ella','Perry','eperry@terpmail.umd.edu','(667) 305-8832','6117 Brennan Mill Suite 455, Maryland, 96207');
INSERT INTO Orders VALUES(99,'Ruby','Johnson','rubyjohnson@umd.edu','751-408-8404','8689 Rebecca Freeway Suite 298, Maryland, 63553');
INSERT INTO Orders VALUES(100,'Lincoln','Lopez','lopez_lincoln@umd.edu','585-880-8038','4618 Mcdaniel Forest Apt. 505, Maryland, 12006');
INSERT INTO Orders VALUES(101,'Lucy','Young','lucyy@terpmail.umd.edu','(800) 380-9829','153 Patrick Track Suite 284, Vermont, 52482');
INSERT INTO Orders VALUES(102,'Elizabeth','Russell','elizabethr_1997@terpmail.umd.edu','(443) 318-2986','5397 Duane Fords, Maryland, 35913');
INSERT INTO Orders VALUES(103,'Emma','Rivera','erivera@terpmail.umd.edu','(443) 149-7232','9641 Jason Ramp Apt. 368, Maryland, 88716');
INSERT INTO Orders VALUES(104,'Ella','Perry','eperry@terpmail.umd.edu','(667) 305-8832','5580 Anna Parkways, Maryland, 96207');
INSERT INTO Orders VALUES(105,'David','Allen','david.allen@terpmail.umd.edu','(410) 553-8482','5414 Rachel Ports, Maryland, 89643');
INSERT INTO Orders VALUES(106,'Jillian','Simmons','jillian_s@umd.edu','317-646-7177','231 Robert Wall, Maryland, 55670');
INSERT INTO Orders VALUES(107,'Claire','Lee','clee@umd.edu','318-316-4616','63923 Corey Brook Apt. 260, Nevada, 53124');
INSERT INTO Orders VALUES(108,'Luke','Martinez','lmartinez@umd.edu','(443) 866-4131','6935 Justin Mission, Maryland, 98001');
INSERT INTO Orders VALUES(109,'Emily','Coleman','coleman_emily@umd.edu','(667) 325-4405','3423 Megan Rapids Suite 691, Maryland, 75081');
INSERT INTO Orders VALUES(110,'Logan','Jenkins','ljenkins_1990@umd.edu','115-200-4484','649 James Junction Suite 711, Maryland, 39679');
INSERT INTO Orders VALUES(111,'Lincoln','Lopez','lopez_lincoln@umd.edu','585-880-8038','2718 Collins Haven, Maryland, 12006');
INSERT INTO Orders VALUES(112,'Lily','Anderson','lily_a@umd.edu','(410) 238-4617','24329 Tran Land Suite 721, Maryland, 17967');
INSERT INTO Orders VALUES(113,'Isaac','Powell','isaac_powell_1997@umd.edu','411-127-6210','2128 Sparks Vista, Maryland, 10300');
INSERT INTO Orders VALUES(114,'Claire','Lee','clee@umd.edu','318-316-4616','64031 Weiss Drive, Nevada, 53124');
INSERT INTO Orders VALUES(115,'Luke','Lewis','luke_l@terpmail.umd.edu','(202) 832-6696','430 Johns Canyon, Maryland, 92617');
INSERT INTO Orders VALUES(116,'Everly','Roberts','everly.roberts@terpmail.umd.edu','(207) 348-1434','61759 Jason Ridges Suite 590, Georgia, 40327');
INSERT INTO Orders VALUES(117,'Oscar','Nelson','oscar_n@umd.edu','(801) 383-1632','665 Bowman Highway Apt. 775, Vermont, 38821');
INSERT INTO Orders VALUES(118,'Lucas','Kelly','lucaskelly@umd.edu','503-246-1817','94440 Simpson Burgs Apt. 031, Maryland, 59062');
INSERT INTO Orders VALUES(119,'Claire','Lee','clee@umd.edu','318-316-4616','0304 Mcconnell Underpass, Nevada, 53124');
INSERT INTO Orders VALUES(120,'Jaxon','Alexander','jalexander@terpmail.umd.edu','540-899-3802','585 Shari Mills, Arizona, 74136');
INSERT INTO Orders VALUES(121,'Charlie','Taylor','charlie_t@terpmail.umd.edu','296-477-1109','2408 Whitney Expressway, Maryland, 23038');
INSERT INTO Orders VALUES(122,'Maverick','Miller','miller_maverick_1993@umd.edu','(301) 212-5635','98752 Patton Key, Maryland, 86426');
INSERT INTO Orders VALUES(123,'David','Allen','david.allen@terpmail.umd.edu','(410) 553-8482','383 Adam Prairie Apt. 647, Maryland, 89643');
INSERT INTO Orders VALUES(124,'Maverick','Watson','mwatson@terpmail.umd.edu','(443) 843-1153','460 Elizabeth Vista, Maryland, 63100');
INSERT INTO Orders VALUES(125,'Jonathan','Lewis','jonathanlewis@umd.edu','(202) 823-5851','94521 Gates Gardens Apt. 591, Maryland, 63223');
INSERT INTO Orders VALUES(126,'Edward','Taylor','taylor_edward@terpmail.umd.edu','466-317-7418','926 Brenda Plains Suite 241, North Dakota, 73171');
INSERT INTO Orders VALUES(127,'Leah','Sanders','leah_s@umd.edu','(410) 954-1832','206 Richard Way Suite 133, Maryland, 90558');
INSERT INTO Orders VALUES(128,'Nicholas','Gonzales','ngonzales@terpmail.umd.edu','123-707-6660','5398 Matthew Track Suite 337, Maryland, 79450');
INSERT INTO Orders VALUES(129,'Aurora','Walker','awalker@terpmail.umd.edu','804-517-3576','38920 Ashley Drive, Texas, 49805');
INSERT INTO Orders VALUES(130,'Caleb','Phillips','calebp@terpmail.umd.edu','798-205-2584','113 Lucero Square Apt. 820, Illinois, 92750');
INSERT INTO Orders VALUES(131,'Emma','James','emmaj1995@umd.edu','(805) 390-2829','773 Michael Plaza, Georgia, 62999');
INSERT INTO Orders VALUES(132,'Emily','Reed','reed_emily@terpmail.umd.edu','(733) 729-4184','4279 Ryan Causeway, New York, 81144');
INSERT INTO Orders VALUES(133,'Brooklyn','Mitchell','mitchell_brooklyn@terpmail.umd.edu','589-755-5406','0916 Rubio Grove, Maryland, 47807');
INSERT INTO Orders VALUES(134,'Logan','Jenkins','ljenkins_1990@umd.edu','115-200-4484','270 Gill Spur, Maryland, 39679');
INSERT INTO Orders VALUES(135,'Sebastian','Wright','sebastianw@terpmail.umd.edu','(202) 647-6918','017 Coleman Crest, Maryland, 88252');
INSERT INTO Orders VALUES(136,'Theodore','Murphy','theodore.murphy.1990@terpmail.umd.edu','669-925-1786','60734 Nancy Views, Maryland, 50063');
INSERT INTO Orders VALUES(137,'Ava','Long','avalong_1995@terpmail.umd.edu','463-496-4337','4967 Julie Inlet, North Carolina, 28086');
INSERT INTO Orders VALUES(138,'Audrey','Ward','audreyward@terpmail.umd.edu','(410) 201-9235','20838 Jill Ville, Maryland, 88028');
INSERT INTO Orders VALUES(139,'Leah','Sanders','leah_s@umd.edu','(410) 954-1832','22127 Burke Turnpike, Maryland, 90558');
INSERT INTO Orders VALUES(140,'Isabelle','Murphy','isabellem@terpmail.umd.edu','529-626-3833','29940 Neal Extensions Suite 363, Maryland, 22420');
INSERT INTO Orders VALUES(141,'Lily','Lewis','lilyl_2004@terpmail.umd.edu','(410) 686-7506','9111 Amanda Lake, Maryland, 66040');
INSERT INTO Orders VALUES(142,'Cameron','Barnes','cameronb@umd.edu','896-533-7598','32081 Patterson Mountain, Maryland, 67342');
INSERT INTO Orders VALUES(143,'Theodore','Murphy','theodore.murphy.1990@terpmail.umd.edu','669-925-1786','3782 Simpson Mountains Suite 971, Maryland, 50063');
INSERT INTO Orders VALUES(144,'Elizabeth','Russell','elizabethr_1997@terpmail.umd.edu','(443) 318-2986','69986 Shawn Parkways, Maryland, 35913');
INSERT INTO Orders VALUES(145,'Maverick','Cook','maverick.cook@umd.edu','788-498-7370','0695 Bryan Turnpike, Maryland, 36608');
INSERT INTO Orders VALUES(146,'Theodore','Martinez','theodoremartinez@terpmail.umd.edu','(301) 959-6348','901 Diana Mews Apt. 455, Maryland, 95704');
INSERT INTO Orders VALUES(147,'Emily','Reed','reed_emily@terpmail.umd.edu','(733) 729-4184','3034 Flores Spurs Suite 651, New York, 81144');
INSERT INTO Orders VALUES(148,'Daniel','Murphy','daniel_m@terpmail.umd.edu','513-599-5235','9437 Franklin Wells Apt. 636, New York, 57507');
INSERT INTO Orders VALUES(149,'Claire','Lee','clee@umd.edu','318-316-4616','2658 Rhodes Field Apt. 747, Nevada, 53124');
INSERT INTO Orders VALUES(150,'Lucy','Young','lucyy@terpmail.umd.edu','(800) 380-9829','3704 Green Garden Suite 977, Vermont, 52482');
INSERT INTO Orders VALUES(151,'Aurora','Walker','awalker@terpmail.umd.edu','804-517-3576','3476 Carrie Station Apt. 909, Texas, 49805');
INSERT INTO Orders VALUES(152,'Olivia','Sanchez','olivia.sanchez@terpmail.umd.edu','(410) 133-9543','51472 Gonzales Center, Maryland, 37642');
INSERT INTO Orders VALUES(153,'Olivia','Perez','perez_olivia@umd.edu','(202) 345-1111','44831 Lauren Route, Maryland, 71974');
INSERT INTO Orders VALUES(154,'Jack','Watson','jack_w@umd.edu','(443) 209-8156','81190 Smith Brook Apt. 796, Maryland, 67102');
INSERT INTO Orders VALUES(155,'Oscar','Edwards','oscar_edwards@terpmail.umd.edu','(667) 811-3014','3087 Perez Villages, Maryland, 78980');
INSERT INTO Orders VALUES(156,'Nicholas','Gonzales','ngonzales@terpmail.umd.edu','123-707-6660','4215 Johnson Island, Maryland, 79450');
INSERT INTO Orders VALUES(157,'Cameron','Cox','cox_cameron_2003@umd.edu','(410) 544-3318','4581 Colon Street Suite 981, Maryland, 37616');
INSERT INTO Orders VALUES(158,'David','Howard','howarddavid_1993@umd.edu','524-478-2952','27125 Susan Street Apt. 374, Maryland, 85006');
INSERT INTO Orders VALUES(159,'James','Bell','james_bell@terpmail.umd.edu','349-289-2020','6058 Rachel Squares Suite 266, Maryland, 74127');
INSERT INTO Orders VALUES(160,'Aurora','Rivera','aurora.rivera@umd.edu','159-686-5493','1458 Reyes Radial Apt. 127, California, 96110');
INSERT INTO Orders VALUES(161,'Nicholas','Howard','nicholas_h@terpmail.umd.edu','934-644-6288','646 William Pike, Maryland, 96203');
INSERT INTO Orders VALUES(162,'Ruby','Harris','ruby_harris@umd.edu','672-960-5791','334 Tammy Island, Maryland, 39504');
INSERT INTO Orders VALUES(163,'Emma','Rivera','erivera@terpmail.umd.edu','(443) 149-7232','350 Drew Branch Apt. 622, Maryland, 88716');
INSERT INTO Orders VALUES(164,'Eli','Hernandez','eli_h@umd.edu','837-180-5127','2770 Warner Underpass Suite 459, Maryland, 27358');
INSERT INTO Orders VALUES(165,'Mason','Nelson','mason.nelson.2000@umd.edu','820-777-4910','844 Garcia Vista, Maryland, 88288');
INSERT INTO Orders VALUES(166,'Ella','Hughes','ella_hughes@umd.edu','(443) 252-9764','655 Amy Lane, Maryland, 35604');
INSERT INTO Orders VALUES(167,'Cameron','Reed','cameronreed@umd.edu','548-905-7883','647 Smith Loop, Maryland, 29430');
INSERT INTO Orders VALUES(168,'Maverick','Rivera','rivera_maverick@terpmail.umd.edu','(301) 109-4980','9587 Jennifer Forest Apt. 699, Maryland, 21770');
INSERT INTO Orders VALUES(169,'Sebastian','Edwards','sebastianedwards@umd.edu','(153) 765-8095','75445 Daniel View Apt. 032, Missouri, 75691');
INSERT INTO Orders VALUES(170,'Luke','Martinez','lmartinez@umd.edu','(443) 866-4131','756 Smith River, Maryland, 98001');
INSERT INTO Orders VALUES(171,'Ava','Long','avalong_1995@terpmail.umd.edu','463-496-4337','453 Anthony Meadow, North Carolina, 28086');
INSERT INTO Orders VALUES(172,'Abigail','Simmons','abigail_simmons@umd.edu','(410) 699-4670','6805 Justin Unions, Maryland, 10421');
INSERT INTO Orders VALUES(173,'Emily','Thomas','emily.thomas@umd.edu','(667) 939-4902','52355 Smith Squares, Maryland, 71471');
INSERT INTO Orders VALUES(174,'John','Phillips','john_p@umd.edu','(410) 644-8528','155 Matthew Camp, Maryland, 40355');
INSERT INTO Orders VALUES(175,'Emily','Coleman','coleman_emily@umd.edu','(667) 325-4405','7486 Dawson Mall, Maryland, 75081');
INSERT INTO Orders VALUES(176,'Anna','Bryant','anna_bryant@umd.edu','(292) 304-7186','7707 Brewer Inlet, Texas, 33389');
INSERT INTO Orders VALUES(177,'Maverick','Miller','miller_maverick_1993@umd.edu','(301) 212-5635','148 Kelsey Fall, Maryland, 86426');
INSERT INTO Orders VALUES(178,'Abigail','Simmons','abigail_simmons@umd.edu','(410) 699-4670','0252 Carrie Burg Apt. 958, Maryland, 10421');
INSERT INTO Orders VALUES(179,'Olivia','Perez','perez_olivia@umd.edu','(202) 345-1111','4942 Parker Highway, Maryland, 71974');
INSERT INTO Orders VALUES(180,'Christian','Cook','christianc@terpmail.umd.edu','197-250-4735','127 Wade Forks, New York, 87032');
INSERT INTO Orders VALUES(181,'Layla','Bailey','layla_b@terpmail.umd.edu','272-668-3914','414 Hunter Islands, Maryland, 56010');
INSERT INTO Orders VALUES(182,'Oscar','Edwards','oscar_edwards@terpmail.umd.edu','(667) 811-3014','03068 Long Hills, Maryland, 78980');
INSERT INTO Orders VALUES(183,'Christian','Jenkins','christian_jenkins_2003@umd.edu','(443) 710-7316','12145 Logan Lock Apt. 357, Maryland, 49276');
INSERT INTO Orders VALUES(184,'Ruby','Johnson','rubyjohnson@umd.edu','751-408-8404','17565 Rachel Spring Apt. 343, Maryland, 63553');
INSERT INTO Orders VALUES(185,'Avery','Harris','avery.harris@terpmail.umd.edu','218-196-4940','9423 Tyler Hollow Suite 853, Maryland, 71870');
INSERT INTO Orders VALUES(186,'John','Phillips','john_p@umd.edu','(410) 644-8528','5999 Valencia Course, Maryland, 40355');
INSERT INTO Orders VALUES(187,'David','Howard','howarddavid_1993@umd.edu','524-478-2952','135 Smith Loop Suite 908, Maryland, 85006');
INSERT INTO Orders VALUES(188,'Lucy','Young','lucyy@terpmail.umd.edu','(800) 380-9829','2501 Smith Ways Suite 092, Vermont, 52482');
INSERT INTO Orders VALUES(189,'Maverick','Rivera','rivera_maverick@terpmail.umd.edu','(301) 109-4980','6230 Chambers Flat Apt. 359, Maryland, 21770');
INSERT INTO Orders VALUES(190,'Adrian','Rodriguez','arodriguez@umd.edu','283-374-9938','65339 Frances Centers Apt. 855, Maryland, 12287');
INSERT INTO Orders VALUES(191,'Mohammed','Coleman','mohammed.coleman@umd.edu','387-472-2105','3108 Lori Fort Suite 944, Maryland, 48886');
INSERT INTO Orders VALUES(192,'Audrey','Ward','audreyward@terpmail.umd.edu','(410) 201-9235','64692 Stewart Ridge Suite 322, Maryland, 88028');
INSERT INTO Orders VALUES(193,'Aurora','Walker','awalker@terpmail.umd.edu','804-517-3576','78196 Barr Pine, Texas, 49805');
INSERT INTO Orders VALUES(194,'Edward','Taylor','taylor_edward@terpmail.umd.edu','466-317-7418','8122 Ross Cliff Apt. 157, North Dakota, 73171');
INSERT INTO Orders VALUES(195,'Abigail','Simmons','abigail_simmons@umd.edu','(410) 699-4670','9112 Lauren Ports Suite 733, Maryland, 10421');
INSERT INTO Orders VALUES(196,'David','Baker','baker_david@terpmail.umd.edu','540-374-4400','496 Christopher Walk, Colorado, 36528');
INSERT INTO Orders VALUES(197,'Brooklyn','Mitchell','mitchell_brooklyn@terpmail.umd.edu','589-755-5406','247 Rodriguez Springs Apt. 508, Maryland, 47807');
INSERT INTO Orders VALUES(198,'Jonathan','Ramirez','jonathanramirez_1998@umd.edu','(443) 247-1245','2309 Kathy Meadow, Maryland, 74208');
INSERT INTO Orders VALUES(199,'Everly','Roberts','everly.roberts@terpmail.umd.edu','(207) 348-1434','272 Jerry Rest Suite 298, Georgia, 40327');
INSERT INTO Orders VALUES(200,'Isaac','Powell','isaac_powell_1997@umd.edu','411-127-6210','258 Morales Forest Suite 533, Maryland, 10300');
INSERT INTO Orders VALUES(201,'Grace','Flores','flores_grace@umd.edu','910-100-2499','8476 Callahan Canyon Suite 848, Utah, 52608');
INSERT INTO Orders VALUES(202,'Alex','Hill','alex_h@terpmail.umd.edu','(410) 771-1215','694 David Mission Apt. 269, Maryland, 51255');
INSERT INTO Orders VALUES(203,'Hazel','Gonzalez','hazelg@terpmail.umd.edu','922-463-8733','9869 Jones Mall, Maryland, 33909');
INSERT INTO Orders VALUES(204,'James','Bell','james_bell@terpmail.umd.edu','349-289-2020','4966 Jane Shore Suite 266, Maryland, 74127');
INSERT INTO Orders VALUES(205,'Nicholas','Gonzales','ngonzales@terpmail.umd.edu','123-707-6660','2752 Brian Lake, Maryland, 79450');
INSERT INTO Orders VALUES(206,'Lily','Anderson','lily_a@umd.edu','(410) 238-4617','967 Dodson Lane, Maryland, 17967');
INSERT INTO Orders VALUES(207,'Isaac','Powell','isaac_powell_1997@umd.edu','411-127-6210','19270 Olivia Meadows, Maryland, 10300');
INSERT INTO Orders VALUES(208,'Adam','Lewis','lewis_adam_1998@umd.edu','743-526-5863','3793 Huffman Loop Apt. 194, Maryland, 56050');
INSERT INTO Orders VALUES(209,'Josiah','Robinson','josiahrobinson@umd.edu','(577) 878-6319','0069 Chandler Falls, Maine, 29210');
INSERT INTO Orders VALUES(210,'Sebastian','Edwards','sebastianedwards@umd.edu','(153) 765-8095','341 Larsen Route, Missouri, 75691');
INSERT INTO Orders VALUES(211,'Anna','Lewis','annal@umd.edu','599-182-5643','8205 Joyce Stream Apt. 755, Maryland, 80539');
INSERT INTO Orders VALUES(212,'David','Adams','davida@umd.edu','925-425-5227','956 Chavez Ramp, Maryland, 41865');
INSERT INTO Orders VALUES(213,'Nicholas','Scott','nicholas_s@umd.edu','233-740-7897','62847 Osborne Harbor, Maryland, 54660');
INSERT INTO Orders VALUES(214,'Cameron','Reed','cameronreed@umd.edu','548-905-7883','031 Snyder Manor, Maryland, 29430');
INSERT INTO Orders VALUES(215,'Charles','Murphy','murphy_charles@terpmail.umd.edu','384-423-4149','1236 David Extension Apt. 771, Maryland, 22444');
INSERT INTO Orders VALUES(216,'Gabriel','Jenkins','gjenkins_1994@umd.edu','(667) 211-2650','621 Hall Tunnel Apt. 882, Maryland, 65661');
INSERT INTO Orders VALUES(217,'Avery','Harris','avery.harris@terpmail.umd.edu','218-196-4940','4325 Orozco Estates, Maryland, 71870');
INSERT INTO Orders VALUES(218,'Eli','Hernandez','eli_h@umd.edu','837-180-5127','506 Michael Key, Maryland, 27358');
INSERT INTO Orders VALUES(219,'Christian','Jenkins','christian_jenkins_2003@umd.edu','(443) 710-7316','62606 Snow Drive Apt. 436, Maryland, 49276');
INSERT INTO Orders VALUES(220,'Charles','Murphy','murphy_charles@terpmail.umd.edu','384-423-4149','0272 Key Stravenue Apt. 804, Maryland, 22444');
INSERT INTO Orders VALUES(221,'Elizabeth','Russell','elizabethr_1997@terpmail.umd.edu','(443) 318-2986','3867 Tammy Locks, Maryland, 35913');
INSERT INTO Orders VALUES(222,'Jonathan','Ramirez','jonathanramirez_1998@umd.edu','(443) 247-1245','404 Alexandra Village Apt. 799, Maryland, 74208');
INSERT INTO Orders VALUES(223,'Elizabeth','Lopez','lopez_elizabeth_2000@umd.edu','(301) 897-6079','700 James Plains Apt. 580, Maryland, 61297');
INSERT INTO Orders VALUES(224,'Cameron','Reed','cameronreed@umd.edu','548-905-7883','01900 Welch Neck, Maryland, 29430');
INSERT INTO Orders VALUES(225,'Jonathan','Ramirez','jonathanramirez_1998@umd.edu','(443) 247-1245','1573 Johnson Locks, Maryland, 74208');
INSERT INTO Orders VALUES(226,'Leah','Johnson','leahj@umd.edu','(202) 433-8472','407 Timothy Forest, Maryland, 23551');
INSERT INTO Orders VALUES(227,'Cameron','Barnes','cameronb@umd.edu','896-533-7598','31882 Carlos Stream Apt. 454, Maryland, 67342');
INSERT INTO Orders VALUES(228,'Aurora','Walker','awalker@terpmail.umd.edu','804-517-3576','40837 Darrell Divide Apt. 490, Texas, 49805');
INSERT INTO Orders VALUES(229,'Natalie','Peterson','nataliep@terpmail.umd.edu','(443) 195-6622','671 Tiffany Expressway, Maryland, 81310');
INSERT INTO Orders VALUES(230,'Nicholas','Howard','nicholas_h@terpmail.umd.edu','934-644-6288','5363 Jenkins Lodge Suite 245, Maryland, 96203');
INSERT INTO Orders VALUES(231,'Daniel','Murphy','daniel_m@terpmail.umd.edu','513-599-5235','10811 Wilson Mills Apt. 331, New York, 57507');
INSERT INTO Orders VALUES(232,'Theodore','Murphy','theodore.murphy.1990@terpmail.umd.edu','669-925-1786','41785 Deanna Extension, Maryland, 50063');
INSERT INTO Orders VALUES(233,'Nicholas','Scott','nicholas_s@umd.edu','233-740-7897','675 Mike Pike, Maryland, 54660');
INSERT INTO Orders VALUES(234,'Nicholas','Scott','nicholas_s@umd.edu','233-740-7897','6655 Tracy Heights Suite 068, Maryland, 54660');
INSERT INTO Orders VALUES(235,'Alex','Hill','alex_h@terpmail.umd.edu','(410) 771-1215','34876 Rebecca Land Apt. 463, Maryland, 51255');
INSERT INTO Orders VALUES(236,'Hazel','Gonzalez','hazelg@terpmail.umd.edu','922-463-8733','900 Matthew Squares, Maryland, 33909');
INSERT INTO Orders VALUES(237,'Layla','Cox','cox.layla.1995@umd.edu','(304) 678-1729','312 Huff Ranch Suite 017, Colorado, 11679');
INSERT INTO Orders VALUES(238,'Aria','Clark','clark_aria@terpmail.umd.edu','(202) 694-3719','1738 Paul Court Apt. 220, Maryland, 94341');
INSERT INTO Orders VALUES(239,'Cameron','Reed','cameronreed@umd.edu','548-905-7883','08248 Stephanie Via Suite 020, Maryland, 29430');
INSERT INTO Orders VALUES(240,'Isaac','Powell','isaac_powell_1997@umd.edu','411-127-6210','867 Deborah Unions Apt. 276, Maryland, 10300');
INSERT INTO Orders VALUES(241,'Avery','Harris','avery.harris@terpmail.umd.edu','218-196-4940','735 Robinson Parkways Apt. 377, Maryland, 71870');
INSERT INTO Orders VALUES(242,'Harper','Murphy','hmurphy@umd.edu','296-432-1436','23351 Dennis Haven Suite 865, Maryland, 26576');
INSERT INTO Orders VALUES(243,'Leah','Johnson','leahj@umd.edu','(202) 433-8472','3490 English Manors Suite 564, Maryland, 23551');
COMMIT;
