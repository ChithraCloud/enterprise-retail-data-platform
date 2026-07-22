USE [RetailDataPlatform]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sales](
	[Row_ID] [smallint] NOT NULL,
	[Order_ID] [nvarchar](50) NOT NULL,
	[Order_Date] [date] NOT NULL,
	[Ship_Date] [date] NOT NULL,
	[Ship_Mode] [nvarchar](50) NOT NULL,
	[Customer_ID] [nvarchar](50) NOT NULL,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Segment] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Postal_Code] [int] NULL,
	[Region] [nvarchar](50) NOT NULL,
	[Product_ID] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Sub_Category] [nvarchar](50) NOT NULL,
	[Product_Name] [nvarchar](150) NOT NULL,
	[Sales] [float] NOT NULL
) ON [PRIMARY]
GO


