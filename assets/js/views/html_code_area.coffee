App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.HtmlCodeArea extends Views.CodeArea
    className: 'prettyprint linenums lang-html'

    updateEmbedCode: =>
      code = new App.Views.InlineTemplate(
          collection: @model.selectedNetworks()
          styleType: App.request('supportedStyles').findWhere({selected: true}).get('name')
        ).render().$el.html()

      @$el.text(html_beautify(code))
      prettyPrint()

    modelEvents: ->
      "change:selectedNetworks change:link change:message": @render
