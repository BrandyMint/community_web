class Community.ActiveAdminMaps

  constructor: ->
    @position = window.Community.Markers.position || '56.133725,47.233418'
    @mapService = new Community.Services.CommunityMaps el: $('@map-input'), position: @position
    @map = @mapService.map
    @coordsInput = $('@map-input-coords')

    @_addMapListeners()
    @_addGeocodingListener()
    @_addMarker()

  _addMapListeners: ->
    google.maps.event.addListener @map, 'click', (event) => @_addMarker(event)

  _addMarker: (event) ->
    if !@marker
      @_createMarker()
    else
      @marker.setPosition event.latLng

  _createMarker: ->
    @marker = new google.maps.Marker
      map: @map
      position: @mapService.parseCoordinates @position
      draggable: true

    @coordsInput.val @marker.getPosition().toUrlValue()
    google.maps.event.addListener @marker, 'position_changed', =>
      @coordsInput.val @marker.getPosition().toUrlValue()

  _addGeocodingListener: ->
    _this = @
    $('@map-input-address').on 'keypress', (e) ->
      code = e.keyCode || e.which
      if code is 13
        e.preventDefault()
        _this.codeAddress $(@).val()

  codeAddress: (address) ->
    @geocoder ||= new google.maps.Geocoder()
    @geocoder.geocode
      address: address
    , (results, status) =>
      if status is google.maps.GeocoderStatus.OK
        location = results[0].geometry.location
        @coordsInput.val location.toUrlValue()
        @map.setCenter location
        @marker.setPosition location
