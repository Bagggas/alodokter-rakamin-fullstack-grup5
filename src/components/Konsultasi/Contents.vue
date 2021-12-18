<template>
<div class="container mb-5">
  <div class="container px-4 py-5" id="hanging-icons">
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
