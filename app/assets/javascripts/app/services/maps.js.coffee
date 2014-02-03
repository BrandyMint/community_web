class Community.Services.CommunityMaps

  constructor: (options) ->
    @$el = options.el
    @markersData = options.markers
    @position = options.position
    @infoBoxOptions = options.infoBoxOptions

    @mapOptions =
      zoom: 13,
      center: @parseCoordinates @position
      minZoom: 2
      disableDefaultUI: true
      mapTypeId: google.maps.MapTypeId.ROADMAP

    @infoBox = new google.maps.InfoWindow(@infoBoxOptions)
    @map = new google.maps.Map(@$el.get(0), @mapOptions)
    new Community.Services.Markers(@) if @markersData

  parseCoordinates: (string) ->
    coords = string.split(',').map (c) -> parseFloat(c)
    new google.maps.LatLng coords[0], coords[1]
