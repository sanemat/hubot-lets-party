# Description
#   If hubot has launched/restarted, then It's Party Time!
#
# Configuration:
#   HUBOT_LETS_PARTY_BE_QUIET boolean if you want to quiet
#   HUBOT_LETS_PARTY_ROOM string room_name/room_id
#
# Commands:
##
# Author:
#   sanemat

module.exports = (robot) ->
  boolifyString = require 'boolify-string'
  quiet = boolifyString process.env.HUBOT_LETS_PARTY_BE_QUIET
  room = process.env.HUBOT_LETS_PARTY_ROOM || 'partyRoom'
  unless process.env.HUBOT_LETS_PARTY_ROOM?
    robot.logger.warning "HUBOT_LETS_PARTY_ROOM is not set"

  text = "I'm back!"
  shout = "Okay....let's PARTYYYYYYYYYY!"
  image1 = 'http://image.itmedia.co.jp/nl/articles/1208/03/ah_IYH.jpg'
  image2 = 'http://debrecensun.hu/media/2014/01/24-parties-for-saturday-25-january/Lets-Party.jpg'
  image3 = 'http://images.sodahead.com/polls/000364225/polls_lets_party_3542_222689_answer_3_xlarge.gif'

  if quiet
    robot.messageRoom room, text, shout
  else
    robot.messageRoom room, text, image1, image2, image3, shout
