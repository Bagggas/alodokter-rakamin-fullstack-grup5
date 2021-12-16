<template>
    <Navbar/>
    <Contents :articles='articles'/>
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
      },
    data() {
        return {
            articles: null
        };
    },
    async created() {
        // GET request using fetch with async/await
        const response = await fetch("https://janjidokter.herokuapp.com/article");
        const data = await response.json();
        this.articles = data.data;
    }
}
</script>
