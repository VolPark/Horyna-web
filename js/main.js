/* ============================================
   INTERIÉRY HORYNA - Hlavní JS
   ============================================ */

(function() {
  'use strict';

  // ----- HEADER scroll efekt -----
  const header = document.querySelector('.site-header');
  if (header) {
    const onScroll = () => {
      if (window.scrollY > 20) header.classList.add('scrolled');
      else header.classList.remove('scrolled');
    };
    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll();
  }

  // ----- MOBILNÍ MENU -----
  const menuToggle = document.querySelector('.menu-toggle');
  const mainNav = document.querySelector('.main-nav');
  if (menuToggle && mainNav) {
    menuToggle.addEventListener('click', () => {
      menuToggle.classList.toggle('open');
      mainNav.classList.toggle('open');
      document.body.style.overflow = mainNav.classList.contains('open') ? 'hidden' : '';
    });
    // zavřít po kliknutí na odkaz
    mainNav.querySelectorAll('a').forEach(a => {
      a.addEventListener('click', () => {
        menuToggle.classList.remove('open');
        mainNav.classList.remove('open');
        document.body.style.overflow = '';
      });
    });
  }

  // ----- REVEAL ANIMACE -----
  const revealEls = document.querySelectorAll('.reveal, .reveal-stagger');
  if ('IntersectionObserver' in window && revealEls.length) {
    const io = new IntersectionObserver((entries) => {
      entries.forEach(e => {
        if (e.isIntersecting) {
          e.target.classList.add('visible');
          io.unobserve(e.target);
        }
      });
    }, { threshold: 0.12, rootMargin: '0px 0px -50px 0px' });
    revealEls.forEach(el => io.observe(el));
  } else {
    // fallback - zviditelnit hned
    revealEls.forEach(el => el.classList.add('visible'));
  }

  // ----- GALERIE FILTR -----
  const filterBtns = document.querySelectorAll('.gallery-filter button');
  const galleryItems = document.querySelectorAll('.gallery-item');
  if (filterBtns.length && galleryItems.length) {
    filterBtns.forEach(btn => {
      btn.addEventListener('click', () => {
        filterBtns.forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        const filter = btn.dataset.filter;
        galleryItems.forEach(item => {
          if (filter === 'all' || item.dataset.cat === filter) {
            item.style.display = '';
          } else {
            item.style.display = 'none';
          }
        });
      });
    });
  }

  // ----- LIGHTBOX -----
  const lightbox = document.querySelector('.lightbox');
  const lightboxImg = lightbox ? lightbox.querySelector('img') : null;
  const lightboxClose = lightbox ? lightbox.querySelector('.lightbox-close') : null;
  const lightboxPrev = lightbox ? lightbox.querySelector('.lightbox-prev') : null;
  const lightboxNext = lightbox ? lightbox.querySelector('.lightbox-next') : null;
  let currentIdx = 0;
  let visibleItems = [];

  function openLightbox(idx) {
    visibleItems = Array.from(galleryItems).filter(i => i.style.display !== 'none');
    currentIdx = idx;
    showCurrent();
    lightbox.classList.add('open');
    document.body.style.overflow = 'hidden';
  }

  function showCurrent() {
    const item = visibleItems[currentIdx];
    if (item && lightboxImg) {
      const img = item.querySelector('img');
      lightboxImg.src = img.src;
      lightboxImg.alt = img.alt || '';
    }
  }

  function closeLightbox() {
    if (lightbox) lightbox.classList.remove('open');
    document.body.style.overflow = '';
  }

  if (lightbox) {
    galleryItems.forEach((item, i) => {
      item.addEventListener('click', () => {
        const visIdx = Array.from(galleryItems).filter(it => it.style.display !== 'none').indexOf(item);
        openLightbox(visIdx >= 0 ? visIdx : 0);
      });
    });
    if (lightboxClose) lightboxClose.addEventListener('click', closeLightbox);
    if (lightboxPrev) lightboxPrev.addEventListener('click', () => {
      currentIdx = (currentIdx - 1 + visibleItems.length) % visibleItems.length;
      showCurrent();
    });
    if (lightboxNext) lightboxNext.addEventListener('click', () => {
      currentIdx = (currentIdx + 1) % visibleItems.length;
      showCurrent();
    });
    lightbox.addEventListener('click', (e) => {
      if (e.target === lightbox) closeLightbox();
    });
    document.addEventListener('keydown', (e) => {
      if (!lightbox.classList.contains('open')) return;
      if (e.key === 'Escape') closeLightbox();
      else if (e.key === 'ArrowLeft' && lightboxPrev) lightboxPrev.click();
      else if (e.key === 'ArrowRight' && lightboxNext) lightboxNext.click();
    });
  }

  // ----- KONTAKTNÍ FORMULÁŘ -----
  const form = document.querySelector('.contact-form-el');
  if (form) {
    form.addEventListener('submit', (e) => {
      e.preventDefault();
      const feedback = form.querySelector('.form-feedback');
      const submitBtn = form.querySelector('.form-submit');
      const data = new FormData(form);

      // Validace
      const name = (data.get('name') || '').trim();
      const email = (data.get('email') || '').trim();
      const message = (data.get('message') || '').trim();

      if (!name || !email || !message) {
        if (feedback) {
          feedback.className = 'form-feedback error';
          feedback.textContent = 'Vyplňte prosím všechna povinná pole.';
        }
        return;
      }

      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailRegex.test(email)) {
        if (feedback) {
          feedback.className = 'form-feedback error';
          feedback.textContent = 'Zadejte prosím platnou e-mailovou adresu.';
        }
        return;
      }

      // Otevřu mailto - nejjednodušší univerzální řešení bez backendu
      const subject = encodeURIComponent('Poptávka z webu - ' + name);
      const phone = (data.get('phone') || '').trim();
      const body = encodeURIComponent(
        'Jméno: ' + name + '\n' +
        'E-mail: ' + email + '\n' +
        (phone ? 'Telefon: ' + phone + '\n' : '') +
        '\nZpráva:\n' + message
      );
      window.location.href = 'mailto:info@interieryhoryna.cz?subject=' + subject + '&body=' + body;

      if (feedback) {
        feedback.className = 'form-feedback success';
        feedback.textContent = 'Otevřeli jsme váš e-mailový klient s předvyplněnou zprávou. Stačí ji odeslat.';
      }

      submitBtn.textContent = 'Otevřeno v mailu...';
      setTimeout(() => {
        submitBtn.textContent = 'Odeslat zprávu';
        form.reset();
        if (feedback) feedback.className = 'form-feedback';
      }, 5000);
    });
  }

  // ----- SMOOTH SCROLL pro odkazy uvnitř stránky -----
  document.querySelectorAll('a[href^="#"]').forEach(a => {
    a.addEventListener('click', (e) => {
      const targetId = a.getAttribute('href');
      if (targetId === '#' || targetId.length < 2) return;
      const target = document.querySelector(targetId);
      if (target) {
        e.preventDefault();
        const offsetTop = target.getBoundingClientRect().top + window.scrollY - 80;
        window.scrollTo({ top: offsetTop, behavior: 'smooth' });
      }
    });
  });

})();
