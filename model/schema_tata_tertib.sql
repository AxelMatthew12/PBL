USE [tata_tertib]
GO
/****** Object:  Table [dbo].[akun]    Script Date: 12/10/2024 5:46:45 AM ******/
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
/****** Object:  Table [dbo].[dosen]    Script Date: 12/10/2024 5:46:45 AM ******/
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
/****** Object:  Table [dbo].[laporan]    Script Date: 12/10/2024 5:46:45 AM ******/
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
	[status_verivikasi] [bit] NULL,
	[tgl_veriifikasi] [date] NULL,
	[file_sanksi] [varchar](255) NULL,
	[dpa_id] [int] NULL,
 CONSTRAINT [PK_laporan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mahasiswa]    Script Date: 12/10/2024 5:46:45 AM ******/
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
	[dpa_id] [int] NOT NULL,
	[foto_mahasiswa] [varchar](500) NULL,
 CONSTRAINT [PK_mahasiswa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pelanggaran]    Script Date: 12/10/2024 5:46:45 AM ******/
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
/****** Object:  Table [dbo].[tingkat]    Script Date: 12/10/2024 5:46:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tingkat](
	[tingkat] [int] NOT NULL,
	[deskripsi] [varchar](255) NOT NULL,
 CONSTRAINT [PK_tingkat] PRIMARY KEY CLUSTERED 
(
	[tingkat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[sp_get_pelanggaran_mahasiswa]    Script Date: 12/10/2024 5:46:45 AM ******/
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
            t.deskripsi AS deskripsi_pelanggaran,
            l.tingkat_sanksi,
            d_dpa.nama AS nama_dpa
        FROM laporan l
        INNER JOIN mahasiswa m ON l.mhs_id = m.id
        INNER JOIN dosen d_dpa ON m.dpa_id = d_dpa.id
        INNER JOIN dosen d_dosen ON l.dosen_id = d_dosen.id
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
