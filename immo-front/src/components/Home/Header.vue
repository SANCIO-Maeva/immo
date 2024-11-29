<script setup>
import Nav from "../Nav.vue";
</script>
<template>
  <div class="hero">
  <Nav/>
    <!-- Texte principal -->
    <div class="hero-text">
      <h1>
        Magnifique <br />
        maisons faites <br />
        pour vous.
      </h1>
      <p>
        In oculis quidem se esse admonere interesse <br />
        enim maxime placeat, facere possimus, omnis. <br />
        Et quidem faciunt, ut labore et accurate <br />
        disserendum et harum quidem exercitus quid.
      </p>
    </div>
  </div>
</template>

<style scoped>
/* Image de fond */
.hero {
  background-image: url("@/assets/header-house.png");
  background-size: cover;
  background-position: center;
  height: 100vh;
  position: relative;
  color: white;
}

/* Styles pour la navigation */
.navbar {
  padding: 2rem;
  width: 80%;
  left: 10%;
  font-weight: 600;
}

.nav-link {
  color: white !important;
  margin-right: 10px;
}

button {
  border-top-right-radius: 2rem;
  border: none;
  background-color: #043a3c;
  font-weight: 500;
  color: white;
  width: 12rem;
  height: 3rem;
}

/* Texte sur l'image */
.hero-text {
  position: absolute;
  top: 50%;
  left: 12%;
  transform: translateY(-50%);
  max-width: 600px;
  margin: 1rem;
}

.hero-text h1 {
  font-size: 5rem;
  margin-bottom: 1rem;
}

.hero-text p {
  font-size: 1rem;
  color: grey;
}
</style>

