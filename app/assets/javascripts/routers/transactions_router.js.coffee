class PocketTally.Routers.Transactions extends Backbone.Router
  routes:
    '': 'index'
    'transactions/:id': 'show'

  initialize: ->
    @collection = new PocketTally.Collections.Transactions()
    @collection.fetch({reset:true})

  index: ->
    view = new PocketTally.Views.TransactionsIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Transaction #{id}"

