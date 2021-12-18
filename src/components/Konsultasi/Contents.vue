<template>
<div class="container mb-5">
    <div class="row p-4 pb-0 pe-lg-0 pt-lg-5 align-items-center">
      <div class="col-lg-6 p-3 p-lg-5 pt-lg-3">
        <h3 class="display-5 fw-bold lh-1">Cari dan Temukan Dokter Terbaik</h3>
        <!-- <p class="lead"></p> -->
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-2 g-3 py-5">
          <div class="col d-flex align-items-start">
            <img class="bi text-muted flex-shrink-0 me-3" src="/css/Alo Asset/users-blue.svg" alt="Gratis Konsultasi" width="25" height="25">
            <div>
              <h5 class="mb-0">Gratis Konsultasi</h5>
              <p class="text-muted">Daftar dan dapatkan konsultasi gratis dengan dokter terbaik</p>
            </div>
          </div>
          <div class="col d-flex align-items-start">
            <img class="bi text-muted flex-shrink-0 me-3" src="/css/Alo Asset/file-blue.svg" alt="Gratis Konsultasi" width="25" height="25">
            <div>
              <h5 class="mb-0">Temukan Informasi Kesehatan</h5>
              <p class="text-muted">Dapatkan informasi yang akurat dari sumber yang terpercaya</p>
            </div>
          </div>
          <div class="col d-flex align-items-start">
            <img class="bi text-muted flex-shrink-0 me-3" src="/css/Alo Asset/map-blue.svg" alt="Gratis Konsultasi" width="25" height="25">
            <div>
              <h5 class="mb-0">Temukan Dokter Terbaik</h5>
              <p class="text-muted">Temukan dokter terbaik yang dapat membantu anda</p>
            </div>
          </div>
        </div>
        <div class="d-grid gap-2 d-md-flex justify-content-md-start mb-4 mb-lg-3">
          <router-link type="button" class="btn btn-primary btn-lg px-4 me-md-2 fw-bold" to="/signup">Daftar Sekarang</router-link>
        </div>
      </div>
      <div class="col-10 col-sm-8 col-lg-6">
        <img src="/css/Alo Asset/dokter.png" class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700" height="500" loading="lazy">
      </div>
    </div>
  <div class="container px-4 py-5 mt-5" id="hanging-icons">
    <h3 class="pb-1">Buat janji dengan cepat dan mudah</h3>
    <p class="fs-6 text-muted mb-5">Buat janji dengan ribuan dokter yang telah berpengalaman dan dari rumah sakit terbaik serta dapatkan kepastian jadwal booking.</p>
    <div class="row row-cols-1 row-cols-md-3 g-4">
          <Doctor
            v-for="doctor in doctors"
            v-bind:key="doctor.id"
            v-bind:doctor="doctor"
          />
        </div>
  </div>
</div>
</template>

<script>
import Doctor from '@/components/Card/Doctor.vue'
export default {
    name: 'articlesIndex',
    props: ['doctors'],
    components: {
      Doctor
    },
}
</script>
