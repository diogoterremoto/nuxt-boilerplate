<template lang="pug">
.container
  pre {{data}}
</template>

<script>
import axios from 'axios'

export default {
  async asyncData({ params }) {
    const { data } = await axios.get(
      'https://jsonplaceholder.typicode.com/todos'
    )
    return { data }
  }
}
</script>
