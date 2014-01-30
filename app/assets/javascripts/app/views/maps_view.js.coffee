class Community.Views.MapsView extends Marionette.View
  className: 'google-maps'

  initialize: ->
    @maps = new Community.Services.CommunityMaps el: @$el, markers: @app.data.markers
