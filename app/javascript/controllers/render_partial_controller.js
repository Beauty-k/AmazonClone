import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="render-partial"
export default class extends Controller {
  static targets = ["content"]
  connect() {
    console.log("stimulus controller connected")
  }

  render(event){
    event.preventDefault()
    const url = event.currentTarget.getAttribute("href")

    fetch(url,{
      headers: {'Accept': 'text/vnd.turbo-stream.html' }
    })

    .then(response => response.text())
    .then(html => {
      this.contentTarget.innerHTML = html
    })
    
  }
}
