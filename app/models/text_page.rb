class TextPage < ActiveRecord::Base
  include Lolita::Configuration
  extend FriendlyId
  friendly_id :title, :use => :slugged

  attr_accessible :content, :title

  has_many :files, :as => :fileable, :class_name => "Lolita::Upload::File", :dependent => :destroy
  
  validates :title, :presence=>true

  lolita do
    list do
      column :title
    end
    tab :content do
      field :title
      field :friendly_path, :string, :builder => :disabled
      field :content
    end

    tab :files do
      title TextPage.human_attribute_name(:files)
    end
  end

  def friendly_path
    if self.new_record?
      ""
    else
      Rails.application.routes.url_helpers.text_page_path(self)
    end
  end
end
