<template>
  <nav class="bg-zinc-300 w-full">
    <!-- Top bar: Logo + Hamburger/Desktop Nav -->
    <div class="px-4 py-4 w-full flex items-center justify-between">
      <!-- Logo on the Left -->
      <div class="text-3xl md:text-4xl font-extrabold uppercase tracking-wide">
        <span
          class="bg-gradient-to-r from-fotogreen to-black text-transparent bg-clip-text cursor-pointer transition-colors duration-300 select-none"
          @click="navigateTo('/')"
        >
          Fotomodno
        </span>
      </div>

      <!-- Hamburger Button (hidden on md+) on the Right -->
      <button class="md:hidden text-black focus:outline-none" @click="menuOpen = !menuOpen">
        <svg
          class="w-6 h-6"
          fill="none"
          stroke="currentColor"
          stroke-width="2"
          viewBox="0 0 24 24"
          stroke-linecap="round"
          stroke-linejoin="round"
        >
          <path d="M4 6h16M4 12h16M4 18h16" />
        </svg>
      </button>

      <!-- Desktop Nav (shown on md+). -->
      <ul class="hidden md:flex space-x-8 uppercase text-base font-bold tracking-wide">
        <li>
          <span
            class="cursor-pointer transition-colors duration-300 hover:text-black"
            :class="[currentPath === '/' ? 'text-black' : 'text-fotogreen']"
            @click="navigateTo('/')"
          >
            Home
          </span>
        </li>
        <li>
          <span
            class="cursor-pointer transition-colors duration-300 hover:text-black"
            :class="[currentPath === '/about' ? 'text-black' : 'text-fotogreen']"
            @click="navigateTo('/about')"
          >
            About
          </span>
        </li>
        <li>
          <span
            class="cursor-pointer transition-colors duration-300 hover:text-black"
            :class="[currentPath === '/gallery' ? 'text-black' : 'text-fotogreen']"
            @click="navigateTo('/gallery')"
          >
            Gallery
          </span>
        </li>
        <li>
          <span
            class="cursor-pointer transition-colors duration-300 hover:text-black"
            :class="[currentPath === '/testimonials' ? 'text-black' : 'text-fotogreen']"
            @click="navigateTo('/testimonials')"
          >
            Testimonials
          </span>
        </li>
        <li>
          <span
            class="cursor-pointer transition-colors duration-300 hover:text-black"
            :class="[currentPath === '/articles' ? 'text-black' : 'text-fotogreen']"
            @click="navigateTo('/articles')"
          >
            Articles
          </span>
        </li>
      </ul>
    </div>

    <!-- Mobile Nav (shown on small screens if menuOpen is true) -->
    <div v-if="menuOpen" class="md:hidden px-4 pb-4 flex justify-end">
      <ul
        class="flex flex-col items-end space-y-2 uppercase text-base font-bold tracking-wide text-right"
      >
        <li>
          <span
            class="cursor-pointer transition-colors duration-300 hover:text-black"
            :class="[currentPath === '/' ? 'text-black' : 'text-fotogreen']"
            @click="navigateTo('/')"
          >
            Home
          </span>
        </li>
        <li>
          <span
            class="cursor-pointer transition-colors duration-300 hover:text-black"
            :class="[currentPath === '/about' ? 'text-black' : 'text-fotogreen']"
            @click="navigateTo('/about')"
          >
            About
          </span>
        </li>
        <li>
          <span
            class="cursor-pointer transition-colors duration-300 hover:text-black"
            :class="[currentPath === '/gallery' ? 'text-black' : 'text-fotogreen']"
            @click="navigateTo('/gallery')"
          >
            Gallery
          </span>
        </li>
        <li>
          <span
            class="cursor-pointer transition-colors duration-300 hover:text-black"
            :class="[currentPath === '/testimonials' ? 'text-black' : 'text-fotogreen']"
            @click="navigateTo('/testimonials')"
          >
            Testimonials
          </span>
        </li>
        <li>
          <span
            class="cursor-pointer transition-colors duration-300 hover:text-black"
            :class="[currentPath === '/articles' ? 'text-black' : 'text-fotogreen']"
            @click="navigateTo('/articles')"
          >
            Articles
          </span>
        </li>
      </ul>
    </div>
  </nav>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import { useRouter, useRoute } from 'vue-router'

const router = useRouter()
const route = useRoute()

const currentPath = ref(route.path)
const menuOpen = ref(false)

function navigateTo(path) {
  router.push(path)
  currentPath.value = path
  menuOpen.value = false
}

onMounted(() => {
  router.afterEach((to) => {
    currentPath.value = to.path
  })
})
</script>

<style scoped>
/* Removes tap highlights on mobile devices */
* {
  -webkit-tap-highlight-color: transparent;
}
</style>
