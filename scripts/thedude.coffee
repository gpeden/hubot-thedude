# Description:
#   This bot really ties the chat-room together, does it not?
#
# Dependencies:
#   None
#
# Commands:
#   hubot mister lebowski - respond with the dude
#
# Configuration:
#   None
#

module.exports = (robot) ->

  robot.hear /mister lebowski/i, (res) ->
    res.emote "Let me explain something to you. Um, I am not \"Mr. Lebowski\". You're Mr. Lebowski. I'm the Dude. So that's what you call me. You know, that or, uh, His Dudeness, or uh, Duder, or El Duderino if you're not into the whole brevity thing."
