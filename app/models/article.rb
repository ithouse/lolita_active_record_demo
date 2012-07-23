class Article < ActiveRecord::Base
  include Lolita::Configuration
  extend FriendlyId
  self.table_name = 'messages'
  PER_PAGE = 5
  HOME_PAGE_COUNT = 3

  friendly_id :title, :use => :slugged

  attr_accessible :content, :title, :publication_date, :draft

  has_many :files, :as => :fileable, :class_name => "Lolita::Upload::File", :dependent => :destroy

  validates :content, :publication_date, :title, :presence => true

  scope :latest, :order => 'publication_date DESC'
  scope :published, where(:draft => false)

  lolita do
    list  do
      search true
      pagination_method :list
      column :title, :sortable => true
    end

    tab :content do
      field :title
      field :friendly_path, :string, :builder => :disabled
      field :content
      field :draft
      field :publication_date
    end

    tab :files do
      title Article.human_attribute_name(:files)
    end
  end

  def friendly_path
    if self.new_record?
      ""
    else
      Rails.application.routes.url_helpers.article_path(self)
    end
  end

  class << self
    def list(page, per_page, options)
      params = options[:request].query_parameters
      order(sorting(params)).page(page).per(per_page)
    end

    def sorting(params)
      !params[:s].nil? ? params[:s].gsub(',', ' ').gsub('|', ',') : 'title ASC'
    end

    def get_home_page
      latest.published.limit(Article::HOME_PAGE_COUNT)
    end
  end
  
end
