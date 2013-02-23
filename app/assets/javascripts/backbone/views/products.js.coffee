class FrontendDeveloperTest.Views.Products extends Backbone.View

  template: JST['backbone/templates/products']

  el: '#products-list'

  events:
    "click a#add" : "addNew"

  addNew: ->
    @collection.create(name: @$("#name").val(), product_type: @$("#product_type").val(), price: @$("#price").val(), {wait:true})
    @clearFields()

  clearFields: ->
    @$('input').val('')

  initialize: ->
    _.bindAll(@, "render", "addAll", "addOne", "addNew")
    @collection.bind "add", @addOne

  render: ->
    @$el.html(@template())
    @addAll()

  addAll: ->
    that = @
    @collection.each (product)->
      that.addOne(product)

  addOne:(product)->
    view = new FrontendDeveloperTest.Views.Product(model: product)
    @$el.find('table.table tbody').append(view.render().$el)
    
