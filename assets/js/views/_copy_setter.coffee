App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CopySetter extends Marionette.ItemView
    template: templates.copy_setter
    ui:
      'counter' :'.character-counter'
      'input': 'textarea'
      'url': 'input'
      'warning' : '.twitter-warning'
    events:
      'input textarea': 'onTextChange'
      'input input': 'onUrlChange'

    getInput: -> $.trim(@ui.input.val())

    onUrlChange: -> @model.set 'link', $.trim(@ui.url.val())

    onTextChange: ->
      input = @getInput()

      @ui.counter.text input.length
      @model.set 'message', input

      if input.length > 140
        @ui.input.addClass 'over'
        @ui.warning.addClass 'max-hit'
      else
        @ui.input.removeClass 'over'
        @ui.warning.removeClass 'max-hit'
