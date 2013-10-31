require.config
  shim:
    underscore: { exports: '_' }
    backbone: { deps: ['jquery', 'underscore'], exports: 'Backbone' }
    forms: { deps: ['backbone'] }
    marionette: { deps: ['backbone'], exports: 'Marionette' }
    templates: { exports: 'templates' }
  paths:
    # dependencies
    jquery: '//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.0/jquery.min'
    underscore: '//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.1/underscore-min'
    backbone: '//cdnjs.cloudflare.com/ajax/libs/backbone.js/1.0.0/backbone-min'
    marionette: '//cdnjs.cloudflare.com/ajax/libs/backbone.marionette/1.0.4-bundled/backbone.marionette.min'
    forms: '//cdnjs.cloudflare.com/ajax/libs/backbone-forms/0.12.0/backbone-forms.min'
    # application
    app: 'application'
    router: 'router'
    templates: 'templates'
    network_select: 'views/network_select'
    display_select: 'views/display_select'
    copy_setter: 'views/copy_setter'

require ['app', 'network_select', 'display_select', 'copy_setter'], (App) ->
  class Controller extends Marionette.Controller
    root: ->
      App.addRegions
        'networkSelect': '.network-select'
        'displaySelect': '.display-select'
        'copySetter': '.copy-setter'

      App.networkSelect.show new App.Views.NetworkSelect
      App.displaySelect.show new App.Views.DisplaySelect
      App.copySetter.show new App.Views.CopySetter

  App.on 'initialize:after', ->
    App.Router = new App.Router(controller: new Controller)
    Backbone.history.start(pushState: true)

  App.start()
