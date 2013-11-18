#= require "vendor/_jquery.js"
#= require "vendor/_underscore.js"
#= require "vendor/_backbone.js"
#= require "vendor/_backbone.marionette.js"

#= require "vendor/_beutify-css.js"
#= require "vendor/_beutify-html.js"
#= require "vendor/_prism.js"
#= require "vendor/_zero_clipboard.js"

#= require "_application.js"
#= require "_networks.js"

#= require "models/_social_embed.js"
#= require "models/_social_network.js"

#= require "collections/_social_networks.js"

#= require "views/_style-base.js"
#= require 'views/_style-base.js'
#= require 'views/_network_select.js'
#= require 'views/_display_select.js'
#= require 'views/_copy_setter.js'
#= require 'views/_network_selector.js'
#= require 'views/_single_network.js'
#= require 'views/_code_area.js'
#= require 'views/_html_code_area.js'
#= require 'views/_css_code_area.js'
#= require 'views/_inline_template.js'
#= require 'views/_single_inline_share.js'
#= require 'views/_templates.js'
#= require 'views/_list-square.js'
#= require 'views/_list-bar.js'
#= require 'views/_list-circle.js'

#= require '_controller.js'

$ ->
  App.start()
  (new App.Controllers.Main).root()
