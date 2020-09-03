--创建数据仓库
CREATE DATABASE [17bang];

--删除数据仓库
DROP DATABASE [17bang];

--修改数据库[17bang]
alter database [17bang]
--设置具有立即回滚的single_user
set single_user with rollback immediate

-- 将数据库备份到D盘17bang.bak
BACKUP DATABASE [17bang] TO DISK = 'D:\迅雷下载\数据库备份' 
-- 根据D盘17bang.bak恢复数据库
RESTORE DATABASE [17bang] FROM DISK = 'D:\迅雷下载\数据库备份' 

--创建表
CREATE TABLE [dbo].[student]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [name] NCHAR(10) NULL, 
    [age] NCHAR(10) NULL, 
    [lsfemale] NCHAR(10) NULL 
)

--强行删除数据库
use master;
drop database[17bang];

--创建数据库中使用数据库
create database [17bang];
go
use[17bang];
create table teacher
(
id tnt
);

--增加列
ALTER TABLE Student ADD Score DECIMAL(3,1);

--删除列
ALTER TABLE Student DROP COLUMN Score;

--修改列
ALTER TABLE Student
ALTER COLUMN SCORE FLOAT NULL;