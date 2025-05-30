<?php
    // Connection
    require "../../connection/conn.php";

    // Function Start
    if(isset($_POST["action"])) {
        $action = $_POST["action"];


        switch ($action) {

            case "addSiswa" :
                try {
                    // Get data
                    $nis = htmlspecialchars($_POST["nis"]);
                    $nisn = htmlspecialchars($_POST["nisn"]);
                    $nama = htmlspecialchars($_POST["nama"]);
                    $jk = htmlspecialchars($_POST["jk"]);
                    $tplahir = htmlspecialchars($_POST["tplahir"]);
                    $tglahir =htmlspecialchars($_POST["tglahir"]);
                    $alamat = htmlspecialchars($_POST["alamat"]);
                    $ibu = htmlspecialchars($_POST["ibu"]);
                    $ayah = htmlspecialchars($_POST["ayah"]);
                    $tlp = htmlspecialchars($_POST["tlp"]);
                    $email = htmlspecialchars($_POST["email"]);
                    $kelas = htmlspecialchars($_POST["kelas"]);
                    $prodi = htmlspecialchars($_POST["prodi"]);
                    $tp = htmlspecialchars($_POST["tp"]);
                    $status = htmlspecialchars($_POST["status"]);

                    //Query Insert
                    $query = "INSERT INTO tb_siswa (nis_siswa,nisn_siswa,nama_siswa,jk_siswa,kls_siswa,prod_siswa,tp_siswa,tplahir_siswa,tglahir_siswa,alamat_siswa,ibu_siswa,ayah_siswa,tlp_siswa,email_siswa,status_siswa)
                    VALUES ('$nis', '$nisn', '$nama', '$jk', '$kelas', '$prodi', '$tp', '$tplahir', '$tglahir', '$alamat', '$ibu', '$ayah', '$tlp', '$email', '$status')";
                    
                    //Process
                    if (mysqli_query($koneksi, $query)) {
                        $alert = "success";
                        $text = "Data siswa berhasil ditambah";
                    }else{
                        $alert = "error";
                        $text = "Data siswa gagal ditambah";
                    }
                    echo json_encode([
                        "status" => $alert, 
                        "info" => $text
                     ]);

                } catch (Exception $th) {
                    echo json_encode([
                        "status" => "error",
                        "info" => mysqli_error($koneksi)
                    ]);
                }
            break;

            case "editSiswa" :
                try {
                    
                    // Ambil data dari Form Update
                    $idSiswa = htmlspecialchars($_POST["idsiswa"]);
                    $nis = htmlspecialchars($_POST["edit-nis"]);
                    $nisn = htmlspecialchars($_POST["edit-nisn"]);
                    $nama = htmlspecialchars($_POST["edit-nama"]);
                    $jk = htmlspecialchars($_POST["edit-jk"]);
                    $tplahir = htmlspecialchars($_POST["edit-tplahir"]);
                    $tglahir =htmlspecialchars($_POST["edit-tglahir"]);
                    $alamat = htmlspecialchars($_POST["edit-alamat"]);
                    $ibu = htmlspecialchars($_POST["edit-ibu"]);
                    $ayah = htmlspecialchars($_POST["edit-ayah"]);
                    $tlp = htmlspecialchars($_POST["edit-tlp"]);
                    $email = htmlspecialchars($_POST["edit-email"]);

                    // Query Update
                    $query = "UPDATE tb_siswa SET 
                        nis_siswa = '$nis', 
                        nisn_siswa = '$nisn', 
                        nama_siswa = '$nama', 
                        jk_siswa = '$jk', 
                        tplahir_siswa = '$tplahir', 
                        tglahir_siswa = '$tglahir', 
                        alamat_siswa = '$alamat', 
                        ibu_siswa = '$ibu', 
                        ayah_siswa = '$ayah', 
                        tlp_siswa = '$tlp', 
                        email_siswa = '$email' where id = $idSiswa";
                    
                    //Process
                    if (mysqli_query($koneksi, $query)) {
                        $alert = "success";
                        $text = "Data siswa berhasil diupdate";
                    }else{
                        $alert = "error";
                        $text = "Data siswa gagal diupdate";
                    }
                    echo json_encode([
                        "status" => $alert, 
                        "info" => $text
                    ]);

                } catch (Exception $th) {
                    echo json_encode([
                        "status" => "error",
                        "info" => mysqli_error($koneksi)
                    ]);
                }
            break;
            
            case "del" :
                try {
                    $idisiswa = $_POST["id"];

                    // Query Delete
                    $query = "DELETE FROM tb_siswa WHERE id = $idisiswa";

                    //Process
                    if(mysqli_query($koneksi, $query)){
                        $alert = "success";
                        $text = "Data siswa berhasil dihapus";
                    }else{
                        $alert = "error";
                        $text = "Data siswa gagal dihapus";
                    }
                    echo json_encode([
                        "status" => $alert, 
                        "info" => $text
                    ]);

                } catch (Exception $th) {
                    echo json_encode([
                        "status" => "error",
                        "info" => mysqli_error($koneksi)
                    ]);
                }
            break;
            
            case "regis" :
                try {
                    
                    $idSiswa = $_POST["idsiswa"];
                    $status = $_POST["status"];

                    $updtRegis = "update tb_siswa set status_siswa = '$status' where id = ". $idSiswa;  
                    $exec = mysqli_query($koneksi, $updtRegis);

                    $status_ex = $exec == '1' ? "success" : "failed";
                    echo json_encode([
                        "status" => $status_ex,
                        "info" => "Data siswa ". $status_ex ." diregister"
                    ]);

                } catch (\Throwable $th) {
                    echo json_encode([
                        "status" => "error",
                        "info" => $th->getMessage()
                    ]);
                }
            break;

            case "syncsiswa" :
                try {
                    // Hit API get data siswa
                    $paramdata = [
                        "action" => "getdata",
                        "data" => null
                    ];
                    $dataSync = json_encode($paramdata);
                    $ch = curl_init($endPointAPI . "syncdatasiswa");
                    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                    curl_setopt($ch, CURLOPT_POST, true);
                    curl_setopt($ch, CURLOPT_POSTFIELDS, $dataSync);
                    curl_setopt($ch, CURLOPT_HTTPHEADER, [
                        'Content-Type: application/json',
                        'Content-Length: ' . strlen($dataSync)
                    ]);
                    $response = curl_exec($ch);
                    curl_close($ch);
                    $resp = json_decode($response, true);
                    $dataCompaire = $resp["data"];


                    $getTotalSiswa = "select count(1) as total_siswa from tb_siswa where status_siswa = 'aktif'";
                    $execTotal = $koneksi->query($getTotalSiswa);
                    $total = $execTotal->fetch_assoc();
                    $totalSiswa = $total["total_siswa"];
                    $thread = ceil($totalSiswa / 10);

                    
                    $totalsync = 0;
                    $nis = [];
                    for ($i=1; $i <= $thread; $i++) {
                        $offset = ($i - 1) * 10;
                        $getDataSiswa = "select a.*, c.nama_rbl from tb_siswa a left join tb_rombel_siswa_stg b on a.id = b.id_siswa
                        left join tb_rombel_siswa c on b.id_rbl = c.id_rbl
                        where a.status_siswa = 'aktif' limit 10 offset $offset";

                        $execGetSiswa = $koneksi->query($getDataSiswa);
                        $siswaData = [];
                        while($row = $execGetSiswa->fetch_assoc()){
                            $siswaData[] = $row;
                        }

                        //Validate ex data
                        $datasiswafix = [];
                        foreach($siswaData as $siswa){
                            if(!in_array($siswa["nis_siswa"], $dataCompaire)){
                                array_push($datasiswafix, $siswa);
                                array_push($nis, $siswa["nis_siswa"]);
                                $totalsync++;
                            }
                        }
                        
                        // Hit API sync data siswa
                        $dataparam = [
                            "action" => "syncdata",
                            "data" => $datasiswafix
                        ];
                        $dataSync = json_encode($dataparam);
                        $ch = curl_init($endPointAPI . "syncdatasiswa.php");
                        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                        curl_setopt($ch, CURLOPT_POST, true);
                        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataSync);
                        curl_setopt($ch, CURLOPT_HTTPHEADER, [
                            'Content-Type: application/json',
                            'Content-Length: ' . strlen($dataSync)
                        ]);
                        $response = curl_exec($ch);
                        curl_close($ch);
                        $resp = json_decode($response, true);
                        if($resp["status"] == "success"){
                            $datasiswafix = [];
                        }
                    }

                    $message = $totalsync == 0 ? "Semua data siswa sudah dilakukan sinkronisasi" : "berhasil melakukan sinkronisasi pada database aplikasi siwa dengan total data $totalsync";
                    echo json_encode([
                        "status" => "success",
                        "info" => "Berhasil sinkronisasi",
                        "message" => $message,
                        "totalsync" => $totalsync,
                    ]);
                    $koneksi->close();

                }catch(Exception $e){
                    echo json_encode([
                        "status" => "error",
                        "info" => $e->getMessage()
                    ]);
                }
            break;
        }
    }
    


?>