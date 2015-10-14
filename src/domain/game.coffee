
module.exports = class Game
  constructor: (@dealTable, @deck, @players) ->
    @currentTurn = []
    @started = new Date()
    @finished = new Date(0)
    @inProgress = true
    @winner = null
    @_createNewGame()

  _createNewGame: () ->
    for player in @players
      @currentTurn.push(player.id)

    @_dealPlayers(@deck, @players)
    @_dealTable(@deck, @dealTable)

  _dealPlayers: (deck, players)->
    for i in [1..6]
      for player in players
        player.hand.push(deck.cards.shift())

  _dealTable: (deck, table) ->
    table.trump = deck.cards.shift()
