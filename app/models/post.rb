class Post < ActiveRecord::Base
  include Lolita::Configuration

  belongs_to :author, :class_name => "User"

  acts_as_taggable_on :tags

  lolita do
    tab "content" do
      field :title
      field :published_at do 
        builder :name => "/posts", :state => "custom_datepicker"
      end
      field :tag_list do 
        builder :name => "/posts", :state => "tag_autocomplete"
      end
      field :body, :builder => :text
    end
    list do 
      columns :title, :author, :updated_at
    end
  end
end
