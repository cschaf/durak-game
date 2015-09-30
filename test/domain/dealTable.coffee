chai = require('chai')
should = chai.should()
assert = chai.assert

DealTable = require('../../src/domain/dealTable')

describe '#dealTable', ->
  it 'test DealTable assigns on construct', ->
    dealTable = new DealTable()
    dealTable.ground.length.should.equal 0
    dealTable.pile.length.should.equal 0
    assert.equal(dealTable.trump, null)