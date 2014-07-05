assert = require 'power-assert'
sinon = require 'sinon'

describe 'lets-party', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      messageRoom: sinon.spy()
    sinon.sandbox.create(process.env, 'HUBOT_LETS_PARTY_ROOM', 'theRoom')
  afterEach ->
    sinon.sandbox.restore()

    require('../src/lets-party')(@robot)

  it 'shouts on initialize', ->
    assert.ok(@robot.messageRoom.calledOnce)
