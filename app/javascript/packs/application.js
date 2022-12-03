// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'jquery'
import "script.js"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


var lowerSelect = document.getElementById('lower_rent')
var upperSelect = document.getElementById('upper_rent')

lowerSelect.addEventListener('change', function() {
    var lowerRent = lowerSelect.selectedOptions[0].value;
    var upperRent = upperSelect.selectedOptions[0].value;
    if (!isValidRentRange(lowerRent, upperRent)) {
      alert('下限が上限を超えているので入力し直してください')
      //好きな処理を描く
    }
})


upperSelect.addEventListener('change', function() {
    var lowerRent = lowerSelect.selectedOptions[0].value;
    var upperRent = upperSelect.selectedOptions[0].value;
    if (!isValidRentRange(lowerRent, upperRent)) {
  　　 alert('下限が上限を超えているので入力し直してください')
    }
})

function isValidRentRange(lowerRent, upperRent) {
  return lowerRent < upperRent;
}

