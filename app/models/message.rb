class Message < ActiveRecord::Base
 include Lolita::Configuration
 	extend FriendlyId
	 friendly_id :title, use: :slugged

	  attr_accessible :content, :publication_date, :title, :draft

	  has_many :files, :as => :fileable, :class_name => "Lolita::Upload::File", :dependent => :destroy

	  validates :content, :publication_date, :title, :presence => true
	  validates_uniqueness_of :title

	  lolita do
	  	list do
	  		column :title
	  	end

	  	tab :content do
	  		field :title
	  		field :content
	  		field :draft
	  		field :publication_date
	  	end

	  	tab :files do
	  		title Message.human_attribute_name(:files)
	  	end
	  end
end
