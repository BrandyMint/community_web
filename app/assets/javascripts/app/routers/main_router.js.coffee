class Community.Routers.MainRouter extends Marionette.AppRouter

  initialize: (options) ->
    @controller = new Community.Controllers.MainController(options)

  appRoutes:
    "": "index"
