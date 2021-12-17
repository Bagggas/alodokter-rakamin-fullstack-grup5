<template>
    <Navbar/>
    <Contents :doctors='doctors'/>
    <Footer/>
</template>

<script>
// @ is an alias to /src
import Navbar from '@/components/layouts/Navbar.vue'
import Contents from '@/components/Konsultasi/Contents.vue'
import Footer from '@/components/layouts/Footer.vue'

export default {
  components: {
      Contents,
      Navbar,
      Footer  
      },
    data() {
        return {
            doctors: [{}],
            search: ''
        };
    },
    created:function() {
        fetch('https://janjidokter.herokuapp.com/doctor')
        .then(res => res.json())
        .then(res => {
        this.doctors = res.data;
        })
    },
}
</script>