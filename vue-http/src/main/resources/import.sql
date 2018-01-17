# noinspection SqlNoDataSourceInspectionForFile
INSERT INTO USER (ID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ENABLED, LASTPASSWORDRESETDATE) VALUES (1, 'admin', '$2a$10$rj9Hq.12GVArqiOJbOZNpuFq5IupVh2RrOGwYgAcMUbz/jNvS7gqu', 'admin', 'admin', 'admin@admin.com', 1, PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO USER (ID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ENABLED, LASTPASSWORDRESETDATE) VALUES (2, 'user', '$2a$10$rj9Hq.12GVArqiOJbOZNpuFq5IupVh2RrOGwYgAcMUbz/jNvS7gqu', 'user', 'user', 'enabled@user.com', 1, PARSEDATETIME('01-01-2016','dd-MM-yyyy'));
INSERT INTO USER (ID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ENABLED, LASTPASSWORDRESETDATE) VALUES (3, 'disabled', '$2a$10$rj9Hq.12GVArqiOJbOZNpuFq5IupVh2RrOGwYgAcMUbz/jNvS7gqu', 'user', 'user', 'disabled@user.com', 0, PARSEDATETIME('01-01-2016','dd-MM-yyyy'));

INSERT INTO AUTHORITY (ID, NAME) VALUES (1, 'ROLE_USER');
INSERT INTO AUTHORITY (ID, NAME) VALUES (2, 'ROLE_ADMIN');

INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_ID) VALUES (1, 1);
INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_ID) VALUES (1, 2);
INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_ID) VALUES (2, 1);
INSERT INTO USER_AUTHORITY (USER_ID, AUTHORITY_ID) VALUES (3, 1);


INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (1, '标题1','内容1',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (2, '标题2','内容2',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (3, '标题3','内容3',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (4, '标题4','内容4',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (5, '标题5','内容5',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (6, '标题6','内容6',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (7, '标题7','内容7',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (8, '标题8','内容8',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (9, '标题9','内容9',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (10, '标题10','内容10',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (11, '标题11','内容11',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (12, '标题12','内容12',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (13, '标题13','内容13',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (14, '标题14','内容14',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (15, '标题15','内容15',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (16, '标题16','内容16',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (17, '标题17','内容17',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (18, '标题18','内容18',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (19, '标题19','内容19',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (20, '标题20','内容20',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (21, '标题21','内容21',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (22, '标题22','内容22',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (23, '标题23','内容23',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (24, '标题24','内容24',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (25, '标题25','内容25',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (26, '标题26','内容26',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (27, '标题27','内容27',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (28, '标题28','内容28',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (29, '标题29','内容29',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (30, '标题30','内容30',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (31, '标题31','内容31',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (32, '标题32','内容32',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (33, '标题33','内容33',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (34, '标题34','内容34',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (35, '标题35','内容35',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (36, '标题36','内容36',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (37, '标题37','内容37',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (38, '标题38','内容38',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (39, '标题39','内容39',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (40, '标题40','内容40',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (41, '标题41','内容41',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (42, '标题42','内容42',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (43, '标题43','内容43',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (44, '标题44','内容44',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (45, '标题45','内容45',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (46, '标题46','内容46',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (47, '标题47','内容47',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (48, '标题48','内容48',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (49, '标题49','内容49',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (50, '标题50','内容50',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (51, '标题51','内容51',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (52, '标题52','内容52',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (53, '标题53','内容53',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (54, '标题54','内容54',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (55, '标题55','内容55',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (56, '标题56','内容56',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (57, '标题57','内容57',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (58, '标题58','内容58',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (59, '标题59','内容59',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (60, '标题60','内容60',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (61, '标题61','内容61',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (62, '标题62','内容62',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (63, '标题63','内容63',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (64, '标题64','内容64',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (65, '标题65','内容65',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (66, '标题66','内容66',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (67, '标题67','内容67',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (68, '标题68','内容68',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (69, '标题69','内容69',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (70, '标题70','内容70',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (71, '标题71','内容71',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (72, '标题72','内容72',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (73, '标题73','内容73',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (74, '标题74','内容74',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (75, '标题75','内容75',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (76, '标题76','内容76',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (77, '标题77','内容77',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (78, '标题78','内容78',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (79, '标题79','内容79',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (80, '标题80','内容80',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (81, '标题81','内容81',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (82, '标题82','内容82',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (83, '标题83','内容83',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (84, '标题84','内容84',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (85, '标题85','内容85',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (86, '标题86','内容86',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (87, '标题87','内容87',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (88, '标题88','内容88',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (89, '标题89','内容89',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (90, '标题90','内容90',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (91, '标题91','内容91',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (92, '标题92','内容92',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (93, '标题93','内容93',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (94, '标题94','内容94',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (95, '标题95','内容95',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (96, '标题96','内容96',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (97, '标题97','内容97',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (98, '标题98','内容98',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (99, '标题99','内容99',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (100, '标题100','内容100',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));
INSERT INTO ARTICLE (ID, TITLE,CONTENT,CREATE_DATE) VALUES (101, '标题101','内容101',PARSEDATETIME('01-01-2016', 'dd-MM-yyyy'));