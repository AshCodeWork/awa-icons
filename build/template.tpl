@font-face {
  font-style: normal;
  font-weight: normal;
  font-family: '<%= fontName %>';
  src: url('./src/<%= cssClass %>.woff2') format('woff2'),
       url('./src/<%= cssClass %>.woff') format('woff'),
       url('./src/<%= cssClass %>.ttf') format('truetype');
}

.awa-icon {
  position: relative;
  display: inline-block;
  font: normal normal normal 14px/1 "<%= fontName %>";
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;

  &::before {
    display: inline-block;
  }
}

<% _.each(glyphs, function(glyph) { %>.awa-icon-<%= glyph.fileName %>:before {
  content: "\<%= glyph.codePoint %>";
}

<% }); %>
