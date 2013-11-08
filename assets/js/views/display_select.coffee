App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.DisplaySelect extends Marionette.Layout
    template: templates.display_select
    regions:
      'list': '.list'

    showTemplates: ->
      @list.show new App.Views.Templates
        collection: App.request('supportedStyles')

    onShow: ->
      @showTemplates()

    modelEvents:
      'change': -> @showTemplates()
