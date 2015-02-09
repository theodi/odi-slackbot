require './lib/odi-slackbot'
require 'webmock/rspec'

def eval_script(script, message, script_index = 0)
  path = script_path(script)
  bot = Slackbotsy::Bot.new({})
  bot.send(:eval, File.read(path))
  listener = bot.listeners[script_index]

  if mdata = message.strip.match(listener.regex)
    listener.proc.call mdata
  end
end

def script_path(script)
  File.join(File.dirname(File.expand_path(__FILE__)), '..', 'lib', 'scripts', script)
end
