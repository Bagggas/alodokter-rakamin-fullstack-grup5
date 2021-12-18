<template>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
      <div class="container-fluid text-center">
        <a class="navbar-brand text-light" href="#" style="font-weight: bold; margin-left:20px">ALODOKTER</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02" >
          <div class="mx-auto">
            <ul class="navbar-nav mb-2 mb-lg-0 text-center">
              <li class="nav-item"><router-link class="nav-link px-2 link-light" to="/" style="font-weight: bold; margin-right: 50px">Home</router-link></li>
              <li class="nav-item"><router-link class="nav-link px-2 link-light" to="/konsultasi" style="font-weight: bold;">Konsultasi</router-link></li>
              <li class="nav-item"><router-link class="nav-link px-2 link-light" to="/tentang-kami" style="font-weight: bold; margin-left:50px">Tentang Kami</router-link></li>
            </ul>
          </div>
          <form class="d-flex justify-content-center">
              <div class="dropdown">
                <button class="btn btn-primary dropdown-toggle button" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                  <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                  </svg>
                </button>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </div>
          </form>
          <router-link class="btn btn-outline-light m-2" to="/signup">Masuk</router-link>
          <router-link class="btn btn-light m-2" to="/signup">Daftar Gratis</router-link>
        </div>
      </div>
    </nav>
</template>

<style scoped>
  .navbar-light .navbar-toggler{
    color: #ffff;
    border-color: #ffff;
  }
    .bg-primary{
        background-color: #3570d2 !important;
    }

    .navbar-dark .navbar-nav .nav-link{
      color: #ffff !important;
    }
  
  .button{
    background-color: #3570d2 !important;
    border-color: #3570d2;
  }
</style>
