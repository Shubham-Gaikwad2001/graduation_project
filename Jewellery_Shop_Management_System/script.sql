USE [Jewellery_Shop_Management_System_DB]
GO
/****** Object:  Table [dbo].[Product_Rate_Details]    Script Date: 02/13/2022 11:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Rate_Details](
	[ID] [int] NOT NULL,
	[Product_Name] [nvarchar](20) NOT NULL,
	[Sales_Rate] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Details]    Script Date: 02/13/2022 11:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Details](
	[Product_ID] [int] NOT NULL,
	[Category] [nvarchar](40) NOT NULL,
	[Sub_Category] [nvarchar](40) NOT NULL,
	[Product_Name] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_Product_Details_1] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 02/13/2022 11:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[Order_ID] [int] NOT NULL,
	[Mob_No] [numeric](10, 0) NOT NULL,
	[Date] [date] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Amount]    Script Date: 02/13/2022 11:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order_Amount](
	[Order_ID] [int] NOT NULL,
	[Other_Amount] [money] NOT NULL,
	[Total_Amount] [money] NOT NULL,
	[Paid_Amount] [money] NOT NULL,
	[Remaining_Amount] [money] NOT NULL,
	[Total_Amount_Paid_OR_Not] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login_Details]    Script Date: 02/13/2022 11:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login_Details](
	[Username] [nvarchar](8) NOT NULL,
	[Password] [nvarchar](8) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Details]    Script Date: 02/13/2022 11:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee_Details](
	[Employee_ID] [int] NOT NULL,
	[Join_Date] [date] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Mobile_No] [numeric](10, 0) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [varchar](20) NOT NULL,
	[Account_No] [numeric](15, 0) NOT NULL,
	[Adhar_No] [numeric](12, 0) NOT NULL,
	[Qualification] [nvarchar](20) NOT NULL,
	[Experiance] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Salary] [money] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[Leave_Date] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Distributor_Details]    Script Date: 02/13/2022 11:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distributor_Details](
	[Distributor_ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Mobile_No] [numeric](10, 0) NOT NULL,
	[Adhar_No] [numeric](12, 0) NOT NULL,
	[PAN_No] [nvarchar](10) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Shop_Name] [nvarchar](30) NOT NULL,
	[Reg_No] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Distributor_Details] PRIMARY KEY CLUSTERED 
(
	[Distributor_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Details]    Script Date: 02/13/2022 11:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer_Details](
	[Customer_ID] [int] NOT NULL,
	[Name] [varchar](40) NOT NULL,
	[Mobile_No] [numeric](10, 0) NOT NULL,
	[Address] [varchar](80) NOT NULL,
	[Date] [date] NOT NULL,
	[PAN_No] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Customer_Details] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category_Details]    Script Date: 02/13/2022 11:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Details](
	[Category_ID] [int] NOT NULL,
	[Category_Name] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Details]    Script Date: 02/13/2022 11:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Details](
	[Username] [nvarchar](8) NOT NULL,
	[Password] [nvarchar](8) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory_Details]    Script Date: 02/13/2022 11:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory_Details](
	[Sub_Category_ID] [int] NOT NULL,
	[Category_Name] [nvarchar](40) NOT NULL,
	[SubCategory_Name] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock_Added_By_Distributor]    Script Date: 02/13/2022 11:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_Added_By_Distributor](
	[Distributor_ID] [int] NOT NULL,
	[Stock_Added_Date] [date] NOT NULL,
	[Category] [nvarchar](40) NOT NULL,
	[Sub_Category] [nvarchar](40) NOT NULL,
	[Product_Name] [nvarchar](40) NOT NULL,
	[Add_Stock] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchased_Order_Details]    Script Date: 02/13/2022 11:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchased_Order_Details](
	[Order_ID] [int] NOT NULL,
	[Category] [nvarchar](40) NOT NULL,
	[Sub_Category] [nvarchar](40) NOT NULL,
	[Product] [nvarchar](50) NOT NULL,
	[Purity] [nvarchar](40) NOT NULL,
	[Net_Wt] [numeric](5, 2) NOT NULL,
	[Unit] [nvarchar](40) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Order_Placed] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase_Details]    Script Date: 02/13/2022 11:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_Details](
	[Customer_ID] [int] NOT NULL,
	[Category] [nvarchar](40) NOT NULL,
	[Sub_Category] [nvarchar](40) NOT NULL,
	[Product_Name] [nvarchar](80) NOT NULL,
	[Purity] [nvarchar](20) NOT NULL,
	[Net_Wt] [numeric](5, 2) NOT NULL,
	[Unit] [nvarchar](20) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Weight_And_Price_Details]    Script Date: 02/13/2022 11:52:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Weight_And_Price_Details](
	[Product_ID] [int] NOT NULL,
	[Net_Wt] [numeric](5, 2) NOT NULL,
	[Unit] [nvarchar](40) NOT NULL,
	[Purity] [nvarchar](20) NOT NULL,
	[Price] [money] NOT NULL,
	[Current_Stock] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill_Reciept_Details]    Script Date: 02/13/2022 11:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bill_Reciept_Details](
	[Customer_ID] [int] NOT NULL,
	[GST] [int] NOT NULL,
	[Other_Amount] [int] NOT NULL,
	[Total_Amount] [numeric](10, 2) NOT NULL,
	[Payment_Mode] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Bill_Reciept_Details_Customer_Details]    Script Date: 02/13/2022 11:52:09 ******/
ALTER TABLE [dbo].[Bill_Reciept_Details]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Reciept_Details_Customer_Details] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer_Details] ([Customer_ID])
GO
ALTER TABLE [dbo].[Bill_Reciept_Details] CHECK CONSTRAINT [FK_Bill_Reciept_Details_Customer_Details]
GO
/****** Object:  ForeignKey [FK_Product_Weight_And_Price_Details_Product_Details]    Script Date: 02/13/2022 11:52:10 ******/
ALTER TABLE [dbo].[Product_Weight_And_Price_Details]  WITH CHECK ADD  CONSTRAINT [FK_Product_Weight_And_Price_Details_Product_Details] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product_Details] ([Product_ID])
GO
ALTER TABLE [dbo].[Product_Weight_And_Price_Details] CHECK CONSTRAINT [FK_Product_Weight_And_Price_Details_Product_Details]
GO
/****** Object:  ForeignKey [FK_Purchase_Details_Customer_Details]    Script Date: 02/13/2022 11:52:10 ******/
ALTER TABLE [dbo].[Purchase_Details]  WITH CHECK ADD  CONSTRAINT [FK_Purchase_Details_Customer_Details] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer_Details] ([Customer_ID])
GO
ALTER TABLE [dbo].[Purchase_Details] CHECK CONSTRAINT [FK_Purchase_Details_Customer_Details]
GO
/****** Object:  ForeignKey [FK_Purchased_Order_Details_Order_Details]    Script Date: 02/13/2022 11:52:10 ******/
ALTER TABLE [dbo].[Purchased_Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Purchased_Order_Details_Order_Details] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Order_Details] ([Order_ID])
GO
ALTER TABLE [dbo].[Purchased_Order_Details] CHECK CONSTRAINT [FK_Purchased_Order_Details_Order_Details]
GO
/****** Object:  ForeignKey [FK_Stock_Added_By_Distributor_Distributor_Details]    Script Date: 02/13/2022 11:52:10 ******/
ALTER TABLE [dbo].[Stock_Added_By_Distributor]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Added_By_Distributor_Distributor_Details] FOREIGN KEY([Distributor_ID])
REFERENCES [dbo].[Distributor_Details] ([Distributor_ID])
GO
ALTER TABLE [dbo].[Stock_Added_By_Distributor] CHECK CONSTRAINT [FK_Stock_Added_By_Distributor_Distributor_Details]
GO
