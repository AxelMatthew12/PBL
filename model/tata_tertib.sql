USE [tata_tertib]
GO
/****** Object:  Table [dbo].[akun]    Script Date: 12/2/2024 12:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[akun](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](9) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_akun] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dosen]    Script Date: 12/2/2024 12:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dosen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NOT NULL,
	[nidn] [varchar](10) NOT NULL,
	[akun_id] [int] NOT NULL,
 CONSTRAINT [PK_dosen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laporan]    Script Date: 12/2/2024 12:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laporan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dosen_id] [int] NOT NULL,
	[mhs_id] [int] NOT NULL,
	[tgl_laporan] [date] NOT NULL,
	[pelanggaran_id] [int] NOT NULL,
	[status_verivikasi] [bit] NULL,
	[tgl_veriifikasi] [date] NULL,
	[dpa_id] [int] NOT NULL,
 CONSTRAINT [PK_laporan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mahasiswa]    Script Date: 12/2/2024 12:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mahasiswa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NOT NULL,
	[prodi] [varchar](4) NOT NULL,
	[kelas] [varchar](2) NOT NULL,
	[nim] [varchar](10) NOT NULL,
	[akun_id] [int] NULL,
	[dpa_id] [int] NULL,
 CONSTRAINT [PK_mahasiswa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pelanggaran]    Script Date: 12/2/2024 12:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pelanggaran](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[deskripsi] [varchar](300) NOT NULL,
	[tingkat] [varchar](10) NOT NULL,
 CONSTRAINT [PK_pelanggaran] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanksi]    Script Date: 12/2/2024 12:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanksi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[laporan_id] [int] NOT NULL,
	[deskripsi] [varchar](255) NOT NULL,
	[file_bukti] [varchar](255) NULL,
	[status] [bit] NULL,
	[tgl_sanksi] [date] NULL,
 CONSTRAINT [PK_sanksi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[akun] ON 

INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (7, N'admin', N'admin', N'$2y$10$t9Gz10izTPl7Xku6MyPdlOnkmgawj18Tt848AOzjvAo0.srumQ03W')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (9, N'dosen', N'dosen1', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (13, N'dosen', N'dosen2', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (14, N'dosen', N'dosen3', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (15, N'dosen', N'dosen4', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (16, N'dosen', N'dosen5', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (17, N'dosen', N'dosen6', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (25, N'mahasiswa', N'mhs1', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (26, N'mahasiswa', N'mhs2', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (27, N'mahasiswa', N'mhs3', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (28, N'mahasiswa', N'mhs4', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (29, N'mahasiswa', N'mhs5', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (30, N'mahasiswa', N'mhs6', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (31, N'mahasiswa', N'mhs7', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (32, N'mahasiswa', N'mhs8', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (33, N'mahasiswa', N'mhs9', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (34, N'mahasiswa', N'mhs10', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (35, N'mahasiswa', N'mhs11', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (36, N'mahasiswa', N'mhs12', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (37, N'mahasiswa', N'mhs13', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (38, N'mahasiswa', N'mhs14', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (39, N'mahasiswa', N'mhs15', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (40, N'mahasiswa', N'mhs16', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (41, N'mahasiswa', N'mhs17', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (42, N'mahasiswa', N'mhs18', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (43, N'mahasiswa', N'mhs19', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (46, N'mahasiswa', N'mhs20', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (47, N'mahasiswa', N'mhs21', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (48, N'mahasiswa', N'mhs22', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (49, N'mahasiswa', N'mhs23', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (50, N'mahasiswa', N'mhs24', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (51, N'mahasiswa', N'mhs25', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (52, N'mahasiswa', N'mhs26', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (53, N'mahasiswa', N'mhs27', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (54, N'mahasiswa', N'mhs28', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (55, N'mahasiswa', N'mhs29', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (56, N'mahasiswa', N'mhs30', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (57, N'mahasiswa', N'mhs31', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (58, N'mahasiswa', N'mhs32', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (59, N'mahasiswa', N'mhs33', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (60, N'mahasiswa', N'mhs34', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (61, N'mahasiswa', N'mhs35', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (62, N'mahasiswa', N'mhs36', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (63, N'mahasiswa', N'mhs37', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (64, N'mahasiswa', N'mhs38', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (65, N'mahasiswa', N'mhs39', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (66, N'mahasiswa', N'mhs40', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (67, N'mahasiswa', N'mhs41', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (68, N'mahasiswa', N'mhs42', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (69, N'mahasiswa', N'mhs43', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (70, N'mahasiswa', N'mhs44', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (71, N'mahasiswa', N'mhs45', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (72, N'mahasiswa', N'mhs46', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (73, N'dosen', N'dosen7', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (74, N'dosen', N'dosen8', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (75, N'dosen', N'dosen9', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (76, N'dosen', N'dosen10', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (77, N'dosen', N'dosen11', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (78, N'dosen', N'dosen12', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (79, N'dosen', N'dosen13', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (81, N'dosen', N'dosen14', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (82, N'dosen', N'dosen15', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (83, N'dosen', N'dosen16', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (84, N'dosen', N'dosen17', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (85, N'dosen', N'dosen18', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (86, N'dosen', N'dosen19', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (87, N'dosen', N'dosen20', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (88, N'dosen', N'dosen21', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (89, N'dosen', N'dosen22', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (90, N'dosen', N'dosen23', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (91, N'dosen', N'dosen24', N'$2y$10$Lhd7l/FqA/NXjQ10H3apkeO4hFy.Sec5JtVzIqz1qMc7fJ7i8IYpe')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (92, N'mahasiswa', N'mhs47', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
INSERT [dbo].[akun] ([id], [role], [username], [password]) VALUES (93, N'mahasiswa', N'mhs48', N'$2y$10$zMfT.y5u5LzJ0XjT0zI5yeY2y9HfWq.WX89smhvh2wTcKcKLrIM.e')
SET IDENTITY_INSERT [dbo].[akun] OFF
GO
SET IDENTITY_INSERT [dbo].[dosen] ON 

INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (1, N'Vit Zuraida, S.Kom.,M.Kom', N'199011248', 9)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (2, N'Moch. Zawaruddin Abdullah, S.Kom., M.T', N'198901101', 13)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (3, N'Candra Bella Vista, S.Kom., MT', N'1990151034', 14)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (4, N'Indra Dharma Wijaya, ST., M.T', N'1985011002', 15)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (5, N'Irsyad Arif Mashudi, S.Kom., M.Kom', N'1986010802', 16)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (6, N'Triana Fatmawati, S.T., M.T', N'1985017509', 17)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (7, N'Farid Angga Pribadi, S.Kom., M.Kom', N'1990014998', 73)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (8, N'Budi Harijanto, ST., M.Kom', N'1989015058', 74)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (9, N'Ade Ismail, S.Kom., M.T', N'1990022207', 75)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (10, N'Pramana Yoga Saputra, S.Kom., MMT', N'1990021996', 76)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (11, N'Meyti Eka Apriyani, S.T., M.T', N'1987060215', 77)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (12, N'Muhammad Afif Hendrawan, S.Kom., M.Kom', N'1990015154', 78)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (13, N'Wilda Imama Sabilla, S.Kom.', N'1990015303', 79)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (14, N'Ahmadi Yuli Ananta, S.T., M.M', N'1989015017', 81)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (15, N'Elok Nur Hamdana, S.T.', N'1990022225', 82)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (16, N'Vivi Nur Wijayanti, S.Kom., M.Kom', N'1990017134', 83)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (17, N'Agung Nugroho Pramudhita, S.T., M.T', N'1990011008', 84)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (18, N'Hendra Pradipta, SE., MSc', N'1988112318', 85)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (19, N'Arief Prasetyo, S.Kom.', N'1990014709', 86)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (20, N'Annisa Puspa Kirana, S.Kom., M.Kom', N'1989016118', 87)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (21, N'Anugrah Nur Rahman, S.T., M.T', N'1985025557', 88)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (22, N'Dika Rizky Yuniano, S.Kom., M.T', N'1990017204', 90)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (23, N'Kadek Suranina Batubulan, S.Kom, MT', N'1970031831', 91)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (26, N'Vivi Nur Wijayaningrum, S.Kom, M.Kom', N'1978091067', 89)
INSERT [dbo].[dosen] ([id], [nama], [nidn], [akun_id]) VALUES (27, N'Mungki Astiningrum, ST., M.Kom.', N'1987081180', 7)
SET IDENTITY_INSERT [dbo].[dosen] OFF
GO
SET IDENTITY_INSERT [dbo].[laporan] ON 

INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [status_verivikasi], [tgl_veriifikasi], [dpa_id]) VALUES (1, 2, 14, CAST(N'2024-11-30' AS Date), 3, 1, CAST(N'2024-11-30' AS Date), 1)
SET IDENTITY_INSERT [dbo].[laporan] OFF
GO
SET IDENTITY_INSERT [dbo].[mahasiswa] ON 

INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (1, N'MUHAMMAD JAMALUDIN', N'TI', N'1A', N'2341760029', 25, 1)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (2, N'ADAM NUR ALIFI', N'TI', N'1A', N'2341760158', 26, 1)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (3, N'ADIT BAGUS SADEWA', N'TI', N'1B', N'2341760149', 27, 2)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (4, N'ALYA AJENG AYU', N'TI', N'1B', N'2341760119', 28, 2)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (5, N'APRILIA PUTRI ANGGRAENI', N'TI', N'2A', N'2341760043', 29, 3)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (6, N'AQILA NUR AZZA', N'TI', N'2A', N'2341760022', 30, 3)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (7, N'ATHALLAH FAUZAN', N'TI', N'2B', N'2341760131', 31, 4)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (8, N'AURELLA SEKAR ELLIYANSYAH', N'TI', N'2B', N'2341760039', 32, 4)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (9, N'BELQIS IVANA FIDELIA ARFANY', N'TI', N'3A', N'2341760075', 33, 5)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (10, N'DANICA NASYWA PUTRINIAR', N'TI', N'3A', N'2341760023', 34, 5)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (11, N'DHEVINA AGUSTINA', N'TI', N'3B', N'2341760034', 35, 6)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (12, N'ERFIN JAUHARI DWI BRIAN', N'TI', N'3B', N'2341760006', 36, 6)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (13, N'FAIZA ANATHASYA EKA FALEN', N'TI', N'4A', N'2341760088', 37, 7)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (14, N'GERLY WAEYUNGAN', N'TI', N'4A', N'2341760035', 38, 7)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (15, N'INDI WARA RAMADHANI', N'TI', N'4B', N'2341760162', 39, 8)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (16, N'JADEN NATHA KAUTSAR', N'TI', N'4B', N'2341760068', 40, 8)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (17, N'JESSICA AMELIA', N'SIB', N'1A', N'2341760099', 41, 9)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (18, N'LOVELYTA SEKARAYU KRISDIYANTI', N'SIB', N'1A', N'2341760153', 42, 9)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (19, N'MEISY NADIA NABBAN', N'SIB', N'1B', N'2341760126', 43, 10)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (20, N'MOCH HAIKAL PUTRA MUHAJIR', N'SIB', N'1B', N'2341760072', 46, 10)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (21, N'MUHAMMAD BHIMANTARA WIRA...', N'SIB', N'2A', N'2341760025', 47, 11)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (22, N'MUHAMMAD KEMASYAHRU RAM...', N'SIB', N'2A', N'2341760196', 48, 11)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (23, N'MUHAMMAD ROSYID', N'SIB', N'2B', N'2341760015', 49, 12)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (24, N'NIMAS SEPTIANDINI', N'SIB', N'2B', N'2341760087', 50, 12)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (25, N'BAGUS SAPUTRA', N'SIB', N'3A', N'2341760110', 51, 13)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (26, N'CITRA WULANDARI', N'SIB', N'3A', N'2341760111', 52, 13)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (27, N'DEWI PRATIWI', N'SIB', N'3B', N'2341760112', 53, 14)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (28, N'EKO SAPUTRO', N'SIB', N'3B', N'2341760113', 54, 14)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (29, N'FARHAN FIRMANSYAH', N'SIB', N'4A', N'2341760114', 55, 15)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (30, N'GITA MAHARANI', N'SIB', N'4A', N'2341760115', 56, 15)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (31, N'HENDRA SETIAWAN', N'SIB', N'4B', N'2341760116', 57, 16)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (32, N'INDAH KUSUMA', N'SIB', N'4B', N'2341760117', 58, 16)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (33, N'JOKO WIDODO', N'PPLS', N'1A', N'2341760118', 59, 17)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (34, N'KARTINI AYU', N'PPLS', N'1A', N'2341760119', 60, 17)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (35, N'LESTARI CAHYA', N'PPLS', N'1B', N'2341760120', 61, 18)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (36, N'MAHARANI PUTRI', N'PPLS', N'1B', N'2341760121', 62, 18)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (37, N'NIKO SATRIA', N'PPLS', N'2A', N'2341760122', 63, 19)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (38, N'OKA WIRAWAN', N'PPLS', N'2A', N'2341760123', 64, 19)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (39, N'PUTU WIJAYA', N'PPLS', N'2B', N'2341760124', 65, 20)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (40, N'QORY SANDIKA', N'PPLS', N'2B', N'2341760125', 66, 20)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (41, N'RIZKY RAMADHAN', N'PPLS', N'3A', N'2341760126', 67, 21)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (42, N'SARAH ANDINI', N'PPLS', N'3A', N'2341760127', 68, 21)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (43, N'TAUFIK HIDAYAT', N'PPLS', N'3B', N'2341760128', 69, 22)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (44, N'UMI LATIFAH', N'PPLS', N'3B', N'2341760129', 70, 22)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (45, N'VINA ANGGRAENI', N'PPLS', N'4A', N'2341760130', 71, 23)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (46, N'WAHYU SUSANTO', N'PPLS', N'4A', N'2341760131', 72, 23)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (47, N'XENA KARTIKA', N'PPLS', N'4B', N'2341760132', 92, 26)
INSERT [dbo].[mahasiswa] ([id], [nama], [prodi], [kelas], [nim], [akun_id], [dpa_id]) VALUES (84, N'YOSHI MAHARDIKA', N'PPLS', N'4B', N'2341760002', 93, 26)
SET IDENTITY_INSERT [dbo].[mahasiswa] OFF
GO
SET IDENTITY_INSERT [dbo].[pelanggaran] ON 

INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (1, N'Berkomunikasi dengan tidak sopan, baik tertulis atau tidak tertulis kepada mahasiswa, dosen, karyawan, atau orang lain
', N'5')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (2, N'Berbusana tidak sopan dan tidak rapi. Seperti: berpakaian ketat, transparan, memakai t-shirt (baju kaos tidak berkerah), tank top, hipster, you can see, rok mini, backless, celana pendek, celana tiga per empat, legging, model celana atau baju koyak, sandal, sepatu sandal di lingkungan kampus.', N'4')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (3, N'Mahasiswa laki-laki berambut tidak rapi, gondrong yaitu panjang
 rambutnya melewati batas alis mata di bagian depan, telinga di bagian samping dan menyentuh kerah baju di bagian leher
.', N'4')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (4, N'Mahasiswa berambut dengan model punk, dan memakai WIG (rambut palsu terkecuali dengan alasan khusus), dicat selain hitam dan/ atau skinned.
', N'4')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (5, N'Makan atau minum di dalam ruang kuliah/laboratorium/bengkel.
', N'4')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (6, N'Tidak menjaga kebersihan di seluruh area Polinema
.', N'4')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (7, N'Membuat kegaduhan yang mengganggu pelaksanaan perkuliahan atau praktikum yang sedang berlangsung.
', N'3')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (8, N'Merokok di luar area kawasan (BEBAS) merokok
.', N'3')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (9, N'
Bermain kartu, game online, memutar video/film hiburan di (dalam kelas/laboratorium)
.', N'3')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (10, N'Mengotori atau mencoret-coret meja, kursi, tembok, dan fasilitas lain di lingkungan Polinema
.', N'3')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (11, N'Bertingkah laku kasar atau tidak sopan kepada mahasiswa lain, dosen, dan/atau karyawan.
', N'3')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (12, N'Merusak sarana dan prasarana yang ada di area Polinema
.', N'2')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (13, N'Tidak menjaga ketertiban dan keamanan di seluruh area Polinema
.', N'2')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (14, N'Melakukan pengotoran/pengrusakan barang milik orang lain termasuk inventaris milik Politeknik Negeri Malang
.', N'2')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (15, N'Mengakses materi pornografi, melakukan tindakan asusila di kelas atau area kampus
.', N'2')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (16, N'Membawa dan/atau menggunakan senjata tajam atau sejenisnya dan/atau senjata api untuk hal kriminal.', N'2')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (17, N'Melakukan perkelahian, kekerasan serta membentuk geng/ kelompok yang bertujuan negatif.
', N'2')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (18, N'Melakukan kegiatan politik praktis di dalam kampus
.', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (19, N'Melakukan penyalahgunaan identitas mahasiswa/i dan institusi untuk perbuatan negatif
', N'2')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (20, N'Mengancam (menghina, membully) baik tertulis atau tidak tertulis kepada mahasiswa lain, dosen, dan/atau karyawan.', N'2')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (21, N'Mencuri barang inventaris institusi dalam bentuk apapun
.', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (22, N'Melakukan kecurangan dalam bidang akademik, administratif, dan keuangan.
', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (23, N'Melakukan pemerasan dan/atau penipuan
', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (24, N'Melakukan pelecehan dan/atau tindakan asusila dalam segala bentuk di dalam dan di luar kampus.
', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (25, N'Berjudi, mengkonsumsi minum-minuman keras, dan/ atau bermabuk-mabukan di lingkungan dan di luar lingkungan Kampus
.', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (26, N'Mengikuti organisasi dan atau menyebarkan faham-faham yang dilarang oleh Pemerintah.', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (27, N'Melakukan pemalsuan data pribadi atau institusi
.', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (28, N'Melakukan plagiasi (copy paste) dalam tugas-tugas atau karya ilmiah
.', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (29, N'Tidak menjaga nama baik Polinema di masyarakat dan/ atau mencemarkan nama baik Polinema
.', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (30, N'Melakukan kegiatan atau sejenisnya yang dapat menurunkan kehormatan Polinema atau martabat Bangsa dan Negara.
', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (31, N'Menggunakan dan/ atau mengedarkan dan/ atau menjual barang-barang psikotropika dan/atau zat-zat Adiktif lainnya
.', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (32, N'Terlibat dalam tindakan kriminal dan dinyatakan bersalah oleh
 Pengadilan
.', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (33, N'Memarkir kendaraan tidak pada tempatnya
.', N'3')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (34, N'Melakukan/menyelenggarakan aktivitas organisasi kemahasiswaan extra kampus di dalam kampus tanpa ijin resmi institusi
.', N'3')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (35, N'Melakukan pemalsuan dokumen/tanda tangan
.', N'1')
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat]) VALUES (36, N'Membuat konten video, bukti-bukti elektronik yang bermuatan ujaran yang menimbulkan pencemaran nama baik institusi/jurusan/individu.
', N'3')
SET IDENTITY_INSERT [dbo].[pelanggaran] OFF
GO
SET IDENTITY_INSERT [dbo].[sanksi] ON 

INSERT [dbo].[sanksi] ([id], [laporan_id], [deskripsi], [file_bukti], [status], [tgl_sanksi]) VALUES (1, 1, N'Menngepel kamar mandi lantai 7', N'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1fafiB.img?w=750&h=500&m=6&x=120&y=120&s=280&d=280', 0, CAST(N'2024-12-01' AS Date))
SET IDENTITY_INSERT [dbo].[sanksi] OFF
GO
ALTER TABLE [dbo].[dosen]  WITH CHECK ADD  CONSTRAINT [FK_akun_dosen] FOREIGN KEY([akun_id])
REFERENCES [dbo].[akun] ([id])
GO
ALTER TABLE [dbo].[dosen] CHECK CONSTRAINT [FK_akun_dosen]
GO
ALTER TABLE [dbo].[laporan]  WITH CHECK ADD  CONSTRAINT [FK_laporan_dosen] FOREIGN KEY([dosen_id])
REFERENCES [dbo].[dosen] ([id])
GO
ALTER TABLE [dbo].[laporan] CHECK CONSTRAINT [FK_laporan_dosen]
GO
ALTER TABLE [dbo].[laporan]  WITH CHECK ADD  CONSTRAINT [FK_laporan_dpa] FOREIGN KEY([dpa_id])
REFERENCES [dbo].[dosen] ([id])
GO
ALTER TABLE [dbo].[laporan] CHECK CONSTRAINT [FK_laporan_dpa]
GO
ALTER TABLE [dbo].[laporan]  WITH CHECK ADD  CONSTRAINT [FK_laporan_mahasiswa] FOREIGN KEY([mhs_id])
REFERENCES [dbo].[mahasiswa] ([id])
GO
ALTER TABLE [dbo].[laporan] CHECK CONSTRAINT [FK_laporan_mahasiswa]
GO
ALTER TABLE [dbo].[laporan]  WITH CHECK ADD  CONSTRAINT [FK_laporan_pelanggaran] FOREIGN KEY([pelanggaran_id])
REFERENCES [dbo].[pelanggaran] ([id])
GO
ALTER TABLE [dbo].[laporan] CHECK CONSTRAINT [FK_laporan_pelanggaran]
GO
ALTER TABLE [dbo].[mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK_akun_mahasiswa] FOREIGN KEY([akun_id])
REFERENCES [dbo].[akun] ([id])
GO
ALTER TABLE [dbo].[mahasiswa] CHECK CONSTRAINT [FK_akun_mahasiswa]
GO
ALTER TABLE [dbo].[mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK_dpa_mahasiswa] FOREIGN KEY([dpa_id])
REFERENCES [dbo].[dosen] ([id])
GO
ALTER TABLE [dbo].[mahasiswa] CHECK CONSTRAINT [FK_dpa_mahasiswa]
GO
ALTER TABLE [dbo].[sanksi]  WITH CHECK ADD  CONSTRAINT [FK_sanksi_laporan_pelanggaran] FOREIGN KEY([laporan_id])
REFERENCES [dbo].[laporan] ([id])
GO
ALTER TABLE [dbo].[sanksi] CHECK CONSTRAINT [FK_sanksi_laporan_pelanggaran]
GO
ALTER TABLE [dbo].[akun]  WITH CHECK ADD  CONSTRAINT [CK_akun_role] CHECK  (([role]='dosen' OR [role]='mahasiswa' OR [role]='admin'))
GO
ALTER TABLE [dbo].[akun] CHECK CONSTRAINT [CK_akun_role]
GO
