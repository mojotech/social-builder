window.App = new Backbone.Marionette.Application()


App.on 'initialize:after', ->
  supportedNetworks = new App.Collections.SocialNetworks([
      {
        name: 'facebook'
        imagePath: '/img/logos/facebook@2x.png'
        shareUrl: (url) -> "https://www.facebook.com/sharer/sharer.php?u=#{url}"
        default: true
      },
      {
        name: 'twitter'
        imagePath: '/img/logos/twitter@2x.png'
        shareUrl: (url, text) -> "http://twitter.com/intent/tweet?text=#{text}&url=#{url}"
        default: true
      },
      {
        name: 'linkedin'
        imagePath: '/img/logos/linkedin@2x.png'
        shareUrl: (url, text) -> "http://www.linkedin.com/shareArticle?mini=true&url=#{url}&summary=#{text}"
      },
      {
        name: 'google'
        imagePath: '/img/logos/google@2x.png'
        shareUrl: (url) -> "https://plus.google.com/share?url=#{url}"
      }
    ])

  supportedStyles = new Backbone.Collection([
    { name: 'list'},
    { name: 'popout'}
  ])

  App.reqres.setHandler "supportedNetworks", -> supportedNetworks
  App.reqres.setHandler "supportedStyles", -> supportedStyles
