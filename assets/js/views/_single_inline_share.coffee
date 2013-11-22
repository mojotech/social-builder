App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.SingleInlineShare extends Marionette.ItemView
    tagName: 'a'
    className: -> "#{@model.get('name')} mt-share-#{@options.styleType}-sm"
    template: templates.single_inline_share

    setUrl: ->
      url = encodeURI(App.request('socialEmbed').get('link'))
      text = encodeURI(App.request('socialEmbed').get('message'))
      mediaUrl = encodeURI(App.request('socialEmbed').get('mediaUrl'))

      @$el.attr 'href', @model.get('shareUrl')(url, text, mediaUrl)

    onRender: ->
      @setUrl()
