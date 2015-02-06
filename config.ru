require 'dotenv'
Dotenv.load

require File.join(File.dirname(__FILE__), 'lib/odi-slackbot.rb')

run OdiSlackbot::App
