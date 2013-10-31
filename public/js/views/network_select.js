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

        NetworkSelect.prototype.template = templates.network_select;

        NetworkSelect.prototype.events = {
          'click li': 'setSelectedNetwork'
        };

        NetworkSelect.prototype.setSelectedNetwork = function(e) {
          return $(e.currentTarget).toggleClass('active');
        };

        return NetworkSelect;

      })(Marionette.ItemView);
    });
  });

}).call(this);
