(function() {
  define(['jquery', 'underscore', 'backbone', 'marionette', 'router'], function($, _, Backbone, Marionette, Router) {
    var App, supportedNetworks;
    App = new Backbone.Marionette.Application();
    App.Router = Router;
    supportedNetworks = new Backbone.Collection([
      {
        name: 'facebook'
      }, {
        name: 'twitter'
      }, {
        name: 'linkedin'
      }, {
        name: 'google'
      }
    ]);
    App.reqres.setHandler("supportedNetworks", function() {
      return supportedNetworks;
    });
    return App;
  });

}).call(this);
