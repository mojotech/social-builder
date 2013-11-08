App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.Templates extends Marionette.CollectionView
    tagName: 'ul'
    getItemView: (m) =>
      App.Views[m.get('name')]
