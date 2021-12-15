<template>
    <!-- <Navbar/> -->
    <Artikel :articles='articles' />
    <!-- <Footer/> -->
</template>

<script>
// @ is an alias to /src
// import Navbar from '@/components/layouts/Navbar.vue'
// import Footer from '@/components/layouts/Footer.vue'
// import Detail from '@/components/Artikel/Detail.vue'
import Artikel from '@/components/Artikel/Contents.vue'

export default {
  components: {
    //   Navbar,
      Artikel,
    //   Footer
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
