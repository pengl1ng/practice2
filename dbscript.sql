USE [practice2]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 02.05.2024 3:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 02.05.2024 3:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[OrderEquipment] [varchar](50) NOT NULL,
	[OrderTrouble] [text] NOT NULL,
	[OrderTroubleDescription] [text] NOT NULL,
	[OrderUser] [int] NOT NULL,
	[OrderEmployee] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 02.05.2024 3:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 02.05.2024 3:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserActions]    Script Date: 02.05.2024 3:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActions](
	[ActionID] [int] IDENTITY(1,1) NOT NULL,
	[ActionDate] [datetime] NOT NULL,
	[ActionDesctription] [varchar](50) NOT NULL,
	[ActionLogin] [varchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02.05.2024 3:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserFIO] [varchar](max) NOT NULL,
	[UserEmail] [varchar](50) NOT NULL,
	[UserPhone] [varchar](50) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmpID], [UserID]) VALUES (1, 4)
INSERT [dbo].[Employees] ([EmpID], [UserID]) VALUES (2, 5)
INSERT [dbo].[Employees] ([EmpID], [UserID]) VALUES (3, 7)
INSERT [dbo].[Employees] ([EmpID], [UserID]) VALUES (4, 9)
INSERT [dbo].[Employees] ([EmpID], [UserID]) VALUES (5, 10)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDate], [OrderEquipment], [OrderTrouble], [OrderTroubleDescription], [OrderUser], [OrderEmployee]) VALUES (3, 1, CAST(N'2023-03-03' AS Date), N'Тостер', N'Не работает', N'Не работает нагревательный элемент', 3, 5)
INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDate], [OrderEquipment], [OrderTrouble], [OrderTroubleDescription], [OrderUser], [OrderEmployee]) VALUES (4, 1, CAST(N'2024-05-01' AS Date), N'Холодос', N'Питания нет', N'-', 1, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Сотрудник')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (1, N'В ожидании')
INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (2, N'В работе')
INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (3, N'Выполнено')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[UserActions] ON 

INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (1, CAST(N'2024-05-01T20:49:27.680' AS DateTime), N'Добавление заявки в таблицу Orders', N'DESKTOP-NDT17TQ\vovan')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (2, CAST(N'2024-05-01T20:51:07.397' AS DateTime), N'Добавление заявки в таблицу Orders', N'DESKTOP-NDT17TQ\vovan')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (3, CAST(N'2024-05-01T20:51:24.733' AS DateTime), N'Обновление заявки из таблицы Orders', N'DESKTOP-NDT17TQ\vovan')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (4, CAST(N'2024-05-01T20:51:39.553' AS DateTime), N'Обновление заявки из таблицы Orders', N'DESKTOP-NDT17TQ\vovan')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (5, CAST(N'2024-05-01T20:51:44.040' AS DateTime), N'Обновление заявки из таблицы Orders', N'DESKTOP-NDT17TQ\vovan')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (6, CAST(N'2024-05-01T20:52:22.030' AS DateTime), N'Удаление заявки из таблицы Orders', N'DESKTOP-NDT17TQ\vovan')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (7, CAST(N'2024-05-01T20:52:25.817' AS DateTime), N'Удаление заявки из таблицы Orders', N'DESKTOP-NDT17TQ\vovan')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (8, CAST(N'2024-05-01T20:53:27.503' AS DateTime), N'Добавление заявки в таблицу Orders', N'DESKTOP-NDT17TQ\vovan')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (9, CAST(N'2024-05-01T23:33:48.450' AS DateTime), N'Добавление заявки в таблицу Orders', N'DESKTOP-NDT17TQ\vovan')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (10, CAST(N'2024-05-02T01:59:21.840' AS DateTime), N'Обновление заявки из таблицы Orders', N'DESKTOP-NDT17TQ\vovan')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (11, CAST(N'2024-05-02T02:07:33.337' AS DateTime), N'Обновление заявки из таблицы Orders', N'DESKTOP-NDT17TQ\vovan')
INSERT [dbo].[UserActions] ([ActionID], [ActionDate], [ActionDesctription], [ActionLogin]) VALUES (12, CAST(N'2024-05-02T02:13:22.667' AS DateTime), N'Обновление заявки из таблицы Orders', N'DESKTOP-NDT17TQ\vovan')
SET IDENTITY_INSERT [dbo].[UserActions] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (1, N'Лазарева Ева Артёмовна', N'beimmonauhusu-7680@yopmail.com', N'+79000228628', N'ii-8u7fANP', 1)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (2, N'Пугачев Степан Саввич', N'neupretebranna-8644@yopmail.com', N'+79527352990', N're2fU-OZ59', 3)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (3, N'Давыдов Иван Владимирович', N'geuffaugrijessu-9978@yopmail.com', N'+79001974573', N'iwOitg5_UO', 3)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (4, N'Кузин Антон Максимович', N'wousofrelladdi-1942@yopmail.com', N'+79012604456', N'5-t31brPHe', 2)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (5, N'Лукин Никита Иванович', N'lunoilleuvaufro-2613@yopmail.com', N'+79956022160', N'oK1paKmcy_', 2)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (6, N'Денисова Анастасия Данииловна', N'jimmejafoicru-6480@yopmail.com', N'+79361152650', N'k7-Bb27hxV', 3)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (7, N'Денисова Анастасия Данииловна', N'dofrotrumemmo-5585@yopmail.com', N'+79966465883', N'J6-OKdPgm8', 2)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (8, N'Савина Ульяна Даниловна', N'difreudisase-6881@yopmail.com', N'+79016266910', N'NLmGeF7Sd-', 3)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (9, N'Куликов Максим Даниилович', N'beddeuttumaudo-6437@yopmail.com', N'+79011599154', N'rtEEWSY7c_', 2)
INSERT [dbo].[Users] ([UserID], [UserFIO], [UserEmail], [UserPhone], [UserPassword], [UserRole]) VALUES (10, N'Егорова Ева Владиславовна', N'zuzeseirulli-6773@yopmail.com', N'+79011330625', N'CFsaIi-Jr3', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Users]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([OrderEmployee])
REFERENCES [dbo].[Employees] ([EmpID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Statuses] FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[Statuses] ([StatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Statuses]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([OrderUser])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
/****** Object:  Trigger [dbo].[DeleteOrder]    Script Date: 02.05.2024 3:31:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[DeleteOrder] on [dbo].[Orders]
after delete
as
begin
	declare @login varchar(128)
	select @login = login_name from sys.dm_exec_sessions
	where session_id = @@SPID
	insert into UserActions (ActionDate, ActionDesctription, ActionLogin)
	values(sysdatetime(), 'Удаление заявки из таблицы Orders', @login)
end
GO
ALTER TABLE [dbo].[Orders] ENABLE TRIGGER [DeleteOrder]
GO
/****** Object:  Trigger [dbo].[InsertOrder]    Script Date: 02.05.2024 3:31:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[InsertOrder] on [dbo].[Orders]
after insert
as
begin
	declare @login varchar(128)
	select @login = login_name from sys.dm_exec_sessions
	where session_id = @@SPID
	insert into UserActions (ActionDate, ActionDesctription, ActionLogin)
	values(sysdatetime(), 'Добавление заявки в таблицу Orders', @login)
end
GO
ALTER TABLE [dbo].[Orders] ENABLE TRIGGER [InsertOrder]
GO
/****** Object:  Trigger [dbo].[UpdateOrder]    Script Date: 02.05.2024 3:31:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[UpdateOrder] on [dbo].[Orders]
after update
as
begin
	declare @login varchar(128)
	select @login = login_name from sys.dm_exec_sessions
	where session_id = @@SPID
	insert into UserActions (ActionDate, ActionDesctription, ActionLogin)
	values(sysdatetime(), 'Обновление заявки из таблицы Orders', @login)
end
GO
ALTER TABLE [dbo].[Orders] ENABLE TRIGGER [UpdateOrder]
GO
