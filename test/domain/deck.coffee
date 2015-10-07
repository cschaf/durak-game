chai = require('chai')
should = chai.should()
assert = chai.assert

Card = require('../../src/domain/card')
Deck = require('../../src/domain/deck')
DeckStub = require('../../test/stubs/deckStub')

describe '#deck', ->
  it 'test Deck assigns on construct', ->
    deck = new Deck()
    deck.cards.length.should.equal 36

  it 'test DeckStub assigns on construct', ->
    deckStub = new DeckStub()
    deckStub.cards.length.should.equal 36

  it 'test DeckStub should be shuffled after shuffle', ->
    deckStub = new DeckStub()
    deckStub.shuffle()
    console.log(deckStub.cards)
    assert.notEqual(deckStub.cards[0], new Card(7, 'Spades'))

