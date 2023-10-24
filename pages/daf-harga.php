<?php
    session_start();


    if (!isset($_SESSION["islogin"])) {
        header ("Location: ../login.php");
        exit;
    }


    require "../connection/function-harga.php";

    $query = "SELECT * FROM harga";
    $data_harga = getharga($query);


    if(isset($_POST['btnharga'])) {
        $harga = $_POST['harga'];

        $query = "INSERT INTO harga VALUES ('$harga')";
        if(mysqli_query($conn, $query)) {
            echo "<script>alert('tambah data harga BERHASIL'); document.location.href='daf-harga.php'</script>";
        }else{
            echo "<script>alert('tambah data harga GAGAL'); document.location.href='daf-harga.php'</script>";
        }
    }


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LONDRE | Daftar Harga</title>

    <!-- CSS -->
    <!-- <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="icon/css/all.css" />
    <link rel="stylesheet" href="css/style.css" /> -->
    <?php require "../connection/header.php"; ?>

</head>
<body>

    <div class="main">
        <!-- MENUS -->
        <div class="menus">
            <div class="header text-center">
                <h2>londre</h2>
                <hr>
            </div>
            <div class="sub-menus ml-3 text-left">
                <?php require "../connection/menus.php"; ?>
            </div>
        </div>

        <!-- BODY -->
        <div class="body-main">
            <div class="header-body">
                <div class="component text-white">
                    <div class="user-log">
                        <a href="../logout.php"><i class="fas fa-power-off"></i></a>
                    </div>
                </div>
            </div>
            <hr>
        </div>

                    <!-- MAIN BODY -->
        <div class="body">
            <div class="continer-fluid">
                <div class="box">
                    <div class="header">
                        <span><i class="fas fa-list"></i>&nbsp; Daftar Harga</span>
                        <hr>
                    </div>

                    <div class="main-data">
                        <div class="row mr-1">
                            <!-- Table -->
                            <div class="col-lg-9">
                                <table class="table table-bordered table-hover table-sm">
                                    <thead class="bg-success text-white">
                                        <tr class="text-center">
                                            <th scope="coll">No.</th>
                                            <th scope="coll">Harga Per-kilogram</th>
                                            <th scope="coll">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $nomor = 1; ?>
                                        <?php foreach($data_harga as $dpkg) : ?>
                                        
                                        <tr>
                                            <th class="text-center"><?= $nomor; ?></th>
                                            <td class="text-center"><?= $dpkg["harga_perkilo"]; ?></td>
                                            <td class="text-center">
                                                <a href="#" class="badge badge-info"><i class="fas fa-pencil-alt"></i></a>
                                                <a href="#" class="badge badge-danger"><i class="fas fa-trash"></i></a>
                                            </td>
                                        </tr>
                                        <?php $nomor++; ?>
                                        <?php endforeach;  ?>
                                    </tbody>
                                </table>
                            </div>

                            <!-- FORM -->
                            <div class="col-lg-3 bg-white">
                                <div class="head-form text-center mt-2">
                                    <span><i class="fas fa-user-plus"></i> Data Harga</span>
                                    <hr>
                                </div>

                                <form action="" method="post">
                                    <div class="form-group">
                                        <label for="">Harga</label>
                                        <input type="text" class="form-control" name="harga" id="harga" require>
                                    </div>

                                    <button type="submit" class="btn btn-primary mb-2" name="btnharga" id="btnharga"><i class="fas fa-check"></i>&nbsp; Submit</button>
                                </form>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</body>


<!-- JS -->
<?php require "../connection/footer.php"; ?>


</html>