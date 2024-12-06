USE [tata_tertib]
GO
/****** Object:  Table [dbo].[akun]    Script Date: 12/5/2024 7:30:03 AM ******/
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
/****** Object:  Table [dbo].[dosen]    Script Date: 12/5/2024 7:30:03 AM ******/
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
	[foto_dosen] [varchar](255) NULL,
 CONSTRAINT [PK_dosen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laporan]    Script Date: 12/5/2024 7:30:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laporan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dosen_id] [int] NOT NULL,
	[mhs_id] [int] NOT NULL,
	[tgl_laporan] [date] NOT NULL,
	[pelanggaran_id] [int] NULL,
	[status_verivikasi] [bit] NULL,
	[tgl_veriifikasi] [date] NULL,
	[dpa_id] [int] NOT NULL,
 CONSTRAINT [PK_laporan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mahasiswa]    Script Date: 12/5/2024 7:30:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mahasiswa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](50) NOT NULL,
	[nim] [varchar](10) NOT NULL,
	[jk] [nvarchar](10) NOT NULL,
	[ttl] [varchar](255) NOT NULL,
	[alamat] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[prodi] [varchar](4) NOT NULL,
	[kelas] [varchar](2) NOT NULL,
	[dpa_id] [int] NOT NULL,
	[foto_mahasiswa] [varchar](255) NULL,
 CONSTRAINT [PK_mahasiswa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pelanggaran]    Script Date: 12/5/2024 7:30:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pelanggaran](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[deskripsi] [varchar](300) NOT NULL,
	[tingkat_pelanggaran] [int] NOT NULL,
 CONSTRAINT [PK_pelanggaran] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanksi]    Script Date: 12/5/2024 7:30:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanksi](
	[tingkat] [int] NOT NULL,
	[deskripsi] [varchar](255) NOT NULL,
 CONSTRAINT [PK_sanksi] PRIMARY KEY CLUSTERED 
(
	[tingkat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[akun]  WITH CHECK ADD  CONSTRAINT [FK_akun_dosen] FOREIGN KEY([dosen_id])
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
ALTER TABLE [dbo].[pelanggaran]  WITH CHECK ADD  CONSTRAINT [FK_pelanggaran_sanksi] FOREIGN KEY([tingkat_pelanggaran])
REFERENCES [dbo].[sanksi] ([tingkat])
GO
ALTER TABLE [dbo].[pelanggaran] CHECK CONSTRAINT [FK_pelanggaran_sanksi]
GO
ALTER TABLE [dbo].[akun]  WITH CHECK ADD  CONSTRAINT [CK_akun_role] CHECK  (([role]='dosen' OR [role]='mahasiswa' OR [role]='admin'))
GO
ALTER TABLE [dbo].[akun] CHECK CONSTRAINT [CK_akun_role]
GO
ALTER TABLE [dbo].[mahasiswa]  WITH CHECK ADD  CONSTRAINT [CK_jk_mahasiswa] CHECK  (([jk]='Perempuan' OR [jk]='Laki-laki'))
GO
ALTER TABLE [dbo].[mahasiswa] CHECK CONSTRAINT [CK_jk_mahasiswa]
GO
