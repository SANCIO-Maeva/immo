<template>
  <!-- Nav bar au-dessus de l'image -->
  <nav class="navbar navbar-expand-lg navbar-transparent">
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
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
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
        <button class="btn-nav">
          Work with us <i class="bi bi-arrow-right"></i>
        </button>
      </div>
    </div>
  </nav>

  <!-- Image + Form -->
  <div class="full-screen-container">
    <!-- Image à gauche (75%) -->
    <div class="image-container"></div>

    <!-- Formulaire à droite (25%) -->
    <div class="form-container align-items-center">
      <!-- Formulaire de connexion -->

      <div class="form-content">
        <p>Heureux de vous revoir !</p>
        <div class="fields">
          <!-- ID -->
          <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label"
              >Identifiant</label
            >
            <input
              type="email"
              class="form-control"
              id="exampleFormControlInput1"
            />
          </div>
          <!-- Password -->
          <label for="inputPassword5" class="form-label">Mot de passe</label>
          <input
            type="password"
            id="inputPassword5"
            class="form-control"
            aria-describedby="passwordHelpBlock"
          />
        </div>

        <!-- Conditions password -->
        <!-- <div id="passwordHelpBlock" class="form-text">
          Your password must be 8-20 characters long, contain letters and
          numbers, and must not contain spaces, special characters, or emoji.
        </div> -->

        <div class="mt-3 text-end">Mot de passe oublié ?</div>

        <!-- Button -->
        <button class="mt-5">Se connecter</button>
        <hr class="mt-5" />
      </div>
    </div>
  </div>
</template>

<script></script>

<style scoped>
/* Structure du container */
.full-screen-container {
  display: flex;
  width: 100vw;
  height: 100vh;
  margin: 0;
  padding: 0;
}

/* Section image */
.image-container {
  width: 70%; /* 75% de la largeur */
  height: 100%;
  background-image: url("../assets/login-pic.png");
  background-size: cover;
  background-position: center;
  position: relative;
}

/* Section formulaire à droite (25%) */
.form-container {
  width: 70%; /* 25% de la largeur */
  height: 100%; /* Hauteur complète */
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 2rem;
  background-color: rgba(255, 255, 255, 0.9); /* Légère transparence */
  box-shadow: -2px 0 5px rgba(0, 0, 0, 0.1);
  position: relative;
  z-index: 2; /* Placer au-dessus de l'image */
}

/* Nav bar au-dessus de l'image */
.navbar-transparent {
  position: absolute;
  width: 100%;
  top: 0;
  left: 0;
  z-index: 10; /* Superposer la nav bar devant l'image */
  box-shadow: none;
}

/* Navbar */
.navbar {
  padding: 2rem;
}

.nav-link {
  color: #043a3c;
  margin-right: 10px;
}

.btn-nav {
  border-top-right-radius: 2rem !important;
  border: none;
  background-color: #043a3c;
  font-weight: 500;
  color: white;
  width: 12rem;
  height: 3rem;
  border-radius: 0px;
}

/* Formulaire */
.form-content {
  width: 30rem;
}

/* Login button */
.form-content button {
  border-radius: 5px;
  border: none;
  background-color: #043a3c;
  font-weight: 500;
  color: white;
  width: 30rem;
  height: 3rem;
}

.form-content p {
  font-size: 24px;

  font-weight: 600;
}

input {
  background-color: #e5e5e5;
  height: 3.2rem;
}

hr {
  color: #959393;
}
</style>
