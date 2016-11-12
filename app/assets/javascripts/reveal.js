$(function() {
  var story_reveals = $(".story-reveal-link");

  $(story_reveals).click(function() {
    var photo   = $(this).attr("data-photo"),
        content = $(this).attr("data-content");

    if ($("#story-reveal").length > 0) {
      openReveal(photo, content);
    } else {
      ajaxReveal(photo, content);
    }
  });
});

function openReveal(photo, content) {
  appendPhotoContent(photo, content);
  $("#story-reveal").foundation("open");
}

function ajaxReveal(photo, content) {
  $.ajax({
    url: "/journeys/story_reveal",
    method: "GET",
    success: function(response) {
      $("#reveal-div").html(response);
      appendPhotoContent(photo, content);

      var story_reveal = new Foundation.Reveal($("#story-reveal"));
      story_reveal.open();
    },
    error: function(xhr) {
      console.log("fail: " + xhr)
    }
  });
}

function appendPhotoContent(photo,content) {
  $("#story-reveal > .image").html("<img src='"+photo+"'>");
  $("#story-reveal > .text > p").html(content);
}
