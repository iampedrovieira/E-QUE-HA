<template>
  <v-hover v-slot="{ hover }">
    <v-card
      width="200"
      tile
      elevation="0"
      :ripple="false"
      class="artigo"
      @click="goToProduto(artigo.produtoid)"
    >
      <v-img :src="imgPath()" width="200" contain class="align-end">
        <v-fade-transition>
          <div
            v-if="hover"
            class="transition-fast-in v-card--reveal"
            style="height: 100%"
          >
            <v-img :src="imgPath2()" width="200" contain></v-img>
          </div>
        </v-fade-transition>
      </v-img>
      <p class="text-subtitle-1 text-left texto font-weight-bold">
        {{ artigo.nome }}
      </p>
    </v-card>
  </v-hover>
</template>

<script>
export default {
  name: "ArtigoHomeTrending",
  props: ["artigo"],
  methods: {
    imgPath() {
      if (this.artigo.produtoid <= 30) {
        return require("../../public/imagens/" +
          this.artigo.produtoid +
          "_1.webp");
      } else {
        //Coluna da bd
        return require("../../public/imagens/" +
          this.artigo.imagens.split("||")[0]);
      }
    },
    imgPath2() {
      if (this.artigo.produtoid <= 30) {
        return require("../../public/imagens/" +
          this.artigo.produtoid +
          "_2.webp");
      } else {
        //Coluna da bd
        return require("../../public/imagens/" +
          this.artigo.imagens.split("||")[1]);
      }
    },
    goToProduto(id) {
      this.$router.push("/produto/" + id);
    },
  },
  data: () => ({}),
};
</script>

<style scoped>
.artigo {
  cursor: pointer;
  padding: 1rem;
  margin: 0 2rem 0.5rem 2rem;
}
.texto {
  margin: 0;
}
</style>