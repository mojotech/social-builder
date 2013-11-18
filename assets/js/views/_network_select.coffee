App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.NetworkSelect extends Marionette.CollectionView
    tagName: 'ul'
    className: 'network-select-list'
    getItemView: -> Views.SingleNetwork
    initialize: ->
      @on "itemview:networkToggled", @setNetworkState

    setNetworkState: (network) ->
      @model.toggleNetwork network.model
