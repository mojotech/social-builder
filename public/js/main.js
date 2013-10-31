(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  require.config({
    shim: {
      underscore: {
        exports: '_'
      },
      backbone: {
        deps: ['jquery', 'underscore'],
        exports: 'Backbone'
      },
      forms: {
        deps: ['backbone']
      },
      marionette: {
        deps: ['backbone'],
        exports: 'Marionette'
      },
      templates: {
        exports: 'templates'
      }
    },
    paths: {
      jquery: '//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.0/jquery.min',
      underscore: '//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.1/underscore-min',
      backbone: '//cdnjs.cloudflare.com/ajax/libs/backbone.js/1.0.0/backbone-min',
      marionette: '//cdnjs.cloudflare.com/ajax/libs/backbone.marionette/1.0.4-bundled/backbone.marionette.min',
      forms: '//cdnjs.cloudflare.com/ajax/libs/backbone-forms/0.12.0/backbone-forms.min',
      app: 'application',
      router: 'router',
      templates: 'templates',
      social_embed: 'models/social_embed',
      network_select: 'views/network_select',
      display_select: 'views/display_select',
      copy_setter: 'views/copy_setter',
      network_selector: 'views/network_selector',
      single_network: 'views/single_network'
    }
  });

  require(['app', 'network_select', 'display_select', 'copy_setter', 'network_selector', 'social_embed', 'single_network'], function(App) {
    var Controller, _ref;
    Controller = (function(_super) {
      __extends(Controller, _super);

      function Controller() {
        _ref = Controller.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      Controller.prototype.root = function() {
        var socialEmbed;
        socialEmbed = new App.Models.SocialEmbed;
        App.addRegions({
          'networkSelect': '.network-select',
          'displaySelect': '.display-select',
          'copySetter': '.copy-setter'
        });
        App.networkSelect.show(new App.Views.NetworkSelector({
          model: socialEmbed
        }));
        App.displaySelect.show(new App.Views.DisplaySelect({
          model: socialEmbed
        }));
        return App.copySetter.show(new App.Views.CopySetter({
          model: socialEmbed
        }));
      };

      return Controller;

    })(Marionette.Controller);
    App.on('initialize:after', function() {
      App.Router = new App.Router({
        controller: new Controller
      });
      return Backbone.history.start({
        pushState: true
      });
    });
    return App.start();
  });

}).call(this);
