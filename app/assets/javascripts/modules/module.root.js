app.modules.root = (function(self) {

  // Инициализация событий
  function _addEvents(){

  }

  // Инициализация модуля
  function _init() {
    $('.js-root-slide').each(function() {
      var $this = $(this);
      $this.iosSlider({
        snapToChildren: true,
        desktopClickDrag: true,
        infiniteSlider: true,
        snapSlideCenter: true,
        navPrevSelector: '.js-root-slide #js-slider-left',
        navNextSelector: '.js-root-slide #js-slider-right',
        navSlideSelector: '.js-root-slide .navigation .item',
        autoSlide: $this.data().auto,
        autoSlideHoverPause: false,
        onSliderLoaded:function(a) {

        },
        onSlideChange: _slideChange
      });
    });
  }

  function _slideChange(args) {
    $('.js-root-slide .navigation .item').removeClass('selected');
    $('.js-root-slide .navigation .item:eq(' + (args.currentSlideNumber - 1) + ')').addClass('selected');
  }

  self.load = function() {
    _init();
    _addEvents();
  };

  return self;

}(app.modules.root || {}));