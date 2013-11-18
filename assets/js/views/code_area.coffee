App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CodeArea extends Marionette.Layout
    template: templates.code_area

    serializeData: ->
      code: @getCode()
      beutifyOptions:
        indent_size : 2
        wrap_line_length: 10

    initialize: ->
      @listenTo App.request('supportedStyles'), 'change:selected', (o) ->
        @render() if o.get('selected') is true

    onRender: =>
      Prism.highlightAll()
      new ZeroClipboard  @$('.copy-button'),
        moviePath:       'zero_clipboard.swf'
        forceHandCursor: true
