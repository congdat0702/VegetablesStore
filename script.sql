USE [master]
GO
/****** Object:  Database [webraucuqua]    Script Date: 6/25/2022 10:22:45 PM ******/
CREATE DATABASE [webraucuqua]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'webraucuqua', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\webraucuqua.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'webraucuqua_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\webraucuqua_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [webraucuqua] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webraucuqua].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webraucuqua] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webraucuqua] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webraucuqua] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webraucuqua] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webraucuqua] SET ARITHABORT OFF 
GO
ALTER DATABASE [webraucuqua] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [webraucuqua] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webraucuqua] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webraucuqua] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webraucuqua] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [webraucuqua] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webraucuqua] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webraucuqua] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webraucuqua] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webraucuqua] SET  ENABLE_BROKER 
GO
ALTER DATABASE [webraucuqua] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webraucuqua] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webraucuqua] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webraucuqua] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [webraucuqua] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webraucuqua] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [webraucuqua] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webraucuqua] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [webraucuqua] SET  MULTI_USER 
GO
ALTER DATABASE [webraucuqua] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [webraucuqua] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webraucuqua] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [webraucuqua] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [webraucuqua] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [webraucuqua] SET QUERY_STORE = OFF
GO
USE [webraucuqua]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/25/2022 10:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 6/25/2022 10:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 6/25/2022 10:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DateImport] [datetime] NULL,
	[Title] [nvarchar](max) NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[Picture] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 6/25/2022 10:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 6/25/2022 10:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[EmailAddress] [char](100) NULL,
	[Phone] [varchar](15) NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 6/25/2022 10:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[PurcharsePrice] [decimal](18, 0) NULL,
	[SellPrice] [decimal](18, 0) NOT NULL,
	[DateImport] [datetime] NULL,
	[Quantity] [int] NULL,
	[TypeID] [bigint] NULL,
	[BrandID] [bigint] NULL,
	[Picture] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[ShortTitle] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 6/25/2022 10:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 6/25/2022 10:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[Link] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/25/2022 10:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Orderdate] [datetime] NULL,
	[Deliverystatus] [bit] NULL,
	[Deliverydate] [datetime] NULL,
	[Status] [bit] NULL,
	[Totalprice] [decimal](18, 0) NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/25/2022 10:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ItemId] [bigint] NULL,
	[OrderID] [bigint] NULL,
	[Totalprice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 6/25/2022 10:22:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Payprices] [decimal](18, 0) NULL,
	[OrderID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Passwords], [Name], [Picture]) VALUES (N'Admin', N'1', N'Nguyen Van Admin', N'hinh.png')
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (1, N'thietkehaithanh-banner-1.jpg')
INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (2, N'banner4.jpg')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (1, N'Hàng có sẵn', 1)
INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (2, N'Hàng Order', 1)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (1, N'vanhuy', N'vanhuy', N'Nguyễn Văn Huy', N'Hà Nội', N'vanhuy@gmail.com                                                                                    ', N'0394073752', NULL)
INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (2, N'levanbon', N'123456', N'Lê Văn Bon', N'Hà Nội', N'levanbon@gmail.com                                                                                  ', N'0394073756', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (1, N'Củ nghệ 200g', CAST(10000 AS Decimal(18, 0)), CAST(11000 AS Decimal(18, 0)), CAST(N'2022-06-20T00:00:00.000' AS DateTime), 200, 2, 1, N'31d5bdcf7dd4a822140c45c1bdef8d2a.jpg', 1, N'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%', N'<div style="box-sizing: border-box; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px; margin-top: 16px;"><span class="name" style="box-sizing: border-box; color: #808089;">Thương hiệu:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">OEM</span></div>
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px;"><span class="name" style="box-sizing: border-box; color: #808089;">Xuất xứ:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">Việt Nam</span></div>
</div>
<div class="styles__StyledDescription-sc-1xvsotp-4 hHIhzi" style="box-sizing: border-box; font-size: 14px; line-height: 20px; margin-top: 16px; font-family: Roboto, Helvetica, Arial, sans-serif;">
<div style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Với sản phẩm tươi sống, trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch khoảng 10%.</p>
[ Chỉ giao HN] - Củ ngh&ecirc;̣ 200g
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (2, N'Tỏi khô 100gr', CAST(20000 AS Decimal(18, 0)), CAST(22000 AS Decimal(18, 0)), CAST(N'2022-06-20T00:00:00.000' AS DateTime), 200, 2, 2, N'9c473722277e9164ffbda2788af3e4a4.jpg', 1, N'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', N'<div style="box-sizing: border-box; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px; margin-top: 16px;"><span class="name" style="box-sizing: border-box; color: #808089;">Thương hiệu:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">OEM</span></div>
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px;"><span class="name" style="box-sizing: border-box; color: #808089;">Xuất xứ:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">Việt Nam</span></div>
</div>
<div class="styles__StyledDescription-sc-1xvsotp-4 hHIhzi" style="box-sizing: border-box; font-size: 14px; line-height: 20px; margin-top: 16px; font-family: Roboto, Helvetica, Arial, sans-serif;">
<div style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Với sản phẩm tươi sống, trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch khoảng 10%.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px;">tỏi kh&ocirc;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (3, N'Bí đỏ Đà Lạt', CAST(160000 AS Decimal(18, 0)), CAST(170000 AS Decimal(18, 0)), CAST(N'2022-06-20T00:00:00.000' AS DateTime), 40, 3, 1, N'f2da942a16feda67ed3c9e452213bf63.png', 1, N'[Trợ giá nông sản- chỉ giao HCM] Combo 5kg bí đỏ hồ lô Đà Lạt - [HaHa Food]', N'<div style="box-sizing: border-box; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px; margin-top: 16px;"><span class="name" style="box-sizing: border-box; color: #808089;">Thương hiệu:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">OEM</span></div>
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px;"><span class="name" style="box-sizing: border-box; color: #808089;">Xuất xứ:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">Việt Nam</span></div>
</div>
<div class="styles__StyledDescription-sc-1xvsotp-4 hHIhzi" style="box-sizing: border-box; font-size: 14px; line-height: 20px; margin-top: 16px; font-family: Roboto, Helvetica, Arial, sans-serif;">
<div style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Với sản phẩm tươi sống, trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch khoảng 10%.</p>
B&iacute; đỏ hồ l&ocirc; Đ&agrave; Lạt Đ&agrave; Lạt<br style="box-sizing: border-box;" />Xuất xứ: Đ&agrave; Lạt chuẩn VietGap<br style="box-sizing: border-box;" />Trọng lượng: 5kg<br style="box-sizing: border-box;" />D&ugrave;ng để ăn luộc, nấu canh, x&agrave;o
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (4, N'Mướp Hương Đà Lạt', CAST(60000 AS Decimal(18, 0)), CAST(80000 AS Decimal(18, 0)), CAST(N'2022-06-20T00:00:00.000' AS DateTime), 100, 3, 1, N'0561641518f823d1481fe9cb5c1bdc83.png', 1, N'[Trợ giá nông sản- chỉ giao HCM] Combo 5kg Mướp Hương Đà Lạt - [HaHa Food]', N'<div style="box-sizing: border-box; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px; margin-top: 16px;"><span class="name" style="box-sizing: border-box; color: #808089;">Thương hiệu:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">OEM</span></div>
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px;"><span class="name" style="box-sizing: border-box; color: #808089;">Xuất xứ:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">Việt Nam</span></div>
</div>
<div class="styles__StyledDescription-sc-1xvsotp-4 hHIhzi" style="box-sizing: border-box; font-size: 14px; line-height: 20px; margin-top: 16px; font-family: Roboto, Helvetica, Arial, sans-serif;">
<div style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Với sản phẩm tươi sống, trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch khoảng 10%.</p>
Mướp Hương Đ&agrave; Lạt<br style="box-sizing: border-box;" />Xuất xứ: Đ&agrave; Lạt chuẩn VietGap<br style="box-sizing: border-box;" />Trọng lượng: 5kg<br style="box-sizing: border-box;" />D&ugrave;ng để ăn luộc, nấu canh, x&agrave;o
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (5, N'Mùi ta 100g', CAST(20000 AS Decimal(18, 0)), CAST(25000 AS Decimal(18, 0)), CAST(N'2022-06-20T00:00:00.000' AS DateTime), 298, 1, 2, N'edf5e47d6df8094adb4915a837982575.jpg', 1, N'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', N'<div style="box-sizing: border-box; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px; margin-top: 16px;"><span class="name" style="box-sizing: border-box; color: #808089;">Thương hiệu:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">OEM</span></div>
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px;"><span class="name" style="box-sizing: border-box; color: #808089;">Xuất xứ:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">Việt Nam</span></div>
</div>
<div class="styles__StyledDescription-sc-1xvsotp-4 hHIhzi" style="box-sizing: border-box; font-size: 14px; line-height: 20px; margin-top: 16px; font-family: Roboto, Helvetica, Arial, sans-serif;">
<div style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Với sản phẩm tươi sống, trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch khoảng 10%.</p>
[ Chỉ giao HN] -M&ugrave;i ta 100g
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (6, N'Rau Muống', CAST(15000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), CAST(N'2022-06-20T00:00:00.000' AS DateTime), 100, 1, 1, N'f0e89cc5b6bed0f70d9b6a40b66cf381.jpg', 1, N'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', N'<div style="box-sizing: border-box; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px; margin-top: 16px;"><span class="name" style="box-sizing: border-box; color: #808089;">Thương hiệu:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">OEM</span></div>
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px;"><span class="name" style="box-sizing: border-box; color: #808089;">Xuất xứ:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">Việt Nam</span></div>
</div>
<div class="styles__StyledDescription-sc-1xvsotp-4 hHIhzi" style="box-sizing: border-box; font-size: 14px; line-height: 20px; margin-top: 16px; font-family: Roboto, Helvetica, Arial, sans-serif;">
<div style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Với sản phẩm tươi sống, trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch khoảng 10%.</p>
Rau Muống<br style="box-sizing: border-box;" />Xuất xứ: Củ Chi<br style="box-sizing: border-box;" />Trọng lượng: 500g<br style="box-sizing: border-box;" />D&ugrave;ng để ăn sống, b&oacute;p gỏi, nấu canh, luộ<br style="box-sizing: border-box;" />Trọng lượng c&oacute; thể ch&ecirc;nh lệch 10% đối với mặt h&agrave;ng tươi sống
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (7, N'Dưa Leo- 500g', CAST(20000 AS Decimal(18, 0)), CAST(30000 AS Decimal(18, 0)), CAST(N'2022-06-20T00:00:00.000' AS DateTime), 300, 3, 1, N'7183424046792828e0b348963409e375.jpg', 1, N'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', N'<div style="box-sizing: border-box; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px; margin-top: 16px;"><span class="name" style="box-sizing: border-box; color: #808089;">Thương hiệu:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">OEM</span></div>
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px;"><span class="name" style="box-sizing: border-box; color: #808089;">Xuất xứ:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">Việt Nam</span></div>
</div>
<div class="styles__StyledDescription-sc-1xvsotp-4 hHIhzi" style="box-sizing: border-box; font-size: 14px; line-height: 20px; margin-top: 16px; font-family: Roboto, Helvetica, Arial, sans-serif;">
<div style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Với sản phẩm tươi sống, trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch khoảng 10%.</p>
Dưa Leo<br style="box-sizing: border-box;" />Xuất xứ: Đ&agrave; Lạt chuẩn VietGap<br style="box-sizing: border-box;" />Trọng lượng: 500g<br style="box-sizing: border-box;" />D&ugrave;ng để ăn sống, b&oacute;p gỏi, nấu canh<br style="box-sizing: border-box;" />Trọng lượng c&oacute; thể ch&ecirc;nh lệch 10% đối với mặt h&agrave;ng tươi sống
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (14, N'Cải Thìa- 500g', CAST(40000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), CAST(N'2022-06-20T00:00:00.000' AS DateTime), 20, 1, 1, N'0ba98a32b25dc9947a163672cd888753.jpg', 1, N'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', N'<div style="box-sizing: border-box; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px; margin-top: 16px;"><span class="name" style="box-sizing: border-box; color: #808089;">Thương hiệu:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">OEM</span></div>
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px;"><span class="name" style="box-sizing: border-box; color: #808089;">Xuất xứ:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">Việt Nam</span></div>
</div>
<div class="styles__StyledDescription-sc-1xvsotp-4 hHIhzi" style="box-sizing: border-box; font-size: 14px; line-height: 20px; margin-top: 16px; font-family: Roboto, Helvetica, Arial, sans-serif;">
<div style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Với sản phẩm tươi sống, trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch khoảng 10%.</p>
Cải Th&igrave;a<br style="box-sizing: border-box;" />Xuất xứ: Củ Chi<br style="box-sizing: border-box;" />Trọng lượng: 500g<br style="box-sizing: border-box;" />D&ugrave;ng để nấu canh, x&agrave;o, luộ<br style="box-sizing: border-box;" />Trọng lượng c&oacute; thể ch&ecirc;nh lệch 10% đối với mặt h&agrave;ng tươi sống
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (15, N'Khoai lang 1kg', CAST(20000 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(N'2022-06-20T00:00:00.000' AS DateTime), 90, 2, 1, N'e4dc9a9bc2cee5b659f7c55e2f4155ba.jpg', 1, N'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', N'<div style="box-sizing: border-box; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px; margin-top: 16px;"><span class="name" style="box-sizing: border-box; color: #808089;">Thương hiệu:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">OEM</span></div>
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px;"><span class="name" style="box-sizing: border-box; color: #808089;">Xuất xứ:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">Việt Nam</span></div>
</div>
<div class="styles__StyledDescription-sc-1xvsotp-4 hHIhzi" style="box-sizing: border-box; font-size: 14px; line-height: 20px; margin-top: 16px; font-family: Roboto, Helvetica, Arial, sans-serif;">
<div style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Với sản phẩm tươi sống, trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch khoảng 10%.</p>
H&igrave;nh ảnh sản phẩm c&oacute; thể kh&aacute;c với h&igrave;nh ảnh thực tế tại cửa h&agrave;ng
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (16, N'Ớt chuông vàng 300g', CAST(10000 AS Decimal(18, 0)), CAST(15000 AS Decimal(18, 0)), CAST(N'2022-06-20T00:00:00.000' AS DateTime), 100, 3, 1, N'b541bea4b20d7c503a17f031ea6d6eb6.jpg', 1, N'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', N'<div style="box-sizing: border-box; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px; margin-top: 16px;"><span class="name" style="box-sizing: border-box; color: #808089;">Thương hiệu:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">OEM</span></div>
<div class="style__Attribute-sc-3jv0nh-0 bdWrYu" style="box-sizing: border-box; line-height: 20px;"><span class="name" style="box-sizing: border-box; color: #808089;">Xuất xứ:&nbsp;</span><span class="value" style="box-sizing: border-box; color: #38383d;">Việt Nam</span></div>
</div>
<div class="styles__StyledDescription-sc-1xvsotp-4 hHIhzi" style="box-sizing: border-box; font-size: 14px; line-height: 20px; margin-top: 16px; font-family: Roboto, Helvetica, Arial, sans-serif;">
<div style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Với sản phẩm tươi sống, trọng lượng thực tế c&oacute; thể ch&ecirc;nh lệch khoảng 10%.</p>
[ Chỉ giao HN] -Ớt chu&ocirc;ng v&agrave;ng 300g
<p style="box-sizing: border-box; margin: 0px 0px 10px;">Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (17, N'avc', CAST(1000 AS Decimal(18, 0)), CAST(1100 AS Decimal(18, 0)), CAST(N'2022-06-25T22:19:47.400' AS DateTime), 10, 2, 1, N'f2da942a16feda67ed3c9e452213bf63.png', 0, N'aaaaaaaaaa', N'<p>aaaaaaaa</p>')
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemType] ON 

INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (1, N'Rau', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (2, N'Củ', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (3, N'Quả', 2)
SET IDENTITY_INSERT [dbo].[ItemType] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (1, N'Mặt Hàng', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (2, N'Sản Phẩm', NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Orderdate], [Deliverystatus], [Deliverydate], [Status], [Totalprice], [CustomerID]) VALUES (3, CAST(N'2022-06-25T22:17:55.963' AS DateTime), NULL, CAST(N'2022-06-25T00:00:00.000' AS DateTime), 1, CAST(50000 AS Decimal(18, 0)), 2)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (3, 2, 5, 3, CAST(25000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__536C85E4CB3DAE87]    Script Date: 6/25/2022 10:22:45 PM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item] ADD  DEFAULT (getdate()) FOR [DateImport]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [Orderdate]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[ItemType] ([ID])
GO
ALTER TABLE [dbo].[ItemType]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
USE [master]
GO
ALTER DATABASE [webraucuqua] SET  READ_WRITE 
GO
