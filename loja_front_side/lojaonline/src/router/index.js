import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import Admin from "../views/Admin.vue";
import User from "../views/User.vue";
import Pesquisa from "../views/Search.vue";
import Produto from "../views/Product.vue";
import Categoria from "../views/CategoriaS.vue";
import Compra from "../views/Compra.vue";
Vue.use(VueRouter);

const routes = [{
        path: "/",
        name: "Home",
        component: Home
    },
    {
        path: "/admin",
        name: "Admin",
        component: Admin
    },
    {
        path: "/perfil",
        name: "User",
        component: User
    },
    {
        path: "/produto/:id",
        name: "Produto",
        component: Produto
    },
    {
        path: "/categoria/:id",
        name: "Categoria",
        component: Categoria
    },
    {
        path: "/pesquisa/:query",
        name: "Pesquisa",
        component: Pesquisa
    },
    {
        path: "/compra",
        name: "Compra",
        component: Compra
    },
];

const router = new VueRouter({
    mode: "history",
    base: process.env.BASE_URL,
    routes
});

export default router;