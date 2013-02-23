class FrontendDeveloperTest.Views.Product extends Backbone.View
  template: JST['backbone/templates/product']

  editTemplate: JST['backbone/templates/product_edit']
  
  tagName: 'tr'


  initialize: ->
    _.bindAll(@,"render", "remove", "delete", "edit")
    @model.bind "destroy", @remove
    @model.bind "sync", @render

  remove: ->
    @$el.remove()

  events:
    "click a.delete" : "delete"
    "click a.edit" : "edit"
    "click a.save" : "save"
    "click a.cancel" : "render"

  save: ->
    @model.set('name', @$('#name').val())
    @model.set('product_type', @$('#product_type').val())
    @model.set('price', @$('#price').val())
    @model.save()

  delete: ->
    @model.destroy(wait: true)

  edit: ->
    console.log "edit clicked"
    @$el.html(@editTemplate(product: @model))

  render: ->
    @$el.html(@template(product: @model))
    @
