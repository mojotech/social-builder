App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CopySetter extends Marionette.ItemView
    template: templates.copy_setter
    ui:
      'counter' :'.character-counter'
      'input': 'textarea'
      'url': 'input'

    events:
      'input textarea': 'onTextChange'
      'blur input': 'onUrlChange'

    getInput: ->
      $.trim(@ui.input.val())

    onUrlChange: ->
      @model.set 'url', $.trim(@ui.url.val())

    onTextChange: ->
      input = @getInput()

      @ui.counter.text input.length
      @model.set 'message', input

      if input.length > 120
        @ui.input.addClass 'over'
      else
        @ui.input.removeClass 'over'
