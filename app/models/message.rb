class Message < ActiveRecord::Base
  include Lolita::Configuration
  extend FriendlyId
  friendly_id :title, use: :slugged

  attr_accessible :content, :title, :publication_date, :draft

  has_many :files, :as => :fileable, :class_name => "Lolita::Upload::File", :dependent => :destroy

  validates :content, :publication_date, :title, :presence => true

  lolita do
    list  do
      column :title
    end

    tab :content do
      field :title
      field :friendly_path, :string, :builder => :disabled
      field :content
      field :draft
      field :publication_date
    end

    tab :files do
      title Message.human_attribute_name(:files)
    end
  end

  def friendly_path
    if self.new_record?
      ""
    else
      Rails.application.routes.url_helpers.message_path(self)
    end
  end
end