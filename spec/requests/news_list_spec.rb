require 'spec_helper'

describe Article, :request => true do
  context "front-end user" do

    it "can see news in the news list" do
      10.times { Fabricate(:article) }
      visit articles_path
      articles = Article.latest.published.limit(Article::PER_PAGE)
      articles.each do |article|
        page.find('.news_list').should have_content(article.title)
      end
    end

    it "can see news exactly #{Article::PER_PAGE} in news list" do
      10.times { Fabricate(:article) }
      visit articles_path
      articles = Article.latest.published.limit(Article::PER_PAGE)
      page.should have_selector('.news_list li', :count => Article::PER_PAGE)
    end

    it "can see news ordered in news list, where latest is first" do
      10.times { Fabricate(:article) }
      visit articles_path
      first_article = Article.order('publication_date DESC').where(:draft => false).limit(Article::PER_PAGE).first
      page.find('.news_list li:first').should have_content(first_article.title)
    end

  end
end
