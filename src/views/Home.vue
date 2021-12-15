<template>
    <Navbar/>
    <Contents/>
    <Footer/>
</template>

<script>
// @ is an alias to /src
import Contents from '@/components/Home/Contents.vue'
import Navbar from '@/components/layouts/Navbar.vue'
import Footer from '@/components/layouts/Footer.vue'

export default {
  components: {
      Contents,
      Navbar,
      Footer  
      }
}
</script>
