<template>
  <p>{{ state.message }}</p>
</template>

<script lang="ts">
import { defineComponent, ref } from 'vue'

export default defineComponent({
  name: 'App',
  setup() {
    const message = ref({
      todo: []
    })
    return {
      state: {
        message: "Hello Vue3 + TypeScript!"
      }
    }
  }
})
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>