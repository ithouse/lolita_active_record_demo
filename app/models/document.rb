class Document < ActiveRecord::Base
  include Lolita::Configuration

  has_many :files, :class_name=>"Lolita::Upload::File",:as=>:fileable

  lolita do
    tabs do
      tab :content
      
      tab(:files)
    end
  end
end
