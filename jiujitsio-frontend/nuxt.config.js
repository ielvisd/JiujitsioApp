const path = require("path");

module.exports = {
  css: ["~assets/css/tailwind.css"],

  /*
   ** Headers of the page
   */
  head: {
    title: "jiujitsio-frontend",
    meta: [
      { charset: "utf-8" },
      { name: "viewport", content: "width=device-width, initial-scale=1" },
      { hid: "description", name: "description", content: "Nuxt.js project" }
    ],
    link: [{ rel: "icon", type: "image/x-icon", href: "/favicon.ico" }]
  },
  modules: ["@nuxtjs/axios", "@nuxtjs/auth"],
  auth: {
    endpoints: {
      login: { url: "/users/sign_in" },
      logout: { url: "/users/sign_out", method: "delete" },
      user: { url: "/users/current" }
    }
  },
  axios: {
    host: "localhost",
    port: 8080,
    prefix: "/api"
  },
  /*
   ** Customize the progress bar color
   */
  loading: { color: "#3B8070" },
  /*
   ** Build configuration
   */
  build: {
    postcss: {
      plugins: {
        tailwindcss: path.resolve(__dirname, "./tailwind.config.js")
      }
    },
    /*
     ** Run ESLint on save
     */
    extend(config, { isDev, isClient }) {
      if (isDev && isClient) {
        config.module.rules.push({
          enforce: "pre",
          test: /\.(js|vue)$/,
          loader: "eslint-loader",
          exclude: /(node_modules)/
        });
      }
    }
  }
};
