require 'spec_helper'

describe "Article" do
  it "should not be valid if title, content or publication date is empty" do
    article = Fabricate.build(:article, :title => "", :content => "", :publication_date => "")
    article.valid?.should be_false
  end
end