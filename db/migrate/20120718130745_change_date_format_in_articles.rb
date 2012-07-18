class ChangeDateFormatInArticles < ActiveRecord::Migration
  def self.up
   change_column :messages, :publication_date, :datetime
  end

  def self.down
   change_column :messages, :publication_date, :date
  end
end
