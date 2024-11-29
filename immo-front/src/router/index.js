import { createRouter, createWebHistory } from "vue-router";
import HomeView from "../views/HomeView.vue";
import FormView from "../views/FormView.vue";
import LoginView from "../views/LoginView.vue";
import Single from "@/components/SinglePage/Single.vue";

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: "/home",
      name: "home",
      component: HomeView,
    },

    {
      path: "/form",
      name: "form",
      component: FormView,
    },

    {
      path: "/login",
      name: "login",
      component: LoginView,
    },

    {
      path: "/single/:id",
      name: "single",
      component: Single,
    },
    // {
    // path: "/about",
    // name: "about",
    // route level code-splitting
    // this generates a separate chunk (About.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    //  component: () => import("../views/AboutView.vue"),
    // },
  ],
});

export default router;
