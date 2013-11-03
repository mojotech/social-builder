App.module "Models", (Models, App, Backbone, Marionette, $, _) ->
  class Models.SocialEmbed extends Backbone.Model
    defaults: ->
      {
        selectedNetworks: App.request('supportedNetworks').where(default: true)

        style: 'list'
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

    getNetworkLinks: ->
      message = @get('message')
      link = @get('link')
      _.map(@get('selectedNetworks'), (n) ->
        n.get('shareUrl')(link, message)).join("\n")