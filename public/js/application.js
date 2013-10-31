(function() {
  define(['jquery', 'underscore', 'backbone', 'marionette', 'router'], function($, _, Backbone, Marionette, Router) {
    var App, supportedNetworks, supportedStyles;
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
    supportedStyles = new Backbone.Collection([
      {
        name: 'list'
      }, {
        name: 'popout'
      }
    ]);
    App.reqres.setHandler("supportedNetworks", function() {
      return supportedNetworks;
    });
    App.reqres.setHandler("supportedStyles", function() {
      return supportedStyles;
    });
    return App;
  });

}).call(this);
