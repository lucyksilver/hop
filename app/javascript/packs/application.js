// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
import { initMapbox } from '../plugins/init_mapbox';
import { pubSelection } from '../components/pub_selection';
import { tagSelection } from '../components/tag_selection';
import ScrollReveal from 'scrollreveal'

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  pubSelection();
  tagSelection();
  ScrollReveal().reveal('.scroll-reveal', {
  delay: 150,
  // origin: 'top',
  distance: '-30px',
  interval: 150,
  // viewOffset: {
  //       top: 100,
  //       right: 0,
  //       bottom: 0,
  //       left: 0,
  //   },
});
  ScrollReveal().reveal('.scroll-reveal-tag', {
  delay: 50,
  // origin: 'top',
  distance: '-30px',
  interval: 10,
  // viewOffset: {
  //       top: 100,
  //       right: 0,
  //       bottom: 0,
  //       left: 0,
  //   },
});
  randomizer();
})




import "bootstrap";

const randomizer = () => {
  let counter = 0;
  const elem = document.getElementById("randomBeer");
  const beers = JSON.parse(elem.dataset.beers);
  const card = document.getElementById('card')
  console.log(beers)
  const actual = elem.dataset.actualBeer;
  beers.push(actual);
  const change = () => {
    if (counter < beers.length) {
      elem.innerHTML = beers[counter];
      counter++;
    } else if (counter === beers.length) {
      clearInterval(change);
      console.log(actual);
      card.classList.remove('d-none');
      elem.classList.remove('beer-title');
    }

  }
  setInterval(change, 200);
}


