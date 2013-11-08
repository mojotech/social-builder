App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views['list-square'] extends Marionette.Layout
    tagName: 'li'
    className: 'inline-square display-style inline'
    template: _.template("<ul class='display-type'></ul>")
    regions:
      displayType: '.display-type'
    onRender: =>
      @displayType.show new App.Views.InlineTemplate
        collection: App.request("socialEmbed").selectedNetworks()
