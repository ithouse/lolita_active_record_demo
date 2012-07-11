class TextPage < ActiveRecord::Base
  include Lolita::Configuration

  attr_accessible :content, :title

  has_many :files, :as => :fileable, :class_name => "Lolita::Upload::File", :dependent => :destroy
  
  validates :title, :presence=>true

  lolita do
    list do
      column :title
    end
    tab :content do
      field :title
      field :content
    end

    tab :files do
      title TextPage.human_attribute_name(:files)
    end
  end
end
