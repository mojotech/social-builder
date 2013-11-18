App.module "Controllers", (Controllers, App, Backbone, Marionette, $, _) ->
  class Controllers.Main extends Marionette.Controller
    root: ->
      socialEmbed = new App.Models.SocialEmbed

      App.reqres.setHandler "socialEmbed", -> socialEmbed

      App.addRegions
        'networkSelect': '.network-select'
        'displaySelect': '.display-select'
        'copySetter': '.copy-setter'
        'htmlCodeArea': '.html-code'
        'cssCodeArea': '.css-code'

      App.networkSelect.show new App.Views.NetworkSelector model: socialEmbed
      App.displaySelect.show new App.Views.DisplaySelect model: socialEmbed
      App.copySetter.show new App.Views.CopySetter model: socialEmbed
      App.htmlCodeArea.show new App.Views.HtmlCodeArea model: socialEmbed
      App.cssCodeArea.show new App.Views.CSSCodeArea model: socialEmbed
