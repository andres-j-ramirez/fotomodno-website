<template>
  <div class="relative w-full h-screen overflow-hidden">
    <transition-group name="fade" mode="out-in">
      <div
        v-for="(slide, index) in slides"
        :key="index"
        v-show="currentSlide === index"
        class="absolute inset-0"
      >
        <!-- Full-Width Image -->
        <img :src="slide.image" alt="Hero Image" class="object-cover w-full h-full" />

        <!-- Dark Overlay for better text contrast -->
        <div class="absolute inset-0 bg-black bg-opacity-40"></div>

        <!-- Centered Text Overlay with fade-in-up animation -->
        <div
          class="absolute inset-0 flex flex-col justify-center items-center text-center px-4 overlay-text"
        >
          <h2 class="text-4xl md:text-6xl font-bold text-white mb-4">
            {{ slide.title }}
          </h2>
          <p class="text-xl md:text-2xl text-white mb-6">
            {{ slide.subtitle }}
          </p>
          <router-link
            to="/gallery"
            class="px-6 py-3 bg-fotogreen text-white font-bold rounded hover:bg-black transition"
          >
            Explore Now
          </router-link>
        </div>
      </div>
    </transition-group>
  </div>
</template>

<script setup>
import { ref, onMounted, onBeforeUnmount } from 'vue'

const slides = [
  {
    image:
      'https://images.unsplash.com/photo-1741985979528-d729bb2783b5?q=80&w=1288&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    title: 'Natural Beauty. No Modifications.',
    subtitle: "The World's First Natural Magazine",
  },
  {
    image:
      'https://images.unsplash.com/photo-1742201877377-03d18a323c18?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    title: 'Raw & Authentic',
    subtitle: 'Embrace Your Natural Look',
  },
  {
    image: 'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3',
    title: 'Inspiring Confidence',
    subtitle: 'See beauty in its purest form',
  },
]

const currentSlide = ref(0)
let timer = null

const changeSlide = () => {
  currentSlide.value = (currentSlide.value + 1) % slides.length
}

onMounted(() => {
  timer = setInterval(changeSlide, 5000) // 5 seconds per slide
})

onBeforeUnmount(() => {
  clearInterval(timer)
})
</script>

<style scoped>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 1s;
}
.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}

/* Keyframes for fade in up animation */
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* Apply the animation to the text overlay */
.overlay-text {
  animation: fadeInUp 1s ease-out;
}
</style>
