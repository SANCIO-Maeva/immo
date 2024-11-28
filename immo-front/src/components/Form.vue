<template>
  <hr style="width: 70rem; margin-left: 10%" />
  <!-- Text -->
  <div class="text-center mt-5 pre-text">
    <h1>Get a project quote</h1>
    <p>
      Please fill the form below to receive a quote for your project. Feel
      <br />
      free to add as much detail as needed.
    </p>
  </div>
  <!-- Form -->
  <div class="form-container mt-5 mb-5">
    <div class="step-indicator">
      <div class="step-row" style="margin-left: 15%">
        <div v-for="step in 2" :key="step" class="step-item">
          <div class="step">
            <div class="step-number">{{ step }}</div>
            <div class="progress-bar-wrapper">
              <div
                class="progress-bar"
                :style="{ width: getProgress(step) + '%' }"
              ></div>
            </div>
          </div>
        </div>
      </div>
      <hr />
    </div>
    <h4>Ajouter une annonce</h4>
    <p>Remplir le formulaire ci-dessous</p>
    <form @submit.prevent="handleSubmit">
      <div v-if="currentStep === 1">
        <!-- Title and description -->
        <div class="row">
          <div class="col form-group">
            <label for="title">Titre de l'annonce</label>
            <br />
            <input
              type="text"
              id="title"
              v-model="form.title"
              placeholder="Maison..."
              class="input-field"
            />
          </div>

          <div class="col form-group">
            <label for="description">Description</label>
            <br />
            <input
              type="text"
              id="description"
              v-model="form.description"
              placeholder="Description"
              class="input-field"
            />
          </div>
        </div>
        <div class="row">
          <div class="col form-group">
            <label for="type">Type</label>
            <br />
            <input
              type="text"
              id="type"
              v-model="form.type"
              placeholder="Type"
              class="input-field"
            />
          </div>

          <div class="col form-group">
            <label for="address">Adresse</label>
            <br />
            <input
              type="text"
              id="address"
              v-model="form.address"
              placeholder="Adresse"
              class="input-field"
            />
          </div>
        </div>
        <button type="button" @click="nextStep">Suivant</button>
      </div>

      <div v-if="currentStep === 2">
        <div class="row">
          <div class="col form-group">
            <label for="price">Prix</label>
            <br />
            <input
              type="number"
              id="price"
              v-model="form.price"
              placeholder="Prix"
              class="input-field"
            />
          </div>

          <div class="col form-group">
            <label for="status">Statut</label>
            <br />
            <input
              type="text"
              id="status"
              v-model="form.status"
              placeholder="Statut"
              class="input-field"
            />
          </div>
        </div>

        <div class="row">
          <div class="col form-group">
            <label for="creation-date">Date de création</label>
            <br />
            <div class="input-with-icon">
              <input
                type="date"
                id="creation-date"
                v-model="form.creationDate"
                class="input-field"
              />
              <span class="icon-calendar">📅</span>
            </div>
          </div>

          <div class="col form-group">
            <label for="update-date">Date de mise à jour</label>
            <br />
            <div class="input-with-icon">
              <input
                type="date"
                id="update-date"
                v-model="form.updateDate"
                class="input-field"
              />
              <span class="icon-calendar">📅</span>
            </div>
          </div>
        </div>

        <div class="d-flex justify-content-between">
          <button type="button" @click="prevStep">Précédent</button>
          <button type="submit">Soumettre</button>
        </div>
      </div>
    </form>
  </div>
</template>

<style scoped>
.input-with-icon {
  position: relative;
}

.input-with-icon input {
  padding-right: 2.5rem;
}

.icon-calendar {
  position: absolute;
  right: 1rem;
  top: 50%;
  margin-left: 20rem;
  transform: translateY(-50%);
  pointer-events: none;
  color: #6f6c90;
}

button {
  border-radius: 40px;
  border: none;
  background-color: #043a3c;
  font-weight: 500;
  color: white;
  width: 8rem;
  height: 3rem;
  margin-top: 0.5rem;
  box-shadow: 0 0 3px 2px rgb(0, 0, 73);
}

.pre-text {
  margin-top: 2rem;
  margin-bottom: 3rem;
}

.form-container {
  font-family: "DM Sans", sans-serif;
  max-width: 650px;
  margin: auto;
  padding: 2rem;
  background: #ffffff;
  border-radius: 20px;
  box-shadow: 0 4px 9px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
}

.form-container h4 {
  font-weight: 580;
}

.form-container p {
  color: #6f6c90;
  font-weight: lighter;
}

.step-indicator {
  margin-bottom: 1.5rem;
}

.step-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.step-item {
  display: flex;
  align-items: center;
  text-align: center;
  flex: 1;
  position: relative;
}

.step {
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
}

.step-number {
  width: 2.5rem;
  height: 2.5rem;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 50%; /* cercle parfait */
  background: #a2b4a8;
  color: #fff;
  font-weight: bold;
  margin-right: 0.5rem;
  position: relative;
}

.progress-bar-wrapper {
  width: 100px;
  height: 0.5rem;
  background: #ddd;
  border-radius: 4px;
  overflow: hidden;
}

.progress-bar {
  height: 100%;
  background: #a2b4a8;
  transition: width 0.3s ease;
}

hr {
  color: #ccceda;
}

.form-group {
  margin-bottom: 1rem;
}

.input-field {
  margin-top: 0.5rem;
  width: 100%;
  height: 3rem;
  border-radius: 20px;
  padding: 0.5rem;
  box-shadow: 0 4px 9px rgba(0, 0, 0, 0.1);
  border: none;
  font-weight: 200;
  font-size: 14px;
}

.next {
  margin-left: 27rem;
  margin-top: 1rem;
}

.input-with-icon {
  position: relative;
}

.input-with-icon input {
  padding-right: 2.5rem;
}

.icon-calendar {
  position: absolute;
  right: 1rem;
  top: 50%;
  transform: translateY(-50%);
  pointer-events: none;
  color: #6f6c90;
}
</style>

<script setup>
import { reactive, ref } from "vue";

const currentStep = ref(1);

const form = reactive({
  title: "",
  description: "",
  type: "",
  address: "",
  price: "",
  creationDate: "",
  updateDate: "",
});

function nextStep() {
  if (currentStep.value < 2) {
    currentStep.value++;
  }
}

function prevStep() {
  if (currentStep.value > 1) {
    currentStep.value--;
  }
}

function handleSubmit() {
  console.log("Form submitted:", { ...form });
}

function getProgress(step) {
  const steps = {
    1: [form.title, form.description, form.type, form.address],
    2: [form.price, form.status, form.creationDate, form.updateDate],
  };

  const fields = steps[step] || [];
  const filledFields = fields.filter((field) => field.trim() !== "").length;
  return (filledFields / fields.length) * 100;
}
</script>
