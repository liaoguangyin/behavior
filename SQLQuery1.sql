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


    在Problem中插入不同作者（Author）不同悬赏（Reward）的若干条数据，以便能完成以下操作：
        查找出Author为“飞哥”的、Reward最多的3条求助
        所有求助，先按作者“分组”，然后在“分组”中按悬赏从大到小排序
        查找并统计出每个作者的：求助数量、悬赏总金额和平均值
        找出平均悬赏值少于10的作者并按平均值从小到大排序
    以Problem中的数据为基础，使用SELECT INTO，新建一个Author和Reward都没有NULL值的新表：NewProblem （把原Problem里Author或Reward为NULL值的数据删掉）
    使用INSERT SELECT, 将Problem中Reward为NULL的行再次插入到NewProblem中

select *from problem
alter table boss
--add score int 
drop table problem
alter table problem
update problem set author=N'叶飞' where id=6
insert problem (author,reward) values ( N'宋',200 )

select top 3   author,reward 
from problem  
where author=N'叶飞'
order by reward desc

select author, reward
from problem
order by author, reward desc

select 