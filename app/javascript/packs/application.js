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

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  pubSelection();
  tagSelection();
  randomizer()
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
      card.classList.add('delay-1s');
    }

  }
  setInterval(change, 300);
}


