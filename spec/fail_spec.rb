require 'spec_helper'

describe "fail" do

  it "gives me a random fail image" do
    stub_request(:get, "https://buildmemes.herokuapp.com/f").to_return(:status => 200, :body => "", :headers => {})
    result = eval_script('fail.rb', 'fail')
    expect(result).to eq('https://buildmemes.herokuapp.com/f')
  end

end
