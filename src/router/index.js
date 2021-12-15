import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/tentang-kami',
    name: 'TentangKami',
    component: () => import('../views/TentangKami.vue')
  },
  {
    path: '/konsultasi',
    name: 'Konsultasi',
    component: () => import('../views/Konsultasi.vue')
  },
  // {
  //   path: '/artikel',
  //   name: 'Artikels',
  //   component: () => import('../views/Artikel.vue')
  // },
  {
    path: '/artikel/detail/:id',
    name: 'Artikel',
    component: () => import('../views/Artikel.vue'),
    props: true
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
