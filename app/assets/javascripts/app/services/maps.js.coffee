class Community.Services.CommunityMaps

  constructor: (options) ->
    @$el = options.el
    @markersData = options.markers

    boxOptions = {}
    @infoBox = new google.maps.InfoWindow(boxOptions)

    @mapOptions =
      zoom: 13,
      center: Community.Services.Markers::parseCoordinates window.Community.City.position
      minZoom: 2
      disableDefaultUI: true
      mapTypeId: google.maps.MapTypeId.ROADMAP

    @map = new google.maps.Map(@$el.get(0), @mapOptions)
    new Community.Services.Markers @
