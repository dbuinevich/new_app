import { Controller } from "@hotwired/stimulus"

import { get } from "@rails/request.js"

export default class extends Controller {
  static targets = [ "modelSelect" ]
  change(event) {
    let brand_id = event.target.selectedOptions[0].value
    let target = this.modelSelectTarget.id

    get(`/offers/models?target=${target}&brand_id=${brand_id}`, {
      responseKind: "turbo-stream"
    })
  }
}
