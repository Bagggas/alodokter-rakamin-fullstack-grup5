<template>
    <Contents/>
    <Footer/>
</template>

<script>
// @ is an alias to /src
import Footer from '@/components/layouts/Footer.vue'
import Contents from '@/components/TentangKami/Contents.vue'

export default {
  components: {
      Contents,
      Footer
      }
}
</script>
