<?php

include "../../../koneksi.php";

$idsiswa = $_GET['nis'];

$sql = "DELETE from tbl_siswa WHERE idsiswa = $idsiswa";
$query = mysqli_query($conn, $sql);

 if ($query) {
        echo "<script>alert('Data Berhasil di Hapus');</script>";
        header("Location: ../../index.php?page=siswa");
    } else {
        echo "<script>alert('Data Gagal di Hapus');</script>";
        header("Location: ../../index.php?page=siswa");
    }
    
?>