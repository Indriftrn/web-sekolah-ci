		<!-- Header Content -->
		<div class="header_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_content d-flex flex-row align-items-center justify-content-start">
							<div class="logo_container">
								<a href="<?= base_url() ?>">
									<img src="<?= base_url() ?>template/img/logo.PNG" alt="">
									<div class="logo_text"><h3><?= $setting->nama_sekolah ?></h3></div>
								</a>
							</div>
							<nav class="main_nav_contaner ml-auto">
								<ul class="main_nav">
									<li class="active"><a href="<?= base_url() ?>">Home</a></li>
									
									<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									         Sekolah
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="<?= base_url('home/profile') ?>">Profil</a>
									  <a class="dropdown-item" href="<?= base_url('home/guru') ?>">Guru</a>
									  <a class="dropdown-item" href="<?= base_url('home/siswa') ?>">Siswa</a>
									</div> </li>
									
									<li><a href="<?= base_url('home/gallery') ?>">Galeri</a></li>
									<li><a href="<?= base_url('home/download') ?>">Download</a></li>
									<li><a href="<?= base_url('home/berita') ?>">Berita</a></li>
									<li><a href="<?= base_url('home/about') ?>">About</a></li>
								</ul>

								<div class="hamburger menu_mm">
									<i class="fa fa-bars menu_mm" aria-hidden="true"></i>
								</div>
							</nav>

						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Header Search Panel -->
		<div class="header_search_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_search_content d-flex flex-row align-items-center justify-content-end">
							<form action="#" class="header_search_form">
								<input type="search" class="search_input" placeholder="Search" required="required">
								<button class="header_search_button d-flex flex-column align-items-center justify-content-center">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>			
		</div>			
	</header>

	<!-- Menu -->

	<div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_100">
		<div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
	
		<nav class="menu_nav">
			<ul class="menu_mm">
				<li class="active"><a href="<?= base_url() ?>">Home</a></li>
									
					<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					         Sekolah
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="<?= base_url('home/profile') ?>">Profil</a>
					  <a class="dropdown-item" href="<?= base_url('home/guru') ?>">Guru</a>
					  <a class="dropdown-item" href="<?= base_url('home/siswa') ?>">Siswa</a>
					</div> </li>
									
					<li><a href="<?= base_url('home/gallery') ?>">Galeri</a></li>
					<li><a href="<?= base_url('home/download') ?>">Download</a></li>
					<li><a href="<?= base_url('home/berita') ?>">Berita</a></li>
					<li><a href="<?= base_url('home/about') ?>">About</a></li>
				</ul>
			</ul>
		</nav>
	</div>