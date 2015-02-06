require 'yaml'
require 'erb'
require 'slackbotsy'
require 'singleton'

module OdiSlackbot
  class Bot < ::Slackbotsy::Bot
    include Singleton

    def initialize
      super(options)
      self.eval_scripts scripts
    end

    def options
      YAML.load(ERB.new(File.read("config/config.yml")).result)
    end

    def scripts
      Dir[File.join(File.dirname(File.expand_path(__FILE__)), 'scripts', '*.rb')]
    end

  end
end
