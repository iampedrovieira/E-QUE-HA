<template>
  <v-card class="cartao" elevation="2" outlined>
    <v-row>
      <v-col cols="2">
        <v-img
          class="image"
          contain
          width="75"
          height="75"
          :aspect-ratio="4 / 3"
          :src="imgPath(artigo.produtoid, artigo.imagens)"
        ></v-img>
      </v-col>

      <v-col>
        <div class="produto-info">
          <p class="text-left text-body-1">{{ this.artigo.nome }}</p>
          <p class="text-left">{{ this.artigo.preco }}€</p>
        </div>

        <div class="quantidadeC">
          <p class="text-subtitle-1">Quantidade:</p>

          <div class="quantidade">
            <p
              class="text-subtitle-1 font-weight-bold input-quantidadeC text-left"
            >
              {{ this.artigo.quantidade }}
            </p>
          </div>

          <div class="butoes">
            <v-btn
              @click="this.menosQuantidade"
              class="mx-1"
              fab
              dark
              x-small
              elevation="1"
              color="primary"
            >
              <v-icon x-small dark> mdi-minus </v-icon>
            </v-btn>
            <v-btn
              @click="this.maisQuantidade"
              class="mx-1"
              fab
              dark
              x-small
              elevation="1"
              color="primary"
            >
              <v-icon x-small dark> mdi-plus </v-icon>
            </v-btn>
          </div>
        </div>
      </v-col>
    </v-row>
  </v-card>
</template>

<script>
export default {
  props: ["artigo"],
  data: () => ({}),
  methods: {
    maisQuantidade() {
      //Vai ao store editar o artigo em questao
      const id = this.artigo.produtoid;
      this.$store.dispatch("carrinho/alterarMaisArtigo", id);
    },
    menosQuantidade() {
      //Vai ao store editar o artigo em questao
      const id = this.artigo.produtoid;
      this.$store.dispatch("carrinho/alterarMenosArtigo", id);
    },
    imgPath(id, img) {
      if (id <= 30) {
        return require("../../public/imagens/" + id + "_1.webp");
      } else {
        //Coluna da bd
        return require("../../public/imagens/" + img.split("||")[0]);
      }
    },
  },
};
</script>

<style>
.produto-info {
  display: flex;
  flex-direction: column;
  line-height: 0.4rem;
}
.quantidadeC {
  display: flex;
  flex-direction: row;
}
.butoes {
  display: flex;
  align-items: center;
  justify-content: center;
  padding-left: 2rem;
  padding-bottom: 0.8rem;
}
</style>