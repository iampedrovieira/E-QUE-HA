<template>
  <v-app id="inspire">
    <app-bar> </app-bar>
    <menu-lateral> </menu-lateral>
    <carrinho> </carrinho>
    <v-main>
      <v-container class="container">
        <login> </login>
        <signup></signup>
        <p class="text-h6">Resultado da pesquisa: '{{ this.query }}'</p>

        <div v-if="artigos.length > 0">
          <v-row class="lista-artigos">
            <v-col
              v-for="artigo in artigos"
              v-bind:key="artigo.id"
              class="mt-2 artigo"
              cols="3"
            >
              <artigo v-bind:artigo="artigo"> </artigo>
            </v-col>
          </v-row>
          <v-pagination
            v-model="page"
            :length="paginas"
            circle
            class="my-4"
            :total-visible="7"
          ></v-pagination>
        </div>
        <div v-else>
          <p class="text-subtitle-1">Não foram encontrados resultados</p>
        </div>
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
import AppBar from "@/components/AppBar.vue";
import Login from "@/components/Login.vue";
import Signup from "@/components/Signup.vue";
import Menu from "@/components/Menu.vue";
import Carrinho from "@/components/Carrinho.vue";
import Artigo from "@/components/Artigo.vue";

export default {
  data() {
    return {
      query: null,
      page: 1,
    };
  },
  watch: {
    page: function () {
      this.$store.commit("pesquisa/setArtigosVisiveis", this.page);
    },
  },
  computed: {
    artigos: {
      get() {
        return this.$store.getters["pesquisa/getArigosVisiveis"];
      },
      set(val) {
        this.$store.commit("pesquisa/setArigosVisiveis", val);
      },
    },
    paginas: {
      get() {
        return this.$store.getters["pesquisa/getPaginas"];
      },
    },
  },
  components: {
    "app-bar": AppBar,
    login: Login,
    signup: Signup,
    "menu-lateral": Menu,
    carrinho: Carrinho,
    artigo: Artigo,
  },
  methods: {},
  created: function () {
    this.query = this.$route.params.query;
    this.$store.dispatch("pesquisa/loadListArtigos", this.query);
  },
};
</script>

<style scoped>
.container {
  text-align: left;
}
.artigo {
  margin-left: auto;
  margin-right: auto;
}

.lista-artigos {
  display: flex !important;
  justify-items: center;
  align-items: center;
}
</style>