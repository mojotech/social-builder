(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['jquery', 'underscore', 'backbone', 'marionette', 'app', 'templates'], function($, _, Backbone, Marionette, App, templates) {
    return App.module("Views", function(Views, App, Backbone, Marionette, $, _) {
      var _ref;
      return Views.SingleNetwork = (function(_super) {
        __extends(SingleNetwork, _super);

        function SingleNetwork() {
          _ref = SingleNetwork.__super__.constructor.apply(this, arguments);
          return _ref;
        }

        SingleNetwork.prototype.tagName = 'li';

        SingleNetwork.prototype.template = templates.single_network;

        SingleNetwork.prototype.className = function() {
          return "network " + (this.model.get('name'));
        };

        SingleNetwork.prototype.events = {
          'click': 'toggleActive'
        };

        SingleNetwork.prototype.toggleActive = function() {
          this.trigger('networkToggled');
          return this.$el.toggleClass('active');
        };

        return SingleNetwork;

      })(Marionette.ItemView);
    });
  });

}).call(this);
