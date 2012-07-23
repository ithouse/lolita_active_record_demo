class SliderPicture < ActiveRecord::Base
  self.table_name = 'pictures'
  mount_uploader :asset, SliderPictureUploader
  attr_accessible :description, :title

  belongs_to :fileable, :polymorphic => true
end
