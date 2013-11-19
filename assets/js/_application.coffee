window.App = new Backbone.Marionette.Application


App.on 'initialize:after', ->

  supportedStyles = new Backbone.Collection([
    { name: 'list-square', selected: true}
    { name: 'list-circle'},
    { name: 'list-bar'},
    { name: 'list-square-bw'}
  ])

  App.reqres.setHandler "supportedStyles", -> supportedStyles
