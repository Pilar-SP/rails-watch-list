import { Controller } from "@hotwired/stimulus"
import AOS from 'aos';
import 'aos/dist/aos.css';


export default class extends Controller {

  connect() {
    AOS.init();
    // console.log("Hello Pili")
  }
}
