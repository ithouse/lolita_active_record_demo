require 'spec_helper'

describe Article, :request => true do
  context "front-end user" do

    it "can see 3 news in the home page" do
      4.times { Fabricate(:article) }
      visit root_path
      articles = Article.latest.published.limit(Article::SHOW_IN_HOME_PAGE)
      articles.each do |article|
        page.find('#recent-posts-4 ul').should have_content(article.title.capitalize)
      end
    end

  end
end