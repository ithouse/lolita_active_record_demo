class Document < ActiveRecord::Base
  include Lolita::Configuration

  has_many :files, :class_name=>"Lolita::Upload::File",:as=>:fileable
  validates :title, :presence=>true
  lolita do
    tab :content do
      field :title, :builder=>:text
    end
    report "Other report" do
      name "test1"
      column_names :title
    end
    report("My report") do
      name "test"
      column_names :title
    end
    tab(:files)
  end
end
