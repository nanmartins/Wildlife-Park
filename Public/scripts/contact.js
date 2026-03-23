document.addEventListener('DOMContentLoaded', () => {
  const form = document.querySelector('form');

  form.addEventListener('submit', (e) => {
    const name = document.querySelector('#name').value.trim();
    const email = document.querySelector('#email').value.trim();
    const message = document.querySelector('#message').value.trim();

    if (!name || !email || !message) {
      e.preventDefault();
      alert('All fields are required.');
      return;
    }

    if (!email.includes('@')) {
      e.preventDefault();
      alert('Please enter a valid email.');
      return;
    }
  });
});
