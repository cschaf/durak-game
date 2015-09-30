chai = require('chai')
should = chai.should()
assert = chai.assert

Deck = require('../../src/domain/deck')

describe '#deck', ->
  it 'test Deck assigns on construct', ->
    deck = new Deck()
    deck.cards.length.should.equal 0