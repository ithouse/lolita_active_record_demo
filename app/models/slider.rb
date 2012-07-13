class Slider < ActiveRecord::Base
	include Lolita::Configuration

	has_many :pictures, :as => :fileable, :class_name => "SliderPicture", :dependant => :destroy
  
  lolita do
  	list do
  		column :title
  	end

  	tab :files do
      title Proc.new{ News.human_attribute_name(:title_picture) }
      association :pictures
    end
  end

  def title_picture
    pictures.first.try(:asset)
  end
end
