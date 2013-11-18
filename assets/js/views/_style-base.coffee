App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.StyleBase extends Marionette.Layout
    tagName: 'li'
    className: "toggle display-style inline"

    triggers:
      "click": 'styleClicked'

    template: templates.embed_style

    regions:
      displayType: '.display-type'

    onRender: =>
      @displayType.show new App.Views.InlineTemplate
        collection: App.request("socialEmbed").selectedNetworks()
        styleType: @classBase

      if @model.get('selected')
        @$el.addClass 'active'
      else
        @$el.removeClass 'active'

    modelEvents:
      'change:selected': 'render'
