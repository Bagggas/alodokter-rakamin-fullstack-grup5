<template>
  <div class="container mt-3">
    <div class="d-flex justify-content-center">
        <main class="form-signin text-center col-lg-6">
            <form class="px-4 py-5 my-5 text-center border border-primary shadow p-3 mb-5 bg-body rounded">
                <h4>
                    <b>Daftar</b>
                </h4>
                <p class="text-muted fs-6 mb-3">Dapatkan Akses ke Berbagai Info Kesehatan Terkini & Terpercaya</p>
                <!-- Text input-->
                <div class="form-group mb-3 col-lg-6 mx-auto">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <i class="glyphicon glyphicon-earphone"></i>
                        </span>
                        <input name="name" placeholder="Nama Lengkap" class="form-control" type="text">
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group mb-3 col-lg-6 mx-auto">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <i class="glyphicon glyphicon-envelope"></i>
                        </span>
                        <input name="email" placeholder="Email" class="form-control" type="text">
                    </div>
                </div>
                <div class="form-group mb-3 col-lg-6 mx-auto">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <i class="glyphicon glyphicon-user"></i>
                        </span>
                        <input name="password" placeholder="Kata Sandi" class="form-control" type="password">
                    </div>
                </div>
                <div class="form-group mb-3 col-lg-6 mx-auto">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <i class="glyphicon glyphicon-user"></i>
                        </span>
                        <input name="password" placeholder="Konfirmasi Kata Sandi" class="form-control" type="password">
                    </div>
                </div>
                <div class="form-group mb-3 col-lg-6 mx-auto">
                    <small><input type="checkbox" @click="changeState()" name="checkbox"> Saya Setuju dengan Syarat & Ketentuan </small>
                </div>
                <!-- Button -->
                <div class="form-group mb-3 col-lg-6 mx-auto">
                    <button type="submit" class="btn btn-primary" v-bind:class="[{ 'disabled': isChecked }]">Daftar <span></span>
                    </button>
                </div>
            </form>
        </main>
    </div>
  </div>
</template>

<script>
export default {
    name: 'daftar',
    data() {
        return {
            isChecked: true
        }
    },
    methods: {
        changeState() {
        this.isChecked = !this.isChecked
        }
    }
}
</script>