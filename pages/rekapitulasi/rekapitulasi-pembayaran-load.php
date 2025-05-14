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
                $current_first = $tp_first;
                $current_second = $tp_second;
                
                for($i = 0; $i < $count; $i++){
                    array_push($tp_set, "$current_first/$current_second");
                    $current_first--;
                    $current_second--;
                }

                // get status lulus
                $status_lulus = "";
                $curent_year = date("Y");
                if($tp_first < $curent_year && $tp_second < $curent_year){
                    $status_lulus = "Lulus";
                }else{
                    $status_lulus = "Belum Lulus";
                }


                // get detail history pembayaran
                $kelas = [];
                for($i=0; $i<$count; $i++){
                    // Set kelas berdasarkan tingkat sekarang
                    $kls_set = "";
                    if($dtsiswa["kls_siswa"] == "XII") {
                        $kls_set = 12 - $i;
                    } elseif($dtsiswa["kls_siswa"] == "XI") {
                        $kls_set = 11 - $i;
                    } else {
                        $kls_set = 10 - $i;
                    }
                    $kls_set = $kls_set == 12 ? 'XII' : ($kls_set == 11 ? 'XI' : 'X');

                    // Set tahun pelajaran
                    $calculated_first = $tp_first - $i;
                    $calculated_second = $tp_second - $i;
                    $tp = "$calculated_first/$calculated_second";
                    
                    array_push($kelas, ["kelas" => $kls_set, "tp" => $tp]);
                }

                $history_pem = [];
                foreach($kelas as $key => $kls){
                    $prodi = "";
                    if($dtsiswa["prod_siswa"] == "Akuntansi Keuangan dan Lembaga"){
                        $prodi = "AKL";
                    }elseif($dtsiswa["prod_siswa"] == "Bisnis Daring dan Pemasaran"){
                        $prodi = "BDP";
                    }else{
                        $prodi = "TKJ";
                    }

                    $getHistoryPem = "
                    SELECT 
                        s.nama_siswa AS siswa,
                        jp.jns_tp,
                        if(jp.kelas_pem = 'UMUM', s.kls_siswa, s.kls_siswa) as kelas,
                        jp.jns_pem AS pembayaran,
                        jp.jns_val,
                        IF(p.status_spp is not null, 0, jp.jns_val) as sisa_pem,
                        cast(p.tanggal_pem as date) as tanggal_pem,
                        IF(p.status_spp IS NOT NULL, p.status_spp, 'belum lunas') AS status
                    FROM tb_siswa s
                    JOIN tb_jns_pem jp 
                    LEFT JOIN tb_pem_spp p ON s.id = p.id_siswa AND jp.id_jns = p.id_spp
                    WHERE s.id = '". $dtsiswa["id"] ."' and jp.jns_katg = 'spp' and jp.jns_tp = '". $kls["tp"] ."'
                    and (jp.jns_ket = '". $prodi ."' or jp.jns_ket = 'UMUM')
                    union all
                    SELECT 
                        s.nama_siswa AS siswa,
                        jp.jns_tp,
                        if(jp.kelas_pem = 'UMUM', s.kls_siswa, s.kls_siswa) as kelas,
                        jp.jns_pem AS pembayaran,
                        jp.jns_val,
                        IF(p.status_pem is not null, 0, jp.jns_val) as sisa_pem,
                        cast(p.tanggal_pem as date) as tanggal_pem,
                        IF(p.status_pem IS NOT NULL, p.status_pem, 'belum lunas') AS status
                    FROM tb_siswa s
                    JOIN tb_jns_pem jp 
                    LEFT JOIN tb_pem_ujian p ON s.id = p.id_siswa AND jp.id_jns = p.id_ujian
                    WHERE s.id = '". $dtsiswa["id"] ."' and jp.jns_katg = 'ujian' and jp.jns_tp = '". $kls["tp"] ."'
                    and (jp.jns_ket = '". $prodi ."' or jp.jns_ket = 'UMUM') 
                    and (jp.kelas_pem = '". $kls["kelas"] ."' or jp.kelas_pem = 'UMUM')
                    union all
                    SELECT 
                        s.nama_siswa AS siswa,
                        jp.jns_tp,
                        if(jp.kelas_pem = 'UMUM', s.kls_siswa, s.kls_siswa) as kelas,
                        jp.jns_pem AS pembayaran,
                        jp.jns_val,
                        IF(p.status_pem is not null, 0, jp.jns_val) as sisa_pem,
                        cast(p.tanggal_pem as date) as tanggal_pem,
                        IF(p.status_pem IS NOT NULL, p.status_pem, 'belum lunas') AS status
                    FROM tb_siswa s
                    JOIN tb_jns_pem jp 
                    LEFT JOIN tb_pem_kegiatan p ON s.id = p.id_siswa AND jp.id_jns = p.id_keg
                    WHERE s.id = '". $dtsiswa["id"] ."' and jp.jns_katg = 'kegiatan' and jp.jns_tp = '". $kls["tp"] ."'
                    and (jp.jns_ket = '". $prodi ."' or jp.jns_ket = 'UMUM') 
                    and (jp.kelas_pem = '". $kls["kelas"] ."' or jp.kelas_pem = 'UMUM')";

                    $execQuery = mysqli_query($koneksi, $getHistoryPem);
                    while($rows = mysqli_fetch_assoc($execQuery)){
                        array_push($history_pem, $rows);
                    }
                }

                echo json_encode([
                    "status" => "success",
                    "info" => "success get data",
                    "datasiswa" => $dtsiswa,
                    "status_lulus" => $status_lulus,
                    "tp" => $tp_set,
                    "set_kelas" => $kelas,
                    "hist_pem" => $history_pem,
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