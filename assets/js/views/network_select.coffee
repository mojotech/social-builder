App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.NetworkSelect extends Marionette.CollectionView
    tagName: 'ul'
    getItemView: -> Views.SingleNetwork

    initialize: ->
      @on "itemview:networkToggled", @setNetworkState

    setNetworkState: (network) ->
      @model.toggleNetwork network.model
