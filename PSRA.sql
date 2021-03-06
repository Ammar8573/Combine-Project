USE [PSRA]
GO
/****** Object:  Table [dbo].[_TblChat]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_TblChat](
	[ChatId] [bigint] IDENTITY(1,1) NOT NULL,
	[ChatComment] [nvarchar](500) NULL,
	[Sendby] [bigint] NULL,
	[SendTo] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ChatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_TblNews]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_TblNews](
	[NewsId] [bigint] IDENTITY(1,1) NOT NULL,
	[NewsTitle] [nvarchar](200) NULL,
	[NewsDetail] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[NewsPicture] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_TblNotesBoard]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_TblNotesBoard](
	[NotesBoardID] [int] IDENTITY(1,1) NOT NULL,
	[NotesBoardTitle] [nvarchar](50) NULL,
	[NotesBoardDetail] [nvarchar](50) NULL,
	[ShelterHomeId] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[NotesBoardStatus] [int] NULL,
 CONSTRAINT [PK__TblNotesBoard] PRIMARY KEY CLUSTERED 
(
	[NotesBoardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HousingSocietyPlatform_TblChat]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HousingSocietyPlatform_TblChat](
	[ChatId] [bigint] IDENTITY(1,1) NOT NULL,
	[ChatComment] [nvarchar](500) NULL,
	[Sendby] [bigint] NULL,
	[SendTo] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ChatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HousingSocietyPlatform_TblNews]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HousingSocietyPlatform_TblNews](
	[NewsId] [bigint] IDENTITY(1,1) NOT NULL,
	[NewsTitle] [nvarchar](200) NULL,
	[NewsDetail] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[NewsPicture] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchoolType]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolType](
	[SchoolTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_SchoolType] PRIMARY KEY CLUSTERED 
(
	[SchoolTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SHMS_TblApply]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHMS_TblApply](
	[ApplyId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[SchoolId] [bigint] NULL,
	[Detail] [nvarchar](500) NULL,
	[CreatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SHMS_TblComplaint]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHMS_TblComplaint](
	[ComplaintId] [bigint] IDENTITY(1,1) NOT NULL,
	[ComplaintTitle] [nvarchar](200) NULL,
	[ComplaintDetail] [nvarchar](500) NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [bigint] NOT NULL,
	[ComplaintStatus] [int] NULL,
	[Complaintdate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ComplaintId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SHMS_TblComplaintComment]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHMS_TblComplaintComment](
	[ComplaintCommentId] [bigint] IDENTITY(1,1) NOT NULL,
	[ComplaintComment] [nvarchar](500) NULL,
	[CreatedOn] [datetime] NULL,
	[ComplaintId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ComplaintCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SHMS_TblDistrict]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHMS_TblDistrict](
	[DistrictId] [bigint] IDENTITY(1,1) NOT NULL,
	[DistrictName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SHMS_TblExperience]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHMS_TblExperience](
	[ExperienceId] [bigint] IDENTITY(1,1) NOT NULL,
	[ExperienceFrom] [date] NULL,
	[ExperienceTo] [date] NULL,
	[UserId] [bigint] NULL,
	[ExperiencePicture] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[DistrictId] [bigint] NULL,
	[SchoolName] [nvarchar](50) NULL,
	[SubjectType] [nvarchar](50) NULL,
	[Detail] [nvarchar](100) NULL,
 CONSTRAINT [PK__SHMS_Tbl__2F4E34493E16F8F1] PRIMARY KEY CLUSTERED 
(
	[ExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SHMS_TblPayment]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHMS_TblPayment](
	[PaymentId] [bigint] IDENTITY(1,1) NOT NULL,
	[PaidAmount] [money] NULL,
	[RegAmount] [money] NULL,
	[SchoolId] [bigint] NULL,
	[PaymentStatus] [nvarchar](50) NULL,
	[PaymentPicture] [nvarchar](50) NULL,
	[TransactionId] [nvarchar](50) NULL,
	[TransactionDate] [date] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[UserId] [int] NULL,
	[CreatedDate] [date] NULL,
 CONSTRAINT [PK__SHMS_Tbl__9B556A38A6B68888] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SHMS_TblRoles]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHMS_TblRoles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SHMS_TblSchool]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHMS_TblSchool](
	[SchoolId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[SchoolName] [nvarchar](100) NULL,
	[SchoolRegNo] [nvarchar](100) NULL,
	[SchoolDetail] [nvarchar](500) NULL,
	[SchoolContactNo] [nvarchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[SchoolPicture] [nvarchar](200) NULL,
	[SchoolStatus] [int] NULL,
	[DistrictId] [bigint] NULL,
	[OwnerId] [bigint] NULL,
	[RegistrationType] [nvarchar](50) NULL,
	[YearOfEsteblesh] [nvarchar](50) NULL,
	[SchoolTypeId] [int] NULL,
	[SchoolLevel] [nvarchar](50) NULL,
	[SchoolGenderType] [nvarchar](50) NULL,
	[SessionYear] [nvarchar](50) NULL,
	[PostalAddress] [nvarchar](200) NULL,
	[Location] [nvarchar](50) NULL,
	[Createddate] [date] NULL,
	[UpdatedDate] [date] NULL,
 CONSTRAINT [PK_SHMS_TblSchool] PRIMARY KEY CLUSTERED 
(
	[SchoolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SHMS_TblUser]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHMS_TblUser](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[FatherName] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[ContactNo] [nvarchar](20) NULL,
	[Password] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[Picture] [nvarchar](200) NULL,
	[Status] [int] NULL,
	[DistrictId] [bigint] NULL,
	[RoleId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Notification]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Notification](
	[Notificationid] [int] IDENTITY(1,1) NOT NULL,
	[NotificationTItle] [nvarchar](max) NULL,
	[NotficationDetail] [nvarchar](max) NULL,
	[NotifcationDate] [date] NULL,
 CONSTRAINT [PK_tbl_Notification] PRIMARY KEY CLUSTERED 
(
	[Notificationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[_TblNotesBoard] ON 

GO
INSERT [dbo].[_TblNotesBoard] ([NotesBoardID], [NotesBoardTitle], [NotesBoardDetail], [ShelterHomeId], [CreatedDate], [UpdatedDate], [NotesBoardStatus]) VALUES (3, N'NotesBoardTitle', N'NotesBoardDetail', NULL, CAST(N'2020-12-31 17:59:53.590' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[_TblNotesBoard] OFF
GO
SET IDENTITY_INSERT [dbo].[HousingSocietyPlatform_TblChat] ON 

GO
INSERT [dbo].[HousingSocietyPlatform_TblChat] ([ChatId], [ChatComment], [Sendby], [SendTo], [CreatedDate]) VALUES (1, N'hi', 2, 1, CAST(N'2020-12-31 18:52:54.077' AS DateTime))
GO
INSERT [dbo].[HousingSocietyPlatform_TblChat] ([ChatId], [ChatComment], [Sendby], [SendTo], [CreatedDate]) VALUES (2, N'hi', 3, 1, CAST(N'2020-12-31 19:14:51.060' AS DateTime))
GO
INSERT [dbo].[HousingSocietyPlatform_TblChat] ([ChatId], [ChatComment], [Sendby], [SendTo], [CreatedDate]) VALUES (3, N'hi', 3, 2, CAST(N'2020-12-31 19:15:34.470' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[HousingSocietyPlatform_TblChat] OFF
GO
SET IDENTITY_INSERT [dbo].[SchoolType] ON 

GO
INSERT [dbo].[SchoolType] ([SchoolTypeId], [SchoolTypeName]) VALUES (1, N'Private')
GO
INSERT [dbo].[SchoolType] ([SchoolTypeId], [SchoolTypeName]) VALUES (2, N'TuitionCenter')
GO
INSERT [dbo].[SchoolType] ([SchoolTypeId], [SchoolTypeName]) VALUES (3, N' Public Private Collaboration (PPC)')
GO
INSERT [dbo].[SchoolType] ([SchoolTypeId], [SchoolTypeName]) VALUES (4, N' Montessori')
GO
SET IDENTITY_INSERT [dbo].[SchoolType] OFF
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblComplaint] ON 

GO
INSERT [dbo].[SHMS_TblComplaint] ([ComplaintId], [ComplaintTitle], [ComplaintDetail], [CreatedOn], [UserId], [ComplaintStatus], [Complaintdate]) VALUES (1, N'NotGood', N'NotGood', CAST(N'2020-12-17 00:00:00.000' AS DateTime), 2, 0, CAST(N'2020-12-17 00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblComplaint] OFF
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblComplaintComment] ON 

GO
INSERT [dbo].[SHMS_TblComplaintComment] ([ComplaintCommentId], [ComplaintComment], [CreatedOn], [ComplaintId], [UserId]) VALUES (1, N'done', CAST(N'2020-12-31 00:00:00.000' AS DateTime), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblComplaintComment] OFF
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblDistrict] ON 

GO
INSERT [dbo].[SHMS_TblDistrict] ([DistrictId], [DistrictName]) VALUES (2, N'Mardan')
GO
INSERT [dbo].[SHMS_TblDistrict] ([DistrictId], [DistrictName]) VALUES (3, N'Swat')
GO
INSERT [dbo].[SHMS_TblDistrict] ([DistrictId], [DistrictName]) VALUES (4, N'Pounch')
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblDistrict] OFF
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblExperience] ON 

GO
INSERT [dbo].[SHMS_TblExperience] ([ExperienceId], [ExperienceFrom], [ExperienceTo], [UserId], [ExperiencePicture], [CreatedOn], [DistrictId], [SchoolName], [SubjectType], [Detail]) VALUES (1, CAST(N'2020-12-17' AS Date), CAST(N'2020-12-17' AS Date), 5, NULL, CAST(N'2020-12-22 00:00:00.000' AS DateTime), 2, N'CityPublicSchool', N'Physcis', N'free from home')
GO
INSERT [dbo].[SHMS_TblExperience] ([ExperienceId], [ExperienceFrom], [ExperienceTo], [UserId], [ExperiencePicture], [CreatedOn], [DistrictId], [SchoolName], [SubjectType], [Detail]) VALUES (2, CAST(N'2020-12-24' AS Date), CAST(N'2020-12-24' AS Date), 5, NULL, CAST(N'2020-12-22 00:00:00.000' AS DateTime), 2, N'Farabi Degree College', N'Physcis,Maths', N'free from home')
GO
INSERT [dbo].[SHMS_TblExperience] ([ExperienceId], [ExperienceFrom], [ExperienceTo], [UserId], [ExperiencePicture], [CreatedOn], [DistrictId], [SchoolName], [SubjectType], [Detail]) VALUES (3, CAST(N'2020-12-23' AS Date), CAST(N'2020-12-17' AS Date), 5, NULL, CAST(N'2020-12-22 00:00:00.000' AS DateTime), 1, N'Farabi Degree College', N'Urdu', N'free from home')
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblExperience] OFF
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblPayment] ON 

GO
INSERT [dbo].[SHMS_TblPayment] ([PaymentId], [PaidAmount], [RegAmount], [SchoolId], [PaymentStatus], [PaymentPicture], [TransactionId], [TransactionDate], [CreatedBy], [CreatedOn], [UserId], [CreatedDate]) VALUES (1, 10000.0000, NULL, 3, N'1', N'/Images/20201224060204.jpg', NULL, CAST(N'2020-12-16' AS Date), NULL, NULL, 3, CAST(N'2020-12-24' AS Date))
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblPayment] OFF
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblRoles] ON 

GO
INSERT [dbo].[SHMS_TblRoles] ([RoleId], [RoleName]) VALUES (1, N'Super Admin')
GO
INSERT [dbo].[SHMS_TblRoles] ([RoleId], [RoleName]) VALUES (2, N'Admin')
GO
INSERT [dbo].[SHMS_TblRoles] ([RoleId], [RoleName]) VALUES (3, N'School Owner')
GO
INSERT [dbo].[SHMS_TblRoles] ([RoleId], [RoleName]) VALUES (4, N'Teacher')
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblSchool] ON 

GO
INSERT [dbo].[SHMS_TblSchool] ([SchoolId], [UserId], [SchoolName], [SchoolRegNo], [SchoolDetail], [SchoolContactNo], [Address], [SchoolPicture], [SchoolStatus], [DistrictId], [OwnerId], [RegistrationType], [YearOfEsteblesh], [SchoolTypeId], [SchoolLevel], [SchoolGenderType], [SessionYear], [PostalAddress], [Location], [Createddate], [UpdatedDate]) VALUES (1, 5, N'CityPublicSchool', N'2010-456-REG', N'Middle School', N'0915849654', N'Peshawar hayatabad', NULL, 1, 3, NULL, N'1', N'2020', 2, N'2', N'1', N'2020-2021', N'Postal address', NULL, NULL, NULL)
GO
INSERT [dbo].[SHMS_TblSchool] ([SchoolId], [UserId], [SchoolName], [SchoolRegNo], [SchoolDetail], [SchoolContactNo], [Address], [SchoolPicture], [SchoolStatus], [DistrictId], [OwnerId], [RegistrationType], [YearOfEsteblesh], [SchoolTypeId], [SchoolLevel], [SchoolGenderType], [SessionYear], [PostalAddress], [Location], [Createddate], [UpdatedDate]) VALUES (3, 3, N'MuslimPublicSchool', N'2010-456-REG', N'Middle School', N'03317695823', N'Kohat', NULL, 3, 2, NULL, N'2', N'2020', 2, N'1', N'2', N'2020-2021', N'Postal address', NULL, NULL, NULL)
GO
INSERT [dbo].[SHMS_TblSchool] ([SchoolId], [UserId], [SchoolName], [SchoolRegNo], [SchoolDetail], [SchoolContactNo], [Address], [SchoolPicture], [SchoolStatus], [DistrictId], [OwnerId], [RegistrationType], [YearOfEsteblesh], [SchoolTypeId], [SchoolLevel], [SchoolGenderType], [SessionYear], [PostalAddress], [Location], [Createddate], [UpdatedDate]) VALUES (6, 4, N'KashmirPublicSchool', N'2010-456-REG', N'Middle School', N'0915849654', N'Kashmir', NULL, 2, 4, NULL, N'1', N'2020', 2, N'2', N'3', N'2020-2021', N'Postal address', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblSchool] OFF
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblUser] ON 

GO
INSERT [dbo].[SHMS_TblUser] ([UserId], [UserName], [FatherName], [Email], [ContactNo], [Password], [Address], [Picture], [Status], [DistrictId], [RoleId]) VALUES (1, N'Super Admin', N'Super Admin', N'superadmin@gmail.com', N'03319177870', N'12345678', N'AJK', NULL, 1, 1, 1)
GO
INSERT [dbo].[SHMS_TblUser] ([UserId], [UserName], [FatherName], [Email], [ContactNo], [Password], [Address], [Picture], [Status], [DistrictId], [RoleId]) VALUES (2, N'Admin', N'Admin', N'admin@gmail.com', N'03319177870', N'12345678', N'AJK', NULL, 1, 1, 2)
GO
INSERT [dbo].[SHMS_TblUser] ([UserId], [UserName], [FatherName], [Email], [ContactNo], [Password], [Address], [Picture], [Status], [DistrictId], [RoleId]) VALUES (3, N'Asad', N'Rauf', N'asad@gmail.com', N'03319177870', N'12345678', N'AJK', N'/Images/20201223104653.jpg', 1, 1, 3)
GO
INSERT [dbo].[SHMS_TblUser] ([UserId], [UserName], [FatherName], [Email], [ContactNo], [Password], [Address], [Picture], [Status], [DistrictId], [RoleId]) VALUES (4, N'Arshad', N'Mughal', N'arshad@gmail.com', N'03319177870', N'12345678', N'AJK', NULL, 1, 1, 4)
GO
INSERT [dbo].[SHMS_TblUser] ([UserId], [UserName], [FatherName], [Email], [ContactNo], [Password], [Address], [Picture], [Status], [DistrictId], [RoleId]) VALUES (5, N'AsadRauf', NULL, N'arsalan@gmail.com', N'123456789', N'12345678', N'Bannu Town ship  Bannu', N'/Images/20201220105703.jpg', 1, 1, 3)
GO
INSERT [dbo].[SHMS_TblUser] ([UserId], [UserName], [FatherName], [Email], [ContactNo], [Password], [Address], [Picture], [Status], [DistrictId], [RoleId]) VALUES (6, N'KareemUllaha', NULL, N'Kareem@gmail.com', N'12345678', N'12345678', N'Azad Kashmir ', NULL, 1, 1, 3)
GO
SET IDENTITY_INSERT [dbo].[SHMS_TblUser] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Notification] ON 

GO
INSERT [dbo].[tbl_Notification] ([Notificationid], [NotificationTItle], [NotficationDetail], [NotifcationDate]) VALUES (1, N'Registration office Closed', N'Due to 25 December All Registration Office are Closed', CAST(N'2020-12-17' AS Date))
GO
SET IDENTITY_INSERT [dbo].[tbl_Notification] OFF
GO
/****** Object:  StoredProcedure [dbo].[Sp_CommentsOnComlentForsuperadmin]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create Proc [dbo].[Sp_CommentsOnComlentForsuperadmin]
@ComplaintId int =null,
@ComplaintTitle nvarchar(100)=null,
@ComplaintDetail nvarchar(100)=null,
@Complaintdate  date=null,
@UserId int =null,
@ComplaintStatus int =null,
@ShelterHomeId int =null,
@ComplaintComment nvarchar(200)=null,
@CreatedOn date=null


AS 

Begin

Insert into SHMS_TblComplaintComment(ComplaintComment,ComplaintId,CreatedOn,UserId)values(@ComplaintComment,@ComplaintId,@CreatedOn,@UserId)

End
GO
/****** Object:  StoredProcedure [dbo].[Sp_Complent]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Proc [dbo].[Sp_Complent]
@ComplaintId int =null,
@ComplaintTitle nvarchar(100)=null,
@ComplaintDetail nvarchar(100)=null,
@Complaintdate  date=null,
@UserId int =null,
@ComplaintStatus int =null,
@ShelterHomeId int =null

AS 

Begin

SELECT        SHMS_TblComplaint.*, SHMS_TblUser.*
FROM            SHMS_TblComplaint INNER JOIN
                         SHMS_TblUser ON SHMS_TblComplaint.UserId = SHMS_TblUser.UserId

		End				
GO
/****** Object:  StoredProcedure [dbo].[Sp_ComplentForuser]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Sp_ComplentForuser]
@ComplaintId int =null,
@ComplaintTitle nvarchar(100)=null,
@ComplaintDetail nvarchar(100)=null,
@Complaintdate  date=null,
@UserId int =null,
@ComplaintStatus int =null,
@ShelterHomeId int =null

AS 

Begin

SELECT        SHMS_TblComplaint.*, SHMS_TblUser.*
FROM            SHMS_TblComplaint INNER JOIN
                         SHMS_TblUser ON SHMS_TblComplaint.UserId = SHMS_TblUser.UserId

						 where SHMS_TblComplaint.UserId=@UserId

		End				
GO
/****** Object:  StoredProcedure [dbo].[Sp_DetailofComplentComments]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Proc [dbo].[Sp_DetailofComplentComments]
@ComplaintId int =null,
@ComplaintTitle nvarchar(100)=null,
@ComplaintDetail nvarchar(100)=null,
@Complaintdate  date=null,
@UserId int =null,
@ComplaintStatus int =null,
@ShelterHomeId int =null,
@ComplaintComment nvarchar(200)=null,
@CreatedOn date=null


AS 

Begin

Select SHMS_TblComplaint.*,SHMS_TblUser.UserName,SHMS_TblComplaintComment.ComplaintComment,
SHMS_TblComplaintComment.CreatedOn as commentCreatedOn, U2.UserName as CommentedbyName  
from SHMS_TblComplaint Inner join SHMS_TblUser on SHMS_TblComplaint.UserId=SHMS_TblUser.UserId 
Left join SHMS_TblComplaintComment on SHMS_TblComplaint.ComplaintId=SHMS_TblComplaintComment.ComplaintId 
Left join SHMS_TblUser U2 on SHMS_TblComplaintComment.UserId=U2.UserId where SHMS_TblComplaint.ComplaintId=@ComplaintId




End
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetNoteses]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sp_GetNoteses]
@NotesBoardID bigint = null,
@NotesBoardTitle  nvarchar(100)=null,
@NotesBoardDetail nvarchar(100)=null,
@StockDetail  nvarchar(100)=null,
@ShelterHomeId  nvarchar(100)=null,
@UpdatedDate  nvarchar(100)=null,
@UserId  bigint = null,
@CreatedDate nvarchar(50)=null,
@NotesBoardStatus  int=null

As 


Begin 

  Select  * from   _TblNotesBoard



		

End


GO
/****** Object:  StoredProcedure [dbo].[SP_GetNotification]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc  [dbo].[SP_GetNotification]

@Notificationid int =null,
@NotificationTItle nvarchar(50)=null,
@NotficationDetail nvarchar(50)=null,
@NotifcationDate nvarchar(50)=null

As 

Begin 

select * from tbl_Notification

End

GO
/****** Object:  StoredProcedure [dbo].[SP_InsertEasypaisaAamount]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_InsertEasypaisaAamount]

@PaymentId int = null,
@PaidAmount nvarchar(20)=null,
@SchoolId int=null,
@PaymentStatus nvarchar=null,
@PaymentPicture nvarchar(100)=null,
@TransactionDate date=null,
@UserId int=null,
@CreatedDate date=null,
@TransactionId int =null

As 

Begin 


insert into SHMS_TblPayment  (PaidAmount,SchoolId,PaymentStatus,TransactionDate,UserId,CreatedDate,TransactionId)values(@PaidAmount,@SchoolId,@PaymentStatus,@TransactionDate,@UserId,@CreatedDate,@TransactionId)

End 


GO
/****** Object:  StoredProcedure [dbo].[Sp_insertExperinces]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sp_insertExperinces]

@ExperienceId int =null,
@ExperienceFrom date =null,
@ExperienceTo date =null,
@ExperiencePicture nvarchar(100) =null,
@UserId int =null,
@CreatedOn date =null,
@DistrictId int =null,
@SchoolName nvarchar(100) =null,
@SubjectType nvarchar(100) = null,
@Detail  nvarchar(100) = null

As 

Begin
    

	insert into SHMS_TblExperience(ExperienceFrom,ExperienceTo,SubjectType,UserId,CreatedOn,DistrictId,SchoolName,Detail)values(@ExperienceFrom,@ExperienceTo,@SubjectType,@UserId,@CreatedOn,@DistrictId,@SchoolName,@Detail)

End

GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertNotes]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Proc [dbo].[Sp_InsertNotes]

@NotesBoardID bigint = null,
@NotesBoardTitle  nvarchar(100)=null,
@NotesBoardDetail nvarchar(100)=null,
@UpdatedDate  nvarchar(100)=null,
@CreatedDate nvarchar(50)=null,
@NotesBoardStatus  int=null

As 


Begin 

insert into _TblNotesBoard(NotesBoardTitle,NotesBoardDetail,CreatedDate)values(@NotesBoardTitle,@NotesBoardDetail,getdate())



		

End


GO
/****** Object:  StoredProcedure [dbo].[SP_InsertPayment]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_InsertPayment]

@PaymentId int = null,
@PaidAmount nvarchar(20)=null,
@SchoolId int=null,
@PaymentStatus nvarchar=null,
@PaymentPicture nvarchar(100)=null,
@TransactionDate date=null,
@UserId int=null,
@CreatedDate date=null,
@TransactionId int =null

As 

Begin 


insert into SHMS_TblPayment  (PaidAmount,PaymentPicture,SchoolId,PaymentStatus,TransactionDate,UserId,CreatedDate)values(@PaidAmount,@PaymentPicture,@SchoolId,@PaymentStatus,@TransactionDate,@UserId,@CreatedDate)

End 


GO
/****** Object:  StoredProcedure [dbo].[SP_insertRegistration]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_insertRegistration]
@UserId int = null,
@RegistrationType nvarchar(50)=null,
@SchoolName nvarchar(50)=null,
@SessionYear nvarchar(50)=null,
@YearOfEsteblesh nvarchar(50)=null,
@Address  nvarchar(50)=null,
@SchoolContactNo  nvarchar(50)=null,
@DistrictId  nvarchar(50)=null,
@SchoolGenderType  nvarchar(50)=null,
@SchoolTypeId  nvarchar(50)=null,
@PostalAddress  nvarchar(50)=null,
@SelectLevel  nvarchar(50)=null,
@Location nvarchar(50)=null,
@SchoolLevel nvarchar(100),
@SchoolStatus bit =null,
@Createddate date = null
As
Begin

   insert into SHMS_TblSchool(UserId,RegistrationType,SchoolName,SessionYear,YearOfEsteblesh,Address,SchoolContactNo,DistrictId ,SchoolGenderType,SchoolTypeId, PostalAddress, SchoolLevel,Location,SchoolStatus,Createddate)values(@UserId,@RegistrationType,@SchoolName,@SessionYear,@YearOfEsteblesh,@Address,@SchoolContactNo,@DistrictId ,@SchoolGenderType,@SchoolTypeId, @PostalAddress,@SchoolLevel,@Location,@SchoolStatus,@Createddate);
End


GO
/****** Object:  StoredProcedure [dbo].[Sp_LoadDistrict]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Sp_LoadDistrict]
@DistrictId int = null,
@DistrictName nvarchar(100)=null

As 

Begin 

Select * from SHMS_TblDistrict

End
GO
/****** Object:  StoredProcedure [dbo].[Sp_LoadSchool]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Sp_LoadSchool]
@SchoolId int = null,
@SchoolName nvarchar(100)=null

As 

Begin 

Select * from SHMS_TblSchool

End
GO
/****** Object:  StoredProcedure [dbo].[Sp_SchoolType]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Sp_SchoolType]
@SchoolTypeId int = null,
@SchoolTypeName nvarchar(100)=null

As 

Begin 

Select * from SchoolType

End
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectDetailRegistration]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SelectDetailRegistration]
@UserId int = null,
@RegistrationType nvarchar(50)=null,
@SchoolName nvarchar(50)=null,
@SessionYear nvarchar(50)=null,
@YearOfEsteblesh nvarchar(50)=null,
@Address  nvarchar(50)=null,
@SchoolContactNo  nvarchar(50)=null,
@DistrictId  nvarchar(50)=null,
@SchoolGenderType  nvarchar(50)=null,
@SchoolTypeId  nvarchar(50)=null,
@PostalAddress  nvarchar(50)=null,
@Location nvarchar(50)=null,
@SchoolLevel nvarchar(100)=null,
@SchoolStatus bit =null,
@Createddate date = null,
@SchoolTypeName nvarchar(100) = null,
@DistrictName nvarchar(100) = null,
@PaidAmount nvarchar(20)=null,
@PaymentStatus nvarchar=null,
@PaymentPicture nvarchar(100)=null,
@TransactionDate date=null
As
Begin

  Select SHMS_TblSchool.*,SHMS_TblPayment.*,SHMS_TblUser.*,SHMS_TblDistrict.*,SchoolType.*

							from (SHMS_TblSchool 
							left join SHMS_TblPayment on SHMS_TblSchool.SchoolId=SHMS_TblPayment.SchoolId)

							 inner join SHMS_TblUser  On SHMS_TblSchool.UserId=SHMS_TblUser.UserId
							  inner join SHMS_TblDistrict  On SHMS_TblSchool.DistrictId=SHMS_TblDistrict.DistrictId

							      left join SchoolType  On   SchoolType.SchoolTypeId = SHMS_TblSchool.UserId


						   where SHMS_TblSchool.UserId=@UserId
   
End


GO
/****** Object:  StoredProcedure [dbo].[SP_SelectDetailRegistrationForadmin]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SelectDetailRegistrationForadmin]
@UserId int = null,
@RegistrationType nvarchar(50)=null,
@SchoolName nvarchar(50)=null,
@SessionYear nvarchar(50)=null,
@YearOfEsteblesh nvarchar(50)=null,
@Address  nvarchar(50)=null,
@SchoolContactNo  nvarchar(50)=null,
@DistrictId  nvarchar(50)=null,
@SchoolGenderType  nvarchar(50)=null,
@SchoolTypeId  nvarchar(50)=null,
@PostalAddress  nvarchar(50)=null,
@Location nvarchar(50)=null,
@SchoolLevel nvarchar(100)=null,
@SchoolStatus bit =null,
@Createddate date = null,
@SchoolTypeName nvarchar(100) = null,
@DistrictName nvarchar(100) = null,
@PaidAmount nvarchar(20)=null,
@PaymentStatus nvarchar=null,
@PaymentPicture nvarchar(100)=null,
@TransactionDate date=null,
@SchoolId int =null
As
Begin


			
  Select SHMS_TblSchool.*,SHMS_TblPayment.*,SHMS_TblUser.*,SHMS_TblDistrict.*,SchoolType.*

							from (SHMS_TblSchool 
							left join SHMS_TblPayment on SHMS_TblSchool.SchoolId=SHMS_TblPayment.SchoolId)

							 inner join SHMS_TblUser  On SHMS_TblSchool.UserId=SHMS_TblUser.UserId
							  inner join SHMS_TblDistrict  On SHMS_TblSchool.DistrictId=SHMS_TblDistrict.DistrictId

							      left join SchoolType  On   SchoolType.SchoolTypeId = SHMS_TblSchool.UserId

								  	   where SHMS_TblSchool.SchoolId=@SchoolId

End


GO
/****** Object:  StoredProcedure [dbo].[SP_SelectRegistration]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SelectRegistration]
@UserId int = null,
@RegistrationType nvarchar(50)=null,
@SchoolName nvarchar(50)=null,
@SessionYear nvarchar(50)=null,
@YearOfEsteblesh nvarchar(50)=null,
@Address  nvarchar(50)=null,
@SchoolContactNo  nvarchar(50)=null,
@DistrictId  nvarchar(50)=null,
@SchoolGenderType  nvarchar(50)=null,
@SchoolTypeId  nvarchar(50)=null,
@PostalAddress  nvarchar(50)=null,
@Location nvarchar(50)=null,
@SchoolLevel nvarchar(100)=null,
@SchoolStatus bit =null,
@Createddate date = null,
@SchoolTypeName nvarchar(100) = null,
@DistrictName nvarchar(100) = null,
@PaidAmount nvarchar(20)=null,
@PaymentStatus nvarchar=null,
@PaymentPicture nvarchar(100)=null,
@TransactionDate date=null
As
Begin

 Select SHMS_TblSchool.*, SHMS_TblDistrict.*,SHMS_TblUser.*,SchoolType.*

						 from (SHMS_TblSchool 
						 
						 inner join SHMS_TblDistrict  On SHMS_TblSchool.DistrictId=SHMS_TblDistrict.DistrictId)

						  inner join SHMS_TblUser  On SHMS_TblSchool.UserId=SHMS_TblUser.UserId

						   inner join SchoolType  On SHMS_TblSchool.UserId=SchoolType.SchoolTypeId 


						   where SHMS_TblSchool.UserId=@UserId
   
End


GO
/****** Object:  StoredProcedure [dbo].[SP_SelectRegistrationForadmin]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SelectRegistrationForadmin]
@UserId int = null,
@RegistrationType nvarchar(50)=null,
@SchoolName nvarchar(50)=null,
@SessionYear nvarchar(50)=null,
@YearOfEsteblesh nvarchar(50)=null,
@Address  nvarchar(50)=null,
@SchoolContactNo  nvarchar(50)=null,
@DistrictId  nvarchar(50)=null,
@SchoolGenderType  nvarchar(50)=null,
@SchoolTypeId  nvarchar(50)=null,
@PostalAddress  nvarchar(50)=null,
@Location nvarchar(50)=null,
@SchoolLevel nvarchar(100)=null,
@SchoolStatus bit =null,
@Createddate date = null,
@SchoolTypeName nvarchar(100) = null,
@DistrictName nvarchar(100) = null,
@PaidAmount nvarchar(20)=null,
@PaymentStatus nvarchar=null,
@PaymentPicture nvarchar(100)=null,
@TransactionDate date=null
As
Begin

    Select SHMS_TblSchool.*,SHMS_TblUser.*, SHMS_TblDistrict.*,SchoolType.*

						 from (SHMS_TblSchool 
						 
						 inner join SHMS_TblUser  On SHMS_TblSchool.UserId=SHMS_TblUser.UserId)

						 inner join  SHMS_TblDistrict  on SHMS_TblDistrict.DistrictId=SHMS_TblSchool.DistrictId

						 inner join  SchoolType on  SchoolType.SchoolTypeId=SHMS_TblSchool.SchoolTypeId


					
   
End


GO
/****** Object:  StoredProcedure [dbo].[SP_SelectRenewel]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SP_SelectRenewel]
@UserId int = null,
@RegistrationType nvarchar(50)=null,
@SchoolName nvarchar(50)=null,
@SessionYear nvarchar(50)=null,
@YearOfEsteblesh nvarchar(50)=null,
@Address  nvarchar(50)=null,
@SchoolContactNo  nvarchar(50)=null,
@DistrictId  nvarchar(50)=null,
@SchoolGenderType  nvarchar(50)=null,
@SchoolTypeId  nvarchar(50)=null,
@PostalAddress  nvarchar(50)=null,
@Location nvarchar(50)=null,
@SchoolLevel nvarchar(100)=null,
@SchoolStatus bit =null,
@Createddate date = null,
@SchoolTypeName nvarchar(100) = null,
@DistrictName nvarchar(100) = null,
@PaidAmount nvarchar(20)=null,
@PaymentStatus nvarchar=null,
@PaymentPicture nvarchar(100)=null,
@TransactionDate date=null
As
Begin

    Select SHMS_TblSchool.*,SHMS_TblUser.*, SHMS_TblDistrict.*,SchoolType.*

						 from (SHMS_TblSchool 
						 
						 inner join SHMS_TblUser  On SHMS_TblSchool.UserId=SHMS_TblUser.UserId)

						 inner join  SHMS_TblDistrict  on SHMS_TblDistrict.DistrictId=SHMS_TblSchool.DistrictId

						 inner join  SchoolType on  SchoolType.SchoolTypeId=SHMS_TblSchool.SchoolTypeId

						 where SHMS_TblSchool.RegistrationType=2


					
   
End


GO
/****** Object:  StoredProcedure [dbo].[Sp_seletExperinces]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Sp_seletExperinces]

@ExperienceId int =null,
@ExperienceFrom date =null,
@ExperienceTo date =null,
@ExperiencePicture nvarchar(100) =null,
@UserId bigint =null,
@CreatedOn date =null,
@DistrictId int =null,
@SchoolId nvarchar (100) =null,
@SubjectType nvarchar = null,
@SchoolName nvarchar(100) = null,
@DistrictName nvarchar(100) = null

As 

Begin
    

	SELECT    SHMS_TblExperience.*,SHMS_TblDistrict.*

    from SHMS_TblExperience

inner join SHMS_TblDistrict on SHMS_TblExperience.DistrictId = SHMS_TblDistrict.DistrictId



where SHMS_TblExperience.UserId=@UserId


End

GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateExperinces]    Script Date: 1/1/2021 11:46:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Sp_UpdateExperinces]

@ExperienceId int =null,
@ExperienceFrom date =null,
@ExperienceTo date =null,
@ExperiencePicture nvarchar(100) =null,
@UserId int =null,
@CreatedOn date =null,
@DistrictId int =null,
@SchoolName nvarchar(100) =null,
@SubjectType nvarchar(100) = null,
@Detail  nvarchar(100) = null

As 

Begin
    

	

update SHMS_TblExperience set ExperienceFrom=@ExperienceFrom,ExperienceTo=@ExperienceTo,SubjectType=@SubjectType,DistrictId=@DistrictId,SchoolName=@SchoolName,Detail=@Detail where ExperienceId=@ExperienceId

End

GO
