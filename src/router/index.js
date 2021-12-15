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
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
