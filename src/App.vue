<script setup lang="ts">
import { ref } from 'vue'

const gameGrid = ref(Array(9).fill(null))
const playerTurn = ref(true)

const handleCellClick = (index: number) => {
  if(gameGrid.value[index] != null) return
  const cellValue = playerTurn.value ? 1 : 0

  gameGrid.value[index] = cellValue
  playerTurn.value = !playerTurn.value
}
</script>

<template>
  <div class="wrapper">
    <p>Sandbox</p>
    <div class="gameGrid">
      <div v-for="(cell, index) in gameGrid" :key="index" class="gameCell" @click="() => handleCellClick(index)">
        {{ cell }}
      </div>
    </div>
  </div>
</template>

<style scoped>
p {
  color: salmon;
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
  display: grid;
  grid-template-columns: repeat(3, minmax(150px, 1fr)); 
  gap: 8px;
  padding: 8px;
}

.gameCell {
  display: flex;
  border: 3px solid lightyellow;
  aspect-ratio: 1 / 1; 
  align-items: center;
  justify-content: center;
  font-size: 20px;
  border-radius: 10%;
}
</style>