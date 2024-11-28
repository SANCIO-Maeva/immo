<template>
  <main style="background-color: #f5f5f5">
    <section class="container mt-5 mx-auto bg-custom">
      <!-- Filter -->
      <!-- <hr style="width: 35rem" /> -->
      <h1>Find your next place to live</h1>

      <div class="container filter mt-3">
        <div class="row">
          <div class="col-md-3">
            <div class="dropdown">
              <button
                class="btn btn-light dropdown-toggle w-100"
                type="button"
                id="lookingForDropdown"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Looking for
              </button>
              <ul class="dropdown-menu" aria-labelledby="lookingForDropdown">
                <li><a class="dropdown-item" href="#">Buy</a></li>
                <li><a class="dropdown-item" href="#">Rent</a></li>
              </ul>
            </div>
          </div>

          <div class="col-md-3">
            <div class="dropdown">
              <button
                class="btn btn-light dropdown-toggle w-100"
                type="button"
                id="locationDropdown"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Location
              </button>
              <ul class="dropdown-menu" aria-labelledby="locationDropdown">
                <li><a class="dropdown-item" href="#">New York</a></li>
                <li><a class="dropdown-item" href="#">Paris</a></li>
                <li><a class="dropdown-item" href="#">London</a></li>
              </ul>
            </div>
          </div>

          <div class="col-md-3">
            <div class="dropdown">
              <button
                class="btn btn-light dropdown-toggle w-100"
                type="button"
                id="propertyTypeDropdown"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Property Type
              </button>
              <ul class="dropdown-menu" aria-labelledby="propertyTypeDropdown">
                <li><a class="dropdown-item" href="#">Apartment</a></li>
                <li><a class="dropdown-item" href="#">House</a></li>
                <li><a class="dropdown-item" href="#">Studio</a></li>
              </ul>
            </div>
          </div>

          <div class="col-md-3">
            <div class="dropdown">
              <button
                class="btn btn-light dropdown-toggle w-100"
                type="button"
                id="priceDropdown"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Price
              </button>
              <ul class="dropdown-menu" aria-labelledby="priceDropdown">
                <li>
                  <a class="dropdown-item" href="#">$100,000 - $200,000</a>
                </li>
                <li>
                  <a class="dropdown-item" href="#">$200,000 - $500,000</a>
                </li>
                <li><a class="dropdown-item" href="#">$500,000+</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <!-- Text and button  -->

      <div class="row mt-5 d-flex justify-content-between">
        <!-- Text -->
        <div class="col">
          <h1>Based on your location</h1>
          <p>Some of our picked properties near your location.</p>
        </div>

        <!-- Button -->
        <div class="col-auto">
          <button style="margin-right: 80px">Browse more properties</button>
        </div>
      </div>

      <!-- Cards houses -->
      <div class="container-fluid">
        <div
          class="row row-cols-1 row-cols-md-3 g-4 mt-5 d-flex justify-content-center"
        >
          <!-- House 1 -->
          <div class="col" style="margin-">
            <div class="card border-1" style="width: 23rem">
              <img src="@/assets/house-1.png" class="card-img-top" alt="@." />
              <div class="card-body">
                <div class="first-part-card">
                  <h5 class="card-title">$2,095 /month</h5>
                  <div class="icon-wrapper">
                    <Heart class="icons" />
                  </div>
                </div>
                <h5 class="card-title">Palm Harbor</h5>

                <p class="card-text" style="color: #a2a2a2">
                  2699 Green Valley, Highland Lake, FL
                </p>

                <hr />
                <div class="row icons-text">
                  <div class="col">
                    <p><BedDouble class="icons" /> 3 beds</p>
                  </div>

                  <div class="col">
                    <p><Bath class="icons" /> 2 beds</p>
                  </div>

                  <div class="col">
                    <p><Diamond class="icons" /> 5x7m2</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- House 2 -->
          <div class="col">
            <div class="card border-1" style="width: 23rem">
              <img src="@/assets/house-2.png" class="card-img-top" alt="@." />
              <div class="card-body">
                <div class="first-part-card">
                  <h5 class="card-title">$2,095 /month</h5>
                  <div class="icon-wrapper">
                    <Heart class="icons" />
                  </div>
                </div>
                <h5 class="card-title">Palm Harbor</h5>

                <p class="card-text" style="color: #a2a2a2">
                  2699 Green Valley, Highland Lake, FL
                </p>

                <hr />
                <div class="row icons-text">
                  <div class="col">
                    <p><BedDouble class="icons" /> 3 beds</p>
                  </div>

                  <div class="col">
                    <p><Bath class="icons" /> 2 beds</p>
                  </div>

                  <div class="col">
                    <p><Diamond class="icons" /> 5x7m2</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- House 3 -->
          <div class="col">
            <div class="card border-1" style="width: 23rem">
              <img src="@/assets/house-3.png" class="card-img-top" alt="@." />
              <div class="card-body">
                <div class="first-part-card">
                  <h5 class="card-title">$2,095 /month</h5>
                  <div class="icon-wrapper">
                    <Heart class="icons" />
                  </div>
                </div>
                <h5 class="card-title">Palm Harbor</h5>

                <p class="card-text" style="color: #a2a2a2">
                  2699 Green Valley, Highland Lake, FL
                </p>

                <hr />
                <div class="row icons-text">
                  <div class="col">
                    <p><BedDouble class="icons" /> 3 beds</p>
                  </div>

                  <div class="col">
                    <p><Bath class="icons" /> 2 beds</p>
                  </div>

                  <div class="col">
                    <p><Diamond class="icons" /> 5x7m2</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- House 4 -->
          <div class="col">
            <div class="card border-1" style="width: 23rem">
              <img src="@/assets/house-4.png" class="card-img-top" alt="@." />
              <div class="card-body">
                <div class="first-part-card">
                  <h5 class="card-title">$2,095 /month</h5>
                  <div class="icon-wrapper">
                    <Heart class="icons" />
                  </div>
                </div>
                <h5 class="card-title">Palm Harbor</h5>

                <p class="card-text" style="color: #a2a2a2">
                  2699 Green Valley, Highland Lake, FL
                </p>

                <hr />
                <div class="row icons-text">
                  <div class="col">
                    <p><BedDouble class="icons" /> 3 beds</p>
                  </div>

                  <div class="col">
                    <p><Bath class="icons" /> 2 beds</p>
                  </div>

                  <div class="col">
                    <p><Diamond class="icons" /> 5x7m2</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- House 5 -->
          <div class="col">
            <div class="card border-1" style="width: 23rem">
              <img src="@/assets/house-5.png" class="card-img-top" alt="@." />
              <div class="card-body">
                <div class="first-part-card">
                  <h5 class="card-title">$2,095 /month</h5>
                  <div class="icon-wrapper">
                    <Heart class="icons" />
                  </div>
                </div>
                <h5 class="card-title">Palm Harbor</h5>

                <p class="card-text" style="color: #a2a2a2">
                  2699 Green Valley, Highland Lake, FL
                </p>

                <hr />
                <div class="row icons-text">
                  <div class="col">
                    <p><BedDouble class="icons" /> 3 beds</p>
                  </div>

                  <div class="col">
                    <p><Bath class="icons" /> 2 beds</p>
                  </div>

                  <div class="col">
                    <p><Diamond class="icons" /> 5x7m2</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- House 6 -->
          <div class="col">
            <div class="card border-1" style="width: 23rem">
              <img src="@/assets/house-6.png" class="card-img-top" alt="@." />
              <div class="card-body">
                <div class="first-part-card">
                  <h5 class="card-title">$2,095 /month</h5>
                  <div class="icon-wrapper">
                    <Heart class="icons" />
                  </div>
                </div>
                <h5 class="card-title">Palm Harbor</h5>

                <p class="card-text" style="color: #a2a2a2">
                  2699 Green Valley, Highland Lake, FL
                </p>

                <hr />
                <div class="row icons-text">
                  <div class="col">
                    <p><BedDouble class="icons" /> 3 beds</p>
                  </div>

                  <div class="col">
                    <p><Bath class="icons" /> 2 beds</p>
                  </div>

                  <div class="col">
                    <p><Diamond class="icons" /> 5x7m2</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- House 7 -->
          <div class="col">
            <div class="card border-1" style="width: 23rem">
              <img src="@/assets/house-7.png" class="card-img-top" alt="@." />
              <div class="card-body">
                <div class="first-part-card">
                  <h5 class="card-title">$2,095 /month</h5>
                  <div class="icon-wrapper">
                    <Heart class="icons" />
                  </div>
                </div>
                <h5 class="card-title">Palm Harbor</h5>

                <p class="card-text" style="color: #a2a2a2">
                  2699 Green Valley, Highland Lake, FL
                </p>

                <hr />
                <div class="row icons-text">
                  <div class="col">
                    <p><BedDouble class="icons" /> 3 beds</p>
                  </div>

                  <div class="col">
                    <p><Bath class="icons" /> 2 beds</p>
                  </div>

                  <div class="col">
                    <p><Diamond class="icons" /> 5x7m2</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- House 8 -->
          <div class="col">
            <div class="card border-1" style="width: 23rem">
              <img src="@/assets/house-8.png" class="card-img-top" alt="@." />
              <div class="card-body">
                <div class="first-part-card">
                  <h5 class="card-title">$2,095 /month</h5>
                  <div class="icon-wrapper">
                    <Heart class="icons" />
                  </div>
                </div>
                <h5 class="card-title">Palm Harbor</h5>

                <p class="card-text" style="color: #a2a2a2">
                  2699 Green Valley, Highland Lake, FL
                </p>

                <hr />
                <div class="row icons-text">
                  <div class="col">
                    <p><BedDouble class="icons" /> 3 beds</p>
                  </div>

                  <div class="col">
                    <p><Bath class="icons" /> 2 beds</p>
                  </div>

                  <div class="col">
                    <p><Diamond class="icons" /> 5x7m2</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- House 9 -->
          <div class="col">
            <div class="card border-1" style="width: 23rem">
              <img src="@/assets/house-9.png" class="card-img-top" alt="@." />
              <div class="card-body">
                <div class="first-part-card">
                  <h5 class="card-title">$2,095 /month</h5>
                  <div class="icon-wrapper">
                    <Heart class="icons" />
                  </div>
                </div>
                <h5 class="card-title">Palm Harbor</h5>

                <p class="card-text" style="color: #a2a2a2">
                  2699 Green Valley, Highland Lake, FL
                </p>

                <hr />
                <div class="row icons-text">
                  <div class="col">
                    <p><BedDouble class="icons" /> 3 beds</p>
                  </div>

                  <div class="col">
                    <p><Bath class="icons" /> 2 beds</p>
                  </div>

                  <div class="col">
                    <p><Diamond class="icons" /> 5x7m2</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
</template>

<style scoped>
button {
  border: none;
  padding: 1rem;
  background-color: #043a3c;
  color: white;
  border-radius: 8px;
  width: 15rem;
  font-weight: 550;
}

.container,
.row {
  margin: 0; /* Supprime toute marge de la grille et du conteneur */
  padding: 0; /* Supprime toute marge intérieure */
}

.row-cols-md-3 {
  margin-right: 0; /* Supprime la marge à droite de la grille */
}

.row-cols-md-3 .col {
  padding-right: 0; /* Supprime le padding à droite de chaque colonne */
}

.card {
  border: none;
}

.btn {
  background-color: white;
  color: black;
}

.filter {
  border-radius: 8px;
}

.icons {
  font-size: 20px;
  color: #b2603b;
}

.icon-wrapper {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 45px;
  height: 45px;
  border: 0.5px solid #d3d3d3;
  border-radius: 50%;
}

.first-part-card {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 0.5rem;
}

h5 {
  font-weight: bold;
}

.row-cols-md-3 {
  margin-right: 0;
}

.row-cols-md-3 .col {
  padding-right: 0;
}
</style>

<script setup>
import { BedDouble } from "lucide-vue-next";
import { Bath } from "lucide-vue-next";
import { Diamond } from "lucide-vue-next";
import { Heart } from "lucide-vue-next";
</script>
