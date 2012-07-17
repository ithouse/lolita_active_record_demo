module Support
  class << self
    def get_file(filename)
      File.open(get_path(filename.to_s))
    end

    def get_path(filename)
      File.expand_path("spec/files/"+filename.to_s)
    end

    def store_dir
      File.expand_path("spec/files/uploads")
    end
  end
end

at_exit do
  FileUtils.rm_rf(File.expand_path("spec/files/uploads"))
end
