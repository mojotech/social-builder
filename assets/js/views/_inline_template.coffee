App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.InlineTemplate extends Marionette.CollectionView
    className: 'share-button-inline-sm'
    getItemView: -> App.Views.SingleInlineShare
    itemViewOptions: ->
      styleType: @options.styleType
