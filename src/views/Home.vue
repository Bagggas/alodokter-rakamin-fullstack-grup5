<template>
    <Navbar/>
    <Contents/>
</template>

<script>
// @ is an alias to /src
import Contents from '@/components/Home/Contents.vue'
import Navbar from '@/components/layouts/Navbar.vue'

export default {
  components: {
      Contents,
      Navbar  
      }
}
</script>
