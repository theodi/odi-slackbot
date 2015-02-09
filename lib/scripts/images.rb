hear /(image|img)( me)? (.*)/i do |image|
  image_me(image[-1])
end

hear /animate( me)? (.*)/i do |image|
  image_me(image[-1], "animated")
end
