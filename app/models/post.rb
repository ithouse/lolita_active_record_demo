class Post < ActiveRecord::Base
  include Lolita::Configuration

  validates_presence_of :title, :author,:body
  belongs_to :author, :class_name => "User"
  has_many :comments
  
  lolita do
    tab "content" do
      field :title
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
