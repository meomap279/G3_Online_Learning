USE [master]
GO
/****** Object:  Database [SWP391-Project ]    Script Date: 05/24/2022 22:15:00 ******/
CREATE DATABASE [SWP391-Project ] ON  PRIMARY 
( NAME = N'SWP391-Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SWP391-Project .mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SWP391-Project _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SWP391-Project _log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SWP391-Project ] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP391-Project ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391-Project ] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SWP391-Project ] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SWP391-Project ] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SWP391-Project ] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SWP391-Project ] SET ARITHABORT OFF
GO
ALTER DATABASE [SWP391-Project ] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SWP391-Project ] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SWP391-Project ] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SWP391-Project ] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SWP391-Project ] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SWP391-Project ] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SWP391-Project ] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SWP391-Project ] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SWP391-Project ] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SWP391-Project ] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SWP391-Project ] SET  DISABLE_BROKER
GO
ALTER DATABASE [SWP391-Project ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SWP391-Project ] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SWP391-Project ] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SWP391-Project ] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SWP391-Project ] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SWP391-Project ] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SWP391-Project ] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SWP391-Project ] SET  READ_WRITE
GO
ALTER DATABASE [SWP391-Project ] SET RECOVERY SIMPLE
GO
ALTER DATABASE [SWP391-Project ] SET  MULTI_USER
GO
ALTER DATABASE [SWP391-Project ] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SWP391-Project ] SET DB_CHAINING OFF
GO
CREATE DATABASE [SWP391-Project ]
USE [SWP391-Project ]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[level_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feature](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NULL,
	[url] [varchar](50) NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Price_Package]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Price_Package](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [varchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[duration] [int] NULL,
	[list_price] [float] NULL,
	[sale_price] [float] NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_Price_Package] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category_Post]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Course]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category_Course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'Customer')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'Sale')
INSERT [dbo].[Role] ([id], [name]) VALUES (3, N'Marketing')
INSERT [dbo].[Role] ([id], [name]) VALUES (4, N'Expert')
INSERT [dbo].[Role] ([id], [name]) VALUES (5, N'Admin')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[User]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [varchar](50) NULL,
	[fullname] [nvarchar](150) NULL,
	[gender] [bit] NULL,
	[email] [varchar](150) NULL,
	[phone] [varchar](20) NULL,
	[avatar] [varchar](150) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([id], [username], [password], [fullname], [gender], [email], [phone], [avatar]) VALUES (1, N'admin', N'admin123', N'Admin', 1, N'datnmhe153061@fpt.edu.vn', N'0123456788', NULL)
INSERT [dbo].[User] ([id], [username], [password], [fullname], [gender], [email], [phone], [avatar]) VALUES (2, N'abc', N'abc123', N'Abc', 0, N'lyvhhe151517@fpt.edu.vn', N'0234672364', NULL)
INSERT [dbo].[User] ([id], [username], [password], [fullname], [gender], [email], [phone], [avatar]) VALUES (3, N'aaa', N'aaa123', N'Aaa', 1, N'trangdtthe153077@fpt.edu.vn', N'0348927827', NULL)
INSERT [dbo].[User] ([id], [username], [password], [fullname], [gender], [email], [phone], [avatar]) VALUES (4, N'Phong', N'phong123', N'Phong', 1, N'lyhuong24@gmail.com', N'0282342782', NULL)
INSERT [dbo].[User] ([id], [username], [password], [fullname], [gender], [email], [phone], [avatar]) VALUES (5, N'Duy', N'duy123', N'Duy', 1, N'duyukhe150601@fpt.edu.vn', N'0927348273', NULL)
INSERT [dbo].[User] ([id], [username], [password], [fullname], [gender], [email], [phone], [avatar]) VALUES (6, N'Trang', N'trang123', N'Trang', 0, N'trangghsda@gmail.com', N'0238497272', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Subject_Dimension]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject_Dimension](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[description] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NULL,
	[dimension_id] [int] NULL,
	[level_id] [int] NULL,
	[status] [varchar](50) NULL,
	[content] [text] NULL,
	[media] [text] NULL,
	[answer_option] [nvarchar](50) NULL,
	[explain] [text] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[feature_id] [int] NOT NULL,
	[role_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role](
	[user_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_User_Role] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User_Role] ([user_id], [role_id]) VALUES (1, 5)
INSERT [dbo].[User_Role] ([user_id], [role_id]) VALUES (2, 4)
INSERT [dbo].[User_Role] ([user_id], [role_id]) VALUES (3, 3)
INSERT [dbo].[User_Role] ([user_id], [role_id]) VALUES (4, 2)
INSERT [dbo].[User_Role] ([user_id], [role_id]) VALUES (5, 1)
INSERT [dbo].[User_Role] ([user_id], [role_id]) VALUES (6, 1)
/****** Object:  Table [dbo].[Course]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[status_id] [bit] NULL,
	[name] [nvarchar](50) NULL,
	[thumbnail] [text] NULL,
	[tagline] [text] NULL,
	[title] [nvarchar](50) NULL,
	[date] [date] NULL,
	[links] [varchar](150) NULL,
	[price] [bigint] NULL,
	[briefinfo] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[featuredsubject] [bit] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post_Detail]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post_Detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[thumbnail] [text] NULL,
	[category_id] [int] NULL,
	[user_id] [int] NULL,
	[title] [nvarchar](150) NULL,
	[briefinfo] [nvarchar](150) NULL,
	[description] [text] NULL,
	[flag] [bit] NULL,
	[status] [varchar](50) NULL,
	[date] [date] NULL,
	[author] [nvarchar](50) NULL,
 CONSTRAINT [PK_Post_Detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[course_package]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_package](
	[course_id] [int] NOT NULL,
	[pricepackage_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NULL,
	[topic_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registrations]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registrations](
	[user_id] [int] NOT NULL,
	[course_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[course_id] [int] NULL,
	[level_id] [int] NULL,
	[level] [varchar](50) NULL,
	[number_question] [int] NULL,
	[duration] [int] NULL,
	[pass_rate] [float] NULL,
	[type] [varchar](50) NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Quiz]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Quiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_id] [int] NULL,
	[user_id] [int] NULL,
	[score] [int] NULL,
	[time] [int] NULL,
 CONSTRAINT [PK_User_Quiz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 05/24/2022 22:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lesson](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[topic_id] [int] NULL,
	[name] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[topic] [nvarchar](50) NULL,
	[order] [int] NULL,
	[video_link] [varchar](50) NULL,
	[content] [text] NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Question_Level]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Level] FOREIGN KEY([level_id])
REFERENCES [dbo].[Level] ([id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Level]
GO
/****** Object:  ForeignKey [FK_Role_Feature_Feature]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([feature_id])
REFERENCES [dbo].[Feature] ([id])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
/****** Object:  ForeignKey [FK_Role_Feature_Role]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
/****** Object:  ForeignKey [FK_User_Role_Role]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_Role]
GO
/****** Object:  ForeignKey [FK_User_Role_User]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_User]
GO
/****** Object:  ForeignKey [FK_Course_Category_Course]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Category_Course] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category_Course] ([id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Category_Course]
GO
/****** Object:  ForeignKey [FK_Post_Detail_Category_Post]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Post_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Post_Detail_Category_Post] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category_Post] ([id])
GO
ALTER TABLE [dbo].[Post_Detail] CHECK CONSTRAINT [FK_Post_Detail_Category_Post]
GO
/****** Object:  ForeignKey [FK_Post_Detail_User]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Post_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Post_Detail_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Post_Detail] CHECK CONSTRAINT [FK_Post_Detail_User]
GO
/****** Object:  ForeignKey [FK_course_package_Course]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[course_package]  WITH CHECK ADD  CONSTRAINT [FK_course_package_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[course_package] CHECK CONSTRAINT [FK_course_package_Course]
GO
/****** Object:  ForeignKey [FK_course_package_Price_Package]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[course_package]  WITH CHECK ADD  CONSTRAINT [FK_course_package_Price_Package] FOREIGN KEY([pricepackage_id])
REFERENCES [dbo].[Price_Package] ([id])
GO
ALTER TABLE [dbo].[course_package] CHECK CONSTRAINT [FK_course_package_Price_Package]
GO
/****** Object:  ForeignKey [FK_Topic_Course]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Topic]  WITH CHECK ADD  CONSTRAINT [FK_Topic_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Topic] CHECK CONSTRAINT [FK_Topic_Course]
GO
/****** Object:  ForeignKey [FK_Registrations_Course]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Registrations]  WITH CHECK ADD  CONSTRAINT [FK_Registrations_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Registrations] CHECK CONSTRAINT [FK_Registrations_Course]
GO
/****** Object:  ForeignKey [FK_Registrations_User1]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Registrations]  WITH CHECK ADD  CONSTRAINT [FK_Registrations_User1] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Registrations] CHECK CONSTRAINT [FK_Registrations_User1]
GO
/****** Object:  ForeignKey [FK_Quiz_Course]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Course]
GO
/****** Object:  ForeignKey [FK_Quiz_Level]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Level] FOREIGN KEY([level_id])
REFERENCES [dbo].[Level] ([id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Level]
GO
/****** Object:  ForeignKey [FK_User_Quiz_Quiz]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[User_Quiz]  WITH CHECK ADD  CONSTRAINT [FK_User_Quiz_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([id])
GO
ALTER TABLE [dbo].[User_Quiz] CHECK CONSTRAINT [FK_User_Quiz_Quiz]
GO
/****** Object:  ForeignKey [FK_User_Quiz_User]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[User_Quiz]  WITH CHECK ADD  CONSTRAINT [FK_User_Quiz_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[User_Quiz] CHECK CONSTRAINT [FK_User_Quiz_User]
GO
/****** Object:  ForeignKey [FK_Lesson_Topic]    Script Date: 05/24/2022 22:15:01 ******/
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Topic] FOREIGN KEY([topic_id])
REFERENCES [dbo].[Topic] ([id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Topic]
GO
