class Slide < ActiveRecord::Base
  include Lolita::Configuration

  has_one :picture, :as => :fileable, :class_name => "SliderPicture", :dependent => :destroy
  attr_accessible :title, :description

  lolita do
    list do
      column :title
    end

    tab :content do
      field :title
      field :description
    end

    tab :files do
      title Slide.human_attribute_name(:picture)
      association :picture
    end
  end

  def picture_new=(id)
    self.picture = SliderPicture.find(id)
  end

  def main
    self.picture.asset.main
  end

  def main?
    self.picture.asset?
  end

end
