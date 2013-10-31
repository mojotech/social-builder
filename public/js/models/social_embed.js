(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['jquery', 'underscore', 'backbone', 'marionette', 'app', 'templates'], function($, _, Backbone, Marionette, App, templates) {
    return App.module("Models", function(Models, App, Backbone, Marionette, $, _) {
      var _ref;
      return Models.SocialEmbed = (function(_super) {
        __extends(SocialEmbed, _super);

        function SocialEmbed() {
          _ref = SocialEmbed.__super__.constructor.apply(this, arguments);
          return _ref;
        }

        SocialEmbed.prototype.defaults = {
          selectedNetworks: [],
          style: 'list',
          message: ''
        };

        SocialEmbed.prototype.toggleNetwork = function(network) {
          if (!~this.get('selectedNetworks').indexOf(network)) {
            return this.addNetwork(network);
          } else {
            return this.removeNetwork(network);
          }
        };

        SocialEmbed.prototype.addNetwork = function(network) {
          this.get('selectedNetworks').push(network);
          return this.trigger('change:selectedNetworks');
        };

        SocialEmbed.prototype.removeNetwork = function(network) {
          return this.set('selectedNetworks', _.filter(this.get('selectedNetworks'), function(item) {
            return item !== network;
          }));
        };

        return SocialEmbed;

      })(Backbone.Model);
    });
  });

}).call(this);
