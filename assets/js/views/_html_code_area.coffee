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
      classBase = (new Views[App.request('supportedStyles').findWhere({selected: true}).get('name')]).classBase

      code = new App.Views.InlineTemplate(
        collection: @model.selectedNetworks()
        styleType: classBase
      ).render().$el.html()

      code = "<!-- Oh no! Better select some networks! -->" unless code.length > 0
      "<div> #{code} </div>"

    modelEvents: ->
      "change:selectedNetworks change:link change:message": @render
