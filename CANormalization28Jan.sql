--NORMALIZATION Example
--Normalization is the process of minimizing redundancy from a relation or set of relations
--Normalization rules are divided into the following normal forms:

/*1. First Normal Form
2. Second Normal Form
3. Third Normal Form
4. BCNF
5. Fourth Normal Form*/
--PlayerName, PlayerState, PlayerNumber, PlayerTeam, TeamCoach, GameAgainst, GameDate, PlayerRuns
--Creating Table For the Explanation


--1NF = Rules = 1. No Multivalued attribute
create table Game1
(
	PlayerName varchar(20),
	PlayerState varchar(20),
	PlayerNumber int,
	PlayerTeam varchar(20),
	TeamCoach varchar(20),
	GameAgainst varchar(20),
	GameDate varchar(20),
	PlayerRuns int
);

select * from Game1

insert into Game1 values('Sachin Tendulakar','Maharashtra',11,'India','Greg Chappel','Pakistan','12/03/2003',95)
insert into Game1 values('Sachin Tendulakar','Maharashtra',11,'India','Greg Chappel','Pakistan','25/03/2003',22)
insert into Game1 values('Sachin Tendulakar','Maharashtra',11,'India','Greg Chappel','England','29/03/2003',88)
insert into Game1 values('adam Gilchrist','Wester Australia',34,'Australia','John Buchanan','S.Africa','10/03/2003',42)
insert into Game1 values('adam Gilchrist','Wester Australia',34,'Australia','John Buchanan','S.Africa','11/03/2003',61)
insert into Game1 values('adam Gilchrist','Wester Australia',34,'Australia','John Buchanan','New Zealand','12/03/2003',62)

--2NF = Rules = 1. Table must be in 1NF
           -- = 2. No Partial Dependency
--Here we can split the table into two tables
--Removing Partial Dependency

create table Game2
(
	PlayerName varchar(20),
	PlayerState varchar(20),
	PlayerNumber int,
	PlayerTeam varchar(20),
	TeamCoach varchar(20),
	GameAgainst varchar(20),
);

Select * from Game2
insert into Game2 values('Sachin Tendulakar','Maharashtra',11,'India','Greg Chappel','Pakistan');
insert into Game2 values('Sachin Tendulakar','Maharashtra',11,'India','Greg Chappel','England');
insert into Game2 values('adam Gilchrist','Wester Australia',34,'Australia','John Buchanan','S.Africa');
insert into Game2 values('adam Gilchrist','Wester Australia',34,'Australia','John Buchanan','New Zealand');

create table Game3(
GameDate varchar(20),
	PlayerRuns int);

insert into Game3 values('12/03/2003',95)
insert into Game3 values('25/03/2003',22)
insert into Game3 values('29/03/2003',88)
insert into Game3 values('10/03/2003',42)
insert into Game3 values('11/03/2003',61)
insert into Game3 values('12/03/2003',62)

select * from Game3


--3NF = Rules = 1.Table must be in 2NF
           -- = 2.No Transitive Dependency
--Removing Transtive Dependency

create table Game4
(
	PlayerName varchar(20),
	PlayerState varchar(20),
	RunRate int,
	PlayerNumber int,
	PlayerTeam varchar(20),
	DayOfMatch varchar(20),
	TeamCoach varchar(20),
	GameAgainst varchar(20),
);


insert into Game4 values('Sachin Tendulakar','Maharashtra',100,11,'India','Sunday','Greg Chappel','Pakistan');
insert into Game4 values('Sachin Tendulakar','Maharashtra',156,11,'India','Tuesday','Greg Chappel','England');
insert into Game4 values('adam Gilchrist','Wester Australia',132,34,'Australia','Friday','John Buchanan','S.Africa');
insert into Game4 values('adam Gilchrist','Wester Australia',76,34,'Australia','Saturday','John Buchanan','New Zealand');

select * from Game4

--BCNF = Boyce Codd Normal Form
