class PocketTally.Views.TransactionsIndex extends Backbone.View

  template: JST['transactions/index']

  events:
    'submit #one' : 'addOne'
    'submit #five' : 'addFive'
    'submit #ten' : 'addTen'
    'submit #twenty' : 'addTwenty'
    'submit #reset' : 'resetCol'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @render, this)


  render: ->
    $(@el).html(@template(transactions: @collection))
    this

  addOne: (event) ->
    event.preventDefault()
    @collection.create total:1

  addFive: (event) ->
    event.preventDefault()
    @collection.create total:5

  addTen: (event) ->
    event.preventDefault()
    @collection.create total:10

  addTwenty: (event) ->
    event.preventDefault()
    @collection.create total:20

  resetCol: (event) ->
    event.preventDefault()
    # destroy()
    @collection.each (model)->
        model.destroy()
    @collection.reset()
