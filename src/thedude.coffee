# Description:
#   This bot really ties the chat-room together, does it not?
#
# Dependencies:
#   None
#
# Commands:
#   hubot mister lebowski - respond with the dude
#   hubot mr. lebowski - respond with the dude
#   hubot mr lebowski - respond with the dude
#   hubot dude quote
#
# Configuration:
#   None
#

quotes = [
  'Just one thing, Dude. Do ya have to use so many cuss words?',
  'Hey, this is a private residence man.',
  'Hello. Mein dizbatcher says zere iss somezing wrong mit deine kable.',
  'Vee vant zat money, Lebowski.',
  'Uh, yeah. Probably a vagrant, slept in the car. Or perhaps just used it as a toilet and moved on.',
  'Your name is Lebowski, Lebowski. Your wife is Bunny.',
  'You are joking. But perhaps you are right.',
  'I\'m staying. I\'m finishing my coffee. Enjoying my coffee.',
  'Tomorrow vee come back and cut off your Johnson.',
  'Has the whole world gone CRAZY?! Am I the only one who gives a shit about the rules?! MARK IT ZERO!'
]

module.exports = (robot) ->
  # You'r Mr. Lebowski...
  robot.hear /(mister|mr|mr\.) lebowski/i, (res) ->
    res.send "Let me explain something to you. Um, I am not \"Mr. Lebowski\". You're Mr. Lebowski. I'm the Dude. So that's what you call me. You know, that or, uh, His Dudeness, or uh, Duder, or El Duderino if you're not into the whole brevity thing."

  # What are you saying?
  robot.respond /dude quote/i, (res) ->
      res.send res.random quotes
