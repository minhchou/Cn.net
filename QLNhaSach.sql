Create database [QLNHASACH]
GO
USE [QLNHASACH]
GO

/****** Object:  Table [dbo].[Danh_Muc]
SET ANSI_NULLS
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danh_Muc](
	[Ma_DM] [nchar](10) NULL,
	[Ten_DM] [nchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Don_Hang]  
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Don_Hang](
	[ID] [nchar](10) NULL,
	[date] [date] NULL,
	[ID_KH] [nchar](10) NULL,
	[discount] [nchar](10) NULL,
	[total_discount] [int] NULL,
	[total] [int] NULL,
	[ID_NV] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportDetail]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportDetail](
	[id_import] [nchar](10) NULL,
	[MA_SP] [nchar](10) NULL,
	[SoLuong] [nchar](10) NULL,
	[Gia] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Imports] 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imports](
	[ID] [nchar](10) NULL,
	[date] [date] NULL,
	[total] [int] NULL,
	[note] [nchar](255) NULL,
	[confim_import] [nchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khach_Hang]  
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khach_Hang](
	[Ma_KH] [nchar](10) NULL,
	[Ten_KH] [nchar](255) NULL,
	[SDT_KH] [nchar](11) NULL,
	[DIEM] [int] NULL,
	[DiaChi] [nchar](255) NULL,
	[Sex] [nchar](10) NULL,
	[Email] [nchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[San_Pham]  
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[San_Pham](
	[Ma_SP] [nchar](10) NULL,
	[Ten_SP] [nchar](255) NULL,
	[Image] [nchar](255) NULL,
	[Note] [nchar](255) NULL,
	[NgayTao] [datetime] NULL,
	[Ma_DM] [nchar](10) NULL,
	[Price] [int] NULL,
	[stock] [int] NULL,
	[stock_mini] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SO_detail]   
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SO_detail](
	[ID_SO] [nchar](10) NULL,
	[MA_SP] [nchar](10) NULL,
	[So_Luong] [int] NULL,
	[Gia] [int] NULL,
	[total] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[userd]    
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userd](
	[name] [nchar](255) NULL,
	[account] [nchar](255) NULL,
	[password] [nchar](255) NULL,
	[role] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Danh_Muc] ([Ma_DM], [Ten_DM]) VALUES (N'DM01      ', N'Truyện Tranh                                                                                                                                                                                                                                                   ')
INSERT [dbo].[Danh_Muc] ([Ma_DM], [Ten_DM]) VALUES (N'DM02      ', N'Lịch Sử                                                                                                                                                                                                                                                        ')
INSERT [dbo].[Danh_Muc] ([Ma_DM], [Ten_DM]) VALUES (N'DM03      ', N'Khoa Học                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Danh_Muc] ([Ma_DM], [Ten_DM]) VALUES (N'DM04      ', N'Toán Học                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Danh_Muc] ([Ma_DM], [Ten_DM]) VALUES (N'DM07      ', N'Hóa Học                                                                                                                                                                                                                                                        ')
INSERT [dbo].[Danh_Muc] ([Ma_DM], [Ten_DM]) VALUES (N'DM06      ', N'Văn Học                                                                                                                                                                                                                                                        ')
INSERT [dbo].[Danh_Muc] ([Ma_DM], [Ten_DM]) VALUES (N'DM07      ', N'Dạy nấu ăn                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Don_Hang] ([ID], [date], [ID_KH], [discount], [total_discount], [total], [ID_NV]) VALUES (N'SO01      ', CAST(0x0E420B00 AS Date), N'KH02      ', N'10        ', 3200, 28800, N'1         ')
INSERT [dbo].[ImportDetail] ([id_import], [MA_SP], [SoLuong], [Gia]) VALUES (N'NK01      ', N'1         ', N'23        ', N'200000    ')
INSERT [dbo].[ImportDetail] ([id_import], [MA_SP], [SoLuong], [Gia]) VALUES (N'NK02      ', N'SP01      ', N'1         ', N'23        ')
INSERT [dbo].[Imports] ([ID], [date], [total], [note], [confim_import]) VALUES (N'NK01      ', CAST(0xF9410B00 AS Date), 4600000, N'                                                                                                                                                                                                                                                               ', N'Chưa Duyệt                                                                                          ')
INSERT [dbo].[Imports] ([ID], [date], [total], [note], [confim_import]) VALUES (N'NK02      ', CAST(0x02420B00 AS Date), 23, N'                                                                                                                                                                                                                                                               ', N'Chưa Duyệt                                                                                          ')
INSERT [dbo].[Khach_Hang] ([Ma_KH], [Ten_KH], [SDT_KH], [DIEM], [DiaChi], [Sex], [Email]) VALUES (N'KH01      ', N'Nguyễn Văn B                                                                                                                                                                                                                                                   ', N'0836584528 ', 0, N'                                                                                                                                                                                                                                                               ', N'Nam       ', N'                                                                                                    ')
INSERT [dbo].[Khach_Hang] ([Ma_KH], [Ten_KH], [SDT_KH], [DIEM], [DiaChi], [Sex], [Email]) VALUES (N'KH02      ', N'Nguyễn văn A                                                                                                                                                                                                                                                   ', N'123        ', 194, N'1234                                                                                                                                                                                                                                                           ', N'Nam       ', N'123@gmail.com                                                                                       ')
INSERT [dbo].[Khach_Hang] ([Ma_KH], [Ten_KH], [SDT_KH], [DIEM], [DiaChi], [Sex], [Email]) VALUES (N'KH03      ', N'Nguyễn Văn c                                                                                                                                                                                                                                                   ', N'083658452  ', 0, N'                                                                                                                                                                                                                                                               ', N'Nam       ', N'                                                                                                    ')
INSERT [dbo].[Khach_Hang] ([Ma_KH], [Ten_KH], [SDT_KH], [DIEM], [DiaChi], [Sex], [Email]) VALUES (N'KH04      ', N'Nguyễn Văn D                                                                                                                                                                                                                                                   ', N'0836582328 ', 0, N'                                                                                                                                                                                                                                                               ', N'Nam       ', N'                                                                                                    ')
INSERT [dbo].[San_Pham] ([Ma_SP], [Ten_SP], [Image], [Note], [NgayTao], [Ma_DM], [Price], [stock], [stock_mini]) VALUES (N'SP01      ', N'Toán Lớp 12                                                                                                                                                                                                                                                    ', N'U8Q4R_sach-giao-khoa-giai-tich-12.jpg                                                                                                                                                                                                                          ', N'                                                                                                                                                                                                                                                               ', CAST(0x0000AC9400000000 AS DateTime), N'DM01      ', 32000, 21, 5)
INSERT [dbo].[San_Pham] ([Ma_SP], [Ten_SP], [Image], [Note], [NgayTao], [Ma_DM], [Price], [stock], [stock_mini]) VALUES (N'SP02      ', N'Ngữ Văn Lớp 12                                                                                                                                                                                                                                                 ', N'K1QQQ_ngu_van-lop-12.jpg                                                                                                                                                                                                                                       ', N'                                                                                                                                                                                                                                                               ', CAST(0x0000AC9400000000 AS DateTime), N'DM01      ', 50000, 2, 2)
INSERT [dbo].[San_Pham] ([Ma_SP], [Ten_SP], [Image], [Note], [NgayTao], [Ma_DM], [Price], [stock], [stock_mini]) VALUES (N'SP03      ', N'Truyện doremon                                                                                                                                                                                                                                                 ', N'30ZJ1_45_6.jpg                                                                                                                                                                                                                                                 ', N'                                                                                                                                                                                                                                                               ', CAST(0x0000ACB300000000 AS DateTime), N'DM01      ', 80000, 0, 0)
INSERT [dbo].[San_Pham] ([Ma_SP], [Ten_SP], [Image], [Note], [NgayTao], [Ma_DM], [Price], [stock], [stock_mini]) VALUES (N'SP04      ', N'Truyện songoku                                                                                                                                                                                                                                                 ', N'6ZTGV_dragon-ball-bay-vien-ngoc-rong.jpg                                                                                                                                                                                                                       ', N'                                                                                                                                                                                                                                                               ', CAST(0x0000ACB300000000 AS DateTime), N'DM01      ', 20000, 0, 20)
INSERT [dbo].[San_Pham] ([Ma_SP], [Ten_SP], [Image], [Note], [NgayTao], [Ma_DM], [Price], [stock], [stock_mini]) VALUES (N'SP05      ', N'Hóa Học lớp 11                                                                                                                                                                                                                                                 ', N'WA0WR_Hoa-hoc-11-814256-2.jpg                                                                                                                                                                                                                                  ', N'                                                                                                                                                                                                                                                               ', CAST(0x0000ACB300000000 AS DateTime), N'DM07      ', 35000, 0, 20)
INSERT [dbo].[San_Pham] ([Ma_SP], [Ten_SP], [Image], [Note], [NgayTao], [Ma_DM], [Price], [stock], [stock_mini]) VALUES (N'SP06      ', N'Lịch sử 11                                                                                                                                                                                                                                                     ', N'C9IHV_Lich-su-11-216880-2.jpg                                                                                                                                                                                                                                  ', N'                                                                                                                                                                                                                                                               ', CAST(0x0000ACB300000000 AS DateTime), N'DM02      ', 25000, 0, 2)
INSERT [dbo].[San_Pham] ([Ma_SP], [Ten_SP], [Image], [Note], [NgayTao], [Ma_DM], [Price], [stock], [stock_mini]) VALUES (N'SP07      ', N'Dạy nấu ăn                                                                                                                                                                                                                                                     ', N'G7PBF_sach-day-nau-an-200-mon-an-truyen-thong.jpg                                                                                                                                                                                                              ', N'                                                                                                                                                                                                                                                               ', CAST(0x0000ACB300000000 AS DateTime), N'DM02      ', 50000, 0, 2)
INSERT [dbo].[SO_detail] ([ID_SO], [MA_SP], [So_Luong], [Gia], [total]) VALUES (N'SO01      ', N'SP01      ', 1, 32000, 32000)
SET IDENTITY_INSERT [dbo].[userd] ON 

INSERT [dbo].[userd] ([name], [account], [password], [role], [id]) VALUES (N'Nguyễn Ngọc Bích Thanh', N'9999', N'202CB962AC59075B964B07152D234B71', 1, 1)
INSERT [dbo].[userd] ([name], [account], [password], [role], [id]) VALUES (N'Phan Đình hiếu ', N'3333', N'202CB962AC59075B964B07152D234B71', 1, 2)
SET IDENTITY_INSERT [dbo].[userd] ON