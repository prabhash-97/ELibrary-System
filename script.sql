USE [elibraryDB]
GO
/****** Object:  Table [dbo].[admin_login_tbl]    Script Date: 6/9/2021 11:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_login_tbl](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[full_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin_login_tbl] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[author_master_tbl]    Script Date: 6/9/2021 11:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[author_master_tbl](
	[author_id] [nchar](10) NOT NULL,
	[author_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_author_master_tbl] PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_issue_tbl]    Script Date: 6/9/2021 11:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_issue_tbl](
	[member_id] [nvarchar](50) NULL,
	[member_name] [nvarchar](50) NULL,
	[book_id] [nvarchar](50) NULL,
	[book_name] [nvarchar](max) NULL,
	[issue_date] [nvarchar](50) NULL,
	[due_date] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_master_tbl]    Script Date: 6/9/2021 11:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_master_tbl](
	[book_id] [nchar](10) NOT NULL,
	[book_name] [nvarchar](max) NULL,
	[genre] [nvarchar](max) NULL,
	[author_name] [nvarchar](max) NULL,
	[publisher_name] [nvarchar](max) NULL,
	[publisher_date] [nvarchar](50) NULL,
	[language] [nvarchar](50) NULL,
	[edition] [nvarchar](max) NULL,
	[book_cost] [nchar](10) NULL,
	[no_of_pages] [nchar](10) NULL,
	[book_description] [nvarchar](max) NULL,
	[actual_stock] [nchar](10) NULL,
	[current_stock] [nchar](10) NULL,
	[boo_img_link] [nvarchar](max) NULL,
 CONSTRAINT [PK_book_master_tbl] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member_master_tbl]    Script Date: 6/9/2021 11:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member_master_tbl](
	[full_name] [nvarchar](50) NULL,
	[dob] [nvarchar](50) NULL,
	[contact_no] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[pincode] [nvarchar](50) NULL,
	[full_address] [nvarchar](max) NULL,
	[member_id] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[account_status] [nvarchar](50) NULL,
 CONSTRAINT [PK_member_master_tbl] PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publisher_master_tbl]    Script Date: 6/9/2021 11:10:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publisher_master_tbl](
	[publisher_id] [nchar](10) NOT NULL,
	[publisher_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_publisher_master_tbl] PRIMARY KEY CLUSTERED 
(
	[publisher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
