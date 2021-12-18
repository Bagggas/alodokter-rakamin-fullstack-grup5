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
                <h4 class="mb-3 fw-bold">Forgot Password</h4>
                <p class="fs-6 text-muted">Silahkan masukkan email akun anda yang telah terdaftar. Periksa pada inbox atau spam email anda untuk mendapatkan intruksi lanjut untuk merubah password.</p>

                <div class="input-group mb-3">
                    <span class="input-group-text" id="basic-addon1"><img src="/css/Alo Asset/mail-black.png" alt="mail icon" width="15"></span>
                    <input type="email" class="form-control" id="floatingInput" placeholder="Your email">
                </div>
                <button class="w-100 btn btn-lg btn-primary rounded-pill fs-5 mb-3" type="submit">Kirim Instruksi</button>
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
        this.$parent.closeModal2();
      },
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