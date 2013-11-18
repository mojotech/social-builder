App.module "Collections", (Collections, App, Backbone, Marionette, $, _) ->
  class Collections.SocialNetworks extends Backbone.Collection
    model: App.Models.SocialNetwork

