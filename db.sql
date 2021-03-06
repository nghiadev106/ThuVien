USE [ThuVien]
GO
/****** Object:  Table [dbo].[chitietmuontra]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietmuontra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ngaymuon] [datetime] NULL,
	[ngaytra] [datetime] NULL,
	[trangthai] [bit] NULL,
	[masach] [int] NULL,
	[maphieu] [varchar](20) NULL,
	[macabiet] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietphieunhap]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietphieunhap](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[soluong] [int] NULL,
	[masach] [int] NULL,
	[maphieunhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietphieutam]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietphieutam](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trangthai] [bit] NULL,
	[masach] [int] NULL,
	[maphieutam] [int] NULL,
	[macabiet] [int] NULL,
 CONSTRAINT [PK_chitietphieutam] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[docgia]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[docgia](
	[sothe] [varchar](20) NOT NULL,
	[password] [varchar](50) NULL,
	[tendocgia] [nvarchar](100) NULL,
	[ngaysinh] [datetime] NULL,
	[diachi] [nvarchar](100) NULL,
	[sdt] [varchar](20) NULL,
	[gioitinh] [bit] NULL,
	[ngaythem] [datetime] NULL,
	[trangthai] [bit] NULL,
	[maloaidocgia] [int] NULL,
	[hanthe] [datetime] NULL,
	[tienthe] [float] NULL,
	[imgurl] [text] NULL,
 CONSTRAINT [PK__docgia__1B535E274189D208] PRIMARY KEY CLUSTERED 
(
	[sothe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kho]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kho](
	[makho] [int] IDENTITY(1,1) NOT NULL,
	[tenkho] [nvarchar](100) NULL,
	[kihieu] [varchar](50) NULL,
	[ghichu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[makho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kihieucabiet]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kihieucabiet](
	[macabiet] [int] NOT NULL,
	[trangthai] [bit] NULL,
	[masach] [int] NOT NULL,
 CONSTRAINT [PK__kihieuca__C142ABF131460612] PRIMARY KEY CLUSTERED 
(
	[macabiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lienhe]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lienhe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](100) NULL,
	[email] [varchar](100) NULL,
	[noidung] [nvarchar](max) NULL,
	[ngaygui] [datetime] NULL,
	[trangthai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaidocgia]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaidocgia](
	[maloaidocgia] [int] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](100) NULL,
	[kihieu] [varchar](50) NULL,
	[ghichu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maloaidocgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[muontra]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[muontra](
	[maphieu] [varchar](20) NOT NULL,
	[ngaymuon] [datetime] NULL,
	[hantra] [datetime] NULL,
	[ghichu] [nvarchar](max) NULL,
	[lichsu] [nvarchar](max) NULL,
	[trangthai] [bit] NULL,
	[sothe] [varchar](20) NULL,
 CONSTRAINT [PK__muontra__A72B5185B75354B4] PRIMARY KEY CLUSTERED 
(
	[maphieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ncc]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ncc](
	[mancc] [int] IDENTITY(1,1) NOT NULL,
	[tenncc] [nvarchar](100) NULL,
	[diachi] [nvarchar](100) NULL,
	[dienthoai] [varchar](20) NULL,
	[email] [varchar](100) NULL,
	[website] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ngonngu]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ngonngu](
	[mangonngu] [int] IDENTITY(1,1) NOT NULL,
	[tenngonngu] [nvarchar](100) NULL,
	[kihieu] [varchar](100) NULL,
	[ghichu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[mangonngu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoidung]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoidung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NULL,
	[password] [varchar](100) NULL,
	[name] [nvarchar](100) NULL,
	[diachi] [nvarchar](100) NULL,
	[imgurl] [text] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nxb]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nxb](
	[manxb] [int] IDENTITY(1,1) NOT NULL,
	[tennxb] [nvarchar](100) NULL,
	[diachi] [nvarchar](100) NULL,
	[dienthoai] [varchar](20) NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[manxb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieunhapsach]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieunhapsach](
	[maphieunhap] [int] IDENTITY(1,1) NOT NULL,
	[ngaynhap] [datetime] NULL,
	[mancc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maphieunhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieutam]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieutam](
	[maphieutam] [int] NOT NULL,
	[ngaydangki] [datetime] NULL,
	[ngaylay] [datetime] NULL,
	[trangthai] [bit] NULL,
	[ghichu] [nvarchar](max) NULL,
	[sothe] [varchar](20) NULL,
 CONSTRAINT [PK_phieutam] PRIMARY KEY CLUSTERED 
(
	[maphieutam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sach]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sach](
	[masach] [int] IDENTITY(1,1) NOT NULL,
	[ISBN] [int] NULL,
	[tensach] [nvarchar](200) NULL,
	[sotrang] [int] NULL,
	[namxuatban] [int] NULL,
	[solantaiban] [int] NULL,
	[giabia] [float] NULL,
	[tomtatnoidung] [nvarchar](max) NULL,
	[ngaythem] [datetime] NULL,
	[imgurl] [text] NULL,
	[trangthai] [bit] NULL,
	[makho] [int] NULL,
	[matacgia] [int] NULL,
	[mangonngu] [int] NULL,
	[mancc] [int] NULL,
	[manxb] [int] NULL,
	[matheloai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tacgia]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tacgia](
	[matacgia] [int] IDENTITY(1,1) NOT NULL,
	[tentacgia] [nvarchar](100) NULL,
	[gioitinh] [bit] NULL,
	[namsinh] [int] NULL,
	[nguyenquan] [nvarchar](100) NULL,
	[imgurl] [text] NULL,
	[gioithieu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[matacgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[theloai]    Script Date: 6/14/2022 10:26:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theloai](
	[matheloai] [int] IDENTITY(1,1) NOT NULL,
	[tentheloai] [nvarchar](100) NULL,
	[kihieu] [varchar](50) NULL,
	[ghichu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[matheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chitietmuontra] ON 

INSERT [dbo].[chitietmuontra] ([id], [ngaymuon], [ngaytra], [trangthai], [masach], [maphieu], [macabiet]) VALUES (41, CAST(N'2022-06-12T18:52:05.693' AS DateTime), NULL, 0, 38, N'MP1126', 17)
SET IDENTITY_INSERT [dbo].[chitietmuontra] OFF
GO
INSERT [dbo].[docgia] ([sothe], [password], [tendocgia], [ngaysinh], [diachi], [sdt], [gioitinh], [ngaythem], [trangthai], [maloaidocgia], [hanthe], [tienthe], [imgurl]) VALUES (N'ST1237', NULL, N'nguyễn van a', CAST(N'2000-06-12T00:00:00.000' AS DateTime), N'hưng yên', N'09992929', 0, CAST(N'2022-06-06T18:50:06.487' AS DateTime), 1, 3, CAST(N'2023-06-12T18:50:06.487' AS DateTime), 98000, N'images.jpg')
GO
SET IDENTITY_INSERT [dbo].[kho] ON 

INSERT [dbo].[kho] ([makho], [tenkho], [kihieu], [ghichu]) VALUES (1, N'Kho số  1', N'01', N'đây là kho số 1')
INSERT [dbo].[kho] ([makho], [tenkho], [kihieu], [ghichu]) VALUES (5, N'kho số 2', N'2', N'...')
INSERT [dbo].[kho] ([makho], [tenkho], [kihieu], [ghichu]) VALUES (7, N'Kho số 3', N'03', N'...')
SET IDENTITY_INSERT [dbo].[kho] OFF
GO
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (17, 0, 38)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (18, 0, 38)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (19, 0, 38)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (21, 1, 37)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (22, 1, 37)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (23, 1, 37)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (24, 1, 37)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (25, 1, 37)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (26, 1, 36)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (27, 1, 36)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (28, 0, 36)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (29, 1, 36)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (30, 0, 36)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (31, 1, 35)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (32, 1, 35)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (33, 1, 35)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (34, 1, 35)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (35, 1, 35)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (36, 1, 34)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (37, 1, 34)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (38, 1, 34)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (39, 1, 34)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (40, 1, 34)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (41, 1, 34)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (42, 1, 33)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (43, 1, 33)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (44, 1, 33)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (45, 1, 33)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (46, 1, 33)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (47, 1, 32)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (48, 1, 32)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (49, 1, 32)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (50, 1, 32)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (51, 1, 32)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (52, 1, 31)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (53, 1, 31)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (54, 1, 31)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (55, 1, 31)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (56, 1, 31)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (57, 1, 30)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (58, 1, 30)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (59, 1, 30)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (60, 1, 30)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (61, 1, 30)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (62, 1, 29)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (63, 1, 29)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (64, 1, 29)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (65, 1, 29)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (66, 1, 29)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (67, 1, 28)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (68, 1, 28)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (69, 1, 28)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (70, 1, 28)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (71, 1, 28)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (72, 1, 27)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (73, 1, 27)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (74, 1, 27)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (75, 1, 27)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (76, 1, 27)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (77, 1, 26)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (78, 1, 26)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (79, 1, 26)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (80, 1, 26)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (81, 1, 26)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (82, 1, 25)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (83, 1, 25)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (84, 1, 25)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (85, 1, 25)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (86, 1, 25)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (87, 1, 24)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (88, 1, 24)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (89, 1, 24)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (90, 1, 24)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (91, 1, 24)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (92, 1, 23)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (93, 1, 23)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (94, 1, 23)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (95, 1, 23)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (96, 1, 23)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (97, 1, 22)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (98, 1, 22)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (99, 1, 22)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (100, 1, 22)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (101, 1, 22)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (102, 1, 22)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (103, 1, 22)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (104, 1, 21)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (105, 1, 21)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (106, 1, 21)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (107, 1, 21)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (108, 1, 21)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (109, 1, 21)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (110, 1, 20)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (111, 1, 20)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (112, 1, 20)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (113, 1, 20)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (114, 0, 20)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (115, 1, 19)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (116, 1, 19)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (117, 1, 19)
GO
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (118, 1, 19)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (119, 1, 19)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (120, 1, 18)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (121, 1, 18)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (122, 1, 18)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (123, 1, 18)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (124, 1, 18)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (125, 1, 17)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (126, 1, 17)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (127, 1, 17)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (128, 1, 17)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (129, 1, 17)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (130, 1, 16)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (131, 0, 16)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (132, 1, 16)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (133, 1, 16)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (134, 1, 16)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (135, 1, 16)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (136, 1, 15)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (137, 1, 15)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (138, 1, 15)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (139, 1, 15)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (140, 1, 15)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (141, 1, 14)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (142, 1, 14)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (143, 1, 14)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (144, 1, 14)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (145, 1, 14)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (146, 1, 13)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (147, 1, 13)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (148, 1, 13)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (149, 1, 13)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (150, 1, 13)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (151, 1, 12)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (152, 0, 12)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (153, 0, 12)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (154, 1, 12)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (155, 0, 12)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (156, 1, 11)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (157, 1, 11)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (158, 1, 11)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (159, 1, 11)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (160, 1, 11)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (161, 1, 10)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (162, 1, 10)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (163, 1, 10)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (164, 1, 10)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (165, 1, 10)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (166, 1, 9)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (167, 1, 9)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (168, 1, 9)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (169, 1, 9)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (170, 1, 9)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (171, 1, 8)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (172, 1, 8)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (173, 1, 8)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (174, 1, 8)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (175, 1, 8)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (176, 1, 7)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (177, 1, 7)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (178, 1, 7)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (179, 1, 7)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (180, 1, 7)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (183, 1, 38)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (184, 1, 38)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (185, 1, 38)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (3818, 1, 38)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (3839, 1, 38)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (3846, 1, 38)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (3890, 1, 38)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (3893, 1, 38)
INSERT [dbo].[kihieucabiet] ([macabiet], [trangthai], [masach]) VALUES (3897, 1, 38)
GO
SET IDENTITY_INSERT [dbo].[lienhe] ON 

INSERT [dbo].[lienhe] ([id], [hoten], [email], [noidung], [ngaygui], [trangthai]) VALUES (1, N'nguyễn văn long', N'long@gmail.com', N'xin chào người quản lí trang web', NULL, 1)
INSERT [dbo].[lienhe] ([id], [hoten], [email], [noidung], [ngaygui], [trangthai]) VALUES (2, N'Nguyễn văn a', N'quyenanhnguyen@gmail.com', N'đã gửi cho admin', CAST(N'2022-10-01T04:00:05.310' AS DateTime), 1)
INSERT [dbo].[lienhe] ([id], [hoten], [email], [noidung], [ngaygui], [trangthai]) VALUES (3, N'Đỗ Văn Mạnh', N'manh@gmail.com', N'đã gửi cho admin', CAST(N'2022-10-01T04:03:40.977' AS DateTime), 1)
INSERT [dbo].[lienhe] ([id], [hoten], [email], [noidung], [ngaygui], [trangthai]) VALUES (4, N'Đỗ Văn Hùng', N'hung@gmail.com', N'vừa gửi cho admin', CAST(N'2022-11-03T21:40:35.140' AS DateTime), 1)
INSERT [dbo].[lienhe] ([id], [hoten], [email], [noidung], [ngaygui], [trangthai]) VALUES (5, N'Đỗ Huy Hoàng', N'hoang@gmail.com', N'no no no ', CAST(N'2022-11-03T23:15:14.463' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[lienhe] OFF
GO
SET IDENTITY_INSERT [dbo].[loaidocgia] ON 

INSERT [dbo].[loaidocgia] ([maloaidocgia], [tenloai], [kihieu], [ghichu]) VALUES (2, N'Giáo viên', N'GV', N'Dành cho những người đang làm giáo viên')
INSERT [dbo].[loaidocgia] ([maloaidocgia], [tenloai], [kihieu], [ghichu]) VALUES (3, N'Học sinh', N'HS', N'Những người đang là học sinh')
INSERT [dbo].[loaidocgia] ([maloaidocgia], [tenloai], [kihieu], [ghichu]) VALUES (4, N'Sinh viên', N'SV', N'Dành cho sinh viên')
INSERT [dbo].[loaidocgia] ([maloaidocgia], [tenloai], [kihieu], [ghichu]) VALUES (5, N'Mọi người', N'K', N'Dành cho những người không thuộc Giáo viên, sinh viên, học sinh')
SET IDENTITY_INSERT [dbo].[loaidocgia] OFF
GO
INSERT [dbo].[muontra] ([maphieu], [ngaymuon], [hantra], [ghichu], [lichsu], [trangthai], [sothe]) VALUES (N'MP1126', CAST(N'2022-06-12T18:52:05.643' AS DateTime), CAST(N'2022-06-19T00:00:00.000' AS DateTime), N'11', N'<p><i class=''fa fa-circle - o''></i> đã đăng kí phiếu vào lúc 12/06/2022 18:52:05 </p>', 0, N'ST1237')
GO
SET IDENTITY_INSERT [dbo].[ncc] ON 

INSERT [dbo].[ncc] ([mancc], [tenncc], [diachi], [dienthoai], [email], [website]) VALUES (2, N'NCC1', N'hà nội', N'0919410045', N'nhacungcap1@gmail.com', N'')
INSERT [dbo].[ncc] ([mancc], [tenncc], [diachi], [dienthoai], [email], [website]) VALUES (3, N'NCC2', N'Hưng yên', N'0932456789', N'ncc2@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[ncc] OFF
GO
SET IDENTITY_INSERT [dbo].[ngonngu] ON 

INSERT [dbo].[ngonngu] ([mangonngu], [tenngonngu], [kihieu], [ghichu]) VALUES (2, N'Tiếng anh', N'TA', N'đây là tiếng anh')
INSERT [dbo].[ngonngu] ([mangonngu], [tenngonngu], [kihieu], [ghichu]) VALUES (3, N'Trung quốc', N'TQ', N'...
')
SET IDENTITY_INSERT [dbo].[ngonngu] OFF
GO
SET IDENTITY_INSERT [dbo].[nguoidung] ON 

INSERT [dbo].[nguoidung] ([id], [username], [password], [name], [diachi], [imgurl], [status]) VALUES (1, N'admin', N'123', N'Phạm Nhật Long', N'Hưng yên', N'41527417_951444391718777_2427106304100139008_n.jpg', 1)
SET IDENTITY_INSERT [dbo].[nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[nxb] ON 

INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai], [email]) VALUES (2, N'long9', N'lvlong', N'0973345347', N'long9123@gmail.com')
INSERT [dbo].[nxb] ([manxb], [tennxb], [diachi], [dienthoai], [email]) VALUES (3, N'an moon', N'hà nam', N'0973345347', N'ancave@gmail.com')
SET IDENTITY_INSERT [dbo].[nxb] OFF
GO
SET IDENTITY_INSERT [dbo].[sach] ON 

INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (7, 987623445, N'Harry Potter', 1500, 2000, 34, 500000, N'<p><em><strong><a href="https://vi.wikipedia.org/wiki/Harry_Potter">Harry Potter</a></strong></em>&nbsp;l&agrave; t&ecirc;n gọi chung của bộ truyện nổi tiếng của t&aacute;c giả&nbsp;<a href="https://vi.wikipedia.org/wiki/J._K._Rowling">J. K. Rowling</a>&nbsp;v&agrave; loạt&nbsp;<a href="https://vi.wikipedia.org/wiki/Phim">phim</a>&nbsp;cũng như tr&ograve; chơi điện tử phỏng theo bộ truyện n&agrave;y.&nbsp;<a href="https://vi.wikipedia.org/wiki/Harry_Potter_(nh%C3%A2n_v%E1%BA%ADt)">Harry James Potter</a>&nbsp;l&agrave; t&ecirc;n nh&acirc;n vật ch&iacute;nh trong c&aacute;c chuyện n&agrave;y. Phần đầu ti&ecirc;n,&nbsp;<em><a href="https://vi.wikipedia.org/wiki/Harry_Potter_v%C3%A0_h%C3%B2n_%C4%91%C3%A1_ph%C3%B9_th%E1%BB%A7y">Harry Potter v&agrave; h&ograve;n đ&aacute; ph&ugrave; thủy</a></em>&nbsp;(<em>Harry Potter and the Philosopher&#39;s Stone</em>, ấn bản tại&nbsp;<a href="https://vi.wikipedia.org/wiki/Anh">Anh</a>&nbsp;hay&nbsp;<em>Harry Potter and the Sorcerer&#39;s Stone</em>, ấn bản tại&nbsp;<a href="https://vi.wikipedia.org/wiki/M%E1%BB%B9">Mỹ</a>), đ&atilde; được xuất bản lần đầu tại Anh v&agrave;o năm&nbsp;<a href="https://vi.wikipedia.org/wiki/1997">1997</a>. Năm&nbsp;<a href="https://vi.wikipedia.org/wiki/2000">2000</a>&nbsp;được dịch giả&nbsp;<a href="https://vi.wikipedia.org/wiki/L%C3%BD_Lan">L&yacute; Lan</a>&nbsp;dịch sang&nbsp;<a href="https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Vi%E1%BB%87t">tiếng Việt</a>.</p>
', CAST(N'2022-05-05T02:15:47.030' AS DateTime), N'Harry_Potter_and_the_Sorcerer''s_Stone.jpg', 1, 1, 1, 2, 2, 2, 7)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (8, 10001, N'Đại số 10', 45, 1999, 4, 500000, N'<p>chương tr&igrave;nh to&aacute;n lớp 10 v&agrave; l&agrave; chương cơ bản. Với 8 b&agrave;i như: mệnh đề, tập hợp, tập con &ndash; tập bằng nhau, c&aacute;c ph&eacute;p to&aacute;n tập hợp&hellip;.Mỗi b&agrave;i bao gồm phần t&oacute;m tắt c&ocirc;ng thức v&agrave; c&aacute;c b&agrave;i tập c&oacute; video hướng dẫn giải. Với gần 40 b&agrave;i tập tự luận được tr&iacute;ch dẫn từ c&aacute;c đề kiểm tra, đề thi học k&igrave;, trong s&aacute;ch gi&aacute;o khoa to&aacute;n lớp 10 được ph&acirc;n th&agrave;nh c&aacute;c dạng từ cơ bản đến n&acirc;ng cao.</p>
', CAST(N'2022-05-05T02:44:16.957' AS DateTime), N'daiso10.jpg', 1, 1, 1, 2, 2, 2, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (9, 10002, N'Giải Tích 11', 45, 2015, 3, 24000, N'<p>Chương n&agrave;y được chia th&agrave;nh 5 b&agrave;i, mỗi b&agrave;i l&agrave; một dạng b&agrave;i tập về&rdquo;D&atilde;y Số, Cấp Số Cộng V&agrave; Cấp Số Nh&acirc;n&rdquo; cụ thể sẽ c&oacute; c&aacute;c b&agrave;i như: phương ph&aacute;p quy nạp to&aacute;n học, d&atilde;y số, cấp số cộng, cấp số nh&acirc;n.&hellip;... Mỗi b&agrave;i giảng gồm c&oacute; phần t&oacute;m tắt c&aacute;c c&ocirc;ng thức, v&agrave; c&aacute;c b&agrave;i tập c&oacute; video hướng dẫn giải. Với hơn 30 c&acirc;u b&agrave;i tập tự luận được ph&acirc;n th&agrave;nh c&aacute;c dạng b&agrave;i tập từ đơn giản đển n&acirc;ng cao. Chương&rdquo; D&atilde;y Số, Cấp Số Cộng V&agrave; Cấp Số Nh&acirc;n&rdquo; l&agrave; chương trừu tượng v&agrave; kh&oacute; hiểu, c&aacute;c kiến thức n&agrave;y sẽ c&oacute; trong c&aacute;c vấn đề về khảo s&aacute;t h&agrave;m số v&agrave; c&oacute; trong c&aacute;c đề thi đại học v&agrave; cao đẳng của c&aacute;c năm.</p>
', CAST(N'2022-05-05T02:45:41.723' AS DateTime), N'giaitich11.png', 1, 1, 1, 2, 2, 2, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (10, 10003, N'Giải Tích 12', 45, 2015, 5, 50000, N'<p>Chương n&agrave;y được chia th&agrave;nh 5 b&agrave;i, mỗi b&agrave;i l&agrave; một dạng b&agrave;i tập về&rdquo;D&atilde;y Số, Cấp Số Cộng V&agrave; Cấp Số Nh&acirc;n&rdquo; cụ thể sẽ c&oacute; c&aacute;c b&agrave;i như: phương ph&aacute;p quy nạp to&aacute;n học, d&atilde;y số, cấp số cộng, cấp số nh&acirc;n.&hellip;... Mỗi b&agrave;i giảng gồm c&oacute; phần t&oacute;m tắt c&aacute;c c&ocirc;ng thức, v&agrave; c&aacute;c b&agrave;i tập c&oacute; video hướng dẫn giải. Với hơn 30 c&acirc;u b&agrave;i tập tự luận được ph&acirc;n th&agrave;nh c&aacute;c dạng b&agrave;i tập từ đơn giản đển n&acirc;ng cao. Chương&rdquo; D&atilde;y Số, Cấp Số Cộng V&agrave; Cấp Số Nh&acirc;n&rdquo; l&agrave; chương trừu tượng v&agrave; kh&oacute; hiểu, c&aacute;c kiến thức n&agrave;y sẽ c&oacute; trong c&aacute;c vấn đề về khảo s&aacute;t h&agrave;m số v&agrave; c&oacute; trong c&aacute;c đề thi đại học v&agrave; cao đẳng của c&aacute;c năm.</p>
', CAST(N'2022-05-05T02:47:40.890' AS DateTime), N'giaitich12.png', 1, 7, 10, 2, 3, 3, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (11, 10004, N'Hình học 10', 45, 1998, 34, 24000, N'<p>chia th&agrave;nh 13 b&agrave;i, mỗi b&agrave;i l&agrave; một dạng b&agrave;i tập về &ldquo;Phương Tr&igrave;nh V&agrave; Hệ Phương Tr&igrave;nh&rdquo; cụ thể sẽ c&oacute; c&aacute;c b&agrave;i như: kh&aacute;i niệm về phương tr&igrave;nh, phương tr&igrave;nh bậc nhất một ẩn số, phương tr&igrave;nh bậc hai một ẩn số, ứng dụng định l&yacute; Viet, phương tr&igrave;nh chứa gi&aacute; trị tuyệt đối,.&hellip;... Mỗi b&agrave;i giảng gồm c&oacute; phần t&oacute;m tắt c&aacute;c c&ocirc;ng thức, v&agrave; c&aacute;c b&agrave;i tập c&oacute; video hướng dẫn giải. Với hơn 65 c&acirc;u b&agrave;i tập tự luận được ph&acirc;n th&agrave;nh c&aacute;c dạng b&agrave;i tập từ đơn giản đển n&acirc;ng cao. Chương&rdquo; Phương Tr&igrave;nh V&agrave; Hệ Phương Tr&igrave;nh&rdquo; l&agrave; chương kh&oacute; v&agrave; trừu tượng, kiến thức n&agrave;y sẽ l&agrave; nền tảng để giải c&aacute;c b&agrave;i tập về phương tr&igrave;nh v&agrave; hệ phương tr&igrave;nh trong chương tr&igrave;nh to&aacute;n lớp 12.</p>
', CAST(N'2022-05-05T02:50:32.567' AS DateTime), N'hinhhoc10.jpg', 1, 5, 3, 2, 3, 3, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (12, 10005, N'Sách khai tâm-Nguyễn Du - Tiểu thuyết lịch sử', 12000, 2015, 34, 27000, N'<p>Tiểu thuyết n&oacute;i về cuộc đời của Nguyễn Du, đại thi h&agrave;o ki&ecirc;m quan văn của triều đ&igrave;nh nh&agrave; Nguyễn Gia Mi&ecirc;u. Chuyện bắt đầu từ khi Gia Long thống nhất đất nước đến khi Nguyễn Du qua đời (1820). C&oacute; thể n&oacute;i 18 năm l&agrave;m quan dưới thời nh&agrave; Nguyễn, từ tri huyện, tri phủ ở Bắc Th&agrave;nh, rồi từ quan đến khi Gia Long gọi v&agrave;o kinh phục vụ, l&agrave;m Cai bạ Quảng B&igrave;nh, Ch&aacute;nh sứ đi cống phương Bắc đến Tham tri bộ Lại, trải 2 đời vua Gia Long v&agrave; Minh Mệnh. Cuộc đời của một kẻ sĩ l&agrave;m quan dưới sự tập quyền của Gia Long với bao nỗi cay đắng thăng trầm, bao nhi&ecirc;u nghi ngờ v&igrave; c&oacute; cha l&agrave; c&ocirc;ng thần triều Hậu L&ecirc;. Th&ocirc;ng qua Nguyễn Du, người đọc c&ograve;n cảm nhận được sự thối n&aacute;t, mục ruỗng của quan lại triều đ&igrave;nh với việc mua quan b&aacute;n chức, tham nhũng lan tr&agrave;n, c&ocirc;ng thần h&atilde;m hại lẫn nhau, nh&acirc;n d&acirc;n đ&oacute;i khổ v&agrave; lầm than. V&agrave; cũng từ trong những khổ đau của nh&acirc;n d&acirc;n, Nguyễn Du đ&atilde; viết n&ecirc;n kiệt t&aacute;c Đoạn trường t&acirc;n thanh. Lấy chuyện nước người để n&oacute;i chuyện nước m&igrave;nh, để b&agrave;y tỏ th&aacute;i độ của người tr&iacute; thức trước cường quyền phong kiến. Ước vọng được một lần đi sứ trời T&acirc;y đ&atilde; n&oacute;i l&ecirc;n c&aacute;i nh&igrave;n của một người tri thức trước thời cuộc.</p>
', CAST(N'2022-05-05T02:54:23.290' AS DateTime), N'nguyen-du-tieu-thuyet-lich-su.jpg', 1, 1, 6, 3, 3, 2, 7)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (13, 10006, N'Hình học 11', 34, 1998, 4, 60000, N'<p>Chương&rdquo; Chất Kh&iacute;&rdquo; được chia th&agrave;nh 6 b&agrave;i như sau: cấu tạo chất, thuyết động học ph&acirc;n tử chất kh&iacute;,</p>

<p>qu&aacute; tr&igrave;nh đẳng nhiệt, định luật B&ocirc;ilơ &ndash;Mari&ocirc;t, qu&aacute; tr&igrave;nh đẳng t&iacute;ch, định luật Saclơ, phương tr&igrave;nh trạng</p>

<p>th&aacute;i của kh&iacute; l&iacute; tưởng. Mỗi b&agrave;i gồm c&oacute; phần t&oacute;m tắt l&yacute; thuyết v&agrave; c&aacute;c b&agrave;i tập đều c&oacute; video hướng dẫn</p>

<p>giải. Với hơn 30 b&agrave;i tập tự luận được lấy trong c&aacute;c s&aacute;ch vật l&yacute; 10 n&acirc;ng cao v&agrave; ph&acirc;n th&agrave;nh c&aacute;c dạng</p>

<p>b&agrave;i tập từ cơ bản đển n&acirc;ng cao. Chương&rdquo; Chất Kh&iacute;&rdquo; l&agrave; chương trừu tượng v&agrave; kh&oacute;, nhưng nội dung của chương l&agrave; trọng t&acirc;m &ocirc;n thi học kỳ II v&agrave; kiểm tra 1 tiết.</p>
', CAST(N'2022-05-05T02:56:04.767' AS DateTime), N'hinhhoc10.jpg', 1, 5, 1, 2, 2, 2, 4)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (14, 10007, N'Hình học 12', 56, 1998, 4, 32000, N'<p>Chương&rdquo;G&oacute;c Lượng Gi&aacute;c V&agrave; C&ocirc;ng Thức Lượng Gi&aacute;c&rdquo; được chia th&agrave;nh 6 b&agrave;i gồm c&aacute;c b&agrave;i: g&oacute;c v&agrave; cung lượng gi&aacute;c, gi&aacute; trị lương gi&aacute;c của một g&oacute;c (cung), c&ocirc;ng thức lượng gi&aacute;c,&hellip;.. Mỗi b&agrave;i gồm c&oacute; t&oacute;m tắt c&ocirc;ng thức v&agrave; c&aacute;c b&agrave;i tập c&oacute; video hướng dẫn giải. Với 15 b&agrave;i tập được lấy từ c&aacute;c đề kiểm tra 1 tiết, đề thi học kỳ của c&aacute;c trường v&agrave; b&agrave;i tập s&aacute;ch gi&aacute;o khoa to&aacute;n lớp 10. Đ&acirc;y l&agrave; chương cuối trong chương tr&igrave;nh to&aacute;n lớp 10 v&agrave; những kiến thức n&agrave;y l&agrave; nển tảng để học v&agrave; giải c&aacute;c b&agrave;i tập to&aacute;n lớp 12.</p>
', CAST(N'2022-05-05T02:57:15.493' AS DateTime), N'hinhhoc12.jpg', 1, 5, 3, 2, 3, 3, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (15, 10008, N'Ngữ Văn 10', 60, 2000, 5, 12000, N'<p>- T&oacute;m tắt văn bản tự sự dựa theo nh&acirc;n vật ch&iacute;nh l&agrave; viết hoặc kể lại một c&aacute;ch ngắn gọn những sự việc cơ bản xảy ra với nh&acirc;n vật đ&oacute;. Như vậy, những sự việc (v&agrave; những nh&acirc;n vật) kh&ocirc;ng li&ecirc;n quan đến nh&acirc;n vật ch&iacute;nh th&igrave; kh&ocirc;ng cần phải kể lại trong bản t&oacute;m tắt n&agrave;y. C&oacute; nghĩa l&agrave;, khi viết bản t&oacute;m tắt phải hướng đến, tập trung v&agrave;o nh&acirc;n vật ch&iacute;nh để kể lại c&acirc;u chuyện.</p>
', CAST(N'2022-05-05T03:02:15.693' AS DateTime), N'nguvant_1.jpg', 1, 7, 1, 2, 3, 3, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (16, 10009, N'Ngữ Văn 11', 52, 2015, 3, 32000, N'<p>Để t&oacute;m tắt truyện Tấm C&aacute;m dựa theo nh&acirc;n vật Tấm, cần tiến h&agrave;nh theo c&aacute;c bước:\r\n \r\n- Đọc lại truyện để nắm được nh&acirc;n vật Tấm.\r\n \r\n- X&aacute;c định c&aacute;c sự việc, h&agrave;nh động của nh&acirc;n vật trong diễn biến cốt truyện để t&oacute;m tắt.\r\n \r\n- X&aacute;c định mối quan hệ của Tấm với mẹ con C&aacute;m, với Bụt, vua, b&agrave; l&atilde;o h&agrave;ng nước.\r\n \r\n- Từ những điều tr&ecirc;n, viết bản t&oacute;m tắt bằng lời văn của m&igrave;nh.</p>
', CAST(N'2022-05-05T03:03:19.597' AS DateTime), N'nguvan11.jpg', 1, 7, 10, 2, 2, 2, 4)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (17, 10010, N'Ngữ Văn 12', 56, 2015, 3, 32000, N'<p>&nbsp;Lai lịch của nh&acirc;n vật: vị vua mở ra thời đại &Acirc;u Lạc ở nước ta.\r\n- H&agrave;nh động, việc l&agrave;m của nh&acirc;n vật trong diễn biến của cốt truyện:\r\n+ X&acirc;y th&agrave;nh, chế nỏ để giữ nước.\r\n+ Chủ quan để mất th&agrave;nh, mất nước (chi tiết &ldquo;điềm nhi&ecirc;n đ&aacute;nh cờ&rdquo; v&agrave; c&acirc;u n&oacute;i về Triệu Đ&agrave;).\r\n+ Chạy về phương Nam, ch&eacute;m con g&aacute;i.\r\n+ Theo R&ugrave;a V&agrave;ng rẽ nước đi xuống biển.</p>
', CAST(N'2022-05-05T03:04:09.463' AS DateTime), N'nguvan12.jpg', 1, 5, 1, 2, 2, 2, 4)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (18, 10011, N'Hóa học 10', 43, 2015, 3, 24000, N'<p>- Lai lịch của nh&acirc;n vật: vị vua mở ra thời đại &Acirc;u Lạc ở nước ta.\r\n- H&agrave;nh động, việc l&agrave;m của nh&acirc;n vật trong diễn biến của cốt truyện:\r\n+ X&acirc;y th&agrave;nh, chế nỏ để giữ nước.\r\n+ Chủ quan để mất th&agrave;nh, mất nước (chi tiết &ldquo;điềm nhi&ecirc;n đ&aacute;nh cờ&rdquo; v&agrave; c&acirc;u n&oacute;i về Triệu Đ&agrave;).\r\n+ Chạy về phương Nam, ch&eacute;m con g&aacute;i.\r\n+ Theo R&ugrave;a V&agrave;ng rẽ nước đi xuống biển</p>
', CAST(N'2022-05-05T03:05:10.863' AS DateTime), N'3122016101211_14030982_1624104021253307_734038021_n_683x960_thumb_426x600.jpg', 1, 5, 3, 2, 2, 2, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (19, 10012, N'Hóa học 11', 46, 2013, 4, 34000, N'<p>1. Kh&aacute;i niệm Tơ l&agrave; những polime h&igrave;nh sợi d&agrave;i v&agrave; mảnh với độ bền nhất định - Trong tơ, những ph&acirc;n tử polime c&oacute; mạch kh&ocirc;ng ph&acirc;n nh&aacute;nh, sắp xếp song song với nhau\r\n\r\n2. Ph&acirc;n loại . Tơ thi&ecirc;n nhi&ecirc;n (sẵn c&oacute; trong thi&ecirc;n nhi&ecirc;n) như b&ocirc;ng, len, tơ tằm . Tơ h&oacute;a học (chế tạo bằng phương ph&aacute;p h&oacute;a học)</p>
', CAST(N'2022-05-05T03:07:00.907' AS DateTime), N'hoahoc11.jpg', 1, 5, 3, 2, 3, 2, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (20, 10013, N'Hóa học 12', 46, 2013, 3, 24000, N'', CAST(N'2022-05-05T03:09:13.517' AS DateTime), N'hoahoc11.jpg', 1, 7, 10, 2, 3, 2, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (21, 10014, N'Vật lí 10', 45, 2015, 4, 500000, N'<p>B&agrave;i 17. Vị tr&iacute; của kim loại trong bảng tuần ho&agrave;n v&agrave; cấu tạo của kim loại</p>

<p>B&agrave;i 18. T&iacute;nh chất của kim loại. D&atilde;y điện ho&aacute; của kim loại</p>

<p>B&agrave;i 19. Hợp kim</p>

<p>B&agrave;i 20. Sự ăn m&ograve;n kim loại\r\nB&agrave;i 21. Điều chế kim loại</p>

<p>B&agrave;i 22. Luyện tập: T&iacute;nh chất của kim loại\r\nB&agrave;i 23. Luyện tập: Điều chế kim loại v&agrave; sự ăn m&ograve;n kim loại</p>

<p>Xem th&ecirc;m tại: http://loigiaihay.com/hoa-lop-12-c55.html#ixzz5DEXMaBQf</p>
', CAST(N'2022-05-05T03:11:58.867' AS DateTime), N'vatli10.jpg', 1, 5, 1, 3, 2, 3, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (22, 10015, N'Vật lí 12', 43, 2015, 3, 24000, N'<p>Chương I &ndash; Động lực học vật rắn</p>

<p>Chương II &ndash; Dao động cơ</p>

<p>Chương III &ndash; S&oacute;ng cơ</p>

<p>Chương IV &ndash; Dao động v&agrave; s&oacute;ng điện từ</p>

<p>Chương IX &ndash; Hạt nh&acirc;n nguy&ecirc;n tử\r\nChương V &ndash; D&ograve;ng điện xoay chiều</p>

<p>Chương VI &ndash; S&oacute;ng &aacute;nh s&aacute;ng</p>

<p>Chương VII &ndash; Lượng tử &aacute;nh s&aacute;ng\r\nChương VIII &ndash; Sơ lược về thuyết tương đối hẹp</p>

<p>Chương X &ndash; Từ vi m&ocirc; đến vĩ m&ocirc;</p>
', CAST(N'2022-05-05T03:13:41.810' AS DateTime), N'vatli12.jpg', 1, 1, 1, 2, 2, 2, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (23, 123452, N'Toán cao cấp', 67, 2022, 3, 500000, N'<p>To&aacute;n cao cấp l&agrave; một trong nhưng m&ocirc;n học đại cương của sinh vi&ecirc;n năm nhất v&agrave; c&oacute; lẽ cũng l&agrave; thỏi nam</p>

<p>ch&acirc;m h&uacute;t c&aacute;c b&eacute; về với thực tại tầm thường rằng: Đại học kh&ocirc;ng chỉ c&oacute; ng&agrave;y th&aacute;ng mơ mộng m&agrave; c&oacute;</p>

<p>cả v&agrave;i cơn &aacute;c mộng &lsquo;nho nhỏ&rsquo;. Những ng&agrave;y đ&acirc;u tr&ecirc;n giảng đường của bọn tớ (v&acirc;ng, bọn tớ nh&eacute;) l&agrave; ma trận-định thức, l&agrave; t&iacute;ch ph&acirc;n suy rộng, l&agrave; giới hạn, l&agrave; cực trị, l&agrave; c&aacute;i h&agrave;m g&igrave; đấy c&oacute; t&ecirc;n sang choảnh Lagrange,&hellip;T&oacute;m lại l&agrave; một thứ c&oacute;-v&ecirc; giống-to&aacute;n lạ lẫm v&agrave; mơ hồ được mấy con b&eacute; bọn tớ tỉ mẩn ch&eacute;p &hellip;trong v&ocirc; thức. V&agrave; sau những giờ toan đầy say m&ecirc; ( &yacute; tớ l&agrave; c&ocirc; gi&aacute;o nhiệt t&igrave;nh :))), đ&aacute;m sinh vi&ecirc;n ng&acirc;y thơ ai cũng giấu một c&acirc;u hỏi lớn trong đầu : Chả hiểu thế n&agrave;o m&igrave;nh lại đậu đại học ?!</p>
', CAST(N'2022-05-05T03:14:56.257' AS DateTime), N'1558_Giao-trinh-Toan-cao-cap-giai-tich.jpg', 1, 1, 1, 2, 2, 2, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (24, 31581, N'tu tuong ho chi minh', 120, 2022, 4, 60000, N'<p>- Vấn đề đạo đức được Hồ Ch&iacute; Minh đề cập một c&aacute;ch to&agrave;n diện. Người n&ecirc;u y&ecirc;u cầu đạo đức đối với c&aacute;c giai cấp, tầng lớp v&agrave; c&aacute;c nh&oacute;m x&atilde; hội, tr&ecirc;n mọi lĩnh vực hoạt động, trong mọi phạm vi, từ gia đ&igrave;nh đến x&atilde; hội, trong cả ba mối quan hệ của con người: đối với m&igrave;nh, đối với người, đối với việc. Tư tưởng Hồ Ch&iacute; Minh đặc biệt được mở rộng trong lĩnh vực đạo đức của c&aacute;n bộ, đảng vi&ecirc;n, nhất l&agrave; khi Đảng đ&atilde; trở th&agrave;nh Đảng cầm quyền. Trong bản Di ch&uacute;c bất hủ, Người viết: &quot;Đảng ta l&agrave; một Đảng cầm quyền. Mỗi đảng vi&ecirc;n v&agrave; c&aacute;n bộ phải thật sự thấm nhuần đạo đức c&aacute;ch mạng, thật sự cần kiệm li&ecirc;m ch&iacute;nh, ch&iacute; c&ocirc;ng v&ocirc; tư&quot;</p>
', CAST(N'2022-05-05T03:23:48.557' AS DateTime), N'Sach-HCM.jpg', 1, 5, 1, 2, 2, 2, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (25, 963135, N'Agnes Grey', 3242, 2000, 4, 500000, N'<p>Anne Bronte - nh&agrave; văn Anh - l&agrave; em g&aacute;i &uacute;t của văn sĩ Emily Bronte (t&aacute;c giả tiểu thuyết&nbsp;<em>Đồi gi&oacute; h&uacute;</em>). Với 29 năm cuộc đời ngắn ngủi, b&agrave; đ&atilde; s&aacute;ng t&aacute;c nhiều b&agrave;i thơ, hai tiểu thuyết.&nbsp;<em>Người gia sư</em>&nbsp;(t&ecirc;n gốc:&nbsp;<em>Agnes Grey</em>) - tiểu thuyết đầu tay của b&agrave; - lần đầu được dịch v&agrave; ph&aacute;t h&agrave;nh tại Việt Nam, qua bản chuyển ngữ của dịch giả Nguyễn B&iacute;ch Lan.</p>
', CAST(N'2022-05-05T03:25:38.160' AS DateTime), N'Agnes-bia-sach-nguoi-gia-su-1193-1504256754.png', 1, 7, 6, 2, 2, 2, 5)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (26, 757926, N'Các nguyên lý toán học của triết học tự nhiên', 2000, 1999, 4, 60000, N'<p>Nh&agrave; vật l&yacute; v&agrave; to&aacute;n học người Ph&aacute;p Chu Văn An&nbsp;đ&aacute;nh gi&aacute; t&aacute;c phẩm v&agrave;o năm 1747: &quot;Quyển s&aacute;ch nổi tiếng&nbsp;<em>C&aacute;c nguy&ecirc;n l&yacute; to&aacute;n học của triết học tự nhi&ecirc;n</em>&nbsp;đ&aacute;nh dấu kỷ nguy&ecirc;n c&aacute;ch mạng vĩ đại trong vật l&yacute; học. C&aacute;c phương ph&aacute;p do Sir Newton sử dụng... đ&atilde; chiếu rọi &aacute;nh s&aacute;ng của to&aacute;n học v&agrave;o khoa học m&agrave; khi đo vẫn c&ograve;n nằm trong b&oacute;ng tối của c&aacute;c phỏng đo&aacute;n v&agrave; giả thuyết.&quot;&nbsp;Một đ&aacute;nh gi&aacute; v&agrave;o thời điểm khi l&yacute; thuyết của Newton chưa được chấp nhận ho&agrave;n to&agrave;n, v&agrave;o cuối thế kỷ sau khi ph&aacute;t h&agrave;nh lần ấn bản 1687, &quot;kh&ocirc;ng ai c&oacute; thể từ chối rằng&quot; (ngo&agrave;i cuốn&nbsp;<em>Principia</em>) &quot;một khoa học đ&atilde; nổi l&ecirc;n, &iacute;t nhất trong phạm vi n&oacute; đề cập, vượt qua bất cứ thứ g&igrave; trước đ&oacute; m&agrave; n&oacute; đứng một m&igrave;nh như l&agrave; một v&iacute; dụ của khoa học tổng qu&aacute;t.&quot;</p>
', CAST(N'2022-05-05T03:27:16.787' AS DateTime), N'Prinicipia-title.png', 1, 1, 9, 2, 2, 2, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (27, 398692, N'All The Birds in the Sky ', 34, 1998, 3, 24000, N'<p>Ruth Ware v&agrave; Charile Jane Anders vẫn c&ograve;n l&agrave; hai c&aacute;i t&ecirc;n mới mẻ tr&ecirc;n văn đ&agrave;n nhưng đ&atilde; c&oacute; một sự xuất hiện đầy ấn tượng với t&aacute;c phẩm đầu ti&ecirc;n trong sự nghiệp. D&ugrave; mới chỉ l&agrave; &ldquo;debut novel&rdquo; nhưng hai nh&agrave; văn n&agrave;y đ&atilde; chứng tỏ được sức h&uacute;t v&ocirc; c&ugrave;ng mạnh mẽ của m&igrave;nh với độc giả. V&agrave; nếu bạn y&ecirc;u th&iacute;ch những kịch bản thắt mở gay cấn &ndash; đừng n&ecirc;n bỏ lỡ hai tiểu thuyết đầu tay hấp dẫn&nbsp;n&agrave;y.</p>
', CAST(N'2022-05-05T03:28:43.227' AS DateTime), N'new-novel-1.jpg', 1, 5, 7, 2, 2, 3, 7)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (28, 215775, N'Sóng', 45, 1998, 3, 500000, N'<p>Theo th&ocirc;ng tin từ NXB Trẻ, trong th&aacute;ng 9 n&agrave;y, nh&agrave; văn Nguyễn Ngọc Tư sẽ được NXB n&agrave;y ấn h&agrave;nh&nbsp;<strong>tiểu thuyết đầu tay trong cuộc đời cầm b&uacute;t của c&ocirc;</strong>.</p>\r\n\r\n<p>Tiểu thuyết của Nguyễn Ngọc Tư mang tựa đề với một từ đơn giản:&nbsp;<strong>S&ocirc;ng</strong>, d&agrave;y khoảng 300 trang in.</p>\r\n\r\n<p>Truyện n&agrave;y của Nguyễn Ngọc Tư đ&atilde; được dựng th&agrave;nh kịch v&agrave; phim truyện sau khi c&oacute; những tranh luận về n&oacute;. Thế nhưng, với một nh&agrave; văn chuy&ecirc;n nghiệp, gần như ai cũng muốn thử sức ở thể loại tiểu thuyết để &ldquo;khẳng định&rdquo; ng&ograve;i b&uacute;t của m&igrave;nh. C&oacute; lẽ, Nguyễn Ngọc Tư với tiểu thuyết&nbsp;<em>S&ocirc;ng</em>&nbsp;cũng kh&ocirc;ng nằm ngo&agrave;i sự &ldquo;thử sức&rdquo; n&agrave;y.</p>\r\n\r\n<p>Nội dung v&agrave; h&igrave;nh thức tiểu thuyết&nbsp;<em>S&ocirc;ng</em>&nbsp;của Nguyễn Ngọc Tư vẫn được NXB Trẻ giữ k&iacute;n cho đến khi s&aacute;ch ph&aacute;t h&agrave;nh. Nhiều người trong văn giới cho rằng, đ&acirc;y sẽ l&agrave; một trong v&agrave;i cuốn s&aacute;ch &ldquo;ầm ĩ&rdquo; trong thị trường xuất bản năm 2012.</p>\r\n\r\n<p>Nguyễn Ngọc Tư từng đoạt giải Nhất cuộc thi Văn học tuổi hai mươi, c&ocirc; từng tạo dư luận s&ocirc;i nổi tr&ecirc;n văn đ&agrave;n với truyện&nbsp;<em>C&aacute;nh đồng bất tận</em>.</p>\r\n\r\n<p>(Tr&iacute;ch từ b&aacute;o Thể thao &amp; Văn ho&aacute;)</p>', CAST(N'2022-05-05T03:29:56.683' AS DateTime), N'timthumb.jpg', 1, 5, 8, 2, 3, 3, 4)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (29, 514749, N'Ở giữa Tự Do', 6000, 1999, 5, 32000, N'<p>n&oacute;i chung c&acirc;u chuyện n&oacute;i về những đứa trẻ thứ ba kh&ocirc;ng được ch&iacute;nh phủ chấp nhận v&agrave; ch&iacute;nh phủ v&agrave; sẽ bắt giam hoặc giết những gia đ&igrave;nh c&oacute; dấu hiệu c&oacute; ba đứa con trở l&ecirc;n, v&agrave; sự khan hiếm đồ ăn, t&agrave;i nguy&ecirc;n tự nhi&ecirc;n.</p>

<p>H&igrave;nh th&agrave;nh sự nổi loạn, ch&iacute;nh phủ d&acirc;n chủ đ&atilde; bị đ&aacute;nh bại bởi một ch&iacute;ch phủ mới.</p>

<p>Luật mới bắt đầu được &aacute;p dụng một gia đ&igrave;nh chỉ được c&oacute; hai người con(đứa con thứ ba nếu ph&aacute;t hiện sẽ bị giết).</p>

<p>T&aacute;c giả của bộ truyện kh&ocirc;ng muốn điều n&agrave;y xảy ra.</p>
', CAST(N'2022-05-05T03:31:34.530' AS DateTime), N'27-10-2005-nguyen-thanh-quang.jpg', 1, 5, 8, 3, 3, 3, 5)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (30, 331846, N'Giữa những người dũng cảm', 3242, 1998, 4, 500000, N'<p>n&oacute;i chung c&acirc;u chuyện n&oacute;i về những đứa trẻ thứ ba kh&ocirc;ng được ch&iacute;nh phủ chấp nhận v&agrave; ch&iacute;nh phủ v&agrave; sẽ bắt giam hoặc giết những gia đ&igrave;nh c&oacute; dấu hiệu c&oacute; ba đứa con trở l&ecirc;n, v&agrave; sự khan hiếm đồ ăn, t&agrave;i nguy&ecirc;n tự nhi&ecirc;n.</p>

<p>H&igrave;nh th&agrave;nh sự nổi loạn, ch&iacute;nh phủ d&acirc;n chủ đ&atilde; bị đ&aacute;nh bại bởi một ch&iacute;ch phủ mới.</p>

<p>Luật mới bắt đầu được &aacute;p dụng một gia đ&igrave;nh chỉ được c&oacute; hai người con(đứa con thứ ba nếu ph&aacute;t hiện sẽ bị giết). T&aacute;c giả của bộ truyện kh&ocirc;ng muốn điều n&agrave;y xảy ra.</p>
', CAST(N'2022-05-05T03:33:29.673' AS DateTime), N'200px-Brave.jpg', 1, 5, 7, 2, 3, 2, 4)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (31, 432763, N'Chú chó vùng Flanders', 4000, 1872, 4, 70000, N'<p>Bỉ, nhưng n&oacute; ng&agrave;y c&agrave;ng trở n&ecirc;n nổi tiếng hơn v&agrave; thu h&uacute;t kh&aacute;ch du lịch đến Antwerp. C&oacute; một bức tượng nhỏ của Nello v&agrave; Patrasche tại Kapelstaat ở ngoại &ocirc; Antwerp của Hoboken, v&agrave; một tấm bảng kỷ niệm ở ph&iacute;a trước của nh&agrave; thờ Antwerp được tặng bởi Toyota. C&acirc;u chuyện được đọc rộng r&atilde;i tại&nbsp;<a href="\">Nhật Bản</a>&nbsp;v&agrave;&nbsp;<a href="\">H&agrave;n Quốc</a>, đến mức ở hai nước n&agrave;y, người ta coi &quot;A Dog of Flanders&quot; l&agrave; một cuốn tiểu thuyết kinh điển d&agrave;nh cho trẻ em, được chuyển thể th&agrave;nh nhiều bộ phim v&agrave;&nbsp;<a href="\">anime</a><a href="\">[1]</a>.</p>
', CAST(N'2022-05-05T03:34:50.463' AS DateTime), N'200px-Nello_&_Patrasche.JPG', 1, 7, 7, 3, 3, 3, 5)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (32, 477238, N'Bác sĩ Jekyll và ông Hyde', 1900, 1886, 7, 84000, N'<p><em>Vụ &aacute;n kỳ lạ của b&aacute;c sĩ Jekyll v&agrave; &ocirc;ng Hyde</em>) l&agrave; một t&aacute;c phẩm của&nbsp;<a href="\">Robert Louis Stevenson</a>&nbsp;s&aacute;ng t&aacute;c năm 1886. T&aacute;c phẩm c&ograve;n được biết đến với t&ecirc;n gọi đơn giản&nbsp;<strong>Jekyll &amp; Hyde</strong>. Truyện kể về một luật sư ở Lu&acirc;n Đ&ocirc;n t&ecirc;n Gabriel John Utterson đang điều tra về sự hiện diện kỳ lạ giữa người bạn cũ của &ocirc;ng, Henry Jekyll v&agrave; t&ecirc;n khốn Edward Hyde. Tiểu thuyết đ&atilde; được chuyển thể th&agrave;nh c&aacute;c ng&ocirc;n ngữ kh&aacute;c nhau, v&agrave; cụm từ &quot;Jekyll &amp; Hyde&quot; đ&atilde; được sử dụng để n&oacute;i về một người c&oacute; t&iacute;nh c&aacute;ch v&agrave; đạo đức rất kh&aacute;c nhau trong nhiều trường hợp, m&agrave; tiếng Việt thường hay gọi l&agrave; &quot;đừng tr&ocirc;ng mặt m&agrave; bắt h&igrave;nh dong&quot;, &quot;nh&igrave;n v&acirc;y nhưng kh&ocirc;ng phải vậy&quot;.</p>
', CAST(N'2022-05-05T03:36:11.237' AS DateTime), N'200px-Jekyll_and_Hyde_Title.jpg', 1, 1, 9, 2, 2, 3, 4)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (33, 76635, N'In a Dark, Dark Wood ', 120, 1999, 4, 60000, N'<p>In a Dark, Dark Wood (S&acirc;u trong khu rừng tăm tối) lấy bối cảnh ở miền qu&ecirc; nước Anh, trong một căn nh&agrave; k&iacute;nh &ndash; nơi diễn ra một &ldquo;hen party&rdquo; đ&uacute;ng nghĩa. Hen party &ndash; &ldquo;tiệc g&agrave; m&aacute;i&rdquo; chỉ một cuộc tụ họp của đ&aacute;m bạn g&aacute;i trước khi một trong số họ l&agrave;m lễ cưới. N&oacute; giống một cuộc chơi bời ch&egrave; ch&eacute;n để chia tay người bạn g&aacute;i th&acirc;n sắp lập gia đ&igrave;nh, v&agrave; ắt hẳn sẽ c&oacute; nhiều niềm vui, nhiều tiếng cười v&agrave; v&ocirc; v&agrave;n kỷ niệm. Nhưng đọc nhan đề In a Dark, Dark Wood th&igrave; bạn biết sẽ c&oacute; một điều g&igrave; đ&oacute; kh&ocirc;ng ổn xảy ra.</p>
', CAST(N'2022-05-05T03:37:20.793' AS DateTime), N'Debut-novel-1-e1460460125753.jpg', 1, 7, 7, 2, 2, 2, 7)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (34, 709324, N'Hai vạn dặm dưới đáy biển', 1700, 2010, 5, 130000, N'<p>Cuốn tiểu thuyết được xuất bản lần đầu ti&ecirc;n từ th&aacute;ng 3 năm 1869 đến th&aacute;ng 6 năm 1870 trong tạp ch&iacute; định kỳ&nbsp;<em>Magasin d&#39;&Eacute;ducation et de R&eacute;cr&eacute;ation của</em>&nbsp;Pierre-Jules Hetzel. Phi&ecirc;n bản c&oacute; tranh minh họa, xuất bản bởi Hetzel v&agrave;o th&aacute;ng 11 năm 1871, gồm 111 tranh minh họa của họa sĩ Alphonse de Neuville v&agrave; &Eacute;douard Riou. Cuốn s&aacute;ch được đ&aacute;nh gi&aacute; cao trong thời gian ph&aacute;t h&agrave;nh v&agrave; vẫn c&ograve;n cho đến ng&agrave;y nay; cuốn s&aacute;ch được xem như một trong những tiểu thuyết mạo hiểm xuất sắc đồng thời l&agrave; một trong những t&aacute;c phẩm vĩ đại nhất của Verne, b&ecirc;n cạnh những t&aacute;c phẩm kh&aacute;c như&nbsp;<em><a href="\">V&ograve;ng quanh thế giới trong 80 ng&agrave;y</a></em>&nbsp;v&agrave;&nbsp;<em><a href="\">Du h&agrave;nh v&agrave;o trung t&acirc;m Tr&aacute;i đất</a></em>. M&ocirc; tả t&agrave;u&nbsp;<em>Nautilus</em>&nbsp;của Nemo đ&atilde; được coi l&agrave; đi trước thời đại, v&igrave; n&oacute; m&ocirc; tả ch&iacute;nh x&aacute;c c&aacute;c đặc điểm tr&ecirc;n t&agrave;u ngầm hiện đại, trong khi thời kỳ cuốn s&aacute;ch được viết ra mới chỉ c&oacute; những chiếc t&agrave;u ngầm rất sơ khai.</p>
', CAST(N'2022-05-05T03:40:35.633' AS DateTime), N'200px-Jekyll_and_Hyde_Title.jpg', 1, 1, 7, 2, 2, 2, 7)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (35, 983079, N'Giải bài tập giải tích (chương trình cơ bản) 12''', 45, 1998, 3, 24000, N'<p>Để học tốt c&aacute;c m&ocirc;n học lớp 12 n&acirc;ng cao , b&ecirc;n cạnh loạt b&agrave;i của c&aacute;c m&ocirc;n học kh&aacute;c đ&atilde; được tr&igrave;nh b&agrave;y, Sachgiaibaitap.com xin giới thiệu với c&aacute;c bạn học sinh lớp 12 n&acirc;ng cao v&agrave; c&aacute;c bậc phụ huynh loạt b&agrave;i Giải b&agrave;i tập giải t&iacute;ch lớp 12 n&acirc;ng cao bao gồm c&aacute;c b&agrave;i giải, lời giải, hướng dẫn giải chi tiết, ngắn gọn, đầy đủ, dễ hiểu.</p>
', CAST(N'2022-05-05T03:44:03.350' AS DateTime), N'sach-giai-toan-giai-tich-12-co-ban-0.jpg', 1, 1, 1, 2, 2, 2, 6)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (36, 566592, N'Anh chàng Hobbit', 1300, 1937, 3, 130000, N'<p>&nbsp;l&agrave; một tiểu thuyết hư cấu d&agrave;nh cho thiếu nhi của nh&agrave; văn&nbsp;<a href="\">J. R. R. Tolkien</a>. T&aacute;c phẩm được xuất bản v&agrave;o ng&agrave;y 21 th&aacute;ng 9 năm 1937. Bản bi&ecirc;n tập lần thứ hai của cuốn n&agrave;y được thực hiện v&agrave;o năm 1951 ghi dấu những sửa đổi v&agrave; đ&oacute;ng g&oacute;p đ&aacute;ng kể trong Chương V, &ldquo;Tr&ograve; chơi đố trong hang tối&rdquo;, gi&uacute;p Anh ch&agrave;ng Hobbit (The Hobbit) ăn nhập hơn với cuốn tiểu thuyết tiếp theo Ch&uacute;a nhẫn đang được viết l&uacute;c bấy giờ.</p>

<p>T&aacute;c phẩm n&agrave;y từng được đề cử Hu&acirc;n chương Carnegie v&agrave; gi&agrave;nh giải Tiểu thuyết cho thanh thiếu ni&ecirc;n hay nhất của tờ New York Herald Tribune. Cuốn s&aacute;ch được dịch ra hơn 40 thứ tiếng.</p>

<p>Cho đến thời điểm n&agrave;y, Nh&agrave; xuất bản Houghton Mifflin (Mỹ) đ&atilde; t&aacute;i bản &iacute;t nhất 60 lần ấn bản b&igrave;a cứng tuyệt đẹp do Alan Lee minh họa. Anh ch&agrave;ng Hobbit đ&atilde; được chuyển thể th&agrave;nh loạt phim c&ugrave;ng t&ecirc;n</p>
', CAST(N'2022-05-05T03:45:29.850' AS DateTime), N'kniga_hobbit_djon_ronald_ruel_tolkien.jpg', 1, 5, 6, 2, 2, 2, 4)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (37, 85143, N'Bí thư Tỉnh ủy ', 1700, 2010, 5, 24000, N'<p><strong>B&iacute; thư Tỉnh ủy</strong>&nbsp;l&agrave; một cuốn&nbsp;<a href="\">tiểu thuyết</a>&nbsp;ch&iacute;nh luận về cha đẻ&nbsp;<a href="\">kho&aacute;n hộ</a>&nbsp;-&nbsp;<a href="\">B&iacute; thư Tỉnh ủy</a>&nbsp;<a href="\">Kim Ngọc</a>&nbsp;- của&nbsp;<a href="\">nh&agrave; văn</a>&nbsp;<a href="\">V&acirc;n Thảo</a>.</p>
', CAST(N'2022-05-05T03:55:59.383' AS DateTime), N'222px-bithutinhuy.jpg', 1, 7, 1, 2, 2, 2, 7)
INSERT [dbo].[sach] ([masach], [ISBN], [tensach], [sotrang], [namxuatban], [solantaiban], [giabia], [tomtatnoidung], [ngaythem], [imgurl], [trangthai], [makho], [matacgia], [mangonngu], [mancc], [manxb], [matheloai]) VALUES (38, 41888, N'Thi nhân Việt Nam', 1200, 1998, 5, 60000, N'<p>C&oacute; lẽ bạn đương chờ t&ocirc;i ph&acirc;n ng&ocirc;i thứ trong l&agrave;ng thơ xem ai nhất, ai nh&igrave;... Bạn sẽ thất vọng. T&ocirc;i chỉ ghi cảm tưởng xem thơ n&ecirc;n b&agrave;i viết d&agrave;i ngắn kh&ocirc;ng chừng. Bạn cũng đừng so s&aacute;nh thơ tr&iacute;ch nhiều &iacute;t. Ai lại lấy số trang, số d&ograve;ng m&agrave; định gi&aacute; một nh&agrave; thơ&nbsp;?</p>

<p>C&oacute; lẽ bạn đương chờ những b&agrave;i nghi&ecirc;n cứu v&ocirc; tư v&agrave; kh&aacute;ch quan. Bạn cũng sẽ thất vọng. V&ocirc; tư th&igrave; t&ocirc;i đ&atilde; v&ocirc; tư hết sức, nhưng kh&aacute;ch quan th&igrave; kh&ocirc;ng. T&ocirc;i vẫn c&oacute; thể vờ bộ kh&aacute;ch quan v&agrave; mặc cho những &yacute; ri&ecirc;ng của t&ocirc;i c&aacute;i lốt y phục của mọi người. Nhưng việc g&igrave; phải khổ thế&nbsp;? Chạy đi đ&acirc;u cũng kh&ocirc;ng tho&aacute;t c&aacute;i t&ocirc;i th&igrave; t&ocirc;i cứ l&agrave; t&ocirc;i vậy. Hay dở t&iacute;nh trời.</p>
', CAST(N'2022-05-05T03:57:10.243' AS DateTime), N'thi-nhan-viet-nam.450x652.w.b.jpg', 1, 5, 7, 2, 2, 2, 7)
SET IDENTITY_INSERT [dbo].[sach] OFF
GO
SET IDENTITY_INSERT [dbo].[tacgia] ON 

INSERT [dbo].[tacgia] ([matacgia], [tentacgia], [gioitinh], [namsinh], [nguyenquan], [imgurl], [gioithieu]) VALUES (1, N'Lê văn long', 1, NULL, N'Hưng yên', N'12227015_163969803955911_5855977591969276044_n.jpg', NULL)
INSERT [dbo].[tacgia] ([matacgia], [tentacgia], [gioitinh], [namsinh], [nguyenquan], [imgurl], [gioithieu]) VALUES (3, N'Nguyễn quyền anh', 0, 1996, N'Hưng yên', N'14713612_841806559289632_1374944414751587104_n.jpg', NULL)
INSERT [dbo].[tacgia] ([matacgia], [tentacgia], [gioitinh], [namsinh], [nguyenquan], [imgurl], [gioithieu]) VALUES (6, N'Nguyễn Nhật Ánh', 1, 1953, N' Quảng Nam', N'nna.jpg', N'<p>Nguyễn Nhật &Aacute;nh l&agrave; nh&agrave; văn Việt Nam chuy&ecirc;n viết cho tuổi mới lớn. &Ocirc;ng sinh ng&agrave;y 7 th&aacute;ng 5 năm 1955 tại l&agrave;ng Đo Đo, x&atilde; B&igrave;nh Quế, huyện Thăng B&igrave;nh, tỉnh Quảng Nam</p>
')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia], [gioitinh], [namsinh], [nguyenquan], [imgurl], [gioithieu]) VALUES (7, N'Hồ Chí Minh', 1, 1890, N'Kim Liên', N'ho-chi-minh-9340663-1-raw.jpg', N'<p>Hồ Ch&iacute; Minh t&ecirc;n khai sinh: Nguyễn Sinh Cung, l&agrave; nh&agrave; c&aacute;ch mạng, người s&aacute;ng lập Đảng Cộng sản Việt Nam, một trong những người đặt nền m&oacute;ng v&agrave; l&atilde;nh đạo c&ocirc;ng cuộc đấu tranh gi&agrave;nh độc lập, to&agrave;n vẹn l&atilde;nh thổ cho Việt Nam trong thế kỷ XX, một chiến sĩ cộng sản quốc tế.&nbsp;<a href="https://vi.wikipedia.org/wiki/H%E1%BB%93_Ch%C3%AD_Minh">Wikipedia</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=h%E1%BB%93+ch%C3%AD+minh+sinh&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK9ISy0620i9IzS_ISQVSRcX5eVZJ-UV5ACm6jRskAAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQ6BMoADAVegQIChAb">Sinh</a>:&nbsp;19 th&aacute;ng 5, 1890,&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=Kim+Li%C3%AAn,+Nam+%C4%90%C3%A0n&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK1LiBLEssyzSC7TEspOt9AtS8wtyUoFUUXF-nlVSflEeANknvfwvAAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQmxMoATAVegQIChAc">Kim Li&ecirc;n</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=h%E1%BB%93+ch%C3%AD+minh+m%C3%A2%CC%81t&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK9KSz0620i9IzS_ISdVPSU1OTSxOTYkvSC0qzs-zSslMTQEASMzxxi0AAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQ6BMoADAWegQIChAf">M&acirc;́t</a>:&nbsp;2 th&aacute;ng 9, 1969,&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=H%C3%A0+N%E1%BB%99i&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK1ICs9Ly0tK05LOTrfQLUvMLclL1U1KTUxOLU1PiC1KLivPzrFIyU1MAvWO-ZjcAAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQmxMoATAWegQIChAg">H&agrave; Nội</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=h%E1%BB%93+ch%C3%AD+minh+t%C3%AAn+%C4%91%C3%A2%CC%80y+%C4%91u%CC%89&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK9KSzk620i9IzS_ISQVSRcX5eVZppTk5CnmJuakANwIyRikAAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQ6BMoADAXegQIChAj">T&ecirc;n đ&acirc;̀y đủ</a>:&nbsp;Nguyễn Sinh Cung</p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=h%E1%BB%93+ch%C3%AD+minh+v%E1%BB%A3/ch%E1%BB%93ng&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK9KSyE620i9IzS_ISQVSRcX5eVbFBfmlxakARp4LyCYAAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQ6BMoADAYegQIChAm">Vợ/chồng</a>:&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=T%C4%83ng+Tuy%E1%BA%BFt+Minh&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK1LiArHMTMwtTfO0JLKTrfQLUvMLclKBVFFxfp5VcUF-aXEqAEPCheMyAAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQmxMoATAYegQIChAn">Tăng Tuyết Minh</a>&nbsp;(kết h&ocirc;n 1926&ndash;1969)</p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=h%E1%BB%93+ch%C3%AD+minh+ch%C3%B4n&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK9JSzE620i9IzS_ISdVPSU1OTSxOTYkvSC0qzs-zSiotykxNAQBwgxVFLwAAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQ6BMoADAZegQIChAq">Ch&ocirc;n</a>:&nbsp;9 th&aacute;ng 9, 1969,&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=L%C4%83ng+B%C3%A1c&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK1LiArGMKpIy0s21FLOTrfQLUvMLclL1U1KTUxOLU1PiC1KLivPzrJJKizJTUwAosPBsOwAAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQmxMoATAZegQIChAr">Lăng Chủ tịch Hồ Ch&iacute; Minh, H&agrave; Nội</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=h%E1%BB%93+ch%C3%AD+minh+ph%E1%BB%A5+huynh&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK9KSzE620i9IzS_ISQVSRcX5eVYFiUWpeSXFAJtaSBUnAAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQ6BMoADAaegQIChAu">Phụ huynh</a>:&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=Nguy%E1%BB%85n+Sinh+S%E1%BA%AFc&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK1LiArGy84pNDXK1JLOTrfQLUvMLclKBVFFxfp5VQWJRal5JMQAvKvmUMwAAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQmxMoATAaegQIChAv">Nguyễn Sinh Sắc</a>,&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=Ho%C3%A0ng+Th%E1%BB%8B+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3yChMK1LiBLEssyyyUrQks5Ot9AtS8wtyUoFUUXF-nlVBYlFqXkkxAKS2h8UyAAAA&amp;ved=2ahUKEwjus-G51NrdAhWGdt4KHatEAyAQmxMoAjAaegQIChAw">Ho&agrave;ng Thị Loan</a></p>
')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia], [gioitinh], [namsinh], [nguyenquan], [imgurl], [gioithieu]) VALUES (8, N'Nguyễn Phong Việt', 1, 1980, N'Tuy Hòa', N'nguyenvietphong.jpg', N'<p>Nguyễn Phong Việt l&agrave; một nh&agrave; thơ, nh&agrave; b&aacute;o người Việt Nam. C&aacute;c tập thơ đ&atilde; xuất bản của anh đ&atilde; tạo n&ecirc;n những hiện tượng xuất bản ở Việt Nam khi đ&atilde; b&aacute;n được h&agrave;ng chục ng&agrave;n bản in, một điều rất hiếm thấy đối với thơ Việt Nam trong h&agrave;ng thập kỷ trước đ&oacute;.&nbsp;<a href="https://vi.wikipedia.org/wiki/Nguy%E1%BB%85n_Phong_Vi%E1%BB%87t">Wikipedia</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=nguy%E1%BB%85n+phong+vi%E1%BB%87t+sinh&amp;stick=H4sIAAAAAAAAAOPgE-LRT9c3LKgqSEmpSs_SEstOttIvSM0vyEkFUkXF-XlWSflFeQAH_5fpKAAAAA&amp;ved=2ahUKEwiF7KKE1drdAhWK-2EKHeSyAp8Q6BMoADAUegQIChAo">Sinh</a>:&nbsp;18 th&aacute;ng 7, 1980 (tuổi&nbsp;38),&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=Tuy+H%C3%B2a&amp;stick=H4sIAAAAAAAAAOPgE-LRT9c3LKgqSEmpSs9S4tTP1TdIKsopTtESy0620i9IzS_ISQVSRcX5eVZJ-UV5ACZ7w4czAAAA&amp;ved=2ahUKEwiF7KKE1drdAhWK-2EKHeSyAp8QmxMoATAUegQIChAp">Tuy H&ograve;a</a></p>
')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia], [gioitinh], [namsinh], [nguyenquan], [imgurl], [gioithieu]) VALUES (9, N'Lưu Quang Vũ ', 1, 1988, N'Phú Thọ', N'17796298_684504408424270_379552588915814821_n.jpg', N'<p>Lưu Quang Vũ l&agrave; nh&agrave; soạn kịch, nh&agrave; thơ v&agrave; nh&agrave; văn hiện đại của Việt Nam.&nbsp;<a href="https://vi.wikipedia.org/wiki/L%C6%B0u_Quang_V%C5%A9">Wikipedia</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=l%C6%B0u+quang+v%C5%A9+sinh&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSr1BLLTrbSL0jNL8hJBVJFxfl5Vkn5RXkAmciOHCYAAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQ6BMoADAcegQICRAo">Sinh</a>:&nbsp;17 th&aacute;ng 4, 1948,&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=Th%E1%BB%8B+x%C3%A3+Ph%C3%BA+Th%E1%BB%8D&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSrVAKzTQtS0koKtcSyk630C1LzC3JSgVRRcX6eVVJ-UR4AdFs2kTIAAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQmxMoATAcegQICRAp">Ph&uacute; Thọ</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=l%C6%B0u+quang+v%C5%A9+m%C3%A2%CC%81t&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSr1JLPTrbSL0jNL8hJ1U9JTU5NLE5NiS9ILSrOz7NKyUxNAQAdsA1MLwAAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQ6BMoADAdegQICRAs">M&acirc;́t</a>:&nbsp;29 th&aacute;ng 8, 1988,&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=H%E1%BA%A3i+D%C6%B0%C6%A1ng&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSrVOIEsc1zDS1MteSzk630C1LzC3JS9VNSk1MTi1NT4gtSi4rz86xSMlNTALCHa686AAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQmxMoATAdegQICRAt">Tỉnh Hải Dương</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=l%C6%B0u+quang+v%C5%A9+qu%E1%BB%91c+t%E1%BB%8Bch&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSr1JLNTrbSL0jNL8hJBVJFxfl5VnmJJZn5eYk5mSWVAMe-a6AtAAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQ6BMoADAeegQICRAw">Quốc tịch</a>:&nbsp;Việt Nam</p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=l%C6%B0u+quang+v%C5%A9+v%E1%BB%A3/ch%E1%BB%93ng&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSr1JLITrbSL0jNL8hJBVJFxfl5VsUF-aXFqQDtJ8WSKAAAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQ6BMoADAfegQICRAz">Vợ/chồng</a>:&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=Xu%C3%A2n+Qu%E1%BB%B3nh&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSrVIKyzS2yq7QkspOt9AtS8wtyUoFUUXF-nlVxQX5pcSoAsu8E5jQAAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQmxMoATAfegQICRA0">Xu&acirc;n Quỳnh</a>&nbsp;(kết h&ocirc;n ?&ndash;1988)</p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=l%C6%B0u+quang+v%C5%A9+tr%E1%BA%BB+em&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSr1JLKTrbSL0jNL8hJBVJFxfl5VskZmTkpRal5AHByHycqAAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQ6BMoADAgegQICRA3">Trẻ em</a>:&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=L%C6%B0u+Minh+V%C5%A9&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSrVAKzy4rzLJOLtKSyk630C1LzC3JSgVRRcX6eVXJGZk5KUWoeAKi8-uY2AAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQmxMoATAgegQICRA4">Lưu Minh Vũ</a>,&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=L%C6%B0u+Qu%E1%BB%B3nh+Th%C6%A1&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSrVOLVT9c3NEwyyzIwNzes1JLKTrbSL0jNL8hJBVJFxfl5VskZmTkpRal5AB0zO_s5AAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQmxMoAjAgegQICRA5">Lưu Quỳnh Thơ</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=l%C6%B0u+quang+v%C5%A9+anh+chi%CC%A3+em&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSr1JLMTrbSL0jNL8hJBVJFxfl5VsWZSTmZeekAmZb9OykAAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQ6BMoADAhegQICRA8">Anh chị em</a>:&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=L%C6%B0u+Quang+Hi%E1%BB%87p&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDOxsDSrVOLVT9c3NEw3LEkyLDIz1JLMTrbSL0jNL8hJBVJFxfl5VsWZSTmZeekA1LIGQzgAAAA&amp;ved=2ahUKEwiimIy31drdAhWI62EKHRA0C5YQmxMoATAhegQICRA9">Lưu Quang Hiệp</a></p>
')
INSERT [dbo].[tacgia] ([matacgia], [tentacgia], [gioitinh], [namsinh], [nguyenquan], [imgurl], [gioithieu]) VALUES (10, N'Trần minh thanh', 1, 1996, N'TP.Hưng yên', N'15826399_827573147382943_2955893653350556766_n.jpg', N'<p>Trần minh thanh l&agrave; Gi&aacute;o sư, Nh&agrave; gi&aacute;o Nh&acirc;n d&acirc;n v&agrave; một trong những chuy&ecirc;n gia về lịch sử Việt Nam, Chủ tịch Hội Khoa học Lịch sử Việt Nam: Kh&oacute;a II, kh&oacute;a III, kh&oacute;a IV&nbsp;<a href="https://vi.wikipedia.org/wiki/Phan_Huy_L%C3%AA">Wikipedia</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=phan+huy+l%C3%AA+sinh&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9O0RLLTrbSL0jNL8hJBVJFxfl5Vkn5RXkAl-1NSCYAAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQ6BMoADAeegQICRAs">Sinh</a>:&nbsp;23 th&aacute;ng 2, 1997,&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=H%C3%A0+T%C4%A9nh&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9OUeIEsc3TiosrtcSyk630C1LzC3JSgVRRcX6eVVJ-UR4A5I_QJzEAAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQmxMoATAeegQICRAt">TP.Hưng y&ecirc;n</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=phan+huy+l%C3%AA+v%E1%BB%A3/ch%E1%BB%93ng&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9O0ZLITrbSL0jNL8hJBVJFxfl5VsUF-aXFqQDnikJHKAAAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQ6BMoADAgegQICRA0">Vợ/chồng</a>:&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=Ho%C3%A0ng+Nh%C6%B0+Lan&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9OUeLVT9c3NEwzNzPISIo31ZLITrbSL0jNL8hJBVJFxfl5VsUF-aXFqQCr8gAWNwAAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQmxMoATAgegQICRA1">Ho&agrave;ng Như Lan</a>&nbsp;(kết h&ocirc;n ?&ndash;2022)</p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=phan+huy+l%C3%AA+s%C3%A1ch&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9O0ZLKTrbST8rPz9ZPLC3JyC-yArGLFfLzcioBnzFnIioAAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQ6BMoADAhegQICRA4">S&aacute;ch</a>:&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=L%E1%BB%8Bch+s%E1%BB%AD+v%C3%A0+v%C4%83n+h%C3%B3a+Vi%E1%BB%87t+Nam+ti%E1%BA%BFp+c%E1%BA%ADn+b%E1%BB%99+ph%E1%BA%ADn&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9OUeLVT9c3NEwqLyjIMEyp0pLKTrbST8rPz9ZPLC3JyC-yArGLFfLzcioBJFUAVTkAAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQmxMoATAhegQICRA5">Lịch sử v&agrave; văn h&oacute;a Việt Nam tiếp cận bộ phận</a>,&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=phan+huy+l%C3%AA+s%C3%A1ch&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9O0ZLKTrbST8rPz9ZPLC3JyC-yArGLFfLzcioBnzFnIioAAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQ44YBKAIwIXoECAkQOg">TH&Ecirc;M</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=phan+huy+l%C3%AA+tr%E1%BA%BB+em&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9O0ZLKTrbSL0jNL8hJBVJFxfl5VskZmTkpRal5ACiQl3UqAAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQ6BMoADAiegQICRA9">Trẻ em</a>:&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=Phan+Th%E1%BB%8B+Linh&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9OUeLVT9c3NEzPqswoTCnJ1ZLKTrbSL0jNL8hJBVJFxfl5VskZmTkpRal5APOcb9w5AAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQmxMoATAiegQICRA-">Phan Thị Linh</a>,&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=Phan+Th%E1%BB%8B+Li%C3%AAn&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9OUeLVT9c3NEzPqswoNMhJ0pLKTrbSL0jNL8hJBVJFxfl5VskZmTkpRal5AHlkthI5AAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQmxMoAjAiegQICRA_">Phan Thị Li&ecirc;n</a>,&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=Phan+Th%E1%BB%8B+Th%E1%BA%A3o&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9OUeLVT9c3NEzPqswoyTAo1JLKTrbSL0jNL8hJBVJFxfl5VskZmTkpRal5AKA2p4Y5AAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQmxMoAzAiegQICRBA">Phan Thị Thảo</a></p>

<p><a href="https://www.google.com.vn/search?sa=X&amp;q=phan+huy+l%C3%AA+anh+chi%CC%A3+em&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9O0ZLMTrbSL0jNL8hJBVJFxfl5VsWZSTmZeekAKvj92ykAAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQ6BMoADAjegQICRBD">Anh chị em</a>:&nbsp;<a href="https://www.google.com.vn/search?sa=X&amp;q=Phan+Huy+Qu%C3%A1t&amp;stick=H4sIAAAAAAAAAOPgE-LSz9U3yDMxTc9OUeIEsc0Ly5IrtSSzk630C1LzC3JSgVRRcX6eVXFmUk5mXjoAmj3d2TQAAAA&amp;ved=2ahUKEwiV6fiT1trdAhVTc3AKHcn-BLoQmxMoATAjegQICRBE">Phan Huy Qu&aacute;t</a></p>
')
SET IDENTITY_INSERT [dbo].[tacgia] OFF
GO
SET IDENTITY_INSERT [dbo].[theloai] ON 

INSERT [dbo].[theloai] ([matheloai], [tentheloai], [kihieu], [ghichu]) VALUES (4, N'Truyện cổ tích', N'CT', N'...')
INSERT [dbo].[theloai] ([matheloai], [tentheloai], [kihieu], [ghichu]) VALUES (5, N'Truyên tranh', N'TT', NULL)
INSERT [dbo].[theloai] ([matheloai], [tentheloai], [kihieu], [ghichu]) VALUES (6, N'Nghiên cứu khoa học', N'nghiuencuukhoahoc', NULL)
INSERT [dbo].[theloai] ([matheloai], [tentheloai], [kihieu], [ghichu]) VALUES (7, N'Tiểu thuyết', N'tieuthuyet', NULL)
INSERT [dbo].[theloai] ([matheloai], [tentheloai], [kihieu], [ghichu]) VALUES (8, N'Luận cương', N'lc', NULL)
INSERT [dbo].[theloai] ([matheloai], [tentheloai], [kihieu], [ghichu]) VALUES (9, N'Giáo trình học tập', N'Giaotrinhhocjtap', NULL)
INSERT [dbo].[theloai] ([matheloai], [tentheloai], [kihieu], [ghichu]) VALUES (10, N'Dạng đềk', N'dangde', N'ss')
SET IDENTITY_INSERT [dbo].[theloai] OFF
GO
ALTER TABLE [dbo].[chitietmuontra]  WITH CHECK ADD  CONSTRAINT [FK_chitietmuontra_muontra] FOREIGN KEY([maphieu])
REFERENCES [dbo].[muontra] ([maphieu])
GO
ALTER TABLE [dbo].[chitietmuontra] CHECK CONSTRAINT [FK_chitietmuontra_muontra]
GO
ALTER TABLE [dbo].[chitietmuontra]  WITH CHECK ADD  CONSTRAINT [fk_ctmt_khcb] FOREIGN KEY([macabiet])
REFERENCES [dbo].[kihieucabiet] ([macabiet])
GO
ALTER TABLE [dbo].[chitietmuontra] CHECK CONSTRAINT [fk_ctmt_khcb]
GO
ALTER TABLE [dbo].[chitietmuontra]  WITH CHECK ADD  CONSTRAINT [fk_ctmt_sa] FOREIGN KEY([masach])
REFERENCES [dbo].[sach] ([masach])
GO
ALTER TABLE [dbo].[chitietmuontra] CHECK CONSTRAINT [fk_ctmt_sa]
GO
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD  CONSTRAINT [fk_ctpn_mpn] FOREIGN KEY([maphieunhap])
REFERENCES [dbo].[phieunhapsach] ([maphieunhap])
GO
ALTER TABLE [dbo].[chitietphieunhap] CHECK CONSTRAINT [fk_ctpn_mpn]
GO
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD  CONSTRAINT [fk_ctpn_sa] FOREIGN KEY([masach])
REFERENCES [dbo].[sach] ([masach])
GO
ALTER TABLE [dbo].[chitietphieunhap] CHECK CONSTRAINT [fk_ctpn_sa]
GO
ALTER TABLE [dbo].[chitietphieutam]  WITH CHECK ADD  CONSTRAINT [FK_chitietphieutam_kihieucabiet] FOREIGN KEY([macabiet])
REFERENCES [dbo].[kihieucabiet] ([macabiet])
GO
ALTER TABLE [dbo].[chitietphieutam] CHECK CONSTRAINT [FK_chitietphieutam_kihieucabiet]
GO
ALTER TABLE [dbo].[chitietphieutam]  WITH CHECK ADD  CONSTRAINT [FK_chitietphieutam_phieutam] FOREIGN KEY([maphieutam])
REFERENCES [dbo].[phieutam] ([maphieutam])
GO
ALTER TABLE [dbo].[chitietphieutam] CHECK CONSTRAINT [FK_chitietphieutam_phieutam]
GO
ALTER TABLE [dbo].[chitietphieutam]  WITH CHECK ADD  CONSTRAINT [FK_chitietphieutam_sach] FOREIGN KEY([masach])
REFERENCES [dbo].[sach] ([masach])
GO
ALTER TABLE [dbo].[chitietphieutam] CHECK CONSTRAINT [FK_chitietphieutam_sach]
GO
ALTER TABLE [dbo].[docgia]  WITH CHECK ADD  CONSTRAINT [fk_dg_ldg] FOREIGN KEY([maloaidocgia])
REFERENCES [dbo].[loaidocgia] ([maloaidocgia])
GO
ALTER TABLE [dbo].[docgia] CHECK CONSTRAINT [fk_dg_ldg]
GO
ALTER TABLE [dbo].[kihieucabiet]  WITH CHECK ADD  CONSTRAINT [fk_khcb_sa] FOREIGN KEY([masach])
REFERENCES [dbo].[sach] ([masach])
GO
ALTER TABLE [dbo].[kihieucabiet] CHECK CONSTRAINT [fk_khcb_sa]
GO
ALTER TABLE [dbo].[muontra]  WITH CHECK ADD  CONSTRAINT [fk_mt_dg] FOREIGN KEY([sothe])
REFERENCES [dbo].[docgia] ([sothe])
GO
ALTER TABLE [dbo].[muontra] CHECK CONSTRAINT [fk_mt_dg]
GO
ALTER TABLE [dbo].[phieunhapsach]  WITH CHECK ADD  CONSTRAINT [FK_phieunhapsach_ncc] FOREIGN KEY([mancc])
REFERENCES [dbo].[ncc] ([mancc])
GO
ALTER TABLE [dbo].[phieunhapsach] CHECK CONSTRAINT [FK_phieunhapsach_ncc]
GO
ALTER TABLE [dbo].[phieutam]  WITH CHECK ADD  CONSTRAINT [FK_phieutam_docgia] FOREIGN KEY([sothe])
REFERENCES [dbo].[docgia] ([sothe])
GO
ALTER TABLE [dbo].[phieutam] CHECK CONSTRAINT [FK_phieutam_docgia]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [fk_sa_ko] FOREIGN KEY([makho])
REFERENCES [dbo].[kho] ([makho])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [fk_sa_ko]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [fk_sa_nc] FOREIGN KEY([mancc])
REFERENCES [dbo].[ncc] ([mancc])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [fk_sa_nc]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [fk_sa_nn] FOREIGN KEY([mangonngu])
REFERENCES [dbo].[ngonngu] ([mangonngu])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [fk_sa_nn]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [fk_sa_nxb] FOREIGN KEY([manxb])
REFERENCES [dbo].[nxb] ([manxb])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [fk_sa_nxb]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [fk_sa_tg] FOREIGN KEY([matacgia])
REFERENCES [dbo].[tacgia] ([matacgia])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [fk_sa_tg]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [fk_sa_tl] FOREIGN KEY([matheloai])
REFERENCES [dbo].[theloai] ([matheloai])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [fk_sa_tl]
GO
