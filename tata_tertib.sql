USE [tata_tertib]
GO
/****** Object:  Table [dbo].[akun]    Script Date: 12/31/2024 12:00:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[akun](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
	[mahasiswa_id] [int] NULL,
	[dosen_id] [int] NULL,
 CONSTRAINT [PK_akun] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dosen]    Script Date: 12/31/2024 12:00:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dosen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NOT NULL,
	[nidn] [varchar](10) NOT NULL,
	[jk] [nvarchar](10) NULL,
	[alamat] [varchar](255) NULL,
	[email] [varchar](50) NULL,
	[foto_dosen] [varchar](500) NULL,
 CONSTRAINT [PK_dosen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laporan]    Script Date: 12/31/2024 12:00:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laporan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dosen_id] [int] NULL,
	[mhs_id] [int] NULL,
	[tgl_laporan] [date] NULL,
	[pelanggaran_id] [int] NULL,
	[foto_pelanggaran] [varchar](255) NULL,
	[tingkat_sanksi] [int] NULL,
	[status_verifikasi] [bit] NULL,
	[tgl_verifikasi] [date] NULL,
	[file_sanksi] [varchar](255) NULL,
	[dpa_id] [int] NULL,
 CONSTRAINT [PK_laporan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mahasiswa]    Script Date: 12/31/2024 12:00:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mahasiswa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NOT NULL,
	[nim] [varchar](10) NOT NULL,
	[jk] [nvarchar](10) NULL,
	[ttl] [varchar](255) NULL,
	[alamat] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[prodi] [varchar](4) NOT NULL,
	[kelas] [varchar](2) NOT NULL,
	[dpa_id] [int] NULL,
	[foto_mahasiswa] [varchar](500) NULL,
 CONSTRAINT [PK_mahasiswa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pelanggaran]    Script Date: 12/31/2024 12:00:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pelanggaran](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[deskripsi] [varchar](300) NOT NULL,
	[tingkat_sanksi] [int] NULL,
 CONSTRAINT [PK_pelanggaran] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tingkat]    Script Date: 12/31/2024 12:00:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tingkat](
	[tingkat] [int] NOT NULL,
	[deskripsi] [varchar](255) NOT NULL,
	[surat_sanksi] [varchar](255) NULL,
 CONSTRAINT [PK_tingkat] PRIMARY KEY CLUSTERED 
(
	[tingkat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[akun] ON 

INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (1, N'mungki', N'$2y$10$icoSEFmlr9aUPd7uIdIg..LbEpszpPFfURWPa4l7fCWO6BAnI9emu', N'admin', NULL, 25)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (2, N'cahya', N'$2y$10$5FDC9fZcZnkwBEEIrwJzAuF6oLqoT5HifqhZxsv.s8130ZCsmbD4G', N'dosen', NULL, 1)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (3, N'rawansyah', N'$2y$10$x/fp32TdP14g9nGpNg6qYeWm6LIDaEXhzUK3d3E0BCnm4PUq5RhoS', N'dosen', NULL, 2)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (4, N'wida', N'$2y$10$rDj0e3BUGY4evRDCRmmsFeEL/QesjZcsk9Fvjf0OnLWyeNSWDF9b6', N'dosen', NULL, 3)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (5, N'indra', N'$2y$10$fjm4WAfiLQ9jb6LEY9GzDe6p4JNcYxKAs29/S/FEWl8zN5kSpTQk6', N'dosen', NULL, 4)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (6, N'atiqah', N'$2y$10$ufM7Hx0HvWJYLb1H.Q6rZ.MV68fwawIPgMbTOlC1D0eEv5FJ8fU/u', N'dosen', NULL, 5)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (7, N'dwi', N'$2y$10$rGfO.UkZ3w3pxf5G6lGZF.CaHffb5Z7TodQAv3TtfGHOqwpugh6yK', N'dosen', NULL, 6)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (8, N'deddy', N'$2y$10$PMXOkH2wwk/Rj1v4QaFxs.mkzED37ecNYWjMFdnVHtFdMStKSSqum', N'dosen', NULL, 7)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (9, N'budi', N'$2y$10$XQrZr1nB.rv8ZiVQnab0V.xVhTzZcSOKlN8SCgOeSWAyHhQGa2SWy', N'dosen', NULL, 8)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (10, N'ariadi', N'$2y$10$6tVWsPm2a2DCt8XMcEhpJOcPKvv7bMItDttyHqs0EUM6VqxaPp/Vq', N'dosen', NULL, 9)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (11, N'banni', N'$2y$10$LNxWa4c5jQXSjgK4SYe5R.C/5ymKfsHza8yDw/VqoFdiSQ8leDHp.', N'dosen', NULL, 10)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (12, N'dimas', N'$2y$10$Abd6dDzCl0/fHyZO6pjFMOGpViDcZLhB6MQXTC5ATQiw.Jl6F2Xm6', N'dosen', NULL, 11)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (13, N'eko', N'$2y$10$5I9V3hrbHG.mz.WFQzpNweXRx4QFadPpjFZWKhZtdj1CkWYMAmqrm', N'dosen', NULL, 12)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (14, N'dhebys', N'$2y$10$L9ouHbXAurbag4fHrg3S0eVoC26VS1f2PM7UXQXJJ6i5yvRi.XWCG', N'dosen', NULL, 13)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (15, N'ahmadi', N'$2y$10$focuarvz/MLhpLDVpntQYedDs22TgEtUko0b3jNqGyYWD8gktUSe2', N'dosen', NULL, 14)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (16, N'ely', N'$2y$10$eWdlNFVJtW3jR4/iWy8wyeK/64RsljwMu0THB17QQWh9tw32bFTwm', N'dosen', NULL, 15)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (17, N'dyah', N'$2y$10$uv2so1pTLW/04VxScJI0neEUkk3ETKKlRHV.ttZYB8p6mHBBAO5I2', N'dosen', NULL, 16)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (18, N'imam', N'$2y$10$pOyzKR89FjXc4xBumgRwb.hv0E7aCTlpLKDve1omycDkpSUlrOYfa', N'dosen', NULL, 17)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (19, N'hendra', N'$2y$10$eE3E4mN1FxAWwZL5E8/50eTzMELBWC1/XJky6lajyS6eZBDI86imu', N'dosen', NULL, 18)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (20, N'arief', N'$2y$10$3LvvWpLkTFabfGRRD6NGTe.tBMN401eNeLSYAqh5XQ6rWJ./1weu6', N'dosen', NULL, 19)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (21, N'annisa', N'$2y$10$sPCUe1J7TuG6WC7XD5SMRuXhDXt8ZGHMOI7KYWD0RyOCbpMep0Gxm', N'dosen', NULL, 20)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (22, N'gunawan', N'$2y$10$aR84i5baGGs./TG84BmXmelxZk3Q2GdYr9KaWlCHqRiRuddzTJHGS', N'dosen', NULL, 21)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (23, N'erfan', N'$2y$10$vefVQceCBdX9DnvM2k1K6e5V67FHjCYtoOQKWqFfHaFexeRbWbn7K', N'dosen', NULL, 22)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (24, N'faisal', N'$2y$10$DV61bBUTcnq7MMSsahmxnOvuac1HpxTa/fdlkqgKwvPq5U1VBy/am', N'dosen', NULL, 23)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (25, N'luqman', N'$2y$10$cR49mwtVA04zC/mqrgZ91eAlUgs0fzT3625scXFnMJs6/Ug8TjCAK', N'dosen', NULL, 24)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (26, N'jamal', N'$2y$10$VU.vkU1pxwX1VFXYAZAJ0enZ8h.hUt4yAS1TDZMtsDAItBy1arH66', N'mahasiswa', 1, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (27, N'adam', N'$2y$10$j0O2f4Mu5BejFODdE1qNEubuElzvIF.wHLeYV1VovFrbhi5e2bte2', N'mahasiswa', 2, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (28, N'adit', N'$2y$10$536OhIyksz0TiglF12/B6uJES2li84hvWioVNDbjyoVyWYFjl2vvW', N'mahasiswa', 3, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (29, N'vera', N'$2y$10$AW7Rc/Tt/vKVDlZdKEcnceukEwDVsr7D1yHET4HLNRIEYV6PY6eCK', N'mahasiswa', 4, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (30, N'erika', N'$2y$10$6qu5rTYB.HAbweXIqIU9Auw.QSnailnICxrdzH6tz23HwbiyGe4jy', N'mahasiswa', 5, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (31, N'fasya', N'$2y$10$4IToX3QOw7M/UwxHOAVAg.BX7OcDBiVG2icPIILSZKczcPzUfYUJS', N'mahasiswa', 6, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (32, N'athallah', N'$2y$10$BNliZ1IDssr3LYpxVLjkse.0kIuI5wIel8FuHEAmfZQn/zlYI8n6G', N'mahasiswa', 7, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (33, N'aurella', N'$2y$10$FSpvBu2/r1wSsIzXJxTdXu4WNaXKnebj/BwXKUAYLAGZxu2rdz4GS', N'mahasiswa', 8, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (34, N'belqis', N'$2y$10$0qFgnxqYmjrOFoVMwlovXetbeRle4FX01CLwc26ijBj7l0DYekeU2', N'mahasiswa', 9, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (35, N'danica', N'$2y$10$/5sM/fAL3Scgf/BQHt/5Jep3Qo4k/qITqsSiSGjzJUEXmRiBmD7bC', N'mahasiswa', 10, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (36, N'dhevina', N'$2y$10$jVV7TQnv1k/nszKtxVueJekl10lfF8/oIog6sxfLuG9XWtomn49ZC', N'mahasiswa', 11, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (37, N'erfin', N'$2y$10$BjZNDEOBYV6yhKAnrYSEvuszfKF/PQJycDQMuvZuDXdObadPZ1dji', N'mahasiswa', 12, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (38, N'faiza', N'$2y$10$8mI1cnozlyS4oDjQOpFgtO0Be00LLwgkF/T8yo3oOx0gkeSc9VW.i', N'mahasiswa', 13, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (39, N'gerly', N'$2y$10$wpeLC./I0vBHEu0xpsf1e.UT8jR4ejfZ0SC4Wfac63ekDTci0Bdyy', N'mahasiswa', 14, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (40, N'indi', N'$2y$10$fTVnHxaQ/yr6jvBLYVgmqOMBsCOpYnVUgg9uzu9JW55CAuVul7vOy', N'mahasiswa', 15, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (41, N'jaden', N'$2y$10$OpnyKL4gA00i7GhjI08TOOwyFMhYxFeWiEC3NpnplK.gQtL4rgXYS', N'mahasiswa', 16, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (42, N'jessica', N'$2y$10$H/jQ58.4AhZTV9ycGfSZjex/KzfWyLxh.ytJVUSizNbknRLumdAvG', N'mahasiswa', 17, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (43, N'lovelyta', N'$2y$10$TJokibARh2leeqFCvkvb2OT.kiAraZn.5ruJIh8iFFBVmsc7DZR3q', N'mahasiswa', 18, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (44, N'meisy', N'$2y$10$c9mwSbyqkaZ9f16IwwSxm./oZqFLqoLMhbknuwvo6iN.wCwXvTh4e', N'mahasiswa', 19, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (45, N'haikal', N'$2y$10$rVqUladMnH6rBkFlDyyORuwRAUEFE7DeBtlYDU6xoOtInjJOaHKXS', N'mahasiswa', 20, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (46, N'bhimantara', N'$2y$10$ihGBntRqv.pCzatA87GHyuUWztLEGcS6KbECx3aIaQMs.Z7nQiObe', N'mahasiswa', 21, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (47, N'kemal', N'$2y$10$auBSZ4kY1wUQyzHNwYlpbe16odnNwwWTJe2fc/873jA29Vm52A6J2', N'mahasiswa', 22, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (48, N'rosyid', N'$2y$10$LNFNEIPZLqOUuoaO4allAuA7qBdKqJOELkGK3rUQHOZTztljr4o6a', N'mahasiswa', 23, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (49, N'nimas', N'$2y$10$vSyy769YNAvO98mXqL0FhelNgGqf9w4h.tprzL1ZMRZUpqw8RXj.i', N'mahasiswa', 24, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (50, N'bagus', N'$2y$10$Q3/a4Ab25poZNwpcCKa10ul.HSjKipo/qQelU4Jd/AFmGp4CjM2be', N'mahasiswa', 25, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (51, N'citra', N'$2y$10$ubHaGv6u1gSCBPjBPyNZFuT2TjVPFH9x274TlgvqCKzAjHIIJXQlq', N'mahasiswa', 26, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (52, N'dewi', N'$2y$10$56WabX7wqhPjuyq2eG6AIO7ZQXkjuwmzBk4wipt1Q4OhcKv4oXb0W', N'mahasiswa', 27, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (53, N'eko', N'$2y$10$.aasJAnJhowBgC77qda4QObv1g.kijWPbjUsOzhLJXhpsCWm5waT6', N'mahasiswa', 28, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (54, N'farhan', N'$2y$10$pNIpAtRuldVKA0OWMcXk/euMqXMgC6CGGlVOmF5TKT0c6agsWu79.', N'mahasiswa', 29, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (55, N'gita', N'$2y$10$uelEARSUYs3/yCSgmj7MBO6W4vlje60Zzoql1nR2Rx9/sgAPMXVYu', N'mahasiswa', 30, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (56, N'hendra', N'$2y$10$gBC7L8K9Ga4I5aIp9sJF3.MtyfiTzoDRozF08beIK7MSMCeg7sGW2', N'mahasiswa', 31, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (57, N'indah', N'$2y$10$t1Bn9j8GaVJlBwvTTOGizeRfTomoS67pfHCV36UhvjMcLVmW1G3xe', N'mahasiswa', 32, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (58, N'joko', N'$2y$10$QZ9hDX9bQ72BqpgrCv3cV.6HsggEZmLQyQ2ID2FM8TqKVQU63VzYK', N'mahasiswa', 33, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (59, N'kartini', N'$2y$10$UopX5YLBRbVo29RlpeQFEeWgkhiC7GDoNMKlbyDEDSjVfkHOOZIs6', N'mahasiswa', 34, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (60, N'lestari', N'$2y$10$q1qRrR1OmaE818dfmPzAr.DOCdydhZ50ABFjqLMxWk0LnOM9Isel2', N'mahasiswa', 35, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (61, N'maharani', N'$2y$10$4uEXCDsBYqsFXVYDP9iKp.M3yQfJK5BQGDQd4z312tgHNqjq5xuCC', N'mahasiswa', 36, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (62, N'niko', N'$2y$10$ALh/bPaTTPGN1I3put9rG.3aBhtpK2xDKbm5FjAX7vm1qg540p.BO', N'mahasiswa', 37, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (63, N'oka', N'$2y$10$YCSWSIPjxeJs5xfYgISUleZtndD6mvl2oRsQiloNZ2yNIYijbEpUS', N'mahasiswa', 38, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (64, N'putu', N'$2y$10$lgd8dbwYrzS2uDQeOgXJBu0cM94rOH06V4ryCsC6s82O.Yk4RxDCq', N'mahasiswa', 39, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (65, N'qory', N'$2y$10$g8jK69Di.SnlvKfYAtfvoe1hKgUINRRo5F/cHIgyUAyySrPgwtZKW', N'mahasiswa', 40, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (66, N'rizky', N'$2y$10$ADjK8R56wtdVfcvTDT0j3uyFjPn9F2B1Yd.3DhX6Y/T7EqI6tQXDa', N'mahasiswa', 41, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (67, N'sarah', N'$2y$10$KH2py3.BGPnc14RnnZQK9eCeQoESvF0vRXkN9DacIMR1iEtpyDGDy', N'mahasiswa', 42, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (68, N'taufik', N'$2y$10$.gn35TrlPcDJeLuw9C80.OTvrblluC3KvKeZCtDFRvFcLI8peouM6', N'mahasiswa', 43, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (69, N'umi', N'$2y$10$3ht7vyi6kTtkF2V75wQ/suEt0xOj4tPvoJXuCX9q97958P.znxwXO', N'mahasiswa', 44, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (70, N'vina', N'$2y$10$FftFs4OiQ2UP3YZgT2VXC.WkMXqOh5xfhYSC0XTwIONaQlj8yjxky', N'mahasiswa', 45, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (71, N'wahyu', N'$2y$10$cTpZgyB/oPA3VvTKT2iUFOteIqwgAhwllfSNIzMEOJOvBQVR.q.ji', N'mahasiswa', 46, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (72, N'xena', N'$2y$10$htNkqxPsZRuTVOoMTZ1eIOv/LdVP9GgwFNbXS7AqeKEyO1vIvQQwy', N'mahasiswa', 47, NULL)
INSERT [dbo].[akun] ([id], [username], [password], [role], [mahasiswa_id], [dosen_id]) VALUES (73, N'yoshi', N'$2y$10$e5H6QA8dXL1IepIEiiZPxOGw88sI6idF4ztnwxHznm6b3/mQPb6wO', N'mahasiswa', 48, NULL)
SET IDENTITY_INSERT [dbo].[akun] OFF
GO
SET IDENTITY_INSERT [dbo].[dosen] ON 

INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (1, N'Cahya Rahmad, ST., M.Kom., Dr. Eng', N'1990112481', N'Laki-laki', N'Malang', N'VitZuraida@polinema.ac.id', N'../../view/img/dosen/cahya.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (2, N'Rawansyah, Drs., M.Pd', N'1989011011', N'Laki-laki', N'Malang', N'rawansyah@polinema.ac.id', N'../../view/img/dosen/rawansyah.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (3, N'Widaningsih, S.Psi, SH., MH', N'1990151034', N'Perempuan', N'Malang', N'widaningsih@polinema.ac.id', N'../../view/img/dosen/widaningsih.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (4, N'Indra Dharma Wijaya, ST., M.T', N'1985011002', N'Laki-laki', N'Surabaya', N'IndraDharma@polinema.ac.id', N'../../view/img/dosen/indra.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (5, N'Atiqah Nurul Asri, S.Pd., M.Pd', N'1986010802', N'Perempuan', N'Malang', N'CahyaRahmad@polinema.ac.id', N'../../view/img/dosen/atiqah.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (6, N'Dwi Puspitasari, S.Kom., M.Kom', N'1985017509', N'Perempuan', N'Malang', N'DwiPuspitasari@polinema.ac.id', N'../../view/img/dosen/dwi.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (7, N'Deddy Kusbianto PA, Ir., M.Mkom.
', N'1990014998', N'Laki-laki', N'Surabaya', N'DeddyKusbianto@polinema.ac.id', N'../../view/img/dosen/deddy.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (8, N'Budi Harijanto, ST., M.Kom', N'1989015058', N'Laki-laki', N'Blitar', N'BudiHarijanto@polinema.ac.id', N'../../view/img/dosen/budi.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (9, N'Ariadi Retno, S.Kom., M.Kom.', N'1990022207', N'Perempuan', N'Pasuruan', N'AriadiRetno@polinema.ac.id', N'../../view/img/dosen/ariadi.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (10, N'Banni Satria , S.Kom., M.MSI', N'1990021996', N'Laki-laki', N'Malang', N'BanniSatria@polinema.ac.id', N'../../view/img/dosen/banni.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (11, N'Dimas Wahyu Wibowo, ST., MT', N'1987060215', N'Perempuan', N'Tulungagung', N'MeytiEka@polinema.ac.id', N'../../view/img/dosen/dimas.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (12, N'Ekojono, ST., M.Kom', N'1990015154', N'Laki-laki', N'Pasuruan', N'Ekojono@polinema.ac.id', N'../../view/img/dosen/ekojono.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (13, N'Dhebys Suryani, S.Kom., MT
', N'1990015303', N'Perempuan', N'Surabaya', N'DhebysSuryani@polinema.ac.id', N'../../view/img/dosen/dhebys.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (14, N'Ahmadi Yuli Ananta, S.T., M.M', N'1989015017', N'Laki-laki', N'Kediri', N'AhmadiYuli@polinema.ac.id', N'../../view/img/dosen/ahmadi.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (15, N'Dr. Ely Setyo Astuti, S.T., M.T', N'1990022225', N'Perempuan', N'Blitar', N'ElySetyo@polinema.ac.id', N'../../view/img/dosen/ely.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (16, N'Dyah Ayu Irawati, ST., M.Cs', N'1990017134', N'Perempuan', N'Tulungagung', N'ViviNur@polinema.ac.id', N'../../view/img/dosen/dyah-ayu.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (17, N'Imam Fahrur Rozi, ST., MT.
', N'1990011008', N'Laki-laki', N'Pasuruan', N'ImamFahrur@polinema.ac.id', N'../../view/img/dosen/imam.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (18, N'Hendra Pradipta, SE., MSc', N'1988112318', N'Laki-laki', N'Surabaya', N'HendraPradipta@polinema.ac.id', N'../../view/img/dosen/hendra.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (19, N'Arief Prasetyo, S.Kom.', N'1990014709', N'Laki-laki', N'Malang', N'AriefPrasetyo@polinema.ac.id', N'../../view/img/dosen/arief.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (20, N'Annisa Puspa, S.Kom., M.Kom', N'1989016118', N'Perempuan', N'Pasuruan', N'AnnisaPuspa@polinema.ac.id', N'../../view/img/dosen/annisa.jpg')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (21, N'Gunawan Budi, ST., MMT., Ph.D', N'1985025557', N'Laki-laki', N'Blitar', N'AnugrahNur@polinema.ac.id', N'../../view/img/dosen/gunawan.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (22, N'Erfan Rohadi, ST., M.Eng., Ph.D', N'1990017204', N'Laki-laki', N'Kediri', N'ErfanRohadi@polinema.ac.id', N'../../view/img/dosen/erfan.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (23, N'Faisal Rahutomo ST., M.Kom., Dr.Eng', N'1970031831', N'Laki-laki', N'Pasuruan', N'KadekSuranina@polinema.ac.id', N'../../view/img/dosen/faisal.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (24, N'Luqman Affandi, S.Kom., MMSI', N'1978091067', N'Laki-laki', N'Malang', N'LuqmanSuranina@polinema.ac.id', N'../../view/img/dosen/luqman.png')
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) VALUES (25, N'Mungki Astiningrum, ST., M.Kom.', N'1987081180', N'Perempuan', N'Malang', N'MungkiAstiningrum@polinema.ac.id', N'../../view/img/dosen/mungki.png')
SET IDENTITY_INSERT [dbo].[dosen] OFF
GO
SET IDENTITY_INSERT [dbo].[laporan] ON 

INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (1, 2, 14, CAST(N'2024-11-30' AS Date), 3, NULL, 4, 1, CAST(N'2024-11-30' AS Date), NULL, 7)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (2, 10, 5, CAST(N'2024-12-01' AS Date), 7, NULL, 3, 1, CAST(N'2024-12-03' AS Date), NULL, 3)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (5, 5, 1, CAST(N'2024-11-15' AS Date), 6, NULL, 4, 1, CAST(N'2024-12-28' AS Date), NULL, 1)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (7, 12, 9, CAST(N'2024-10-20' AS Date), 13, NULL, 2, 0, NULL, NULL, 5)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (8, 4, 6, CAST(N'2024-11-25' AS Date), 29, NULL, 1, 1, CAST(N'2024-12-13' AS Date), NULL, 3)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (9, 18, 24, CAST(N'2024-11-10' AS Date), 21, NULL, 1, 1, CAST(N'2024-11-15' AS Date), NULL, 12)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (10, 20, 8, CAST(N'2024-12-02' AS Date), 20, NULL, 2, 1, CAST(N'2024-12-05' AS Date), NULL, 4)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (12, 17, 46, CAST(N'2024-11-29' AS Date), 15, NULL, 2, 1, CAST(N'2024-12-02' AS Date), NULL, 23)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (15, 24, 33, CAST(N'2024-11-08' AS Date), 24, NULL, 1, 0, NULL, NULL, 17)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (16, 21, 22, CAST(N'2024-12-19' AS Date), 19, NULL, 2, 0, NULL, NULL, 11)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (41, 1, 14, CAST(N'2024-12-12' AS Date), 14, N'../../view/img/sanksi/MHSCEWE.jpg', 2, 1, CAST(N'2024-12-13' AS Date), N'../../view/img/sanksi/MHSJENNIE.jpg', 7)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (42, 1, 10, CAST(N'2024-12-13' AS Date), 19, N'../../view/img/sanksi/cewe5.jpg', 2, 0, NULL, N'', 5)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (48, 1, 14, CAST(N'2024-12-28' AS Date), 32, N'../../view/img/sanksi/IMG_20190107_165334.png', 1, 1, CAST(N'2024-12-28' AS Date), N'', 7)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (49, 7, 2, CAST(N'2024-12-30' AS Date), 15, N'', 2, 1, CAST(N'2024-12-30' AS Date), N'', 1)
INSERT [dbo].[laporan] ([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [foto_pelanggaran], [tingkat_sanksi], [status_verifikasi], [tgl_verifikasi], [file_sanksi], [dpa_id]) VALUES (50, 7, 1061, CAST(N'2024-12-30' AS Date), 13, N'', 2, 1, CAST(N'2024-12-30' AS Date), N'../../view/img/sanksi/IMG_20190107_165334.png', 1)
SET IDENTITY_INSERT [dbo].[laporan] OFF
GO
SET IDENTITY_INSERT [dbo].[mahasiswa] ON 

INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (1, N'MUHAMMAD JAMAL', N'2341760029', N'Laki-laki', N'Malang,12 November 2006', N'Malang', N'muh@gmail.com', N'TI', N'1A', 1, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (2, N'ADAM NUR ALIFI', N'2341760158', N'Laki-laki', N'Surabaya, 10 November 2006', N'Surabaya', N'adam11@gmail.com', N'TI', N'1A', 1, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (3, N'ADIT BAGUS SADEWA', N'2341760149', N'Laki-laki', N'Tuban, 6 Juni 2005', N'Tuban', N'ditadit@gmail.com', N'TI', N'1B', 2, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (4, N'VERA EFITA HUDI PUTRI', N'2341760047', N'Perempuan', N'Tuban, 22 September 2004', N'Tuban', N'veraEfit70@gmail.com', N'TI', N'1B', 2, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (5, N'ERIKA ATTHACARYA', N'2341760159', N'Perempuan', N'Blitar, 14 November 2004', N'Blitar', N'hiwltrswalterss@gmail.com', N'TI', N'2A', 3, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (6, N'FASYA DITA NASAHAH', N'2341760022', N'Perempuan', N'Kediri, 29 Februari 2005', N'Kediri', N'fastfast@gmail.com', N'TI', N'2A', 3, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (7, N'ATHALLAH FAUZAN', N'2341760131', N'Laki-laki', N'Sidoarjo, 3 Januari 2004', N'Sidorajo', N'atalah@gmail.com', N'TI', N'2B', 4, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (8, N'AURELLA SEKAR', N'2341760039', N'Perempuan', N'Malang, 5 Mei 2005', N'Malang', N'aurel90@gmail.com', N'TI', N'2B', 4, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (9, N'BELQIS IVANA FIDELIA', N'2341760075', N'Perempuan', N'Blitar, 10 Januari 2003', N'Blitar', N'belbel109@gmail.com', N'TI', N'3A', 5, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (10, N'AQILA NUR AZZA', N'2341760023', N'Perempuan', N'Malang, 3 Agustus 2003', N'Malang', N'danicaaa12@gmail.com', N'TI', N'3A', 5, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (11, N'DHEVINA AGUSTINA', N'2341760034', N'Perempuan', N'Kediri, 9 Juli 2004', N'Kediri', N'devinnaaa@gmail.com', N'TI', N'3B', 6, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (12, N'ERFIN JAUHARI', N'2341760006', N'Laki-laki', N'Malang, 10 Oktober 2003', N'Malang', N'erfinjauh@gmail.com', N'TI', N'3B', 6, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (13, N'FAIZA ANATHASYA', N'2341760088', N'Perempuan', N'Malang, 9 Agustus 2003', N'Malang', N'faizz4@gmail.com', N'TI', N'4A', 7, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (14, N'GERLY VAEYUNGFAN', N'2341760035', N'Laki-laki', N'Malang, 7 Oktober 2002', N'Malang', N'gerlyGer@gmail.com', N'TI', N'4A', 7, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (15, N'INDI WARA RAMADHANI', N'2341760162', N'Perempuan', N'Malang, 22 Oktober 2002', N'Malang', N'indiwar@gmail.com', N'TI', N'4B', 8, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (16, N'JADEN NATHA KAUTSAR', N'2341760068', N'Laki-laki', N'Mojokerto, 30 April 2002', N'Mojokerto', N'jadennat@gmail.com', N'TI', N'4B', 8, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (17, N'JESSICA AMELIA', N'2341760099', N'Perempuan', N'Blitar, 17 Maret 2006', N'Blitar', N'jessiii@gmail.com', N'SIB', N'1A', 9, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (18, N'LOVELYTA SEKARAYU', N'2341760153', N'Perempuan', N'Malang, 8 Juli 2005', N'Malang', N'loveltya88@gmail.com', N'SIB', N'1A', 9, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (19, N'MEISY NADIA NABBAN', N'2341760126', N'Perempuan', N'Batam, 7 Juni 2004', N'Batam', N'mesio09@gmail.com', N'SIB', N'1B', 10, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (20, N'M. HAIKAL PUTRA', N'2341760072', N'Laki-laki', N'Malang, 8 Agustus 2005', N'Malang', N'mochmoch@gmail.com', N'SIB', N'1B', 10, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (21, N'M. BHIMANTARA', N'2341760025', N'Laki-laki', N'Pasuruan, 19 September 2003', N'Pasuruan', N'bimantara70@gmail.com', N'SIB', N'2A', 11, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (22, N'M. KEMAL SYAHRU', N'2341760196', N'Laki-laki', N'Sidoarjo, 24 Januari 2004', N'Sidoarjo', N'muham@gmail.com', N'SIB', N'2A', 11, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (23, N'M. ROSYID', N'2341760015', N'Laki-laki', N'Malang, 20 Juli 2003', N'Malang', N'rosid88@gmail.com', N'SIB', N'2B', 12, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (24, N'NIMAS SEPTIANDINI', N'2341760087', N'Perempuan', N'Kediri, 21 Juni 2003', N'Kediri', N'nimas4@gmail.com', N'SIB', N'2B', 12, N'https://blogger.googleusercontent.com/img/a/AVvXsEj5L5GK7ZTJZUD8eubWGmNsWBpUqQ4bIVFjonR12JnWqa_FxlTCFDelDgWdGepDtN2oaUxEZTXZnkZSWRQpMixsLsog2H06XssKidpfbx-88zcGU63GO66UAogF5UdSwX1whFZMNjDumPXxVU0Xyb1runk1pBtNjEJqpDvhaQC3w_ltX3naRsvTlD9fTRk')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (25, N'BAGUS SAPUTRA', N'2341760110', N'Laki-laki', N'Tulungagung, 11 November 2003', N'Tulungagung', N'bagusus@gmail.com', N'SIB', N'3A', 13, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (26, N'CITRA WULANDARI', N'2341760111', N'Perempuan', N'Magelang, 17 Agustus 2003', N'Magelang', N'citcitra44@gmail.com', N'SIB', N'3A', 13, N'https://blogger.googleusercontent.com/img/a/AVvXsEj5L5GK7ZTJZUD8eubWGmNsWBpUqQ4bIVFjonR12JnWqa_FxlTCFDelDgWdGepDtN2oaUxEZTXZnkZSWRQpMixsLsog2H06XssKidpfbx-88zcGU63GO66UAogF5UdSwX1whFZMNjDumPXxVU0Xyb1runk1pBtNjEJqpDvhaQC3w_ltX3naRsvTlD9fTRk')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (27, N'DEWI PRATIWI', N'2341760112', N'Perempuan', N'Pontianak, 4 April 2003', N'Pontianak', N'dewiprat00@gmail.com', N'SIB', N'3B', 14, N'https://blogger.googleusercontent.com/img/a/AVvXsEj5L5GK7ZTJZUD8eubWGmNsWBpUqQ4bIVFjonR12JnWqa_FxlTCFDelDgWdGepDtN2oaUxEZTXZnkZSWRQpMixsLsog2H06XssKidpfbx-88zcGU63GO66UAogF5UdSwX1whFZMNjDumPXxVU0Xyb1runk1pBtNjEJqpDvhaQC3w_ltX3naRsvTlD9fTRk')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (28, N'EKO SAPUTRO', N'2341760113', N'Laki-laki', N'Balikpapan, 15 Oktober 2002', N'Balikpapan', N'ekosap@gmail.com', N'SIB', N'3B', 14, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (29, N'FARHAN FIRMANSYAH', N'2341760114', N'Laki-laki', N'Madiun, 10 Desember 2002', N'Madiun', N'farhanooo@gmail.com', N'SIB', N'4A', 15, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (30, N'GITA MAHARANI', N'2341760115', N'Perempuan', N'Batu, 30 Februari 2002', N'Batu', N'gitagit43@gmail.com', N'SIB', N'4A', 15, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (31, N'HENDRA SETIAWAN', N'2341760116', N'Laki-laki', N'Tegal, 18 Juni 2003', N'Tegal', N'henhendr0@gmail.com', N'SIB', N'4B', 16, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (32, N'INDAH KUSUMA', N'2341760117', N'Perempuan', N'Surabaya, 20 Maret 2003', N'Surabaya', N'indahkus@gmail.com', N'SIB', N'4B', 16, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (33, N'JOKO WIDODO', N'2341760118', N'Laki-laki', N'Padang, 21 Agustus 2006', N'Padang', N'jokowidkk@gmail.com', N'PPLS', N'1A', 17, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (34, N'KARTINI AYU', N'2341760119', N'Perempuan', N'Medan, 22 April 2005', N'Medan', N'kariayu@gmail.com', N'PPLS', N'1A', 17, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (35, N'LESTARI CAHYA', N'2341760120', N'Perempuan', N'Malang, 3 Oktober 2006', N'Malang', N'lescah@gmail.com', N'PPLS', N'1B', 18, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (36, N'MAHARANI PUTRI', N'2341760121', N'Perempuan', N'Bandung, 17 September 2006', N'Bandung', N'maharan@gmail.com', N'PPLS', N'1B', 18, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (37, N'NIKO SATRIA', N'2341760122', N'Laki-laki', N'Jambi, 8 Agustus 2004', N'Jambi', N'niko100@gmail.com', N'PPLS', N'2A', 19, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (38, N'OKA WIRAWAN', N'2341760123', N'Laki-laki', N'Cimahi, 6 September 2004', N'Cimahi', N'okaki66@gmail.com', N'PPLS', N'2A', 19, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (39, N'PUTU WIJAYA', N'2341760124', N'Perempuan', N'Pasuruan, 13 Januari 2005', N'Pasuruan', N'pututuuuu@gmail.com', N'PPLS', N'2B', 20, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (40, N'QORY SANDIKA', N'2341760125', N'Laki-laki', N'Malang, 16 Juni 2003', N'Malang', N'qorya@gmail.com', N'PPLS', N'2B', 20, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (41, N'RIZKY RAMADHAN', N'2341760126', N'Laki-laki', N'Samarinda, 2 Februari 2004', N'Samarinda', N'riskyyy@gmail.com', N'PPLS', N'3A', 21, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (42, N'SARAH ANDINI', N'2341760127', N'Perempuan', N'Malang, 11 Agustus 2003', N'Malang', N'sarahhh50@gmail.com', N'PPLS', N'3A', 21, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (43, N'TAUFIK HIDAYAT', N'2341760128', N'Laki-laki', N'Malang, 5 Mei 2003', N'Malang', N'taufikk@gmail.com', N'PPLS', N'3B', 22, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (44, N'UMI LATIFAH', N'2341760129', N'Perempuan', N'Sidoarjo, 18 Juli 2004', N'Sidoarjo', N'umilat@gmail.com', N'PPLS', N'3B', 22, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (45, N'VINA ANGGRAENI', N'2341760130', N'Perempuan', N'Blitar, 11 November 2003', N'Blitar', N'vinaanggre@gmail.com', N'PPLS', N'4A', 23, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (46, N'WAHYU SUSANTO', N'2341760131', N'Laki-laki', N'Pasuruan, 13 Juli 2002', N'Pasuruan', N'wahyususan@gmail.com', N'PPLS', N'4A', 23, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (47, N'XENA KARTIKA', N'2341760132', N'Perempuan', N'Lumajang, 16 Oktober 2002', N'Lumajang', N'xena100@gmail.com', N'PPLS', N'4B', 24, N'../../view/img/mahasiswa/perempuan.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (48, N'YOSHI MAHARDIKA', N'2341760133', N'Laki-laki', N'Kupang, 18 Januari 2003', N'Kupang', N'yosiiiii@gmail.com', N'PPLS', N'4B', 24, N'../../view/img/mahasiswa/laki-laki.jpg')
INSERT [dbo].[mahasiswa] ([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) VALUES (1061, N'PRIMUS SERAN', N'2341760002', N'Laki-laki', N'Betun.  9 Juli 2004', N'Betun', N'primusMus@gmail.com', N'TI', N'1A', 1, N'../../view/img/mahasiswa/laki-laki.jpg')
SET IDENTITY_INSERT [dbo].[mahasiswa] OFF
GO
SET IDENTITY_INSERT [dbo].[pelanggaran] ON 

INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (1, N'Berkomunikasi dengan tidak sopan, baik tertulis atau tidak tertulis kepada mahasiswa, dosen, karyawan, atau orang lain
', 5)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (2, N'Berbusana tidak sopan dan tidak rapi. Seperti: berpakaian ketat, transparan, memakai t-shirt (baju kaos tidak berkerah), tank top, hipster, you can see, rok mini, backless, celana pendek, celana tiga per empat, legging, model celana atau baju koyak, sandal, sepatu sandal di lingkungan kampus.', 4)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (3, N'Mahasiswa laki-laki berambut tidak rapi, gondrong yaitu panjang
 rambutnya melewati batas alis mata di bagian depan, telinga di bagian samping dan menyentuh kerah baju di bagian leher
.', 4)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (4, N'Mahasiswa berambut dengan model punk, dan memakai WIG (rambut palsu terkecuali dengan alasan khusus), dicat selain hitam dan/ atau skinned.
', 4)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (5, N'Makan atau minum di dalam ruang kuliah/laboratorium/bengkel.
', 4)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (6, N'Tidak menjaga kebersihan di seluruh area Polinema
.', 4)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (7, N'Membuat kegaduhan yang mengganggu pelaksanaan perkuliahan atau praktikum yang sedang berlangsung.
', 3)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (8, N'Merokok di luar area kawasan (BEBAS) merokok
.', 3)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (9, N'
Bermain kartu, game online, memutar video/film hiburan di (dalam kelas/laboratorium)
.', 3)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (10, N'Mengotori atau mencoret-coret meja, kursi, tembok, dan fasilitas lain di lingkungan Polinema
.', 3)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (11, N'Bertingkah laku kasar atau tidak sopan kepada mahasiswa lain, dosen, dan/atau karyawan.
', 3)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (12, N'Merusak sarana dan prasarana yang ada di area Polinema
.', 2)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (13, N'Tidak menjaga ketertiban dan keamanan di seluruh area Polinema
.', 2)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (14, N'Melakukan pengotoran/pengrusakan barang milik orang lain termasuk inventaris milik Politeknik Negeri Malang
.', 2)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (15, N'Mengakses materi pornografi, melakukan tindakan asusila di kelas atau area kampus.', 2)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (16, N'Membawa dan/atau menggunakan senjata tajam atau sejenisnya dan/atau senjata api untuk hal kriminal.', 2)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (17, N'Melakukan perkelahian, kekerasan serta membentuk geng/ kelompok yang bertujuan negatif.
', 2)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (18, N'Melakukan kegiatan politik praktis di dalam kampus
.', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (19, N'Melakukan penyalahgunaan identitas mahasiswa/i dan institusi untuk perbuatan negatif
', 2)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (20, N'Mengancam (menghina, membully) baik tertulis atau tidak tertulis kepada mahasiswa lain, dosen, dan/atau karyawan.', 2)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (21, N'Mencuri barang inventaris institusi dalam bentuk apapun
.', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (22, N'Melakukan kecurangan dalam bidang akademik, administratif, dan keuangan.
', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (23, N'Melakukan pemerasan dan/atau penipuan
', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (24, N'Melakukan pelecehan dan/atau tindakan asusila dalam segala bentuk di dalam dan di luar kampus.
', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (25, N'Berjudi, mengkonsumsi minum-minuman keras, dan/ atau bermabuk-mabukan di lingkungan dan di luar lingkungan Kampus
.', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (26, N'Mengikuti organisasi dan atau menyebarkan faham-faham yang dilarang oleh Pemerintah.', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (27, N'Melakukan pemalsuan data pribadi atau institusi
.', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (28, N'Melakukan plagiasi (copy paste) dalam tugas-tugas atau karya ilmiah
.', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (29, N'Tidak menjaga nama baik Polinema di masyarakat dan/ atau mencemarkan nama baik Polinema
.', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (30, N'Melakukan kegiatan atau sejenisnya yang dapat menurunkan kehormatan Polinema atau martabat Bangsa dan Negara.
', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (31, N'Menggunakan dan/ atau mengedarkan dan/ atau menjual barang-barang psikotropika dan/atau zat-zat Adiktif lainnya
.', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (32, N'Terlibat dalam tindakan kriminal dan dinyatakan bersalah oleh
 Pengadilan
.', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (33, N'Memarkir kendaraan tidak pada tempatnya
.', 3)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (34, N'Melakukan/menyelenggarakan aktivitas organisasi kemahasiswaan extra kampus di dalam kampus tanpa ijin resmi institusi
.', 3)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (35, N'Melakukan pemalsuan dokumen/tanda tangan
.', 1)
INSERT [dbo].[pelanggaran] ([id], [deskripsi], [tingkat_sanksi]) VALUES (36, N'Membuat konten video, bukti-bukti elektronik yang bermuatan ujaran yang menimbulkan pencemaran nama baik institusi/jurusan/individu.
', 3)
SET IDENTITY_INSERT [dbo].[pelanggaran] OFF
GO
INSERT [dbo].[tingkat] ([tingkat], [deskripsi], [surat_sanksi]) VALUES (1, N'Diberi Surat Peringatan 2', N'../../view//img/master/berita_acara_tatib_jti.pdf')
INSERT [dbo].[tingkat] ([tingkat], [deskripsi], [surat_sanksi]) VALUES (2, N'Skorsing 3 minggu', N'../../view//img/master/berita_acara_tatib_jti.pdf')
INSERT [dbo].[tingkat] ([tingkat], [deskripsi], [surat_sanksi]) VALUES (3, N'Diberi Surat Peringatan 1', N'../../view//img/master/berita_acara_tatib_jti.pdf')
INSERT [dbo].[tingkat] ([tingkat], [deskripsi], [surat_sanksi]) VALUES (4, N'Skorsing 1 Minggu', N'../../view//img/master/berita_acara_tatib_jti.pdf')
INSERT [dbo].[tingkat] ([tingkat], [deskripsi], [surat_sanksi]) VALUES (5, N'Teguran Lisan/Peringatan Tertulis', N'../../view//img/master/berita_acara_tatib_jti.pdf')
GO
ALTER TABLE [dbo].[akun]  WITH NOCHECK ADD  CONSTRAINT [FK_akun_dosen] FOREIGN KEY([dosen_id])
REFERENCES [dbo].[dosen] ([id])
GO
ALTER TABLE [dbo].[akun] CHECK CONSTRAINT [FK_akun_dosen]
GO
ALTER TABLE [dbo].[akun]  WITH CHECK ADD  CONSTRAINT [FK_akun_mahasiswa] FOREIGN KEY([mahasiswa_id])
REFERENCES [dbo].[mahasiswa] ([id])
GO
ALTER TABLE [dbo].[akun] CHECK CONSTRAINT [FK_akun_mahasiswa]
GO
ALTER TABLE [dbo].[laporan]  WITH CHECK ADD  CONSTRAINT [FK_laporan_dosen] FOREIGN KEY([dosen_id])
REFERENCES [dbo].[dosen] ([id])
GO
ALTER TABLE [dbo].[laporan] CHECK CONSTRAINT [FK_laporan_dosen]
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
ALTER TABLE [dbo].[laporan]  WITH CHECK ADD  CONSTRAINT [FK_laporan_tingkat] FOREIGN KEY([tingkat_sanksi])
REFERENCES [dbo].[tingkat] ([tingkat])
GO
ALTER TABLE [dbo].[laporan] CHECK CONSTRAINT [FK_laporan_tingkat]
GO
ALTER TABLE [dbo].[laporan]  WITH CHECK ADD  CONSTRAINT [FK_laporan_verifikasi_dpa] FOREIGN KEY([dpa_id])
REFERENCES [dbo].[dosen] ([id])
GO
ALTER TABLE [dbo].[laporan] CHECK CONSTRAINT [FK_laporan_verifikasi_dpa]
GO
ALTER TABLE [dbo].[mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK_mahasiswa_dosen] FOREIGN KEY([dpa_id])
REFERENCES [dbo].[dosen] ([id])
GO
ALTER TABLE [dbo].[mahasiswa] CHECK CONSTRAINT [FK_mahasiswa_dosen]
GO
ALTER TABLE [dbo].[pelanggaran]  WITH CHECK ADD  CONSTRAINT [FK_pelanggaran_tingkat] FOREIGN KEY([tingkat_sanksi])
REFERENCES [dbo].[tingkat] ([tingkat])
GO
ALTER TABLE [dbo].[pelanggaran] CHECK CONSTRAINT [FK_pelanggaran_tingkat]
GO
ALTER TABLE [dbo].[akun]  WITH CHECK ADD  CONSTRAINT [CK_akun_role] CHECK  (([role]='dosen' OR [role]='mahasiswa' OR [role]='admin'))
GO
ALTER TABLE [dbo].[akun] CHECK CONSTRAINT [CK_akun_role]
GO
ALTER TABLE [dbo].[mahasiswa]  WITH CHECK ADD  CONSTRAINT [CK_jk_mahasiswa] CHECK  (([jk]='Perempuan' OR [jk]='Laki-laki'))
GO
ALTER TABLE [dbo].[mahasiswa] CHECK CONSTRAINT [CK_jk_mahasiswa]
GO
/****** Object:  StoredProcedure [dbo].[sp_get_detail_laporan]    Script Date: 12/31/2024 12:00:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_detail_laporan]
    @id_laporan INT
AS
BEGIN
    -- Mengambil data laporan berdasarkan id_laporan
    SELECT
        l.id AS id_laporan,
		d.nama as nama_dosen,
        l.tgl_laporan AS tanggal_laporan,
        m.nama AS nama_mahasiswa,
        m.prodi,
        m.kelas,
		L.foto_pelanggaran,
        p.deskripsi AS deskripsi_pelanggaran,
        l.tingkat_sanksi,
        t.deskripsi AS deskripsi_sanksi,
		L.file_sanksi,
        l.status_verifikasi,
        l.tgl_verifikasi,
		l.dpa_id
    FROM
        laporan l
    JOIN mahasiswa m ON l.mhs_id = m.id
    LEFT JOIN dosen d ON l.dosen_id = d.id
	INNER JOIN pelanggaran p ON l.pelanggaran_id = p.id
	INNER JOIN tingkat t ON t.tingkat = l.tingkat_sanksi
    WHERE
        l.id = @id_laporan;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_get_detail_pelanggaran_mahasiswa]    Script Date: 12/31/2024 12:00:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_get_detail_pelanggaran_mahasiswa]
    @mhs_id INT,
	@status_verifikasi BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Deklarasi query dasar
    DECLARE @query NVARCHAR(MAX);

    SET @query = '
    SELECT 
        l.id AS id_laporan,
		l.mhs_id,
        l.tgl_laporan AS tanggal_laporan,
        d_dosen.nama AS nama_dosen,
        m.nama AS nama_mahasiswa,
        m.prodi,
        m.kelas,
        p.deskripsi AS deskripsi_pelanggaran,
        l.tingkat_sanksi,
        t.deskripsi AS deskripsi_sanksi,
		t.surat_sanksi,
		l.file_sanksi,
        l.tgl_laporan,
        l.status_verifikasi, 
        l.tgl_verifikasi,
        m.dpa_id,
        d_dpa.nama AS nama_dpa
    FROM laporan l
    INNER JOIN mahasiswa m ON l.mhs_id = m.id
    INNER JOIN dosen d_dpa ON m.dpa_id = d_dpa.id
    INNER JOIN dosen d_dosen ON l.dosen_id = d_dosen.id
    INNER JOIN pelanggaran p ON l.pelanggaran_id = p.id
    INNER JOIN tingkat t ON l.tingkat_sanksi = t.tingkat
    WHERE l.mhs_id = @mhs_id
';

    -- Tambahkan filter untuk status_verifikasi jika parameter @status_verifikasi diberikan
    IF (@status_verifikasi IS NOT NULL)
    BEGIN
        SET @query = @query + ' AND l.status_verifikasi = @status_verifikasi';
    END

    -- Menambahkan pengurutan berdasarkan tanggal laporan
    SET @query = @query + ' ORDER BY l.tgl_laporan DESC';

    -- Eksekusi query dinamis
    EXEC sp_executesql @query, 
        N'@mhs_id INT, @status_verifikasi BIT', 
        @mhs_id, 
        @status_verifikasi;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_get_pelanggaran_mahasiswa]    Script Date: 12/31/2024 12:00:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_pelanggaran_mahasiswa]
    @prodi NVARCHAR(4) = NULL,  -- Parameter untuk Prodi (default NULL)
    @kelas NVARCHAR(2) = NULL   -- Parameter untuk Kelas (default NULL)
AS
BEGIN
    -- Deklarasi query dasar
    DECLARE @query NVARCHAR(MAX);

    SET @query = '
        SELECT 
            l.id AS laporan_id,
            l.tgl_laporan AS tanggal_laporan,
            d_dosen.nama AS nama_dosen,
            m.nama AS nama_mahasiswa,
            m.prodi,
            m.kelas,
			p.deskripsi,
            l.tingkat_sanksi,
            t.deskripsi AS deskripsi_sanksi,
            d_dpa.nama AS nama_dpa
        FROM laporan l
        INNER JOIN mahasiswa m ON l.mhs_id = m.id
        INNER JOIN dosen d_dpa ON m.dpa_id = d_dpa.id
        INNER JOIN dosen d_dosen ON l.dosen_id = d_dosen.id
		INNER JOIN pelanggaran p ON l.pelanggaran_id = p.id
        INNER JOIN tingkat t ON l.tingkat_sanksi = t.tingkat
    ';

    -- Menambahkan klausa WHERE berdasarkan parameter yang diterima
    IF @prodi IS NOT NULL AND @kelas IS NOT NULL
    BEGIN
        SET @query = @query + ' WHERE m.prodi = @prodi AND m.kelas = @kelas';
    END
    ELSE IF @prodi IS NOT NULL
    BEGIN
        SET @query = @query + ' WHERE m.prodi = @prodi';
    END
    ELSE IF @kelas IS NOT NULL
    BEGIN
        SET @query = @query + ' WHERE m.kelas = @kelas';
    END

    -- Menambahkan pengurutan berdasarkan tanggal laporan
    SET @query = @query + ' ORDER BY l.tgl_laporan DESC';

    -- Eksekusi query dinamis
    EXEC sp_executesql @query, N'@prodi NVARCHAR(4), @kelas NVARCHAR(2)', @prodi, @kelas;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_get_verifikasi_pelanggaran_mahasiswa]    Script Date: 12/31/2024 12:00:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_verifikasi_pelanggaran_mahasiswa]
    @dpa_id INT                  -- ID DPA dosen
AS
BEGIN
    SET NOCOUNT ON;

    -- Deklarasi query dasar
    DECLARE @query NVARCHAR(MAX);

    SET @query = '
    SELECT 
        l.id AS id_laporan,
        l.tgl_laporan AS tanggal_laporan,
        d_dosen.nama AS nama_dosen,
        m.nama AS nama_mahasiswa,
        m.prodi,
        m.kelas,
        p.deskripsi AS deskripsi_pelanggaran,
        l.tingkat_sanksi,
        t.deskripsi AS deskripsi_sanksi,
        l.tgl_laporan,
        l.status_verifikasi, 
        l.tgl_verifikasi,
        m.dpa_id,   -- Menambahkan kolom dpa_id dari tabel mahasiswa
        d_dpa.nama AS nama_dpa
    FROM laporan l
    INNER JOIN mahasiswa m ON l.mhs_id = m.id
    INNER JOIN dosen d_dpa ON m.dpa_id = d_dpa.id
    INNER JOIN dosen d_dosen ON l.dosen_id = d_dosen.id
    INNER JOIN pelanggaran p ON l.pelanggaran_id = p.id
    INNER JOIN tingkat t ON l.tingkat_sanksi = t.tingkat
    WHERE m.dpa_id = @dpa_id
';


    -- Menambahkan pengurutan berdasarkan tanggal laporan
    SET @query = @query + ' ORDER BY l.tgl_laporan DESC';

    -- Eksekusi query dinamis
    EXEC sp_executesql @query, N'@dpa_id INT', @dpa_id;
END
GO
