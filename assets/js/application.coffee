define ['jquery', 'underscore', 'backbone', 'marionette', 'router'], ($, _, Backbone, Marionette, Router) ->
  App = new Backbone.Marionette.Application()

  App.Router = Router

  supportedNetworks = new Backbone.Collection([
      { name: 'facebook'},
      { name: 'twitter' },
      { name: 'linkedin'},
      { name: 'google' }
    ])

  App.reqres.setHandler "supportedNetworks", -> supportedNetworks
  App
