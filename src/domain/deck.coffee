Card = require('./card')
CardNumber= require('./cardNumber')
module.exports = class Deck
  constructor: () ->
    @_suits = ['Hearts', 'Spades', 'Clubs', 'Diamonds'];
    @cards = []
    @_createCards()

  _createCards: () ->
    for suit in @_suits
      for i in [6..14]
        name = i;
        if i == 6
          name = CardNumber.six
        if i == 7
          name = CardNumber.seven
        if i == 8
          name = CardNumber.eight
        if i == 9
          name = CardNumber.nine
        if i == 10
          name = CardNumber.ten
        if i == 11
          name = CardNumber.B
        if i == 12
          name = CardNumber.D
        if i == 13
          name = CardNumber.K
        if i == 14
          name = CardNumber.A

        @cards.push(new Card(name, suit))
