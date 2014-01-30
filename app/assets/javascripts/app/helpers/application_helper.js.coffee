class Community.Helpers.ApplicationHelper
  constructor: (app) ->
    @app = app
    _.extend @, Community.Helpers.TemplateHelper

  redirectTo: (path) ->
    Backbone.history.navigate path, trigger: true
