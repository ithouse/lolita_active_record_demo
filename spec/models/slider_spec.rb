require 'spec_helper'

describe Slider do
  it "should not be valid if title is empty" do
    slider = Fabricate.build(:slider, :title => "")
    slider.valid?.should be_false
  end
end