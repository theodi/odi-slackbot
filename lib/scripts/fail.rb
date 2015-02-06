require 'open-uri'

hear /fail/ do
  open('https://buildmemes.herokuapp.com/f').read
end
