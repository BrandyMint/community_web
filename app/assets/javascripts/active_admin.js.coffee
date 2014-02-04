#= require active_admin/base
#= require jquery.role/lib/jquery.role
#= require select2/select2.min
#= require namespaces
#= require_tree ./app/services
#= require ./app/active_admin/maps
#= require_self
$ ->
  new Community.ActiveAdminMaps() if window.Community.Markers
  $('@select2').select2()