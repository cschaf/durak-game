GameApplicationService = require('./domain/gameApplicationService')
gameApplicationService = new GameApplicationService()

module.exports = exports =
  createNewGame: (numberOfPlayers) ->
    gameApplicationService.createNewGame(numberOfPlayers)