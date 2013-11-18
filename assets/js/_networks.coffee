App.on 'initialize:after', ->
  supportedNetworks = new App.Collections.SocialNetworks([
    {
      name: 'mt-facebook'
      imagePath: 'http://mojotech-static.s3.amazonaws.com/facebook@2x.png'
      shareUrl: (url) -> "https://www.facebook.com/sharer/sharer.php?u=#{url}"
      selected: true
    },
    {
      name: 'mt-twitter'
      imagePath: 'http://mojotech-static.s3.amazonaws.com/twitter@2x.png'
      shareUrl: (url, text) -> "http://twitter.com/intent/tweet?text=#{text}&url=#{url}"
      selected: true
    },
    {
      name: 'mt-linkedin'
      imagePath: 'http://mojotech-static.s3.amazonaws.com/linkedin@2x.png'
      shareUrl: (url, text) -> "http://www.linkedin.com/shareArticle?mini=true&url=#{url}&summary=#{text}"
    },
    {
      name: 'mt-google'
      imagePath: 'http://mojotech-static.s3.amazonaws.com/google@2x.png'
      shareUrl: (url) -> "https://plus.google.com/share?url=#{url}"
    }
  ])

  App.reqres.setHandler "supportedNetworks", -> supportedNetworks
