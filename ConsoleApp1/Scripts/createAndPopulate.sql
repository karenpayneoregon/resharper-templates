USE [master]
GO
/****** 
	Create the new dataase EF.UsingInterfaces in SQL-Server Management Studio or in Visual Studio then run this scrip 
******/

USE [EF.UsingInterfaces]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/30/2023 11:06:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 7/30/2023 11:06:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/30/2023 11:06:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (1, N'Cheese')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2, N'Meat')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (3, N'Fish')
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (4, N'Bread')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([CountryId], [Name]) VALUES (1, N'Argentina')
INSERT [dbo].[Countries] ([CountryId], [Name]) VALUES (2, N'Austria')
INSERT [dbo].[Countries] ([CountryId], [Name]) VALUES (3, N'Belgium')
INSERT [dbo].[Countries] ([CountryId], [Name]) VALUES (4, N'Brazil')
INSERT [dbo].[Countries] ([CountryId], [Name]) VALUES (5, N'Canada')
INSERT [dbo].[Countries] ([CountryId], [Name]) VALUES (6, N'Denmark')
INSERT [dbo].[Countries] ([CountryId], [Name]) VALUES (7, N'France')
INSERT [dbo].[Countries] ([CountryId], [Name]) VALUES (8, N'Germany')
INSERT [dbo].[Countries] ([CountryId], [Name]) VALUES (9, N'Ireland')
INSERT [dbo].[Countries] ([CountryId], [Name]) VALUES (10, N'Italy')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (1, N'Cheddar', 1)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (2, N'Brie', 1)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (3, N'Stilton', 1)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (4, N'Cheshire', 1)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (5, N'Swiss', 1)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (6, N'Gruyere', 1)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (7, N'Colby', 1)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (8, N'Mozzela', 1)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (9, N'Ricotta', 1)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (10, N'Parmesan', 1)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (11, N'Ham', 2)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (12, N'Beef', 2)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (13, N'Chicken', 2)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (14, N'Turkey', 2)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (15, N'Prosciutto', 2)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (16, N'Bacon', 2)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (17, N'Mutton', 2)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (18, N'Pastrami', 2)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (19, N'Hazlet', 2)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (20, N'Salami', 2)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (21, N'Salmon', 3)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (22, N'Tuna', 3)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (23, N'Mackerel', 3)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (24, N'Rye', 4)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (25, N'Wheat', 4)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (26, N'Brioche', 4)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (27, N'Naan', 4)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (28, N'Focaccia', 4)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (29, N'Malted', 4)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (30, N'Sourdough', 4)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (31, N'Corn', 4)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (32, N'White', 4)
INSERT [dbo].[Products] ([ProductId], [Name], [CategoryId]) VALUES (33, N'Soda', 4)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 7/30/2023 11:06:26 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [EF.UsingInterfaces] SET  READ_WRITE 
GO
