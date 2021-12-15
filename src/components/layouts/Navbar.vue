<template>
    <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="#page-top"><img src="css/Alo Asset/icon-alodokter-white@2x.png"></a>
            <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><router-link class="nav-link py-3 px-0 px-lg-3 rounded" to="/">Home</router-link></li>
                    <li class="nav-item mx-0 mx-lg-1"><router-link class="nav-link py-3 px-0 px-lg-3 rounded" to="/konsultasi">Konsultasi Dokter</router-link></li>
                    <li class="nav-item mx-0 mx-lg-1"><router-link class="nav-link py-3 px-0 px-lg-3 rounded" to="/tentang-kami">Tentang Kami</router-link></li>
                </ul>
            </div>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button"  data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="css/Alo Asset/Profile (1).png">
                </button>
                <ul class="dropdown-menu " aria-labelledby="dropdownMenuButton2">
                    <li><a class="dropdown-item active" href="#">Login</a></li>
                    <li><a class="dropdown-item" href="#">Daftar</a></li>
                
                </ul>
                </div>
        </div>
    </nav>
</template>
