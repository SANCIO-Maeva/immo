<template>
  <div id="app">
    <!-- Property Details Section -->
    <section class="property-details">
      <div class="property-header">
        <h1>Modern House</h1>
        <p>3002 Foster Ave, Brooklyn, NY 11210, USA</p>
        <div class="price">$450,000 <span>$2,800/sq ft</span></div>
      </div>
      <div class="property-main">
        <img
          class="property-image"
          src="@/assets/house-2.png"
          alt="Property Image"
        />
        <form class="contact-form">
          <img
            src="@/assets/profile-pic.jpg"
            alt="Kayley Hall"
            class="agent-photo"
          />
          <h3>Kayley Hall</h3>
          <p>View profile</p>
          <input type="text" placeholder="Name" />
          <input type="text" placeholder="Phone" />
          <input type="email" placeholder="Email" />
          <textarea placeholder="Hello, I am interested in..."></textarea>
          <button>Learn more</button>
        </form>
      </div>
    </section>

    <!-- Description Section -->
    <div class="card" style="width: 18rem">
      <div class="card-body">
        <h5 class="card-title">Détails</h5>
        <hr />
        <div class="row">
          <p><BedDouble style="margin-right: 10px" />4</p>
          <div class="divider"></div>
        </div>
      </div>
    </div>

    <!-- Features Section -->
    <section class="features">
      <h2>Features</h2>
      <div class="feature-list">
        <div>Air Conditioning</div>
        <div>Air Conditioning</div>
        <div>Air Conditioning</div>
        <div>Air Conditioning</div>
      </div>
    </section>

    <!-- Similar Listings Section -->
    <section class="similar-listings">
      <h2>Similar Listings</h2>
      <div class="listings">
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

<script setup>
import { BedDouble } from "lucide-vue-next";
import { Bath } from "lucide-vue-next";
</script>
