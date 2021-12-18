<template>
<div class="col">
<div class="card">
  <div class="card-header d-flex justify-content-between bg-light m-3 mb-0">
    <img class="card-img-top" :src="doctor.foto" alt="Doctor" style="max-width: 65px"/>
    <h5><span class="badge fw-light" style="color: #198754">{{ doctor.spesialis }}</span></h5>
  </div>
  <div class="card-body lh-1 m-3 mt-0">
    <h6 class="fw-bold">{{ doctor.nama }}</h6>
    <ul class="d-flex text-muted" style="padding-left: 0px">
      <li class="mt-0" style="list-style: none; margin-right: 10px"><small>{{ doctor.jumlah_pasien }} pasien</small></li>
      <li class="m-3 mt-0"><small>{{ doctor.rumah_sakit }}, {{ doctor.lokasi }}</small></li>
    </ul>
    <p class="fw-bold" style="font-size: 14px">About</p>
    <p class="fs-6 m-0 text-muted"><small>{{ doctor.about.substring(0,100)+"..." }}</small></p>
  </div>
  <div class="card-footer m-3 mt-0">
    <ul class="d-flex align-item-center" style="padding-left: 0px">
      <li style="list-style: none;">
          <img class="icon-consult" src="/css/Alo Asset/shopping-bag.svg">
      </li>
      <li style="list-style: none;">
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