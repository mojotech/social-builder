App.on 'initialize:after', ->
  supportedNetworks = new App.Collections.SocialNetworks([
    {
      name: 'mt-facebook'
      imagePath: '//mojotech-static.s3.amazonaws.com/facebook@2x.png'
      shareUrl: (url) -> "//www.facebook.com/sharer/sharer.php?u=#{url}"
      selected: true
    },
    {
      name: 'mt-twitter'
      imagePath: '//mojotech-static.s3.amazonaws.com/twitter@2x.png'
      shareUrl: (url, text) -> "//twitter.com/intent/tweet?text=#{text}&url=#{url}"
      selected: true
    },
    {
      name: 'mt-linkedin'
      imagePath: '//mojotech-static.s3.amazonaws.com/linkedin@2x.png'
      shareUrl: (url, text) -> "//www.linkedin.com/shareArticle?mini=true&url=#{url}&summary=#{text}"
    },
    {
      name: 'mt-google'
      imagePath: '//mojotech-static.s3.amazonaws.com/google@2x.png'
      shareUrl: (url) -> "//plus.google.com/share?url=#{url}"
    },
    {
      name: 'mt-pinterest'
      imagePath: '//mojotech-static.s3.amazonaws.com/pinterest@2x.png'
      shareUrl: (url, text, mediaUrl) -> "//www.pinterest.com/pin/create/button/?url=#{url}&media=#{mediaUrl}&guid=1234&description=#{text}"
    }
  ])

  App.reqres.setHandler "supportedNetworks", -> supportedNetworks
