App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.NetworkSelector extends Marionette.Layout
    template: templates.network_select
    regions:
      'selectables': '.selectables'

    onShow: ->
      @selectables.show new App.Views.NetworkSelect(
        collection: App.request('supportedNetworks')
        model: @model
      )
