window.PocketTally =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  initialize: ->
    new PocketTally.Routers.Transactions()
    Backbone.history.start()


$(document).ready ->
  PocketTally.initialize()
