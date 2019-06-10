/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import 'bootstrap';


import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';

const form = document.querySelector('.maincard form')
const profile = document.querySelector('.profile-show')

const displayFilter = (e) => {
  e.preventDefault();

  // add class show to form filter element
  if(profile.classList.contains('show')) {
    profile.classList.remove('show')
  }

  form.classList.toggle('show')
}

document.querySelector("#filter").addEventListener("click", displayFilter);


const displayProfile = (e) => {
  e.preventDefault();

  if(form.classList.contains('show')) {
    form.classList.remove('show')
  }
  profile.classList.toggle('show')
}
document.querySelector("#profile").addEventListener("click", displayProfile);

initMapbox();
initAutocomplete();
