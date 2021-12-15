<template>
    <Navbar/>
    <Contents :articles='articles' />
    <Footer/>
</template>

<script>
// @ is an alias to /src
import Navbar from '@/components/layouts/Navbar.vue'
import Footer from '@/components/layouts/Footer.vue'
import Contents from '@/components/Detail/Contents.vue'

export default {
  components: {
      Navbar,
      Contents,
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
};
</script>
