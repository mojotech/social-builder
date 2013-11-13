App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.Templates extends Marionette.CollectionView
    tagName: 'ul'
    onShow: ->
      @on 'itemview:styleClicked', @styleClicked

    styleClicked: (obj) ->
      @collection.findWhere({selected: true}).set('selected', false)
      obj.model.set 'selected', true

    getItemView: (m) =>
      App.Views[m.get('name')]
