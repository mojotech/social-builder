(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['jquery', 'underscore', 'backbone', 'marionette', 'app', 'templates'], function($, _, Backbone, Marionette, App, templates) {
    return App.module("Views", function(Views, App, Backbone, Marionette, $, _) {
      var _ref;
      return Views.NetworkSelect = (function(_super) {
        __extends(NetworkSelect, _super);

        function NetworkSelect() {
          _ref = NetworkSelect.__super__.constructor.apply(this, arguments);
          return _ref;
        }

        NetworkSelect.prototype.tagName = 'ul';

        NetworkSelect.prototype.getItemView = function() {
          return Views.SingleNetwork;
        };

        NetworkSelect.prototype.initialize = function() {
          return this.on("itemview:networkToggled", this.setNetworkState);
        };

        NetworkSelect.prototype.setNetworkState = function(network) {
          return this.model.toggleNetwork(network.model.get('name'));
        };

        return NetworkSelect;

      })(Marionette.CollectionView);
    });
  });

}).call(this);
