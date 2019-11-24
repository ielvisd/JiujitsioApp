<template>
  <div class="h-screen">
    <div v-if="$auth.$state.loggedIn">
      <div type="error" :value="error">{{error}}</div>
      <p>Logged in as {{$auth.$state.user.email}}</p>
      <div>
        <button @click="logout">Log out</button>
      </div>
    </div>
    <div v-else class="my-20 mx-auto max-w-xs">
      <form @submit.prevent="login" class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
        <div class="mb-4">
          <label class="block text-gray-700 text-sm font-bold mb-2" for="username">Username</label>
          <input
            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            id="email"
            type="email"
            placeholder="test@test.com"
            v-model="email"
          />
        </div>
        <div class="mb-6">
          <label class="block text-gray-700 text-sm font-bold mb-2" for="password">Password</label>
          <input
            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
            id="password"
            type="password"
            placeholder="******************"
            v-model="password"
          />
        </div>
        <div class="flex items-center justify-between">
          <button
            type="submit"
            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
          >Sign In</button>
          <a
            class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800"
            href="#"
          >Forgot Password?</a>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      email: "",
      password: "",
      error: null
    };
  },
  methods: {
    login: function() {
      console.log("test login");
      this.$auth
        .login({
          data: {
            user: {
              email: this.email,
              password: this.password
            }
          }
        })
        .catch(e => {
          this.error = e + "";
        });
    },
    logout: function() {
      this.$auth.logout().catch(e => {
        this.error = e + "";
      });
    }
  }
};
</script>
