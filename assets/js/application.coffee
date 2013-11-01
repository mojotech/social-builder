window.App = new Backbone.Marionette.Application()


App.on 'initialize:after', ->
  supportedNetworks = new App.Collections.SocialNetworks([
      {
        name: 'facebook'
        shareUrl: (url) -> "https://www.facebook.com/sharer/sharer.php?u=#{url}"
      },
      {
        name: 'twitter'
        shareUrl: (url, text) -> "http://twitter.com/intent/tweet?text=#{text}&url=#{url}"
      },
      {
        name: 'linkedin'
        shareUrl: (url, text) -> "http://www.linkedin.com/shareArticle?mini=true&url=#{url}&summary={text}"
      },
      {
        name: 'google'
        shareUrl: (url) -> "https://plus.google.com/share?url=#{url}"
      }
    ])

  supportedStyles = new Backbone.Collection([
    { name: 'list'},
    { name: 'popout'}
  ])

  App.reqres.setHandler "supportedNetworks", -> supportedNetworks
  App.reqres.setHandler "supportedStyles", -> supportedStyles
