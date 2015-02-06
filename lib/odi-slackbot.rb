require 'slackbotsy'
require 'sinatra'
require 'yaml'

config = YAML.load(ERB.new(File.read("config/config.yml")).result)

@bot = Slackbotsy::Bot.new(config)
@bot.eval_scripts(Dir[File.join(File.dirname(File.expand_path(__FILE__)), 'lib', 'scripts', '**', '*.rb')])

module OdiSlackbot
  class App < Sinatra::Base

    post '/' do
      @bot.handle_item(params)
    end

  end
end
