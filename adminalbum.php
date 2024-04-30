<?php
session_start();
if (!isset($_SESSION['userid'])) {
    header("location:login.php");
    exit;
}

// CSRF token generate
if (empty($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}

include "koneksi.php";

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'])) {
        die('CSRF token validation failed');
    }

    $namaalbum = mysqli_real_escape_string($conn, trim($_POST['namaalbum']));
    $deskripsi = mysqli_real_escape_string($conn, trim($_POST['deskripsi']));

    if ($namaalbum !== '' && $deskripsi !== '') {
        $sql = "INSERT INTO album (userid, namaalbum, deskripsi) VALUES ('{$_SESSION['userid']}', '{$namaalbum}', '{$deskripsi}')";
        if (!mysqli_query($conn, $sql)) {
            die('Error: ' . mysqli_error($conn));
        }
    } else {
        echo "<script>alert('Semua kolom harus diisi.');</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Album</title>
    <link rel="stylesheet" href="./css/all.min.css">
    <link rel="stylesheet" href="./css/fontawesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="font-sans bg-gray-100">
<div class="bg-white p-4">
    <?php include 'adminnavbar.php'; ?>
    <h1 class="text-3xl text-center text-gray-800">Halaman Album</h1>
    <p class="text-center mt-2">Selamat datang <b><?= htmlspecialchars($_SESSION['namalengkap']) ?></b></p>
</div>

<div class="container mx-auto mt-8 p-4">
    <button id="btnTambahAlbum" class="bg-blue-500 text-white px-4 py-2 rounded mb-4">Tambah Album</button>
    <form id="formTambahAlbum" action="adminalbum.php" method="post" class="mb-8" style="display: none;">
        <input type="hidden" name="csrf_token" value="<?= $_SESSION['csrf_token'] ?>">
        <table class="w-full">
            <tr>
                <td class="py-2">Nama Album</td>
                <td><input type="text" name="namaalbum" id="namaalbum" class="border p-2 rounded"></td>
            </tr>
            <tr>
                <td class="py-2">Deskripsi</td>
                <td><input type="text" name="deskripsi" id="deskripsi" class="border p-2 rounded"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Tambah" class="bg-blue-500 text-white px-4 py-2 rounded"></td>
            </tr>
        </table>
    </form>

    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
        <?php
        $sql = "SELECT * FROM album WHERE userid='{$_SESSION['userid']}'";
        $result = mysqli_query($conn, $sql);
        if (!$result) {
            die('Error: ' . mysqli_error($conn));
        }
        while ($data = mysqli_fetch_array($result)) {
            ?>
            <div class="bg-white border rounded-md overflow-hidden shadow-md transform transition-transform ease-in-out duration-300 hover:scale-105">
                <img src="path/to/image.jpg" alt="<?= htmlspecialchars($data['namaalbum']) ?>" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h3 class="text-lg font-semibold"><?= htmlspecialchars($data['namaalbum']) ?></h3>
                    <p><?= htmlspecialchars($data['deskripsi']) ?></p>
                </div>
            </div>
            <?php
        }
        ?>
    </div>
</div>

<script>
    document.getElementById('btnTambahAlbum').addEventListener('click', function() {
        var form = document.getElementById('formTambahAlbum');
        form.style.display = form.style.display === 'none' ? 'block' : 'none';
    });
</script>

</body>
</html>