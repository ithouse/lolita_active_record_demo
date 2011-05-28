class Post < ActiveRecord::Base
  include Lolita::Configuration

  validates_presence_of :title, :author,:body
  belongs_to :author, :class_name => "User"

  has_many :comments
  
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
      columns :title, :author, :updated_at, :comments_count
    end
  end

  def comments_count
    self.comments.size
  end
end
