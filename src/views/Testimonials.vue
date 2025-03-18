<template>
  <!-- Outer section with a subtle background -->
  <section class="w-full bg-gray-50 py-8 px-6">
    <!-- Page Title & Intro -->
    <div class="max-w-screen-lg mx-auto text-center mb-8">
      <h1 class="text-4xl font-extrabold uppercase text-fotogreen tracking-wide mb-2">
        Testimonials
      </h1>
      <p class="text-lg text-gray-700">
        Real words from those who’ve joined our raw and authentic journey.
      </p>
      <p class="text-lg text-gray-700 mt-2 max-w-2xl mx-auto">
        We believe every story matters, and these experiences highlight the power of natural beauty
        and honest imagery. Scroll through to see what our models and photographers have to say!
      </p>
    </div>

    <!-- Testimonials Grid -->
    <div class="max-w-screen-lg mx-auto grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
      <div
        v-for="(testimonial, index) in testimonials"
        :key="index"
        class="bg-white rounded shadow p-4 flex flex-col transition-transform duration-500 hover:scale-105"
      >
        <!-- Image -->
        <img
          :src="testimonial.image"
          alt="Testimonial Image"
          class="w-full h-48 object-cover rounded mb-4"
        />

        <!-- Name & Role -->
        <h3 class="text-xl font-bold text-gray-800">
          {{ testimonial.name }}
          <span v-if="testimonial.role" class="text-sm text-gray-500 ml-2"
            >— {{ testimonial.role }}</span
          >
        </h3>

        <!-- Quote -->
        <p class="text-gray-700 italic mt-2 flex-1">“{{ testimonial.quote }}”</p>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue'

/**
 * Sample testimonials data. Each item has:
 * - image: from the 7 links you provided
 * - name: can be "Anonymous" or a made-up name
 * - role: "Model", "Photographer", etc. (optional)
 * - quote: snippet from your references or made-up text
 */
const testimonials = ref([
  {
    image:
      'https://images.unsplash.com/photo-1548502499-ef49e8cf98d4?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Anonymous',
    role: 'Model',
    quote: 'Being part of Fotomodno changed how I see myself—completely unfiltered and raw!',
  },
  {
    image:
      'https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?q=80&w=1742&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Maria R.',
    role: 'Photographer',
    quote: 'This magazine gave me the freedom to showcase true beauty without digital alterations.',
  },
  {
    image:
      'https://images.unsplash.com/photo-1542567455-cd733f23fbb1?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Jordan K.',
    quote: 'The raw essence of each photo reveals so much more personality and soul.',
  },
  {
    image:
      'https://images.unsplash.com/photo-1542083131-01357347695a?q=80&w=1674&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Anonymous',
    role: 'Model',
    quote: 'It’s inspiring to see my natural look celebrated instead of hidden behind filters.',
  },
  {
    image:
      'https://images.unsplash.com/photo-1641041751727-24c310767e47?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Stephanie C.',
    role: 'Fashion Blogger',
    quote: 'I’ve never felt more confident than when I posed for Fotomodno—no retouching needed!',
  },
  {
    image:
      'https://images.unsplash.com/photo-1475870434835-a633fd526088?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Anonymous',
    quote: 'This new wave of honesty in photography is exactly what the world needs right now.',
  },
  {
    image:
      'https://images.unsplash.com/photo-1555528182-fb968eb34abb?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Chris M.',
    role: 'Photographer',
    quote: 'Shooting for Fotomodno taught me that genuine emotion trumps any retouch or filter.',
  },
  {
    image:
      'https://images.unsplash.com/photo-1602525962574-3bc829fbed3c?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Kim L.',
    role: 'Model',
    quote: 'I never realized how powerful natural shots could be until I joined Fotomodno.',
  },
  {
    image:
      'https://images.unsplash.com/photo-1580552833700-f99eed8b4de2?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Anonymous',
    quote: 'This magazine has redefined what “beauty” means—no retouching, no faking, just truth.',
  },
  {
    image:
      'https://images.unsplash.com/photo-1621592161727-e96f3859ad43?q=80&w=1473&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Danielle O.',
    role: 'Fashion Enthusiast',
    quote: 'Seeing real people in these pages reminds me that confidence isn’t about perfection.',
  },
  {
    image:
      'https://images.unsplash.com/photo-1554248889-15c8ca7dbba4?q=80&w=1462&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Anonymous',
    role: 'Photographer',
    quote: 'Fotomodno taught me to embrace raw light and angles—no more hiding behind filters!',
  },
  {
    image:
      'https://images.unsplash.com/photo-1481141726884-014a1f27d993?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3',
    name: 'Riley S.',
    quote:
      'It’s refreshing to see a publication that isn’t afraid of genuine expressions and skin textures.',
  },
])
</script>

<style scoped>
/* You can adjust spacing or colors here if needed */
</style>
