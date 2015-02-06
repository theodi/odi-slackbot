require 'slackbotsy'
require 'sinatra'

require_relative 'bot'

@bot = OdiSlackbot::Bot.new
@bot.eval_scripts(File.open(File.join("lib", "scripts", "*")))

module OdiSlackbot
  class App < Sinatra::Base

    post '/' do
      @bot.handle_item(params)
    end

  end
end
