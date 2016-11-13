$(function() {
  var menu = $("#menu"),
      titleBar = $(".title-bar"),
      menuTop = menu.offset().top,
      titleBarTop = titleBar.offset().top,
      stickyMenuCSS = { "position": "fixed", "top": 0, "width": "100%", "z-index": "99" },
      stickyTitleBarCSS = { "position": "fixed", "top": "0px", "width": "100%", "z-index": "99" };

  window.stickyMenu = function() {
    var scrollTop = $(document).scrollTop();

    if (menu.css("display") == "block") {
      if (scrollTop > menuTop) {
        menu.css(stickyMenuCSS);
      }
    } else {
      if (scrollTop > titleBarTop) {
        titleBar.css(stickyTitleBarCSS);
        menu.css({ "position": "fixed", "top": "40px", "z-index": "99" });
      }
    }
  }

  $(window).scroll(function() {
    stickyMenu();
  });
});
