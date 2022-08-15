import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"

export default class extends Controller {
  connect() {
    console.log("hello from tom select")
    new TomSelect(this.element, {
      create: true,
        sortField: {
        field: "text",
        direction: "asc"
      }
    })
  }
}
