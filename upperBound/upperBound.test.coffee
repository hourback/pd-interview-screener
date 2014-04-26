expect = require('chai').expect
upperBound = require './upperBound'

describe 'the upperBound function', ->

  describe 'for numbers less than 10', ->

    it 'returns 2 for any numbers less than 2', ->
      expect(upperBound 1).to.equal 2
      expect(upperBound 1.5).to.equal 2
      expect(upperBound 0.1).to.equal 2

    it 'returns 5 for any numbers less than 5 but greater than 2', ->
      expect(upperBound 3).to.equal 5
      expect(upperBound 4).to.equal 5

    it 'returns 10 for any numbers less than 10 but greater than 5', ->
      expect(upperBound 6).to.equal 10
      expect(upperBound 8).to.equal 10

  describe 'for numbers between 10 and 100', ->
    it 'follows the same 2, 5, 10 pattern, but with 20, 50, 100', ->
      expect(upperBound 12).to.equal 20
      expect(upperBound 40).to.equal 50
      expect(upperBound 70).to.equal 100

  describe 'for numbers between 100 and 1000', ->
    it 'follows the same 2, 5, 10 pattern, but with 200, 500, 1000', ->
      expect(upperBound 180).to.equal 200
      expect(upperBound 350).to.equal 500
      expect(upperBound 800).to.equal 1000

  describe 'for numbers greater than 1000', ->
    it 'follows the same pattern as far as it needs to', ->
      expect(upperBound 12345).to.equal 20000
      expect(upperBound 9876).to.equal 10000
      expect(upperBound 23487).to.equal 50000
      expect(upperBound 987654321).to.equal 1000000000

