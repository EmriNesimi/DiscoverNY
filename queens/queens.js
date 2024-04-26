document.addEventListener('DOMContentLoaded', function() {
const hero = document.querySelector('.hero-content'); // using querySelector to target the class

window.addEventListener('scroll', function() {
  const heroHeight = hero.offsetHeight;
  const scrollPosition = window.scrollY || document.documentElement.scrollTop;

  let fadeOutEffect = 1 - (scrollPosition / (heroHeight / 2)); // The division factor controls the fade effect's speed
  fadeOutEffect = Math.max(fadeOutEffect, 0); // Ensures the value doesn't go below 0

  hero.style.opacity = fadeOutEffect;

  // For debugging purposes
  console.log(`Scroll position: ${scrollPosition}, Fade effect: ${fadeOutEffect}`);
});
});

