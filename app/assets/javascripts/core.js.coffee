window.Community.App = new Marionette.Application()

window.Community.App.addRegions
  app_container: '@community-container'

window.Community.App.addInitializer (settings) ->
  @settings = settings

  @helpers = new Community.Helpers.ApplicationHelper(@)

  @data =
    city: window.Community.City
    markers: window.Community.Markers

  @routers =
    main: new Community.Routers.MainRouter(app: @)

  Backbone.history.start()

Backbone.View::app = window.Community.App
Backbone.Model::app = window.Community.App