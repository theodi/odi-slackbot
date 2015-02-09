require 'spec_helper'

describe "images" do

  it "requests a random image from Google Image Search" do
    stub_request(:get, "http://ajax.googleapis.com/ajax/services/search/images?q=foo&v=1.0").
                to_return(:status => 200, :body => File.read(File.join('spec', 'fixtures', 'google.json')))

    result = eval_script("images.rb", "image me foo")

    expect(result).to eq("http://2.bp.blogspot.com/-lzp5dDtFZjQ/UwrzngTkHrI/AAAAAAAAAR0/yGcUwgYpRhY/s1600/A+FONT.png#.png")
  end

  it "requests a random animated image from Google Image Search" do
    stub_request(:get, "http://ajax.googleapis.com/ajax/services/search/images?imgtype=animated&q=foo&v=1.0").
    to_return(:status => 200, :body => File.read(File.join('spec', 'fixtures', 'google.json')))

    result = eval_script("images.rb", "animate me foo", 1)

    expect(result).to eq("http://2.bp.blogspot.com/-lzp5dDtFZjQ/UwrzngTkHrI/AAAAAAAAAR0/yGcUwgYpRhY/s1600/A+FONT.png#.gif")
  end

end
