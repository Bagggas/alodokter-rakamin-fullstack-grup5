<template>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
      <div class="container-fluid text-center">
        <a class="navbar-brand text-light" href="#" style="font-weight: bold; margin-left:20px">ALODOKTER</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02" >
          <div class="mx-auto">
            <ul class="navbar-nav mb-2 mb-lg-0 text-center">
              <li class="nav-item"><router-link class="nav-link px-2 link-light" to="/" style="font-weight: bold; margin-right: 50px">Home</router-link></li>
              <li class="nav-item"><router-link class="nav-link px-2 link-light" to="/konsultasi" style="font-weight: bold;">Konsultasi</router-link></li>
              <li class="nav-item"><router-link class="nav-link px-2 link-light" to="/tentang-kami" style="font-weight: bold; margin-left:50px">Tentang Kami</router-link></li>
            </ul>
          </div>
          <button class="btn btn-outline-light m-2" @click="showModal" >Masuk</button>
          <router-link class="btn btn-light m-2" to="/signup">Daftar Gratis</router-link>
        </div>
      </div>
    </nav>
    <Login
      v-show="isModalVisible"
    />
    <ForgotPassword
      v-show="isModal2Visible"
    />
</template>

<script>
  import Login from '@/components/Auth/Login.vue';
import ForgotPassword from '@/components/Auth/ForgotPassword.vue';

  export default {
    name: 'Navbar',
    components: {
      Login,
      ForgotPassword
    },
    data() {
      return {
        isModalVisible: false,
        isModal2Visible: false,
      };
    },
    methods: {
      showModal() {
        this.isModalVisible = true;
      },
      closeModal() {
        this.isModalVisible = false;
      },
      showModal2() {
        this.isModal2Visible = true;
      },
      closeModal2() {
        this.isModal2Visible = false;
      }
    }
  };
</script>

<style scoped>
  .navbar-light .navbar-toggler{
    color: #ffff;
    border-color: #ffff;
  }
    .bg-primary{
        background-color: #3570d2 !important;
    }

    .navbar-dark .navbar-nav .nav-link{
      color: #ffff !important;
    }
  
  .button{
    background-color: #3570d2 !important;
    border-color: #3570d2;
  }
</style>
