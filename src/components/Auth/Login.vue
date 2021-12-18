<template>
  <transition name="modal-fade">
    <div class="modal-backdrop">
      <div class="modal-lg"
        role="dialog"
      >
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" @click="close"></button>
      </div>

        
    <section
          class="modal-body d-flex justify-content-center m-2"
          id="modalDescription"
        >
          <main class="col-md-8 form-signin text-center">
            <form>
                <h4 class="mb-3 fw-bold">Login</h4>
                <p class="fs-6 text-muted">Alo! Masuk dan jelajahi informasi kesehatan terkini dan terlengkap sesuai kebutuhanmu di sini!</p>

                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1"><img src="/css/Alo Asset/mail-black.png" alt="mail icon" width="15"></span>
                    <input type="email" class="form-control" id="floatingInput" placeholder="Your email">
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1"><img src="/css/Alo Asset/lock-black.png" alt="lock icon" width="15"></span>
                    <input type="password" class="form-control" id="floatingPassword" placeholder="Your password">
                </div>

                <div class="checkbox mb-3 text-start">
                <small class="mt-3 mb-3" @click="close(); showModal();" type="submit">Forgot Password ?</small>
                </div>
                <button class="w-100 btn btn-lg btn-primary rounded-pill fs-5 mb-3" type="submit">Login</button>
                <p class="fs-6 mb-3" @click="close" type="submit">Skip Login..</p>
                <div class="container mb-3">
                    <div class="row">
                        <div class="col align-self-center text-center rounded-3 bg-light shadow p-3 m-2">
                            <img src="/css/Alo Asset/icon-google.png" alt="google icon" width="25">
                        </div>
                        <div class="col align-self-center text-center rounded-3 bg-light shadow p-3 m-2">
                            <img src="/css/Alo Asset/icon-facebook.png" alt="facebook icon" width="25">
                        </div>
                        <div class="col align-self-center text-center rounded-3 bg-light shadow p-3 m-2">
                            <img src="/css/Alo Asset/icon-apple.svg" alt="apple icon" width="25">
                        </div>
                    </div>
                </div>
                <p>Pengguna baru?
                <router-link class="fw-bold mt-3" @click="close" to="/signup" style="font-size: 14px;">
                     Silahkan daftar gratis disini
                </router-link>
                </p>
                <small class="text-muted mt-3">Dengan masuk atau mendaftar, Anda menyetujui Syarat & Ketentuan serta Privasi ALODOKTER.</small>
            </form>
            </main>
        </section>
        
        <footer class="modal-footer">
        </footer>
      </div>
    </div>
  </transition>
</template>

<script>

  export default {
    name: 'Modal',
    methods: {
      close() {
        this.$parent.closeModal();
      },
      showModal() {
        this.$parent.showModal2();
      }
    },
  };
</script>

<style scoped>
  .modal-backdrop {
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    background-color: rgba(136, 136, 136, 0.3);
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .modal-lg {
    background: #FFFFFF;
    border-radius: 10px;
    box-shadow: 2px 2px 20px 1px;
    overflow-x: auto;
    display: flex;
    flex-direction: column;
  }

  .modal-header,
  .modal-footer {
    padding: 15px;
    display: flex;
  }

  .modal-header {
    position: relative;
    border-bottom: 1px solid #eeeeee;
    color: #000000;
    justify-content: space-between;
  }

  .modal-footer {
    border-top: 1px solid #eeeeee;
    flex-direction: column;
  }

  .modal-body {
    position: relative;
    padding: 20px 10px;
  }

  .modal-fade-enter,
  .modal-fade-leave-to {
    opacity: 0;
  }

  .modal-fade-enter-active,
  .modal-fade-leave-active {
    transition: opacity .5s ease;
  }
</style>