module HomeHelper
  def get_preload_images_list(slides)
    slides.collect{|slide| "'#{slide.picture.asset}'"}.join(',')
  end
end
