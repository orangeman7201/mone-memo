<template>
  <ul v-for="todo in todos">
    <li>{{ todo }}</li>
  </ul>

  <input type="text" v-model="input">
  <button @click="submit">
    追加
  </button>
</template>

<script lang="ts">
import { defineComponent, ref, Ref } from 'vue'

export default defineComponent({
  name: 'App',
  setup() {
    const todos: Ref<string[]> = ref([])

    const input = ref('')

    const submit = () => {
      todos.value.push(input.value)
      input.value  = ''
    }
    return {
      todos,
      input,
      submit
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