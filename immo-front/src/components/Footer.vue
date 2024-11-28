<template>
  <!-- Footer -->
  <footer class="footer">
    <h2>Make your dreams a reality</h2>
    <button class="footer-btn">Work with us</button>
    <div class="footer-links">
      <div class="footer-column">
        <h3>Column Heading</h3>
        <a href="#">Link goes here</a>
        <a href="#">Link goes here</a>
        <a href="#">Link goes here</a>
      </div>
      <div class="footer-column">
        <h3>Column Heading</h3>
        <a href="#">Link goes here</a>
        <a href="#">Link goes here</a>
        <a href="#">Link goes here</a>
      </div>
      <div class="footer-column">
        <h3>Column Heading</h3>
        <a href="#">Link goes here</a>
        <a href="#">Link goes here</a>
        <a href="#">Link goes here</a>
      </div>
    </div>
  </footer>
</template>

<style scoped>
/* Footer */
.footer {
  background: linear-gradient(to right, #003b46, #00272e);
  color: #fff;
  padding: 2rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
  box-sizing: border-box;
}

.footer h2 {
  font-size: 1.8rem;
  margin-bottom: 1rem;
}

.footer-btn {
  background-color: #00a896;
}
</style>

<script setup></script>
