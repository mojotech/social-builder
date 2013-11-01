App.on 'initialize:after', ->
  class r extends Backbone.Marionette.AppRouter
    appRoutes:
      "": 'root'

  App.Router = new r(controller: new App.Controllers.Main)
  Backbone.history.start(pushState: true)

$ -> App.start()
