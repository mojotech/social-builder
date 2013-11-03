App.module "Models", (Models, App, Backbone, Marionette, $, _) ->
  class Models.SocialEmbed extends Backbone.Model
    defaults: ->
      {
        selectedNetworks: App.request('supportedNetworks').where(default: true)
        style: 'list'
        link: ''
        message: ''
      }

    networkSelected: (network) ->
      !!~@get('selectedNetworks').indexOf(network)

    toggleNetwork: (network) ->
      if @networkSelected(network)
        @removeNetwork network
      else
        @addNetwork network

    addNetwork: (network) ->
      @get('selectedNetworks').push(network)
      @trigger 'change change:selectedNetworks'

    removeNetwork: (network) ->
      @set 'selectedNetworks',
        _.filter(@get('selectedNetworks'), (item) -> item != network)