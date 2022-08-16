import { Controller } from "@hotwired/stimulus"
const event = new CustomEvent("update-map")
window.dispatchEvent(event)

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
    console.log("hello from fade controller")
    var opacity = 0;
    var intervalID = 0;
    window.onload = fadeIn;

    function fadeIn() {
        setInterval(show, 200);
    }

    function show() {
        var body = document.getElementById("body");
        opacity = Number(window.getComputedStyle(body)
                         .getPropertyValue("opacity"));
        if (opacity < 1) {
            opacity = opacity + 0.1;
            body.style.opacity = opacity
        } else {
            clearInterval(intervalID);
        }
    }
  }
}
