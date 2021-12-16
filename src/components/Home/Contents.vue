<template>
<div>
  <div class="container-fluid c-jumbotron">
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="/css/Alo Asset/Banner2.png" class="img-responsive d-block w-100 img-carousel" >
        </div>
        <div class="carousel-item">
          <img src="/css/Alo Asset/Banner1.png" class="img-responsive d-block w-100 img-carousel" >
        </div>
        <div class="carousel-item">
          <img src="/css/Alo Asset/Banner.png" class="img-responsive d-block w-100 img-carousel">
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
      <h3>Artikel Kesehatan</h3>
      <hr>
      <div class="row">
        <div class="card border-0 mb-3">
          <div class="row g-0">
            <div class="col-md-6">
              <img :src="articles[0].foto" height="350" :alt="articles[0].judul" style="object-fit: cover;">
            </div>
            <div class="col-md-6">
              <div class="card-body">
                <p class="card-text"><span class="badge bg-dark">{{ articles[0].kategori }}</span></p>
                <h5 class="card-title fw-bold h1">{{ articles[0].judul }}</h5>
                <p class="card-text">Sudah pernah mendengar kopi chicory sebelumnya? Nah, kalau kamu adalah pencinta kopi yang lagi ingin mengurangi asupan kafein harian, kopi chicory bisa menjadi alternatifnya...</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                                <p class="btn btn-primary">Lihat Artikel</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <hr>
      <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex justify-content-between">
          <a class="p-2 link-secondary" href="#">World</a>
          <a class="p-2 link-secondary" href="#">U.S.</a>
          <a class="p-2 link-secondary" href="#">Technology</a>
          <a class="p-2 link-secondary" href="#">Design</a>
          <a class="p-2 link-secondary" href="#">Culture</a>
          <a class="p-2 link-secondary" href="#">Business</a>
          <a class="p-2 link-secondary" href="#">Politics</a>
          <a class="p-2 link-secondary" href="#">Opinion</a>
          <a class="p-2 link-secondary" href="#">Science</a>
          <a class="p-2 link-secondary" href="#">Health</a>
          <a class="p-2 link-secondary" href="#">Style</a>
          <a class="p-2 link-secondary" href="#">Travel</a>
        </nav>
      </div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col" v-for="article in articles" :key="article.id">
                  <div class="card border-0 m-3">
                    <p class="card-text"><span class="badge bg-dark">{{ article.kategori }}</span></p>
                    <img :src="article.foto" height="200" :alt="article.judul" style="object-fit: cover;">
                    <div class="card-body">
                      <h5 class="card-title">{{ article.judul }}</h5>
                      <p class="card-text">{{ article.konten }}</p>
                    </div>
                  </div>
            </div>
        </div>
  </div>
</div>
</template>

<script>
  export default {
    name: 'articlesIndex',
    props: {
      articles: Array
    },
    data() {
        return {
          article: [],
            search: ''
        }
    },
    filterArtikel() {

                fetch("https://janjidokter.herokuapp.com/article/search/"+this.search)
                    .then(response => response.json())
                    .then(data=>{
                        this.article=data;
                    })

            }
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