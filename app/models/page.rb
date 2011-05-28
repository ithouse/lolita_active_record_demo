class Page < ActiveRecord::Base
  include Lolita::Configuration

  lolita do
    list do
      per_page 10
      column :title
    end
  end

  before_save :generate_slug

  def generate_slug
    self.slug=self.title.parameterize if self.slug.empty?
  end
end
