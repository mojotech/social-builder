App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CodeArea extends Marionette.ItemView
    template: _.template("")
    tagName: 'code'

    onShow: ->
      @updateEmbedCode()

    updateEmbedCode: ->
      @$el.text @model.getNetworkLinks()

    modelEvents: ->
      "change": @updateEmbedCode
