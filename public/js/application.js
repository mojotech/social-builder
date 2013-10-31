(function() {
  define(['jquery', 'underscore', 'backbone', 'marionette', 'router'], function($, _, Backbone, Marionette, Router) {
    var App;
    App = new Backbone.Marionette.Application();
    App.Router = Router;
    return App;
  });

}).call(this);
