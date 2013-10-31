define ['jquery', 'underscore', 'backbone', 'marionette', 'app', 'templates'], ($, _, Backbone, Marionette, App, templates) ->
  App.module "Models", (Models, App, Backbone, Marionette, $, _) ->
    class Models.SocialEmbed extends Backbone.Model
      defaults:
        selectedNetworks: []
        style: 'list'
        message: ''

      toggleNetwork: (network) ->
        if !~@get('selectedNetworks').indexOf(network)
          @addNetwork network
        else
          @removeNetwork network

      addNetwork: (network) ->
        @get('selectedNetworks').push(network)
        @trigger 'change:selectedNetworks'

      removeNetwork: (network) ->
        @set 'selectedNetworks',
          _.filter(@get('selectedNetworks'), (item) -> item != network)