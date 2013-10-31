(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['jquery', 'underscore', 'backbone', 'marionette', 'app', 'templates'], function($, _, Backbone, Marionette, App, templates) {
    return App.module("Views", function(Views, App, Backbone, Marionette, $, _) {
      var _ref;
      return Views.DisplaySelect = (function(_super) {
        __extends(DisplaySelect, _super);

        function DisplaySelect() {
          _ref = DisplaySelect.__super__.constructor.apply(this, arguments);
          return _ref;
        }

        DisplaySelect.prototype.template = templates.display_select;

        return DisplaySelect;

      })(Marionette.ItemView);
    });
  });

}).call(this);
