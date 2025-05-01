<div class="card">
    <div class="card-block show-page">
        <!-- Header -->
        <h5><i class="fas fa-file-signature"></i> Rekapitulasi Pembayaran</h5>
        <hr>

        <!-- Body -->
        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-5">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <div class="form-group">
                                    <select name="sel-tp" id="sel-tp" class="custom-select form-control-sm" style="width: 100%;">
                                    </select>
                                </div>

                                <div class="form-group">
                                    <select name="sel-prodi" id="sel-prodi" class="custom-select form-control-sm" style="width: 100%;">
                                        <option value=""></option>
                                        <option value="Teknik Komputer dan Jaringan">Teknik Komputer dan Jaringan</option>
                                        <option value="Akuntansi Keuangan dan Lembaga">Akuntansi Keuangan dan Lembaga</option>
                                        <option value="Bisnis Daring dan Pemasaran">Bisnis Daring dan Pemasaran</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <select name="sel-siswa" id="sel-siswa" class="custom-select form-control-sm" style="width: 100%;">
                                    </select>
                                </div>

                                <button type="button" class="btn btn-primary btn-sm" id="btn-proc-pem"><i class="fas fa-cog"></i> proses</button>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-7">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <i class="fas fa-exclamation-circle"></i> Informasi Data Siswa
                            </li>
                            <li class="list-group-item">
                                <table class="table table-sm">
                                    <tr>
                                        <th>No.NIS</th>
                                        <th width="4%">:</th>
                                        <td class="nis"></td>
                                    </tr>
                                    <tr>
                                        <th>No.NISN</th>
                                        <th width="4%">:</th>
                                        <td class="nisn"></td>
                                    </tr>
                                    <tr>
                                        <th>Nama Sisw/i</th>
                                        <th width="4%">:</th>
                                        <td class="nama"></td>
                                    </tr>
                                    <tr>
                                        <th>Program Studi</th>
                                        <th width="4%">:</th>
                                        <td class="prod"></td>
                                    </tr>
                                    <tr>
                                        <th>Tahun Pelajaran</th>
                                        <th width="4%">:</th>
                                        <td class="tp"></td>
                                    </tr>
                                    <tr>
                                        <th>Tahun Kelulusan</th>
                                        <th width="4%">:</th>
                                        <td class="thnlulus"></td>
                                    </tr>
                                </table>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-lg-12">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="d-flex justify-content-between">
                                <span><i class="fas fa-th-list"></i> History Pembayaran Siswa/i</span>
                                <span><button type="button" class="btn btn-primary btn-sm"><i class="fas fa-cloud-download-alt"></i> download</button></span>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <table class="table table-bordered table-sm" id="tbl-hist-pembayaran">
                                <thead class="bg-primary">
                                    <tr>
                                        <th>no</th>
                                        <th>Tahun Pelajaran</th>
                                        <th>Jenis Pembayaran</th>
                                        <th>Jumlah (Rp)</th>
                                        <th>Status Pembayaran</th>
                                        <th>Tanggal</th>
                                        <th>Ket.</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>2020/2021</td>
                                        <td>SPP Semester 1</td>
                                        <td>1,200,000</td>
                                        <td>Sudah Bayar</td>
                                        <td>10/08/2020</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>2020/2021</td>
                                        <td>SPP Semester 2</td>
                                        <td>1,200,000</td>
                                        <td>Sudah Bayar</td>
                                        <td>10/02/2021</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>2020/2021</td>
                                        <td>Uang Buku</td>
                                        <td>500,000</td>
                                        <td>Belum Bayar</td>
                                        <td>-</td>
                                        <td>Tunggakan</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>2021/2022</td>
                                        <td>SPP Semester 1</td>
                                        <td>1,200,000</td>
                                        <td>Sudah Bayar</td>
                                        <td>10/08/2021</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>2021/2022</td>
                                        <td>SPP Semester 2</td>
                                        <td>1,200,000</td>
                                        <td>Sudah Bayar</td>
                                        <td>10/02/2022</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>2021/2022</td>
                                        <td>Uang Kegiatan</td>
                                        <td>700,000</td>
                                        <td>Belum Bayar</td>
                                        <td>-</td>
                                        <td>Tunggakan</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>2022/2023</td>
                                        <td>SPP Semester 1</td>
                                        <td>1,200,000</td>
                                        <td>Sudah Bayar</td>
                                        <td>10/08/2022</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>2022/2023</td>
                                        <td>SPP Semester 2</td>
                                        <td>1,200,000</td>
                                        <td>Sudah Bayar</td>
                                        <td>10/02/2023</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>2023/2024</td>
                                        <td>SPP Semester 1</td>
                                        <td>1,200,000</td>
                                        <td>Sudah Bayar</td>
                                        <td>10/08/2023</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>2023/2024</td>
                                        <td>SPP Semester 2</td>
                                        <td>1,200,000</td>
                                        <td>Sudah Bayar</td>
                                        <td>10/02/2024</td>
                                        <td>-</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>2023/2024</td>
                                        <td>Uang Kelulusan</td>
                                        <td>1,000,000</td>
                                        <td>Belum Bayar</td>
                                        <td>-</td>
                                        <td>Tunggakan Kelulusan</td>
                                    </tr>
                                </tbody>
                            </table>
                        </li>
                    </ul>
            </div>
        </div>
    </div>
</div>


<script>
    // Remove loading
    $('#loading').hide();


    // Set select option 
    $.ajax({
        method: 'post',
        url: 'pages/rekapitulasi/rekapitulasi-pembayaran-load.php',
        dataType: 'json',
        data: {'action' : 'loadDataSiswa'},
        success: function(dts){


            // set option data tahn pelajaran
            let setTpSiswa = '<option value=""></option>';
            $.each(dts.datatp, function(idt,valt){
                setTpSiswa += `<option value="${valt.tp_siswa}">${valt.tp_siswa}</option>`;
            });
            $('#sel-tp').html(setTpSiswa);
            $('#sel-tp').select2({
                placeholder: "_pilih TP_",
                width: '100%',
                theme: 'classic',
                allowClear: true
            });
            $('#sel-tp').on('change' , function(){
                $('#sel-siswa').html('<option value="">_pilih siswa_</option>');
                $('#sel-prodi').val('').trigger('change');
            });

            // set option data prodi
            $('#sel-prodi').select2({
                placeholder: "_pilih prodi_",
                width: '100%',
                theme: 'classic',
                allowClear: true
            });

            // set option data siswa±
            $('#sel-prodi').on('change', function(){
                let prodival = $('#sel-prodi').val();
                let tpval = $('#sel-tp').val();
                if(tpval != '' && tpval != ''){
                    let selDataSiswa = '<option value="">_pilih siswa_</option>';
                    $.each(dts.data, function(ids,vals){
                        if(vals.tp_siswa == tpval && vals.prod_siswa == prodival){
                            selDataSiswa += `<option value="${vals.nis_siswa}">${vals.nis_siswa} | ${vals.nama_siswa} | ${vals.kls_siswa}</option>`;
                        }
                    });
                    $('#sel-siswa').html(selDataSiswa);
                }else{
                    $('#sel-siswa').html('<option value="">_pilih siswa_</option>');
                }
            });
            $('#sel-siswa').select2({
                placeholder: "_pilih siswa_",
                width: '100%',
                theme: 'classic',
                allowClear: true
            })
        }
    });



    // Set information detail siswa
    $('#btn-proc-pem').on('click', function(){
        let nissiswa = $('#sel-siswa').val();
        let prodsiswa = $('#sel-prodi').val();
        let tpsiswa = $('#sel-tp').val();

        if(nissiswa == '' || tpsiswa == '' || prodsiswa == ''){
            Swal.fire({
                title: "warning",
                text: "Silahkan lengkapi Form terlebih dahulu",
                icon: "warning"
            });
        }else{
            $.ajax({
                method: 'post',
                url: 'pages/rekapitulasi/rekapitulasi-pembayaran-load.php',
                dataType: 'json',
                data: {
                    'action' : 'loadDetailPembayaran',
                    'nissiswa' : nissiswa,
                    'tpsiswa' : tpsiswa,
                    'prodisiswa' : prodsiswa
                },
                success: function(dts){
                    if(dts.status == 'success'){

                        // Set info detail siswa
                        $('.nis').html(dts.datasiswa.nis_siswa);
                        $('.nisn').html(dts.datasiswa.nisn_siswa);
                        $('.nama').html(dts.datasiswa.nama_siswa);
                        $('.prod').html(dts.datasiswa.prod_siswa);
                        $('.tp').html(dts.datasiswa.tp_siswa);
                        $('.thnlulus').html('belum lulus'); // temporary status  


                    }else{
                        Swal.fire({
                            title: dts.status,
                            text: dts.info,
                            icon: dts.status
                        });
                    }
                }
            });
        }

    });



    // $('#tbl-hist-pembayaran').DataTable({
    //     scrollX: true
    // });
</script>