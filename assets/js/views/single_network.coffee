App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.SingleNetwork extends Marionette.ItemView
    tagName: 'li'
    template: templates.single_network
    className: -> "network-item #{@model.get('name')}"

    events:
      'click': 'toggleActive'

    toggleActive: ->
      @trigger 'networkToggled'
      @$el.toggleClass 'active'
