USE [master]
GO
/****** Object:  Database [03.06.24vzcybrjd\]    Script Date: 03.06.2024 13:19:13 ******/
CREATE DATABASE [03.06.24vzcybrjd\]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'03.06.24vzcybrjd_', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\03.06.24vzcybrjd_.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'03.06.24vzcybrjd__log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\03.06.24vzcybrjd__log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [03.06.24vzcybrjd\].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET ARITHABORT OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET  DISABLE_BROKER 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET RECOVERY FULL 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET  MULTI_USER 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET DB_CHAINING OFF 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [03.06.24vzcybrjd\]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 03.06.2024 13:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Code] [nchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 03.06.2024 13:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CountOfStars] [int] NULL,
	[CountryCode] [nchar](10) NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotelimage]    Script Date: 03.06.2024 13:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotelimage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Hotelid] [int] NULL,
	[ImageSource] [nvarchar](50) NULL,
 CONSTRAINT [PK_Hotelimage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotellcommetry]    Script Date: 03.06.2024 13:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotellcommetry](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Hotelid] [int] NULL,
	[Text] [nvarchar](max) NULL,
	[Author] [nvarchar](50) NULL,
	[CreationDate] [datetime] NULL,
 CONSTRAINT [PK_Hotellcommetry] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelOfTour]    Script Date: 03.06.2024 13:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelOfTour](
	[HotelId] [int] NOT NULL,
	[TourId] [int] NOT NULL,
 CONSTRAINT [PK_HotelOfTour] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC,
	[TourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 03.06.2024 13:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TicketCount] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePreview] [nvarchar](max) NULL,
	[Price] [money] NOT NULL,
	[isActual] [bit] NOT NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 03.06.2024 13:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Desxription] [nvarchar](max) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfTour]    Script Date: 03.06.2024 13:19:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfTour](
	[TourId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
 CONSTRAINT [PK_TypeOfTour] PRIMARY KEY CLUSTERED 
(
	[TourId] ASC,
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Country] ([Code], [Name]) VALUES (N'ch        ', N'Китай')
INSERT [dbo].[Country] ([Code], [Name]) VALUES (N'en        ', N'Англия')
INSERT [dbo].[Country] ([Code], [Name]) VALUES (N'ru        ', N'Россия')
GO
SET IDENTITY_INSERT [dbo].[Hotel] ON 

INSERT [dbo].[Hotel] ([id], [Name], [CountOfStars], [CountryCode]) VALUES (1, N'Космос', 5, N'ru        ')
INSERT [dbo].[Hotel] ([id], [Name], [CountOfStars], [CountryCode]) VALUES (2, N'Украина', 5, N'ru        ')
INSERT [dbo].[Hotel] ([id], [Name], [CountOfStars], [CountryCode]) VALUES (3, N'Four Seasons', 5, N'ru        ')
INSERT [dbo].[Hotel] ([id], [Name], [CountOfStars], [CountryCode]) VALUES (4, N'Тереза', 5, N'ch        ')
SET IDENTITY_INSERT [dbo].[Hotel] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotellcommetry] ON 

INSERT [dbo].[Hotellcommetry] ([id], [Hotelid], [Text], [Author], [CreationDate]) VALUES (1, 1, N'Замечательный', N'Иванов Иван', CAST(N'2024-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Hotellcommetry] ([id], [Hotelid], [Text], [Author], [CreationDate]) VALUES (2, 2, N'Лучший отель', N'Джон Дое', CAST(N'2024-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Hotellcommetry] ([id], [Hotelid], [Text], [Author], [CreationDate]) VALUES (3, 3, N'Есть к чему стремиться', N'Мария', CAST(N'2024-02-17T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Hotellcommetry] OFF
GO
INSERT [dbo].[HotelOfTour] ([HotelId], [TourId]) VALUES (1, 16)
INSERT [dbo].[HotelOfTour] ([HotelId], [TourId]) VALUES (2, 18)
INSERT [dbo].[HotelOfTour] ([HotelId], [TourId]) VALUES (3, 19)
INSERT [dbo].[HotelOfTour] ([HotelId], [TourId]) VALUES (4, 20)
GO
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([Id], [TicketCount], [Name], [Description], [ImagePreview], [Price], [isActual]) VALUES (16, 127, N'Болгарское нследие', NULL, NULL, 3570.0000, 1)
INSERT [dbo].[Tour] ([Id], [TicketCount], [Name], [Description], [ImagePreview], [Price], [isActual]) VALUES (18, 92, N'Волшебный Восток', NULL, NULL, 77100.0000, 1)
INSERT [dbo].[Tour] ([Id], [TicketCount], [Name], [Description], [ImagePreview], [Price], [isActual]) VALUES (19, 72, N'Город с большими огнями', NULL, NULL, 93300.0000, 1)
INSERT [dbo].[Tour] ([Id], [TicketCount], [Name], [Description], [ImagePreview], [Price], [isActual]) VALUES (20, 143, N'Город четырех ветров', NULL, NULL, 72500.0000, 1)
SET IDENTITY_INSERT [dbo].[Tour] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([Id], [Name], [Desxription]) VALUES (1, N'международный', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Desxription]) VALUES (2, N'внутрений', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Desxription]) VALUES (3, N'специализированный детский', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Desxription]) VALUES (4, N'экскурсионный', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Desxription]) VALUES (5, N'лечебно-оздоровительный', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Desxription]) VALUES (6, N'культурно-исторический', NULL)
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
INSERT [dbo].[TypeOfTour] ([TourId], [TypeId]) VALUES (16, 1)
INSERT [dbo].[TypeOfTour] ([TourId], [TypeId]) VALUES (18, 2)
INSERT [dbo].[TypeOfTour] ([TourId], [TypeId]) VALUES (18, 3)
INSERT [dbo].[TypeOfTour] ([TourId], [TypeId]) VALUES (19, 4)
INSERT [dbo].[TypeOfTour] ([TourId], [TypeId]) VALUES (20, 5)
INSERT [dbo].[TypeOfTour] ([TourId], [TypeId]) VALUES (20, 6)
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([Code])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_Country]
GO
ALTER TABLE [dbo].[Hotelimage]  WITH CHECK ADD  CONSTRAINT [FK_Hotelimage_Hotel] FOREIGN KEY([Hotelid])
REFERENCES [dbo].[Hotel] ([id])
GO
ALTER TABLE [dbo].[Hotelimage] CHECK CONSTRAINT [FK_Hotelimage_Hotel]
GO
ALTER TABLE [dbo].[Hotellcommetry]  WITH CHECK ADD  CONSTRAINT [FK_Hotellcommetry_Hotel] FOREIGN KEY([Hotelid])
REFERENCES [dbo].[Hotel] ([id])
GO
ALTER TABLE [dbo].[Hotellcommetry] CHECK CONSTRAINT [FK_Hotellcommetry_Hotel]
GO
ALTER TABLE [dbo].[HotelOfTour]  WITH CHECK ADD  CONSTRAINT [FK_HotelOfTour_Hotel] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotel] ([id])
GO
ALTER TABLE [dbo].[HotelOfTour] CHECK CONSTRAINT [FK_HotelOfTour_Hotel]
GO
ALTER TABLE [dbo].[HotelOfTour]  WITH CHECK ADD  CONSTRAINT [FK_HotelOfTour_Tour] FOREIGN KEY([TourId])
REFERENCES [dbo].[Tour] ([Id])
GO
ALTER TABLE [dbo].[HotelOfTour] CHECK CONSTRAINT [FK_HotelOfTour_Tour]
GO
ALTER TABLE [dbo].[TypeOfTour]  WITH CHECK ADD  CONSTRAINT [FK_TypeOfTour_Tour] FOREIGN KEY([TourId])
REFERENCES [dbo].[Tour] ([Id])
GO
ALTER TABLE [dbo].[TypeOfTour] CHECK CONSTRAINT [FK_TypeOfTour_Tour]
GO
ALTER TABLE [dbo].[TypeOfTour]  WITH CHECK ADD  CONSTRAINT [FK_TypeOfTour_Type] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[TypeOfTour] CHECK CONSTRAINT [FK_TypeOfTour_Type]
GO
USE [master]
GO
ALTER DATABASE [03.06.24vzcybrjd\] SET  READ_WRITE 
GO
