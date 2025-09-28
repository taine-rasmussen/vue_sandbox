<script setup lang="ts">
import { ref } from 'vue'

const gameGrid = ref(Array(9).fill(null))
const playerTurn = ref(true)

const handleCellClick = (cell: any, index: number) => {
  console.log(cell, index, gameGrid.value[index], playerTurn.value)

  // check cell isnt already filled
  if(gameGrid.value[index] != null) return

  // assign cell value based on turn
  const cellValue = playerTurn.value ? 1 : 0

  // return cell value
  gameGrid.value[index] = cellValue
  
  //update player turn
  playerTurn.value = !playerTurn.value
}
</script>

<template>
  <div class="wrapper">
    <p>Sandbox</p>
    <div class="gameGrid">
      <div v-for="(cell, index) in gameGrid" :key="index" class="gameCell" @click="() => handleCellClick(cell, index)">
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