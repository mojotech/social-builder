#= require "vendor/jquery.js"
#= require "vendor/underscore.js"
#= require "vendor/backbone.js"
#= require "vendor/backbone.marionette.js"

#= require "vendor/beutify-css.js"
#= require "vendor/beutify-html.js"
#= require "vendor/prism.js"
#= require "vendor/zero_clipboard.js"

#= require "application.js"
#= require "networks.js"

#= require "models/social_embed.js"
#= require "models/social_network.js"

#= require "collections/social_networks.js"

#= require "views/style-base.js"
#= require 'views/style-base.js'
#= require 'views/network_select.js'
#= require 'views/display_select.js'
#= require 'views/copy_setter.js'
#= require 'views/network_selector.js'
#= require 'views/single_network.js'
#= require 'views/code_area.js'
#= require 'views/html_code_area.js'
#= require 'views/css_code_area.js'
#= require 'views/inline_template.js'
#= require 'views/single_inline_share.js'
#= require 'views/templates.js'
#= require 'views/list-square.js'
#= require 'views/list-bar.js'
#= require 'views/list-circle.js'

#= require 'controller.js'

App.on 'initialize:after', ->
  class r extends Backbone.Marionette.AppRouter
    appRoutes:
      "": 'root'

  App.Router = new r(controller: new App.Controllers.Main)
  Backbone.history.start(pushState: true)

$ -> App.start()
