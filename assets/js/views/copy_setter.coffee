define ['jquery', 'underscore', 'backbone', 'marionette', 'app', 'templates'], ($, _, Backbone, Marionette, App, templates) ->
  App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
    class Views.CopySetter extends Marionette.ItemView
      template: templates.copy_setter
