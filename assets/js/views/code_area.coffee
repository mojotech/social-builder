App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CodeArea extends Marionette.ItemView
    template: _.template("")
    tagName: 'code'

    onShow: ->
      @updateEmbedCode()

    updateEmbedCode: ->
      @$el.text(
        (new App.Views.InlineTemplate(
          collection: @model.selectedNetworks()
        )).render().$el.html()
      ).addClass('language-markup')

    modelEvents: ->
      "change:selectedNetworks change:link change:message": @updateEmbedCode