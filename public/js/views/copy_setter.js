(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['jquery', 'underscore', 'backbone', 'marionette', 'app', 'templates'], function($, _, Backbone, Marionette, App, templates) {
    return App.module("Views", function(Views, App, Backbone, Marionette, $, _) {
      var _ref;
      return Views.CopySetter = (function(_super) {
        __extends(CopySetter, _super);

        function CopySetter() {
          _ref = CopySetter.__super__.constructor.apply(this, arguments);
          return _ref;
        }

        CopySetter.prototype.template = templates.copy_setter;

        CopySetter.prototype.ui = {
          'counter': '.character-counter',
          'input': 'textarea'
        };

        CopySetter.prototype.events = {
          'input textarea': 'onTextChange'
        };

        CopySetter.prototype.getInput = function() {
          return $.trim(this.ui.input.val());
        };

        CopySetter.prototype.onTextChange = function() {
          var input;
          input = this.getInput();
          this.ui.counter.text(input.length);
          if (input.length > 120) {
            return this.ui.input.addClass('over');
          } else {
            return this.ui.input.removeClass('over');
          }
        };

        return CopySetter;

      })(Marionette.ItemView);
    });
  });

}).call(this);
