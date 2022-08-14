import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Save any kind of movies 🎥 ^3000", "For those days of Netflix and chill 🍿^3000"],
      typeSpeed: 20,
      backSpeed: 20,
      loop: true
  })
}
}
