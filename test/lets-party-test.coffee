assert = require 'power-assert'
sinon = require 'sinon'

describe 'lets-party', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      messageRoom: sinon.spy()
      logger:
        warning: sinon.stub()

    require('../src/lets-party')(@robot)

  it 'shouts on initialize', ->
    assert.ok(@robot.messageRoom.calledOnce)
