App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CodeArea extends Marionette.ItemView
    template: _.template("")
    tagName: 'pre'
    className: 'prettyprint linenums lang-html'

    initialize: ->
      @listenTo App.request('supportedStyles'), 'change:selected', (o) ->
        @render() if o.get('selected') is true

    onRender: =>
      @updateEmbedCode()
      @$el.removeClass 'prettyprinted'

    updateEmbedCode: =>
      code = new App.Views.InlineTemplate(
          collection: @model.selectedNetworks()
          styleType: App.request('supportedStyles').findWhere({selected: true}).get('name')
        ).render().$el.html()

      @$el.text(html_beautify(code))
      prettyPrint()

    onShow: ->
      prettyPrint()
      @$el.removeClass 'prettyprinted'

    modelEvents: ->
      "change:selectedNetworks change:link change:message": @render
