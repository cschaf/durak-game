should = require('chai').should()
Player = require('../../src/domain/player')

describe '#player', ->
  it 'test player assigns on construct', ->
    player = new Player(1)
    player.id.should.equal 1
    player.hand.length.should.equal 0