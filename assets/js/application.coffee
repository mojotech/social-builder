window.App = new Backbone.Marionette.Application


App.on 'initialize:after', ->

  supportedStyles = new Backbone.Collection([
    { name: 'list-square', selected: true}
    { name: 'list-circle'},
    { name: 'list-bar'}
  ])

  App.reqres.setHandler "supportedStyles", -> supportedStyles
