import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="preferences"
export default class extends Controller {
  connect() {
  }

  checkAsGreen(event) {
    console.log(event.currentTarget)
    if(event.currentTarget.checked) {
      event.currentTarget.parentElement.classList.add("background-green")
    } else {
      event.currentTarget.parentElement.classList.remove("background-green")
    }
  }
}
