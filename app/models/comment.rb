class Comment < ActiveRecord::Base
  include Lolita::Configuration

  validates_presence_of :author, :content, :post
  belongs_to :post
  
  lolita do

    tab :content do
      field :author, :title=>"Comment's author"
      field :content, :title=> "Comment's content",:builder=> :text
    end
    
    list do
      per_page 10
      column :author, :title =>"Authors name"
      column do
        title "Comment's post"
        name :post_id
        formatter do|value,record,view|
          view.link_to(record.post.title,view.url_for(:action=>'edit',:controller=>'lolita/posts',:id=>value))
        end
      end
    end
    
  end

end
