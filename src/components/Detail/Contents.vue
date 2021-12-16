<template>
<div class="container">
  <div class="row m-2">
    <div class="col-sm-8 d-inline">
    <p class="h4">{{ article.judul }}</p>
    <p><small>Oleh : {{ article.penulis }}.</small></p>
    <img :src="article.foto" class="img-fluid mb-5" alt="Artikel Pentingnya Menjaga Kesehatan Gigi dan Mulut">

    <p>{{ article.konten }}</p>
    </div>

    <div class="col-sm-4">
    <h4>Artikel Terkait</h4>
    <div class="card shadow-sm p-3 mb-5 bg-body" style="max-width: 540px;">
      <div class="row g-0 d-flex align-items-center">
        <div class="col-md-4">
          <img src="/css/Alo Asset/hero-artikel.png" class="img-fluid" alt="Artikel Pentingnya Menjaga Kesehatan Gigi dan Mulut">
        </div>
        <div class="col-md-8">
          <div class="card-body">
            <p class="card-text"><small class="text-muted">Gigi</small></p>
            <p class="card-title fw-bold">Pentingan mengajarkan kesehatan gigi dan mulut</p>
            <p class="card-text"><small>Oleh : Adiwijaya P.</small></p>
          </div>
        </div>
      </div>
    </div>
    </div>
  </div>
</div>
</template>

<script>
    export default {
       name: 'Detail',

       data(){
           return {
              id: this.$route.params.id, //this is the id from the browser
              article: Array,
           }
       },
       async created() {
          // GET request using fetch with async/await
          const response = await fetch("https://janjidokter.herokuapp.com/article/detail/"+this.id);
          const data = await response.json();
          this.article = data;
      }
    }
</script>

<style scoped>
  .card {
    border-radius: 15px;
  }
</style>

