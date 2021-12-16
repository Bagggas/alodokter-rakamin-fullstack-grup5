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
          <Features :feature='feature'/>
      </div>
      <hr>
      <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex justify-content-between">
          <a class="p-2 link-secondary" href="#">World</a>
          <a class="p-2 link-secondary" href="#">U.S.</a>
          <a class="p-2 link-secondary" href="#">Technology</a>
          <a class="p-2 link-secondary" href="#">Design</a>
          <a class="p-2 link-secondary" href="#">Culture</a>
        </nav>
      </div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
          <ArtikelCard
            v-for="article in data"
            v-bind:key="article.id"
            v-bind:article="article"
          />
        </div>
        <p>
          <button @click="prevPage">Previous</button> 
          <button @click="nextPage">Next</button>
        </p>
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