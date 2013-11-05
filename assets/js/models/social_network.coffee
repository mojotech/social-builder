App.module "Models", (Models, App, Backbone, Marionette, $, _) ->
  class Models.SocialNetwork extends Backbone.Model
    defaults:
      selected: false