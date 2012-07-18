class Slider < ActiveRecord::Base
  include Lolita::Configuration

  has_many :pictures, :as => :fileable, :class_name => "SliderPicture", :dependent => :destroy
  attr_accessible :title
  lolita do
    list do
      column :title
    end

    tab :content do
      field :title
      field :active
    end

    tab :files do
      title Slider.human_attribute_name(:pictures)
      association :pictures
      editable_fields :title, :description
    end
  end

  def title_picture
    pictures.first.try(:asset)
  end
end
