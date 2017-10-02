(() => {
  const EasingFunctions = {
    // acceleration until halfway, then deceleration
    easeInOutCubic(t) {
      /* eslint-disable no-mixed-operators */
      return t < 0.5 ? 4 * t * t * t : (t - 1) * (2 * t - 2) * (2 * t - 2) + 1;
    },
  };

  let animations = [];

  function animationLoop(time) {
    animations = animations.map((anim) => {
      if (!anim.elem) {
        return false;
      }

      if (!anim.startTime) {
        anim.startTime = time;
      }

      const durationFraction = EasingFunctions.easeInOutCubic(
        Math.min(1, (time - anim.startTime) / anim.duration)
      );

      if (durationFraction >= 1) {
        if (anim.callback) {
          anim.callback(anim.elem);
        }
        return false;
      }

      const travelDistance = anim.scrollTo - anim.startPosition;

      anim.elem[anim.property] = anim.startPosition + (travelDistance * durationFraction);

      return anim;
    }).filter(anim => !!anim);

    if (animations.length) {
      window.requestAnimationFrame(animationLoop);
    }
  }

  window.nueww = Object.assign({}, window.nueww, {
    smoothScroll: ['left', 'top'].reduce((acc, direction) => {
      acc[direction] = (options, callback) => {
        if (!options.elem) {
          return;
        }

        let property = '';

        if (direction === 'left') {
          const elemWidth = options.elem.offsetWidth;
          const elemScrollWidth = options.elem.scrollWidth;

          property = 'scrollLeft';

          if (options.scrollTo + elemWidth > elemScrollWidth) {
            options.scrollTo = elemScrollWidth - elemWidth;
          }
        } else {
          const elemHeight = options.elem.offsetHeight;
          const elemScrollHeight = options.elem.scrollHeight;

          property = 'scrollTop';

          if (options.scrollTo + elemHeight > elemScrollHeight) {
            options.scrollTo = elemScrollHeight - elemHeight;
          }
        }

        const startPosition = options.elem[property];

        const anim = {
          elem: options.elem,
          startPosition,
          scrollTo: options.scrollTo,
          travelDistance: options.scrollTo - options.elem[property],
          duration: options.duration || 600,
          property,
          callback,
        };

        animations.push(anim);

        if (animations.length === 1) {
          window.requestAnimationFrame(animationLoop);
        }
      };

      return acc;
    }, {}),
    offset: (elem) => {
      const rect = elem.getBoundingClientRect();
      const scrollLeft = document.body.scrollLeft;
      const scrollTop = document.body.scrollTop;

      return {
        top: rect.top + scrollTop,
        left: rect.left + scrollLeft,
      };
    },
  });

  document.addEventListener('DOMContentLoaded', () => {
    window.nueww.eventHub.register('click', '*', (e) => {
      const link = e.target.closest('a[href^="#"]:not([role])');

      if (!link) {
        return;
      }

      const target = document.getElementById(link.getAttribute('href').replace('#', ''));

      if (!target) {
        return;
      }

      const targetPos = window.nueww.offset(target).top;
      const scrollTo = targetPos - 80;

      window.nueww.smoothScroll.top({
        elem: document.body,
        scrollTo,
        duration: 600,
        callback: () => {
          target.focus();
        },
      });

      e.preventDefault();
    });
  });
})();
