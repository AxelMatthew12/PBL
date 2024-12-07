USE [tata_tertib]
GO
-- Data Dummy Tabel Sanksi
INSERT [dbo].[sanksi] ([tingkat], [deskripsi]) 
VALUES 
  (1, N'Diberi Surat Peringatan 2'),
  (2, N'Skorsing 3 minggu'),
  (3, N'Diberi Surat Peringatan 1'),
  (4, N'Skorsing 1 Minggu'),
  (5, N'Teguran Lisan/Peringatan Tertulis');
GO

SET IDENTITY_INSERT [dbo].[pelanggaran] ON

-- Data Dummy Tabel p\Pelanggaran
INSERT [dbo].[pelanggaran]
([id], [deskripsi], [tingkat_pelanggaran]) 
VALUES 
  (1, N'Berkomunikasi dengan tidak sopan, baik tertulis atau tidak tertulis kepada mahasiswa, dosen, karyawan, atau orang lain', 5),
  (2, N'Berbusana tidak sopan dan tidak rapi. Seperti: berpakaian ketat, transparan, memakai t-shirt (baju kaos tidak berkerah), tank top, hipster, you can see, rok mini, backless, celana pendek, celana tiga per empat, legging, model celana atau baju koyak, sandal, sepatu sandal di lingkungan kampus.', 4),
  (3, N'Mahasiswa laki-laki berambut tidak rapi, gondrong yaitu panjang rambutnya melewati batas alis mata di bagian depan, telinga di bagian samping dan menyentuh kerah baju di bagian leher.', 4),
  (4, N'Mahasiswa berambut dengan model punk, dan memakai WIG (rambut palsu terkecuali dengan alasan khusus), dicat selain hitam dan/ atau skinned.', 4),
  (5, N'Makan atau minum di dalam ruang kuliah/laboratorium/bengkel.', 4),
  (6, N'Tidak menjaga kebersihan di seluruh area Polinema.', 4),
  (7, N'Membuat kegaduhan yang mengganggu pelaksanaan perkuliahan atau praktikum yang sedang berlangsung.', 3),
  (8, N'Merokok di luar area kawasan (BEBAS) merokok.', 3),
  (9, N'Bermain kartu, game online, memutar video/film hiburan di (dalam kelas/laboratorium).', 3),
  (10, N'Mengotori atau mencoret-coret meja, kursi, tembok, dan fasilitas lain di lingkungan Polinema.', 3),
  (11, N'Bertingkah laku kasar atau tidak sopan kepada mahasiswa lain, dosen, dan/atau karyawan.', 3),
  (12, N'Merusak sarana dan prasarana yang ada di area Polinema.', 2),
  (13, N'Tidak menjaga ketertiban dan keamanan di seluruh area Polinema.', 2),
  (14, N'Melakukan pengotoran/pengrusakan barang milik orang lain termasuk inventaris milik Politeknik Negeri Malang.', 2),
  (15, N'Mengakses materi pornografi, melakukan tindakan asusila di kelas atau area kampus.', 2),
  (16, N'Membawa dan/atau menggunakan senjata tajam atau sejenisnya dan/atau senjata api untuk hal kriminal.', 2),
  (17, N'Melakukan perkelahian, kekerasan serta membentuk geng/ kelompok yang bertujuan negatif.', 2),
  (18, N'Melakukan kegiatan politik praktis di dalam kampus.', 1),
  (19, N'Melakukan penyalahgunaan identitas mahasiswa/i dan institusi untuk perbuatan negatif', 2),
  (20, N'Mengancam (menghina, membully) baik tertulis atau tidak tertulis kepada mahasiswa lain, dosen, dan/atau karyawan.', 2),
  (21, N'Mencuri barang inventaris institusi dalam bentuk apapun.', 1),
  (22, N'Melakukan kecurangan dalam bidang akademik, administratif, dan keuangan.', 1),
  (23, N'Melakukan pemerasan dan/atau penipuan', 1),
  (24, N'Melakukan pelecehan dan/atau tindakan asusila dalam segala bentuk di dalam dan di luar kampus.', 1),
  (25, N'Berjudi, mengkonsumsi minum-minuman keras, dan/ atau bermabuk-mabukan di lingkungan dan di luar lingkungan Kampus.', 1),
  (26, N'Mengikuti organisasi dan atau menyebarkan faham-faham yang dilarang oleh Pemerintah.', 1),
  (27, N'Melakukan pemalsuan data pribadi atau institusi.', 1),
  (28, N'Melakukan plagiasi (copy paste) dalam tugas-tugas atau karya ilmiah.', 1),
  (29, N'Tidak menjaga nama baik Polinema di masyarakat dan/ atau mencemarkan nama baik Polinema', 1),
  (30, N'Melakukan kegiatan atau sejenisnya yang dapat menurunkan kehormatan Polinema atau martabat Bangsa dan Negara.', 1),
  (31, N'Menggunakan dan/ atau mengedarkan dan/ atau menjual barang-barang psikotropika dan/atau zat-zat Adiktif lainnya.', 1),
  (32, N'Terlibat dalam tindakan kriminal dan dinyatakan bersalah oleh Pengadilan.', 1),
  (33, N'Memarkir kendaraan tidak pada tempatnya.', 3),
  (34, N'Melakukan/menyelenggarakan aktivitas organisasi kemahasiswaan extra kampus di dalam kampus tanpa ijin resmi institusi.', 3),
  (35, N'Melakukan pemalsuan dokumen/tanda tangan.', 1),
  (36, N'Membuat konten video, bukti-bukti elektronik yang bermuatan ujaran yang menimbulkan pencemaran nama baik institusi/jurusan/individu.', 3);
SET IDENTITY_INSERT [dbo].[pelanggaran] OFF
GO

-- Data Dummy Tabel Dosen
SET IDENTITY_INSERT [dbo].[dosen] ON
INSERT [dbo].[dosen] ([id], [nama], [nidn], [jk], [alamat], [email], [foto_dosen]) 
VALUES 
(1, N'Vit Zuraida, S.Kom.,M.Kom', N'199011248', N'Perempuan', N'Malang', N'VitZuraida@polinema.ac.id', N'https://drive.google.com/file/d/19v0Q2xsiF923bQV5tAaJw0sgLM1898sW/view?usp=sharing'),
(2, N'Rawansyah, Drs., M.Pd', N'198901101', N'Laki-laki', N'Malang', N'rawansyah@polinema.ac.id', N'https://drive.google.com/file/d/19v0Q2xsiF923bQV5tAaJw0sgLM1898sW/view?usp=sharing'),
(3, N'Widaningsih, S.Psi, SH., MH', N'1990151034', N'Perempuan', N'Malang', N'widaningsih@polinema.ac.id', N'https://drive.google.com/file/d/1B89_hAR6x8dsjPj3zc7diyftPdCyH_hI/view?usp=sharing'),
(4, N'Indra Dharma Wijaya, ST., M.T', N'1985011002', N'Laki-laki', N'Surabaya', N'IndraDharma@polinema.ac.id', N'https://drive.google.com/file/d/1ZIE8zPB-DRtVpM8a-eYPfcItJs3XXTj7/view?usp=sharing'),
(5, N'Cahya Rahmad, ST., M.Kom., Dr. Eng', N'1986010802', N'Laki-laki', N'Malang', N'CahyaRahmad@polinema.ac.id', N'https://drive.google.com/file/d/1n6azdCf2ZCXbs9yDsUBCiQ5XCIByc6yz/view?usp=sharing'),
(6, N'Dwi Puspitasari, S.Kom., M.Kom', N'1985017509', N'Perempuan', N'Malang', N'DwiPuspitasari@polinema.ac.id', N'https://drive.google.com/file/d/1LcL-GXgblp5ZLNG4eEQd8FGqbwRgf26g/view?usp=sharing'),
(7, N'Deddy Kusbianto PA, Ir., M.Mkom.', N'1990014998', N'Laki-laki', N'Surabaya', N'DeddyKusbianto@polinema.ac.id', N'https://drive.google.com/file/d/1oewaeZLJlcrssFs5racQ791lGm8ztnTk/view?usp=sharing'),
(8, N'Budi Harijanto, ST., M.Kom', N'1989015058', N'Laki-laki', N'Blitar', N'BudiHarijanto@polinema.ac.id', N'https://drive.google.com/file/d/1JfrkHScxm6nA0YN7P4Qp2fzxBtYuNjd0/view?usp=sharing'),
(9, N'Ariadi Retno Ririd, S.Kom., M.Kom.', N'1990022207', N'Perempuan', N'Pasuruan', N'AriadiRetno@polinema.ac.id', N'https://drive.google.com/file/d/1alX29Ft8CIJ9zocIHylBr3e8lcPhkHIx/view?usp=sharing'),
(10, N'Banni Satria Andoko, S.Kom., M.MSI., Dr. Eng.', N'1990021996', N'Laki-laki', N'Malang', N'BanniSatria@polinema.ac.id', N'https://drive.google.com/file/d/11ACKDU2tM9A40uafjwCbpDXKS89qPPB1/view?usp=sharing'),
(11, N'Meyti Eka Apriyani, S.T., M.T', N'1987060215', N'Perempuan', N'Tulungagung', N'MeytiEka@polinema.ac.id', N'https://drive.google.com/file/d/19v0Q2xsiF923bQV5tAaJw0sgLM1898sW/view?usp=sharing'),
(12, N'Ekojono, ST., M.Kom', N'1990015154', N'Laki-laki', N'Pasuruan', N'Ekojono@polinema.ac.id', N'https://drive.google.com/file/d/1U7xQBoBSB3UK6zhjieuwU_bggAJVP-pI/view?usp=sharing'),
(13, N'Dhebys Suryani, S.Kom., MT', N'1990015303', N'Perempuan', N'Surabaya', N'DhebysSuryani@polinema.ac.id', N'https://drive.google.com/file/d/17p3WFXX9bZlEdwWcoj7SkRbtl_ebKdSR/view?usp=sharing'),
(14, N'Ahmadi Yuli Ananta, S.T., M.M', N'1989015017', N'Laki-laki', N'Kediri', N'AhmadiYuli@polinema.ac.id', N'https://drive.google.com/file/d/1-atBBGKekcZ3o35CRPJXKRanOKPkUrZm/view?usp=sharing'),
(15, N'Dr. Ely Setyo Astuti, S.T., M.T', N'1990022225', N'Perempuan', N'Blitar', N'ElySetyo@polinema.ac.id', N'https://drive.google.com/file/d/1s_8VfKz3gc4L5hwX9K_A0H1csUMehu76/view?usp=sharing'),
(16, N'Vivi Nur Wijayanti, S.Kom., M.Kom', N'1990017134', N'Perempuan', N'Tulungagung', N'ViviNur@polinema.ac.id', N'https://drive.google.com/file/d/19v0Q2xsiF923bQV5tAaJw0sgLM1898sW/view?usp=sharing'),
(17, N'Imam Fahrur Rozi, ST., MT.', N'1990011008', N'Laki-laki', N'Pasuruan', N'ImamFahrur@polinema.ac.id', N'https://drive.google.com/file/d/10aHUXeVqFGVoLc55nh0yizJy_Z_PMSON/view?usp=sharing'),
(18, N'Hendra Pradipta, SE., MSc', N'1988112318', N'Laki-laki', N'Surabaya', N'HendraPradipta@polinema.ac.id', N'https://drive.google.com/file/d/1gd-EU2ok5s41weZS2rzkbdul42FkMG_I/view?usp=sharing'),
(19, N'Arief Prasetyo, S.Kom.', N'1990014709', N'Laki-laki', N'Malang', N'AriefPrasetyo@polinema.ac.id', N'https://drive.google.com/file/d/1Sj4RRk9ZTxJX5E7qr7Mp2lbnVvMUp-Oy/view?usp=sharing'),
(20, N'Annisa Puspa Kirana, S.Kom., M.Kom', N'1989016118', N'Perempuan', N'Pasuruan', N'AnnisaPuspa@polinema.ac.id', N'https://drive.google.com/file/d/1IkmaefkmWgZMgrcMjERM-Cty3HBM0oYn/view?usp=sharing'),
(21, N'Gunawan Budi Prasetyo, ST., MMT., Ph.D', N'1985025557', N'Laki-laki', N'Blitar', N'AnugrahNur@polinema.ac.id', N'https://drive.google.com/file/d/1Nq3ZaShLaep-MLEWKWs0eFnhaHpQ7mAz/view?usp=sharing'),
(22, N'Erfan Rohadi, ST., M.Eng., Ph.D', N'1990017204', N'Laki-laki', N'Kediri', N'ErfanRohadi@polinema.ac.id', N'https://drive.google.com/file/d/1HSozByetDtHqVSvhp0XcOvrWHFSOnFpp/view?usp=sharing'),
(23, N'Kadek Suranina Batubulan, S.Kom, MT', N'1970031831', N'Laki-laki', N'Pasuruan', N'KadekSuranina@polinema.ac.id', N'https://drive.google.com/file/d/19v0Q2xsiF923bQV5tAaJw0sgLM1898sW/view?usp=sharing'),
(24, N'Luqman Affandi, S.Kom., MMSI', N'1978091067', N'Laki-laki', N'Malang', N'LuqmanSuranina@polinema.ac.id', N'https://drive.google.com/file/d/10aHUXeVqFGVoLc55nh0yizJy_Z_PMSON/view?usp=sharing'),
(25, N'Mungki Astiningrum, ST., M.Kom.', N'1987081180', N'Perempuan', N'Malang', N'MungkiAstiningrum@polinema.ac.id', N'https://drive.google.com/file/d/1CQvtMP3cK2OUaAGgXOnxmQSvwPv82dt4/view?usp=sharing');
SET IDENTITY_INSERT [dbo].[dosen] OFF
GO

-- Data Dummy Tabel Mahasiswa
SET IDENTITY_INSERT [dbo].[mahasiswa] ON;
INSERT INTO [dbo].[mahasiswa] 
([id], [nama], [nim], [jk], [ttl], [alamat], [email], [prodi], [kelas], [dpa_id], [foto_mahasiswa]) 
VALUES 
(1, N'MUHAMMAD JAMALUDIN', N'2341760029', N'Laki-laki', N'Malang,12 November 2006', N'Malang', N'muh@gmail.com', N'TI', N'1A', 1, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(2, N'ADAM NUR ALIFI', N'2341760158', N'Laki-laki', N'Surabaya, 10 November 2006', N'Surabaya', N'adam11@gmail.com', N'TI', N'1A', 1, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(3, N'ADIT BAGUS SADEWA', N'2341760149', N'Laki-laki', N'Tuban, 6 Juni 2005', N'Tuban', N'ditadit@gmail.com', N'TI', N'1B', 2, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(4, N'VERA EFITA HUDI PUTRI', N'2341760047', N'Perempuan', N'Tuban, 22 September 2004', N'Tuban', N'veraEfit70@gmail.com', N'TI', N'1B', 2, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(5, N'ERIKA ATTHACARYA PUTRI CAHYANI', N'2341760158', N'Perempuan', N'Blitar, 14 November 2004', N'Blitar', N'hiwltrswalterss@gmail.com', N'TI', N'2A', 3, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(6, N'FASYA DITA NASAHAH', N'2341760022', N'Perempuan', N'Kediri, 29 Februari 2005', N'Kediri', N'fastfast@gmail.com', N'TI', N'2A', 3, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(7, N'ATHALLAH FAUZAN', N'2341760131', N'Laki-laki', N'Sidoarjo, 3 Januari 2004', N'Sidorajo', N'atalah@gmail.com', N'TI', N'2B', 4, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(8, N'AURELLA SEKAR ELLIYANSYAH', N'2341760039', N'Perempuan', N'Malang, 5 Mei 2005', N'Malang', N'aurel90@gmail.com', N'TI', N'2B', 4, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(9, N'BELQIS IVANA FIDELIA ARFANY', N'2341760075', N'Perempuan', N'Blitar, 10 Januari 2003', N'Blitar', N'belbel109@gmail.com', N'TI', N'3A', 5, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(10, N'DANICA NASYWA PUTRINIAR', N'2341760023', N'Perempuan', N'Malang, 3 Agustus 2003', N'Malang', N'danicaaa12@gmail.com', N'TI', N'3A', 5, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(11, N'DHEVINA AGUSTINA', N'2341760034', N'Perempuan', N'Kediri, 9 Juli 2004', N'Kediri', N'devinnaaa@gmail.com', N'TI', N'3B', 6, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(12, N'ERFIN JAUHARI DWI BRIAN', N'2341760006', N'Laki-laki', N'Malang, 10 Oktober 2003', N'Malang', N'erfinjauh@gmail.com', N'TI', N'3B', 6, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(13, N'FAIZA ANATHASYA EKA FALEN', N'2341760088', N'Perempuan', N'Malang, 9 Agustus 2003', N'Malang', N'faizz4@gmail.com', N'TI', N'4A', 7, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(14, N'GERLY VAEYUNGFAN', N'2341760035', N'Laki-laki', N'Malang, 7 Oktober 2002', N'Malang', N'gerlyGer@gmail.com', N'TI', N'4A', 7, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(15, N'INDI WARA RAMADHANI', N'2341760162', N'Perempuan', N'Malang, 22 Oktober 2002', N'Malang', N'indiwar@gmail.com', N'TI', N'4B', 8, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(16, N'JADEN NATHA KAUTSAR', N'2341760068', N'Laki-laki', N'Mojokerto, 30 April 2002', N'Mojokerto', N'jadennat@gmail.com', N'TI', N'4B', 8, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(17, N'JESSICA AMELIA', N'2341760099', N'Perempuan', N'Blitar, 17 Maret 2006', N'Blitar', N'jessiii@gmail.com', N'SIB', N'1A', 9, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(18, N'LOVELYTA SEKARAYU KRISDIYANTI', N'2341760153', N'Perempuan', N'Malang, 8 Juli 2005', N'Malang', N'loveltya88@gmail.com', N'SIB', N'1A', 9, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(19, N'MEISY NADIA NABBAN', N'2341760126', N'Perempuan', N'Batam, 7 Juni 2004', N'Batam', N'mesio09@gmail.com', N'SIB', N'1B', 10, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(20, N'MOCH HAIKAL PUTRA MUHAJIR', N'2341760072', N'Laki-laki', N'Malang, 8 Agustus 2005', N'Malang', N'mochmoch@gmail.com', N'SIB', N'1B', 10, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(21, N'MUHAMMAD BHIMANTARA WIRA...', N'2341760025', N'Laki-laki', N'Pasuruan, 19 September 2003', N'Pasuruan', N'bimantara70@gmail.com', N'SIB', N'2A', 11, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(22, N'MUHAMMAD KEMASYAHRU RAM...', N'2341760196', N'Laki-laki', N'Sidoarjo, 24 Januari 2004', N'Sidoarjo', N'muham@gmail.com', N'SIB', N'2A', 11, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(23, N'MUHAMMAD ROSYID', N'2341760015', N'Laki-laki', N'Malang, 20 Juli 2003', N'Malang', N'rosid88@gmail.com', N'SIB', N'2B', 12, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(24, N'NIMAS SEPTIANDINI', N'2341760087', N'Perempuan', N'Kediri, 21 Juni 2003', N'Kediri', N'nimas4@gmail.com', N'SIB', N'2B', 12, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(25, N'BAGUS SAPUTRA', N'2341760110', N'Laki-laki', N'Tulungagung, 11 November 2003', N'Tulungagung', N'bagusus@gmail.com', N'SIB', N'3A', 13, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(26, N'CITRA WULANDARI', N'2341760111', N'Perempuan', N'Magelang, 17 Agustus 2003', N'Magelang', N'citcitra44@gmail.com', N'SIB', N'3A', 13, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(27, N'DEWI PRATIWI', N'2341760112', N'Perempuan', N'Pontianak, 4 April 2003', N'Pontianak', N'dewiprat00@gmail.com', N'SIB', N'3B', 14, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(28, N'EKO SAPUTRO', N'2341760113', N'Laki-laki', N'Balikpapan, 15 Oktober 2002', N'Balikpapan', N'ekosap@gmail.com', N'SIB', N'3B', 14, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(29, N'FARHAN FIRMANSYAH', N'2341760114', N'Laki-laki', N'Madiun, 10 Desember 2002', N'Madiun', N'farhanooo@gmail.com', N'SIB', N'4A', 15, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(30, N'GITA MAHARANI', N'2341760115', N'Perempuan', N'Batu, 30 Februari 2002', N'Batu', N'gitagit43@gmail.com', N'SIB', N'4A', 15, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(31, N'HENDRA SETIAWAN', N'2341760116', N'Laki-laki', N'Tegal, 18 Juni 2003', N'Tegal', N'henhendr0@gmail.com', N'SIB', N'4B', 16, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(32, N'INDAH KUSUMA', N'2341760117', N'Perempuan', N'Surabaya, 20 Maret 2003', N'Surabaya', N'indahkus@gmail.com', N'SIB', N'4B', 16, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(33, N'JOKO WIDODO', N'2341760118', N'Laki-laki', N'Padang, 21 Agustus 2006', N'Padang', N'jokowidkk@gmail.com', N'PPLS', N'1A', 17, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(34, N'KARTINI AYU', N'2341760119', N'Perempuan', N'Medan, 22 April 2005', N'Medan', N'kariayu@gmail.com', N'PPLS', N'1A', 17, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(35, N'LESTARI CAHYA', N'2341760120', N'Perempuan', N'Malang, 3 Oktober 2006', N'Malang', N'lescah@gmail.com', N'PPLS', N'1B', 18, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(36, N'MAHARANI PUTRI', N'2341760121', N'Perempuan', N'Bandung, 17 September 2006', N'Bandung', N'maharan@gmail.com', N'PPLS', N'1B', 18, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(37, N'NIKO SATRIA', N'2341760122', N'Laki-laki', N'Jambi, 8 Agustus 2004', N'Jambi', N'niko100@gmail.com', N'PPLS', N'2A', 19, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(38, N'OKA WIRAWAN', N'2341760123', N'Laki-laki', N'Cimahi, 6 September 2004', N'Cimahi', N'okaki66@gmail.com', N'PPLS', N'2A', 19, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(39, N'PUTU WIJAYA', N'2341760124', N'Perempuan', N'Pasuruan, 13 Januari 2005', N'Pasuruan', N'pututuuuu@gmail.com', N'PPLS', N'2B', 20, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(40, N'QORY SANDIKA', N'2341760125', N'Laki-laki', N'Malang, 16 Juni 2003', N'Malang', N'qorya@gmail.com', N'PPLS', N'2B', 20, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(41, N'RIZKY RAMADHAN', N'2341760126', N'Laki-laki', N'Samarinda, 2 Februari 2004', N'Samarinda', N'riskyyy@gmail.com', N'PPLS', N'3A', 21, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(42, N'SARAH ANDINI', N'2341760127', N'Perempuan', N'Malang, 11 Agustus 2003', N'Malang', N'sarahhh50@gmail.com', N'PPLS', N'3A', 21, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(43, N'TAUFIK HIDAYAT', N'2341760128', N'Laki-laki', N'Malang, 5 Mei 2003', N'Malang', N'taufikk@gmail.com', N'PPLS', N'3B', 22, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(44, N'UMI LATIFAH', N'2341760129', N'Perempuan', N'Sidoarjo, 18 Juli 2004', N'Sidoarjo', N'umilat@gmail.com', N'PPLS', N'3B', 22, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(45, N'VINA ANGGRAENI', N'2341760130', N'Perempuan', N'Blitar, 11 November 2003', N'Blitar', N'vinaanggre@gmail.com', N'PPLS', N'4A', 23, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(46, N'WAHYU SUSANTO', N'2341760131', N'Laki-laki', N'Pasuruan, 13 Juli 2002', N'Pasuruan', N'wahyususan@gmail.com', N'PPLS', N'4A', 23, N'https://drive.google.com/file/d/1lbPSNH0OC9ufReBYkqJxRPAMKMS9_Kqc/view?usp=sharing'),
(47, N'XENA KARTIKA', N'2341760132', N'Perempuan', N'Lumajang, 16 Oktober 2002', N'Lumajang', N'xena100@gmail.com', N'PPLS', N'4B', 25, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing'),
(48, N'YOSHI MAHARDIKA', N'2341760133', N'Laki-laki', N'Kupang, 18 Januari 2003', N'Kupang', N'yosiiiii@gmail.com', N'PPLS', N'4B', 25, N'https://drive.google.com/file/d/1QqJ0lhUbAB5XCsvpEw3MaOvD_X3SSQZS/view?usp=sharing');
SET IDENTITY_INSERT [dbo].[mahasiswa] OFF
GO

-- Data Dummy Tabel Akun
SET IDENTITY_INSERT [dbo].[akun] ON 
INSERT INTO [dbo].[akun]
([id], [username], [password], [role], [mahasiswa_id], [dosen_id])
VALUES
(1, N'vitzuraida', N'$2y$10$3RuaKFrXxGHw.x68z6/0a.MzTDOZ6H0w1qtxKH9FQcmm62satjbXm', N'dosen', NULL, 1),
(2, N'rawansyah', N'$2y$10$x/fp32TdP14g9nGpNg6qYeWm6LIDaEXhzUK3d3E0BCnm4PUq5RhoS', N'dosen', NULL, 2),
(3, N'widaningsih', N'$2y$10$rDj0e3BUGY4evRDCRmmsFeEL/QesjZcsk9Fvjf0OnLWyeNSWDF9b6', N'dosen', NULL, 3),
(4, N'indradharma', N'$2y$10$fjm4WAfiLQ9jb6LEY9GzDe6p4JNcYxKAs29/S/FEWl8zN5kSpTQk6', N'dosen', NULL, 4),
(5, N'cahyarahmad', N'$2y$10$95ZxD4CofbDkY6sCLB.db.mra2srHD8uroxUOwyeNfVotrM5P1EFm', N'dosen', NULL, 5),
(6, N'dwipuspitasari', N'$2y$10$rGfO.UkZ3w3pxf5G6lGZF.CaHffb5Z7TodQAv3TtfGHOqwpugh6yK', N'dosen', NULL, 6),
(7, N'deddykusbianto', N'$2y$10$PMXOkH2wwk/Rj1v4QaFxs.mkzED37ecNYWjMFdnVHtFdMStKSSqum', N'dosen', NULL, 7),
(8, N'budiharijanto', N'$2y$10$XQrZr1nB.rv8ZiVQnab0V.xVhTzZcSOKlN8SCgOeSWAyHhQGa2SWy', N'dosen', NULL, 8),
(9, N'ariadiretno', N'$2y$10$6tVWsPm2a2DCt8XMcEhpJOcPKvv7bMItDttyHqs0EUM6VqxaPp/Vq', N'dosen', NULL, 9),
(10, N'bannisatria', N'$2y$10$LNxWa4c5jQXSjgK4SYe5R.C/5ymKfsHza8yDw/VqoFdiSQ8leDHp.', N'dosen', NULL, 10),
(11, N'meytieka', N'$2y$10$Abd6dDzCl0/fHyZO6pjFMOGpViDcZLhB6MQXTC5ATQiw.Jl6F2Xm6', N'dosen', NULL, 11),
(12, N'ekojono', N'$2y$10$5I9V3hrbHG.mz.WFQzpNweXRx4QFadPpjFZWKhZtdj1CkWYMAmqrm', N'dosen', NULL, 12),
(13, N'dhebyssuryani', N'$2y$10$L9ouHbXAurbag4fHrg3S0eVoC26VS1f2PM7UXQXJJ6i5yvRi.XWCG', N'dosen', NULL, 13),
(14, N'ahmadiyuli', N'$2y$10$focuarvz/MLhpLDVpntQYedDs22TgEtUko0b3jNqGyYWD8gktUSe2', N'dosen', NULL, 14),
(15, N'elysetyo', N'$2y$10$eWdlNFVJtW3jR4/iWy8wyeK/64RsljwMu0THB17QQWh9tw32bFTwm', N'dosen', NULL, 15),
(16, N'vivinur', N'$2y$10$uv2so1pTLW/04VxScJI0neEUkk3ETKKlRHV.ttZYB8p6mHBBAO5I2', N'dosen', NULL, 16),
(17, N'imamfahrur', N'$2y$10$pOyzKR89FjXc4xBumgRwb.hv0E7aCTlpLKDve1omycDkpSUlrOYfa', N'dosen', NULL, 17),
(18, N'hendrapradipta', N'$2y$10$eE3E4mN1FxAWwZL5E8/50eTzMELBWC1/XJky6lajyS6eZBDI86imu', N'dosen', NULL, 18),
(19, N'ariefprasetyo', N'$2y$10$3LvvWpLkTFabfGRRD6NGTe.tBMN401eNeLSYAqh5XQ6rWJ./1weu6', N'dosen', NULL, 19),
(20, N'annisapuspa', N'$2y$10$sPCUe1J7TuG6WC7XD5SMRuXhDXt8ZGHMOI7KYWD0RyOCbpMep0Gxm', N'dosen', NULL, 20),
(21, N'gunawanbudi', N'$2y$10$aR84i5baGGs./TG84BmXmelxZk3Q2GdYr9KaWlCHqRiRuddzTJHGS', N'dosen', NULL, 21),
(22, N'erfanrohadi', N'$2y$10$vefVQceCBdX9DnvM2k1K6e5V67FHjCYtoOQKWqFfHaFexeRbWbn7K', N'dosen', NULL, 22),
(23, N'kadeksuranina', N'$2y$10$DV61bBUTcnq7MMSsahmxnOvuac1HpxTa/fdlkqgKwvPq5U1VBy/am', N'dosen', NULL, 23),
(24, N'luqmanaffandi', N'$2y$10$cR49mwtVA04zC/mqrgZ91eAlUgs0fzT3625scXFnMJs6/Ug8TjCAK', N'dosen', NULL, 24),
(25, N'mungki', N'$2y$10$ON4jJkbGcab6HP.gQEpD8OxQg/wTcAoCySoLz8.BIYmsWqx2Q.pUa', N'admin', NULL, 25),
(26, N'jamal', N'$2y$10$VU.vkU1pxwX1VFXYAZAJ0enZ8h.hUt4yAS1TDZMtsDAItBy1arH66', N'mahasiswa', 1, NULL),
(27, N'adam', N'$2y$10$j0O2f4Mu5BejFODdE1qNEubuElzvIF.wHLeYV1VovFrbhi5e2bte2', N'mahasiswa', 2, NULL),
(28, N'adit', N'$2y$10$536OhIyksz0TiglF12/B6uJES2li84hvWioVNDbjyoVyWYFjl2vvW', N'mahasiswa', 3, NULL),
(29, N'vera', N'$2y$10$AW7Rc/Tt/vKVDlZdKEcnceukEwDVsr7D1yHET4HLNRIEYV6PY6eCK', N'mahasiswa', 4, NULL),
(30, N'erika', N'$2y$10$6qu5rTYB.HAbweXIqIU9Auw.QSnailnICxrdzH6tz23HwbiyGe4jy', N'mahasiswa', 5, NULL),
(31, N'fasya', N'$2y$10$4IToX3QOw7M/UwxHOAVAg.BX7OcDBiVG2icPIILSZKczcPzUfYUJS', N'mahasiswa', 6, NULL),
(32, N'athallah', N'$2y$10$BNliZ1IDssr3LYpxVLjkse.0kIuI5wIel8FuHEAmfZQn/zlYI8n6G', N'mahasiswa', 7, NULL),
(33, N'aurella', N'$2y$10$FSpvBu2/r1wSsIzXJxTdXu4WNaXKnebj/BwXKUAYLAGZxu2rdz4GS', N'mahasiswa', 8, NULL),
(34, N'belqis', N'$2y$10$0qFgnxqYmjrOFoVMwlovXetbeRle4FX01CLwc26ijBj7l0DYekeU2', N'mahasiswa', 9, NULL),
(35, N'danica', N'$2y$10$/5sM/fAL3Scgf/BQHt/5Jep3Qo4k/qITqsSiSGjzJUEXmRiBmD7bC', N'mahasiswa', 10, NULL),
(36, N'dhevina', N'$2y$10$jVV7TQnv1k/nszKtxVueJekl10lfF8/oIog6sxfLuG9XWtomn49ZC', N'mahasiswa', 11, NULL),
(37, N'erfin', N'$2y$10$BjZNDEOBYV6yhKAnrYSEvuszfKF/PQJycDQMuvZuDXdObadPZ1dji', N'mahasiswa', 12, NULL),
(38, N'faiza', N'$2y$10$8mI1cnozlyS4oDjQOpFgtO0Be00LLwgkF/T8yo3oOx0gkeSc9VW.i', N'mahasiswa', 13, NULL),
(39, N'gerly', N'$2y$10$wpeLC./I0vBHEu0xpsf1e.UT8jR4ejfZ0SC4Wfac63ekDTci0Bdyy', N'mahasiswa', 14, NULL),
(40, N'indi', N'$2y$10$fTVnHxaQ/yr6jvBLYVgmqOMBsCOpYnVUgg9uzu9JW55CAuVul7vOy', N'mahasiswa', 15, NULL),
(41, N'jaden', N'$2y$10$OpnyKL4gA00i7GhjI08TOOwyFMhYxFeWiEC3NpnplK.gQtL4rgXYS', N'mahasiswa', 16, NULL),
(42, N'jessica', N'$2y$10$H/jQ58.4AhZTV9ycGfSZjex/KzfWyLxh.ytJVUSizNbknRLumdAvG', N'mahasiswa', 17, NULL),
(43, N'lovelyta', N'$2y$10$TJokibARh2leeqFCvkvb2OT.kiAraZn.5ruJIh8iFFBVmsc7DZR3q', N'mahasiswa', 18, NULL),
(44, N'meisy', N'$2y$10$c9mwSbyqkaZ9f16IwwSxm./oZqFLqoLMhbknuwvo6iN.wCwXvTh4e', N'mahasiswa', 19, NULL),
(45, N'haikal', N'$2y$10$rVqUladMnH6rBkFlDyyORuwRAUEFE7DeBtlYDU6xoOtInjJOaHKXS', N'mahasiswa', 20, NULL),
(46, N'bhimantara', N'$2y$10$ihGBntRqv.pCzatA87GHyuUWztLEGcS6KbECx3aIaQMs.Z7nQiObe', N'mahasiswa', 21, NULL),
(47, N'kemal', N'$2y$10$auBSZ4kY1wUQyzHNwYlpbe16odnNwwWTJe2fc/873jA29Vm52A6J2', N'mahasiswa', 22, NULL),
(48, N'rosyid', N'$2y$10$LNFNEIPZLqOUuoaO4allAuA7qBdKqJOELkGK3rUQHOZTztljr4o6a', N'mahasiswa', 23, NULL),
(49, N'nimas', N'$2y$10$vSyy769YNAvO98mXqL0FhelNgGqf9w4h.tprzL1ZMRZUpqw8RXj.i', N'mahasiswa', 24, NULL),
(50, N'bagus', N'$2y$10$Q3/a4Ab25poZNwpcCKa10ul.HSjKipo/qQelU4Jd/AFmGp4CjM2be', N'mahasiswa', 25, NULL),
(51, N'citra', N'$2y$10$ubHaGv6u1gSCBPjBPyNZFuT2TjVPFH9x274TlgvqCKzAjHIIJXQlq', N'mahasiswa', 26, NULL),
(52, N'dewi', N'$2y$10$56WabX7wqhPjuyq2eG6AIO7ZQXkjuwmzBk4wipt1Q4OhcKv4oXb0W', N'mahasiswa', 27, NULL),
(53, N'eko', N'$2y$10$.aasJAnJhowBgC77qda4QObv1g.kijWPbjUsOzhLJXhpsCWm5waT6', N'mahasiswa', 28, NULL),
(54, N'farhan', N'$2y$10$pNIpAtRuldVKA0OWMcXk/euMqXMgC6CGGlVOmF5TKT0c6agsWu79.', N'mahasiswa', 29, NULL),
(55, N'gita', N'$2y$10$uelEARSUYs3/yCSgmj7MBO6W4vlje60Zzoql1nR2Rx9/sgAPMXVYu', N'mahasiswa', 30, NULL),
(56, N'hendra', N'$2y$10$gBC7L8K9Ga4I5aIp9sJF3.MtyfiTzoDRozF08beIK7MSMCeg7sGW2', N'mahasiswa', 31, NULL),
(57, N'indah', N'$2y$10$t1Bn9j8GaVJlBwvTTOGizeRfTomoS67pfHCV36UhvjMcLVmW1G3xe', N'mahasiswa', 32, NULL),
(58, N'joko', N'$2y$10$QZ9hDX9bQ72BqpgrCv3cV.6HsggEZmLQyQ2ID2FM8TqKVQU63VzYK', N'mahasiswa', 33, NULL),
(59, N'kartini', N'$2y$10$UopX5YLBRbVo29RlpeQFEeWgkhiC7GDoNMKlbyDEDSjVfkHOOZIs6', N'mahasiswa', 34, NULL),
(60, N'lestari', N'$2y$10$q1qRrR1OmaE818dfmPzAr.DOCdydhZ50ABFjqLMxWk0LnOM9Isel2', N'mahasiswa', 35, NULL),
(61, N'maharani', N'$2y$10$4uEXCDsBYqsFXVYDP9iKp.M3yQfJK5BQGDQd4z312tgHNqjq5xuCC', N'mahasiswa', 36, NULL),
(62, N'niko', N'$2y$10$ALh/bPaTTPGN1I3put9rG.3aBhtpK2xDKbm5FjAX7vm1qg540p.BO', N'mahasiswa', 37, NULL),
(63, N'oka', N'$2y$10$YCSWSIPjxeJs5xfYgISUleZtndD6mvl2oRsQiloNZ2yNIYijbEpUS', N'mahasiswa', 38, NULL),
(64, N'putu', N'$2y$10$lgd8dbwYrzS2uDQeOgXJBu0cM94rOH06V4ryCsC6s82O.Yk4RxDCq', N'mahasiswa', 39, NULL),
(65, N'qory', N'$2y$10$g8jK69Di.SnlvKfYAtfvoe1hKgUINRRo5F/cHIgyUAyySrPgwtZKW', N'mahasiswa', 40, NULL),
(66, N'rizky', N'$2y$10$ADjK8R56wtdVfcvTDT0j3uyFjPn9F2B1Yd.3DhX6Y/T7EqI6tQXDa', N'mahasiswa', 41, NULL),
(67, N'sarah', N'$2y$10$KH2py3.BGPnc14RnnZQK9eCeQoESvF0vRXkN9DacIMR1iEtpyDGDy', N'mahasiswa', 42, NULL),
(68, N'taufik', N'$2y$10$.gn35TrlPcDJeLuw9C80.OTvrblluC3KvKeZCtDFRvFcLI8peouM6', N'mahasiswa', 43, NULL),
(69, N'umi', N'$2y$10$3ht7vyi6kTtkF2V75wQ/suEt0xOj4tPvoJXuCX9q97958P.znxwXO', N'mahasiswa', 44, NULL),
(70, N'vina', N'$2y$10$FftFs4OiQ2UP3YZgT2VXC.WkMXqOh5xfhYSC0XTwIONaQlj8yjxky', N'mahasiswa', 45, NULL),
(71, N'wahyu', N'$2y$10$cTpZgyB/oPA3VvTKT2iUFOteIqwgAhwllfSNIzMEOJOvBQVR.q.ji', N'mahasiswa', 46, NULL),
(72, N'xena', N'$2y$10$htNkqxPsZRuTVOoMTZ1eIOv/LdVP9GgwFNbXS7AqeKEyO1vIvQQwy', N'mahasiswa', 47, NULL),
(73, N'yoshi', N'$2y$10$ft9jjbfzZS78Ih3Q5yJz1OyRChTtB/scfv0hFHU6aUxadlokAMaLG', N'mahasiswa', 48, NULL),
(74, N'gerger', N'$2y$10$gwGIYMgqTFLeQLT12i8/SuUYDloRqhsnDeSuRoWNdyFwQK0RqEOAy', N'mahasiswa', 14, NULL);
SET IDENTITY_INSERT [dbo].[akun] OFF
GO

-- Data Dummy Tabel Laporan
SET IDENTITY_INSERT [dbo].[laporan] ON 
INSERT INTO [dbo].[laporan]
([id], [dosen_id], [mhs_id], [tgl_laporan], [pelanggaran_id], [status_verivikasi], [tgl_veriifikasi], [dpa_id])
VALUES
(1, 2, 14, CAST(N'2024-11-30' AS Date), 3, 1, CAST(N'2024-11-30' AS Date), 7),
(2, 10, 5, CAST(N'2024-12-01' AS Date), 7, 1, CAST(N'2024-12-03' AS Date), 3),
(5, 5, 1, CAST(N'2024-11-15' AS Date), 6, 0, NULL, 1),
(7, 12, 9, CAST(N'2024-10-20' AS Date), 13, 0, NULL, 5),
(8, 4, 6, CAST(N'2024-11-25' AS Date), 29, 0, NULL, 3),
(9, 18, 24, CAST(N'2024-11-10' AS Date), 21, 1, CAST(N'2024-11-15' AS Date), 12),
(10, 20, 8, CAST(N'2024-12-02' AS Date), 20, 1, CAST(N'2024-12-05' AS Date), 4),
(12, 17, 46, CAST(N'2024-11-29' AS Date), 15, 1, CAST(N'2024-12-02' AS Date), 23),
(15, 24, 33, CAST(N'2024-11-08' AS Date), 24, 0, NULL, 17),
(16, 21, 22, CAST(N'2024-12-19' AS Date), 19, 0, NULL, 11);
SET IDENTITY_INSERT [dbo].[laporan] OFF
GO