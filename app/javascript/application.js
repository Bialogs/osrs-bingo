// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
// Setup stimulus and import controllers
import {Application} from "@hotwired/stimulus"
import {definitions} from 'stimulus:./controllers';

const application = Application.start()
application.load(definitions);

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application
import * as bootstrap from "bootstrap"
