USE [master]
GO
/****** Object:  Database [College-DB]    Script Date: 2/21/2022 6:08:53 PM ******/
CREATE DATABASE [College-DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'College-DB', FILENAME = N'C:\Users\Dotnet\College-DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'College-DB_log', FILENAME = N'C:\Users\Dotnet\College-DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [College-DB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [College-DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [College-DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [College-DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [College-DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [College-DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [College-DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [College-DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [College-DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [College-DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [College-DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [College-DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [College-DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [College-DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [College-DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [College-DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [College-DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [College-DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [College-DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [College-DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [College-DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [College-DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [College-DB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [College-DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [College-DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [College-DB] SET  MULTI_USER 
GO
ALTER DATABASE [College-DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [College-DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [College-DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [College-DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [College-DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [College-DB] SET QUERY_STORE = OFF
GO
USE [College-DB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [College-DB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/21/2022 6:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 2/21/2022 6:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentCourses]    Script Date: 2/21/2022 6:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[CourseId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 2/21/2022 6:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherCourses]    Script Date: 2/21/2022 6:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherCourses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NULL,
	[CourseId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 2/21/2022 6:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/21/2022 6:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Roles] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220118054122_initload', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220118055601_StdAndTchrTable', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220118055940_alterTableTeacher', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([Id], [Name]) VALUES (1, N'Math')
INSERT [dbo].[Courses] ([Id], [Name]) VALUES (2, N'Hindi')
INSERT [dbo].[Courses] ([Id], [Name]) VALUES (3, N'English')
INSERT [dbo].[Courses] ([Id], [Name]) VALUES (7, N'Social')
INSERT [dbo].[Courses] ([Id], [Name]) VALUES (8, N'Physics')
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentCourses] ON 

INSERT [dbo].[StudentCourses] ([ID], [StudentId], [CourseId]) VALUES (1, 1, 2)
INSERT [dbo].[StudentCourses] ([ID], [StudentId], [CourseId]) VALUES (2, 1, 3)
INSERT [dbo].[StudentCourses] ([ID], [StudentId], [CourseId]) VALUES (11, 2, 1)
INSERT [dbo].[StudentCourses] ([ID], [StudentId], [CourseId]) VALUES (12, 2, 2)
INSERT [dbo].[StudentCourses] ([ID], [StudentId], [CourseId]) VALUES (13, 2, 3)
INSERT [dbo].[StudentCourses] ([ID], [StudentId], [CourseId]) VALUES (29, 20, 7)
INSERT [dbo].[StudentCourses] ([ID], [StudentId], [CourseId]) VALUES (30, 21, 2)
INSERT [dbo].[StudentCourses] ([ID], [StudentId], [CourseId]) VALUES (36, 27, 7)
INSERT [dbo].[StudentCourses] ([ID], [StudentId], [CourseId]) VALUES (37, 28, 2)
INSERT [dbo].[StudentCourses] ([ID], [StudentId], [CourseId]) VALUES (38, 28, 3)
SET IDENTITY_INSERT [dbo].[StudentCourses] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name]) VALUES (1, N'Raman')
INSERT [dbo].[Students] ([Id], [Name]) VALUES (2, N'Suraj')
INSERT [dbo].[Students] ([Id], [Name]) VALUES (3, N'suresh kumar')
INSERT [dbo].[Students] ([Id], [Name]) VALUES (20, N'Kartik')
INSERT [dbo].[Students] ([Id], [Name]) VALUES (21, N'Shilpa ')
INSERT [dbo].[Students] ([Id], [Name]) VALUES (27, N'Avneet')
INSERT [dbo].[Students] ([Id], [Name]) VALUES (28, N'Avneet Singh')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[TeacherCourses] ON 

INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (1, 1, 1)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (2, 2, 1)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (3, 1, 2)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (4, 2, 3)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (5, 6, 2)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (6, 8, 8)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (7, 8, 1)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (8, 8, 7)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (9, 10, 7)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (10, 11, 7)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (12, 13, 1)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (15, 16, 1)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (20, 21, 7)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (22, 24, 7)
INSERT [dbo].[TeacherCourses] ([ID], [TeacherId], [CourseId]) VALUES (23, 25, 7)
SET IDENTITY_INSERT [dbo].[TeacherCourses] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [Name]) VALUES (1, N'Ram')
INSERT [dbo].[Teachers] ([Id], [Name]) VALUES (2, N'Sham')
INSERT [dbo].[Teachers] ([Id], [Name]) VALUES (6, N'dsafadf')
INSERT [dbo].[Teachers] ([Id], [Name]) VALUES (8, N'Shubham')
INSERT [dbo].[Teachers] ([Id], [Name]) VALUES (10, N'Kalpana')
INSERT [dbo].[Teachers] ([Id], [Name]) VALUES (11, N'VinaySareen')
INSERT [dbo].[Teachers] ([Id], [Name]) VALUES (13, N'Avneet Singh')
INSERT [dbo].[Teachers] ([Id], [Name]) VALUES (16, N'Chottu Sharma Sir G')
INSERT [dbo].[Teachers] ([Id], [Name]) VALUES (21, N'kalpana')
INSERT [dbo].[Teachers] ([Id], [Name]) VALUES (24, N'Chaman sdfadfaf')
INSERT [dbo].[Teachers] ([Id], [Name]) VALUES (25, N'kalpana')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Password], [Roles]) VALUES (1, N'admin', N'admin@123', N'admin')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Roles]) VALUES (2, N'HR', N'hr@123', N'employee')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Roles]) VALUES (3, N'Accounts', N'accounts@123', N'employee')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[StudentCourses]  WITH CHECK ADD FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[StudentCourses]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[TeacherCourses]  WITH CHECK ADD FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[TeacherCourses]  WITH CHECK ADD FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
USE [master]
GO
ALTER DATABASE [College-DB] SET  READ_WRITE 
GO
