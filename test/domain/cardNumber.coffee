should = require('chai').should()
CardNumber = require('../../src/domain/cardNumber')

describe '#CardNumber', ->
  it 'test CardNumber enums', ->
    CardNumber.six.should.equal 6
    CardNumber.seven.should.equal 7
    CardNumber.eight.should.equal 8
    CardNumber.nine.should.equal 9
    CardNumber.ten.should.equal 10
    CardNumber.B.should.equal 11
    CardNumber.D.should.equal 12
    CardNumber.K.should.equal 13
    CardNumber.A.should.equal 14