require 'slackbotsy'
require 'sinatra'

require_relative 'bot'

@bot = OdiSlackbot::Bot.new

module OdiSlackbot
  class App < Sinatra::Base

    post '/' do
      @bot.eval_scripts(File.open(File.join(".", "scripts", "*")))
    end

  end
end
