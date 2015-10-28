;(function($) {
  var
    _options  = {},
    _defaults = {

    },

    _create = function($block) {
      $block.each(function() {
        $(this).data('options', _options);
        return this;
      });
    },

    _addItem = function(item) {
      var
        $item = $('<li>').addClass('item'),
        $input = $('<input>').attr({type: 'hidden', value: item.value}),
        $close = $('<button>').addClass('close').text('×');

      $close.click(function() {
        $(this).parent().remove();
      });

      $(this).append($item.text(item.name).append($input, $close));

      return this;
    },

    _methods = {
      init: function(options) {
        _options = {};

        $.extend(_options, _defaults, options);
        _create(this);
      },
      add: function() {
        _addItem.apply(this, arguments);
      }
    };

  $.fn.multifields = function(method) {
    if (typeof method === 'object' || !method) {
      return _methods.init.apply(this, arguments);
    }

    if (_methods[method]) {
      return _methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
    }

    $.error('Метод ' +  method + ' не существует в jQuery.multifields');
  };
})(jQuery);