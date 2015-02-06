require 'yaml'

module OdiSlackbot
  class Bot

    def initialize
      Slackbotsy::Bot.new(config)
    end

    def config
      YAML.load(ERB.new(File.read("config/config.yml")).result)
    end

  end
end
