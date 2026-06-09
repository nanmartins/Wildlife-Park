document.addEventListener('DOMContentLoaded', () => {
  const menuButton = document.querySelector('.menu-toggle');
  const navigation = document.querySelector('.site-nav');

  if (!menuButton || !navigation) return;

  menuButton.addEventListener('click', () => {
    const isOpen = navigation.classList.toggle('site-nav--open');

    menuButton.classList.toggle('menu-toggle--open', isOpen);
    menuButton.setAttribute('aria-expanded', String(isOpen));
  });
});
