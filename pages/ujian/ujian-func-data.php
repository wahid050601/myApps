<?php

    // GET CONNECTION
    require "../../connection/conn.php";

    $action = $_POST["action"];

    if(isset($action)){
        switch($action){

            case "checkPemUjian" :
                try {

                    if($_POST["trigger"] == "cicilan"){
                        $idpem = $_POST["idpem"];
                        $idsiswa = $_POST["idsiswa"];
    
                        // get information
                        $queryGetPem = "select * from tb_jns_pem where id_jns = ". $idpem;
                        $execQuerygetpem = mysqli_query($koneksi, $queryGetPem);
                        $infopem = mysqli_fetch_assoc($execQuerygetpem);
    
                        // get status pembayaran
                        $getstatuspem = "select * from tb_pem_ujian where id_siswa = ". $idsiswa ." and id_ujian = ". $idpem;
                        $execgetstatuspem = mysqli_query($koneksi,$getstatuspem);
                        $datastatuspemsiswa = [];
                        while($row = mysqli_fetch_assoc($execgetstatuspem)){
                            $datastatuspemsiswa[] = $row;
                        }

                        // check sisa pem
                        $checkpemsiswa = "select ifnull(sum(nom_pem),0) as ex_pem from tb_pem_ujian where id_siswa = ". $idsiswa ." and id_ujian = ". $idpem;
                        $execcheckpemsiswa = mysqli_query($koneksi,$checkpemsiswa);
                        $datapem = mysqli_fetch_assoc($execcheckpemsiswa);

                        $checknompem = "select jns_val from tb_jns_pem where id_jns = ". $idpem;
                        $execcheckpem = mysqli_query($koneksi,$checknompem);
                        $nompem = mysqli_fetch_assoc($execcheckpem);
    
                        echo json_encode([
                            "status" => "success",
                            "infopem" => $infopem,
                            "datapem" => $datastatuspemsiswa,
                            "sisapem" => $nompem["jns_val"]-$datapem["ex_pem"]
                        ]);

                    }elseif($_POST["trigger"] == "lunas"){
                        $idpem = $_POST["idpem"];
                        $idsiswa = $_POST["idsiswa"];

                        $checkpemsiswa = "select ifnull(sum(nom_pem),0) as ex_pem from tb_pem_ujian where id_siswa = ". $idsiswa ." and id_ujian = ". $idpem;
                        $execcheckpemsiswa = mysqli_query($koneksi,$checkpemsiswa);
                        $datapem = mysqli_fetch_assoc($execcheckpemsiswa);

                        $checknompem = "select jns_val from tb_jns_pem where id_jns = ". $idpem;
                        $execcheckpem = mysqli_query($koneksi,$checknompem);
                        $nompem = mysqli_fetch_assoc($execcheckpem);

                        
                        echo json_encode([
                            "status" => "success",
                            "infopem" => $nompem["jns_val"]-$datapem["ex_pem"],
                            // "datapem" => $datastatuspemsiswa
                        ]);

                    }

                } catch (Exception $e) {
                    echo json_encode([
                        "status" => "error",
                        "datapem" => ""
                    ]);
                }
                break;


            case "valPemUjian" :
                try {

                    if($_POST["trigger"] == "validasi"){
                        // Get val info pem
                        $idsiswa = $_POST["idsiswa"];
                        $idpem = $_POST["idpem"];

                        $getvalinfopem = "select * from vw_sts_ujian_siswa where id = ". $idsiswa ." and id_jns = ". $idpem;
                        $execvalpem = mysqli_query($koneksi,$getvalinfopem);
                        $datavalpem = [];
                        while($row = mysqli_fetch_assoc($execvalpem)){
                            $datavalpem[] = $row;
                        }

                        // Get info pem
                        $getinfopem = "select * from tb_jns_pem where id_jns = ". $idpem;
                        $execpem = mysqli_query($koneksi, $getinfopem);
                        $datainfopem = mysqli_fetch_assoc($execpem);

                        // Get info pem siswa
                        $getinfopemsiswa = "select coalesce(sum(nom_pem),0) as pem_siswa from tb_pem_ujian where id_siswa = ". $idsiswa;
                        $execpemsiswa = mysqli_query($koneksi,$getinfopemsiswa);
                        $datapemsiswa = mysqli_fetch_assoc($execpemsiswa);

                        // Get info siswa
                        $getinfosiswa = "select * from tb_siswa where id = ". $idsiswa;
                        $execinfosiswa = mysqli_query($koneksi, $getinfosiswa);
                        $datasiswa = mysqli_fetch_assoc($execinfosiswa);


                        

                        echo json_encode([
                            "status" => "success",
                            "lastpem" => $datapemsiswa["pem_siswa"],
                            "dataval" => $datavalpem,
                            "datapem" => $datainfopem,
                            "datasiswa" => $datasiswa
                        ]);

                    }elseif($_POST["trigger"] == "procpem"){
                        $idadmin = $_POST["admin"];
                        $idsiswa = $_POST["siswa"];
                        $idpem = $_POST["idpem"];
                        $ketpem = $_POST["ketpem"];
                        $nompem = $_POST["nompem"];
                        $status = $_POST["status"];

                        $qinsDatapem = "insert into tb_pem_ujian values (null,".$idsiswa.", ".$idpem.", ". $idadmin .", '".$ketpem."', ".$nompem.", '".$status."', now())";
                        $execqinsDatapem = mysqli_query($koneksi, $qinsDatapem);
                        
                        $status = $execqinsDatapem == true ? "success" : "failed";
                        $alert = $execqinsDatapem == true ? "berhasil" : "gagal";

                        if($execqinsDatapem){
                            apiPaymentAdministrasi($koneksi, 'ujian', $endPointAPI);
                        }

                        echo json_encode([
                            "status" => $status,
                            "info" => "Pembayaran ". $alert ." di proses"
                        ]);
                    }
                    
                } catch (Exception $th) {
                    echo json_encode([
                        "status" => "error",
                        "info" => $th
                    ]);
                }
                break;
        }
    }


    function apiPaymentAdministrasi($conn, $jnsPem, $endPointAPI){
        // Get data from table pembayaran
        $getDataTable = "select a.id_pem_ujian, b.nis_siswa as id_siswa, a.id_ujian, a.id_admin, a.ket_pem, a.nom_pem, a.status_pem, a.tanggal_pem from tb_pem_spp a
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