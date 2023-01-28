import { createApp } from 'vue'
import App from '../javascript/app.vue'

document.addEventListener('DOMContentLoaded', () => {
  createApp(App).mount('#app')
})

// ↓active_storageがjsでつかえるようになるのか？！？！
// import ActiveStorage from '@rails/activestorage'
// ActiveStorage.start()

