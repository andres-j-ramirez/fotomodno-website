<template>
  <!-- Small Hero Section -->
  <section class="relative w-full h-40 md:h-56 overflow-hidden mb-8">
    <img
      src="https://images.unsplash.com/photo-1507525428034-b723cf961d3e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3"
      alt="Articles Hero"
      class="absolute inset-0 w-full h-full object-cover"
    />
    <div class="absolute inset-0 bg-black bg-opacity-50"></div>
    <div class="relative flex flex-col justify-center items-center h-full text-center px-4">
      <h1 class="text-3xl md:text-4xl font-extrabold uppercase text-white tracking-wide mb-2">
        Featured Articles
      </h1>
      <p class="text-sm md:text-base text-white">Discover our latest insights and stories.</p>
    </div>
  </section>

  <!-- Custom Slider Section -->
  <section class="py-8 px-4 bg-white max-w-screen-xl mx-auto">
    <div class="relative max-w-2xl mx-auto">
      <!-- Slide Container with Fade Transition -->
      <transition name="fade" mode="out-in">
        <div
          :key="currentIndex"
          class="p-4 border rounded shadow-lg flex flex-col transition-transform duration-500 hover:scale-105"
        >
          <img
            :src="articles[currentIndex].image"
            alt="Article Image"
            class="w-full h-48 object-cover rounded mb-4"
          />
          <h2 class="text-xl font-bold text-fotogreen mb-2">
            {{ articles[currentIndex].title }}
          </h2>
          <p class="text-gray-700 flex-1">
            {{ articles[currentIndex].snippet }}
          </p>
          <button
            class="mt-4 px-4 py-2 bg-fotogreen text-white uppercase font-bold rounded hover:bg-black transition-colors duration-300"
          >
            Read More
          </button>
        </div>
      </transition>

      <!-- Prev/Next Buttons -->
      <button
        class="absolute left-0 top-1/2 -translate-y-1/2 flex items-center justify-center w-10 h-10 bg-black/50 text-white rounded-full hover:bg-black/70 transition"
        @click="prevSlide"
        aria-label="Previous Slide"
      >
        <svg
          class="w-5 h-5"
          fill="none"
          stroke="currentColor"
          stroke-width="2"
          viewBox="0 0 24 24"
          stroke-linecap="round"
          stroke-linejoin="round"
        >
          <path d="M15 19l-7-7 7-7" />
        </svg>
      </button>
      <button
        class="absolute right-0 top-1/2 -translate-y-1/2 flex items-center justify-center w-10 h-10 bg-black/50 text-white rounded-full hover:bg-black/70 transition"
        @click="nextSlide"
        aria-label="Next Slide"
      >
        <svg
          class="w-5 h-5"
          fill="none"
          stroke="currentColor"
          stroke-width="2"
          viewBox="0 0 24 24"
          stroke-linecap="round"
          stroke-linejoin="round"
        >
          <path d="M9 5l7 7-7 7" />
        </svg>
      </button>

      <!-- Dot Indicators -->
      <div class="flex justify-center mt-4 space-x-2">
        <span
          v-for="(article, idx) in articles"
          :key="idx"
          @click="currentIndex = idx"
          :class="[
            'w-3 h-3 rounded-full cursor-pointer transition-colors duration-300',
            currentIndex === idx ? 'bg-fotogreen' : 'bg-gray-300',
          ]"
        ></span>
      </div>
    </div>
  </section>

  <!-- Call to Action Section -->
  <section class="w-full bg-gray-50 py-8">
    <div class="max-w-screen-xl mx-auto text-center">
      <h2 class="text-2xl font-bold text-fotogreen mb-4">Join Our Movement</h2>
      <button
        class="px-6 py-3 bg-fotogreen text-white font-bold uppercase rounded hover:bg-black transition-colors duration-300"
      >
        Subscribe Now
      </button>
    </div>
  </section>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const articles = ref([
  {
    id: 1,
    title: 'Embracing Natural Beauty',
    snippet:
      'Discover how embracing natural beauty can transform your perspective and empower your identity.',
    image:
      'https://images.unsplash.com/photo-1526040652367-ac003a0475fe?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3',
  },
  {
    id: 2,
    title: 'Raw Photography: The New Trend',
    snippet:
      'Raw photography is reshaping the industry. Learn why unedited images speak louder than ever.',
    image:
      'https://images.unsplash.com/photo-1512376125713-158d3de52286?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3',
  },
  {
    id: 3,
    title: 'Stories Behind the Lens',
    snippet:
      'Every photograph has a story. Explore the intimate tales behind some of our most striking images.',
    image:
      'https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3',
  },
  {
    id: 4,
    title: 'Unfiltered & Unedited',
    snippet:
      'The power of authenticity: Why unfiltered, unedited images resonate with real audiences.',
    image:
      'https://images.unsplash.com/photo-1542567455-cd733f23fbb1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3',
  },
  {
    id: 5,
    title: 'The Art of Imperfection',
    snippet: 'Discover the beauty in imperfection and how it reflects our true, unique selves.',
    image:
      'https://images.unsplash.com/photo-1542083131-01357347695a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3',
  },
  {
    id: 6,
    title: 'A New Perspective',
    snippet: 'Experience a fresh take on photography that celebrates authenticity over perfection.',
    image:
      'https://images.unsplash.com/photo-1641041751727-24c310767e47?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3',
  },
  {
    id: 7,
    title: 'Breaking Barriers',
    snippet:
      'Learn how raw imagery is challenging conventional beauty standards and inspiring change.',
    image:
      'https://images.unsplash.com/photo-1475870434835-a633fd526088?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3',
  },
])
const currentIndex = ref(0)
let intervalId = null

function nextSlide() {
  currentIndex.value = (currentIndex.value + 1) % articles.value.length
}
function prevSlide() {
  currentIndex.value = (currentIndex.value - 1 + articles.value.length) % articles.value.length
}

onMounted(() => {
  intervalId = setInterval(nextSlide, 8000)
})
onUnmounted(() => {
  clearInterval(intervalId)
})
</script>

<style scoped>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.6s;
}
.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>
