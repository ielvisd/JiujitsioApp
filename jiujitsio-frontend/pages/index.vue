<template>
  <section class="container">
    <h1>Jiujitsio</h1>
    <div v-for="example in examples" :key="example.id">
      <p>{{example.name}}</p>
    </div>
  </section>
</template>

<script>
export default {
  middleware: ["auth"],
  data() {
    return {
      examples: []
    };
  },
  methods: {
    async updateExamples() {
      this.examples = await this.$axios.$get("/examples");
    }
  },
  mounted() {
    this.updateExamples();
  }
};
</script>

<style>
.container {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}
</style>

