# 날짜 : 2022/08/24
# 이름 : 김훈
# 내용 : 제4장 SQL 고급

# 실습 4-1

create table `Member` (
`uid`	varchar(10) primary key,
`name`	varchar(10) not null,
`hp`	char(13) unique not null,
`pos`	varchar(10) not null,
`dep`	tinyint,
`rdate`	datetime not null);

create table `Department` (
`depNo`	tinyint primary key,
`name`	varchar(10) not null,
`tel`	char(12) not null
);

create table `Sales` (
`seq`	int auto_increment primary key,
`uid`	varchar(10) not null,
`year`	year not null,
`month`	tinyint not null,
`sale`	int not null
);

# 실습 4-2
insert into `Member` values ('a101', '박혁거세', '010-1234-1001', '부장', 101, now());
insert into `Member` values ('a102', '김유신', '010-1234-1002', '차장', 101, now());
insert into `Member` values ('a103', '김춘추', '010-1234-1003', '사원', 101, now());
insert into `Member` values ('a104', '장보고', '010-1234-1004', '대리', 102, now());
insert into `Member` values ('a105', '강감찬', '010-1234-1005', '과장', 102, now());
insert into `Member` values ('a106', '이성계', '010-1234-1006', '차장', 103, now());
insert into `Member` values ('a107', '정철', '010-1234-1007', '차장', 103, now());
insert into `Member` values ('a108', '이순신', '010-1234-1008', '부장', 104, now());
insert into `Member` values ('a109', '허균', '010-1234-1009', '부장', 104, now());
insert into `Member` values ('a110', '정약용', '010-1234-1010', '사원', 105, now());
insert into `Member` values ('a111', '박지원', '010-1234-1011', '사월', 105, now());

insert into `Department` values ('101', '영업1부', '051-512-1001');
insert into `Department` values ('102', '영업2부', '051-512-1002');
insert into `Department` values ('103', '영업3부', '051-512-1003');
insert into `Department` values ('104', '영업4부', '051-512-1004');
insert into `Department` values ('105', '영업5부', '051-512-1005');
insert into `Department` values ('106', '영업지원', '051-512-1006');
insert into `Department` values ('107', '인사부', '051-512-1007');

insert into `Sales` values ('1', 'a101', '2018', '1', 98100);
insert into `Sales` values ('2', 'a102', '2018', '1', 136000);
insert into `Sales` values ('3', 'a103', '2018', '1', 80100);
insert into `Sales` values ('4', 'a104', '2018', '1', 78000);
insert into `Sales` values ('5', 'a105', '2018', '1', 93000);
insert into `Sales` values ('6', 'a101', '2018', '2', 23500);
insert into `Sales` values ('7', 'a102', '2018', '2', 126000);
insert into `Sales` values ('8', 'a103', '2018', '2', 18500);
insert into `Sales` values ('9', 'a105', '2018', '2', 19000);
insert into `Sales` values ('10', 'a106', '2018', '1', 53000);
insert into `Sales` values ('11', 'a101', '2019', '1', 24000);
insert into `Sales` values ('12', 'a102', '2019', '1', 109000);
insert into `Sales` values ('13', 'a103', '2019', '1', 101000);
insert into `Sales` values ('14', 'a104', '2019', '1', 53500);
insert into `Sales` values ('15', 'a107', '2019', '1', 24000);
insert into `Sales` values ('16', 'a102', '2019', '2', 160000);
insert into `Sales` values ('17', 'a103', '2019', '2', 101000);
insert into `Sales` values ('18', 'a104', '2019', '2', 43000);
insert into `Sales` values ('19', 'a105', '2019', '2', 24000);
insert into `Sales` values ('20', 'a106', '2019', '2', 109000);
insert into `Sales` values ('21', 'a102', '2020', '1', 201000);
insert into `Sales` values ('22', 'a104', '2020', '1', 63000);
insert into `Sales` values ('23', 'a105', '2020', '1', 74000);
insert into `Sales` values ('24', 'a106', '2020', '1', 122000);
insert into `Sales` values ('25', 'a107', '2020', '1', 111000);
insert into `Sales` values ('26', 'a102', '2020', '2', 120000);
insert into `Sales` values ('27', 'a103', '2020', '2', 93000);
insert into `Sales` values ('28', 'a104', '2020', '2', 84000);
insert into `Sales` values ('29', 'a105', '2020', '2', 180000);
insert into `Sales` values ('30', 'a108', '2020', '2', 76000);

# 실습 4-3
select * from `Member` where `name`='김유신';
select * from `Member` where `pos`='차장' and dep=101;
select * from `Member` where `pos`='차장' or dep=101;
select * from `Member` where `name` !='김춘추';
select * from `Member` where `name` <> '김춘추';
select * from `Member` where `pos`='사원' or `pos`='대리';
select * from `Member` where `pos` IN('사원', '대리');
select * from `Member` where `dep` IN(101, 102, 103);
select * from `Member` where `name` like '%신';
select * from `Member` where `name` like '김%';
select * from `Member` where `name` like '김__';
select * from `Member` where `name` like '_성_';
select * from `Member` where `name` like '정_';
select * from `Sales` where `sale` > 50000;
select * from `Sales` where `sale` >= 50000 and `sale` < 100000 and `month`=1;
select * from `Sales` where `sale` between 50000 and 100000;
select * from `Sales` where `sale` not between 50000 and 100000;
select * from `Sales` where `year` IN(2020);
select * from `Sales` where `month` IN(1, 2);

# 실습 4-4
select * from `Sales` order by `sale`;
select * from `Sales` order by `sale` asc;
select * from `Sales` order by `sale` desc;
select * from `Member` order by `name`;
select * from `Member` order by `name` desc;
select * from `Member` order by `name` asc;
select * from `Sales` where `sale` > 50000 order by `sale`desc;
select * from `Sales` where `sale` > 50000 order by `year`, `month`, `sale` desc;

# 실습 4-5
select * from `Sales` limit 3;
select * from `Sales` limit 0,3;
select * from `Sales` limit 1,2;
select * from `Sales` limit 5,3;
select * from `Sales` order by `sale` desc limit 3, 5;
select * from `Sales` where `sale` < 50000 order by `sale` desc limit 3;
select * from `Sales` where `sale` > 50000 order by `year` desc, `month`, `sale` desc limit 5;

# 실습 4-6

# 실습 4-7

# 실습 4-8

# 실습 4-9

# 실습 4-10

# 실습 4-11

# 실습 4-12

# 실습 4-13

# 실습 4-14

# 실습 4-15

# 실습 4-16

# 실습 4-17
