class TextPage < ActiveRecord::Base
  include Lolita::Configuration
  extend FriendlyId
  friendly_id :title, :use => :slugged

  attr_accessible :content, :title

  has_many :files, :as => :fileable, :class_name => "Lolita::Upload::File", :dependent => :destroy
  
  validates :title, :content, :presence => true

  lolita do
    list do
      search true
      pagination_method :list
      column :title, :sortable => true
    end
    tab :content do
      field :title
      field :friendly_path, :string, :builder => :disabled
      field :content
      field :draft
    end

    tab :files do
      title TextPage.human_attribute_name(:files)
    end
  end

  def friendly_path
    "/#{self.slug}"
  end

  class << self
    def list(page, per_page, options)
      params = options[:request].query_parameters
      order(sorting(params)).page(page).per(per_page)
    end

    def sorting(params)
      !params[:s].nil? ? params[:s].gsub(',', ' ').gsub('|', ',') : 'title ASC'
    end
  end

end
