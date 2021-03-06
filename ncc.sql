USE [ncc]
GO
/****** Object:  Table [dbo].[tbl_weekly_pared_info]    Script Date: 03/28/2018 11:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_weekly_pared_info](
	[location] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[time] [varchar](50) NULL,
	[description] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_jobs]    Script Date: 03/28/2018 11:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_jobs](
	[Company_name] [varchar](50) NULL,
	[Post_name] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[Description] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_jobs] ([Company_name], [Post_name], [Qualification], [Description]) VALUES (N'TCS', N'Software Developer', N'BScIT', N'Job for software development')
INSERT [dbo].[tbl_jobs] ([Company_name], [Post_name], [Qualification], [Description]) VALUES (N'TCS', N'Software Developer', N'BScIT', N'Jobs')
INSERT [dbo].[tbl_jobs] ([Company_name], [Post_name], [Qualification], [Description]) VALUES (N'TCS', N'Software Developer', N'BScIT', N'ok')
INSERT [dbo].[tbl_jobs] ([Company_name], [Post_name], [Qualification], [Description]) VALUES (N'TCS', N'Software Developer', N'BScIT', N'okay')
INSERT [dbo].[tbl_jobs] ([Company_name], [Post_name], [Qualification], [Description]) VALUES (N'TCS', N'Software Developer', N'BScIT', N'kk')
/****** Object:  Table [dbo].[tbl_exam_details]    Script Date: 03/28/2018 11:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_exam_details](
	[exam_name] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[time] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[description] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_exam_details] ([exam_name], [location], [time], [date], [description]) VALUES (N'TCS', N'virar', N'10', N'19/3/2018', N'kk')
/****** Object:  Table [dbo].[tbl_event_details]    Script Date: 03/28/2018 11:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_event_details](
	[event_name] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[time] [varchar](50) NULL,
	[no_of_cdt] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_event_details] ([event_name], [location], [date], [time], [no_of_cdt]) VALUES (N'a', N'a', N'19/3/2018', N'5', N'8')
/****** Object:  Table [dbo].[tbl_demo_paper]    Script Date: 03/28/2018 11:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_demo_paper](
	[paper_name] [varchar](50) NULL,
	[year] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_camp_update]    Script Date: 03/28/2018 11:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_camp_update](
	[camp_name] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[vacancy] [varchar](50) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_camp_update] ([camp_name], [location], [vacancy], [date]) VALUES (N'TCS', N'virar', N'a', N'19/3/2018')
/****** Object:  Table [dbo].[tbl_army_rally_info]    Script Date: 03/28/2018 11:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_army_rally_info](
	[rally_name] [varchar](50) NULL,
	[district] [varchar](50) NULL,
	[qualification] [varchar](50) NULL,
	[post] [varchar](50) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_army_rally_info] ([rally_name], [district], [qualification], [post], [date]) VALUES (N'TCS', N'palghar', N'BScIT', N'a', N'19/3/2018')
/****** Object:  Table [dbo].[tbl_army_exam_book]    Script Date: 03/28/2018 11:43:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_army_exam_book](
	[book_name] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[image] [image] NULL,
	[url] [varchar](50) NULL,
	[description] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_army_exam_book] ([book_name], [price], [image], [url], [description]) VALUES (N'abc', N'250', 0x786376, N'dfghj', N'dfghj')
/****** Object:  Table [dbo].[tbl_application_form]    Script Date: 03/28/2018 11:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
