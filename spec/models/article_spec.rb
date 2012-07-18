require 'spec_helper'

describe Article do
  it "should not be valid if title, content or publication date is empty" do
    article = Fabricate.build(:article, :title => "", :content => "", :publication_date => "")
    article.valid?.should be_false
  end

  it "should create if title, content and publication date is not empty" do
    Fabricate(:article, :title => "some title", :content => "some content", :publication_date => Date.today)
  end

  it "should create full friendly path" do 
    article = Fabricate(:article, :title => "title", :content => "some content", :publication_date => Date.today)
    article.friendly_path.should == "/articles/#{article.slug}"
  end
end