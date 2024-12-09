<?php
// Memulai sesi di header.php sehingga hanya dimulai sekali
if (session_status() == PHP_SESSION_NONE) {
    session_start();
    $_SESSION['role'] = 'admin';
}

// Cek apakah pengguna sudah login dan memiliki role 'admin'
if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'admin') {
    header('Location: ../../login.php'); // Arahkan ke halaman login jika bukan admin
    exit;
}

// Menambahkan fitur logout
if (isset($_GET['logout'])) {
    session_destroy();  // Hapus sesi
    header('Location:../../login.php'); // Arahkan ke halaman login setelah logout
    exit;
}

// Koneksi ke database
include('../../controller/lib/Connection.php');

$connection = new Connection();
$conn = $connection->connect();

// Memulai output buffering
ob_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TATIB Dashboard</title>
    <link rel="stylesheet" href="../../view/style/Admincss.css">
    <style>
        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            box-sizing: border-box;
        }
        label {
            color: #004080;
            font-weight: bold;
        }
        input, select, button {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            margin-bottom: 16px;
            border: 1px solid #cce7ff;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            background-color: #004080;
            color: #ffffff;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }
        button:hover {
            background-color: #003366;
        }
        form {
            margin: 0; /* Mengatur margin form menjadi 0 */
            width: 100%; /* Pastikan form memanfaatkan seluruh lebar */
            box-sizing: border-box;
        }
</style>
</head>

<body>
    <!-- Sidebar -->
    <?php include('../navbar.php');?>

    <div class="container">

        <!-- Sidebar -->
        <?php include('sidebar_admin.php');?>

        <!-- Main Content -->
        <div class="main-content">
        <?php include('header_admin.php');

            if (isset($_GET['page'])) {
                $page = $_GET['page'];
                switch ($page) {
                    case 'daftar_akun':
                        include('daftar_akun.php'); // Sertakan file daftar_akun.php
                        break;

                    case 'pelanggaran':
                        include('data_pelanggaran.php');
                        break;

                    case 'data_mahasiswa':
                        // Query untuk mendapatkan data mahasiswa
                        $query = "SELECT 
                        m.nama, 
                        m.nim, 
                        m.jk, 
                        m.prodi, 
                        m.kelas,
                        d.nama [Nama DPA],
                        m.foto_mahasiswa
                        FROM 
                        mahasiswa m
                        INNER JOIN 
                        akun a 
                        ON 
                        a.mahasiswa_id = m.id
                        INNER JOIN
                        dosen d
                        ON
                        m.dpa_id = d.id";
                        $stmt = sqlsrv_query($conn, $query);

                        // Menyimpan hasil query dalam array
                        $mahasiswa = [];
                        while ($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
                        $mahasiswa[] = $row; // Menambahkan setiap data ke array $mahasiswa
                        }

                        include('data_mahasiswa.php');
                        sqlsrv_free_stmt($stmt);
                        break;
                        case 'edit_akun':
                            include('edit_akun.php');
                            break;
                        case 'hapus_akun':
                            include('hapus_akun.php');
                            break;

                        case 'tambah_akun':
                            include('register.php');
                            break;

                        case 'tambah_mahasiswa':
                            // Query untuk mengambil data unik dari kolom prodi dan kelas
                            $query_prodi = "SELECT DISTINCT prodi FROM mahasiswa";
                            $query_kelas = "SELECT DISTINCT kelas FROM mahasiswa";

                            $result_prodi = sqlsrv_query($conn, $query_prodi);
                            $result_kelas = sqlsrv_query($conn, $query_kelas);

                            // Menyimpan data ke array
                            $prodi_options = [];
                            $kelas_options = [];

                            while ($row = sqlsrv_fetch_array($result_prodi, SQLSRV_FETCH_ASSOC)) {
                                $prodi_options[] = $row['prodi'];
                            }
                            while ($row = sqlsrv_fetch_array($result_kelas, SQLSRV_FETCH_ASSOC)) {
                                $kelas_options[] = $row['kelas'];
                            }

                            // Proses tambah mahasiswa
                            if (isset($_POST['add-mhs'])) {

                                $nama_mhs = $_POST['nama_mhs'];
                                $nim = $_POST['nim'];
                                $jk_mhs = $_POST['jk_mhs'];
                                $ttl_mhs = $_POST['ttl_mhs'];
                                $alamat_mhs = $_POST['alamat_mhs'];
                                $email_mhs = $_POST['email_mhs'];
                                $prodi_mhs = $_POST['prodi_mhs'];
                                $kelas_mhs = $_POST['kelas_mhs'];
                                $dpa_id_mhs = $_POST['dpa_id_mhs'];

                                // Proses upload foto
                                $foto_mahasiswa = null;
                                if (!empty($_FILES['foto_mahasiswa_mhs']['name'])) {
                                    $targetDir = "../../view/img/";
                                    $foto_mahasiswa_mhs = $targetDir . basename($_FILES['foto_mahasiswa_mhs']['name']);
                                    move_uploaded_file($_FILES['foto_mahasiswa']['tmp_name'], $foto_mahasiswa_mhs);
                                }

                                // Simpan data ke tabel mahasiswa
                                $query_mhs = "INSERT INTO mahasiswa (nama_mhs, nim, jk_mhs, ttl_mhs, alamat_mhs, email_mhs, prodi_mhs, kelas_mhs, dpa_id_mhs, foto_mahasiswa_mhs) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                                $params_mhs = array($nama_mhs, $nim, $jk_mhs, $ttl_mhs, $alamat_mhs, $email_mhs, $prodi_mhs, $kelas_mhs, $dpa_id_mhs, $foto_mahasiswa_mhs);
                                $stmt_mhs = sqlsrv_query($conn, $query_mhs, $params_mhs);

                                if ($stmt_mhs === false) {
                                    echo "Error: " . sqlsrv_errors();
                                } else {
                                    header('Location: admin_dashboard.php?page=daftar_akun');  // Redirect ke halaman sukses
                                    exit;  // Pastikan tidak ada kode lebih lanjut yang dijalankan
                                }
                            }
                            ?>
                            <!DOCTYPE html>
                            <html lang="id">
                            <head>
                            </head>
                            <body>
                                <div style="background-color: #ffffff; padding: 20px; padding-bottom: 20px; margin: 0; border-radius: 8px; width: 100%; height: 100%; max-height: 460px; overflow-y: auto; box-sizing: border-box;">
                                    <h2 style="text-align: center; color: #004080; margin-top: 5px;">Tambah Data Mahasiswa</h2>
                                    <form action="admin_dashboard.php?page=data_mahasiswa" method="POST" enctype="multipart/form-data">
                                        <label for="nama_mhs">Nama:</label>
                                        <input type="text" name="nama_mhs" id="nama_mhs" required><br><br>

                                        <label for="nim">NIM:</label>
                                        <input type="text" name="nim" id="nim" required><br><br>

                                        <label for="jk_mhs">Jenis Kelamin:</label>
                                        <select name="jk_mhs" id="jk_mhs" required>
                                            <option value="Laki-Laki">Laki-Laki</option>
                                            <option value="Perempuan">Perempuan</option>
                                        </select><br><br>

                                        <label for="ttl_mhs">Tempat, Tanggal Lahir:</label>
                                        <input type="text" name="ttl_mhs" id="ttl_mhs" required><br><br>

                                        <label for="alamat_mhs">Alamat:</label>
                                        <input type="text" name="alamat_mhs" id="alamat_mhs" required><br><br>

                                        <label for="email_mhs">Email:</label>
                                        <input type="text" name="email_mhs" id="email_mhs" required><br><br>

                                        <label for="prodi_mhs">Prodi:</label>
                                        <select name="prodi_mhs" id="prodi_mhs" required>
                                            <option value="" disabled selected>Pilih Prodi</option>
                                            <?php foreach ($prodi_options as $prodi_mhs): ?>
                                                <option value="<?= htmlspecialchars($prodi_mhs) ?>"><?= htmlspecialchars($prodi_mhs) ?></option>
                                            <?php endforeach; ?>
                                        </select><br><br>

                                        <label for="kelas_mhs">Kelas:</label>
                                        <select name="kelas_mhs" id="kelas_mhs" required>
                                            <option value="" disabled selected>Pilih Kelas</option>
                                            <?php foreach ($kelas_options as $kelas_mhs): ?>
                                                <option value="<?= htmlspecialchars($kelas_mhs) ?>"><?= htmlspecialchars($kelas_mhs) ?></option>
                                            <?php endforeach; ?>
                                        </select><br><br>

                                        <label for="dpa_id_mhs">DPA ID:</label>
                                        <input type="number" name="dpa_id_mhs" id="dpa_id_mhs" required><br><br>

                                        <label for="foto_mahasiswa_mhs">Foto Mahasiswa:</label>
                                        <input type="file" name="foto_mahasiswa_mhs" id="foto_mahasiswa_mhs" accept="image/*"><br><br>

                                        <button type="submit" name="add-mhs" style="background-color: #004080; color: white; padding: 10px 20px; border: none; border-radius: 5px;">Tambah</button>
                                    </form>
                                </div>
                            </body>
                            </html>
                            <?php
                            break;
                        
                    case 'data_dosen':
                        // Query untuk mendapatkan data dosen
                        $query = "SELECT 
                        d.nama, 
                        d.nidn, 
                        d.jk, 
                        d.alamat, 
                        d.email,
                        d.foto_dosen
                        FROM 
                        dosen d
                        INNER JOIN 
                        akun a 
                        ON 
                        a.dosen_id = d.id";
                        $stmt = sqlsrv_query($conn, $query);

                        // Menyimpan hasil query dalam array
                        $dosen = [];
                        while ($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
                        $dosen[] = $row; // Menambahkan setiap data ke array $dosen
                        }

                        include('data_dosen.php');
                        sqlsrv_free_stmt($stmt);
                        break;

                        if (!empty($query_foto)) {
                            $params = array($username);
                            $stmt_foto = sqlsrv_query($conn, $query_foto, $params);
                        
                            if ($stmt_foto === false) {
                                die(print_r(sqlsrv_errors(), true)); // Debugging
                            }
                        }
                        case 'dashboard':
                            ?>
                            <div style="background-color: #ffffff; padding: 20px; padding-bottom: 30px; margin: 0; border-radius: 8px; width: calc(100% - 0px); height: 100%; max-height: 460px; overflow-y: auto; box-sizing: border-box;">
                            <?php
                            if (isset($_SESSION['username']) && isset($_SESSION['role'])) {
                                $username = $_SESSION['username'];
                                $role = $_SESSION['role'];
                        
                                // Tentukan query berdasarkan role
                                $query_foto = "";
                                if ($role == 'dosen' || $role == 'admin') {
                                    $query_foto = "SELECT * FROM dosen WHERE id = (SELECT dosen_id FROM akun WHERE username = ?)";
                                } elseif ($role == 'mahasiswa') {
                                    $query_foto = "SELECT * FROM mahasiswa WHERE id = (SELECT mahasiswa_id FROM akun WHERE username = ?)";
                                }
                        
                                // Eksekusi query hanya jika valid
                                if (!empty($query_foto)) {
                                    $params = array($username);
                                    $stmt_foto = sqlsrv_query($conn, $query_foto, $params);
                        
                                    // Validasi hasil query
                                    if ($stmt_foto === false) {
                                        die(print_r(sqlsrv_errors(), true));
                                    }
                        
                                    // Ambil data jika query berhasil
                                    if (sqlsrv_has_rows($stmt_foto)) {
                                        $foto = sqlsrv_fetch_array($stmt_foto, SQLSRV_FETCH_ASSOC);
                        
                                        // Tampilkan data
                                        echo '<h2>Informasi ' . ucfirst($role) . '</h2>';
                                        echo '<img src="' . htmlspecialchars($foto['foto_dosen'] ?? $foto['foto_mahasiswa'] ?? 'default.png') . '" alt="Foto ' . ucfirst($role) . '" style="width:100px; height:auto;">';

                            // Tampilkan biodata berdasarkan role
                            echo '<table>';
                            if ($role == 'dosen') {
                                echo '<br><tr><td>Nama</td><td>: ' . htmlspecialchars($foto['nama']) . '</td></tr>';
                                echo '<tr><td>NIDN</td><td>: ' . htmlspecialchars($foto['nidn']) . '</td></tr>';
                                echo '<tr><td>Jenis Kelamin</td><td>: ' . htmlspecialchars($foto['jkn']) . '</td></tr>';
                                echo '<tr><td>Alamat</td><td>: ' . htmlspecialchars($foto['alamat']) . '</td></tr>';
                                echo '<tr><td>Email</td><td>: ' . htmlspecialchars($foto['email']) . '</td></tr>';
                            } elseif ($role == 'admin') {
                                echo '<tr><td>Nama</td><td>: ' . htmlspecialchars($foto['nama']) . '</td></tr>';
                                echo '<tr><td>NIDN</td><td>: ' . htmlspecialchars($foto['nidn']) . '</td></tr>';
                                echo '<tr><td>Jenis Kelamin</td><td>: ' . htmlspecialchars($foto['jk']) . '</td></tr>';
                                echo '<tr><td>Alamat</td><td>: ' . htmlspecialchars($foto['alamat']) . '</td></tr>';
                                echo '<tr><td>Email</td><td>: ' . htmlspecialchars($foto['email']) . '</td></tr>';
                            }
                        }
                            echo '</table></div>';

                        } else {
                            echo '<p>Data tidak ditemukan.</p>';
                        }
                    } else {
                        echo '<p>Query tidak valid.</p>';
                    }
                    
                        break;

                    default:
                        echo '<h2>Halaman tidak ditemukan</h2>';
                        break;
                }
            } else {

            }
            
            ?>
        </div>
    </div>
</body>

</html>

<?php
// Mengakhiri output buffering dan mengirimkan output ke browser
ob_end_flush();
?>