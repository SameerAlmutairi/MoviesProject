USE [MoviesDB]
GO
SET IDENTITY_INSERT [dbo].[Directors] ON 

INSERT [dbo].[Directors] ([Id], [Name], [isDeleted], [Creation_Date]) VALUES (1, N'Director 1', 0, NULL)
INSERT [dbo].[Directors] ([Id], [Name], [isDeleted], [Creation_Date]) VALUES (2, N'Director 2', 0, NULL)
SET IDENTITY_INSERT [dbo].[Directors] OFF
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([Id], [Name], [isDeleted], [Creation_Date]) VALUES (1, N'Rating 1', 0, NULL)
INSERT [dbo].[Ratings] ([Id], [Name], [isDeleted], [Creation_Date]) VALUES (2, N'Rating 2', 0, NULL)
SET IDENTITY_INSERT [dbo].[Ratings] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Name], [Description], [Publish_Date], [Creation_Date], [Director_Id], [Rating_Id], [isDeleted]) VALUES (1, N'John Wick 4', N'Movie Description', N'2023', NULL, 1, 1, 0)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Publish_Date], [Creation_Date], [Director_Id], [Rating_Id], [isDeleted]) VALUES (2, N'Movie 2', N'Description 2', N'2022', NULL, 1, 1, 0)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Publish_Date], [Creation_Date], [Director_Id], [Rating_Id], [isDeleted]) VALUES (4, N'new Movie', N'Movie Description new', N'01-01-2022', N'May 27 2023  3:48AM', 1, 1, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Publish_Date], [Creation_Date], [Director_Id], [Rating_Id], [isDeleted]) VALUES (5, N'new Movie2', N'Movie Description new22222', N'10-10-2023', N'May 27 2023  4:08AM', 1, 2, 0)
SET IDENTITY_INSERT [dbo].[Movies] OFF
