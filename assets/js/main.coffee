require.config
  shim:
    underscore: { exports: '_' }
    backbone: { deps: ['jquery', 'underscore'], exports: 'Backbone' }
    marionette: { deps: ['backbone'], exports: 'Marionette' }
    templates: { exports: 'templates' }
  paths:
    # dependencies
    jquery: '//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.0/jquery.min'
    underscore: '//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.1/underscore-min'
    backbone: '//cdnjs.cloudflare.com/ajax/libs/backbone.js/1.0.0/backbone-min'
    marionette: '//cdnjs.cloudflare.com/ajax/libs/backbone.marionette/1.0.4-bundled/backbone.marionette.min'
    # application
    app: 'application'
    router: 'router'
    templates: 'templates'
    social_embed: 'models/social_embed'
    network_select: 'views/network_select'
    display_select: 'views/display_select'
    copy_setter: 'views/copy_setter'
    network_selector: 'views/network_selector'
    single_network: 'views/single_network'

require ['app', 'network_select', 'display_select', 'copy_setter', 'network_selector', 'social_embed', 'single_network'], (App) ->
  class Controller extends Marionette.Controller
    root: ->
      socialEmbed = new App.Models.SocialEmbed

      App.addRegions
        'networkSelect': '.network-select'
        'displaySelect': '.display-select'
        'copySetter': '.copy-setter'

      App.networkSelect.show new App.Views.NetworkSelector model: socialEmbed
      App.displaySelect.show new App.Views.DisplaySelect model: socialEmbed
      App.copySetter.show new App.Views.CopySetter model: socialEmbed

  App.on 'initialize:after', ->
    App.Router = new App.Router(controller: new Controller)
    Backbone.history.start(pushState: true)

  App.start()
