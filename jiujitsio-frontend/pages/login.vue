<template>
  <div>
    <div v-if="$auth.$state.loggedIn">
      <div type="error" :value="error">{{error}}</div>
      <p>Logged in as {{$auth.$state.user.email}}</p>
      <div>
        <button @click="logout">Log out</button>
      </div>
    </div>
    <div v-else>
      <div type="error" :value="error">{{error}}</div>
      <div>
        <form>
          <input v-model="email" label="Email" />
          <input v-model="password" label="Password" type="password" />
        </form>
        <div>
          <button @click="login">Log in</button>
        </div>
      </div>
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
