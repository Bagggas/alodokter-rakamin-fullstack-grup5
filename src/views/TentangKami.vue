<template>
    <Navbar/>
    <Contents/>
</template>

<script>
// @ is an alias to /src
import Navbar from '@/components/layouts/Navbar.vue'
import Contents from '@/components/TentangKami/Contents.vue'

export default {
  components: {
      Navbar,
      Contents  
      }
}
</script>