App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.CSSCodeArea extends Views.CodeArea
    className: 'language-css'

    serializeData: ->
      _.extend
        type: "CSS"
      , super

    templateHelpers: ->
      beutify: css_beautify

    getCode: ->
      selectedStyleName = App.request('supportedStyles').findWhere(selected: true).get('name')
      node = _.find document.styleSheets, (v) -> v.ownerNode.id is selectedStyleName
      rules = if node.rules? then node.rules else node.cssRules
      _.map(rules, (v) -> v.cssText).reverse().join('')
