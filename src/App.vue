<script setup lang="ts">
  import { ref } from 'vue'

  const gameGrid = ref(Array(9).fill(0))
  console.log(gameGrid)

</script>

<template>
  <div class="wrapper">
    <p>Sandbox</p>
    <div class="gameGrid">
      <div v-for="(cell, index) in gameGrid" class="gameCell">
        <div :key="index">{{ cell }}</div>
      </div>
    </div>
  </div>
</template>

<style scoped>
  p {
    color: red;
    font-weight: bold;
  }

  .wrapper {
    display: flex;
    width: 100%;
    height: 100%;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }

  .gameGrid {
    display: flex;
    flex-wrap: wrap;
    width: 456px;
    padding: 8px;
  }

  .gameCell {
    display: flex;
    border: 1px solid blue;
    height: 150px;
    width: 150px;
    align-items: center;
    justify-content: center;
  }
</style>
