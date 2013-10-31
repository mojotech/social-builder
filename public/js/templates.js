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
var jade = {
  attrs: attrs,
  escape: escape 
};templates.copy_setter = function anonymous(locals) {
var buf = [];
buf.push("<h3>What are your words</h3><textarea></textarea><div class=\"character-counter\">0</div>");;return buf.join("");
};
templates.display_select = function anonymous(locals) {
var buf = [];
buf.push("<h3>Which style my friend?</h3><ul><li class=\"display-style selected\"><div class=\"list-style\">list here</div></li><li class=\"display-style\"><div class=\"popout-style\">popout here</div></li></ul>");;return buf.join("");
};
templates.network_select = function anonymous(locals) {
var buf = [];
buf.push("<h3>I want the following services</h3><div class=\"selectables\"></div>");;return buf.join("");
};
templates.single_network = function anonymous(locals) {
var buf = [];
var locals_ = (locals || {}),name = locals_.name;buf.push("<h3>" + (jade.escape(null == (jade.interp = name) ? "" : jade.interp)) + "</h3>");;return buf.join("");
};
})();