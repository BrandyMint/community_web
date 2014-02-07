class Community.Services.Markers

  constructor: (mapService) ->
    @mapService = mapService
    @map = mapService.map
    @infoBox = mapService.infoBox
    @markersData = mapService.markersData
    @activeMarker = mapService.activeMarker

    @_addMarkers()

  _addMarkers: ->
    for data in @markersData
      @_createMarker data

  _createMarker: (data) ->
    marker = new google.maps.Marker
      map: @map
      position: @mapService.parseCoordinates data.position
      title: data.name
      icon: '/assets/marker.png'

    google.maps.event.addListener marker, 'click', (event) =>
      window.location = data.link

  _openMarkerInfoBox: (marker, content) ->
    if marker is @activeMarker
      @activeMarker = null
      @infoBox.close()
    else
      @activeMarker = marker
      @infoBox.setContent content
      @infoBox.open(@map, @activeMarker)
