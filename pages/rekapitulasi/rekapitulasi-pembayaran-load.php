<?php
require "../../connection/conn.php";

if(isset($_POST["action"])){
    $action = $_POST["action"];

    switch($action){

        case "loadDataSiswa" : 
            try {
                
                $query = "select id,nis_siswa,nisn_siswa,nama_siswa,kls_siswa,prod_siswa,tp_siswa from tb_siswa";
                $exec = mysqli_query($koneksi, $query);
                $datasiswa = [];
                while($row = mysqli_fetch_assoc($exec)){
                    $datasiswa[] = $row;
                }


                $queryTp = "select distinct tp_siswa from tb_siswa order by tp_siswa asc";
                $execTp = mysqli_query($koneksi, $queryTp);
                $datatp = [];
                while($row = mysqli_fetch_assoc($execTp)){
                    $datatp[] = $row;
                }

                echo json_encode([
                    "status" => "success",
                    "info" => "success get data siswa",
                    "data" => $datasiswa,
                    "datatp" => $datatp
                ]);

            } catch (\Throwable $th) {
                echo json_encode([
                    "status" => "error",
                    "info" => $th->getMessage()
                ]);
            }
        break;


        case "loadDetailPembayaran" :
            try {
                // set variable config
                $nissiswa = $_POST["nissiswa"];
                $tpsiswa = $_POST["tpsiswa"];
                $prodi = $_POST["prodisiswa"];

                // get detail data siswa
                $getDetailSiswa = "select * from tb_siswa where nis_siswa = '$nissiswa' and tp_siswa = '$tpsiswa' and prod_siswa = '$prodi'";
                $execSiswa = mysqli_query($koneksi, $getDetailSiswa);
                $dtsiswa = mysqli_fetch_assoc($execSiswa);

                // config params to get data pembayaran
                $kelas = $dtsiswa["kls_siswa"];
                $tp_first = explode("/", $dtsiswa["tp_siswa"])[0];
                $tp_second = explode("/", $dtsiswa["tp_siswa"])[1];

                $count = 0;
                if($kelas == "X"){
                    $count = 1;
                }elseif($kelas == "XI"){
                    $count = 2;
                }else {
                    $count = 3;
                }
                
                $tp_set = [];
                for($i = 0; $i < $count; $i++){
                    if($i == 0){
                        array_push($tp_set, $dtsiswa["tp_siswa"]);
                    }else{
                        $set = ((int)$tp_first-$i)."/".((int)$tp_second-$i);
                        array_push($tp_set, $set);
                    }
                }

                echo json_encode([
                    "status" => "success",
                    "info" => "success get data",
                    "datasiswa" => $dtsiswa,
                    "tp" => $tp_set
                ]);

            } catch (\Throwable $th) {
                echo json_encode([
                    "status" => "error",
                    "info" => $th->getMessage()
                ]);
            }
        break;

    }
}