document.addEventListener('DOMContentLoaded', function () {
    const serviceSection = document.getElementById('services');
    const serviceImage = document.getElementById('serviceImage');

    let observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            // When the element is in the viewport
            if (entry.isIntersecting) {
                serviceImage.style.opacity = 1;
            } else {
                serviceImage.style.opacity = 0;
            }
        });
    }, { threshold: 0.5 });

    // Observe the 'Our Services' section
    observer.observe(serviceSection);
});

document.addEventListener('DOMContentLoaded', function() {
    const hero = document.getElementById('hero'); // Ensure this is the correct ID

    if (!hero) {
        console.error('Hero element not found'); // Logs an error if the hero element is not found
        return;
    }

    window.addEventListener('scroll', function() {
        const heroHeight = hero.offsetHeight;
        const scrollPosition = window.scrollY || document.documentElement.scrollTop; // Updated to use window.scrollY

        // This formula ensures a gradual fade out as the user scrolls down
        let fadeOutEffect = 1 - (scrollPosition / heroHeight);
        fadeOutEffect = Math.max(fadeOutEffect, 0); // Clamping the value to the minimum of 0

        // Apply the opacity fade out to the hero element
        hero.style.opacity = fadeOutEffect;

        console.log('Scrolling...', scrollPosition, fadeOutEffect); // Added for debugging
    });
});


