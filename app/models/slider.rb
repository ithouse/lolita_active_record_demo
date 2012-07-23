class Slider
  cattr_accessor :slides

  def initialize
    self.slides = Slide.all
  end

  def get_preload_images_list
    self.slides.collect{|slide| "'#{slide.picture.asset}'"}.join(',')
  end

  def size
    self.slides.size
  end

  def has_any_slide?
    self.slides.any?
  end

  def get_slides
    self.slides.each_with_index do |slide, index|
      yield slide, index
    end
  end
end