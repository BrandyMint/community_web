#= require active_admin/base
#= require jquery.role/lib/jquery.role
#= require namespaces
#= require_tree ./app/services
#= require ./app/active_admin/maps
#= require_self
$ ->
  new Community.ActiveAdminMaps() if window.Community.Markers