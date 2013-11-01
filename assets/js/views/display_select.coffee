App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.DisplaySelect extends Marionette.ItemView
    template: templates.display_select
