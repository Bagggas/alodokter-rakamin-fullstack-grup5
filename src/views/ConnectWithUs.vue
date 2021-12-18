<template>
    <ConnectWithUs/>
    <Footer/>
</template>

<script>
import Footer from '@/components/layouts/Footer.vue'
import ConnectWithUs from '@/components/ConnectWithUs'

export default {
    name: 'connect',
    components: {
      ConnectWithUs,
      Footer  
    },
}
</script>