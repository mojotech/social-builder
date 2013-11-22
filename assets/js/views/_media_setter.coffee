App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.MediaSetter extends Marionette.ItemView
    getTemplate: -> templates.media_setter

    ui:
      'input': 'input'

    events:
      'input input': 'onMediaUrlChange'

    onMediaUrlChange: -> @model.set 'mediaUrl', $.trim(@ui.input.val())
