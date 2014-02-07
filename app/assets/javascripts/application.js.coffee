#= require jquery

# require jquery_ujs
# require jquery.turbolinks
# require turbolinks

#= require jquery.role/lib/jquery.role
#= require underscore/underscore
#= require backbone/backbone
#= require backbone.route-helper/backbone.route-helper
#= require backbone.marionette/lib/backbone.marionette
#= require hamlcoffee
#= require bootstrap

#= require namespaces
#= require_tree ./app/helpers
#= require_tree ./app/services
#= require_tree ./app/controllers
#= require_tree ./app/routers
#= require_tree ./app/templates
#= require_tree ./app/views
#= require core
#= require_self

$ ->
  if ('@community-container').length > 0
    window.Community.App.start()