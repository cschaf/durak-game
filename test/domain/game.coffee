chai = require('chai')
should = chai.should()
assert = chai.assert

Card = require('../../src/domain/card')
Player = require('../../src/domain/player')
DealTable = require('../../src/domain/dealTable')
DeckStub = require('../../test/stubs/deckStub')
GameStub = require('../../test/stubs/gameStub')

describe '#game', ->
  @game = null
  before ->
    dealTable = new DealTable();
    deck = new DeckStub()
    players = (new Player(i) for i in [1..4])
    @game = new GameStub(dealTable, deck, players)

  it 'test Game assigns on construct', ->
    @game.dealTable.trump.should.instanceOf(Card)
    @game.deck.cards.length.should.equal 11
    @game.players.length.should.equals 4

    for player in @game.players
      player.hand.length.should.equals 6

    @game.inProgress.should.equals true
    @game.started.should.instanceOf(Date)
    @game.finished.should.instanceOf(Date)
    @game.currentTurn.length.should.equals 4

    assert.equal(@game.winner, null)

  it 'test determine first player in first round', ->
    trump = @game.dealTable.trump
    console.log(@game)
    assert.notEqual(trump)
    # hier muss noch das game nach dem ersten Player gefragt werden