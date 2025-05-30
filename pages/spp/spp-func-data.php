<?php
    // Req Connection
    require "../../connection/conn.php";

    $act = $_POST["act"];

    if(isset($act)) {

        switch($act) {

            case "procSpp" :

                if(isset($_POST["validasi"])){
                    $ex = explode("-", $_POST["idsiswa"]);
                
                    $idsiswa = $ex[0];
                    $idspp = $_POST["idspp"];
                    
                    // Proses Validasi
                    $queryVal = "select * from tb_pem_spp where id_siswa = $idsiswa and id_spp = $idspp";
                    $exec = mysqli_query($koneksi, $queryVal);
                    $datavalidasi = [];
                    while($row = mysqli_fetch_row($exec)){
                        $datavalidasi[] = $row;
                    }
                    if($datavalidasi != null){
                        $query1 = "select * from vw_sts_spp_siswa where id = $idsiswa";
                        $exec = mysqli_query($koneksi, $query1);
                        $rest = [];
                        while($row = mysqli_fetch_assoc($exec)){
                            $rest[] = $row;
                        }

                        echo json_encode([
                            "status" => "notreadypay",
                            "datas" => $rest
                        ]);
                    }else{
                        // DATA SISWA
                        $query="select * from tb_siswa where id = $idsiswa";
                        $prep = $koneksi->prepare($query);
                        $prep->execute();
                        $rest = $prep->get_result();

                        $data_siswa = [];
                        while($rows = $rest->fetch_assoc()){
                            array_push($data_siswa, $rows);
                        }

                        // DATA SPP
                        $query="select * from tb_jns_pem where jns_katg = 'spp' and id_jns = $idspp";
                        $prep = $koneksi->prepare($query);
                        $prep->execute();
                        $rest = $prep->get_result();

                        $data_spp = [];
                        while($rows = $rest->fetch_assoc()){
                            array_push($data_spp, $rows);
                        }

                        echo json_encode([
                            "status" => "readypay",
                            "siswa" => $data_siswa,
                            "spp" => $data_spp
                        ]);
                    }
                }

                if(isset($_POST["actntriger"])){
                    $idsiswa = explode("-", $_POST["idsiswapay"])[0];
                    $idspp = $_POST["idspppay"];
                    $idadmin = $_POST["idadminpay"];

                    // Process
                    $query = "insert into tb_pem_spp values (null, $idsiswa, $idspp, $idadmin, 'lunas', now())";
                    $exec = mysqli_query($koneksi, $query);
                    if($exec){
                        // API
                        $execApi = apiPaymentAdministrasi($koneksi, "spp", $endPointAPI);
                        echo json_encode([
                            "status" => "success",
                            "info" => "Pembayaran Berhasil",
                            "text" => "SPP berhasil diproses",
                        ]);
                    }else{
                        echo json_encode([
                            "status" => "error",
                            "info" => "Pembayaran Gagal",
                            "text" => "SPP gagal diproses"
                        ]);
                    }
                }
            break;
        }
    }

    function apiPaymentAdministrasi($conn, $jnsPem, $endPointAPI){
        // Get data from table pembayaran
        $getDataTable = "select a.id_pem_spp, b.nis_siswa as id_siswa, a.id_spp, a.id_admin, a.status_spp, a.tanggal_pem from tb_pem_spp a
        left join tb_siswa b on a.id_siswa = b.id order by id desc limit 1";
        $exec = mysqli_query($conn, $getDataTable);
        $datasend = mysqli_fetch_assoc($exec);
        // while($row = mysqli_fetch_assoc($exec)){$datasend[] = $row;}

        $jsonRaw = json_encode([
            "kategori" => $jnsPem,
            "data" => $datasend
        ]);

        $url = $endPointAPI. "postpembayaranproc";
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST"); // Bisa juga menggunakan CURLOPT_POST
        curl_setopt($ch, CURLOPT_POSTFIELDS, $jsonRaw); // Mengirim data JSON
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            "Content-Type: application/json", // Header untuk JSON
            "Content-Length: " . strlen($jsonRaw) // Panjang data yang dikirim
        ]);

        // Eksekusi cURL dan ambil respons
        $response = curl_exec($ch);
        curl_close($ch);
        
        error_log("OUTPUT API : ". $response);
        return $response;
    }

?>