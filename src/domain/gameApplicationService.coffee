Game = require('./game')
Player = require('./player')
DealTable = require('./dealTable')
Deck = require('./deck')

module.exports = class GameApplicationService

  createNewGame: (numberOfPlayers) ->
    dealTable = new DealTable()
    deck = new Deck()
    players = []
    for i in [1..numberOfPlayers]
      players.push(new Player(i))

    new Game(dealTable, deck, players)