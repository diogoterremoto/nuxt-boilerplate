<template lang="pug">
.container
  h1 {{ $t('welcome') }}
  pre {{ data }}
</template>

<script>
import axios from 'axios'

export default {
  async asyncData({ params }) {
    const { data } = await axios.get(
      `https://jsonplaceholder.typicode.com/todos/${params.id}`
    )
    return { data }
  }
}
</script>
