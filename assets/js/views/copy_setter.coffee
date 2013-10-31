define ['jquery', 'underscore', 'backbone', 'marionette', 'app', 'templates'], ($, _, Backbone, Marionette, App, templates) ->
  App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
    class Views.CopySetter extends Marionette.ItemView
      template: templates.copy_setter
      ui:
        'counter' :'.character-counter'
        'input': 'textarea'

      events:
        'input textarea': 'onTextChange'

      getInput: ->
        $.trim(@ui.input.val())

      onTextChange: ->
        input = @getInput()

        @ui.counter.text input.length

        if input.length > 120
          @ui.input.addClass 'over'
        else
          @ui.input.removeClass 'over'
