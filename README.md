[![Build Status](http://img.shields.io/travis/theodi/odi-slackbot.svg)](https://travis-ci.org/theodi/odi-slackbot)
[![Dependency Status](http://img.shields.io/gemnasium/theodi/odi-slackbot.svg)](https://gemnasium.com/theodi/odi-slackbot)
[![Coverage Status](http://img.shields.io/coveralls/theodi/odi-slackbot.svg)](https://coveralls.io/r/theodi/odi-slackbot)
[![Code Climate](http://img.shields.io/codeclimate/github/theodi/odi-slackbot.svg)](https://codeclimate.com/github/theodi/odi-slackbot)
[![Badges](http://img.shields.io/:badges-5/5-ff6799.svg)](https://github.com/badges/badgerbadgerbadger)

# ODI Slackbot

This is the ODI's Slackbot. It generally hangs around on the #random channel. At the moment, it only does a few things, but feel free to add any new scripts!

# Adding a script

Scripts live in the `lib/scripts` folder. Create a `.rb` file in that folder and give it an appropriate name.

Here's an example script:

```
hear /dispense crisps/i do
  "Get your own damn crisps, yo"
end
```

The script conists of a listener (the regex up top), and the response, which is always returned at the end.

If you want to capture anything from the user's input, add a matcher to the regex and do something like the following"

```
hear /echo (.*)/i do |regex|
  "You said #{regex[0]}"
end
```

Also, make sure you add tests. Add your tests in the `spec` directory and call your bot like so:

    result = eval_script("your_script_name.rb", "input the bot is expecting")

If you have more than one script in a script file, you can add an optional index as the third argument:

    result = eval_script("your_script_name.rb", "input the bot is expecting", 1)

If there is any Ruby code you want to share across your bot, add it to the `lib/scripts/helpers/` directory, and require it in `lib/odi-slackbot.rb`
