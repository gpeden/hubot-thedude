sinon = require 'sinon'
expect = require './expect'

Helper = require('hubot-test-helper')
helper = new Helper('../src/thedude.coffee')

describe 'thedude', ->

  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  context "mentions mister lebowski", ->
    beforeEach ->
      @room.user.say 'testuser', 'mister lebowski'

    it 'should reply to user', ->
      expect(@room.messages).to.eql [
        ['testuser', 'mister lebowski']
        ['hubot', 'Let me explain something to you. Um, I am not "Mr. Lebowski". You\'re Mr. Lebowski. I\'m the Dude. So that\'s what you call me. You know, that or, uh, His Dudeness, or uh, Duder, or El Duderino if you\'re not into the whole brevity thing.']
      ]
