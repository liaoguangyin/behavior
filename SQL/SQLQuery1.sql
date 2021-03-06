﻿ --运算符 keyword作业1-11
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


--create table tscore
--(
--[name] nvarchar(20),
--[subject] nvarchar(20),
--score int
--)

--insert tscore values(N'飞哥','SQL',98)
--insert tscore values(N'飞哥','C#',89)
--insert tscore values(N'飞哥','javascript',76)
--insert tscore values(N'路炜','SQL',87)
--insert tscore values(N'路炜','C#',95)
--insert tscore values(N'路炜','javascript',88)

--select 
--[name],
--max(case [subject] when N'C#'then score else 0 end) as N'C#',
--max(case[subject] when N'SQL'then score else 0 end) as N'SQL',
--max(case[subject] when N'javascript' then score else 0 end)as N'javascript'
--from tscore
--group by [name] 

 --为求助添加一个发布时间（TPublishTime），使用子查询：

 --   删除每个作者悬赏最低的求助
--  begin transaction
--  delete problem where reward in (select  min(reward)from problem group by author) 
--  begin transaction
--  delete problem 
--  from problem pr
--  where reward=(
--  select min(reward)from problem po
--  where pr.author=po.author
--  group by author
--  )
--rollback
--  select * from problem 
-- --   找到从未成为邀请人的用户
-- select * from problem where id not in(
-- select invitedby from problem 
-- where invitedby is not null
 --)
 --   如果一篇求助的关键字大于3个，将它的悬赏值翻倍

 --   查出所有发布一篇以上（不含一篇）文章的用户信息
 --   查找每个作者最近发布的一篇文章
 --   查出每一篇求助的悬赏都大于5个帮帮币的作者
-- Keyword
--alter table problem add invitedby nvarchar(20);
--insert problem(author)values (N'飞哥')
--update problem set author=N'大飞'
--where  id=7
--delete from problem where id=8

--分别使用派生表和CTE，查询求助表（表中只有一列整体的发布时间，没有年月的列），以获得：
--一起帮每月各发布了求助多少篇
 --select YEAR ,MONTH,COUNT(*)from
 --(
 --select 
 --MONTH(PublishDateTime) AS [MONTH],
 --YEAR(PublishDateTime) AS[YEAR]
 --from problem 
 --)ymp
 --group by ymp.YEAR,YMP.MONTH
 --with ymp 
 --AS 
 --(
 --  select
 --  MONTH(PublishDateTime) AS [MONTH],
 --  YEAR(PublishDateTime) AS [YEAR]
 --  from problem 
 -- )
 --select YEAR,MONTH,COUNT(*)from ymp
 --group by ymp.[YEAR],ymp[MONTH]

--每月发布的求助中，悬赏最多的3篇
--SELECT * FROM (
--    SELECT *,
--      ROW_NUMBER()OVER(
--      PARTITION BY YEAR(PublishDateTime),MONTH(PublishDateTime)
--      ORDER BY Reward desc)gid
--      from problem)ymp
--where ymp.gid<=3     
--每个作者，每月发布的，悬赏最多的3篇
--select * from (
--  select *,
--  ROW_NUMBER ()over(
--  partition by year(PublishDateTime),month(PublishDateTime),author
--  order by reward desc)gid
--  from problem) ymp
--where ymp.gid<=3
--分别按发布时间和悬赏数量进行分页查询的结果
--select * from (
--  select *,
--  ROW_NUMBER ()over(
--  partition by year(PublishDateTime),month(PublishDateTime)
--  order by reward desc)gid
--  from problem) ymp
--where ymp.gid between 3 and 5
--创建Response(Id, Content, AuthorId, ProblemId, CreateTime) 
 
 --create table bangmoney(
 --[name] nvarchar(25),
 --balance int,
 --[id] int identity
 --)
 --insert bangmoney values (N'汉', 500 )
 --alter table problem 
 --add constraint ck_problem_balance check(balance>=0)
 --ALTER  TABLE PROBLEM
 --ADD balance int

-- begin try
--          begin tran
--          alter table problem 
--          add constraint ck_problem_balance check(balance>=0)
--          insert problem(title ,Reward,PublishDateTime,id2,author,balance ) values (N'夏',60,2020/8/7,8,N'大飞',1000)
--          update problem  set balance-=60 where id2=8;
--          commit
-- end try
--begin catch
--   rollback;
--   throw
--end catch

--select * from problem 
--delete from problem where id=9



--declare @i int
--declare @n int
--set @n=8
--set @i=1
--while @i<@n
--begin
--print(Space((@n-@i)/2)+Replicate('1',@i))
--set @i=@i+2
--end

    --定义一个函数GetBigger(INT a, INT b)，可以取a和b之间的更大的一个值
     --create function GetBigger(@a int,@b int)
     --returns int 
     --as
     --begin 
     --     return (@a+@b)/2
     --end
     --print dbo.GetBigger(10,20)
    --创建一个单行表值函数GetLatestPublish(INT n)，返回最近发布的n篇求助
    --create function GetLatestPublish(@n int)
    --returns table
    --return select top (@n)* from problem order by PublishDateTime desc
    --go
    --select*from dbo.GetLatestPublish(6)

    --创建一个多行表值函数GetByReward(INT n, BIT asc)，如果asc为1，返回悬赏最少的n位同学；否则，返回悬赏最多的n位同学。
   
    --在表TProblem中： 
    --找出所有周末发布的求助（添加CreateTime列，如果还没有的话）

    --找出每个作者所有求助悬赏的平均值，精确到小数点后两位
    --select author,ROUND (avg(reward),2)from problem group by author 
    --有一些标题以test、[test]后者Test-开头的求助，找到他们并把这些前缀都换成大写
   
