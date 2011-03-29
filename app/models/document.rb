class Document < ActiveRecord::Base
  include Lolita::Configuration

  has_many :files, :class_name=>"Lolita::Upload::File",:as=>:fileable

  lolita do
    tab :content do
      field :title, :text
    end
    tab(:files)
  end
end
