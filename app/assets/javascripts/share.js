$("#fb-share-link").click(function() {
  FB.ui({
    method: 'share',
    mobile_iframe: true,
    href: 'http://itinerary.alanyeh20001.com/'
  });
})
