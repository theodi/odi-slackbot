require 'sinatra'
require_relative './slackbot'

module OdiSlackbot
  class App < Sinatra::Base

    post '/' do
      bot = OdiSlackbot::Bot.instance
      bot.handle_item(params)
    end

  end
end
