import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import About from '../views/About.vue'
import GalleryPage from '../views/Gallery.vue'
import TestimonialsPage from '../views/Testimonials.vue'
import ArticlesPage from '../views/Articles.vue'
import NotFound from '../views/NotFound.vue' // Import the 404 page

const routes = [
  { path: '/', component: Home },
  { path: '/about', component: About },
  { path: '/gallery', component: GalleryPage },
  { path: '/testimonials', component: TestimonialsPage },
  { path: '/articles', component: ArticlesPage },
  // Catch-all route for 404 Not Found
  { path: '/:pathMatch(.*)*', name: 'NotFound', component: NotFound },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
})

export default router
