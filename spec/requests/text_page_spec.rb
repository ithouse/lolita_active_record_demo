require 'spec_helper'

describe TextPage, :request => true do
    context "front-end user" do
    let(:text_page) { Fabricate(:text_page) }
    let(:flag_file){
      file = Lolita::Upload::File.new
      file.asset = Support.get_file("flag.jpeg")
      file.save
      file
    }

    let(:pdf_file){
      file = Lolita::Upload::File.new
      file.asset = Support.get_file("small.pdf")
      file.save
      file
    }
    

    it "can view text page title" do
      visit text_page_path(:slug => text_page.slug)
      page.current_path.should == "/#{text_page.slug}"
      page.find('.blog_left.gallery h1').should have_content(text_page.title)
    end

    it "can view text page content" do 
      text_page.content = 'Siple sentence'
      text_page.save
      visit text_page_path(:slug => text_page.slug)
      page.find('.blog_left.gallery').should have_content(text_page.content)
    end

    it "can view image in the content of text page" do
      text_page.files << flag_file
      text_page.content = "<img src=\"#{flag_file.asset.url}\" alt=\"Normalized_1\" />"
      text_page.save
      visit text_page_path(:slug => text_page.slug)
      page.find('.blog_left.gallery img')[:src].should == flag_file.asset.url
    end

    it "can view link in the content of text page" do
      text_page.files << pdf_file
      text_page.content = "<a href=\"#{pdf_file.asset.url}\">pdf</a>"
      text_page.save
      visit text_page_path(:slug => text_page.slug)
      page.find('.blog_left.gallery p a')[:href].should == pdf_file.asset.url
    end

    it "can download link of pdf in the content of text page" do
      text_page.files << pdf_file
      text_page.content = "<a href=\"#{pdf_file.asset.url}\">pdf</a>"
      text_page.save
      visit text_page_path(:slug => text_page.slug)
      page.find('.blog_left.gallery p a').click()
      page.response_headers['Content-Type'].should == "application/pdf"
      page.response_headers['Content-Length'].should == "#{pdf_file.asset.size}"
    end

  end
end
