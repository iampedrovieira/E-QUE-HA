<template>
  <v-app id="inspire">
    <v-app-bar app color="white">
      <v-container class="py-0 fill-height">
        <v-img
          class="logo"
          max-height="57"
          max-width="134"
          src="../assets/logo.png"
          @click="goHome"
        ></v-img>

        <v-spacer></v-spacer>
        <v-btn text :ripple="false" @click="onClickLogout"> Logout </v-btn>
      </v-container>
    </v-app-bar>

    <v-main class="white main">
      <v-container>
        <listCompraItemDialog></listCompraItemDialog>
        <v-row>
          <v-col cols="2">
            <v-list>
              <v-list-item-group>
                <v-list-item @click="togglePerfil">
                  <v-list-item-icon>
                    <v-icon>mdi-account-outline</v-icon>
                  </v-list-item-icon>
                  <v-list-item-content>
                    <v-list-item-title class="text-left">
                      Perfil
                    </v-list-item-title>
                  </v-list-item-content>
                </v-list-item>

                <v-list-group :value="false" prepend-icon="mdi-cart-outline">
                  <template v-slot:activator>
                    <v-list-item-title class="text-left">
                      Encomendas
                    </v-list-item-title>
                  </template>

                  <v-list-item @click="toggleCompras('1')">
                    <v-list-item-icon>
                      <v-icon>mdi-dots-horizontal</v-icon>
                    </v-list-item-icon>
                    <v-list-item-title class="text-left">
                      A decorrer
                    </v-list-item-title>
                  </v-list-item>

                  <v-list-item @click="toggleCompras('2')">
                    <v-list-item-icon>
                      <v-icon>mdi-check</v-icon>
                    </v-list-item-icon>
                    <v-list-item-title class="text-left">
                      Concluidas
                    </v-list-item-title>
                  </v-list-item>
                </v-list-group>
              </v-list-item-group>
            </v-list>
          </v-col>

          <v-col>
            <perfil v-if="showPerfil"></perfil>
            <compras v-if="showCompras"></compras>
          </v-col>
        </v-row>
      </v-container>
    </v-main>
    <v-snackbar
      v-model="snackbar"
      :timeout="timeout"
      bottom
      color="green"
      elevation="15"
    >
      Compra feita com sucesso
    </v-snackbar>
  </v-app>
</template>

<script>
import perfil from "../components/Perfil";
import compras from "../components/ListCompras";
import listCompraItemDialog from "../components/ListCompraItemDialog.vue";

export default {
  data() {
    return {};
  },
  components: {
    perfil,
    compras,
    listCompraItemDialog,
  },
  methods: {
    goHome() {
      this.$router.push("/");
    },
    onClickLogout() {
      //Remover cookie
      localStorage.removeItem("token");
      //Mudar no store
      this.$store.commit("user/setLogin", false);
      this.$router.push("/");
    },
    togglePerfil() {
      this.showPerfil = true;
      this.showCompras = false;
    },
    toggleCompras(valor) {
      this.showCompras = true;
      this.showPerfil = false;
      this.$store.dispatch("user/loadListCompras", valor);
    },
    verifyLogin() {
      if (!this.$store.getters["user/getLogin"]) {
        this.$router.push("/");
      }
    },
  },
  created: async function () {
    await this.$store.dispatch("user/verifySession");

    if (!this.$store.getters["user/getLogin"]) {
      this.$router.push("/");
      this.$router.go();
    }
  },
  computed: {
    user: {
      get() {
        return this.$store.getters["user/getUser"];
      },
    },
    showPerfil: {
      get() {
        return this.$store.getters["user/getShowPerfil"];
      },
      set(val) {
        this.$store.commit("user/setShowPerfil", val);
      },
    },
    showCompras: {
      get() {
        return this.$store.getters["user/getShowCompras"];
      },
      set(val) {
        this.$store.commit("user/setShowCompras", val);
      },
    },
    snackbar: {
      get() {
        return this.$store.getters["user/getSnackbar"];
      },
      set(val) {
        this.$store.commit("user/setSnackbar", val);
      },
    },
    timeout: {
      get() {
        return this.$store.getters["user/getTimeout"];
      },
      set(val) {
        this.$store.commit("user/setTimeout", val);
      },
    },
  },
};
</script>

<style scoped>
.logo {
  cursor: pointer;
}
.main {
  margin-top: 1rem;
}
</style>