should = require('chai').should()
GameApplicationService = require('../../src/application/gameApplicationService')
Game = require('../../src/domain/game')
gameApplicationService = new GameApplicationService();

describe '#gameApplicationService', ->
  it 'should create new game', ->
    game = gameApplicationService.createNewGame(4)
    game.should.instanceOf(Game)