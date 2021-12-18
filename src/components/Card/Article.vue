<template>
            <div class="col">
                  <div class="card border-0 m-3">
                    <p class="card-text"><span class="badge bg-dark">{{ article.kategori }}</span></p>
                    <img :src="article.foto" height="200" :alt="article.judul" style="object-fit: cover;">
                    <div class="card-body border">
                      <h5 class="card-title">{{ article.judul }}</h5>
                      <p class="card-text">{{ article.konten.substring(0,63)+"..." }}</p>
                      <hr>
                      <router-link :to="{ name: 'Artikel', params: { id: article.id }}" class="link">
                            <p id="paragraph">Baca Selengkapnya</p>
                      </router-link>
                    </div>
                  </div>
            </div>
</template>

<script>
export default {
    name: "ArticleItem",
    props: ['article']
}
</script>
<style scoped>
.link{
  text-decoration: none !important;
}

#paragraph{
  margin-bottom: 0px;
}

</style>

