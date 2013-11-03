App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CodeArea extends Marionette.ItemView
    template: _.template("")
    tagName: 'code'

    onShow: ->
      @updateEmbedCode()

    updateEmbedCode: ->
      @$el.text(
        (new App.Views.InlineTemplate(
          collection: new Backbone.Collection @model.get('selectedNetworks')
        )).render().$el.html()
      )

    modelEvents: ->
      "change:selectedNetworks change:link change:message": @updateEmbedCode