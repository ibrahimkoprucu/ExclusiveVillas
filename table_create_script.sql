USE [ExclusiveVillas]
GO
/****** Object:  Table [dbo].[Villas]    Script Date: 12/1/2018 7:12:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Villas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[WeeklyPrice] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Villas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Villas] ON 
GO
INSERT [dbo].[Villas] ([Id], [Name], [Address], [WeeklyPrice]) VALUES (1, N'Villa Bodamya', N'Pınarbaşı Mevkii No:66 İslamlar/Kaş', CAST(6000 AS Decimal(18, 0)))
GO
INSERT [dbo].[Villas] ([Id], [Name], [Address], [WeeklyPrice]) VALUES (2, N'Villa Panaroma', N'Kısık Mevkii No:55 İslamlar/Kaş', CAST(7000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Villas] OFF
GO
