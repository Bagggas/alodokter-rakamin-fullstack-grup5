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
      <h2>Artikel terkini untuk anda</h2>
      <hr class="space">
      <div class="nav-scroller py-1 mb-2 jarak">
        <nav class="nav d-flex justify-content-between">
          <a class="p-2 link-secondary" href="#">Nutrisi</a>
          <a class="p-2 link-secondary" href="#">Diabetes</a>
          <a class="p-2 link-secondary" href="#">Jantung</a>
          <a class="p-2 link-secondary" href="#">Kesehatan Mulut</a>
          <a class="p-2 link-secondary" href="#">Kolesterol Tinggi</a>
          <a class="p-2 link-secondary" href="#">Diet</a>
          <a class="p-2 link-secondary" href="#">Kecantikan</a>
          <a class="p-2 link-secondary" href="#">Kulit</a>
          <a class="p-2 link-secondary" href="#">Kehamilan</a>
          <a class="p-2 link-secondary" href="#">Bayi</a>
        </nav>
      </div>
      <hr class="spacey">
      <div class="row">
          <Features :feature='feature'/>
      </div>
        <hr>
        <div class="d-flex bd-highlight">
          <div class="p-2 flex-grow-1 bd-highlight">
            <input type="text" class="form-control" id="inputPassword" placeholder="Masukkan keywords">
          </div>
          <div class="p-2 bd-highlight">
            <div class="btn btn-primary">Search</div>
          </div>
        </div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
          <ArtikelCard
            v-for="article in data"
            v-bind:key="article.id"
            v-bind:article="article"
          />
        </div>
        <center>
        <p>
          <button class="btn btn-primary" @click="prevPage" style="margin-right:5px">Sebelumnya</button> 
          <button class="btn btn-primary" @click="nextPage">Selanjutnya</button>
        </p>
        </center>
  </div>
</div>
</template>

<script>
import ArtikelCard from '@/components/Card/Article.vue'
import Features from '@/components/Card/Features.vue'

  export default {
    name: 'articlesIndex',
    props: ['articles'],
    components: {
      ArtikelCard,
      Features
    },
    data() {
      return {
        data: this.articles.data,
        feature: this.articles.data[0],
        pageSize: 3,
        currentPage:1,
      }
    },
    methods: {
        nextPage:function() {
        if((this.currentPage*this.pageSize) < this.data.length) this.currentPage++;
        },
        prevPage:function() {
        if(this.currentPage > 1) this.currentPage--;
        }

    },
    computed:{
      sortedCats:function() {
        return this.articles.filter((row, index) => {
          let start = (this.currentPage-1)*this.pageSize;
          let end = this.currentPage*this.pageSize;
          if(index >= start && index < end) return true;
        });
      }
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
      /* background-color: black; */
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
    .jarak{
      padding: 5px;
    }
    .link-secondary{
      text-decoration: none;
    }
    .space{
      margin-bottom: -5px;
    }
    .spacey{
      margin-top: -10px;
    }
    .nav-scroller {
      position: relative;
      z-index: 2;
      height: 2.75rem;
      overflow-y: hidden;
    }

    .nav-scroller .nav {
      display: flex;
      flex-wrap: nowrap;
      padding-bottom: 1rem;
      margin-top: -1px;
      overflow-x: auto;
      text-align: center;
      white-space: nowrap;
      -webkit-overflow-scrolling: touch;
    }

    .nav-scroller .nav-link {
      padding-top: .75rem;
      padding-bottom: .75rem;
      font-size: .875rem;
    }
</style>