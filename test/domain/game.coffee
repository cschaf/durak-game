chai = require('chai')
should = chai.should()
assert = chai.assert

Card = require('../../src/domain/card')
Deck = require('../../src/domain/deck')
Player = require('../../src/domain/player')
DealTable = require('../../src/domain/dealTable')
Game = require('../../src/domain/game')

describe '#game', ->
  it 'test Game assigns on construct', ->
    dealTable = new DealTable();
    deck = new Deck()
    players = (new Player(i) for i in [1..4])

    game = new Game(dealTable, deck, players)

    game.dealTable.trump.should.instanceOf(Card)
    game.deck.cards.length.should.equal 11
    game.players.length.should.equals 4

    for player in game.players
      player.hand.length.should.equals 6

    game.inProgress.should.equals true
    game.started.should.instanceOf(Date)
    game.finished.should.instanceOf(Date)
    game.currentTurn.length.should.equals 4

    assert.equal(game.winner, null)