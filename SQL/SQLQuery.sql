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


--ALTER TABLE Student ADD Score DECIMAL(3,1);


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


--alter table problem drop column id  --删除列

--批处理
--CREATE DATABASE [17bang]; 
--GO --GO后面不要加; 
--USE [17bang];

--表的删除
--DROP TABLE Student;

-- 修改表结构

--所有修改表结构的语句，都首先要使用ALTER TABLE，比如：

--ALTER TABLE Student

--上述SQL语句指明：修改 表 Student。接下来可以进行列的增删改。

--比如增加列 Score，该列的数据类型为DECIMAL(3,1)，那就需要在 ALTER TABLE Student 之后添加：

--ALTER TABLE Student ADD Score DECIMAL(3,1);

--删除列 Score，同样在ALTER TABLE Student 之后添加（后文不再特别指明）：

--ALTER TABLE Student DROP COLUMN Score;

--还可以修改列

--ALTER TABLE Student
--ALTER COLUMN SCORE FLOAT NULL;

--文本类型
--NVARCHAR 数据的最长长度
--NCHAR，是定长的
--VARCHAR和CHAR（注意没有以N开头）：存储变长和定长的非Unicode（不包含汉字的）数据（复习：编码格式）。因为非Unicode字符一个字符只占一个字节，所以长度最大值为8000（=4000x2，Unicode字符是一个字符占两个字节）
--TEXT和NTEXT：不限长度的非Unicode和Unicode（注意开头有没有N）文本数据。通常用于大篇幅不限字数的文章正文等。
--数字类型
--最常用的是INT，其他还有tinyint，smallint和bigint 
--小数

--    decimal和numeric：可以精确地指定小数的整体长度和位数。
--float和real：小数位数可变的（非精确的）存储方式。参考：float and real
--日期类型
--表示存储的是时间，常用的有：
--    date：日期，比如'2019/10/4'（SQL中需要加单引号），表示2019年10月4日
--    time：时间，比如'16:42 31'，表示16点42分31秒
--    datetime：上面的日期加时间
--     真假类型
--表示只能存储“真（是）”和“假（否）”两种值，SQL Server里用1表示真，0表示假
--bit：本质上还是一个整数类型，但只能存1和0。 
--NULL值
--在SQL中，NULL表示空，什么都没有 
--取余：%，比如：8/5=1...3，3是8除以5的余数，所以8%5=3
--组合运算符：+=、-=、*=、/=，实际上就是将： 
--可以在SELECT、UPDATE和DELETE后面添加WHERE子句，以进行条件查询和精确更新/删除。
-- EXISTS

--检查集合（或者说“结果集”，SELECT Id FROM Student的结果就是一个集合或者结果集）是否有返回数据（或者说“行数据”）：

--    如果结果集有值，比如SELECT Id FROM Student的结果为：1,2,3，返回真；
--    否则，返回假。

--SELECT 1 WHERE EXISTS (SELECT Id FROM Student);
-- LIKE

--通配符：

--    % ：任意字符
--    _：单个任意字符（包含空格' '？）

--IF( 'ABCD' LIKE '_BC%') 

--转义符（ESCAPE）： 如果要查文本里有没有%呢？我们需要：

--    使用ESCAPE指定一个转义字符
--    在%前加上这个转义字符，告诉SQL Server不要认为%代指任意字符

--IF( '源栈87%的就业率' LIKE '%%%') -- 这样写是不行的，%会被认为是“任意字符” 
--IF( '源栈87%的就业率' LIKE '%#%%' ESCAPE '#') -- 转义字符为#

--除了%和_，还有[]^都是需要转义的。注意UNICODE文本任然需要在单引号前面加N，如：N'源栈欢迎您！'
-- 逻辑运算

--针对上面比较运算的结果再次进行运算，包括：


--NOT：汉语通常说成“非”或者“取反”。放在比较运算之前，可以将比较运算的结果再“颠倒”过来：以前是真，颠倒为假；以前为假，颠倒为真。比如：

--IF(NOT 3<2) -- 3<2为假，NOT之后为真

--注意我们之前学过的NULL值比较结果为unknown，unknown取反还是unknown：

--SELECT 1 WHERE NOT (30 < NULL) 
--SELECT 1 WHERE 30 < NULL


--AND：汉语读作“且”，可以连接多个比较运算。只有当所有比较运算的结果都为真时，最终结果为真（比如丈母娘要求“有车有房”）:

--IF(3>2 AND 5>3 AND '2019/10/14'<'2019/11/23') --全部为真，AND之后还是为真 
--IF(3>2 AND 5>3 AND '2019/10/14'>'2019/11/23') --一个为假，AND之后就为假


--OR：汉语读作“或”，可以连接多个比较运算。只要有一个比较运算的结果都为真时，最终结果为真（比如招聘要求：研究生毕业，或3年以上工作经验）：

--IF(3>2 OR 5<3 OR '2019/10/14'>'2019/11/23') --只要一个为真，OR之后就是为真 
--IF(3<2 OR 5<3 OR '2019/10/14'>'2019/11/23') --只有全部为假，OR之后才为假


--NOT、AND和OR还可以混合运算，其优先级高到低为：NOT > AND > OR，比如：

--IF(3>2 OR NOT 5>3 AND '2019/10/14'<'2019/11/23') 

--但为了提高可读性，建议使用()显式指明其优先级。上述代码可写成：

--IF(3>2 OR ((NOT 5>3) AND '2019/10/14'<'2019/11/23')) 

--    非空约束（NOT NULL）：该列数据必须有值，不能为空。
--    唯一约束（UNIQUE）：该列数据是不能重复的，该列每一行的数据都必须是唯一的。
--    主键约束（PRIMARY KEY）：同时保证唯一和非空。且一个表只能有一个主键。
--    自定义约束（CHECK）： 比如数值必须大于0
--    默认值（DEFAULT）：如果INSERT的时候没有填写，给一个默认值
--CREATE TABLE Student( 
--    Id INT PRIMARY KEY, --Id是主键，不能为NULL不能重复 
--    [Name] NVARCHAR(10) UNIQUE, --[Name]不能为空不能重复 
--    Enroll DATETIME  NOT NULL , --Enroll不能为空 
--    Age SMALLINT CHECK(Age>0), --Age必须大于0 
--    Score FLOAT, --没有约束 
--    IsFemale BIT DEFAULT(1) --默认为1 
--)
-- 分开定义和约束

--还可以把列定义和约束彻底分开。

--在Explorer里的表名上右键：View Code，就可以看到如下代码：

--CREATE TABLE [dbo].[Student] (
--    [Id]       INT           NOT NULL,
--    [Name]     NVARCHAR (10) NULL,
--    [Enroll]   DATETIME      NOT NULL,
--    [Age]      SMALLINT      NULL,
--    [Score]    FLOAT (53)    NULL,
--    [IsFemale] BIT           CONSTRAINT [DF_IsFemale] DEFAULT ((1)) NULL,
--    CONSTRAINT [PK_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
--    CONSTRAINT [UQ_Name] UNIQUE NONCLUSTERED ([Name] ASC),
--    CONSTRAINT [CK_Age] CHECK ([Age]>(0))
--);
-- 约束的修改

--除NOT NULL以外（NOT NULL的修改见表结构的修改），约束的修改和表结构的修改类似：

--注意：使用ALTER切换NULL和NOT NULL时，一样要带着该列的类型等：

--ALTER TABLE Student
---- 错：没有指定类型
---- ALTER COLUMN IsFemale NOT NULL
--ALTER COLUMN IsFemale BIT NOT NULL



--删除

--使用DROP关键字和约束名删除指定约束：

--ALTER TABLE Student
--DROP CONSTRAINT CK_Age;


--添加
--如果是在表上添加新列，可以像建表时一样，指定该列的一些约束，比如：

--ALTER TABLE Student ADD Score DECIMAL(3,1) DEFAULT(18)

--但给表上已有列添加约束，就不能使用ALTER COLUMN（和创建表时可以直接附着约束不同），比如这样写就是不行的：

--ALTER TABLE Student 
--ALTER COLUMN Age INT DEFAULT(18);

--必须使用ADD CONSTRAINT 添加。比如：

--    PRIMARY KEY约束：

--     -- 在Id列上建立主键约束
--    ALTER TABLE Student 
--    ADD CONSTRAINT PK_Id PRIMARY KEY(Id); 

--    UNIQUE约束：

--    -- 在Enroll列上添加唯一约束
--    ALTER TABLE Student
--    ADD CONSTRAINT UQ_ENROLL UNIQUE(ENROLL); 

--    CHECK约束：

--    -- CK_Age是添加约束的名称
--    ALTER TABLE Student
--    ADD CONSTRAINT CK_Age CHECK(Age>0);

--    DEFAULT约束：

--    -- 18是默认值,作用于Age列
--    ALTER TABLE Student
--    ADD CONSTRAINT DF_Age DEFAULT 18 FOR Age; -- 注意写法的差异


--修改

--不能直接更改约束。如果要更改，只能先DROP，再ADD。

--关闭检查

--对于自定义（CHECK）和外键约束（其他约束不行），数据库允许我们暂时关闭约束检查，以便越过约束检查插入一些数据。SQL语句如下：

--ALTER TABLE Student NOCHECK CONSTRAINT ALL;

--运行上述SQL语句，就会关闭表Student上的所有（ALL）约束。

--INSERT Student(Id,[Name],Age) VALUES(1, N'陈元',-5)

--我们也可以用具体约束名称替换ALL，以关闭某个特定的CHECK，比如：

--ALTER TABLE Student NOCHECK CONSTRAINT CK_Age;

--记得在完成你的“非常规”操作之后，使用

--ALTER TABLE Student CHECK CONSTRAINT ALL;

--打开（还原）约束。

--注意：关闭CHECK不等于删除CHECK。关闭了CHECK，CHECK仍然在这里，只是不生效而已，所以以后才可以再打开。



--表结构影响

--有约束的列不能直接删除（NOT NULL约束除外），因为约束依赖于列。演示：略

--添加一列时，如果表中已有数据，不能要求该列有NOT NULL约束。@想一想@：为什么？ 
--自动编号：NEWID()
--IDENTITY自增列
-- 指定起始值和步增

--IDENTITY默认从1（起始值）开始，每次+1（步增）。

--但也可以修改，比如IDENTITY(10,3)，意思是从10开始，每次增加3。 
-- 关闭IDENTITY

--在某些特定情景，我们可能需要在插入数据时指定自增列数值。

--这时候我们要先运行：

--SET IDENTITY_INSERT Student ON;

--关闭自增列的自动生成。

--不要问我为什么是ON（开启），——勉强翻译成“可指定自增列值的插入”吧，(*/ω＼*)

--然后，这样的代码就是OK的

--SET IDENTITY_INSERT Student ON 
--INSERT INTO Student ([Id], [Name]) VALUES (100, N'fegei')
--INSERT INTO Student ([Id], [Name]) VALUES (105, N'xiaoyu') 
--SET IDENTITY_INSERT Student OFF

--注意：

--    这时候，INSERT时必须在表名（Student）后指明列名（Id）
--    总是记得在完成你的“非常规”操作之后，使用SET IDENTITY_INSERT Student OFF还原

--不能直接改变列的自增（IDENTITY）状态 



