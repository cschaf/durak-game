should = require('chai').should()
Player = require('../../src/domain/player')

describe '#player', ->
  it 'test Player assigns on construct', ->
    player = new Player(1)
    player.id.should.equal 1
    player.hand.length.should.equal 0