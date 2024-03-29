USE [CommerceApp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[City] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderHeaderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[ShippingDate] [datetime2](7) NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[TrackingNumber] [nvarchar](max) NULL,
	[Carrier] [nvarchar](max) NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[PaymentDueDate] [datetime2](7) NOT NULL,
	[PaymentIntentId] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[SessionId] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ISBN] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[ListPrice] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[Price50] [float] NOT NULL,
	[Price100] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ImageURL] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 1/10/2024 11:01:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230612071157_AddCategoryTable', N'8.0.0-preview.4.23259.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230702084920_SeedCategoryTable', N'8.0.0-preview.4.23259.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230809072850_AddCategoryToDbAndSeedTable', N'8.0.0-preview.4.23259.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230811041124_add-product', N'8.0.0-preview.4.23259.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230811050146_test', N'8.0.0-preview.4.23259.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230811050729_add-frkey-product', N'8.0.0-preview.4.23259.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230811051037_add-img-url', N'8.0.0-preview.4.23259.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230828061341_addIndentity', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230913072931_ExtendIdentityUser', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230914095615_UpdateNameToBeStringApplicationUser', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231114081731_addCompanyTable', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231114084910_seed-database-company', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231114085207_add-company-to-user', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240105160202_add-shopping-cart', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240105162915_add-key-shopping-cart', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240108092149_add-order-detail', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240109033433_addSessionId', N'7.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3f0a2abc-a5cd-43eb-822c-34baab309b94', N'Employee', N'EMPLOYEE', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5356812c-4e5a-47db-a90c-6b8736774845', N'Customer', N'CUSTOMER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8e78b14d-8ed8-45d9-b9ec-15f2a5c6e463', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a049a235-9983-478a-bdaf-81f175ba0524', N'Company', N'COMPANY', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b2d3b1d2-190b-40e3-b1a1-c0b1e8ccf2eb', N'5356812c-4e5a-47db-a90c-6b8736774845')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd012f092-7518-4c12-8896-cd1e4debf883', N'5356812c-4e5a-47db-a90c-6b8736774845')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd41d3b0b-ebf7-4408-9856-0bcd20241088', N'5356812c-4e5a-47db-a90c-6b8736774845')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0eefd58f-d562-48e1-8bea-3a7cf68ee1d0', N'8e78b14d-8ed8-45d9-b9ec-15f2a5c6e463')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ddcfccdd-eb53-496c-b8a6-104e22823810', N'8e78b14d-8ed8-45d9-b9ec-15f2a5c6e463')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7307345d-000d-4acc-8082-68cc2fbe5e04', N'a049a235-9983-478a-bdaf-81f175ba0524')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress], [CompanyID]) VALUES (N'027ccca4-d93d-4813-a18f-9571b2db34ea', N'test1@gmail.com', N'TEST1@GMAIL.COM', N'test1@gmail.com', N'TEST1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEH1mVAXMJ43NUcj4Luhjr8KfqbINzW9Ndfw3klmpry+T4IduE0flxNANjoQDV+MAXw==', N'UN2QA6B63LOTLLQENHDDR55RPF6N7G6Z', N'b7384470-797a-4788-807e-ef8b01d05039', NULL, 0, 0, NULL, 1, 0, NULL, N'IdentityUser', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress], [CompanyID]) VALUES (N'0eefd58f-d562-48e1-8bea-3a7cf68ee1d0', N'testadmin@gmail.com', N'TESTADMIN@GMAIL.COM', N'testadmin@gmail.com', N'TESTADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEDHQEJh0pwu2a6RCYaznN+b8qfe/Q1yy0nq1Eh9SdZBT8NDCsBlgvC6dROxwtubaKw==', N'VTKNEI537Q4NSC2UNNUUFVS5RLLAOQG6', N'11ced6a9-e064-492f-87de-5e624851630c', NULL, 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress], [CompanyID]) VALUES (N'4d672d00-89a5-4a16-a354-6d80a9e61071', N'test@gmail.com', N'TEST@GMAIL.COM', N'test@gmail.com', N'TEST@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEEw/+yfFZ+Gvf+QYh2w1umnbMA0B1MxusUGjr3Uav4+mtdLyBWKstiqENn9brMZWWw==', N'MF63BXI2OWYMS4GLISOLNSJVAQ2EOOLP', N'd9f5c2c5-7a57-4223-b759-4ff480f63548', NULL, 0, 0, NULL, 1, 0, NULL, N'IdentityUser', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress], [CompanyID]) VALUES (N'7307345d-000d-4acc-8082-68cc2fbe5e04', N'company@gmail.com', N'COMPANY@GMAIL.COM', N'company@gmail.com', N'COMPANY@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELoZbiPY+dxzZcvU2f2A0Xz46oe/XnwWE7GICST8YwfbM70WSqGtfzJe02HkI/as/g==', N'2KYLHL4WS6CD7JM3ELDL2KU5BEY3UGRY', N'5dccb685-ceb6-4dbe-b612-27acbb7d7aaf', N'1234567890', 0, 0, NULL, 1, 0, N'hanoi', N'ApplicationUser', N'company user 1', N'100000', N'hanoi', N'hanoi', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress], [CompanyID]) VALUES (N'7e8ca836-ee68-426a-9be1-c4f4f92af63f', N'appuser@gmail.com', N'APPUSER@GMAIL.COM', N'appuser@gmail.com', N'APPUSER@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAELy75PGgVYebjA643POGNjLVk8ZlMpQtuAfsYL1yz5JP5UDJ+3WEVq7LgR+A3X1+XQ==', N'MBZHUWS2JKCYN5WFYKZCQDIMGTFDHUMD', N'621ec7bd-072d-43d6-82ae-ad6a4a0b7f93', NULL, 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress], [CompanyID]) VALUES (N'b2d3b1d2-190b-40e3-b1a1-c0b1e8ccf2eb', N'customer1@gmail.com', N'CUSTOMER1@GMAIL.COM', N'customer1@gmail.com', N'CUSTOMER1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEP6VVHedeK9fizrmSOzC0GveyNxW7JRcjuTjDg1aP6AA/1kEPVjwu8k15cGQnwbB0w==', N'SOSPEXZK6VMN4FXUYA35J4MAVN4JADHN', N'73f6daf2-47e9-48bd-849c-20c4f56f1b8d', N'1234567890', 0, 0, NULL, 1, 0, N'hanoi', N'ApplicationUser', N'vinh', N'100000', N'hanoi', N'hanoi', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress], [CompanyID]) VALUES (N'cad0d5d2-1f4c-49de-a36b-6447b381d3e0', N'testadmin3@gmail.com', N'TESTADMIN3@GMAIL.COM', N'testadmin3@gmail.com', N'TESTADMIN3@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEGAoAJdA28JSHRjZQEkDXFPJPh5dJz3XN5/vVB62Z6WoDb4gkhcuNUVOAClCZwxbrw==', N'6G5BRAF5UC5K6RBIVBIX7NWCY3FVOIYE', N'113f73fe-e477-417f-9e15-3c9da982ad27', NULL, 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress], [CompanyID]) VALUES (N'd012f092-7518-4c12-8896-cd1e4debf883', N'customer@gmail.com', N'CUSTOMER@GMAIL.COM', N'customer@gmail.com', N'CUSTOMER@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHzk2sVRnLWKcwUK4UI20FJvtJAvvfa1kgFsr3Gf7GtilGqeYUZzNsy6xzYlx7C1uw==', N'JDUWYGKYHPV33TMGOCJWNXM6WL7XJKIT', N'eef75708-eb82-490a-bbee-7457dfc2e78a', NULL, 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', NULL, NULL, NULL, N'Ha noi', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress], [CompanyID]) VALUES (N'd41d3b0b-ebf7-4408-9856-0bcd20241088', N'testadmin2@gmail.com', N'TESTADMIN2@GMAIL.COM', N'testadmin2@gmail.com', N'TESTADMIN2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEC4zeRrwRIr9tv1JFT6e3SkS6+yGT2YZqXzA3iq34rhVIIdW9ElrQAfwPKWXICN4Cg==', N'VG5UFN3JXPNSEOUL66FLM7CWV36WOQ7F', N'd947e899-80eb-4cf1-8bd8-fc9a2003fb39', NULL, 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress], [CompanyID]) VALUES (N'd5b09e53-9b08-47c5-80df-8245ec9e1eaa', N'test2@gmail.com', N'TEST2@GMAIL.COM', N'test2@gmail.com', N'TEST2@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAELC/IHMmbcpgepqQtcorVJjWIKGNDuDfDVjOUU6vS7hNankBrlHU+n7Iq7uGB2v8wg==', N'MYRJE75DAMWDLPBO7KTIXRTYIXOUBDYQ', N'6320782d-2d0e-4553-9430-8baf615afe13', NULL, 0, 0, NULL, 1, 0, NULL, N'IdentityUser', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [Discriminator], [Name], [PostalCode], [State], [StreetAddress], [CompanyID]) VALUES (N'ddcfccdd-eb53-496c-b8a6-104e22823810', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJj04ECSStiHpd/gYqp6vNCTcnxHIOEJ9ZL8/IghubAxsa/r71Jq1VjklHez0mWECg==', N'R5JG34RNLRTFKUERAEJATYN45XZZMYRD', N'7da839a0-282a-496c-aad2-dcdc2afb1212', NULL, 0, 0, NULL, 1, 0, NULL, N'ApplicationUser', N'admin', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder]) VALUES (1, N'Action', 1)
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder]) VALUES (2, N'SciFi', 2)
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder]) VALUES (3, N'History', 3)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (1, N'Company 1', N'address 1', N'City 1', N'11', N'111111', N'1111111111')
INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (2, N'Company 2', N'address 2', N'City 2', N'22', N'222222', N'1111111111')
INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (3, N'Company 3', N'address 3', N'City 3', N'33', N'333333', N'1111111111')
INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (4, N'Company 4', N'address 4', N'City 4', N'44', N'444444', N'1111111111')
INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (5, N'Company 5', N'address 5', N'City 5', N'55', N'555555', N'1111111111')
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (1, 2, 1, 4, 90)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (2, 3, 1, 4, 90)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (3, 4, 1, 4, 90)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (4, 5, 1, 12, 90)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (5, 5, 2, 5, 30)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (6, 6, 1, 12, 90)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (7, 6, 2, 5, 30)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (8, 7, 1, 12, 90)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (9, 7, 2, 5, 30)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (10, 8, 1, 12, 90)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (11, 8, 2, 5, 30)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (12, 9, 1, 12, 90)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (13, 9, 2, 5, 30)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (1003, 1004, 1, 4, 90)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (1004, 1005, 1, 4, 90)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (1005, 1006, 1, 5, 90)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (1, N'7307345d-000d-4acc-8082-68cc2fbe5e04', CAST(N'2024-01-09T10:15:53.7113326' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'Approved', N'ApprovedForDelayedPayment', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'company user 1', NULL)
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (2, N'7307345d-000d-4acc-8082-68cc2fbe5e04', CAST(N'2024-01-09T10:16:44.1647546' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'Approved', N'ApprovedForDelayedPayment', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'company user 1', NULL)
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (3, N'7307345d-000d-4acc-8082-68cc2fbe5e04', CAST(N'2024-01-09T10:17:26.4381949' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'Approved', N'ApprovedForDelayedPayment', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'company user 1', NULL)
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (4, N'7307345d-000d-4acc-8082-68cc2fbe5e04', CAST(N'2024-01-09T11:00:43.3744560' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'Approved', N'ApprovedForDelayedPayment', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'company user 1', NULL)
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (5, N'b2d3b1d2-190b-40e3-b1a1-c0b1e8ccf2eb', CAST(N'2024-01-09T11:01:00.0337760' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'Approved', N'ApprovedForDelayedPayment', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'vinh', NULL)
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (6, N'b2d3b1d2-190b-40e3-b1a1-c0b1e8ccf2eb', CAST(N'2024-01-09T11:01:38.1326351' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'Approved', N'ApprovedForDelayedPayment', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'vinh', NULL)
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (7, N'b2d3b1d2-190b-40e3-b1a1-c0b1e8ccf2eb', CAST(N'2024-01-09T11:03:39.1943848' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'vinh', N'cs_test_b1F4e8Dy3ebOIzzeOiqmTX2l7xmA6djYYTuzchfyYTJGLo94zPxSjYDeTz')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (8, N'b2d3b1d2-190b-40e3-b1a1-c0b1e8ccf2eb', CAST(N'2024-01-09T11:06:12.2008590' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'vinh', N'cs_test_b1ISDQdt3pZUIc70hwr1gwV0FSQ7p9cFVe2vzCJ5R2d8FMJiWDRtvPYiXX')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (9, N'b2d3b1d2-190b-40e3-b1a1-c0b1e8ccf2eb', CAST(N'2024-01-09T11:15:14.0145975' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'Approved', N'Approved', NULL, NULL, CAST(N'2024-01-09T11:15:57.9738878' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'pi_3OWWj0CcsSEo4WCH1WvI5uvw', N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'vinh', N'cs_test_b1UPSTrDP7HeJEzxNV4UwD4i9qE0Q9MTRhGxMvIC8hlCKAS9smUDWb7oq5')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (1004, N'b2d3b1d2-190b-40e3-b1a1-c0b1e8ccf2eb', CAST(N'2024-01-09T16:27:59.6705121' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'vinh', N'cs_test_a1MctUf8s5DRZnC8xoGghPHVGb31kvOHaSwFHmJzWaNEjTZ4ywj6FyfUs4')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (1005, N'b2d3b1d2-190b-40e3-b1a1-c0b1e8ccf2eb', CAST(N'2024-01-09T16:29:36.6460312' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'Approved', N'Approved', NULL, NULL, CAST(N'2024-01-09T16:31:31.0863422' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'pi_3OWbdtCcsSEo4WCH1mkcul3U', N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'vinh', N'cs_test_a1PkIqJKQebS2fHdoVa4BsCJSIzCtqhxYSaHjLmfLRdIj0q08WCX0bxGR8')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name], [SessionId]) VALUES (1006, N'b2d3b1d2-190b-40e3-b1a1-c0b1e8ccf2eb', CAST(N'2024-01-09T16:36:21.4670956' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 450, N'Approved', N'Approved', NULL, NULL, CAST(N'2024-01-09T16:36:45.4337995' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'pi_3OWbjeCcsSEo4WCH1yBRIOkU', N'1234567890', N'hanoi', N'hanoi', N'hanoi', N'100000', N'vinh', N'cs_test_a1vcnBxE3qEhRsjq0z47jOKW1rvWKUfDTeyrEa45GK75QHbuTnfCecVBXT')
SET IDENTITY_INSERT [dbo].[OrderHeaders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [ImageURL]) VALUES (1, N'Fortune of Time', N'<p>Praesent vitae sodales libero. Praesent molestie orci augue, vitae euismod velit sollicitudin ac. Praesent vestibulum facilisis nibh ut ultricies. Nunc malesuada viverra ipsum sit amet tincidunt.</p>', N'SWD9999001', N'Billy Spark', 99, 90, 85, 80, 1, N'\images\product\f7c099b9-6b82-4658-9c8a-2781609df048.jpg')
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [ImageURL]) VALUES (2, N'Dark Skies        ', N'<p>Praesent vitae sodales libero. Praesent molestie orci augue, vitae euismod velit sollicitudin ac. Praesent vestibulum facilisis nibh ut ultricies. Nunc malesuada viverra ipsum sit amet tincidunt.</p>', N'CAW777777701', N'Nancy Hoover', 40, 30, 25, 20, 2, N'\images\product\94a7f1f3-85d6-4950-af59-7b76d802c5f0.jpg')
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [ImageURL]) VALUES (3, N'Vanish in the Sunset', N'<p>Praesent vitae sodales libero. Praesent molestie orci augue, vitae euismod velit sollicitudin ac. Praesent vestibulum facilisis nibh ut ultricies. Nunc malesuada viverra ipsum sit amet tincidunt.</p>', N'RITO5555501', N'Julian Button', 55, 50, 40, 35, 3, N'\images\product\11c6c81b-e16d-4921-8540-78f501c9deed.jpg')
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [ImageURL]) VALUES (4, N'Cotton Candy', N'<p>Praesent vitae sodales libero. Praesent molestie orci augue, vitae euismod velit sollicitudin ac. Praesent vestibulum facilisis nibh ut ultricies. Nunc malesuada viverra ipsum sit amet tincidunt.</p>', N'WS3333333301', N'Abby Muscles', 70, 65, 60, 55, 1, N'\images\product\a53d1c49-7f21-480c-be92-9247cd747572.jpg')
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [ImageURL]) VALUES (5, N'Rock in the Ocean', N'<p>Praesent vitae sodales libero. Praesent molestie orci augue, vitae euismod velit sollicitudin ac. Praesent vestibulum facilisis nibh ut ultricies. Nunc malesuada viverra ipsum sit amet tincidunt.</p>', N'SOTJ1111111101', N'Ron Parker', 30, 27, 25, 20, 2, N'\images\product\47e276b7-e574-4665-aeb9-b339e0ae8682.jpg')
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [CategoryId], [ImageURL]) VALUES (6, N'Leaves and Wonders', N'<p>Praesent vitae sodales libero. Praesent molestie orci augue, vitae euismod velit sollicitudin ac. Praesent vestibulum facilisis nibh ut ultricies. Nunc malesuada viverra ipsum sit amet tincidunt.</p>', N'FOT000000001', N'Laura Phantom', 25, 23, 22, 20, 3, N'\images\product\6d45a167-635e-4d49-bfdd-249153c79dde.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [ProductId], [Count], [ApplicationUserId]) VALUES (9, 1, 4, N'7307345d-000d-4acc-8082-68cc2fbe5e04')
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (N'') FOR [ImageURL]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderHeaderId] FOREIGN KEY([OrderHeaderId])
REFERENCES [dbo].[OrderHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderHeaderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderHeaders]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderHeaders] CHECK CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Products_ProductId]
GO
