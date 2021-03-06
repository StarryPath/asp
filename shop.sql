USE [master]
GO
/****** Object:  Database [shop]    Script Date: 2018/11/4 13:58:38 ******/
CREATE DATABASE [shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\shop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\shop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [shop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [shop] SET  MULTI_USER 
GO
ALTER DATABASE [shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [shop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [shop]
GO
/****** Object:  Table [dbo].[goods_info]    Script Date: 2018/11/4 13:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[goods_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gname] [varchar](20) NULL,
	[descript] [text] NULL,
	[price] [float] NULL,
	[img_url] [varchar](20) NULL,
 CONSTRAINT [PK__goods_in__3213E83FE1016F8C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order_list]    Script Date: 2018/11/4 13:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[order_list](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NULL,
	[addr] [varchar](50) NULL,
	[u_name] [varchar](20) NULL,
	[tel] [varchar](20) NULL,
	[goods_id] [int] NULL,
	[num] [int] NULL,
	[g_time] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_info]    Script Date: 2018/11/4 13:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user2018]    Script Date: 2018/11/4 13:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user2018](
	[goods_id] [int] NULL,
	[count] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[goods_info] ON 

INSERT [dbo].[goods_info] ([id], [gname], [descript], [price], [img_url]) VALUES (1, N'欧朗德斯空气净化器', N'
    品牌: 欧朗德斯
    型号: KJ1000F-A9
    售后服务: 店铺三包
    电源方式: 交流电
    适用面积: 61m^2 及以上
    货号: KJ1000F-A9
    控制方式: 遥控式
    适用对象: 商用、家用
    空气净化产品类别: 空气净化器
    风量: 1000 立方米/小时以上
    风量: 1000立方米/小时
    最大噪音: 70dB
    噪音: 20-70dB
    空气净化能效等级: 高效级
    颗粒物CCM值: P4(12000≤M)
    甲醛CCM值: F4(>1500mg）
    颗粒物CADR值: 800立方米/小时
    甲醛CADR值: 400立方米/小时
', 5118.3, N'1.jpg')
INSERT [dbo].[goods_info] ([id], [gname], [descript], [price], [img_url]) VALUES (2, N'复古留声机', N'电源方式: 其他
采购地: 中国大陆
品牌: other/其他
型号: JSD-408复古留声机纯铜大喇叭客厅欧式老式黑胶唱片机仿古电唱机音响摆件 ', 3169.66, N'2.jpg')
INSERT [dbo].[goods_info] ([id], [gname], [descript], [price], [img_url]) VALUES (3, N'雅马哈钢琴', N'
    品牌: Yamaha/雅马哈
    型号: YU系列
    价格区间: 20000-25000
    是否有导购视频: 有
    背板材质: 实木音板
    适用场景: 专业 准专业 演奏
    钢琴类别: 中古钢琴
    款式: 立式
    键数: 88键
    材质: 云杉木
    高度: 121cm
    适用对象: 初学者 家庭教学 专业院校 专业演奏 高端定位
    颜色: 黑
    套餐类型: 官方标配
    适用年龄: 4岁及以上
    颜色分类: YUS YUX YUA YU1
', 39800, N'3.jpg')
INSERT [dbo].[goods_info] ([id], [gname], [descript], [price], [img_url]) VALUES (4, N'阿根廷进口原切牛排', N'
    厂名: 深圳市德盛食品有限公司
    厂址: 深圳市龙岗区平湖街道白泥坑社区良白路46号4号厂房1楼
    厂家联系方式: 0755-89583876
    配料表: 牛排
    储藏方法: 冷冻保存
    保质期: 180
    食品添加剂: 无
    牛排加工工艺: 原切未腌制
    产地: 阿根廷
    包装方式: 散装
    净含量: 1500g
', 159.8, N'4.jpg')
INSERT [dbo].[goods_info] ([id], [gname], [descript], [price], [img_url]) VALUES (5, N'云影单人三季露营', N'品牌名称：Kailas/凯乐石

产品参数：

    是否商场同款: 是
    货号: KT50016
    帐篷大小: 单人
    帐篷结构: 双层帐
    搭建情况: 需要搭建
    展开尺寸(长*宽*高 cm): 210*(80/70+40）*95cm
    适应季节: 三季帐
    上市时间: 2016年夏季
    帐篷空间结构: 一居室
    帐篷重量: 0.82KG
    产地: 中国
    帐底材质: 30D 尼龙布
    外帐材质: CUBEN面料
    外帐防水指数: 大于3000MM
    帐底防水指数: 2000mm(含)-3000mm(含)
    价格区间: 2000元以上
    支架材质: 铝合金
    品牌: Kailas/凯乐石
    颜色分类: 透明色', 9800, N'5.jpg')
SET IDENTITY_INSERT [dbo].[goods_info] OFF
SET IDENTITY_INSERT [dbo].[order_list] ON 

INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (1, N'admin', N'hit', N'fy', N'13114506266', 1, 3, N'2018/10/28 17:35:24')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (2, N'admin', N'hit', N'fy', N'13114506266', 2, 3, N'2018/10/28 17:35:24')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (3, N'admin', N'hit', N'fy', N'13114506266', 3, 3, N'2018/10/28 17:35:24')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (4, N'admin', N'hit', N'fy', N'123', 1, 2, N'2018/10/28 17:37:44')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (5, N'admin', N'hit', N'fy', N'123', 2, 1, N'2018/10/28 17:37:44')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (6, N'admin', N'hit', N'fy', N'123', 3, 6, N'2018/10/28 17:37:44')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (7, N'fy', N'hit', N'fy', N'123123', 3, 1, N'2018/10/28 19:48:53')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (8, N'fy', N'hit', N'fy', N'123123', 3, 2, N'2018/10/28 19:48:53')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (9, N'fy', N'heu', N'hxc', N'222222', 3, 1, N'2018/10/28 19:49:53')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (10, N'fy', N'heu', N'hxc', N'222222', 3, 5, N'2018/10/28 19:49:53')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (11, N'fy', N'heu', N'hxc', N'222222', 1, 8, N'2018/10/28 19:49:53')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (12, N'fy', N'heu', N'hxc', N'222222', 4, 6, N'2018/10/28 19:49:53')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (13, N'fy', N'heu', N'hxc', N'222222', 5, 7, N'2018/10/28 19:49:53')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (14, N'aaa', N'55555', N'5655', N'245376', 3, 7, N'2018/10/29 21:20:37')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (15, N'zrq', N'hit', N'张瑞琪', N'110', 2, 6, N'2018/11/1 14:20:32')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (16, N'zrq', N'fd', N'zrq', N'110', 3, 1, N'2018/11/1 14:23:24')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (17, N'admin', N'HIT', N'王明', N'13119999222', 1, 2, N'2018/11/1 19:02:28')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (18, N'admin', N'HIT', N'王明', N'13119999222', 3, 2, N'2018/11/1 19:02:28')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (19, N'user2018', N'HIT', N'刘明', N'1990000222', 3, 3, N'2018/11/1 19:04:19')
INSERT [dbo].[order_list] ([id], [username], [addr], [u_name], [tel], [goods_id], [num], [g_time]) VALUES (20, N'user2018', N'HIT', N'刘明', N'1990000222', 1, 2, N'2018/11/1 19:04:19')
SET IDENTITY_INSERT [dbo].[order_list] OFF
SET IDENTITY_INSERT [dbo].[user_info] ON 

INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (1, N'Tom', N'123456')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (2, N'123', N'123')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (3, N'222', N'111')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (4, NULL, NULL)
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (5, N'2222', N'111')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (6, N'22222', N'111')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (7, N'2222222', N'111')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (8, N'222222222', N'11')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (9, N'22222222222', N'')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (10, N'222211', N'111')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (11, N'2333', N'2333')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (12, N'111', N'111')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (13, NULL, NULL)
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (14, NULL, NULL)
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (15, NULL, NULL)
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (16, N'world', N'123')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (17, N'hey', N'123')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (18, N'qqq', N'qqq')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (19, N'admin', N'admin')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (20, N'fy', N'fy')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (21, N'666', N'123')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (22, N'aaa', N'123')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (23, N'zrq', N'123')
INSERT [dbo].[user_info] ([id], [username], [password]) VALUES (24, N'user2018', N'123')
SET IDENTITY_INSERT [dbo].[user_info] OFF
INSERT [dbo].[user2018] ([goods_id], [count]) VALUES (3, 1)
INSERT [dbo].[user2018] ([goods_id], [count]) VALUES (1, 1)
USE [master]
GO
ALTER DATABASE [shop] SET  READ_WRITE 
GO
