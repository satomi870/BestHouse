// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'jquery'
import "popper.js";
import "bootstrap";
import "../stylesheets/application"
import "script.js"
import Raty from "raty.js"
const images = require.context('../images', true)
const imagePath = (name) => images(name, true)

// reaty.jsの初期化
window.raty = function(elem,opt) {
    if (elem == null) return;
    let raty =  new Raty(elem,opt)
    raty.init();
    return raty;
}

Rails.start()
ActiveStorage.start()


