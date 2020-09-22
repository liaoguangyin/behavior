--运算符 keyword作业1-11
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

--约束作业13-25
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
--运算符作业26-45
--create table [dbo].[problem]
--(
--[id] int primary key identity,
--[title] NVARCHAR(100) null,
--[content] text null,
--[NeedRemoteHelp] bit null,
--[Reward]int null,
--[PublishDateTime]datetime null,
--)
--alter table problem
--alter column content nvarchar(max) 
--select *from problem 
--update problem set title=N'【推荐】'+title
-- where Reward >10 

-- update problem set title+=N'【加急】'+title
-- where PublishDateTime >2019/10/10

-- delete problem where title like N'%【%】%'

-- select *from problem
-- where title not like N'_____%数据库%' and title like N'%#%%' exists '#'

--自动编号作业47-65
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
--insert [user] values (NEWID() ,(N'小红'))

    --truncate table keywords
--    select *from problem 
--    --alter table keyword
--    alter column [name] nvarchar(100) null

    
--alter table boss
--add score int 
--alter table problem
--update problem set author=N'叶飞' where id=6
--insert problem (author,reward) values ( N'宋',200 )

--select top 3   author,reward 
--from problem  
--where author=N'叶飞'
--order by reward desc

--select author, reward
--from problem
--order by author, reward desc

--select author,count(title),sum(reward),avg(reward) from problem group by author

--select author,avg(reward) from problem group by author having avg(reward)<10 order by avg(reward) asc

--    select *from NewProblem
--    drop table [user]
--select author,reward
--into NewProblem
--from problem where id>5

--insert NewProblem 
--select reward from problem 
--alter table profile add teacherid int

--select *into newproblem from problem where author is not null and Reward is not null

--insert NewProblem (author,reward) select author,reward from problem where Reward is null
 
 --create table problem1
 --(
 --id int primary key identity(1,1)
 --)

 --select * from [user]
 --create table[profile]
 --(
 --id int primary key identity,
 --[gender] bit,
 --birthyear int,
 --birthmonth nvarchar(30),
 --birthstar nvarchar(30),
 --myself nvarchar(100),
 --)
 --drop table [profile]

 --create table [user](
 --[id] int primary key identity(1,1),
 --[username] nvarchar(30),
 --[password] int,
 --inviteedby int constraint fk_user_invitedby foreign key references [user](id) ,
 --profileid int constraint fk_user_profileid foreign key references [profile](id),
 --)
 --alter table [user]
 --add constraint uk_user_profileid unique(profileid)
-- select *from profile 
-- insert [profile] values(2019,7,N'巨蟹座',1234,N'自我介绍1')
-- insert [profile] values(2020,7,N'摩羯座',2344,N'自我介绍2')
-- insert [profile] values(2019,7,N'水瓶座',1784,N'自我介绍3')
-- insert [profile] values(2019,7,N'双子座',1277,N'自我介绍4')

-- insert [user] values (N'张三',1234,null,1)
-- insert [user] values (N'李四',1234,null,2)
-- insert [user] values (N'王五',1234,null,3)
-- insert [user] values (N'赵六',1234,null,4)

--insert [profile] values (2019,7,N'金牛座',1267,N'自我介绍5')

--delete [profile] where id=5
--delete [user] where profileid =5

--create table credit(
--id int primary key identity(1,1),
--[user] nvarchar(30),
--[time] datetime,
--reason nvarchar(50),
--num int,
--) 
--alter table credit
--alter column [user] int; 
--alter table credit
--add constraint fk_user_userid foreign key([user]) references[user](id)

--alter table problem add [author] nvarchar(20);

--alter table problem 
--add constraint fk_user_uid foreign key([uid]) references [user](id)

--select * from problem
--alter table problem
--drop column author
--insert problem values (N'晋',null,1,23,'2020/4/7',null,4)
--insert problem values (N'清',null,2,24,'2020/6/7',null,5)
--insert problem values (N'宋',null,6,24,'2020/9/7',null,6)
--insert problem values (N'商',null,7,43,'2020/12/7',null,7)

--update problem set uid=5 where id2=6
--delete problem where [uid]=4;
--delete [user] where id=6

--create table keyword2 
--(
--id int primary key identity(1,1),
--kword nvarchar(50),
--)
--create table keywordtoproblem
--(
--keywordid int constraint fk_keywordtoproblem_keywordid foreign key references keyword2(id),
--problemid int constraint fk_keywordtoproblem_problemid foreign key references problem(id)
--)
--select COUNT(keywordid),keywordid from  keywordtoproblem where keywordid=2
--group by keywordid





