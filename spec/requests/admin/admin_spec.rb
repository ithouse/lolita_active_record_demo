require 'spec_helper'

describe Admin, :request => true do
  context "signed in admin" do
    let(:another_admin) { Fabricate(:admin) }

    it "can edit admin" do
      login_admin
      visit "/lolita"
      click_on "Admin"
      page.current_path.should == "/lolita/admins"
      visit "/lolita/admins/%i/edit" % another_admin.id
      fill_in "admin_password", :with => 'password'
      fill_in "admin_password_confirmation", :with => 'password'
      click_on "Save and Close"
      sleep 1
      page.current_path.should == "/lolita/admins"
    end

  end
end
