<template>
  <div class="card">
    <div class="card-header">Details</div>
    <div class="btn-group" role="group" aria-label="Basic outlined example">
      <button type="button" class="btn btn-outline-primary">
        <BedDouble />
        4
      </button>
      <button type="button" class="btn btn-outline-primary"><Bath />2</button>
      <button type="button" class="btn btn-outline-primary">
        <Calendar />
        2
      </button>
      <button type="button" class="btn btn-outline-primary">
        <Calendar />
        2
      </button>
      <button type="button" class="btn btn-outline-primary">
        <Calendar />
        2
      </button>
    </div>
  </div>
</template>

<script setup>
import { BedDouble } from "lucide-vue-next";
import { Bath } from "lucide-vue-next";
import { Calendar } from "lucide-vue-next";
</script>
