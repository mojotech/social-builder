(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['jquery', 'underscore', 'backbone', 'marionette', 'app', 'templates'], function($, _, Backbone, Marionette, App, templates) {
    return App.module("Views", function(Views, App, Backbone, Marionette, $, _) {
      var _ref;
      return Views.NetworkSelector = (function(_super) {
        __extends(NetworkSelector, _super);

        function NetworkSelector() {
          _ref = NetworkSelector.__super__.constructor.apply(this, arguments);
          return _ref;
        }

        NetworkSelector.prototype.template = templates.network_select;

        NetworkSelector.prototype.regions = {
          'selectables': '.selectables'
        };

        NetworkSelector.prototype.onShow = function() {
          return this.selectables.show(new App.Views.NetworkSelect({
            collection: App.request('supportedNetworks'),
            model: this.model
          }));
        };

        return NetworkSelector;

      })(Marionette.Layout);
    });
  });

}).call(this);
