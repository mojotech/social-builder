App.module "Models", (Models, App, Backbone, Marionette, $, _) ->
  class Models.SocialEmbed extends Backbone.Model
    defaults: ->
      {
        selectedNetworks: App.request('supportedNetworks')
        style: 'list'
        link: ''
        message: ''
        mediaUrl: ''
      }

    networkSelected: (network) ->
      network = @get('selectedNetworks').find (n) -> n.get('name') is network.get('name')
      network.get('selected')

    toggleNetwork: (network) ->
      network = @get('selectedNetworks').find (n) -> n.get('name') is network.get('name')

      network.set 'selected', !network.get('selected')
      @trigger 'change change:selectedNetworks'

    selectedNetworks: ->
      new App.Collections.SocialNetworks(@get('selectedNetworks').where({selected: true}))
