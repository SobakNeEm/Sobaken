USE [master]
GO
/****** Object:  Database [Robotov.NET]    Script Date: 24.04.2023 17:43:04 ******/
CREATE DATABASE [Robotov.NET]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Robotov.NET', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Robotov.NET.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Robotov.NET_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Robotov.NET_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Robotov.NET] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Robotov.NET].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Robotov.NET] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Robotov.NET] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Robotov.NET] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Robotov.NET] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Robotov.NET] SET ARITHABORT OFF 
GO
ALTER DATABASE [Robotov.NET] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Robotov.NET] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Robotov.NET] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Robotov.NET] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Robotov.NET] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Robotov.NET] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Robotov.NET] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Robotov.NET] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Robotov.NET] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Robotov.NET] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Robotov.NET] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Robotov.NET] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Robotov.NET] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Robotov.NET] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Robotov.NET] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Robotov.NET] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Robotov.NET] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Robotov.NET] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Robotov.NET] SET  MULTI_USER 
GO
ALTER DATABASE [Robotov.NET] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Robotov.NET] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Robotov.NET] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Robotov.NET] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Robotov.NET] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Robotov.NET] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Robotov.NET] SET QUERY_STORE = OFF
GO
USE [Robotov.NET]
GO
/****** Object:  Table [dbo].[Группы]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Группы](
	[ГруппыId] [int] NOT NULL,
	[СпециальностьГруппы] [int] NULL,
	[КоличествоСтудентовВГруппе] [int] NULL,
	[КоличествоСвободныхМестВГруппе] [int] NULL,
	[ПрефиксГруппы] [int] NULL,
	[КурсГруппы] [int] NULL,
	[ДатаФормирования] [date] NULL,
	[ДатаОкончанияОбучения] [date] NULL,
	[КлассныйРуководитель] [int] NULL,
 CONSTRAINT [PK_Группы] PRIMARY KEY CLUSTERED 
(
	[ГруппыId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Занятие]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Занятие](
	[ЗанятиеId] [int] IDENTITY(1,1) NOT NULL,
	[Дата] [date] NULL,
 CONSTRAINT [PK_Занятие] PRIMARY KEY CLUSTERED 
(
	[ЗанятиеId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заявки на поступление]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заявки на поступление](
	[ЗаявкаId] [int] NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
	[ДатаРождения] [date] NULL,
	[МестоОбучения] [nvarchar](50) NULL,
	[Аттестат] [int] NULL,
	[НомерТелефона] [nvarchar](50) NULL,
	[ЭлектроннаяПочта] [nvarchar](50) NULL,
	[СтатусЗаявки] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Курс]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Курс](
	[КурсId] [int] NOT NULL,
	[НаиминованиеКурса] [nvarchar](50) NULL,
 CONSTRAINT [PK_Курс] PRIMARY KEY CLUSTERED 
(
	[КурсId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Посещаемость]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Посещаемость](
	[ПосещаемостьId] [int] NOT NULL,
	[НаиминованиеПосещаемости] [nvarchar](50) NULL,
 CONSTRAINT [PK_Посещаемость] PRIMARY KEY CLUSTERED 
(
	[ПосещаемостьId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Преподаватели]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Преподаватели](
	[ПреподавателяId] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
	[ДатаРождения] [date] NULL,
	[ЭлектроннаяПочта] [nvarchar](50) NULL,
	[НомерТелефона] [nvarchar](50) NULL,
	[ПедагогическийСтаж] [int] NULL,
	[ФотографияПреподавателя] [int] NULL,
	[Логин] [nvarchar](50) NULL,
	[Пароль] [nvarchar](50) NULL,
 CONSTRAINT [PK_Преподаватели] PRIMARY KEY CLUSTERED 
(
	[ПреподавателяId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Префикс]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Префикс](
	[ПрефиксId] [int] NOT NULL,
	[НаиминованиеПрефиксГруппы] [nvarchar](50) NULL,
 CONSTRAINT [PK_Префикс] PRIMARY KEY CLUSTERED 
(
	[ПрефиксId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пропуски]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пропуски](
	[ПропускиId] [int] IDENTITY(1,1) NOT NULL,
	[СтудентаId] [int] NULL,
	[ЗанятиеId] [int] NULL,
 CONSTRAINT [PK_Пропуски] PRIMARY KEY CLUSTERED 
(
	[ПропускиId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Специальность]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Специальность](
	[СпециальностьId] [int] NOT NULL,
	[НаиминованиеСпециальности] [nvarchar](50) NULL,
 CONSTRAINT [PK_Специальность] PRIMARY KEY CLUSTERED 
(
	[СпециальностьId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус](
	[СтатусId] [int] NOT NULL,
	[НаиминованиеСтатуса] [nvarchar](50) NULL,
 CONSTRAINT [PK_Статус] PRIMARY KEY CLUSTERED 
(
	[СтатусId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[СтудентаСтатус]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[СтудентаСтатус](
	[СтудентаСтатусId] [int] NOT NULL,
	[НаиминованиеСтудентаСтатуса] [nvarchar](50) NULL,
 CONSTRAINT [PK_СтудентаСтатус] PRIMARY KEY CLUSTERED 
(
	[СтудентаСтатусId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Студенты]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Студенты](
	[СтудентаId] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
	[ДатаРождения] [date] NULL,
	[Группа] [int] NULL,
	[СтатусСтудента] [int] NULL,
	[ФормаОбучения] [int] NULL,
	[ДатаЗачисления] [date] NULL,
	[ДатаВыбытия] [date] NULL,
	[НомерТелефона] [nvarchar](12) NULL,
	[ПосещаемостьСтудента] [int] NULL,
 CONSTRAINT [PK_Студенты] PRIMARY KEY CLUSTERED 
(
	[СтудентаId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Фотографии]    Script Date: 24.04.2023 17:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Фотографии](
	[ФотографияId] [int] NOT NULL,
	[Фотография] [nvarchar](max) NULL,
 CONSTRAINT [PK_Фотографии] PRIMARY KEY CLUSTERED 
(
	[ФотографияId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Группы]  WITH CHECK ADD  CONSTRAINT [FK_Группы_Курс] FOREIGN KEY([КурсГруппы])
REFERENCES [dbo].[Курс] ([КурсId])
GO
ALTER TABLE [dbo].[Группы] CHECK CONSTRAINT [FK_Группы_Курс]
GO
ALTER TABLE [dbo].[Группы]  WITH CHECK ADD  CONSTRAINT [FK_Группы_Преподаватели] FOREIGN KEY([КлассныйРуководитель])
REFERENCES [dbo].[Преподаватели] ([ПреподавателяId])
GO
ALTER TABLE [dbo].[Группы] CHECK CONSTRAINT [FK_Группы_Преподаватели]
GO
ALTER TABLE [dbo].[Группы]  WITH CHECK ADD  CONSTRAINT [FK_Группы_Префикс] FOREIGN KEY([ПрефиксГруппы])
REFERENCES [dbo].[Префикс] ([ПрефиксId])
GO
ALTER TABLE [dbo].[Группы] CHECK CONSTRAINT [FK_Группы_Префикс]
GO
ALTER TABLE [dbo].[Группы]  WITH CHECK ADD  CONSTRAINT [FK_Группы_Специальность] FOREIGN KEY([СпециальностьГруппы])
REFERENCES [dbo].[Специальность] ([СпециальностьId])
GO
ALTER TABLE [dbo].[Группы] CHECK CONSTRAINT [FK_Группы_Специальность]
GO
ALTER TABLE [dbo].[Заявки на поступление]  WITH CHECK ADD  CONSTRAINT [FK_Заявки на поступление_Статус] FOREIGN KEY([СтатусЗаявки])
REFERENCES [dbo].[Статус] ([СтатусId])
GO
ALTER TABLE [dbo].[Заявки на поступление] CHECK CONSTRAINT [FK_Заявки на поступление_Статус]
GO
ALTER TABLE [dbo].[Преподаватели]  WITH CHECK ADD  CONSTRAINT [FK_Преподаватели_Фотографии] FOREIGN KEY([ФотографияПреподавателя])
REFERENCES [dbo].[Фотографии] ([ФотографияId])
GO
ALTER TABLE [dbo].[Преподаватели] CHECK CONSTRAINT [FK_Преподаватели_Фотографии]
GO
ALTER TABLE [dbo].[Пропуски]  WITH CHECK ADD  CONSTRAINT [FK_Пропуски_Занятие] FOREIGN KEY([ЗанятиеId])
REFERENCES [dbo].[Занятие] ([ЗанятиеId])
GO
ALTER TABLE [dbo].[Пропуски] CHECK CONSTRAINT [FK_Пропуски_Занятие]
GO
ALTER TABLE [dbo].[Пропуски]  WITH CHECK ADD  CONSTRAINT [FK_Пропуски_Студенты] FOREIGN KEY([СтудентаId])
REFERENCES [dbo].[Студенты] ([СтудентаId])
GO
ALTER TABLE [dbo].[Пропуски] CHECK CONSTRAINT [FK_Пропуски_Студенты]
GO
ALTER TABLE [dbo].[Студенты]  WITH CHECK ADD  CONSTRAINT [FK_Студенты_Группы] FOREIGN KEY([Группа])
REFERENCES [dbo].[Группы] ([ГруппыId])
GO
ALTER TABLE [dbo].[Студенты] CHECK CONSTRAINT [FK_Студенты_Группы]
GO
ALTER TABLE [dbo].[Студенты]  WITH CHECK ADD  CONSTRAINT [FK_Студенты_СтудентаСтатус] FOREIGN KEY([СтатусСтудента])
REFERENCES [dbo].[СтудентаСтатус] ([СтудентаСтатусId])
GO
ALTER TABLE [dbo].[Студенты] CHECK CONSTRAINT [FK_Студенты_СтудентаСтатус]
GO
USE [master]
GO
ALTER DATABASE [Robotov.NET] SET  READ_WRITE 
GO
