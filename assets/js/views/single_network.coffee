define ['jquery', 'underscore', 'backbone', 'marionette', 'app', 'templates'], ($, _, Backbone, Marionette, App, templates) ->
  App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
    class Views.SingleNetwork extends Marionette.ItemView
      tagName: 'li'
      template: templates.single_network
      className: 'network'

      events:
        'click': 'toggleActive'

      toggleActive: ->
        @trigger 'networkToggled'
        @$el.toggleClass 'active'