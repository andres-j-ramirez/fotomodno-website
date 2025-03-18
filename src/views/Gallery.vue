<template>
  <!-- Hero Section with Full-Width Background -->
  <section class="relative w-full h-screen overflow-hidden mb-8">
    <img
      src="https://images.unsplash.com/photo-1701884691134-5eb2211ba6fe?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3"
      alt="Hero Gallery Fotomodno"
      class="absolute inset-0 w-full h-full object-cover"
    />
    <div class="absolute inset-0 bg-black bg-opacity-40"></div>
    <div class="relative flex flex-col justify-center items-center h-full text-center px-4">
      <h1
        class="text-5xl md:text-6xl font-extrabold uppercase text-fotogreen tracking-wide mb-4 drop-shadow-md"
      >
        Gallery
      </h1>
      <p class="text-2xl md:text-3xl text-white max-w-2xl leading-relaxed">
        Explore a vibrant range of unedited, authentic images from around the world
      </p>
    </div>
  </section>

  <!-- Mosaic of Images with Lightbox -->
  <section class="max-w-screen-xl mx-auto px-6 mb-12 text-center">
    <div class="grid grid-cols-1 md:grid-cols-3 gap-2">
      <div
        v-for="(image, idx) in images"
        :key="idx"
        class="relative cursor-pointer"
        @click="openLightbox(idx)"
      >
        <img :src="image" alt="Gallery Image" class="w-full object-contain h-auto" />
        <!-- Hover Overlay -->
        <div
          class="absolute inset-0 flex items-center justify-center bg-black bg-opacity-50 opacity-0 hover:opacity-100 transition"
        >
          <span class="text-white text-lg font-bold">Click to enlarge</span>
        </div>
      </div>
    </div>

    <!-- Lightbox Component -->
    <vue-easy-lightbox
      :visible="lightboxVisible"
      :imgs="images"
      :index="lightboxIndex"
      @hide="lightboxVisible = false"
    />
  </section>
</template>

<script setup>
import { ref } from 'vue'
import VueEasyLightbox from 'vue-easy-lightbox'

// Your array of image URLs for the mosaic
const images = [
  'https://images.unsplash.com/photo-1701884691134-5eb2211ba6fe?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3',
  'https://images.unsplash.com/photo-1632809186614-d0c1e0c9195f?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3',
  'https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3',
  'https://images.unsplash.com/photo-1536896407451-6e3dd976edd1?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3',
  'https://images.unsplash.com/photo-1741900461172-51f4c0159842?q=80&w=1285&auto=format&fit=crop&ixlib=rb-4.0.3',
  'https://images.unsplash.com/photo-1549237511-6b64e006ce65?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3',
  'https://images.unsplash.com/photo-1742095114901-3aabdc98a980?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3',
  'https://images.unsplash.com/photo-1736899087453-7d41270bd4e6?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3',
  'https://images.unsplash.com/photo-1742210591800-7705b53b29e7?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3',
]

const lightboxVisible = ref(false)
const lightboxIndex = ref(0)

function openLightbox(idx) {
  lightboxIndex.value = idx
  lightboxVisible.value = true
}
</script>

<style scoped>
.drop-shadow-md {
  text-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
}
</style>
