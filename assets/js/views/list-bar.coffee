App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views['list-bar'] extends Marionette.Layout
    tagName: 'li'
    className: 'inline-bar display-style inline'
    template: _.template("<ul class='display-type'></ul>")
    regions:
      displayType: '.display-type'
    onRender: =>
      @displayType.show new App.Views.InlineTemplate
        collection: App.request("socialEmbed").selectedNetworks()
