require 'spec_helper'

describe TextPagesController do
  it "should return 404 if page does not exists" do
    get :show, :slug => "doesnotexists"
    response.status.should == 404
  end

  it "should be success if page exists" do
    get :show, :slug => Fabricate(:text_page).id
    response.should render_template("text_pages/show")
  end
end
