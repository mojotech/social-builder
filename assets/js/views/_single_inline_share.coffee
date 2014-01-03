App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.SingleInlineShare extends Marionette.ItemView
    tagName: 'a'
    className: -> "#{@model.get('name')} mt-share-#{@options.styleType}-sm"
    template: templates.single_inline_share

    setUrl: ->
      url = encodeURIComponent(App.request('socialEmbed').get('link'))
      text = encodeURIComponent(App.request('socialEmbed').get('message'))
      mediaUrl = encodeURIComponent(App.request('socialEmbed').get('mediaUrl'))

      @$el.attr 'href', @model.get('shareUrl')(url, text, mediaUrl)

    onRender: ->
      @setUrl()
