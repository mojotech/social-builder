App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CSSCodeArea extends Views.CodeArea
    className: 'prettyprint linenums lang-css'

    updateEmbedCode: =>
      selectedStyleName = App.request('supportedStyles').findWhere(selected: true).get('name')
      node = _.find document.styleSheets, (v) -> v.ownerNode.id is selectedStyleName
      @$el.text(
        css_beautify(_.map(node.rules, (v) -> v.cssText).reverse().join(''))
      )
