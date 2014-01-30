class Community.Controllers.MainController extends Marionette.Controller

  initialize: (options) ->
    @app = options.app

    @layout = new Community.Views.AppLayout app: @app
    @app.app_container.show @layout

  index: ->
    @maps_view = new Community.Views.MapsView
    @layout.maps.show @maps_view
