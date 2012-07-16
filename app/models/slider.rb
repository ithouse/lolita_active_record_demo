class Slider < ActiveRecord::Base
  include Lolita::Configuration

  has_many :pictures, :as => :fileable, :class_name => "SliderPicture", :dependent => :destroy
  attr_accessible :title, :description
  lolita do
    list do
      column :title
    end

    tab :content do
      field :title
    end

    tab :files do
      title Slider.human_attribute_name(:pictures)
      association :pictures
      editable_fields :description
    end
  end

  def title_picture
    pictures.first.try(:asset)
  end
end
