<script setup>
import Nav from "../Nav.vue";
import { onMounted, ref } from "vue";
import { useRoute } from 'vue-router';  

const route = useRoute();  
const AnnoncesId = route.params.id;
console.log(AnnoncesId);  // Vérifier la valeur du paramètre id
const announcement = ref({});  

onMounted(async () => {
  try {
    const response = await fetch(`http://localhost:3000/v1/announcements/${AnnoncesId}`);
    if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
    announcement.value = await response.json();  // Stocke les données de l'annonce
  } catch (error) {
    console.error("Erreur lors de la récupération de l'annonce:", error);
  }
});
</script>

<template>
  <Nav/>
  <div id="app">
    <!-- Property Details Section -->
    <section class="property-details">
      <div class="property-header">
        <h1>{{ announcement.title || 'Titre de l\'annonce' }}</h1>
        <p>{{ announcement.address || 'Adresse de l\'annonce' }}</p>
        <div class="price">${{ announcement.price || '$0' }} <span>{{ announcement.type || 'Type' }}</span></div>
      </div>
      <div class="property-main">
        <img
          class="property-image"
          :src="announcement.image || ''"  
          alt="Property Image"
        >
      </div>
    </section>

  
    

    <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Description</h5>
    <hr>
    <p class="card-text">{{ announcement.description }}</p>
  </div>
</div>

    <!-- Similar Listings Section -->
    <section class="similar-listings">
      <h2>Similar Listings</h2>
      <div class="listings">
        <!-- Similar listings, remplacez les valeurs statiques par des données dynamiques si nécessaire -->
        <div class="listing">
          <img src="@/assets/house-2.png" alt="House 1" />
          <h3>Malto House</h3>
          <p>4 Beds, 2 Baths</p>
        </div>
        <div class="listing">
          <img src="@/assets/house-2.png" alt="House 2" />
          <h3>Malto House</h3>
          <p>4 Beds, 2 Baths</p>
        </div>
      </div>
    </section>
  </div>
</template>

<style scoped>
/* General Styles */
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  color: #333;
}

#app {
  max-width: 1200px;
  margin: 0 auto;
}

.property-image{
  background-color: #00272e;


}

/* Navbar */
.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem 2rem;
  background-color: #00272e;
  color: #fff;
}

.nav-links {
  display: flex;
  list-style: none;
  gap: 1rem;
}

.nav-links li {
  cursor: pointer;
}

.work-btn {
  background-color: #00a896;
  border: none;
  color: #fff;
  padding: 0.5rem 1rem;
  cursor: pointer;
  border-radius: 5px;
}

/* Property Details */
.property-details {
  margin: 2rem 0;
}

.property-header {
  color: white;
  background-color: #00272e;
}

.property-header h1 {
  font-size: 2rem;
  margin-bottom: 0.5rem;
}

.property-header .price {
  font-size: 1.5rem;
  color: #00a896;
}

.property-main {
  display: flex;
  gap: 2rem;
  margin-top: 2rem;
}

.property-image {
  width: 60%;
  border-top-right-radius: 2rem;
}

.contact-form {
  background-color: #f9f9f9;
  padding: 1rem;
  border-radius: 10px;
  width: 40%;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.contact-form input,
.contact-form textarea,
.contact-form button {
  width: 100%;
  margin-bottom: 1rem;
  padding: 0.5rem;
  border-radius: 5%;
  border: 1px solid #ccc;
}

.contact-form button {
  background-color: #00a896;
  color: #fff;
  border: none;
  cursor: pointer;
}

.details {
  display: flex;
  justify-content: space-around;
  margin: 2rem 0;
}

/* Features */
.features {
  background-color: #f1f1f1;
  padding: 2rem;
  border-radius: 10px;
}

.feature-list {
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
}

.feature-list div {
  background-color: #00a896;
  color: #fff;
  padding: 0.5rem 1rem;
  border-radius: 5px;
}

/* Similar Listings */
.similar-listings {
  margin: 2rem 0;
}

.listings {
  display: flex;
  gap: 2rem;
}

.listing {
  background-color: #fff;
  padding: 1rem;
  border-radius: 10px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  text-align: center;
}

.listing img {
  width: 100%;
  border-radius: 10px;
  margin-bottom: 1rem;
}
</style>

