require 'spec_helper'

describe TextPage, :request => true do
  context "signed in admin" do
    let(:text_page) { Fabricate(:text_page) }

    it "can edit text page" do
      login_admin
      visit "/lolita"
      click_on "Text Pages"
      page.current_path.should == "/lolita/text_pages"
      visit "/lolita/text_pages/%i/edit" % text_page.id
      click_on "Save and Close"
      sleep 1
      page.current_path.should == "/lolita/text_pages"
    end

  end
end
