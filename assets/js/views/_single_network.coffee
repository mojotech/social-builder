App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.SingleNetwork extends Marionette.ItemView
    tagName: 'li'
    template: templates.single_network
    className: ->
      base = "toggle network-item #{@model.get('name')}"

      if App.request('socialEmbed').networkSelected(@model)
        base += " active"

      base

    events:
      'click': 'toggleActive'

    toggleActive: ->
      @trigger 'networkToggled'
      @$el.toggleClass 'active'
