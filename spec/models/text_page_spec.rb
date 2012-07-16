require 'spec_helper'

describe TextPage do

  it "should not be valid if title or content is empty" do
    text_page = Fabricate.build(:text_page ,:title => "", :content => "")
    text_page.valid?.should be_false
  end

  it "should create if title and body not empty" do
    Fabricate(:text_page ,:title => "Test", :content => "pam pa ram")
  end

  it "should have full fiendly path" do
    text_page = Fabricate(:text_page ,:title => "Test", :content => "pam pa ram")
    text_page.friendly_path.should == "/text_pages/#{text_page.slug}"
  end

end

