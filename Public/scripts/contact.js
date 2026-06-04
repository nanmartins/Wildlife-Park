document.addEventListener('DOMContentLoaded', () => {
  const form = document.querySelector('.contact-form');
  const feedback = document.querySelector('.form-feedback');

  if (!form || !feedback) return;

  form.addEventListener('submit', async (e) => {
    e.preventDefault();

    const firstName = document.querySelector('#firstName').value.trim();
    const lastName = document.querySelector('#lastName').value.trim();
    const email = document.querySelector('#email').value.trim();
    const phone = document.querySelector('#phone').value.trim();
    const subject = document.querySelector('#subject').value.trim();
    const message = document.querySelector('#message').value.trim();

    if (!firstName || !lastName || !email || !subject || !message) {
      showFeedback('Please complete all required fields.', 'error');
      return;
    }

    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/;

    if (!emailPattern.test(email)) {
      showFeedback('Please enter a valid email address.', 'error');
      return;
    }

    try {
      const response = await fetch('/contact', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          firstName,
          lastName,
          email,
          phone,
          subject,
          message
        })
      });

      if (!response.ok) {
        throw new Error('Message could not be sent.');
      }

      showFeedback('Thank you. Your message has been sent successfully.', 'success');
      form.reset();

    } catch (error) {
      showFeedback('Sorry, something went wrong. Please try again.', 'error');
    }
  });

  let feedbackTimer;

  function showFeedback(message, type) {
    clearTimeout(feedbackTimer);

    feedback.textContent = message;
    feedback.className = `form-feedback form-feedback--${type}`;

    feedbackTimer = setTimeout(() => {
      feedback.textContent = '';
      feedback.className = 'form-feedback';
    }, 5000);
  }
});
