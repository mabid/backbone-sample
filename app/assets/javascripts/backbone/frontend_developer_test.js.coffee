#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.FrontendDeveloperTest =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  initialize: ->
    @products = new FrontendDeveloperTest.Collections.FrontendsCollction(products)
    @app = new FrontendDeveloperTest.Routers.AppsRouter
    Backbone.history.start()

$(document).bind "ready", ->
  FrontendDeveloperTest.initialize()
