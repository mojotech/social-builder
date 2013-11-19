Social Builder
---------------

### Dev
* ``` npm install roots@2.1.0-beta4 -g ```
* ``` roots watch ```


### Deployment
* ```roots deploy --gh-pages```


### Adding a new display type
* create a new file like _list-bar.coffee
* add said file to main.coffee
* add new style to supported styles in application.coffee
* add a new stylesheet in layout.jade with the contained styles