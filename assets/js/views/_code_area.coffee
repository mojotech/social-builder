App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CodeArea extends Marionette.Layout
    template: templates.code_area

    ui:
      "copyButton": '.copy-button'

    serializeData: ->
      code: @getCode()
      noFlash: window.noFlash
      beutifyOptions:
        indent_size : 2
        wrap_line_length: 10

    initialize: ->
      @listenTo App.request('supportedStyles'), 'change:selected', (o) ->
        @render() if o.get('selected') is true

    onRender: =>
      Prism.highlightAll()
      clip = new ZeroClipboard  @$('.copy-button'),
        moviePath:       'zero_clipboard.swf'
        forceHandCursor: true

      clip.on "wrongFlash noFlash", =>
        window.noFlash = true
        $('.copy-button').hide()
        try
          ZeroClipboard.destroy()
        catch e
          delete ZeroClipboard.prototype._singleton
