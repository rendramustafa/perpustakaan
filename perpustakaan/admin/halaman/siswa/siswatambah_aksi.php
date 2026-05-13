<?php
include("../../../koneksi.php");

if(isset($_POST['tomboltambah'])) {
    $NIS = $_POST['nis'];
    $Nama = $_POST['namasiswa'];
    $Kelas = $_POST['kelas'];
    $Alamat = $_POST['alamat'];
    $hp = $_POST['hp'];

    $sql = "INSERT INTO tbl_siswa (nis, namasiswa, kelas, alamat, hp) VALUES ('$NIS', '$Nama', '$Kelas', '$Alamat', '$hp')";
    $query = mysqli_query($conn, $sql);

    if($query) {
        header('Location: ../../index.php?page=siswa');
    } else {
        header('Location: ../../index.php?page=siswatambah');
    }
} else {
    die("Akses dilarang...");
}

?>