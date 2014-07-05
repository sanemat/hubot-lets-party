# Description
#   A hubot script that does the things
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   [@<org>]

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
