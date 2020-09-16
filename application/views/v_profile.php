<!-- Home -->

	<div class="home">
		<div class="breadcrumbs_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="breadcrumbs">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li>Profile Sekolah</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>			
	</div>

<!-- isi konten -->

<div class="contact_info_container">
			<div class="container">
				<div class="row">
			
			<div class="col-sm-4 text-center">
				<img src="<?= base_url('foto_kepsek/'.$sekolah->foto_kepsek) ?>" alt="">
				<br>
				<h4><?= $sekolah->kepala_sekolah ?></h4>
				<h4>NIP : <?= $sekolah->nip ?></h4> 
			</div>

			<div class="col-sm-8">
				<div class="form-group">
				<div class="form-title"><h5>Nama Sekolah</h5></div>
			        <input type="text" class="comment_input" value="<?= $sekolah->nama_sekolah ?>" type="text" name="nama_sekolah" readonly>
			    </div>

			    <div class="form-group">
			        <div class="form-title"><h5>Alamat Sekolah</h5></div>
			        <input type="text" class="comment_input" value="<?= $sekolah->alamat ?>" type="text" name="alamat" readonly>
			    </div>

			    <div class="form-group">
			        <div class="form-title"><h5>Nomor Telepon</h5></div>
			        <input type="text" class="comment_input" value="<?= $sekolah->no_telp ?>" type="text" name="no_telp" readonly>
			    </div>
			</div>

			    <div class="col-sm-12">
			    	<br>
					<br>
				    <div class="form-group">
				        <div class="form-title"><h4>Sejarah</h4></div>
				        <p><?= $sekolah->sejarah ?></p>       
				    </div>

				    <div class="form-group">
				        <div class="form-title"><h5>Visi</h5></div>
				        <p><?= $sekolah->visi ?></p>       
				    </div>

				    <div class="form-group">
				        <div class="form-title"><h5>Misi</h5></div>
				        <p><?= $sekolah->misi ?></p>       
				    </div>
				</div>

		</div>
	</div>
</div>


<!-- End isi konten-->

