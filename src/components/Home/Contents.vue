<template>
  <div class="container-fluid c-jumbotron">
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="/css/Alo Asset/Banner.png" class="d-block w-100 img-carousel" >
          <div class="carousel-caption d-none d-md-block text-dark">
            <h5>First slide label</h5>
            <p>Some representative placeholder content for the first slide.</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="/css/Alo Asset/Banner.png" class="d-block w-100 img-carousel" >
          <div class="carousel-caption d-none d-md-block text-dark">
            <h5>First slide label</h5>
            <p>Some representative placeholder content for the first slide.</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="/css/Alo Asset/Banner.png" class="d-block w-100 img-carousel">
          <div class="carousel-caption d-none d-md-block text-dark">
            <h5>First slide label</h5>
            <p>Some representative placeholder content for the first slide.</p>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </div>
  <div class="container mt-5 mb-5">    
      <h1>Artikel terkini</h1>
      <span>Memberikan informasi seputar kesehatan pilihan terbaru</span>
      <hr>
      <div class="row mb-3">
        <div class="col-sm-4 mt-3">
          <img src="/css/Alo Asset/Banner.png" class="card-img-top" alt="...">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
        <div class="col-sm-4 mt-3">
          <img src="/css/Alo Asset/Banner.png" class="card-img-top" alt="...">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
        <div class="col-sm-4 mt-3">
          <img src="/css/Alo Asset/Banner.png" class="card-img-top" alt="...">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
        <div class="col-sm-4 mt-3">
          <img src="/css/Alo Asset/Banner.png" class="card-img-top" alt="...">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
        <div class="col-sm-4 mt-3">
          <img src="/css/Alo Asset/Banner.png" class="card-img-top" alt="...">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
        <div class="col-sm-4 mt-3">
          <img src="/css/Alo Asset/Banner.png" class="card-img-top" alt="...">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Special title treatment</h5>
              <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
              <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
          </div>
        </div>
      </div>
      <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#">Next</a>
          </li>
        </ul>
      </nav>
  </div>
</template>

<style scoped>

    .img-carousel{
      opacity: 0.9;
    }
    h1{
      color: #3c3e41;
    }
    .btn-primary{
        background-color: #3570D2 !important;
    }
    
    .bg-primary{
        background-color: #dceaff !important;
    }
    .c-jumbotron{
      padding: 0;
      background-color: black;
    }
  .jumbotron-image {
    background-position: center center;
    background-repeat: no-repeat;
    background-size: cover;
  }
</style>