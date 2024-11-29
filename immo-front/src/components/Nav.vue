<template>
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
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav">
          <RouterLink to="/home">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
        </RouterLink>
          <li class="nav-item">
            <a class="nav-link" href="#">Features</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Pricing</a>
          </li>
        </ul>
        <RouterLink to="/form">Ajouter une annonce<i class="bi bi-arrow-right"></i></RouterLink>
      </div>
    </div>
  </nav>
</template>

<style scoped>
.navbar {
  padding: 2rem;
  width: 80%;
  left: 10%;
  font-weight: 600;
}

.nav-link {
  color: black !important;
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
</style>
