class PocketTally.Views.Transaction extends Backbone.View

  template: JST['transactions/transaction']


  render: ->
    $(@el).html(@template(transaction: @model))
    this
