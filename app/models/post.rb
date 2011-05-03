class Post < ActiveRecord::Base
  include Lolita::Configuration

  belongs_to :author, :class_name => "User"
  
  lolita do
    tab "content" do
      field :title
      field :body, :builder => :text
    end
    list do 
      columns :title, :author, :updated_at
    end
  end
end
