App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.StyleBase extends Marionette.Layout
    tagName: 'li'
    className: -> "#{@classBase} display-style inline"

    triggers:
      "click": 'styleClicked'

    template: _.template("<ul class='display-type'></ul>")

    regions:
      displayType: '.display-type'

    onRender: =>
      @displayType.show new App.Views.InlineTemplate
        collection: App.request("socialEmbed").selectedNetworks()

      if @model.get('selected')
        @$el.addClass 'selected'
      else
        @$el.removeClass 'selected'

    modelEvents:
      'change:selected': 'render'
