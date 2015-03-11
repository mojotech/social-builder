Social Builder
==============

## [Use it Live](https://mojotech.com/social-builder)


### Why should you use this?
 * For those times when you want some social buttons, that look nice, but don't want to scrape the internet for how.
 * For those times when you want some markup that you can hack and not iframes.
 * For those times you want to be awesome, because you are!


### Dev
 * `npm install roots@2.1.0 -g`
 * `roots watch`


### Deployment
 * `roots deploy --gh-pages`


### Adding a new display type
 * create a new file like _list-bar.coffee
 * add said file to main.coffee
 * add new style to supported styles in application.coffee
 * add a new stylesheet in layout.jade with the contained styles
