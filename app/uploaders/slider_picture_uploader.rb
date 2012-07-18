class SliderPictureUploader < FileUploader
  include CarrierWave::MiniMagick

  version :main do
    process :resize_to_fit => [485, 385]
  end

  def extension_white_list
    %w(jpg jpeg gif png JPG JPEG GIF PNG)
  end
end
