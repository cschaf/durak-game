// Generated by CoffeeScript 1.10.0
(function() {
  var GameApplicationService, exports, gameApplicationService;

  GameApplicationService = require('./domain/gameApplicationService');

  gameApplicationService = new GameApplicationService();

  module.exports = exports = {
    createNewGame: function(numberOfPlayers) {
      return gameApplicationService.createNewGame(numberOfPlayers);
    }
  };

}).call(this);