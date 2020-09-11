--创建数据仓库
--CREATE DATABASE [17bang];

--删除数据仓库
--DROP DATABASE [17bang];

--修改数据库[17bang]
--alter database [17bang]
--设置具有立即回滚的single_user
--set single_user with rollback immediate

-- 将数据库备份到D盘17bang.bak
--BACKUP DATABASE [17bang] TO DISK = 'D:\迅雷下载\数据库备份' 
-- 根据D盘17bang.bak恢复数据库
--RESTORE DATABASE [17bang] FROM DISK = 'D:\迅雷下载\数据库备份' 

--创建表
--CREATE TABLE [dbo].[student]
--(
--	[Id] INT NOT NULL PRIMARY KEY, 
--    [name] NCHAR(10) NULL, 
--    [age] NCHAR(10) NULL, 
--    [lsfemale] NCHAR(10) NULL 
--)

--运算符 keyword作业27-36
--create table [keyword]
--(
--  [id] int not null primary key,
--  [name] NCHAR(10) NULL,
--  [used] NCHAR(10) NULL,
--)
--select [name],used from keyword
--where used  between 11 and 49
--update keyword set used=1 where used<=0 or used is null or used>100
--delete keyword where used%2=1

--约束作业39-50
--alter table used
--add id int primary key ([id])
--alter table used
--add constraint uq_name unique (name)

--alter table problem
--alter column needremotehelp bit not null
--alter table problem
--alter table needremotehelp bit null

--alter table problem
--add constraint ck_rewad check (reward>=10)

--ALTER TABLE Student ADD Score DECIMAL(3,1);

--运算符作业55-73
--create table [dbo].[problem]
--(
--[id] int not null primary key,
--[title] nvarchar(500) null,
--[content] text null,
--[NeedRemoteHelp] bit null,
--[Reward]int null,
--[PublishDateTime]datetime null,
--)
--update problem set title=N'【推荐】'+title
-- where Reward >10 

-- update problem set title+=N'【加急】'+title
-- where PublishDateTime >2019/10/10

-- delete problem where title like N'%【%】%'

-- select *from problem
-- where title not like N'_____%数据库%' and title like N'%#%%' exists '#'


--修改表结构
--alter table problem
--alter column [title] nvarchar(100) null

--查询表单
--select *from problem
--where查询
--select * from problem 
--where id<5

--TRUNCATE TABLE problem
--select * from student
--强行删除数据库
--use master;
--drop database[17bang];

--创建数据库中使用数据库
--create database [17bang];
--go
--use[17bang];
--create table teacher
--(
--id tnt
--);

--增加列
--ALTER TABLE Student ADD Score DECIMAL(3,1);

--删除列
--ALTER TABLE Student DROP COLUMN Score;

--select *from  student --查看表单数据

--修改列
--ALTER TABLE Student
--ALTER COLUMN SCORE FLOAT NULL;

--插入列 INSERT（插入）
-- Student表现有两列：Name 和 age
--INSERT Student([Name], Age) VALUES(N'陈元',23);

--查找列SELECT（查找）
-- 只查出Name和Age两列的数据
--SELECT [Name], Age FROM Student 

--改列UPDATE（改）
-- 把Student的Age列上所有值改为18
--UPDATE Student SET Age = 18;
--删除
--两种方式删除表数据：

--    DELETE

    --删除Student表的所有行
    --DELETE Student 

    --TRUNCATE

    --注意有TABLE关键字
    --TRUNCATE TABLE Student 
    
    --删除整张表

    --事务机制
    --begin transaction （transaction可以只写前面4位）
    --rollback（回滚）

    --if如果。 not取反，非。 and 且。or 或。not>and>or 从高到低

    --truncate table keywords
    select *from keywords 
    --alter table keyword
    --alter column [name] nvarchar(100) null

--自动编号作业151-
--    create table [keywords]
--(
--[id] int primary key identity(10,5),
--[name] NVARCHAR(10) unique
--)
--insert keywords ([name]) values (N'小黄') 

--create table [user]
--(
--[ID] int, 
--[name] NVARCHAR(10)
--)

insert [user] values (NEWID() ,(N'小红'))

alter table [problem]
alter column [id] NVARCHAR(40)

alter table problem
alter column [id] int IDENTITY;


