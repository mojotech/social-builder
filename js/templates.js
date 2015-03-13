(function(){
  window.templates = window.templates || {};
  function attrs(obj, escaped){
  var buf = []
    , terse = obj.terse;

  delete obj.terse;
  var keys = Object.keys(obj)
    , len = keys.length;

  if (len) {
    buf.push('');
    for (var i = 0; i < len; ++i) {
      var key = keys[i]
        , val = obj[key];

      if ('boolean' == typeof val || null == val) {
        if (val) {
          terse
            ? buf.push(key)
            : buf.push(key + '="' + key + '"');
        }
      } else if (0 == key.indexOf('data') && 'string' != typeof val) {
        buf.push(key + "='" + JSON.stringify(val) + "'");
      } else if ('class' == key) {
        if (escaped && escaped[key]){
          if (val = escape(joinClasses(val))) {
            buf.push(key + '="' + val + '"');
          }
        } else {
          if (val = joinClasses(val)) {
            buf.push(key + '="' + val + '"');
          }
        }
      } else if (escaped && escaped[key]) {
        buf.push(key + '="' + escape(val) + '"');
      } else {
        buf.push(key + '="' + val + '"');
      }
    }
  }

  return buf.join(' ');
}
function escape(html){
  return String(html)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;');
}
function nulls(val) { return val != null && val !== '' }
function joinClasses(val) { return Array.isArray(val) ? val.map(joinClasses).filter(nulls).join(' ') : val; }
;__ROOTS_ENV='undefined';
var jade = {
  attrs: attrs,
  escape: escape 
};templates['code_area'] = function anonymous(locals) {
var buf = [];
var locals_ = (locals || {}),type = locals_.type,noFlash = locals_.noFlash,code = locals_.code,beutify = locals_.beutify,beutifyOptions = locals_.beutifyOptions;buf.push("<div class=\"embed-fixed-header\"><h2 class=\"faded-header\">" + (jade.escape(null == (jade.interp = type) ? "" : jade.interp)) + "</h2>");
if (!noFlash)
{
buf.push("<div" + (jade.attrs({ 'data-clipboard-text':(code), "class": [('copy-button')] }, {"data-clipboard-text":true})) + ">copy</div>");
}
buf.push("</div><pre class=\"line-numbers\"><code>" + (jade.escape(null == (jade.interp = beutify(code, beutifyOptions)) ? "" : jade.interp)) + "</code></pre>");;return buf.join("");
};
templates['display_select'] = function anonymous(locals) {
var buf = [];
buf.push("<div class=\"step-section\"><h3>Which style do you prefer?</h3><div class=\"list\"></div></div>");;return buf.join("");
};
templates['copy_setter'] = function anonymous(locals) {
var buf = [];
buf.push("<div class=\"step-section\"><h3>What's the url you want to share?</h3><input type=\"text\" placeholder=\"http://\"/><br/></div><div class=\"media-url\"></div><div class=\"step-section last-bottom\"><h3>What is your link about?</h3><textarea></textarea><div class=\"character-counter helper-tag\">0</div><div class=\"twitter-warning helper-tag\">Twiter max reached!</div><div class=\"cl\"></div></div>");;return buf.join("");
};
templates['embed_style'] = function anonymous(locals) {
var buf = [];
buf.push("<ul class=\"display-type\"></ul><span class=\"check\"></span>");;return buf.join("");
};
templates['media_setter'] = function anonymous(locals) {
var buf = [];
buf.push("<h3>What is the image you would like to use</h3><input type=\"text\" placeholder=\"http://\"/><br/>");;return buf.join("");
};
templates['network_select'] = function anonymous(locals) {
var buf = [];
buf.push("<div class=\"step-section\"><h3>Which networks would you like?</h3><div class=\"selectables\"></div></div>");;return buf.join("");
};
templates['single_inline_share'] = function anonymous(locals) {
var buf = [];
var locals_ = (locals || {}),imagePath = locals_.imagePath;buf.push("<img" + (jade.attrs({ 'src':("" + (imagePath) + "") }, {"src":true})) + "/>");;return buf.join("");
};
templates['single_network'] = function anonymous(locals) {
var buf = [];
var locals_ = (locals || {}),imagePath = locals_.imagePath;buf.push("<img" + (jade.attrs({ 'src':(imagePath) }, {"src":true})) + "/><span class=\"check\"></span>");;return buf.join("");
};
})();