<template>
<div>
  <div class="container-fluid c-jumbotron">
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="/css/Alo Asset/Banner2.png" class="d-block w-100 img-carousel" >
        </div>
        <div class="carousel-item">
          <img src="/css/Alo Asset/Banner1.png" class="d-block w-100 img-carousel" >
        </div>
        <div class="carousel-item">
          <img src="/css/Alo Asset/Banner.png" class="d-block w-100 img-carousel">
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
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col" v-for="article in articles" :key="article.id">
                <div class="card shadow-sm p-3  mt-5 bg-body">
                    <div class="row g-0 d-flex align-items-center">
                        <div class="col-md-5">
                            <img src="/css/Alo Asset/hero-artikel.png" class="img-fluid rounded-start" alt="Artikel Pentingnya Menjaga Kesehatan Gigi dan Mulut">
                        </div>
                        <div class="col-md-7">
                            <div class="card-body">
                                <p class="card-text"><small class="text-muted">Gigi</small></p>
                                <p class="card-title fw-bold h5">{{ article.judul }}</p>
                                <p class="card-text"><small>Oleh : {{ article.penulis }}.</small></p>
                            </div>
                        </div>
                    </div>
                        <div class="card-footer text-center mt-3">
                            <router-link :to="{ name: 'Artikel', params: { id: article.id }}">
                                <p class="btn btn-primary">Lihat Artikel</p>
                            </router-link>
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
</div>
</template>

<script>
  export default {
    name: 'articlesIndex',
    props: {
      articles: Array,
    },
  }
</script>

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
  .card {
    border-radius: 15px;
  }
  .card-footer {
      background: none!important;
      border-top: none !important;
      background-color: none !important;
  }
  .card-footer .btn {
      border-radius: 20px;
      background-color: #004EC0;
  }
  .card {
    border-radius: 15px;
  }
  .card-footer {
      background: none!important;
      border-top: none !important;
      background-color: none !important;
  }
  .card-footer .btn {
      border-radius: 20px;
      background-color: #004EC0;
  }
</style>