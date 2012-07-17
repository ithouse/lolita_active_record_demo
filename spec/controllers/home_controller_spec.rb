require 'spec_helper'

describe HomeController do
  it "should render home page" do
    get :index
    response.should render_template("home/index")
  end
end
