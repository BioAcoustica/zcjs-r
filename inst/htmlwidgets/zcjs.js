HTMLWidgets.widget({

  name: "zcjs",

  type: "output",

  factory: function(el, width, height) {
    // create our sigma object and bind it to the element
    var zc = new ZCJS(el.id);

    return {
      renderValue: function(x) {

        if (x.settings.x_compress) {
          zc.x_compress = true;
        }
        zc.setURL(x.url);
      },

      resize: function(width, height) {
        // forward resize on to sigma renderers
        /*
        for (var name in sig.renderers)
          sig.renderers[name].resize(width, height);
          */
      },

      // Make the zcjs object available as a property on the widget
      // instance we're returning from factory(). This is generally a
      // good idea for extensibility--it helps users of this widget
      // interact directly with zcjs, if needed.
      s: zc
    };
  }
});
