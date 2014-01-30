class Community.Views.AppLayout extends Marionette.Layout
  template: JST['app/templates/layout']
  className: 'community-layout'
  regions:
    maps: '@maps-container'