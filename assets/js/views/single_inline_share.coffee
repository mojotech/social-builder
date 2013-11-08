App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.SingleInlineShare extends Marionette.ItemView
    tagName: 'a'
    className: -> "mt-share-circle-sm mt-share-item #{@model.get('name')}"
    template: templates.single_inline_share

    setUrl: ->
      url = encodeURI(App.request('socialEmbed').get('link'))
      text = encodeURI(App.request('socialEmbed').get('message'))
      @$el.attr 'href', @model.get('shareUrl')(url, text)

    onRender: ->
      @setUrl()