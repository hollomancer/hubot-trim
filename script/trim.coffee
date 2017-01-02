request = require 'request'
validate = require 'validate.js'

module.exports = (robot) ->

  robot.respond /trim (.*)/i, (res) ->

    trim_url = res.match[1]

    unless process.env.HUBOT_TRIM_API_KEY?
      res.send "No HUBOT_TRIM_API_KEY in env: please set and try again"
      
    trim_post =
      url: 'https://tr.im/links'
      headers: 'x-api-key': process.env.HUBOT_TRIM_API_KEY
      json:
        'long_url': trim_url.toString()
        'vanity_domain': process.env.HUBOT_TRIM_VANITY_DOMAIN.toString()

    request.post trim_post
    , (err, httpResponse, body) ->
      if err
        return res.reply('Request failed:', err)
      console.log body
      res.reply body.url
      return
