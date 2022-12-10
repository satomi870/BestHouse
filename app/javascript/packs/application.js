// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'jquery'
import "popper.js";
import "bootstrap";
import "../stylesheets/application"
import "script.js"
import Raty from "raty.js"

window.raty = function(elem,opt) {
    let raty =  new Raty(elem,opt)
    raty.init();
    return raty;
}

Rails.start()
Turbolinks.start()
ActiveStorage.start()


let lowerSelect = document.getElementById('lower_rent')
let upperSelect = document.getElementById('upper_rent')

if (lowerSelect) {
  lowerSelect.addEventListener('change', function() {
      let lowerRent = lowerSelect.selectedOptions[0].value;
      let upperRent = upperSelect.selectedOptions[0].value;
      if (!isValidRentRange(lowerRent, upperRent)) {
        alert('下限が上限を超えているので入力し直してください')
        //好きな処理を描く
      }
  })
}

if (upperSelect) {
  upperSelect.addEventListener('change', function() {
      let lowerRent = lowerSelect.selectedOptions[0].value;
      let upperRent = upperSelect.selectedOptions[0].value;
      if (!isValidRentRange(lowerRent, upperRent)) {
        alert('下限が上限を超えているので入力し直してください')
      }
  })
}

function isValidRentRange(lowerRent, upperRent) {
  if (Number(upperRent) === 0) {
    return true
  }
  return Number(lowerRent)< Number(upperRent);
}
