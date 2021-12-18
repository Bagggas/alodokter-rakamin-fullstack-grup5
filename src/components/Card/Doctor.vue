<template>
<div class="col">
<div class="card">
  <div class="card-header d-flex justify-content-between bg-light">
    <img class="card-img-top" src="/css/Alo Asset/foto_dokter_copy-1.png" alt="Doctor" style="max-width: 65px"/>
    <h5><span class="badge fw-light" style="color: #198754">{{ doctor.spesialis }}</span></h5>
  </div>
  <div class="card-body lh-1">
    <h6>Dr. {{ doctor.nama }}</h6>
    <ul class="d-flex text-muted" style="padding-left: 0px">
      <li class="m-2" style="list-style: none;"><small>{{ doctor.jumlah_pasien }} pasien</small></li>
      <li class="m-2"><small>{{ doctor.rumah_sakit }}, {{ doctor.lokasi }}</small></li>
    </ul>
    <p class="fs-6 m-0 text-muted"><small>{{ doctor.about }}</small></p>
  </div>
  <div class="card-footer">
    <ul class="d-flex align-item-center" style="padding-left: 0px">
      <li class="d-flex" style="list-style: none;">
          <img class="icon-consult" src="/css/Alo Asset/cart-grey.png">
          <p><small class="text-dark">Rp. {{ doctor.harga_konsul }}</small></p>
      </li>
    </ul>
  </div>
</div>
</div>
</template>

<script>
export default {
    name: "DoctorItem",
    props: ['doctor']
}
</script>

<style scoped>
.card-header{
  background: none !important;
  border-bottom: none;
}
.card:hover{
  box-shadow: 0 .75rem .75rem rgba(0,0,0,.075) !important;
}
.icon-consult{
  align-items: left; 
  width: 20px !important; 
  height: 20px !important;
}
    .card-footer {
        background: none!important;
        border-top: none !important;
        background-color: none !important;
    }
</style>