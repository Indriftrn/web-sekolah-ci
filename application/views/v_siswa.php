<!-- Home -->

	<div class="home">
		<div class="breadcrumbs_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="breadcrumbs">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li>Guru</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>			
	</div>
		
		<!-- contact -->
	<div class="contact">
		

		<div class="contact_info_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2>Daftar Siswa</h2><br>
					</div>

					<div class="col-lg-12">
						<table class="table table-bordered" id="myTable">
							<thead>
								<tr>
									<th class="text-center" width="30px">No</th>
									<th class="text-center"width="50px">Nis</th>
									<th class="text-center"width="50px">Nisn</th>
									<th class="text-center"width="150px">Nama Siswa</th>
									<th class="text-center"width="50px">Jenis Kelamin</th>
									<th class="text-center"width="50px">Kelas</th>
								</tr>
							</thead>
							<tbody>
					
								<?php $no=1; foreach ($siswa as $key => $value) { ?>
								<tr>
									<td class="text-center"><?= $no++ ?></td>
									<td><?= $value->nis ?></td>
									<td><?= $value->nisn ?></td>
									<td><?= $value->nama_siswa ?></td>	
									<td><?= $value->jenis_kelamin ?></td>
									<td><?= $value->kelas ?></td>
								</tr>
								<?php } ?>	
							</tbody>

						</table>	
					</div>
				</div>
			</div>
		</div>
	</div>
