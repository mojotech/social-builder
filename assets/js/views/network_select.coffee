define ['jquery', 'underscore', 'backbone', 'marionette', 'app', 'templates'], ($, _, Backbone, Marionette, App, templates) ->
  App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
    class Views.NetworkSelect extends Marionette.ItemView
      template: templates.network_select
      events:
        'click li': 'setSelectedNetwork'

      setSelectedNetwork: (e) ->
        $(e.currentTarget).toggleClass 'active'