<?php 
// isi nama host, username mysql, dan password mysql anda
$conn = mysqli_connect("localhost","root","","latihan1");

//menambah data baru
if(isset($_POST['addnewdata'])){
    $nim = $_POST['nim'];
    $nama = $_POST['nama'];
    $prodi = $_POST['prodi'];
    $fakultas = $_POST['fakultas'];
    $predikat = $_POST['predikat'];
    $kompetisi = $_POST['kompetisi'];
    $bidang = $_POST['bidang'];
    $jenis = $_POST['jenis'];
    $sertifikat = $_POST['sertifikat'];
    $dokumentasi = $_POST['dokumentasi'];
    $surattugas = $_POST['surattugas'];
    $lomba = $_POST['lomba'];

    $addtotablle = mysqli_query($conn,"insert into mahasiswa (nim,nama,prodi,fakultas,predikat,kompetisi,bidang,jenis,sertifikat,dokumentasi,surattugas,lomba) values('$nim','$nama','$prodi','$fakultas','$predikat','$kompetisi','$bidang','$jenis','$sertifikat','$dokumentasi','$surattugas','$lomba')");

    if ($addtotable){
        header("Location:index.php");
    }
    else {
        echo 'Gagal';
        header("Location:index.php");

    }

}

?>