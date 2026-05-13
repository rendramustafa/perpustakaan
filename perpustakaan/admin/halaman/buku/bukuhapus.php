<?php

include "../../../koneksi.php";

$idbuku = $_GET['idbuku'];

$sql = "DELETE from tbl_buku WHERE idbuku = $idbuku";
$query = mysqli_query($conn, $sql);

 if ($query) {
        echo "<script>alert('Data Berhasil di Hapus');</script>";
        header("Location: ../../index.php?page=buku");
    } else {
        echo "<script>alert('Data Gagal di Hapus');</script>";
        header("Location: ../../index.php?page=bukutambah");
    }
    
?>