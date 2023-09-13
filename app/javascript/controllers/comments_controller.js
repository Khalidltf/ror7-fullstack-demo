import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  initialize() {}
  connect() {}

  toggleForm(event) {
    console.log("toggleForm");
    event.preventDefault();
    event.stopPropagation();

  }
}
