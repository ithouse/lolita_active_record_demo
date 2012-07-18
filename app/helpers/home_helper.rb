module HomeHelper
  def get_preload_images_list(slider)
    slider.pictures.collect{|picture| "'#{picture.asset}'"}.join(',')
  end
end
