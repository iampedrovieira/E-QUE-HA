<template>
  <v-card clas="container" elevation="6" outlined>
    <v-card-title> Morada </v-card-title>

    <div class="lista">
      <v-item-group active-class="primary">
        <v-container>
          <v-row>
            <v-col cols="4" md="3">
              <v-card elevation="3" outlined>
                <v-icon>mdi-plus</v-icon>
              </v-card>
            </v-col>

            <v-col
              v-for="item in this.moradas"
              v-bind:key="item.moradaid"
              cols="4"
              md="3"
            >
              <v-item v-slot="{ active, toggle }">
                <v-card
                  elevation="1"
                  outlined
                  @click="
                    toggle();
                    selectMorada(item, active);
                  "
                >
                  <v-card-title>{{ item.rua }}</v-card-title>
                  <div class="texto-morada">
                    <p class="text-left">{{ item.codigo_postal }}</p>
                    <p class="text-left">{{ item.pais }}</p>
                    <p class="text-left">
                      {{ item.descricao }}, {{ item.cidade }}
                    </p>
                  </div>
                  <v-scroll-y-transition>
                    <div
                      v-if="active"
                      class="display-3 flex-grow-1 text-center"
                    ></div>
                  </v-scroll-y-transition>
                </v-card>
              </v-item>
            </v-col>
          </v-row>
        </v-container>
      </v-item-group>
    </div>
    <div>
      <v-btn class="ma-2" color="blue darken-2" @click="clickVoltar">
        Voltar
      </v-btn>

      <v-btn
        class="ma-2"
        outlined
        color="blue darken-2"
        @click="clickContinuar"
      >
        Continuar
        <v-icon right>mdi-chevron-right</v-icon>
      </v-btn>
    </div>
    <v-snackbar
      v-model="snackbar"
      :timeout="timeout"
      bottom
      color="red"
      elevation="15"
    >
      Selecione uma morada
    </v-snackbar>
  </v-card>
</template>

<script>
export default {
  data: () => ({
    snackbar: false,
    timeout: 2000,
  }),
  methods: {
    clickVoltar() {
      this.$store.commit("compra/setStep", 2);
    },
    clickContinuar() {
      if (this.$store.getters["compra/getMorada"] != null) {
        this.$store.commit("compra/setStep", 4);
      } else {
        this.snackbar = true;
      }
    },
    selectMorada(morada, active) {
      console.log(this.$store.getters["compra/getMorada"]);
      if (!active) {
        console.log(morada);
        this.$store.commit("compra/setMorada", morada);
      } else {
        this.$store.commit("compra/setMorada", null);
      }
    },
  },
  computed: {
    moradas: {
      get() {
        return this.$store.getters["compra/getMoradas"];
      },
      set(val) {
        this.$store.commit("compra/setMoradas", val);
      },
    },
  },
};
</script>

<style scoped>
.lista {
  overflow: scroll;
  overflow-x: hidden;
  height: auto;
  height: 60vh;
  min-height: 60vh;
  max-height: 60vh;
  padding: 5px;
}
.texto-morada {
  padding-left: 1rem;
  line-height: 10px;
}
</style>