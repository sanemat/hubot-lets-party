assert = require 'power-assert'
sinon = require 'sinon'

describe 'lets-party', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      messageRoom: sinon.spy()

    require('../src/lets-party')(@robot)

  it 'shouts on initialize', ->
    assert.ok(@robot.messageRoom.calledOnce)
