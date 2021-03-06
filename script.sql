USE [master1]
GO
/****** Object:  Database [db_ncc]    Script Date: 03-04-2018 13:11:55 ******/
CREATE DATABASE [db_ncc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_ncc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\db_ncc.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_ncc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\db_ncc_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [db_ncc] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_ncc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_ncc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_ncc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_ncc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_ncc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_ncc] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_ncc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_ncc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_ncc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_ncc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_ncc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_ncc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_ncc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_ncc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_ncc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_ncc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_ncc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_ncc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_ncc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_ncc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_ncc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_ncc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_ncc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_ncc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_ncc] SET  MULTI_USER 
GO
ALTER DATABASE [db_ncc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_ncc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_ncc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_ncc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_ncc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_ncc] SET QUERY_STORE = OFF
GO
USE [db_ncc]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [db_ncc]
GO
/****** Object:  Table [dbo].[tb_login]    Script Date: 03-04-2018 13:11:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_login](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_application_form]    Script Date: 03-04-2018 13:11:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_application_form](
	[full_name] [varchar](50) NULL,
	[father_name] [varchar](50) NULL,
	[mother_name] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[near_railway_stn] [varchar](50) NULL,
	[near_police_stn] [varchar](50) NULL,
	[phone_no] [varchar](50) NULL,
	[blood_group] [varchar](50) NULL,
	[sex] [varchar](50) NULL,
	[qualification] [varchar](50) NULL,
	[college_stream] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[adhar_no] [varchar](50) NULL,
	[ifsc_code] [varchar](50) NULL,
	[bank_acc_no] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[FormNumber] [varchar](50) NULL,
	[rollno] [varchar](50) NULL,
	[status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_army_exam_book]    Script Date: 03-04-2018 13:11:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_army_exam_book](
	[book_name] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[url] [varchar](50) NULL,
	[description] [varchar](50) NULL,
	[image] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_army_rally_info]    Script Date: 03-04-2018 13:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_army_rally_info](
	[rally_name] [varchar](50) NULL,
	[district] [varchar](50) NULL,
	[qualification] [varchar](50) NULL,
	[post] [varchar](50) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_camp_update]    Script Date: 03-04-2018 13:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_camp_update](
	[camp_name] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[vacancy] [varchar](50) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_check_status]    Script Date: 03-04-2018 13:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_check_status](
	[college_roll_no] [nchar](10) NULL,
	[status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_demo_paper]    Script Date: 03-04-2018 13:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_demo_paper](
	[paper_name] [varchar](50) NULL,
	[year] [varchar](50) NULL,
	[description] [varchar](500) NULL,
	[url] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_event_details]    Script Date: 03-04-2018 13:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_event_details](
	[event_name] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[time] [varchar](50) NULL,
	[no_of_cdt] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_exam_details]    Script Date: 03-04-2018 13:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_exam_details](
	[exam_name] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[time] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[description] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_form]    Script Date: 03-04-2018 13:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_form](
	[name] [varchar](50) NULL,
	[rollno] [varchar](50) NULL,
	[section] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_jobs]    Script Date: 03-04-2018 13:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_jobs](
	[Company_name] [varchar](50) NULL,
	[Post_name] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[Description] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_weekly_pared_info]    Script Date: 03-04-2018 13:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_weekly_pared_info](
	[location] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[time] [varchar](50) NULL,
	[description] [varchar](50) NULL
) ON [PRIMARY]
GO
USE [master1]
GO
ALTER DATABASE [db_ncc] SET  READ_WRITE 
GO
