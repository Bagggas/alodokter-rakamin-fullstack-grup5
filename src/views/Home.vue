<template>
    <Contents :articles='articles'/>
    <Footer/>
</template>

<script>
// @ is an alias to /src
import Contents from '@/components/Home/Contents.vue'
import Footer from '@/components/layouts/Footer.vue'

export default {
  components: {
      Contents,
      Footer  
      },
    data() {
        return {
            articles: [{}],
            search: '',
            currentPage: 1,
            totalPages: 10
        };
    },
    created:function() {
        fetch('https://janjidokter.herokuapp.com/article')
        .then(res => res.json())
        .then(res => {
        this.articles = res;
        })
    }
}
</script>
