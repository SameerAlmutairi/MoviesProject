USE [master]
GO
/****** Object:  Database [MoviesDB]    Script Date: 5/27/2023 03:01:25 PM ******/
CREATE DATABASE [MoviesDB]

GO
USE [MoviesDB]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 5/27/2023 03:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[isDeleted] [bit] NULL,
	[Creation_Date] [nvarchar](max) NULL,
 CONSTRAINT [PK_Directors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 5/27/2023 03:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[isDeleted] [bit] NULL,
	[Creation_Date] [nvarchar](max) NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 5/27/2023 03:01:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Publish_Date] [nvarchar](max) NULL,
	[Creation_Date] [nvarchar](max) NULL,
	[Director_Id] [int] NOT NULL,
	[Rating_Id] [int] NOT NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Directors] ON 

INSERT [dbo].[Directors] ([Id], [Name], [isDeleted], [Creation_Date]) VALUES (1, N'Director 1', 0, NULL)
INSERT [dbo].[Directors] ([Id], [Name], [isDeleted], [Creation_Date]) VALUES (2, N'Director 2', 0, NULL)
SET IDENTITY_INSERT [dbo].[Directors] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Name], [Description], [Publish_Date], [Creation_Date], [Director_Id], [Rating_Id], [isDeleted]) VALUES (1, N'John Wick 4', N'Movie Description', N'2023', NULL, 1, 1, 0)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Publish_Date], [Creation_Date], [Director_Id], [Rating_Id], [isDeleted]) VALUES (2, N'Movie 2', N'Description 2', N'2022', NULL, 1, 1, 0)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Publish_Date], [Creation_Date], [Director_Id], [Rating_Id], [isDeleted]) VALUES (4, N'new Movie', N'Movie Description new', N'01-01-2022', N'May 27 2023  3:48AM', 1, 1, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Publish_Date], [Creation_Date], [Director_Id], [Rating_Id], [isDeleted]) VALUES (5, N'new Movie2', N'Movie Description new22222', N'10-10-2023', N'May 27 2023  4:08AM', 1, 2, 0)
SET IDENTITY_INSERT [dbo].[Movies] OFF
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([Id], [Name], [isDeleted], [Creation_Date]) VALUES (1, N'Rating 1', 0, NULL)
INSERT [dbo].[Ratings] ([Id], [Name], [isDeleted], [Creation_Date]) VALUES (2, N'Rating 2', 0, NULL)
SET IDENTITY_INSERT [dbo].[Ratings] OFF
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Directors] FOREIGN KEY([Director_Id])
REFERENCES [dbo].[Directors] ([Id])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Directors]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Ratings] FOREIGN KEY([Rating_Id])
REFERENCES [dbo].[Ratings] ([Id])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Ratings]
GO
USE [master]
GO
ALTER DATABASE [MoviesDB] SET  READ_WRITE 
GO
