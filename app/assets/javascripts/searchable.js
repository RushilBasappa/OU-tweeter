$(function () {
  $( '#searchable-container' ).searchable({
    searchField: '#container-search',
    selector: '.col-md-3',
    childSelector: '.usercard',
    hide          : function( elem ) {
      elem.fadeOut(50);
    },
    show          : function( elem ) {
      elem.fadeIn(50);
    }
  })
});
