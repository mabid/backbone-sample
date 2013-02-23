class FrontendDeveloperTest.Routers.AppsRouter extends Backbone.Router
  initialize: (options) ->

  routes:
    '': 'index'

  index: ->
    view = new FrontendDeveloperTest.Views.Products(collection: FrontendDeveloperTest.products)
    view.render()
