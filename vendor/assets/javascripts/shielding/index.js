// http://stackoverflow.com/questions/1802936/stop-all-active-ajax-requests-in-jquery

(function($) {
  $.xhrPool = [];

  $(document).ajaxSend(function(e, jqXHR, options) {
    $.xhrPool.push(jqXHR);
  });

  $(document).ajaxComplete(function(e, jqXHR, options) {
    var index;

    if ((index = $.inArray(jqXHR, $.xhrPool)) !== -1) {
      $.xhrPool.splice(index, 1);
    }
  });

  $.xhrPool.abortAll = function() {
    var request;

    while ((request = $.xhrPool.pop())) {
      request.abort();
    }
  };

})(jQuery);
