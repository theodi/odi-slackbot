require 'open-uri'

hear /fail/i do
  open('https://buildmemes.herokuapp.com/f').read
end
