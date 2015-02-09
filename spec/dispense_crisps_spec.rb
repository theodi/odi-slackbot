require 'spec_helper'

describe "dispense-crisps" do

  it "tells me where to get off if I ask for crisps" do
    result = eval_script('dispense_crisps.rb', 'dispense crisps')

    expect(result).to eq("Get your own damn crisps, yo")
  end

end
