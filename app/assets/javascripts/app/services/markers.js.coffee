class Community.Services.Markers

  constructor: (mapService) ->
    @map = mapService.map
    @infoBox = mapService.infoBox
    @markersData = mapService.markersData
    @activeMarker = mapService.activeMarker
    # @markersArray = []

    @_addMarkers()

  _addMarkers: ->
    for data in @markersData
      @_createMarker data

  _createMarker: (data) ->
    marker = new google.maps.Marker
      map: @map
      position: @parseCoordinates data.position
      title: data.name
    # @markersArray.push marker

    google.maps.event.addListener marker, 'click', (event) =>
      @_openMarkerInfoBox marker, data.name

  _openMarkerInfoBox: (marker, content) ->
    if marker is @activeMarker
      @activeMarker = null
      @infoBox.close()
    else
      @activeMarker = marker
      @infoBox.setContent content
      @infoBox.open(@map, @activeMarker)

  parseCoordinates: (string) ->
    coords = string.split(',').map (c) -> parseFloat(c)
    new google.maps.LatLng coords[0], coords[1]
