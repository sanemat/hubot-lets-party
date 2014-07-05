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

  messageText = "Okay....let's PARTYYYYYYYYYY!"
  messageImage = 'http://image.itmedia.co.jp/nl/articles/1208/03/ah_IYH.jpg'

  if quiet
    robot.messageRoom(
      room
      messageText
    )
  else
    robot.messageRoom(
      room
      messageText
      messageImage
      messageImage
      messageImage
    )
