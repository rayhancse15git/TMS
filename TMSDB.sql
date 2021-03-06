USE [master]
GO
/****** Object:  Database [TMSDB]    Script Date: 17-May-19 11:08:04 AM ******/
CREATE DATABASE [TMSDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TMSDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.IMRANSQL\MSSQL\DATA\TMSDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TMSDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.IMRANSQL\MSSQL\DATA\TMSDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TMSDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TMSDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TMSDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TMSDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TMSDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TMSDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TMSDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TMSDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TMSDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TMSDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TMSDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TMSDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TMSDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TMSDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TMSDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TMSDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TMSDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TMSDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TMSDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TMSDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TMSDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TMSDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TMSDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TMSDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TMSDB] SET RECOVERY FULL 
GO
ALTER DATABASE [TMSDB] SET  MULTI_USER 
GO
ALTER DATABASE [TMSDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TMSDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TMSDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TMSDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TMSDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TMSDB', N'ON'
GO
ALTER DATABASE [TMSDB] SET QUERY_STORE = OFF
GO
USE [TMSDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17-May-19 11:08:04 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 17-May-19 11:08:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[InstructorId] [int] NOT NULL,
	[Number] [int] NOT NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coordinator]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coordinator](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Contact] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Coordinator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Duration] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Contact] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Performance]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Performance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Accuracy] [float] NOT NULL,
	[BatchId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[InstructorId] [int] NOT NULL,
	[ProgressId] [int] NOT NULL,
	[TaskId] [int] NOT NULL,
	[TraineeId] [int] NOT NULL,
 CONSTRAINT [PK_Performance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Progress]    Script Date: 17-May-19 11:08:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Progress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BatchId] [int] NOT NULL,
	[Completed] [float] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[InstructorId] [int] NOT NULL,
	[TaskId] [int] NOT NULL,
	[TraineeId] [int] NOT NULL,
 CONSTRAINT [PK_Progress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 17-May-19 11:08:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BasicSalary] [float] NOT NULL,
	[Bonus] [float] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[InstructorId] [int] NOT NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 17-May-19 11:08:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssignDate] [datetime2](7) NOT NULL,
	[BatchId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[InstructorId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Number] [int] NOT NULL,
	[SubmissionDate] [datetime2](7) NOT NULL,
	[TraineeId] [int] NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainee]    Script Date: 17-May-19 11:08:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[BatchId] [int] NOT NULL,
	[Contact] [nvarchar](max) NOT NULL,
	[CourseId] [int] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Trainee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.0.3-rtm-10026')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190504101723_imran01', N'2.0.3-rtm-10026')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'1724a634-5eda-4a9f-9a47-ebd7839ab66c', N'445f1e4f-88e2-48f2-aa48-f960d247676c', N'Instructor', N'INSTRUCTOR')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'bdcab52f-f40f-4e1e-8983-6bd82ed74bf3', N'31be35c8-63b1-4bfa-ae43-059a9199ab7c', N'Trainee', N'TRAINEE')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'c7bc393d-ebbf-42b1-91a9-428b0d0fc8c6', N'7acff6e3-33d7-4f7d-891e-4afab41717a4', N'Coordinator', N'COORDINATOR')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9a1423f5-9079-48f2-83d6-97fc44728a83', N'1724a634-5eda-4a9f-9a47-ebd7839ab66c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f163eeef-512a-41a2-885f-28d4891aab1d', N'1724a634-5eda-4a9f-9a47-ebd7839ab66c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3f5825bb-b0c4-41c4-8e85-e62ec6f7d131', N'bdcab52f-f40f-4e1e-8983-6bd82ed74bf3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'726572d8-6a55-4e78-8825-c44133d205ed', N'bdcab52f-f40f-4e1e-8983-6bd82ed74bf3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ec179d64-89d4-4008-87ff-79b8c52bb779', N'bdcab52f-f40f-4e1e-8983-6bd82ed74bf3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'893c2240-d32f-42c5-b0cb-db0a1ffaaf9f', N'c7bc393d-ebbf-42b1-91a9-428b0d0fc8c6')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'3f5825bb-b0c4-41c4-8e85-e62ec6f7d131', 0, N'1e11c1b5-6635-4d32-87bc-0b93e8b42e7d', N'arif@gmail.com', 0, 1, NULL, N'ARIF@GMAIL.COM', N'ARIF@GMAIL.COM', N'AQAAAAEAACcQAAAAEKTbFX5AdU2SswThGZRpoGozHHzt0LyJrbilSymefZFPDLjey6u7ZASvwYci98dNAQ==', NULL, 0, N'64245fe0-f219-4840-9b68-014083666b3e', 0, N'arif@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'726572d8-6a55-4e78-8825-c44133d205ed', 0, N'3cd70224-9918-48a8-a19f-1002616fd803', N'emran@gmail.com', 0, 1, NULL, N'EMRAN@GMAIL.COM', N'EMRAN@GMAIL.COM', N'AQAAAAEAACcQAAAAEDjTpd/ghalkX9NpdL8EyhiL7bS/8JxbhP84ePDQ08JPanYxE1+CIkPianB5K3X5VQ==', NULL, 0, N'9d01a6fd-d5e7-46a7-b26b-7e972aa81266', 0, N'emran@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'893c2240-d32f-42c5-b0cb-db0a1ffaaf9f', 0, N'def9f98c-5584-4505-996a-0bec2999977c', N'imran@gmail.com', 0, 1, NULL, N'IMRAN@GMAIL.COM', N'IMRAN@GMAIL.COM', N'AQAAAAEAACcQAAAAEJP5C0eXOTFJ9J0u/AI5SPB+Ts0V70sHB01VSK1NNOPWNkOoBeuTG3C8ON2M2+sBig==', N'01685678910', 0, N'9e72cd9d-a173-4062-bf81-b19eda278bc4', 0, N'imran@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'9a1423f5-9079-48f2-83d6-97fc44728a83', 0, N'e9493f83-ae8d-41fa-8917-f027558a7328', N'rashedul@gmail.com', 0, 1, NULL, N'RASHEDUL@GMAIL.COM', N'RASHEDUL@GMAIL.COM', N'AQAAAAEAACcQAAAAEJpNANmDTZDu2NttJlrUPtMbxxk0l4SkbPfaqi9QKFXopgLX2XkkXmOikm2fo7lCIA==', NULL, 0, N'bdccda4e-4c64-4189-a6b0-74e61c47187b', 0, N'rashedul@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'ec179d64-89d4-4008-87ff-79b8c52bb779', 0, N'9a826ede-a9d9-40f8-9178-f7bcbd37ffe1', N'aulad@gmail.com', 0, 1, NULL, N'AULAD@GMAIL.COM', N'AULAD@GMAIL.COM', N'AQAAAAEAACcQAAAAEKaaWsXQ3AMg7eHpkZTiQ5+zKbj8cMtyZkFrojbtTj7HX4FCLPEf5dJTucdljCw7sQ==', NULL, 0, N'0967a497-aa6e-4bd6-801b-b664cdab529c', 0, N'aulad@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'f163eeef-512a-41a2-885f-28d4891aab1d', 0, N'e7a9a36f-63af-4f5a-94b0-94cd1b4b47d5', N'semahbub@gmail.com', 0, 1, NULL, N'SEMAHBUB@GMAIL.COM', N'SEMAHBUB@GMAIL.COM', N'AQAAAAEAACcQAAAAEItkhxqhhdINESG/Bvlqgjhk4LqheP5+OLgsyQ40eyegPTBAiS3yDJCl7XdX3eeaIg==', NULL, 0, N'51eb7f83-5f3b-4d9e-a496-1ce4109bb2f3', 0, N'semahbub@gmail.com')
SET IDENTITY_INSERT [dbo].[Batch] ON 

INSERT [dbo].[Batch] ([Id], [CourseId], [InstructorId], [Number]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Batch] ([Id], [CourseId], [InstructorId], [Number]) VALUES (2, 2, 2, 1)
SET IDENTITY_INSERT [dbo].[Batch] OFF
SET IDENTITY_INSERT [dbo].[Coordinator] ON 

INSERT [dbo].[Coordinator] ([Id], [Address], [Contact], [Email], [Name]) VALUES (1, N'Savar', N'01682616777', N'imran@gmail.com', N'Md Imran Habib')
SET IDENTITY_INSERT [dbo].[Coordinator] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (1, N'6 months', N'Microsoft Asp.Net Core MVC with Sql Server 2014')
INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (2, N'4 months', N'Web Development using PHP & Laravel')
INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (3, N'4 months', N'Professional Graphics Design')
INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (4, N'4 months', N'React for Beginners')
INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (5, N'6 months', N'Python With Django')
INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (6, N'6 months', N'CCNA (Switching & Routing)')
INSERT [dbo].[Course] ([Id], [Duration], [Name]) VALUES (7, N'4 months', N'Android App Development')
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([Id], [Address], [Contact], [Email], [Name]) VALUES (1, N'Mirpur', N'01722222222', N'semahbub@gmail.com', N'Md Mahbubur Rahman')
INSERT [dbo].[Instructor] ([Id], [Address], [Contact], [Email], [Name]) VALUES (2, N'Uttara', N'01777777777', N'rashedul@gmail.com', N'Md. Rashedul Islam')
SET IDENTITY_INSERT [dbo].[Instructor] OFF
SET IDENTITY_INSERT [dbo].[Performance] ON 

INSERT [dbo].[Performance] ([Id], [Accuracy], [BatchId], [CourseId], [InstructorId], [ProgressId], [TaskId], [TraineeId]) VALUES (1, 90, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Performance] OFF
SET IDENTITY_INSERT [dbo].[Progress] ON 

INSERT [dbo].[Progress] ([Id], [BatchId], [Completed], [CourseId], [Date], [InstructorId], [TaskId], [TraineeId]) VALUES (1, 1, 100, 1, CAST(N'2019-05-17T00:00:00.0000000' AS DateTime2), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Progress] OFF
SET IDENTITY_INSERT [dbo].[Salary] ON 

INSERT [dbo].[Salary] ([Id], [BasicSalary], [Bonus], [Date], [InstructorId]) VALUES (1, 20000, 3000, CAST(N'2019-04-04T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Salary] OFF
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (1, CAST(N'2019-05-13T00:00:00.0000000' AS DateTime2), 1, 1, N'You have to create a table where odd number rows will be green color and even number rows will be blue color', 1, N'Practice bootstrap01', 1, CAST(N'2019-05-14T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (2, CAST(N'2019-05-13T00:00:00.0000000' AS DateTime2), 1, 1, N'Trainee have to design a simple log in form using html, css,bootstrap', 1, N'Practice bootstrap01', 1, CAST(N'2019-05-15T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (3, CAST(N'2019-05-16T00:00:00.0000000' AS DateTime2), 1, 1, N'Trainee have to make a form through which they can insert data into database, and they can update and delete data from the database', 1, N'Create a simple CRUD operation', 2, CAST(N'2019-05-17T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (4, CAST(N'2019-05-16T00:00:00.0000000' AS DateTime2), 1, 1, N'Trainee have to create a project to show basic CRUD operation in ASP.Net Core', 1, N'Create a simple CRUD operation', 2, CAST(N'2019-05-17T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (5, CAST(N'2019-05-16T00:00:00.0000000' AS DateTime2), 1, 2, N'Trainee have create a data input form through which they can insert data into the database by establishing the connection between input form and database', 2, N'Database Connection', 1, CAST(N'2019-05-18T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (6, CAST(N'2019-05-17T00:00:00.0000000' AS DateTime2), 1, 2, N'Trainee have update a record which has been inserted into database', 2, N'Record Update', 2, CAST(N'2019-05-18T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (7, CAST(N'2019-05-18T00:00:00.0000000' AS DateTime2), 1, 2, N'Create a relation between two table using inner join query', 2, N'Practice Inner Join', 3, CAST(N'2019-05-19T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (8, CAST(N'2019-05-19T00:00:00.0000000' AS DateTime2), 1, 1, N'Trainee have to sort the record which have been inserted into the database', 1, N'Sort the inserted data', 3, CAST(N'2019-05-20T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (9, CAST(N'2019-05-19T00:00:00.0000000' AS DateTime2), 1, 1, N'Trainee have to sort the record which have been inserted into the database', 1, N'Sort the inserted data', 3, CAST(N'2019-05-20T00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (10, CAST(N'2019-05-20T00:00:00.0000000' AS DateTime2), 1, 2, N'Trainee have make a simple login form through which an user can log in to the system', 2, N'Create a simple login form ', 4, CAST(N'2019-05-21T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (11, CAST(N'2019-05-21T00:00:00.0000000' AS DateTime2), 1, 2, N'Trainee have to make a simple sign in form through user can sign up to the system', 2, N'Create a simple Sign up form ', 5, CAST(N'2019-05-22T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (12, CAST(N'2019-05-21T00:00:00.0000000' AS DateTime2), 1, 2, N'Trainee have to sort the record which have been inserted into the database', 2, N'Sort the inserted data', 6, CAST(N'2019-05-22T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (13, CAST(N'2019-05-22T00:00:00.0000000' AS DateTime2), 1, 2, N'Trainee have to filtered the inserted data', 2, N'Filter the data', 7, CAST(N'2019-05-23T00:00:00.0000000' AS DateTime2), 3)
INSERT [dbo].[Tasks] ([Id], [AssignDate], [BatchId], [CourseId], [Description], [InstructorId], [Name], [Number], [SubmissionDate], [TraineeId]) VALUES (14, CAST(N'2019-05-23T00:00:00.0000000' AS DateTime2), 1, 2, N'Trainee have to paginate the inserted data', 2, N'Pagination', 8, CAST(N'2019-05-25T00:00:00.0000000' AS DateTime2), 3)
SET IDENTITY_INSERT [dbo].[Tasks] OFF
SET IDENTITY_INSERT [dbo].[Trainee] ON 

INSERT [dbo].[Trainee] ([Id], [Address], [BatchId], [Contact], [CourseId], [Email], [Name]) VALUES (1, N'Kuril', 1, N'01713131313', 1, N'emran@gmail.com', N'Emran Khan')
INSERT [dbo].[Trainee] ([Id], [Address], [BatchId], [Contact], [CourseId], [Email], [Name]) VALUES (2, N'Karwan Bazaar', 1, N'01945678910', 1, N'arif@gmail.com', N'Ariful Islam')
INSERT [dbo].[Trainee] ([Id], [Address], [BatchId], [Contact], [CourseId], [Email], [Name]) VALUES (3, N'Savar', 1, N'01845678910', 2, N'aulad@gmail.com', N'Aulad Hossen')
SET IDENTITY_INSERT [dbo].[Trainee] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Batch_CourseId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Batch_CourseId] ON [dbo].[Batch]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Batch_InstructorId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Batch_InstructorId] ON [dbo].[Batch]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_BatchId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Performance_BatchId] ON [dbo].[Performance]
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_CourseId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Performance_CourseId] ON [dbo].[Performance]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_InstructorId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Performance_InstructorId] ON [dbo].[Performance]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_ProgressId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Performance_ProgressId] ON [dbo].[Performance]
(
	[ProgressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_TaskId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Performance_TaskId] ON [dbo].[Performance]
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Performance_TraineeId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Performance_TraineeId] ON [dbo].[Performance]
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Progress_BatchId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Progress_BatchId] ON [dbo].[Progress]
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Progress_CourseId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Progress_CourseId] ON [dbo].[Progress]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Progress_InstructorId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Progress_InstructorId] ON [dbo].[Progress]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Progress_TaskId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Progress_TaskId] ON [dbo].[Progress]
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Progress_TraineeId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Progress_TraineeId] ON [dbo].[Progress]
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Salary_InstructorId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Salary_InstructorId] ON [dbo].[Salary]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_BatchId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_BatchId] ON [dbo].[Tasks]
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_CourseId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_CourseId] ON [dbo].[Tasks]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_InstructorId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_InstructorId] ON [dbo].[Tasks]
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tasks_TraineeId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tasks_TraineeId] ON [dbo].[Tasks]
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trainee_BatchId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Trainee_BatchId] ON [dbo].[Trainee]
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Trainee_CourseId]    Script Date: 17-May-19 11:08:06 AM ******/
CREATE NONCLUSTERED INDEX [IX_Trainee_CourseId] ON [dbo].[Trainee]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD  CONSTRAINT [FK_Batch_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Batch] CHECK CONSTRAINT [FK_Batch_Course_CourseId]
GO
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD  CONSTRAINT [FK_Batch_Instructor_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Batch] CHECK CONSTRAINT [FK_Batch_Instructor_InstructorId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Batch_BatchId] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batch] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Batch_BatchId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Course_CourseId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Instructor_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Instructor_InstructorId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Progress_ProgressId] FOREIGN KEY([ProgressId])
REFERENCES [dbo].[Progress] ([Id])
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Progress_ProgressId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Tasks_TaskId] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Tasks] ([Id])
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Tasks_TaskId]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Trainee_TraineeId] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainee] ([Id])
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Trainee_TraineeId]
GO
ALTER TABLE [dbo].[Progress]  WITH CHECK ADD  CONSTRAINT [FK_Progress_Batch_BatchId] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batch] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Progress] CHECK CONSTRAINT [FK_Progress_Batch_BatchId]
GO
ALTER TABLE [dbo].[Progress]  WITH CHECK ADD  CONSTRAINT [FK_Progress_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Progress] CHECK CONSTRAINT [FK_Progress_Course_CourseId]
GO
ALTER TABLE [dbo].[Progress]  WITH CHECK ADD  CONSTRAINT [FK_Progress_Instructor_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
GO
ALTER TABLE [dbo].[Progress] CHECK CONSTRAINT [FK_Progress_Instructor_InstructorId]
GO
ALTER TABLE [dbo].[Progress]  WITH CHECK ADD  CONSTRAINT [FK_Progress_Tasks_TaskId] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Tasks] ([Id])
GO
ALTER TABLE [dbo].[Progress] CHECK CONSTRAINT [FK_Progress_Tasks_TaskId]
GO
ALTER TABLE [dbo].[Progress]  WITH CHECK ADD  CONSTRAINT [FK_Progress_Trainee_TraineeId] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainee] ([Id])
GO
ALTER TABLE [dbo].[Progress] CHECK CONSTRAINT [FK_Progress_Trainee_TraineeId]
GO
ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [FK_Salary_Instructor_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [FK_Salary_Instructor_InstructorId]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Batch_BatchId] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batch] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Batch_BatchId]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Course_CourseId]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Instructor_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Instructor_InstructorId]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Trainee_TraineeId] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainee] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Trainee_TraineeId]
GO
ALTER TABLE [dbo].[Trainee]  WITH CHECK ADD  CONSTRAINT [FK_Trainee_Batch_BatchId] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batch] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Trainee] CHECK CONSTRAINT [FK_Trainee_Batch_BatchId]
GO
ALTER TABLE [dbo].[Trainee]  WITH CHECK ADD  CONSTRAINT [FK_Trainee_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Trainee] CHECK CONSTRAINT [FK_Trainee_Course_CourseId]
GO
USE [master]
GO
ALTER DATABASE [TMSDB] SET  READ_WRITE 
GO
