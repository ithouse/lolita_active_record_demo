require 'spec_helper'

describe "Admin can log-in", :request => true do
  let(:admin) { Fabricate(:admin) }

  it "and see main page of lolita" do
    real_admin_lolita_login
    page.should have_selector('h1', :text => "LolitaActiveRecordDemo")
  end

  def real_admin_lolita_login
    visit '/lolita'
    fill_in 'admin_email', :with => admin.email
    fill_in 'admin_password', :with => 'password'
    click_button "Sign in"
  end
end
