class FrontendDeveloperTest.Models.Frontend extends Backbone.Model
  paramRoot: 'frontend'

  toJSON: ->
    attrs = _(@attributes).clone()
    delete attrs.created_at
    delete attrs.updated_at
    attrs

class FrontendDeveloperTest.Collections.FrontendsCollction extends Backbone.Collection
  model: FrontendDeveloperTest.Models.Frontend
  url: '/api/products'
