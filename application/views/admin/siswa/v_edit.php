<div class="col-lg-12">
<div class="panel panel-primary">
    <div class="panel-heading">
        Edit Data
    </div>
    <div class="panel-body">
        <?php
            if (isset($error_upload)) {
                echo '<div class="alert alert-danger alert-dismissible">
                    <button type="button" class="close"  data-dismiss="alert" aria-hidden="true">&times;</button>'.$error_upload.'</div>';
            }

            echo form_open_multipart('siswa/edit/'.$siswa->id_siswa);
        ?>
            <div class="form-group">
                <label>NIS</label>
                <input class="form-control" type="text" value="<?= $siswa->nis ?>" name="nis" placeholder="NIS" required>
            </div>

            <div class="form-group">
                <label>NISN</label>
                <input class="form-control" type="text" value="<?= $siswa->nisn ?>" name="nisn" placeholder="NISN" required>
            </div>

            <div class="form-group">
                <label>Nama Siswa</label>
                <input class="form-control" type="text" value="<?= $siswa->nama_siswa ?>" name="nama_siswa" placeholder="Nama Siswa" required>
            </div>

            <div class="col-md-6">
            <div class="form-group">
                    <label>Jenis Kelamin</label>
                    <select name="jenis_kelamin" class="form-control">
                        <option value="">--Pilih JK--</option>
                        <option value="L">Laki-Laki</option>
                        <option value="P">Perempuan</option>
                    </select>
                </div>
            </div>

            <div class="col-md-6">
            <div class="form-group">
                    <label>Kelas</label>
                    <select name="kelas" class="form-control">
                        <option value="">--Pilih Kelas--</option>
                        <option value="VII A">VII A</option>
                        <option value="VII B">VII B</option>
                        <option value="VII C">VII C</option>
                        <option value="VII D">VII D</option>
                        <option value="VII E">VII E</option>
                        <option value="VII F">VII F</option>
                        <option value="VIII A">VIII A</option>
                        <option value="VIII B">VIII B</option>
                        <option value="VIII C">VIII C</option>
                        <option value="VIII D">VIII D</option>
                        <option value="VIII E">VIII E</option>
                        <option value="VIII F">VIII F</option>
                        <option value="IX A">IX A</option>
                        <option value="IX B">IX B</option>
                        <option value="IX C">IX C</option>
                        <option value="IX D">IX D</option>
                        <option value="IX E">IX E</option>
                        <option value="IX F">IX F</option>
                    </select>
                </div>
            </div>


          
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Simpan</button>
                <button type="reset" class="btn btn-success">Riset</button>
            </div>



        <?php echo form_close(); ?>

</div>
</div>