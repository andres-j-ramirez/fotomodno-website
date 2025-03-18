<template>
  <!-- Hero Section with Full-Width Background -->
  <section class="relative w-full h-screen overflow-hidden mb-8">
    <img
      src="https://images.unsplash.com/photo-1596478261452-7a16ddc97c97?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3"
      alt="Hero About Fotomodno"
      class="absolute inset-0 w-full h-full object-cover"
    />
    <div class="absolute inset-0 bg-black bg-opacity-40"></div>
    <div class="relative flex flex-col justify-center items-center h-full text-center px-4">
      <h1
        class="text-5xl md:text-6xl font-extrabold uppercase text-fotogreen tracking-wide mb-4 drop-shadow-md"
      >
        About Fotomodno
      </h1>
      <p class="text-2xl md:text-3xl text-white max-w-2xl leading-relaxed">
        Celebrating the essence of raw photography and true beauty, worldwide.
      </p>
    </div>
  </section>

  <!-- Main Content Container -->
  <section class="max-w-screen-xl mx-auto px-6 mb-12 space-y-8">
    <!-- Paragraph 1 -->
    <p class="text-center text-xl text-gray-800 leading-relaxed">
      Fotomodno is happy to embrace a movement focused on the
      <strong>essence of raw photography</strong>, celebrating the natural beauty of people from all
      over the world. Our goal has always been to unify the raw essence of everyday individuals,
      reflecting genuine moments and emotions without the need for heavy editing.
    </p>

    <!-- Paragraph 2 -->
    <p class="text-center text-xl text-gray-800 leading-relaxed">
      Our mission is to empower individuals to embrace their true selves by highlighting the raw
      beauty captured in every moment. We believe that the most compelling images remain untouched,
      capturing authentic expressions that celebrate individuality and diversity.
    </p>

    <!-- Paragraph 3 -->
    <p class="text-center text-xl text-gray-800 leading-relaxed">
      Founded by visionaries who value honesty and natural aesthetics, Fotomodno stands at the
      forefront of a new movement in fashion and photography. We feature a diverse array of models,
      photographers, and artists who share our commitment to showcasing unfiltered, everyday life.
    </p>
  </section>

  <!-- Mosaic of Additional Images -->
  <section class="w-full px-6 mb-12">
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
      <!-- Image 1 -->
      <img
        src="https://images.unsplash.com/photo-1485218173291-62104d18e1c1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3"
        alt="About Fotomodno 1"
        class="w-full h-auto object-cover rounded shadow-lg"
      />
      <!-- Image 2 -->
      <img
        src="https://images.unsplash.com/photo-1512376125713-158d3de52286?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3"
        alt="About Fotomodno 2"
        class="w-full h-auto object-cover rounded shadow-lg"
      />
      <!-- Image 3 -->
      <img
        src="https://images.unsplash.com/flagged/photo-1579195107754-c8fe9ee2ddfc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3"
        alt="About Fotomodno 3"
        class="w-full h-auto object-cover rounded shadow-lg"
      />
      <!-- Image 4 -->
      <img
        src="https://images.unsplash.com/photo-1592216445636-b38915fa91e8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3"
        alt="About Fotomodno 4"
        class="w-full h-auto object-cover rounded shadow-lg"
      />
      <!-- Image 5 -->
      <img
        src="https://images.unsplash.com/photo-1591084849782-5bb6c74d24ae?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3"
        alt="About Fotomodno 5"
        class="w-full h-auto object-cover rounded shadow-lg"
      />
      <!-- Image 6 -->
      <img
        src="https://images.unsplash.com/photo-1571932404401-688edf70f0fd?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.0.3"
        alt="About Fotomodno 6"
        class="w-full h-auto object-cover rounded shadow-lg"
      />
    </div>
  </section>

  <!-- Final Quote -->
  <section class="max-w-screen-xl mx-auto px-6 mb-12">
    <blockquote
      class="mx-auto border-l-4 border-fotogreen pl-4 text-gray-800 italic text-xl tracking-wide text-center max-w-lg"
    >
      “We are full of imperfections which makes us the marvelous unique beings we are.”
    </blockquote>
  </section>
</template>

<script setup>
// No script needed for static content
</script>

<style scoped>
.drop-shadow-md {
  text-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
}
</style>
