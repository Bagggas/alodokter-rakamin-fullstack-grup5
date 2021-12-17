<template>
<div class="container">
  <div class="row m-2">
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
    <div class="col-sm-8 d-inline">
    <p class="h3 jarak">{{ article.judul }}</p>
    <p><small>Oleh : {{ article.penulis }}.</small></p>
    <img :src="article.foto" class="img-fluid mb-5" alt="Artikel Pentingnya Menjaga Kesehatan Gigi dan Mulut">

    <p>{{ article.konten }}</p>
    </div>

    <div class="col-sm-4 jarak">
    <h4>Artikel Terkait</h4>
    <div class="card shadow-sm p-3 mb-5 bg-body">
      <div class="row g-0 d-flex align-items-center">
        <div class="col-md-4">
          <img src="/css/Alo Asset/hero-artikel.png" style="width: 160px; height: 94.28px; border-radius: 10px;" class="img-fluid" alt="Artikel Pentingnya Menjaga Kesehatan Gigi dan Mulut">
        </div>
        <div class="col-lg-7">
          <div class="card-body">
            <p class="card-text"><small class="text-muted" style="font-size: 14px; margin: 0px;">Gigi</small></p>
            <p class="card-title fw-bold" style="font-weight: bold; margin: 0px;">Pentingan mengajarkan kesehatan gigi dan mulut</p>
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

<style scoped>
.bg-body{
  height: 165px;
  width: 430px;
}
.card-body{
  margin-top: -10px;
  margin-right: -10px;
}
.jarak{
  margin-top: 0px;
}
.link-secondary{
  text-decoration: none;
}
.space{
  margin-top: 30px;
  margin-bottom: -5px;
}
.spacey{
  margin-top: -10px;
  margin-bottom: 30px;
}
</style>
