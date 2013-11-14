App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CodeArea extends Marionette.ItemView
    template: _.template("")
    tagName: 'code'

    initialize: ->
      @listenTo App.request('supportedStyles'), 'change:selected', (o) ->
        @render() if o.get('selected') is true

    onRender: => 
      @updateEmbedCode()
      Prism.highlightElement(@el) if @el.parentNode
