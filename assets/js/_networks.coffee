App.on 'initialize:after', ->
  supportedNetworks = new App.Collections.SocialNetworks([
    {
      name: 'mt-facebook'
      imagePath: 'https://mojotech-static.s3.amazonaws.com/facebook@2x.png'
      shareUrl: (url) -> "https://www.facebook.com/sharer/sharer.php?u=#{url}"
      selected: true
    },
    {
      name: 'mt-twitter'
      imagePath: 'https://mojotech-static.s3.amazonaws.com/twitter@2x.png'
      shareUrl: (url, text) -> "https://twitter.com/intent/tweet?text=#{text}&url=#{url}"
      selected: true
    },
    {
      name: 'mt-linkedin'
      imagePath: 'https://mojotech-static.s3.amazonaws.com/linkedin@2x.png'
      shareUrl: (url, text) -> "https://www.linkedin.com/shareArticle?mini=true&url=#{url}&summary=#{text}"
    },
    {
      name: 'mt-google'
      imagePath: 'https://mojotech-static.s3.amazonaws.com/google@2x.png'
      shareUrl: (url) -> "https://plus.google.com/share?url=#{url}"
    },
    {
      name: 'mt-pinterest'
      imagePath: 'https://mojotech-static.s3.amazonaws.com/pinterest@2x.png'
      shareUrl: (url, text, mediaUrl) -> "https://www.pinterest.com/pin/create/button/?url=#{url}&media=#{mediaUrl}&guid=1234&description=#{text}"
    }
  ])

  App.reqres.setHandler "supportedNetworks", -> supportedNetworks
