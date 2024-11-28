<template>
  <div class="hero">
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid">
        <!-- Logo à gauche -->
        <a class="navbar-brand" href="#">Logo Ipsum</a>

        <!-- Bouton pour la navigation mobile -->
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Liens et bouton -->
        <div
          class="collapse navbar-collapse justify-content-end"
          id="navbarNav"
        >
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Features</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Pricing</a>
            </li>
          </ul>
          <button>Ajouter une annonce<i class="bi bi-arrow-right"></i></button>
        </div>
      </div>
    </nav>

    <!-- Texte principal -->
    <div class="hero-text">
      <h1>
        Beautiful <br />
        homes made <br />
        for you
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

<script setup></script>
