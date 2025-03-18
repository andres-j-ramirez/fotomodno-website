<template>
  <section class="flex flex-col items-center justify-center h-screen bg-gray-100">
    <h1 class="text-6xl font-extrabold text-fotogreen">404</h1>
    <p class="text-xl mt-4 text-gray-700">Page Not Found</p>
    <router-link
      to="/"
      class="mt-8 px-4 py-2 bg-fotogreen text-white rounded hover:bg-black transition-colors duration-300"
    >
      Go Home
    </router-link>
  </section>
</template>

<script setup>
// No script needed for this simple 404 page.
</script>

<style scoped>
/* You can adjust styling if needed */
</style>
