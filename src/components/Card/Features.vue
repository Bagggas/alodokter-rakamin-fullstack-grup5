<template>
        <div class="card border-0 mb-3">
          <div class="row g-0">
            <div class="col-md-6">
              <img :src="feature.foto" :alt="feature.judul" style="height: 350px; width: 100%; object-fit: none;">
            </div>
            <div class="col-md-6 align-self-center">
              <div class="card-body">
                <p class="card-text">
                  <span class="badge bg-primary">{{ feature.kategori }}</span>
                  <span class="badge ms-2 bg-danger">Terbaru</span>
                  </p>
                <h5 class="card-title fw-bold h1">{{ feature.judul }}</h5>
                <p class="card-text">{{ feature.konten }}</p>
                <p class="card-text"><small class="text-muted">{{ feature.updated_at}}</small></p>
              </div>
            </div>
          </div>
        </div>
</template>

<script>
export default {
    name: "articleFeatures",
    props: ['feature']
}
</script>