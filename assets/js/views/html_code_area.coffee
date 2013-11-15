App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.HtmlCodeArea extends Views.CodeArea
    className: 'language-markup'

    serializeData: ->
      _.extend
        type: "HTML"
      , super

    templateHelpers: ->
      beutify: html_beautify

    getCode: =>
      code = new App.Views.InlineTemplate(
        collection: @model.selectedNetworks()
        styleType: App.request('supportedStyles').findWhere({selected: true}).get('name')
      ).render().$el.html()

      code = "<!-- Oh no! Better select some networks! -->" unless code.length > 0
      code

    modelEvents: ->
      "change:selectedNetworks change:link change:message": @render
