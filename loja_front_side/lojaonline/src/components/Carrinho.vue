<template>
  <v-navigation-drawer v-model="isOpen" width="30rem" fixed temporary right>
    <div class="carrinho-top">
      <p class="text-left text-h5">Carrinho</p>
      <v-spacer></v-spacer>
      <v-icon @click="removerCarrinho" class="icon-lixo">
        mdi-trash-can
      </v-icon>
    </div>

    <div class="conteudo-artigos">
      <div v-for="item in this.artigos" v-bind:key="item.produtoid">
        <artigo :artigo="item" class="artigo"></artigo>
      </div>
    </div>

    <div class="total">
      <p class="text-left text-h6 font-weight-bold total">
        Total: {{ this.total }}€
      </p>
    </div>

    <div class="buttons">
      <v-btn class="ma-2" outlined color="blue darken-2" @click="comprarArtigo">
        <v-icon>mdi-cart-outline</v-icon>
        Comprar
      </v-btn>
    </div>
  </v-navigation-drawer>
</template>

<script>
import ArtigoCarrinho from "@/components/ArtigoCarrinho.vue";

export default {
  data: () => ({}),
  computed: {
    isOpen: {
      get() {
        return this.$store.getters["appbar/getOpenCarrinho"];
      },
      set(val) {
        this.$store.commit("appbar/setOpenCarrinho", val);
      },
    },
    isLogin() {
      return this.$store.getters["appbar/getLogin"];
    },
    artigos: {
      get() {
        return this.$store.getters["carrinho/getArtigos"];
      },
      set(val) {
        console.log(val);
      },
    },
    total: {
      get() {
        return this.$store.getters["carrinho/getTotal"];
      },
      set(val) {
        return this.$store.commit("carrinho/setTotal", val);
      },
    },
  },
  watch: {
    isLogin() {
      this.$store.dispatch("carrinho/loadArtigos");
    },
    artigos: function () {
      this.$store.dispatch("carrinho/totalCompra");
    },
  },
  methods: {
    comprarArtigo() {
      if (this.$store.getters["appbar/getLogin"]) {
        this.$router.push("/compra");
      } else {
        this.$store.commit("appbar/setShowLoginDialog", true);
      }
    },
    removerCarrinho() {
      console.log(this.$store.getters["appbar/getLogin"]);
      if (this.$store.getters["appbar/getLogin"]) {
        this.$store.dispatch("carrinho/removerDB");
        this.$store.commit("carrinho/setListaArtigos", []);
      } else {
        localStorage.removeItem("carrinho");
        this.$store.commit("carrinho/setListaArtigos", []);
      }
    },
  },
  //Sempre que este comonente é criado corre isto
  created: function () {
    console.log("criou carrinho");
    this.$store.dispatch("carrinho/loadArtigos");
    this.$store.dispatch("carrinho/totalCompra");
  },
  components: {
    artigo: ArtigoCarrinho,
  },
};
</script>

<style>
.carrinho-top {
  display: flex;
  flex-direction: row;
  align-items: baseline;
  max-height: 2%;
  margin-top: 1rem;
  padding-left: 1rem;
}
.icon-lixo {
  margin-right: 2rem;
}
.conteudo-artigos {
  overflow: scroll;
  overflow-x: hidden;
  height: 75%;
  padding: 10px;
}
.artigo {
  margin-top: 10px;
}
.total {
  margin-top: 2rem;
  padding-left: 10px;
}
.buttons {
  height: 5%;
}
</style>