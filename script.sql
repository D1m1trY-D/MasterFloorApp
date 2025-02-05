
USE [MasterFloorCompany]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 29.01.2025 13:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PercentageRejects] [decimal](5, 4) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 29.01.2025 13:29:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DirectorName] [nvarchar](50) NOT NULL,
	[DirectorFirstName] [nvarchar](50) NOT NULL,
	[DirectorPatronymic] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[LegalAddress] [nvarchar](255) NOT NULL,
	[INN] [nvarchar](12) NOT NULL,
	[Rating] [int] NOT NULL,
	[IdPartnerType] [int] NOT NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProduct]    Script Date: 29.01.2025 13:29:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuantityProduct] [nvarchar](10) NULL,
	[SaleDate] [date] NULL,
	[IdProduct] [int] NOT NULL,
	[IdPartner] [int] NOT NULL,
 CONSTRAINT [PK_PartnerProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 29.01.2025 13:29:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 29.01.2025 13:29:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Article] [nvarchar](10) NOT NULL,
	[MinCostPartner] [decimal](10, 2) NOT NULL,
	[IdMaterialType] [int] NOT NULL,
	[IdProductType] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 29.01.2025 13:29:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CoefficientType] [decimal](4, 2) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([Id], [Name], [PercentageRejects]) VALUES (1, N'Тип материала 1', CAST(0.0010 AS Decimal(5, 4)))
INSERT [dbo].[MaterialType] ([Id], [Name], [PercentageRejects]) VALUES (2, N'Тип материала 2', CAST(0.0095 AS Decimal(5, 4)))
INSERT [dbo].[MaterialType] ([Id], [Name], [PercentageRejects]) VALUES (3, N'Тип материала 3', CAST(0.0028 AS Decimal(5, 4)))
INSERT [dbo].[MaterialType] ([Id], [Name], [PercentageRejects]) VALUES (4, N'Тип материала 4', CAST(0.0055 AS Decimal(5, 4)))
INSERT [dbo].[MaterialType] ([Id], [Name], [PercentageRejects]) VALUES (5, N'Тип материала 5', CAST(0.0034 AS Decimal(5, 4)))
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([Id], [Name], [DirectorName], [DirectorFirstName], [DirectorPatronymic], [Email], [Phone], [LegalAddress], [INN], [Rating], [IdPartnerType]) VALUES (1, N'База Строитель', N'Иванова', N'Александра', N'Ивановна', N'aleksandraivanova@ml.ru', N'493 123 45 67', N'652050, Кемеровская область, город Юрга, ул. Лесная, 15', N'2222455179', 7, 4)
INSERT [dbo].[Partner] ([Id], [Name], [DirectorName], [DirectorFirstName], [DirectorPatronymic], [Email], [Phone], [LegalAddress], [INN], [Rating], [IdPartnerType]) VALUES (2, N'Паркет 29', N'Петров', N'Василий', N'Петрович', N'vppetrov@vl.ru', N'987 123 56 78', N'164500, Архангельская область, город Северодвинск, ул. Строителей, 18', N'3333888520', 7, 1)
INSERT [dbo].[Partner] ([Id], [Name], [DirectorName], [DirectorFirstName], [DirectorPatronymic], [Email], [Phone], [LegalAddress], [INN], [Rating], [IdPartnerType]) VALUES (3, N'Стройсервис', N'Соловьев', N'Андрей', N'Николаевич', N'ansolovev@st.ru', N'812 223 32 00', N'188910, Ленинградская область, город Приморск, ул. Парковая, 21', N'4440391035', 7, 3)
INSERT [dbo].[Partner] ([Id], [Name], [DirectorName], [DirectorFirstName], [DirectorPatronymic], [Email], [Phone], [LegalAddress], [INN], [Rating], [IdPartnerType]) VALUES (4, N'Ремонт и отделка', N'Воробьева', N'Екатерина', N'Валерьевна', N'ekaterina.vorobeva@ml.ru', N'444 222 33 11', N'143960, Московская область, город Реутов, ул. Свободы, 51', N'1111520857', 5, 2)
INSERT [dbo].[Partner] ([Id], [Name], [DirectorName], [DirectorFirstName], [DirectorPatronymic], [Email], [Phone], [LegalAddress], [INN], [Rating], [IdPartnerType]) VALUES (5, N'МонтажПро', N'Степанов', N'Степан', N'Сергеевич', N'stepanov@stepan.ru', N'912 888 33 33', N'309500, Белгородская область, город Старый Оскол, ул. Рабочая, 122', N'5552431140', 10, 4)
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProduct] ON 

INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (1, N'15500', CAST(N'2023-03-23' AS Date), 1, 1)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (2, N'12350', CAST(N'2023-12-18' AS Date), 3, 1)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (3, N'37400', CAST(N'2024-06-07' AS Date), 4, 1)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (4, N'35000', CAST(N'2022-12-02' AS Date), 2, 2)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (5, N'1250', CAST(N'2023-05-17' AS Date), 5, 2)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (6, N'1000', CAST(N'2024-06-07' AS Date), 3, 2)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (7, N'7550', CAST(N'2024-07-01' AS Date), 1, 2)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (8, N'7250', CAST(N'2023-01-22' AS Date), 1, 3)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (9, N'2500', CAST(N'2024-07-05' AS Date), 2, 3)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (10, N'59050', CAST(N'2023-03-20' AS Date), 4, 4)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (11, N'37200', CAST(N'2024-03-12' AS Date), 3, 4)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (12, N'4500', CAST(N'2024-05-14' AS Date), 5, 4)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (13, N'50000', CAST(N'2023-09-19' AS Date), 3, 5)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (14, N'670000', CAST(N'2023-11-10' AS Date), 4, 5)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (15, N'35000', CAST(N'2024-04-15' AS Date), 1, 5)
INSERT [dbo].[PartnerProduct] ([Id], [QuantityProduct], [SaleDate], [IdProduct], [IdPartner]) VALUES (16, N'25000', CAST(N'2024-06-12' AS Date), 2, 5)
SET IDENTITY_INSERT [dbo].[PartnerProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerType] ON 

INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (1, N'ООО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (3, N'ПАО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (4, N'ЗАО')
SET IDENTITY_INSERT [dbo].[PartnerType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Article], [MinCostPartner], [IdMaterialType], [IdProductType]) VALUES (1, N'Паркетная доска Ясень темный однополосная 14 мм', N'8758385', CAST(4456.90 AS Decimal(10, 2)), 3, 3)
INSERT [dbo].[Product] ([Id], [Name], [Article], [MinCostPartner], [IdMaterialType], [IdProductType]) VALUES (2, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'8858958', CAST(7330.99 AS Decimal(10, 2)), 1, 3)
INSERT [dbo].[Product] ([Id], [Name], [Article], [MinCostPartner], [IdMaterialType], [IdProductType]) VALUES (3, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'7750282', CAST(1799.33 AS Decimal(10, 2)), 5, 1)
INSERT [dbo].[Product] ([Id], [Name], [Article], [MinCostPartner], [IdMaterialType], [IdProductType]) VALUES (4, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'7028748', CAST(3890.41 AS Decimal(10, 2)), 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Article], [MinCostPartner], [IdMaterialType], [IdProductType]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'5012543', CAST(5450.59 AS Decimal(10, 2)), 2, 4)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([Id], [Name], [CoefficientType]) VALUES (1, N'Ламинат
', CAST(2.35 AS Decimal(4, 2)))
INSERT [dbo].[ProductType] ([Id], [Name], [CoefficientType]) VALUES (2, N'Массивная доска
', CAST(5.15 AS Decimal(4, 2)))
INSERT [dbo].[ProductType] ([Id], [Name], [CoefficientType]) VALUES (3, N'Паркетная доска
', CAST(4.34 AS Decimal(4, 2)))
INSERT [dbo].[ProductType] ([Id], [Name], [CoefficientType]) VALUES (4, N'Пробковое покрытие
', CAST(1.50 AS Decimal(4, 2)))
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerType1] FOREIGN KEY([IdPartnerType])
REFERENCES [dbo].[PartnerType] ([Id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerType1]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Partner1] FOREIGN KEY([IdPartner])
REFERENCES [dbo].[Partner] ([Id])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Partner1]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_Product1] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_Product1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_MaterialType] FOREIGN KEY([IdMaterialType])
REFERENCES [dbo].[MaterialType] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_MaterialType]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType1] FOREIGN KEY([IdProductType])
REFERENCES [dbo].[ProductType] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType1]
GO
USE [master]
GO
ALTER DATABASE [MasterFloorCompany] SET  READ_WRITE 
GO
