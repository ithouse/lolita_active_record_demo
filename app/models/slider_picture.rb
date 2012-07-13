class SliderPicture < ActiveRecord::Base
  self.table_name = 'pictures'
  mount_uploader :asset, TitlePictureUploader
  attr_accessible :description

  belongs_to :fileable, :polymorphic=>true
end
