should = require('chai').should()
Card = require('../../src/domain/card')

describe '#card', ->
  it 'test card assigns on construct', ->
    card = new Card('A', 'Heart')
    card.number.should.equal 'A'
    card.suit.should.equal 'Heart'