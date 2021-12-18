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
                        <input name="name" v-model="nama" placeholder="Nama Lengkap" class="form-control" type="text">
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group mb-3 col-lg-6 mx-auto">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <i class="glyphicon glyphicon-envelope"></i>
                        </span>
                        <input name="email" v-model="email" placeholder="Email" class="form-control" type="text">
                    </div>
                </div>
                <div class="form-group mb-3 col-lg-6 mx-auto">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <i class="glyphicon glyphicon-user"></i>
                        </span>
                        <input name="password" v-model="password" placeholder="Kata Sandi" class="form-control" type="password">
                    </div>
                </div>
                <div class="form-group mb-3 col-lg-6 mx-auto">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <i class="glyphicon glyphicon-user"></i>
                        </span>
                        <input name="password" v-model="password_confirmation" placeholder="Konfirmasi Kata Sandi" class="form-control" type="password">
                    </div>
                </div>
                <div class="form-group mb-3 col-lg-6 mx-auto">
                    <small><input type="checkbox" @click="changeState()" name="checkbox"> Saya Setuju dengan Syarat & Ketentuan </small>
                </div>
                <!-- Button -->
                <div class="form-group mb-3 col-lg-6 mx-auto">
                    <button type="submit" class="btn btn-primary" v-bind:class="[{ 'disabled': isChecked }]" @click="submitForm()">Daftar <span></span>
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
            isChecked: true,
            postResult: null,
            nama: '',
            email: '',
            password: ''
        }
    },
    methods: {
        changeState() {
        this.isChecked = !this.isChecked
        },
      fortmatResponse(res) {
        return JSON.stringify(res, null, 2);
      },

      async submitForm() {
        const postData = {
            nama: this.nama,
            email: this.email,
            password: this.password,
            password_confirmation: this.password_confirmation
        };

        try {
          const res = await fetch(`https://janjidokter.herokuapp.com/pasien/register`, {
            method: "post",
            headers: {
              "Content-Type": "application/json",
              "x-access-token": "token-value",
            },
            body: JSON.stringify(postData),
          });

          if (!res.ok) {
            console.log(res);
            const message = `An error has occured: ${res.status} - ${res.statusText}`;
            throw new Error(message);
          }

          const data = await res.json();

          const result = {
            status: res.status + "-" + res.statusText,
            headers: {
              "Content-Type": res.headers.get("Content-Type"),
              "Content-Length": res.headers.get("Content-Length"),
            },
            data: data,
          };

          this.email = '';
          this.postResult = this.fortmatResponse(result);
        } catch (err) {
          this.postResult = err.message;
        }
      },

      clearPostOutput() {
        this.postResult = null;
      },
    }
}
</script>