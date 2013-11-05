window.App = new Backbone.Marionette.Application()


App.on 'initialize:after', ->

  supportedStyles = new Backbone.Collection([
    { name: 'list'},
    { name: 'popout'}
  ])

  App.reqres.setHandler "supportedStyles", -> supportedStyles
