App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CodeArea extends Marionette.ItemView
    template: _.template("")
    tagName: 'code'
    className: 'prettyprint lang-html'

    onRender: ->
      @updateEmbedCode()
      @$el.removeClass 'prettyprinted'

    updateEmbedCode: ->
      code = new App.Views.InlineTemplate(
          collection: @model.selectedNetworks()
        ).render().$el.html()

      @$el.text(code)
      prettyPrint()

    onShow: ->
      prettyPrint()
      @$el.removeClass 'prettyprinted'

    modelEvents: ->
      "change:selectedNetworks change:link change:message": @render
