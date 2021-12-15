<template>
<div>
    <div class="container">
        <p class="h3 mt-5">Artikel Terkini</p>
        <p>Memberikan informasi seputar kesehatan pilihan terbaru</p>
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
    </div>
</div>
</template>

<script>
  export default {
    name: 'articles',
    props: {
      articles: Array,
    },
  }
</script>

<style scoped>
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
