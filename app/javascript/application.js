// Entry point for the build script in your package.json

import Rails from '@rails/ujs'
import Turbolinks from 'turbolinks'

window.Rails = Rails
window.Turbolinks = Turbolinks

Rails.start()
Turbolinks.start()