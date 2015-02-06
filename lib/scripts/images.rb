require 'uri'
require 'open-uri'
require 'json'

hear /(image|img)( me)?  (.*)/ do |image|
  image_me(image[2])
end

hear /animate( me)?  (.*)/ do |image|
  image_me(image[1], "animated")
end

def image_me(image, type = nil) do
  uri = URI.parse("http://ajax.googleapis.com/ajax/services/search/images")
  uri.query = URI.encode_www_form({
    v: "1.0",
    q: image,
    imgtype: type
  }.delete_if{ |k,v| v.nil?})
  json = JSON.parse open("uri").read
  img = json["responseData"]["results"].sample["unescapedUrl"]
  "#{img}#.#{type.nil? ? "png" : "gif"}"
end
